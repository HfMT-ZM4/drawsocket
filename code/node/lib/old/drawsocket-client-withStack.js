// to do:
// compare objectStack speed vs DOM getElementById


'use strict';

(function(){



let oscprefix = window.location.pathname; // document.getElementById("OSC").getAttribute("OSCprefix");
console.log(window.location.pathname);
//let oscprefix = location.pathname.slice(0, -5);
/*
if (window.WebSocket){
     $("#error").text("");
}
*/

const svg_ns = 'http://www.w3.org/2000/svg';
const html_ns = 'http://www.w3.org/1999/xhtml';

let port; // = new WebSocket(`ws://${location.host}${oscprefix}`);
let ts; // timesync object
//console.log(`ws://${location.host}${oscprefix}`);

function pad(num, size) {
  return ('0' + num).substr(-size);
}



// touch array
let ongoingTouches = [];
// audio files
let audioObj = [];

// animations
let animStack = [];


// webaudio context
let audioCtx;

let main = d3.select("#main-div");
let drawing = d3.select("#main-svg"); // svg object
let maindef = d3.select("#defs");

function InitStack()
{
  let newarray = [];
  newarray['main-div'] = main;
  newarray['main-svg'] = drawing;
  newarray['defs'] = maindef;
  return newarray;
}

// low-level object reference array
let objectStack = InitStack();
//objectStack['main-svg'] = drawing;

console.log(objectStack, drawing, objectStack['main-svg'] );


let forms = d3.select("#forms");

const _click = ( (document.ontouchstart!==null) ? 'onclick' : 'ontouchstart' );


function display_log(msg) {
  let time = new Date();
  let p = document.getElementById('log');
  p.innerHTML ="["+time.toLocaleTimeString()+"] : "+msg ;
}


/**
* utility functions to continue process object array after async process
*/

const wait = ms => new Promise(resolve => setTimeout(resolve, ms));
async function delayProcess(ms, obj) {
  await wait(ms);
  processCmdObj(obj);
}

/**
 * CSS tools
 */

let css = document.styleSheets[0];

let styleEl = document.createElement('style');
styleEl.appendChild(document.createTextNode(""));
document.head.appendChild(styleEl);
styleEl.type = 'text/css';
let styleSheet = styleEl.sheet;


function getCSSRuleStyle(name)
{
  for( let i = 0; i < css.cssRules.length; i++ )
    if( css.cssRules[i].selectorText == name )
      return css.cssRules[i].style;

  return;
}

// todo: add functionality to add -webkit- automatically here
// maybe use GSAP to set this?
function objToCSS(obj)
{
  let styleString = "";
  styleString = Object.entries(obj).reduce( ( styleString, [propName, propValue] ) => {
      if( typeof propValue == "object" )
      {
        styleString += propName + ' { '
        styleString += Object.entries(propValue).reduce( ( styleString, [inner_propName, inner_propValue] ) => {
          return `${styleString}${inner_propName}:${inner_propValue};` ;
        }, '' );
        styleString += ' } ';
        return styleString;
      }
      else
      {
        return `${styleString}${propName}:${propValue};`;
      }

    }, '');

    return styleString;
}

function setCSSRule(selector, ruleObj) // rule can be object
{
    // Change it if it exists
    for(let i = 0; i < styleSheet.cssRules.length; i++) {
        let rule = styleSheet.cssRules[i];
        if(rule.selectorText === selector) {
          for( let key in ruleObj )
          {
            rule.style[key] = ruleObj[key];
          }

          return;
        }
    }

    const cssString = objToCSS(ruleObj);

// console.log("attempting to create ", `${selector} { ${cssString} }` );
    styleSheet.insertRule(`${selector} { ${cssString} }`, styleSheet.cssRules.length);
//    console.log(styleSheet);
}

function clearCSS()
{
  const len = styleSheet.cssRules.length;
  for (let i = 0; i < len; i++)
  {
    styleSheet.deleteRule(0); // size changes every time, so just keep deleting 0
  }
}



/* old version, keeping for eventual d3 removal

const svgtag = 'http://www.w3.org/2000/svg';
let mainSVG = document.getElementById("main-drawing");

function processJSON_HTML_node(node)
{

    let el = null;
    if( typeof node.id == "undefined" )
    {
      console.log("no id for node", node);
      return el;
    }

    el = d3.select(`#${node.id}`);
    console.log(el);

    if( typeof node.new != "undefined" ) // svg tag means "make a new svg node"
    {
      if( el !== null)
        el.remove();

       el = d3.create(node.new);

       // add context here.
       mainSVG.appendChild(el);
    }
    else if( el === null ) // not a new node and not found
    {
      console.log("no node found for id", node.id);
      return el;
    }

    for( let prop in node)
    {
      if( prop !== 'svg' )
      {
        if(prop === "style" )
        {
          let cssnode = node[prop];
          for( let cssprop in cssnode )
          {
            el.style[cssprop] = cssnode[cssprop];
          }
        }
        else if( prop === "innerHTML")
        {
            // recusive child node creation
            // if it's an array, parse for nodes, otherwise, add as text
        }
        else
          el.setAttribute(prop, node[prop]);

      }
    }

    return el;
}

function processJSON_HTML(_obj)
{

// first check if there's a new node to make, then iterate everything else and set attrs
// otherwise run select to grab the element by id, or class

  for(let node of _obj)
  {

    let el = null;
    if( typeof node.id == "undefined" )
    {
      console.log("no id for node", node);
      continue;
    }

    el = document.getElementById(node.id);

    if( typeof node.draw != "undefined" ) // svg tag means "make a new svg node"
    {
      if( el !== null)
        el.remove();

       el = document.createElementNS(svgtag, node.draw);
       mainSVG.appendChild(el);
    }
    else if( el === null ) // not a new node and not found
    {
      console.log("no node found for id", node.id);
      continue;
    }

    for( let prop in node)
    {
      if( prop !== 'svg' )
      {
        if(prop === "style" )
        {
          let cssnode = node[prop];
          for( let cssprop in cssnode )
          {
            el.style[cssprop] = cssnode[cssprop];
          }
        }
        else if( prop === "innerHTML")
        {
            // recusive child node creation
            // if it's an array, parse for nodes, otherwise, add as text
        }
        else
          el.setAttribute(prop, node[prop]);

      }
    }

  }

}
*/


// textfield form, display as typed
function inputReponse(ele)
{
  if(event.key === 'Enter')
  {
    let obj = {};
    obj[oscprefix+"/"+ele.id+"/input"] = ele.value;
    port.sendObj( obj );
  }
}


function getHTML_element(node)
{

  let el = null;
  let isNew = true;
  if( node.hasOwnProperty('id') )
  {
    el = d3.select(`#${node.id}`);
    isNew = false;
  }

  if( node.hasOwnProperty('new') )
  {
    if( el !== null){
      el.remove();
    }
      
     el = d3.create(node.new);
     isNew = true;

  }

  return { node: el, new: isNew };

}

function processJSON_HTML_node(node)
{

// handle new nodes and selection if already existing
  let elObj = getHTML_element(node);
  let el = elObj.node;
  let isNew = elObj.new;

  if( el === null ) // not a new node and not found
  {
    console.log("unable to create node", node);
    return { node: el, new: isNew };
  }

  // remove "new" from node?
  for( let prop in node)
  {
    if( prop !== 'new' && prop != 'href' && prop != 'timetag' )
    {
      if(prop === "style" )
      {

        let cssnode = node[prop];

        for( let cssprop in cssnode )
        {

          el.node().style[cssprop] = cssnode[cssprop];
        }
        console.log("style", el.node().style);

      }
      else if( prop === "child" || prop === "text" || prop === "html")
      {
        // case of child node
        // if it's an array, parse for nodes, otherwise, add as text
        if( typeof node[prop] == 'object')
        {

          let childobj = (node[prop].length === undefined) ?  [ node[prop] ] : node[prop];

          // case of child node array
          for( let subnode in childobj )
          {
//              console.log("subnode", subnode);
            if( typeof childobj[subnode] == "object" )
            {
              // recusive child node creation
              let _childnode = processJSON_HTML_node( childobj[subnode] );
              if( _childnode.node !== null )
              {
                el.append( ()=>{
                  return _childnode.node;
                });
              }
            }

          }

        }
        else // text element
        {
          el.html( node[prop] );
        }

      }
      else // regular attribute
        el.attr(prop, node[prop]);

    }

  }

  return { node: el.node(), new: isNew };
}




/*
function loadlistener(event)
{
  let bb = event.target.getBBox();
  TweenMax.set(event.target, {x: oldx - bb.x, y: oldy - bb.y} );
  el.node().classList.remove("invisible");
  event.target.removeEventListener(loadlistener);
}
*/

function href_handler(node, el)
{

  const el_type = el.node().nodeName;

  if( el_type === 'use' )
  {
    if( typeof node.href == 'object' && node.href.length === 2 )
    {
      //let frag = document.createDocumentFragment();

      el.attr('xlink:href', node.href[0] );

      if( node.href[1] != 0 )
      {

        let oldx = ( node.x !== undefined ) ? node.x : 0;
        let oldy = ( node.y !== undefined ) ? node.y : 0;

        el.node().classList.add("invisible");

        el.attr('x', 0)
          .attr('y', 0);

        let retries = 100;

        let fix_position = (timestamp) => {
          let bb = el.node().getBBox();
          if( bb.width === 0 && retries-- > 0)
            window.requestAnimationFrame(fix_position);
          else
          {
            TweenMax.set(el.node(), {x: oldx - bb.x, y: oldy - bb.y, width: bb.width, height: bb.height} );
            el.node().classList.remove("invisible");
          }
        };

        window.requestAnimationFrame( fix_position );

      }
    }
    else
    {
      el.attr('xlink:href', node.href);
    }

  }
  else if ( el_type === 'image' )
  {
//    let extension = node.href.substr( node.href.lastIndexOf('.') + 1 )

    let uniqueImgSrc = node.href+"?"+(new Date()).getTime();

    el.attr('width', 100)
      .attr('height', 100)
      .attr("xlink:href", uniqueImgSrc);

    let image = new Image();

    image.addEventListener('load', function() {
      el.attr('width', this.naturalWidth)
        .attr('height', this.naturalHeight);
    });

    image.src = uniqueImgSrc;

  }

}

function d3_getElement(node)
{

  // note: worth testing, but it might be faster to always create a new node and swap it out?
  // or maybe do some fastDOM stuff, to avoid window update thrashing/reflow

  // note also here we're ignoring the id stack storage... seems kind of ok actually

  // added isNew to keep objects in order based on their creation not their adjustment sequence
  let el = null;
  let isNew = true;
  if( node.hasOwnProperty('id') )
  {
    el = d3.select(`#${node.id}`);
    isNew = false;
  }

// new tag means "make a new svg node"
  if( node.hasOwnProperty('new') )
  {
    if( el !== null){
//      console.log("should delete", el);
      el.remove();
    }
      
     el = d3.create(`svg:${node.new}`);
     isNew = true;

  }

  return { node: el, new: isNew };

}

function d3_processJSON_SVG_node(node)
{

  // handle new nodes and selection if already existing
    let elObj = d3_getElement(node);
    let el = elObj.node;
    let isNew = elObj.new;

    if( el === null ) // not a new node and not found
    {
      console.log("unable to create node", node);
      return { node: el, new: isNew };
    }

    // remove "new" from node?
    for( let prop in node)
    {
      if( prop !== 'new' && prop != 'href' && prop != 'timetag' )
      {
        if(prop === "style" )
        {

          let cssnode = node[prop];
          for( let cssprop in cssnode )
          {
  //          console.log("prop", cssprop);

            el.style(cssprop, cssnode[cssprop]);
          }
        }
        else if( prop === "child" || prop === "text" || prop === "html")
        {
          // case of child node
          // if it's an array, parse for nodes, otherwise, add as text
          if( typeof node[prop] == 'object')
          {

            let childobj = (node[prop].length === undefined) ?  [ node[prop] ] : node[prop];

            // case of child node array
            for( let subnode in childobj )
            {
//              console.log("subnode", subnode);
              if( typeof childobj[subnode] == "object" )
              {
                // recusive child node creation
                let _childnode = d3_processJSON_SVG_node( childobj[subnode] );
                if( _childnode.node !== null )
                {
                 
                  let _childID = _childnode.node.id;
                  if( _childID )
                  {
                    if( objectStack.hasOwnProperty(_childID) ){
                      objectStack[_childID].remove();
                      delete objectStack[_childID];
                    }
                    
                    objectStack[_childID] = _childnode.node;

                  }
                    
                  el.append( ()=>{
                    return _childnode.node;
                  });
                }
              }

            }

          }
          else // text element
          {
            el.html( node[prop] );
          }

        }
        else // regular attribute
          el.attr(prop, node[prop]);

      }

    }

    // href special case
    if( node.hasOwnProperty('href') )
    {
      href_handler(node, el);
    }


  return { node: el.node(), new: isNew };
}



function iterate_HTML_array(_context, _objarr, _type)
{

  for(let node of _objarr)
  { 
    let _newnodeObj = null;
    
    if(_type === "svg")
      _newnodeObj = d3_processJSON_SVG_node(node);
    else if( _type === 'html')
      _newnodeObj = processJSON_HTML_node(node);

    let _newnode = _newnodeObj.node;
    let _isNew = _newnodeObj.new;

    if( _newnode !== null )
    {

      if( typeof _newnode.id == 'undefined' )
      {
        _newnode.id = ts.now();
      }

      if( _isNew )
      {
        if( objectStack.hasOwnProperty( _newnode.id ) ) 
          objectStack[_newnode.id].remove();

        objectStack[_newnode.id] = _context.append( ()=> {
          return _newnode;
        });

      }

    }
  }
}

function iterateContextArrays(_parentarr, _type)
{
  console.log(_parentarr);
  
  for( let parentID in _parentarr)
  {
    if( objectStack.hasOwnProperty(parentID) )
    {
      console.log(objectStack[parentID]);

      let obj = _parentarr[parentID]; 
      let _objarr = !Array.isArray(obj) ? [ obj ] :  obj;
      let parentType = ( objectStack[parentID].node().namespaceURI === svg_ns ) ? 'svg' : 'html';
      console.log( objectStack[parentID].node().namespaceURI, parentType );

      iterate_HTML_array( objectStack[parentID], _objarr, parentType );
    }
    else if( parentID === "main")
    {      
      console.log( main.node().namespaceURI );

      let obj = _parentarr[parentID]; 
      let _objarr = !Array.isArray(obj) ? [ obj ] :  obj;
      iterate_HTML_array( main, _objarr, _type );
    }
  }

}



/*
*
*/

function processJSON_CSS(_obj)
{

// first check if there's a new node to make, then iterate everything else and set attrs
// otherwise run select to grab the element by id, or class

/*
  /prefix/css : "clear"
*/

  for(let node of _obj)
  {
    let el = null;
    if( typeof node.selector == "undefined" )
    {
      console.log("no id for node", node);
      continue;
    }

    setCSSRule(node.selector, node.props );

  }

}

// temp version, should check for object type and recurse
function booleanize(_obj)
{
  for (let key in _obj)
  {

    if( _obj[key] == "true" )
      _obj[key] = true;

    if( _obj[key] == "false" )
      _obj[key] = false;

  }
  return _obj;
}



function processJSON_Tween(_obj, timetag)
{
  for(let node of _obj)
  {
//    console.log(node);
    if( node.hasOwnProperty('id') )
    {

      if( node.hasOwnProperty('target') &&
          node.hasOwnProperty('dur') &&
          node.hasOwnProperty('vars') )
      {

        const id = node.id;

        if( animStack.hasOwnProperty(id) && animStack[id].target[0] !== undefined )
        {
       //     console.log(id, animStack[id] );

            if( animStack[id].target[0].id === node.target )
            {

              if( fastObjEqual( animStack[id].vars, { css: node.vars }) ||
                  fastObjEqual( animStack[id].vars, { attr: node.vars })  )
              {

                if( animStack[id].duration() != node.dur )
                  animStack[id].duration( node.dur );

                animStack[id].restart();
                continue;

              }
              else
              {
                animStack[id].pause(0);
                animStack[id].kill();
              }

            }

        }

        animStack[id] = TweenMax.to( node.target, node.dur, booleanize(node.vars) );
//        console.log(animStack[id]);
      }
      
      if( node.hasOwnProperty('cmd') )
      {
        tween_cmd_node(node, timetag);
      }
    }
  }
}

function tween_cmd_node(node, timetag)
{
  const id = node.id;

  if( !animStack.hasOwnProperty(id) )
  {
    console.log(`undefined id ${id}`);
    return;
  }
  /* this doesn't work with timelines... 
  else if( !animStack[id].hasOwnProperty('target') || !animStack[id].hasOwnProperty('vars') )
  {
    console.log('missing target or vars');
    return;
  }*/

  // if node has timetag then use that, otherwise use top-level timetag, need to test this!
  const _timetag = node.hasOwnProperty('timetag') ? node.timetag : timetag;

  const cmds = ( typeof node.cmd != 'object' ) ? [node.cmd] : node.cmd;
  for( let _cmd of cmds )
  {
    switch(_cmd)
    {

      case "start":
      {
        let end = _timetag + ( animStack[id].totalDuration() * 1000. );

        if( ts.now() < end )
        {
          let latestart = (ts.now() - _timetag) * 0.001;

          if( latestart > 0 ){
            animStack[id].play(latestart);
          } else {
            TweenMax.delayedCall(latestart, ()=>{
              animStack[id].restart();
            }, this );
          }

        }
        else
        {
          TweenMax.set( animStack[id].target, animStack[id].vars );
        }
      }
      break;
      case "play":
      {
        let currentposition = animStack[id].totalTime();

        let end = _timetag + (( animStack[id].totalDuration() - currentposition) * 1000. );

        if( ts.now() < end )
        {
          let latestart = (ts.now() - _timetag) * 0.001;

          if( latestart > 0 ){
            animStack[id].play(currentposition + latestart);
          } else {
            TweenMax.delayedCall(latestart, ()=>{
              animStack[id].play();
            }, this );
          }

        }
    /*
        if ( !animStack[id].reversed() )
          animStack[id].play();
        else
          animStack[id].reverse();
    */
      }
      break;

      case "stop":
      case "pause":
        animStack[id].pause();
      break;

      case "kill":
        animStack[id].kill();
      break;

      case "reset":
        animStack[id].pause(0);
      break;

      case "reverse":
        animStack[id].reversed( !animStack[id].reversed() );
      break;

      default:
      break;
    }
  }

}

function processJSON_Timeline(_obj, timetag)
{
  for(let node of _obj)
  {
    if( node.hasOwnProperty('id') )
    {

      if( node.hasOwnProperty('tweens') )
      {
        const id = node.id;

        let newTimeline;
        let timelineparams = ( typeof node.init != "undefined" ) ? booleanize( node.init ) : { paused: true };

        if( animStack.hasOwnProperty(id) )
        {
          animStack[id].kill();

          if( animStack[id].timeline === null )
          {
            delete animStack[id];
            newTimeline = new TimelineMax( timelineparams );
          }
          else
          {
            animStack[id].clear();
            newTimeline = animStack[id];
          }


        }
        else
        {
          newTimeline = new TimelineMax( timelineparams );
        }


        for( let tween of node.tweens )
        {
          newTimeline.add( TweenMax.to( tween.target, tween.dur, tween.vars ) );
        }

        animStack[id] = newTimeline;

      }
      
      if( node.hasOwnProperty('cmd') )
      {
        tween_cmd_node(node, timetag);
      }

    }
  }
}

function processJSON_Attrs(el, node)
{
  if( node.hasOwnProperty('page') )
  { 
    el.pdf.queueRenderPage( node.page );
    delete node.page;
  }

  let setprops = {};
  for( let prop in node )
  {
    if( prop !== "href" && prop !== "id" && prop !== "page" )
    {
      if( prop === "style" && typeof node.style === 'object' )
      {
        let cssnode = node[prop];
        for( let cssprop in cssnode )
        {              
          setprops[cssprop] = cssnode[cssprop];
        }
      }
      else
        setprops[prop] = node[prop];
    }
  }

  // yay! TweenMax rules! somehow is able to set all the stuff for us, which really wasn't working before
  TweenMax.set(el.node(), setprops );

  /*
  for( let prop in node )
  {
    if(prop === "style" )
    {
      let cssnode = node[prop];
      for( let cssprop in cssnode )
      {              
        el.style(cssprop, cssnode[cssprop]);
      }
    }
    else if( prop !== "href" && prop !== "id" && prop !== "page" )
    {
      console.log("setting", prop, node[prop]);
      
      el.attr(prop, node[prop] );

    }

  }
*/

}

function processJSON_PDF(_obj)
{
  
  for(let node of _obj)
  {
    if( node.hasOwnProperty('id') )
    {

      const id = node.id;

      if( node.hasOwnProperty('href') )
      {
        if( objectStack.hasOwnProperty(id) )
          objectStack[id].remove();

        objectStack[id] = d3.create("canvas")
          .attr("id", id)
          .attr("class", "pdfcanvas")
          .attr("context", "canvas");

        
// maybe someday add more layer options here...
        main.node().prepend( objectStack[id].node() );

        objectStack[id].pdf = new PDFdoc( objectStack[id] );

        objectStack[id].pdf.onload = ()=>{
          processJSON_Attrs(objectStack[id], node);
        };

        objectStack[id].pdf.setPDFref( node.href );

      }
      else if( objectStack.hasOwnProperty(id) )
      {
        processJSON_Attrs(objectStack[id], node);
      }

    }

  }
}

/*
case "sample/load":
        if( argc > 0 ) // audio file
        {
            if( audioObj.hasOwnProperty(id) )
            {
              audioObj[id].load( objValue );
            }
            else
            {
              audioObj[id] = new Tone.Player({
                  "url" : objValue,
                  "loop" : ( argc > 1 ) ? argc[1] : false
                }).toMaster();
            }

        }
      break;
      case "sample/play":
        if( argc == 1 && audioObj.hasOwnProperty(id) ) // play/stop
        {
          audioObj[id].restart();
          port.sendObj({ "/msg" : "trying to start "+id });
        }
      break;

*/

function toneObjectFactory(type, vars)
{
  switch(type)
  {
    case "Player":
        return new Tone.Player(vars);
    case "Oscillator":
      return new Tone.Oscillator(vars);
    case "FMOscillator":
      return new Tone.Oscillator(vars);
    default:
      return null;
  }

}


function processJSON_Sound(_obj)
{
  for(let node of _obj)
  {
    if( node.hasOwnProperty('id') )
    {
      const id = node.id;

      if( node.hasOwnProperty('new') )
      {

        let vars = node.hasOwnProperty('vars') ? booleanize(node.vars) : {};

        if( audioObj.hasOwnProperty(id) )
        {
          audioObj[id].volume.value = 0;
          audioObj[id].disconnect();
          delete audioObj[id];
        }
          
        audioObj[id] = toneObjectFactory(node.new, vars).toMaster();
        console.log( audioObj[id] );

        // not doing callbacks for now
      }
      else if( audioObj.hasOwnProperty(id) )
      {
        if( node.hasOwnProperty('vars') )
        {
          let vars = booleanize( node.vars );
          for( let v in vars )
          {
            audioObj[id][v] = vars[v];

          }
          console.log( audioObj[id] );
          
        }

      }

    }

  }
}

/*
*   obj format, an array of objects:
  [
    {
      timetag: currenttime,
      key: command string, e.g. /id/draw/circle
      val: command string arguments
    },
    {
      timetag: currenttime,
      key: command string, e.g. /id/draw/circle
      val: command string arguments
    }
  ]
*
*/

/*
* new version obj may not have key/value, but sending the 
*/
function processCmdObj(obj)
{
//  const keys = Object.keys(obj);
  // console.log("keys", keys);
  if( typeof obj == 'object' && obj.length === undefined )
    obj = [ obj ];

    console.log(obj);

// using indexes now so we can accumulate the remaining keys if we need to defer
  for( let i = 0; i < obj.length; i++ )
  {
    let key = obj[i].key;
    const timetag = obj[i].timetag;
    const objValue =  obj[i].val;

    const argc = (typeof objValue == 'object') ? (objValue.length === undefined ? "obj" : objValue.length) : 1;

    //const nargs = if( typeof(objValue) == )
//    console.log("received "+ key + " " + objValue + " " + (typeof objValue) + " argc "+ argc + "\n");

  //  let addr = oscMessage.address;
  // "id" is the address prefix
  // the second address level is the drawing switch

    const id_cmd = key.split("/").filter( function(e){ return e } );
    // the filter removes empty strings (which we get for the first '/' )


// probably rename this! it's not always an id anymore
    let id = id_cmd[0];


    // first level command switch
    switch (key)
    {
      case "clear":
      {
        let _cleararr = !Array.isArray(objValue) ?  [ objValue ] : objValue;

        if( _cleararr[0] == 1 || _cleararr[0] == "*" || _cleararr[0] == "all" ) // clear : 1
        {
          for( let key in objectStack )
          {
              objectStack[key].remove();
              delete objectStack[key];
          }

          ongoingTouches = [];

          // clear anim too here...
          clearCSS();
        }
        else
        {
          for( let _clear of _cleararr )
          {
// the # . and single name options should be moved to a /remove function for each type
// it's too vague whether this might be a CSS object or not.
// I guess for now it only deletes SVG and otherwise you have to clear the individual elements completely (tone, css, animations etc.)
            switch( _clear.charAt(0) )
            {
              case "#":
                const _clearID = _clear.slice(1);                
                if( objectStack.hasOwnProperty( _clearID ) ) 
                {
                  objectStack[_clearID].remove();
                  delete objectStack[_clearID];
                }
              break;
              case ".":
              {
                const _clearClass = _clear.slice(1);
                let elements = document.getElementsByClassName(_clearClass);
                while(elements.length > 0){
                  const _id = elements[0].id;
                  elements[0].parentNode.removeChild(elements[0]);
                  delete objectStack[ _id ];
                }
              }
              break;

              case "css":
                clearCSS();
              break;

              case "tween":
              case "tweens":
                
              break;

              case "pdf":
              break;

              default:
              {
   // I think the -drawing thing should probably be replaced or something, need to rethink the names of the svg layers...
                let removeNodeIDs = [];
                let nodes = document.getElementById(_clear+'-drawing').childNodes;
                for(let i=0; i<nodes.length; i++) {
                  if( objectStack.hasOwnProperty( nodes[i].id ) ) {
                    // console.log("remove id", nodes[i].id);
                    removeNodeIDs.push( nodes[i].id );
                  }
                }
      
                for( let r_id of removeNodeIDs ) {
                  // console.log(r_id);
                  objectStack[ r_id ].remove();
                  delete objectStack[ r_id ];
                }
              }
              break;
            }
               
// if it doesn't match a layer, then it might be an animation, or css etc.!
// have to check for that also, or have separate deletes for each type? 
          }
        
        }
        
    }
    break;
    
    case "svg":
      // changing nodes to svg, since it will only effect SVG elements -- other elements will have different contexts and object stacks
      // how to set the context?
//      console.log("svg length", objValue.length);


      //if( typeof objValue !== "object" )
//        break;

/// should still add the .context idea which will also work with groups and HTML

      if( !Array.isArray( objValue ) ) // either a object with context node arrays, or a single node
      {
        let has_context_arrays = false;

        if( typeof objValue.appendTo != "undefined" && typeof objValue.appendTo === "object" && !Array.isArray(objValue.appendTo) )
        {
          let _parentarr = objValue.appendTo;
          iterateContextArrays(_parentarr, "svg")
          has_context_arrays = true;

        }
/*        if( typeof objValue.defs != "undefined" )
        {
          let _objarr = (objValue.defs.length === undefined) ?  [ objValue.defs ] : objValue.defs;          
          iterate_HTML_array(maindef, _objarr, 'svg');
          has_context_arrays = true;
        }

        if( typeof objValue.main != "undefined" )
        {
          let _objarr = (objValue.main.length === undefined) ?  [ objValue.main ] : objValue.main;
          iterate_HTML_array(drawing, _objarr, 'svg');
          has_context_arrays = true;
        }

        if( typeof objValue.back != "undefined" )
        {
          let _objarr = (objValue.back.length === undefined) ?  [ objValue.back ] : objValue.back;
          iterate_HTML_array(back, _objarr, 'svg');
          has_context_arrays = true;
        }

        if( typeof objValue.overlay != "undefined" )
        {
          let _objarr = (objValue.overlay.length === undefined) ?  [ objValue.overlay ] : objValue.overlay;
          iterate_HTML_array(overlay, _objarr, 'svg');
          has_context_arrays = true;
        }
*/
        if( has_context_arrays === false )
        {
          iterate_HTML_array(drawing, [ objValue ], 'svg');
        }
      }
      else
      {
        // default is main drawing layer
        iterate_HTML_array(drawing, objValue, 'svg');
      }
    break;

    case "html":
      if( !Array.isArray( objValue ) ) // either a object with context node arrays, or a single node
      {
        let has_context_arrays = false;

        if( typeof objValue.appendTo != "undefined" && typeof objValue.appendTo === "object" && !Array.isArray(objValue.appendTo) )
        {
          let _parentarr = objValue.appendTo;
          iterateContextArrays(_parentarr, "html")
          has_context_arrays = true;

        }
      }
      else
      {
        let _objarr = !Array.isArray( objValue ) ?  [ objValue ] : objValue;  
        iterate_HTML_array(main, _objarr, 'html');
      }
        
    break;

    case "css":
    {
      if( objValue === "clear" )
      {
        clearCSS();
        break;
      }

      let _objarr = (objValue.length === undefined) ?  [ objValue ] : objValue;
      processJSON_CSS(_objarr);
    }
    break;
    case "tween":
    case "tween/to":
    {
      if( objValue === "clear" )
      {
        // clear all animations???
//        clearCSS();
        break;
      }

      let _objarr = (objValue.length === undefined) ?  [ objValue ] : objValue;
      processJSON_Tween(_objarr, timetag);
    }
    break;
    case "tween/timeline":
    {
      if( objValue === "clear" )
      {
//        clearCSS();
        break;
      }

      let _objarr = (objValue.length === undefined) ?  [ objValue ] : objValue;
      processJSON_Timeline(_objarr, timetag);
    }
    break;

    case "sound":
    {
      if( objValue === "clear" )
      {
  //        clearCSS();
        break;
      }

      let _objarr = (objValue.length === undefined) ?  [ objValue ] : objValue;
      processJSON_Sound(_objarr);
    }
    break;

    case "pdf":
    {
      if( objValue === "clear" )
      {
//        clearCSS();
        break;
      }

      let _objarr = (objValue.length === undefined) ?  [ objValue ] : objValue;
      processJSON_PDF(_objarr);
    }
    break;
    /*
     case "keyframes" :
        setCSSRule("@keyframes "+ id, objValue);
      break;
    */
   case "multitouch":
        ongoingTouches = [];
        if( objValue > 0 )
          enableMultitouch();
        else
          disableMultitouch();
    break;
    default:
        console.log("unrouted command key:", key, objValue );
    break;
  }

    let cmd = id_cmd[1]; // position, remove, or if draw, look for drawType

    let drawingTarget = drawing;
    let cmdtype = "none";

//    console.log("cmds "+id_cmd);
    if( cmd == "pdf" || cmd == "sample" || cmd == "form" || cmd == "overlay" || cmd == "file" || cmd == "tween" )
    {
      if( cmdtype != "none")
      {
        cmd += "/" + cmdtype;
      }
      else
      {
        console.log("must specifiy command after draw, pdf, sample, form and overlay ");
  //      _port.senderror("wrong address format, should be: /unique_id/drawing_command\n\t got: "+id_cmd+" size "+id_cmd.length+"\n");

        continue;
      }

    }

//    console.log(id, cmd);
//    console.log(argc);

// second level parse
    switch (cmd)
    {
      
      case "form/input":

        if( argc > 0 ) // list of text inputs fields
        {
          if( objectStack.hasOwnProperty(id)  )
            objectStack[id].remove();

          let new_form = forms.append("input")
              .attr("type", "text" )
              .attr("id", id )
              .attr("placeholder", objValue )
              //.attr("oninput", "console.log('yooo')")
              //.attr("name", objValue+"_text" )
              .attr("onkeydown", "inputReponse(this)" );

          objectStack[id] = new_form;


        }

      break;
      case "form/text":

        if( argc > 0 ) // list of text inputs fields
        {
          if( objectStack.hasOwnProperty(id)  )
            objectStack[id].remove();

          let new_form = forms.append("form")
            .attr("id", id );
//            .attr("action", "/form-post")
            //.attr("method", "post");

            /*
            <label for="name">Name:</label>
            <input type="text" id="name" name="user_name" />
            */

          if( argc == 1 )
          {
            new_form.append("label")
                .attr("for", objValue )
                .html( objValue );

            new_form.append("input")
                .attr("type", "text" )
                .attr("id", objValue )
                .attr("onsubmit", "console.log('yooo')")
                .attr("name", objValue+"_text" );
          }


          objectStack[id] = new_form;


        }

      break;

      default:
        console.log("no longer supporting list api" );
      break;
    }

  }
}


/**
*   mouse handling
*/

function emptybundle(){
  return {
    timeTag : osc.timeTag(),
    packets : []
  }
};

function initMultitouch(name) {
  let el = document.getElementById(name);
  el.ontouchstart = handleStart;
  el.ontouchmove =  handleMove;
  el.ontouchend =  handleEnd;
  el.ontouchcancel =  handleEnd;
  //el.touchleave =  handleEnd;
//  display_log("initialized multitouch");
}

function disableMultitouch() {
  document.body.removeEventListener("touchstart", handleStart);
  document.body.removeEventListener("touchend", handleEnd);
  document.body.removeEventListener("touchcancel", handleCancel);
  document.body.removeEventListener("touchleave", handleEnd);
  document.body.removeEventListener("touchmove", handleMove);
//  display_log("disabled multitouch");

}

function handleStart(evt) {
  evt.preventDefault();
  let touches = evt.changedTouches;
  let bndl = {};
  for (let i = 0; i < touches.length; i++) {
    ongoingTouches.push(copyTouch(touches[i]));
    let idx = ongoingTouchIndexById(touches[i].identifier);
    bndl[oscprefix+"/"+evt.target.id+"/finger/"+idx+"/start/xy"] = [touches[i].clientX, touches[i].clientY];
  }
  port.sendObj(bndl);
}

function handleMove(evt) {
  evt.preventDefault();
  let touches = evt.changedTouches;
  let bndl = {};
  for (let i = 0; i < touches.length; i++) {
    let idx = ongoingTouchIndexById(touches[i].identifier);
    ongoingTouches.splice(idx, 1, copyTouch(touches[i])); // swap in the new touch record
    bndl[oscprefix+"/"+evt.target.id+"/finger/"+idx+"/move/xy"] = [touches[i].clientX, touches[i].clientY];
  }
  port.sendObj(bndl);

}

function handleEnd(evt) {
  evt.preventDefault();
  let touches = evt.changedTouches;
  let bndl = {};
  for (let i = 0; i < touches.length; i++) {
    let idx = ongoingTouchIndexById(touches[i].identifier);
    ongoingTouches.splice(i, 1); // remove it; we're done
    bndl[oscprefix+"/"+evt.target.id+"/finger/"+idx+"/end/xy"] = [touches[i].clientX, touches[i].clientY];
  }
  port.sendObj(bndl);
}

function handleCancel(evt) {
  evt.preventDefault();
  let touches = evt.changedTouches;
  let bndl = emptybundle();
  for (let i = 0; i < touches.length; i++) {
    let idx = ongoingTouchIndexById(touches[i].identifier);
    ongoingTouches.splice(i, 1); // remove it; we're done
    bndl[oscprefix+"/"+evt.target.id+"/finger/"+idx+"/cancel/xy"] = [touches[i].clientX, touches[i].clientY];
  }
  port.sendObj(bndl);
}

function copyTouch(touch) {
  return { identifier: touch.identifier, clientX: touch.clientX, clientY: touch.clientY };
}

function ongoingTouchIndexById(idToFind) {
  for (let i = 0; i < ongoingTouches.length; i++) {
    let id = ongoingTouches[i].identifier;

    if (id == idToFind) {
      return i;
    }
  }
  return -1; // not found
}

function findPos (obj) {
    let curleft = 0,
        curtop = 0;

    if (obj.offsetParent) {
        do {
            curleft += obj.offsetLeft;
            curtop += obj.offsetTop;
        } while (obj = obj.offsetParent);

        return { x: curleft-document.body.scrollLeft, y: curtop-document.body.scrollTop };
    }
}


document.body.addEventListener("mousemove", function(event)
{
  const obj = {};
  obj[oscprefix+"/"+event.target.id+"/mouse/xy"] = [ event.clientX, event.clientY ];
  port.sendObj(obj);

    //posterror(event.clientX + " " + event.clientY);
});

document.body.addEventListener("mousedown", function(event)
{
  const obj = {};
  obj[oscprefix+"/"+event.target.id+"/mouse/state"] = 1;
  port.sendObj(obj);
});

document.body.addEventListener("mouseup", function(event)
{
  const obj = {};
  obj[oscprefix+"/"+event.target.id+"/mouse/state"] = 0;
  port.sendObj(obj);
    //posterror(event.clientX + " " + event.clientY);
});



function _SocketPort_()
{
  this.port = new WebSocket(`ws://${location.host}${oscprefix}`);

  this.close = function () {
//    port.sendObj({ "/closeme" : "please" });
    this.port.close();
  }

  this.port.onmessage = function (event) {
    const msg = event.data;
    const obj = JSON.parse(msg);
    if( Object.keys(obj)[0] === 'timesync' )
    {
      ts.receive(null, obj.timesync);
    }
    else
      processCmdObj(obj);

  }

  this.port.onopen = function() {
//    display_log("opened port");
    let msg = {};
    msg["/connectedTo"] = oscprefix;
    msg[oscprefix+"/screensize"] = [window.screen.availWidth, window.screen.availHeight];

    port.sendObj(msg);

  }

  this.port.onclose = function() {}

  this.sendObj = function( obj )
  {

    if(this.port.readyState === this.port.OPEN)
    {
      this.port.send( JSON.stringify(obj) );
    }
    else {
      display_log("no open port!");
    }

  }

  this.senderror = function (err) {
    let erroraddr = oscprefix+"/error";
    this.sendObj({
      erroraddr : err
    });
  }

  this.port.onerror = function(error) {
    this.senderror(error);
  };

}

/**
* Main window setup
*
*/
let hidden, visibilityChange;
if (typeof document.hidden !== "undefined") { // Opera 12.10 and Firefox 18 and later support
  hidden = "hidden";
  visibilityChange = "visibilitychange";
} else if (typeof document.msHidden !== "undefined") {
  hidden = "msHidden";
  visibilityChange = "msvisibilitychange";
} else if (typeof document.webkitHidden !== "undefined") {
  hidden = "webkitHidden";
  visibilityChange = "webkitvisibilitychange";
}

function handleVisibilityChange() {
  display_log (document[hidden] + " " + (typeof port.readyState) );
  if( document[hidden] )
  {
//    port.sendObj({ "/bye" : "skinny" });
    port.close();
  }
  else if( typeof port.readyState === "undefined" || port.readyState !== port.OPEN )
  {
    port = new _SocketPort_();
    hasstate = false;
    document.getElementById("loading").style.visibility = "visible";
    ts.sync();
  }
  else
  {
    // returning with open port ... shouldn't happen anymore
    //port.sendObj({ "/helloAgain" : "skinny" });
  }

}


/*
Tone.Buffer.on("load", function(){
		console.log(this);
});
*/


let hasstate = false;

window.onload = function() {
//  display_log("loaded");

  port = new _SocketPort_();

  ts = timesync.create({
      server:   port,
      interval: 5000,
      delay: 250
  });

  ts.on('sync', function (state) {

    if( state === 'end' )
    {
      display_log('sync offset: ' + ts.offset + ' ms');

      if( !hasstate )
      {
//        let loading = document.getElementById("loading");
//        document.body.removeChild(loading);
        document.getElementById("loading").style.visibility = "hidden";

        // ask server for current state
       port.sendObj({ statereq: 1 });
       hasstate = true;
      }
    }
    else
    {
      if( !hasstate ) {
        display_log('<b>sync in progress please wait</b>' );
      } else {
        display_log('sync in progress' );
      }

    }

  });

  ts.on('change', function (offset) {
    port.sendObj({ syncClient: ts.offset });
  });


  ts.send = function (socket, data, timeout) {
    return new Promise(function (resolve, reject) {
      let timeoutFn = setTimeout(reject, timeout);
      if(port.readyState === port.OPEN)
      {
    //    console.log(data);
        port.sendObj({
          timesync: data
        });

        clearTimeout(timeoutFn);
        resolve();
      }

    });

  };


  /*
  this.port.on('timesync', function (data) {
    //console.log('receive', data);
    this.ts.receive(null, data);
  });
  */


  if (typeof document.addEventListener === "undefined" || hidden === undefined) {
    console.log("Page Visibility API not found");
  } else {
    document.addEventListener(visibilityChange, handleVisibilityChange, false);
  }

  initMultitouch("main-svg");
  initMultitouch("main-div");
  initMultitouch("touchdiv");

}


window.addEventListener('click', ()=>{

  let AudioContext = window.AudioContext || window.webkitAudioContext;
  audioCtx = new AudioContext();

  StartAudioContext(Tone.context).then( function() {
    display_log("Started Audio");
  });
});


window.onbeforeunload = function() {
    // port.onclose = function () {}; // disable onclose handler first
    if( port.readyState === port.OPEN  )
    {
      port.close();
    }

};


// sound stuff
/*
/// but maybe we might as well just stick with Tone?
// or maybe webaudio is better since we can add dsp level scripts?

oscillator.connect(gainNode);
gainNode.connect(audioCtx.destination);

{
  /prefix/sound : [{
    /id : "pitch",
    /new : "oscillator",
    /props : {
      /type : "sine",
      /frequency : 440
    }
  },{
    /id : "gainnode",
    /new : "gain",
    /props : {
      /gain : 0.1
    },
    /connect : 'output object id, or audioCtx.destination if not defined'

  }
}]

}

*/
function jsonSound_obj(_obj) {  }

/**
 * PDF handler
 */

let pdfjsLib = window['pdfjs-dist/build/pdf'];
// The workerSrc property
pdfjsLib.GlobalWorkerOptions.workerSrc = 'scripts/pdfjs-dist/build/pdf.worker.js';

class PDFdoc
{

  constructor(canvas_element)
  {

    this.pdfcanvas = canvas_element;
    this.pdfcontext = this.pdfcanvas.node().getContext('2d');

    this.pdfDoc = null;
    this.scale = 2;
    this.pageNum = 1;
    this.pageRendering = false;
    this.pageNumPending = null;


    this.setPDFref = this.setPDFref.bind(this);
    this.loadCallback = this.loadCallback.bind(this);
    this.renderCallbackQueueCheck = this.renderCallbackQueueCheck.bind(this);
    this.renderCallback = this.renderCallback.bind(this);
    this.renderPage = this.renderPage.bind(this);
    this.queueRenderPage = this.queueRenderPage.bind(this);

    this.prevPage = this.prevPage.bind(this);
    this.nextPage = this.nextPage.bind(this);

    this.onload = null;
  }


  /**
   * Asynchronously downloads PDF.
   */
  setPDFref ( filename ) 
  {
    pdfjsLib.getDocument(filename)
      .then( (pdfDoc_)=>{
        this.loadCallback(pdfDoc_);
      });
  }

  loadCallback (pdfDoc_) {

    this.pdfDoc = pdfDoc_;
    // Initial/first page rendering
    this.renderPage(this.pageNum);

    if( this.onload != null)
      this.onload();

  }

  renderCallbackQueueCheck() {
    this.pageRendering = false;
    if (this.pageNumPending !== null) {
      // New page rendering is pending
      this.renderPage(this.pageNumPending);
      this.pageNumPending = null;
    }
  }

  renderCallback(_page) {

    // size of pdf
    let viewport = _page.getViewport(this.scale);

    let mainDiv_bbox = main.node().getBoundingClientRect();

    // scale to fit

//    this.pdfcanvas.height = viewport.height;
    //this.pdfcanvas.width = viewport.width;
//    console.log(mainDiv_bbox.width, viewport.width);

    let adj_viewport = viewport;// _page.getViewport(this.scale * mainDiv_bbox.height /  viewport.height );
//            canvas.height = viewport.height;
    
    this.pdfcanvas.attr("height", adj_viewport.height)
      .attr("width", adj_viewport.width );


//    console.log(this.pdfcanvas.height, this.pdfcanvas.width);

    // Render PDF page into canvas context
    let renderContext = {
      canvasContext: this.pdfcontext,
      viewport: adj_viewport
    };

    let renderTask = _page.render(renderContext);

    // Wait for rendering to finish
    renderTask.promise.then( this.renderCallbackQueueCheck );
  }

  /**
   * Get page info from document, resize canvas accordingly, and render page.
   * @param num Page number.
   */
   renderPage (num) {
      this.pageRendering = true;
      this.pdfDoc.getPage(num).then( this.renderCallback );
  }



  /**
   * If another page rendering in progress, waits until the rendering is
   * finised. Otherwise, executes rendering immediately.
   */
  queueRenderPage (num) {
    if( num >= 1 && num <= this.pdfDoc.numPages )
    {
      if (this.pageRendering) {
        this.pageNumPending = num;
      } else {
        this.renderPage(num);
      }
    }

  }

  /**
   * Displays previous page.
   */
  prevPage () {
    if (this.pageNum <= 1 ) {
      return;
    }
    this.pageNum--;
    this.queueRenderPage(this.pageNum);
  }
  // document.getElementById('prev').addEventListener('click', onPrevPage);

  /**
   * Displays next page.
   */
  nextPage () {
    if (this.pageNum >= this.pdfDoc.numPages) {
      return;
    }
    this.pageNum++;
    this.queueRenderPage(this.pageNum);
  }
  // document.getElementById('next').addEventListener('click', onNextPage);
}

/**
 * fastObjEqual
 */


function fastObjEqual(a, b) {

  let isArray = Array.isArray;
  let keyList = Object.keys;
  let hasProp = Object.prototype.hasOwnProperty;

  if (a === b) return true;

  if (a && b && typeof a == 'object' && typeof b == 'object') {
    let arrA = isArray(a)
      , arrB = isArray(b)
      , i
      , length
      , key;

    if (arrA && arrB) {
      length = a.length;
      if (length != b.length) return false;
      for (i = length; i-- !== 0;)
        if (!fastObjEqual(a[i], b[i])) return false;
      return true;
    }

    if (arrA != arrB) return false;

    let dateA = a instanceof Date
      , dateB = b instanceof Date;
    if (dateA != dateB) return false;
    if (dateA && dateB) return a.getTime() == b.getTime();

    let regexpA = a instanceof RegExp
      , regexpB = b instanceof RegExp;
    if (regexpA != regexpB) return false;
    if (regexpA && regexpB) return a.toString() == b.toString();

    let keys = keyList(a);
    length = keys.length;

    if (length !== keyList(b).length)
      return false;

    for (i = length; i-- !== 0;)
      if (!hasProp.call(b, keys[i])) return false;

    for (i = length; i-- !== 0;) {
      key = keys[i];
      if (!fastObjEqual(a[key], b[key])) return false;
    }

    return true;
  }

  return a!==a && b!==b;
};



})();
