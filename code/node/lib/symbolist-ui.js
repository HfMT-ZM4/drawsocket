
/* global drawsocket:readonly  */

let clickedObj = null;

let mousedown_pos = {x: 0, y: 0};


function calcTransform(matrix, _x, _y)
{  
    return { 
        x: matrix.a * _x + matrix.c * _y + matrix.e, 
        y: matrix.b * _x + matrix.d * _y + matrix.f
    }   
}


function applyTransform(obj)
{
    let matrix = obj.getCTM();

    let x, y;


    switch ( obj.tagName )
    {
        case "circle":
            {
                x = obj.getAttribute("cx");
                y = obj.getAttribute("cy");
                const newpt = calcTransform(matrix, x, y)
                obj.setAttribute("cx", newpt.x );
                obj.setAttribute("cy", newpt.y );
            }
            break;
        case "rect":
            break;
        case "path":
            break;                
        default:
            break;
    }
}


function translate(obj, delta_pos)
{
    let svg = document.getElementById("svg");
    if( obj === svg )
        return;

    let transformlist = obj.transform.baseVal;

    let matrix = obj.getCTM();
    matrix.e += delta_pos.x;
    matrix.f += delta_pos.y;

    transformlist.initialize( svg.createSVGTransformFromMatrix(matrix) );

}

function fairlyUniqueNumber() {
    return (
      Number(String(Math.random()).slice(2)) + 
      Date.now() + 
      Math.round(performance.now())
    ).toString(36);
  }

function makeUniqueID(obj)
{
    let tok = obj.id.split("_u_");

    let base = ( tok.length == 1 ) ? tok : tok[0];

    let newId = base+'_u_'+fairlyUniqueNumber();
    
    return newId;

}

function copyObjectAndAddToParent(obj)
{
    let new_node = obj.cloneNode(true);
    new_node.id = makeUniqueID(obj);
    return obj.parentElement.appendChild(new_node);

}


function elementToJSON(elm)
{
  let obj = {};
  obj.tag = elm.tagName;
  Array.prototype.forEach.call(elm.attributes, (attr) => {
    if( attr.specified )
    {
      obj[attr.name] = attr.value;
    }
  });

  return obj;
}


function mouseHandler(event, caller)
{
    // let t = fairlyUniqueNumber();
    // console.log( t, t.length );
    switch( caller )
    {
        case "mousedown":
            
            if( event.altKey )
            {
                clickedObj = copyObjectAndAddToParent(event.target);           
            }
            else
                clickedObj = event.target;

            mousedown_pos = { x: event.clientX, y: event.clientY };
        break;
        case "mousemove":
            if(  event.buttons == 1 )
            {
                translate(clickedObj, { x: event.movementX, y: event.movementY } );
            }            
        break;
        case "mouseup":
            {/*
                if( clickedObj )
                {
                    applyTransform(clickedObj);
                    let obj = {};
                    obj[`/symbolist${drawsocket.oscprefix}/event`] = {
                        action: "mouseup",
                        target: elementToJSON(clickedObj),
                        xy: [ event.clientX, event.clientY ]
                    };
                    drawsocket.send(obj);
                }
                */
            }
            
            clickedObj = null;
        break;
        default:
            clickedObj = null;
        break;
    }

}


document.body.addEventListener("mousemove", function(event)
{
  //event.preventDefault();
  mouseHandler(event, "mousemove");
});

document.body.addEventListener("mousedown", function(event)
{
  //event.preventDefault();
  mouseHandler(event, "mousedown");
});

document.body.addEventListener("mouseup", function(event)
{
  //event.preventDefault();
  mouseHandler(event, "mouseup");
});
