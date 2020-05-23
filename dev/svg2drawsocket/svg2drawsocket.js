// user parameters
const infile = __dirname +  `/testfile.svg`;
const outfile = __dirname +  `/testfile.json`;
const drawsocketPrefix = "/foo"; 


// libraries
const fs = require('fs');
const convert = require('xml-js');

/**
 * runinng the script
 * 
 * load the svg file, convert js get the SVG element (ignoring the header data), and then process for drawsocket format
 * note for right now, there is no address where to assign the svg to, this should probalby be added
 */

const svgFile = fs.readFileSync(infile, 'utf8');
const svgJS = convert.xml2js(svgFile, { ignoreComment: true, compact: false });

let svgObj = {
    key: 'svg',
    val: procElements( getSVGElements(svgJS) )
}

let outObj = {};
outObj[drawsocketPrefix] = svgObj;

fs.writeFileSync(outfile, JSON.stringify(outObj), (err) => {
    if(err) {
        return console.log(err);
    }
});




/**
 * SVG to JSON
 *
 */

function styleStr2obj(style_)
{
    let ret = {};
    let tok = style_.split(';');
    tok.forEach(element => {
        let keyval = element.split(':');
        ret[ keyval[0] ] = keyval[1];
    });
    
    return ret;
}

/**
 * 
 * @param {array/object} el_array - XML elements to be processed
 * @param {number/string} artboard_index - artboard index is used to make sure ids are not overwritten when reused in different files
 * @param {array} _ret_reflist - (optional) a reference to an array that will be filled with the ids of href links used in the layer
 */
function procElements(el_array, artboard_index = "", _ret_reflist = [])
{
    if( !Array.isArray(el_array) )
        el_array = [ el_array ];

    return el_array.map( n => {
        let obj_ = {};
        if( n.hasOwnProperty('name') )
            obj_.new = n.name;
        
        if( n.hasOwnProperty('attributes') )
        {
            for( let k in n.attributes )
            {

                switch(k)
                {
                    case 'id':
                        obj_.id =`${n.attributes[k]}_${artboard_index}`;
                    break;
                    case 'style':
                        obj_.style = styleStr2obj(n.attributes[k]);
                    break;
                    case 'xlink:href':
                        if( typeof _ret_reflist !== 'undefined' && n.attributes[k].startsWith('#') )
                        {                       
                            obj_[k] =`${n.attributes[k]}_${artboard_index}`;    
                            _ret_reflist.push( obj_[k].slice(1) ); 
                        }
                        else
                            obj_[k] = n.attributes[k];


                    break;
                    default:
                        obj_[k] = n.attributes[k];
                    break;

                }
               
            }

           
                       
        }

        if( n.hasOwnProperty('elements') )
            if( obj_.new == "text" )
                obj_.text = n.elements[0].text;
            else
                obj_.child = procElements(n.elements, artboard_index, _ret_reflist);

        return obj_;

    });
}


function getSVGElements(doc_)
{
    for( let e of doc_.elements )
    {
        if( e.type == "element" && e.name == "svg" && e.elements )
        {
            return e.elements;
        }
    }
}

