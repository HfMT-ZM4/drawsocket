
/* global drawsocket:readonly  */

drawsocket.input([
    {
        key : "css",
        val : {
            selector : ".symbolist_selected",
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
    
const svgObj = document.getElementById("svg");
const mainSVG = document.getElementById("main-svg");

let clickedObj = null;
let prevEventTarget = null;
let selected = [];

let mousedown_pos = {x: 0, y: 0};

function hitTest(regionRect, obj)
{
    const objBBox = obj.getBoundingClientRect();

    return  !(objBBox.left  > regionRect.right ||
             objBBox.top    > regionRect.bottom ||
             objBBox.right  < regionRect.left || 
             objBBox.bottom < regionRect.top );

}

function recursiveHitTest(region, element)
{
    if( hitTest(region, element) )
        return true;

    for (let i = 0; i < element.children.length; i++) 
    {
        if( recursiveHitTest(region, element.children[i]) )
            return true;
        //console.log(mainSVG.children[i].tagName);
    }

    return false;
}

function selectAllInRegion(region, element)
{
    for (let i = 0; i < element.children.length; i++) 
    {
        if( recursiveHitTest(region, element.children[i]) )
            selected.push(element.children[i]);

    }

    for( let i = 0; i < selected.length; i++)
    {
        if( !selected[i].classList.contains("symbolist_selected") )
        {
            selected[i].classList.add("symbolist_selected");
        }
    }
    
        
}

function deselectAll()
{
    for( let i = 0; i < selected.length; i++)
    {
        if( selected[i].classList.contains("symbolist_selected") )
        {
            selected[i].classList.remove("symbolist_selected");
        }
    }

    selected = [];
}


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
    if( !obj )
        return;

//    let svg = document.getElementById("svg");
    if( obj === svgObj )
        return;
        
    let transformlist = obj.transform.baseVal; 

    let matrix = obj.getCTM();
    matrix.e = delta_pos.x;
    matrix.f = delta_pos.y;

    const transformMatrix = svgObj.createSVGTransformFromMatrix(matrix);
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
            else if( event.target != svgObj )
                clickedObj = event.target;
            else
                clickedObj = null;

            mousedown_pos = { x: event.clientX, y: event.clientY };
        break;
        case "mousemove":
            if( event.buttons == 1 )
            {
                if( clickedObj )
                {
                    translate( clickedObj, deltaPt({ x: event.clientX, y: event.clientY }, mousedown_pos));
                }
                else 
                {
                    if( !event.shiftKey )
                        deselectAll();

                    selectAllInRegion({
                        left: mousedown_pos.x,
                        top: mousedown_pos.y,
                        right: event.clientX,
                        bottom: event.clientY
                    }, mainSVG);
                }
            }
            
        break;
        case "mouseover":

            if( !event.shiftKey && event.target != prevEventTarget )
            {
                if( prevEventTarget.classList.contains("symbolist_selected") )
                {
                    prevEventTarget.classList.remove("symbolist_selected");
                }

                if( event.target != svgObj )
                {
                    event.target.classList.add("symbolist_selected");
                }
                
            }

        break;
        
        case "mouseup":
            if( !event.shiftKey ){
                if( event.target.classList.contains("symbolist_selected") )
                {
                    event.target.classList.remove("symbolist_selected");
                }
                deselectAll();
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