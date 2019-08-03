
/* global drawsocket:readonly  */

drawsocket.input([
    {
        key : "css",
        val : {
            selector : ".symbolist_mouseover",
            props : {
                fill : "blue"
            }
        }
    },
    {
        key : "mouse",
        val : {
            enable: 0
        }
    }]
);
    

let clickedObj = null;
let prevEventTarget = null;

let mousedown_pos = {x: 0, y: 0};

function deltaPt(ptA, ptB)
{
    return { x: ptA.x - ptB.x, y: ptA.y - ptB.y };
}

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
    matrix.e = delta_pos.x;
    matrix.f = delta_pos.y;

    const transformMatrix = svg.createSVGTransformFromMatrix(matrix);
    transformlist.initialize( transformMatrix );

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
    if( prevEventTarget === null )
        prevEventTarget = event.target;

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
                //translate(clickedObj, { x: event.movementX, y: event.movementY } );
                translate( clickedObj, deltaPt({ x: event.clientX, y: event.clientY }, mousedown_pos));
            }
        break;
        case "mouseover":

            if( event.target != prevEventTarget )
            {
                if( prevEventTarget.classList.contains("symbolist_mouseover") )
                {
                    prevEventTarget.classList.remove("symbolist_mouseover");
                }

                if( event.target != document.getElementById("svg") )
                {
                    event.target.classList.add("symbolist_mouseover");
                }
                
            }

        break;
        
        case "mouseup":
            
                if( event.target.classList.contains("symbolist_mouseover") )
                {
                    event.target.classList.remove("symbolist_mouseover");
                }
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

    prevEventTarget = event.target;
}


document.body.addEventListener("mousemove", function(event)
{
  mouseHandler(event, "mousemove");
});

document.body.addEventListener("mousedown", function(event)
{
  mouseHandler(event, "mousedown");
});


document.body.addEventListener("mouseup", function(event)
{
  mouseHandler(event, "mouseup");
});


document.body.addEventListener("mouseover", function(event)
{
 mouseHandler(event, "mouseover")
});


drawsocket.input({
    key : "mouse",
    val : {
        enable: 1
    }
});