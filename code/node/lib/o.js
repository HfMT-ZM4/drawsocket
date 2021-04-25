
const OSC_HEADER_SIZE = 16 // bundle\0 + 8 byte timetag.
const OSC_EMPTY_HEADER = "#bundle\0\0\0\0\0\0\0\0\0"

const OSC_BUNDLE_TYPETAG = '.'
const OSC_TIMETAG_TYPETAG = 't'


function getPaddedStringLen(s)
{
	if(typeof s == "undefined")
		return 0;
    
    let n = Buffer.byteLength(s, 'utf8');
 
	return (n + 4) & 0xfffffffc;
}

function getPaddingForNBytes(n)
{
	return (n + 4) & 0xfffffffc;
}

function getOSCTypeTagFromJS(val)
{
    switch (typeof val) {
        case 'number':
            return 'd';
        case 'string':
            return 's';  
        case 'object':
            return OSC_BUNDLE_TYPETAG;
        case 'boolean':
            return val ? 'T' : 'F'; // converting to string
        default:
            console.error("unknown type", val);
            return '?';
    }
}

function getSizeInBytesFromJS(val)
{
    switch (typeof val) {
        case 'number':
            return 8;
        case 'string':
            return getPaddedStringLen(val);  
        case 'object':
            return getOSCSize(val) + 4; // plus four for bundle size field
        case 'boolean':
            return 0;
        default:
            console.error("unknown type", val);
            return 0;
    }
}


function getObjSize(obj)
{
    if( !obj || typeof obj == "undefined")
    {
     //   console.error('OSC getObjSize object error:', obj);
        return 0;
    }

    let _n = 0;
    
    Object.keys(obj).forEach( key => {
        _n += 4; // size field
        _n += getPaddedStringLen( key + 1 ); // address field with added leading slash
        
        let val = obj[key];
        if( !Array.isArray(val) ) 
            val = [val];

        _n += getPaddingForNBytes( val.length + 1 ); // typetag field with added leading comma
        
        val.forEach( at => {
            _n += getSizeInBytesFromJS(at);
        })
         
    })
    
    
    return _n;
}

/**
 * 
 * @param {Map} map 
 */

function getOSCSize(obj)
{
    let _n = OSC_HEADER_SIZE;
    _n += getObjSize(obj);
    return _n;
}


function serializeVector(buf, offset, remaining_size, address, vec )
{

    let _n = offset; // offset in buffer to start at
    let padded_address_len = getPaddedStringLen(address);
    let padded_typetag_len = getPaddingForNBytes(vec.length + 1);
  //  console.log('padded_typetag_len', padded_typetag_len, vec.length);
    let num_bytes_before_data = 4 + padded_address_len + padded_typetag_len;

    if(remaining_size < num_bytes_before_data){
        console.log('out of buffer space');
        return 0;
    }

    _n += num_bytes_before_data;

    let prefix_pos = offset + 4;
 
    buf.write(address, prefix_pos);

    prefix_pos += padded_address_len;
  
    buf.write(',', prefix_pos++)
    
    const vec_len = vec.length;

    for( let i = 0 ; i< vec_len; i++ )
    {
        const at = vec[i];
        
        const typetag = getOSCTypeTagFromJS(at);

        buf.write(typetag, prefix_pos++);

        switch (typetag) {
            case 'd':
                _n = buf.writeDoubleBE( at, _n ); // returns _n + bytes written
                break;
            case 's':
                buf.write( at, _n );
                _n += getPaddedStringLen( at );
                break;
            case '.':
                {
                    let sub = obj2osc( at );
                    _n = buf.writeInt32BE(sub.length, _n);
//                    console.log('size', sub.length, buf.length, _n);
                    sub.copy( buf, _n );
                    _n += sub.length;
                }
                break;
            case 'T':
            case 'F':
                break;
            default:
                console.log('unused type:', typetag);
                break;
        }
        
    }
    
    buf.writeInt32BE(_n - 4 - offset, offset);

//    console.log('setting message size: ', _n - 4 - offset);
    
    return _n - offset;
}


