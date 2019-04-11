
const mixin = require('mixin-deep');

/**
 * In place deep merge, updating existing array of objects
 * keeps layer order in sequence based on use of "new" property -- 
 * so this is only for SVG since the layer order is more important than the time sequence
 * the time sequence is not as important also for other 
 * 
 * decision: only SVG elements can be overwritten by a "new" prop
 * other objects will always be updated, and expanded
 * to replace other types, use the remove function and then add it
 * 
 * @param {array} a -- old array
 * @param {array} b -- new array
 * @param {key} prop -- key to look for
 * @param {time} timetag -- time tag
 */
function mergeByProp(a, b, prop, timetag)
{
    let ret = [];
    let b_matched = [];

    for( let i = 0; i < a.length; i++ )
    {

        let found = false;
        for( let j = 0; j < b.length; j++ )
        {
            if( a[i][prop] === b[j][prop] )
            {
                found = true;
                b[j].timetag = timetag;
                if( b[j].hasOwnProperty('new') ) // if it's a new object, overwrite the old attrs
                {
                  ret.push( b[j] );
                }
                else
                {
                  ret.push( mixin(a[i], b[j]) );
                }
                b_matched.push(j);
                break;
            }
        }

        if(!found)
            ret.push(a[i]);
        
    }

    for( let j = 0; j < b.length; j++ )
    {
        if( !b_matched.includes(j) ){
            b[j].timetag = timetag;
            ret.push(b[j]);
        }
    }


    return ret;
}


let array_ = [
    {
        key: 'svg',
        val: [{
            id: 'var',
            new: "obj",
            x: 1
        }, {
            id: 'foo',
            new: "obj",
            x: 1
        }]
    },
    {
        key: 'svg',
        val: {
            id: 'foo',
            x: 2
        }
    }
];


let cache_map = new Map();



//iter(array_);
//console.log( cache_map );




let test = {
		key : "svg",
		val : [{
				new : "line",
				id : "foo",
				x1 : 10,
				x2 : 20,
				y1 : 10,
				y2 : 10
			}
, 			{
				new : "line",
				id : "bar",
				x1 : 10,
				x2 : 20,
				y1 : 10,
				y2 : 10
			}
, 			{
				new : "g",
				id : "gg"
			}
, 			{
				new : "line",
				id : "ff",
				parent : "gg",
				x1 : 10,
				x2 : 20,
				y1 : 10,
				y2 : 10
			}]
}




function iterNodes(ar_, key_ )
{
    for( let o of ar_)
    {
        console.log(o);

        if( Array.isArray(o.val) )
        {
         // must be single array
        }
        else if( o.val.hasOwnProperty('new') )
        {
            if( o.val.hasOwnProperty('id') )
                cache_map.set(o.val.id, o);
            else
                cache_map.set(Date.now(), o);
            
        }
        else
        {
            if( o.val.hasOwnProperty('id') && cache_map.has(o.val.id) )
            {
                let unionedVal = mixin(cache_map.get(o.val.id).val, o.val);
                o.val = unionedVal;
                cache_map.set(o.val.id, o);
            }
                
        }

    }
}

function iterKeys(obj_)
{
    let iterobj_ = Array.isArray(obj_) ? obj_ : [ obj_ ];
    for( let n of obj_)
    {
        if( cache_map.has(n.key) )
            iterNodes(n, n.key);
    }

}



let object_ref = new Map();

let top_map = new Map();

{
    let bob = [{
        key: 'svg',
        val : {
            new : "line",
            id : "foo"
        }
        
    }, {
        key: 'svg',
        val : {
            new : "line",
            id : "bar"
        }
    }];
    
    let subMap = new Map();
    subMap.set('foo', bob[0].val );
    subMap.set('bar', bob[1].val );

    top_map.set( 't', subMap );
}


{
    let f = top_map.get('t');

    f.set("test", {
        tt: 'foo'
    });

}
//object_ref.get('foo')['x1'] = 1;

// this is concise, but requires a complete recreation of the JSON object everytime
// so actaully this is probably *more* iteration than we were doing already searching the type lists
// but the search is slower with the nested array, the get() function with Map really speeds that up


var testMap = new Map();
var testSubMap = new Map();

var testarr = [];

var size = 10000;

for( let i = 0; i < size; i++){
    testSubMap.set(i,i);
    testarr.push({
        id: i
    });
}

testMap.set('foo', testSubMap);

console.time('for each');
let output = [];
for(let k = 0; k<size; k++)
    testSubMap.get(k);

testMap.forEach( (value_, key_, map_) =>{
    output.push({
        key: key_,
        val: Array.from(value_) // << timetag has to be in there
    });
});
console.timeEnd('for each');

console.time('search');
for(let k = 0; k<size; k++)
    for(let i = 0; i<size; i++)
    {
        if( testarr[i].id == size-1 )
            break;
}
console.timeEnd('search');



//const res = _mixinDeep({}, { a: { bar: true } }, { a: { baz: true } });
//console.log(res);