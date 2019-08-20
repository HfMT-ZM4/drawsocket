
/* global drawsocket:readonly  */
 
    
/**
 * globals
 */
const svgObj = document.getElementById("svg");
const mainSVG = document.getElementById("main-svg");

let clickedObj = null;
let prevEventTarget = null;
let selected = [];

let mousedown_pos = {x: 0, y: 0};

let currentPaletteClass = "/noteline";
let selectedClass = currentPaletteClass;

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

/** 
 * API
 */

function setClass(_class)
{
    selectedClass = _class;
}


 /**
  * internal methods
  */

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

function getTopLevel(elm)
{    
    
    while( elm != svgObj && elm.parentNode && elm.parentNode.id != 'main-svg' )
    {
        elm = elm.parentNode;
    }

    return elm;
}

function isNumeric(value) {
    return !isNaN(value - parseFloat(value));
}

function elementToJSON(elm)
{
    let obj = {};
    obj.tag = elm.tagName;
    for( let i = 0, l = elm.attributes.length; i < l; ++i)
    {
        const attr = elm.attributes[i];
        if( attr.specified )
        {
            obj[attr.name] = (isNumeric(attr.value) ? Number(attr.value) : attr.value);
        }
    }

    if( elm != svgObj )
    {
        let children = [];
        if( elm.hasChildNodes() ){
            const nodes = elm.childNodes;
            for(let i = 0, l = nodes.length; i < l; ++i){
                children.push(  elementToJSON(nodes[i]) ); 
            }
            obj.children = children;
        }
    }
    
    

    return obj;
}

function sendMouseEvent(event, caller)
{    
  const _id = ( event.target.id != "svg" ) ? event.target.id : 
    (selectedClass && selectedClass.startsWith('/') ? selectedClass.slice(1)+'_u_'+fairlyUniqueNumber() : selectedClass+'_u_'+fairlyUniqueNumber());

  let obj = {};
  obj['event'] = {
    url: drawsocket.oscprefix,
    key: 'mouse',
    val: {
        id: _id,
        selectedClass: selectedClass,
        action: caller,
        xy: [ event.clientX, event.clientY ],
        button: event.buttons,
        mods : {
            alt: event.altKey,
            shift: event.shiftKey,
            ctrl: event.ctrlKey,
            meta: event.metaKey
        },
        target: elementToJSON( getTopLevel(event.target) )
    }
  };

  if( caller == 'wheel' )
  {
    obj.event.val.delta = [ event.deltaX, event.deltaY ];
  }


  drawsocket.send(obj);

}

function getDragRegion(event)
{
    let left, right, top, bottom;
    if( mousedown_pos.x < event.clientX )
    {
        right = event.clientX;
        left = mousedown_pos.x;
    }
    else
    {
        left = event.clientX;
        right = mousedown_pos.x;
    }

    if( mousedown_pos.y < event.clientY )
    {
        bottom = event.clientY;
        top = mousedown_pos.y;
    }
    else
    {
        top = event.clientY;
        bottom = mousedown_pos.y;
    }

    return {
        left: left,
        top: top,
        right: right,
        bottom: bottom
    };
}

function symbolist_mousedown(event)
{          
    const _eventTarget = getTopLevel( event.target );

    if( prevEventTarget === null )
        prevEventTarget = _eventTarget;

    if( _eventTarget != svgObj )
    {
        if( event.altKey )
        {
            clickedObj = copyObjectAndAddToParent(_eventTarget);           
        }
        else
        {
            clickedObj = getTopLevel(_eventTarget);
            selectedClass =  clickedObj.classList[0]; // hopefully this will always be correct! not for sure though
        }
    }
    else
    {
        clickedObj = null;
        selectedClass = currentPaletteClass; // later, get from palette selection
    }
    

    mousedown_pos = { x: event.clientX, y: event.clientY };

    prevEventTarget = _eventTarget;
    
    sendMouseEvent(event, "mousedown");
}

function symbolist_mousemove(event)
{         
    const _eventTarget = getTopLevel( event.target );

    if( prevEventTarget === null )
        prevEventTarget = _eventTarget;

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

            selectAllInRegion( getDragRegion(event), mainSVG );
        }
    }

    prevEventTarget = _eventTarget;

    sendMouseEvent(event, "mousemove");

}

function symbolist_mouseup(event)
{          
    const _eventTarget = getTopLevel( event.target );

    if( prevEventTarget === null )
        prevEventTarget = _eventTarget;

    if( !event.shiftKey )
    {
        if( _eventTarget.classList.contains("symbolist_selected") )
        {
            _eventTarget.classList.remove("symbolist_selected");
        }
        deselectAll();
    }

    sendMouseEvent(event, "mouseup");

    clickedObj = null;
    selectedClass = currentPaletteClass;
    prevEventTarget = _eventTarget;

}


function symbolist_mouseover(event)
{           
    const _eventTarget = getTopLevel( event.target );

    if( prevEventTarget === null )
        prevEventTarget = _eventTarget;

    if( !event.shiftKey && _eventTarget != prevEventTarget )
    {
        if( prevEventTarget.classList.contains("symbolist_selected") )
        {
            prevEventTarget.classList.remove("symbolist_selected");
        }

        if( _eventTarget != svgObj )
        {
            _eventTarget.classList.add("symbolist_selected");
        }
        
    }

    prevEventTarget = _eventTarget;

    //sendMouseEvent(event, "mouseover");

}

function addSymbolistMouseHandlers(element)
{
    element.addEventListener("mousedown", symbolist_mousedown, true);
    element.addEventListener("mousemove", symbolist_mousemove, true);
    element.addEventListener("mouseup", symbolist_mouseup, true);
    element.addEventListener("mouseover", symbolist_mouseover, true);
}

function removeSymbolistMouseHandlers(element)
{
    element.removeEventListener("mousedown", symbolist_mousedown, true);
    element.removeEventListener("mousemove", symbolist_mousemove, true);
    element.removeEventListener("mouseup", symbolist_mouseup, true);
    element.removeEventListener("mouseover", symbolist_mouseover, true);
}

addSymbolistMouseHandlers(document.body);

/*
drawsocket.input({
    key : "mouse",
    val : {
        enable: 1
    }
});
*/


/*
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

                    selectAllInRegion( getDragRegion(event), mainSVG );
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


*/