function serializeIntoBuffer(obj, buf, size)
{
    let _n = 0;    

    buf.write(OSC_EMPTY_HEADER);
  
    _n += OSC_HEADER_SIZE;

    if( obj )
    {
        const keys = Object.keys(obj);
    
        let vec;
        for (key of keys)
        {
            vec = obj[key];
            vec = Array.isArray(vec) ? vec : [ vec ];
            _n += serializeVector(buf, _n, size - _n, '/'+key, vec );
        }
        //console.log(_n);
    }
    
}

function getDataAndSize(typetag, buffer, data_offset)
{
    switch (typetag) {
        case 'f':
            return {
                data: buffer.readFloatBE(data_offset),
                bytes: 4
            };
        case 'c':
            return {
                data: String.fromCharCode(buffer[data_offset]),
                bytes: 4
            };
        case 'i':
            return {
                data: buffer.readInt32BE(data_offset),
                bytes: 4
            };
        case 'd':
            return {
                data: buffer.readDoubleBE(data_offset),
                bytes: 8
            };
        case 'h':
            return {
                data: buffer.readBigInt64BE(data_offset),
                bytes: 8
            };
        case 's':
            {
                const end = buffer.indexOf('\0', data_offset);
                const str = buffer.toString('utf8', data_offset, end);
                return {
                    data: str,
                    bytes: getPaddedStringLen(str)
                };
            }
        case '.':
            {
                const sub_size = buffer.readInt32BE(data_offset);
                const sub_start = data_offset + 4;
                const sub_end = sub_start + sub_size;
                const obj = deserialize( buffer.subarray( sub_start, sub_end) );
                return {
                    data: obj,
                    bytes: sub_size + 4
                };
            }
        case 'T':
                return {
                    data: true,
                    bytes: 0
                };
        case 'F':
            return {
                data: false,
                bytes: 0
            };
        default:
            return 0;
    }
}

function deserialize(buf)
{
    let obj = {};

    let _n = OSC_HEADER_SIZE;

    while( _n < buf.length )
    {
        const msg_size = buf.readInt32BE(_n);

        const addr_start = _n + 4;
        const addr_end = buf.indexOf('\0', addr_start);
        let addr = buf.toString('utf8', addr_start, addr_end);
        
        const typetags_start = addr_start + getPaddedStringLen(addr);
        const typetags_end = buf.indexOf('\0', typetags_start);
        const typetags = buf.toString('utf8', typetags_start, typetags_end);


        const data_start = typetags_start + getPaddedStringLen(typetags);
        let bytes_to_next = 0;

        const natoms = typetags.length-1; // minus the comma
   //     console.log(addr, typetags, natoms);

        addr = addr.slice(1); // remove leading slash

        if( natoms > 1 )
            obj[addr] = [];

        for( let i = 1; i < typetags.length; i++)
        {

            const data_chunk = getDataAndSize( typetags[i], buf, data_start + bytes_to_next)

            if( natoms > 1 )
                obj[addr].push(data_chunk.data)
            else
                obj[addr] = data_chunk.data;


            bytes_to_next = data_chunk.bytes;
        }

        _n += msg_size + 4;
    }

    return obj;
}


function test()
{

    let test = {
        ho: 1,
        sub: {
            bar: 2
        }
    }
    
    let test2 = {
        foo: 1,
        bar: 2
    }

    let size_ = getOSCSize(test);
    let buf_ = Buffer.alloc( size_ );
    
    serializeIntoBuffer( test, buf_, size_ );
    /*
    for( let i = 0; i < size_; i++)
    {
        console.log(`${i} \t${buf_[i]} \t${String.fromCharCode(buf_[i]) }` )
    }
    */

   console.log( deserialize(buf_) );

   /* 
    console.log( size_, buf_.length );    
    */
}

function obj2osc(obj)
{
    let size = getOSCSize(obj);
    let buf = Buffer.alloc( size, '\0' );
    
    serializeIntoBuffer( obj, buf, size );
    
    return buf;
}

/**
 * 
 * @param {Buffer} osc_buffer uint8 array with encoded OSC
 * 
 * returns JS object, note all numbers are 64bit floats
 * 
 */
function osc2obj(osc_buffer)
{
    return deserialize(osc_buffer);
}

//test();

module.exports = {
    serializeIntoBuffer,
    getOSCSize,

    obj2osc,
    osc2obj
}

/*
let str = "foo bar";

console.log( c_strlen(str) );
*/