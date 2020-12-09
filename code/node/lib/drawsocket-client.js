/* global TweenMax:readonly, TimelineMax:readonly, Tone:readonly, StartAudioContext:readonly, d3:readonly, timesync:readonly, SVGPoints:readonly  */

/*

MIT License

Copyright (c) 2019 Rama Gottfried, Hochschule für Musik und Theater Hamburg

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

*/

'use strict';


// we return a external access function drawsocket
var drawsocket = (function(){

  let event_connected_callback = null;



  TweenMax.ticker.fps(60);
  TweenMax.ticker.useRAF(true);
  console.log(TweenMax.ticker.fps() );

  let oscprefix = window.location.pathname; // document.getElementById("OSC").getAttribute("OSCprefix");
  if( oscprefix.includes('.html') )
  {
    oscprefix = oscprefix.slice(0, oscprefix.indexOf('.html') );
  }

  console.log(oscprefix);

  let url_args = new URLSearchParams( window.location.search.substr(1)  );


  console.log( Array.from(url_args.keys()).length );

  const ws_prefix = (window.location.protocol === "https:") ? "wss" : "ws";
  const ws_url = `${ws_prefix}://${location.host}${oscprefix}`;

  const svg_ns = 'http://www.w3.org/2000/svg';
  // const html_ns = 'http://www.w3.org/1999/xhtml';

  let port; // = new WebSocket(`ws://${location.host}${oscprefix}`);
  let ts; // timesync object
  //console.log(`ws://${location.host}${oscprefix}`);

  // touch array
  let ongoingTouches = [];

  let prevMousePos = [0,0];

  
  let mouseCallbacks = {
    mousemove: new Map(),
    mousedown: new Map(),
    mouseup: new Map(),
    mouseover: new Map(),
    wheel: new Map()
  }

  // audio files
  let audioObj = {};

  // animations
  let animStack = {};

  let functionStack = {}

  // pdf
  let pdfstack = {};

  // events
  let eventStack = {};

  // webaudio context
  let audioCtx;

  let main = d3.select("#main-html");
  let drawing = d3.select("#main-svg"); // svg group drawing layer
  let mainSVG = d3.select("#svg"); // actual svg
  let maindef = d3.select("#defs");
  let forms = d3.select("#forms");
  let statusDiv = document.getElementById("loading");
  let log_enabled = false;

  function removeNode(node) {
    let parent = node.parentNode;
    if (parent) 
      parent.removeChild(node);
  }


  const _click = ( (document.ontouchstart!==null) ? 'onclick' : 'ontouchstart' );


  function display_log(msg) {
    if( log_enabled )
    {
      let time = new Date();
      let p = document.getElementById('log');
      p.innerHTML ="["+time.toLocaleTimeString()+"] : "+msg ;
    }
  }


  /**
  * utility functions to continue process object array after async process
  */

  const wait = ms => new Promise(resolve => setTimeout(resolve, ms));
  async function delayProcess(ms, obj) {
    await wait(ms);
    drawsocket_input(obj);
  }

  function scheduleEvent(_objarr, timeTag)
  {
    for( let node of _objarr)
    {
      // do timetag adjustment here to sync events to server clock
      if( node.hasOwnProperty('id') && node.hasOwnProperty('del') && node.hasOwnProperty('obj') )
      {
        eventStack[node.id] = setTimeout( () => {
          node.timetag = Date.now();
          drawsocket_input(node.obj);
          delete eventStack[node.id];
        }, node.del );
      }
    }
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


  function generateStyleDefs(svgDomElement) {
    var styleDefs = "";
    var sheets = document.styleSheets;
    for (var i = 0; i < sheets.length; i++) {
      var rules = sheets[i].cssRules;
      for (var j = 0; j < rules.length; j++) {
        var rule = rules[j];
        if (rule.style) {
          var selectorText = rule.selectorText;
          var elems = svgDomElement.querySelectorAll(selectorText);

          if (elems.length) {
            styleDefs += selectorText + " { " + rule.style.cssText + " }\n";
          }
        }
      }
    }

    var s = document.createElement('style');
    s.setAttribute('type', 'text/css');
    s.innerHTML = "<![CDATA[\n" + styleDefs + "\n]]>";
    //somehow cdata section doesn't always work; you could use this instead:
    //s.innerHTML = styleDefs;

    console.log(styleDefs);
    var defs = document.createElement('defs');
    defs.appendChild(s);
    svgDomElement.insertBefore(defs, svgDomElement.firstChild);
  }

  // kind of sort of working, but the image is cut off... 
  // maybe later try: https://www.npmjs.com/package/save-svg-as-png
  function rasterizeSVG() 
  {
    
    console.log('calling' );

    // add copy from svg object by id 

    let svg = mainSVG.node();

    generateStyleDefs(svg);


    let svgData = new XMLSerializer().serializeToString( svg );

    //let svgData = new Blob([svg], {type:"data:image/svg+xml;charset=utf-8"});
    //let domURL = self.URL || self.webkitURL || self;
    //let url = domURL.createObjectURL(svg);

    let canvas = document.createElement( "canvas" );
    let svgSize = svg.getBBox();
    console.log(svgSize);
    
    canvas.width = svgSize.width;
    canvas.height = svgSize.height;

    main.append( ()=> {
      return canvas;
    });

    mainSVG.remove();

    let ctx = canvas.getContext( "2d" );

    let img = new Image(svgSize.width, svgSize.height);

    img.onload = function() {
      ctx.drawImage( img, 0, 0 );

       //console.log( canvas.toDataURL( "image/png" ) );
    };

    let sanitized = btoa(unescape(encodeURIComponent(svgData)));
    console.log(sanitized.length);
    img.src = "data:image/svg+xml;base64," + btoa(unescape(encodeURIComponent(svgData))); //encodeURIComponent(svgData));//  


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
      
      if( prop !== 'new' && prop != 'href' && prop != 'timetag' && prop != 'parent' )
      {
        if(prop === "style" )
        {

          let cssnode = node[prop];

          for( let cssprop in cssnode )
          {

            el.node().style[cssprop] = cssnode[cssprop];
        //    console.log("setting", cssprop, cssnode[cssprop]);

          }
          //console.log("style", el.node().style);

        }
        else if( prop === "child" || prop === "children" || prop === "text" || prop === "html"  )
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
                let _childnode = ( el.node().tagName === 'svg' ) ? d3_processJSON_SVG_node(childobj[subnode]) : processJSON_HTML_node( childobj[subnode] );
                if( _childnode.node !== null )
                {
                  
                  let _childID = _childnode.node.id;
                  if( _childID )
                  {
                    let existing = d3.select(`#${_childID}`);
                    if( existing )
                      existing.remove();
                    
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
        else if(prop === 'call' && typeof node[prop] === 'object' )
        {
          processMethodCalls( el.node(), node[prop] );             
        }
        if( prop === 'set' && typeof node.set === 'object' )
              setMemberValue( el.node(), node.set )
        else if( typeof node[prop] == 'function' )
          el.node()[prop] = node[prop];
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

    if( el_type === 'use' || el_type == 'textPath')
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

          let fix_position = () => { //timestamp
            let bb = el.node().getBBox();
            if( bb.width === 0 && retries-- > 0){
//              console.log('retrying');
              window.requestAnimationFrame(fix_position);
            }
            else
            {
              if( retries <= 0 )
                console.log("retry timeout", retries);
/*
              console.log(node.href[0], "bbox y h", bb.y, bb.height);
              console.log( "client rect", el.node().getBoundingClientRect() );
  */            
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


      if( node.hasOwnProperty('width') && node.hasOwnProperty('height') )
      {
        el.attr("xlink:href", uniqueImgSrc);
      }
      else
      {
        let w =  node.hasOwnProperty('width') ? node.width : 0;
        let h =  node.hasOwnProperty('height') ? node.height : 0;

        el.attr('width', 100)
          .attr('height', 100)
          .attr("xlink:href", uniqueImgSrc);

        let image = new Image();
        
        image.addEventListener('load', function() {
          if( !w && !h)
          {
            w = this.naturalWidth;
            h = this.naturalHeight;
          }
          else if( !h )
          {
            h = (w / this.naturalWidth) * this.naturalHeight;
          }
          else if( !w )
          {
            w = (h / this.naturalHeight) * this.naturalWidth;
          }

          el.attr('width', w )
            .attr('height', h );
        });

        image.src = uniqueImgSrc;


      }

      

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
      isNew = true; // << can be new even if there's no id

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
        if( prop !== 'new' && prop != 'href' && prop != 'timetag' && prop != 'parent' )
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
          else if( prop === "points" && Array.isArray(node.points) ) // must be an array (i.e. more than one point)
          {
            el.attr('d',  SVGPoints.toPath(node.points));
          }
          else if( prop === "child" || prop === "children" || prop === "text" || prop === "html")
          {
            // case of child node
            // if it's an array, parse for nodes, otherwise, add as text
            /**
             *  --> no longer supporting child arrays directly here
             * nested object need to be set via the /parent tag
             * 
             * */
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
                      let existing = d3.select(`#${_childID}`);
                      if( existing )
                        existing.remove();
                      
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
          else if( typeof node[prop] == 'function' )
            el.node()[prop] = node[prop];
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



  function iterate_HTML_array(_objarr, _type)
  {

    //console.log(_objarr, Object.keys(_objarr), _type);

    for(let node of _objarr)
    { 
      //console.log('node', node);
      
      let _newnodeObj = null;
      
      if(_type === "svg")
        _newnodeObj = d3_processJSON_SVG_node(node);
      else if( _type === 'html')
        _newnodeObj = processJSON_HTML_node(node);

      let _newnode = _newnodeObj.node;
      let _isNew = _newnodeObj.new;

      if( _newnode !== null )
      {
  /*
        if( typeof _newnode.id == 'undefined' )
        {
          _newnode.id = ts.now();
        }
  */
        if( _isNew )
        {

          let _context = null;
          if( node.hasOwnProperty('parent') )
          {
            _context = d3.select(`#${node.parent}`);
            //console.log("found parent context ", node.parent);
            
          }
          
          if( !_context )
          {
            _context = _type === "svg" ? drawing : main;
          }

          _context.append( ()=> {
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
      let parent = d3.select(`#${parentID}`);
            
      if( parent )
      {
        console.log(parent);

        let obj = _parentarr[parentID]; 
        let _objarr = !Array.isArray(obj) ? [ obj ] :  obj;
        let parentType = ( parent.node().namespaceURI === svg_ns ) ? 'svg' : 'html';
        console.log( parent.node().namespaceURI, parentType );

        iterate_HTML_array( parent, _objarr, parentType );
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

  function functionize(_obj)
  {
    if( _obj.hasOwnProperty('function') )
    {
      let _args = _obj.hasOwnProperty("args") ? _obj.args : "";
      return new Function( _args, _obj.function );
    }

    return _obj;

  }

  // temp version, should check for object type and recurse
  function booleanize(_obj)
  {
    for (let key in _obj)
    {

      if( _obj[key] == "true" )
        _obj[key] = true;
      else if( _obj[key] == "false" )
        _obj[key] = false;
      else if( typeof _obj[key] == "object" )
      {        
        _obj[key] = functionize( _obj[key] );
      }
     /* else if( key == "onUpdate" )
      {
        //_obj[key] = new Function( ..._obj[key] );
        _obj[key] = new Function( "", _obj[key] );
      }
*/
    }    
    return _obj;
  }



  function processJSON_Tween(node, timetag)
  {
 //   console.log("processJSON_Tween", node);

    if( node.hasOwnProperty('target') &&
        node.hasOwnProperty('vars') )
    {

      const id = node.id;

      if( animStack.hasOwnProperty(id) )
      {
        animStack[id].kill();
        delete animStack[id];
      }
      
      //let boolversion = booleanize(node.vars);
      const dur = node.hasOwnProperty('dur') ? node.dur : 0;
      animStack[id] = TweenMax.to( node.target, dur, booleanize(node.vars) );

    }
    
    if( node.hasOwnProperty('cmd') )
    {
      tween_cmd_node(node, timetag);
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
//    console.log(_timetag);
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
              TweenMax.delayedCall(Math.abs(latestart), ()=>{
                animStack[id].restart();
              }, this );
            }

          }
          else
          {
            animStack[id].pause(animStack[id].totalDuration());
            //TweenMax.set( animStack[id].target, animStack[id].vars );
          }
        }
        break;
        case "play":
        {
          
          let currentposition = node.hasOwnProperty("time") ? node.time : animStack[id].totalTime();

          if( !ts ) {
            animStack[id].play( currentposition );
            continue;
          }

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
          
          if( node.hasOwnProperty("time") ){
            animStack[id].pause( node.time );
          }
          else
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

        case "restart":
          animStack[id].restart();
        break;

        case "playfrom":
          if( node.hasOwnProperty("time") )
          {
            animStack[id].play( node.time );
          }
        break;

        default:
        break;
      }
    }

  }

  function processJSON_Timeline(node, timetag)
  {
    
      
    if( node.hasOwnProperty('tweens') || node.hasOwnProperty('callbacks') )
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

      if( node.hasOwnProperty('tweens') )
      {
        for( let tween of node.tweens )
        {
          newTimeline.add( TweenMax.to( tween.target, tween.dur, booleanize(tween.vars) ) );
        }
      }
        

      /**
       * untested -- was about to add a connection to addLabel, but we want to avoid too specific wrapping here
       * best would be if we somehow parsed the object and converted all functions to callable js Functions and then
       * use the processMethods function, since the addCallback and addLabel are both methods.
       * 
       * in either case, to add an event with TimelineMax that can be cancelled, we might need to always use labels (but better for the user to decide how to do that)
       */
      if( node.hasOwnProperty('callbacks') )
      {
        for( let cb of node.callbacks )
        {
          if( typeof cb == "object" && cb.hasOwnProperty('function') && cb.hasOwnProperty('time') )
          {
            let _args = cb.hasOwnProperty("args") ? cb.args : "";
            newTimeline.addCallback( new Function( _args, cb.function ), cb.time  );
          }    
        }
      }

      animStack[id] = newTimeline;

    }
    
    if( animStack.hasOwnProperty(node.id) )
    {
      if( node.hasOwnProperty('call') && typeof node.call === 'object' )
        processMethodCalls( animStack[node.id], node.call );
    }

    if( node.hasOwnProperty('cmd') )
    {
      tween_cmd_node(node, timetag);
    }


  }


  function iterateTweenNodes(_obj, timetag)
  {
    for(let node of _obj)
    {
      if( node.hasOwnProperty('id') ) // must have id always
      {
        if( node.hasOwnProperty('tweens') || node.hasOwnProperty('timeline') ) // setting tweens, must be timeline
        {
          processJSON_Timeline(node, timetag);
        }
        else
        {
          let id = node.id;
          if( animStack.hasOwnProperty(id) && animStack[id].hasOwnProperty('tweens') ) // check if it's updating an existing timeline
          {
            processJSON_Timeline(node, timetag);
          }
          else
          {
            processJSON_Tween(node, timetag);
          }
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
    TweenMax.set( el.node(), setprops );

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
        let el = pdfstack.hasOwnProperty(id) ? pdfstack[id] : null;

        if( node.hasOwnProperty('href') )
        {
          
          if( el )
            el.remove();

          el = d3.create("canvas")
            .attr("id", id)
            .attr("class", "pdfcanvas")
            .attr("context", "canvas");

              
  // maybe someday add more layer options here...
          main.node().prepend( el.node() );

          el.pdf = new PDFdoc( el );

          el.pdf.onload = ()=>{
            processJSON_Attrs(el, node);
          };

          el.pdf.setPDFref( node.href );

          pdfstack[id] = el;
    //      console.log("shoudl have set");
          

        }
        else if( el )
        {
          processJSON_Attrs(el, node);
        }

      }

    }
  }

  function clearPDF()
  {

    let keys = Object.keys(pdfstack);

    for( let k of keys )    
      pdfstack[k].remove();

    pdfstack = {};

  }


  function clearAnim()
  {

    let keys = Object.keys(animStack);

    for( let k of keys )    
      animStack[k].kill();

    animStack = {};

  }

  function clearSound()
  {
    /*
    let keys = Object.keys(audioObj);

    for( let k of keys )    
      audioObj[k].kill();
    */

    audioObj = {};

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

  function parseObjRefVars(vars)
  {
    for( const k in vars)
    {
      if( typeof vars[k] === 'object' )
      {
        const v = vars[k];
        if( v.hasOwnProperty('obj') && v.hasOwnProperty('get') )
        {
          vars[k] = getRef(v.obj, v.get);
        }
        
      }
    }
  }

  Tone.loaded().then(() => {
    // all your samples are loaded
    let msg = {};
    msg.event = {
      key: 'status',
      val: {
        bufferloaded: 1
      }
    };
    sendMsg(msg);
  })
/*
  Tone.Buffer.on('load', function(){
    let msg = {};
    msg.event = {
      key: 'status',
      val: {
        bufferloaded: 1
      }
    };
    sendMsg(msg);
  })
*/

  function toneObjectFactory(type, vars, callback_id)
  {

    parseObjRefVars(vars);

    switch(type)
    {
      case "Player":
        console.log('creating new player', vars);

          return new Tone.Player(vars);
      case "Oscillator":
        return new Tone.Oscillator(vars);
      default:
        return new Tone[type](vars);
        //return null;
    }

  }

  /*
{
  /call : {
    /method : "toMaster",
    /then : {
      /method : "start"
    }
  }

}


  */


 function setMemberValue(_obj, _set)
 {
   //console.log('setMemberValue', _obj, _set);

   const setstack_ = !Array.isArray(_set) ? [_set] : _set;
   for( let s of setstack_ )
   {

      if( s.hasOwnProperty('member') && s.hasOwnProperty('value') )
      {
        const levels = s.member.split('.');
        const nlevels = levels.length;
        //console.log(nlevels, levels, levels[0] );

        let target = _obj[ levels[0] ];
        //console.log(`getting target ${target}`);

        if( nlevels > 1 )
        {
          let i = 1;
          for( ; i < nlevels-1; i++ )
          {
            target = target[ levels[i] ];
          //  console.log(`getting target ${target}`);
          }
          target[ levels[i] ] = s.value;          
          //console.log(`setting target ${s.value}`, target, levels[i]), target[ levels[i] ];
        }
        else
        {
          _obj[ levels[0] ] = s.value;
        }
        
        //console.log(`check target ${target}`);

     } 
   }

   //console.log("end",_obj);

 }

  function getRef(name, member)
  {
    switch(name)
    {
      case "svg":
      case "html":
        return d3.select(`#${member}`);
      case "Tone":
        return Tone[member];
      case "Tone.Object":
        return audioObj[member];
      case 'tween':
        return animStack[member];

      default:
        return null;

    }   
  }

  function processMethodCalls(_obj, _callStack)
  {

    const stack_ = !Array.isArray(_callStack) ? [_callStack] : _callStack;
    for( let call of stack_ )
    {
      /*
      // -- doesn't work yet mixing methods and functions, I think becuase methods sometimes need the this to be the this of the origianl object? not completely getting it yet
      let fn = null;

      if( call.hasOwnProperty('method') )
        fn = call.method;
      else if( typeof _obj === 'function' )
        fn = _obj;
      
      */      

      if( call.hasOwnProperty('method') )
      {
        let ret = null;
        
        if( call.hasOwnProperty('args') )
        {
          let args_ = call.args;
          
          if( typeof args_ === 'object' )
          {

            let argsObjs = Array.isArray(args_) ? args_ : [args_];

            let ref_args = argsObjs.map( (a_) => {
              if( typeof a_ === 'object' ) {
                if( a_.hasOwnProperty('obj') && a_.hasOwnProperty('get') )
                {
                  return getRef(a_.obj, a_.get );
                }
                else if( a_.hasOwnProperty('val') )
                  return a_.val;
                else if( a_.hasOwnProperty('function') )
                {
                  return functionize(a_);
                }
                else
                  return a_;
              } else {
                return a_;
              }
            });

            console.log('call.method', call.method, typeof _obj[call.method], ref_args);
            
            ret = _obj[call.method]( ...ref_args );
            
          }
          else
            ret = _obj[call.method]( args_ );
        }
        else
        {
        //  console.log(_obj);
          ret = _obj[call.method]();
        }

        if (ret && typeof ret.then === 'function' && ret !== null) {
          ret.catch( (e) => { 
             console.log(`caught error ${e}`);
          })
        }
        else if( ret !== undefined )
        {
          if( call.hasOwnProperty('then') && typeof call.then === 'object' )
          {
            processMethodCalls( ret, call.then );
          }
          // console.log(`return value ${ret}`);
        }

      }
      
        

    }
  }
  

  function procSound_cmd(node, timetag)
  {

    const id = node.id;

    const audio_obj = audioObj[id];
    const _timetag = node.hasOwnProperty('timetag') ? node.timetag : timetag;
    const cmds = ( typeof node.cmd != 'object' ) ? [node.cmd] : node.cmd;

    console.log(cmds);

    for( let _cmd of cmds )
    {
        switch(_cmd)
        {
          case "start":
            if( audio_obj instanceof Tone.Player ) //typeof audio_obj.buffer === 'object'
            {
              let end = _timetag + audio_obj.buffer.length;
//              console.log('start',ts.now(), audio_obj.buffer.length, end );
              if( ts.now() < end )
              {
                let latestart = (ts.now() - _timetag) * 0.001; // to seconds
//                console.log('start offset', latestart);
                if( latestart >= 0 ){
                  audio_obj.restart(Tone.now(), latestart );                        
                } else {
                  audio_obj.restart(Tone.now()-latestart, 0 );
                }
    
              }

            }
            else
              audio_obj.start();       
          break;
          case "stop":
            audio_obj.stop();       
          break;
          
          default:
          break;
        }
      }

  }

  function startAudio()
  {
    let AudioContext = window.AudioContext || window.webkitAudioContext;
    audioCtx = new AudioContext();

    StartAudioContext(Tone.context).then( function() {
      display_log("Started Audio");
    });

   // console.log( Tone.context );

  }


  function processJSON_Sound(_obj, timetag)
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
            
          audioObj[id] = toneObjectFactory(node.new, vars, id);
          console.log(audioObj[id]);
          
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
            
          }

        }

        if( audioObj.hasOwnProperty(id) )
        {
          if( node.hasOwnProperty('call') && typeof node.call === 'object' )
              processMethodCalls( audioObj[id], node.call );
  
          if( node.hasOwnProperty('set') && typeof node.set === 'object' )
              setMemberValue( audioObj[id], node.set )


          if( node.hasOwnProperty('cmd') )
          {
            procSound_cmd(node, timetag);
          }

        }

      }

      

    }
  }



  // textfield form, display as typed
  function submitOnEnterKey(ele)
  {
    if(event.key === 'Enter')
    {
      let obj = {};
      obj[oscprefix+"/"+ele.id+"/input"] = ele.value;
      sendMsg( obj );
      return true;
    }
    else 
      return false;

  }


 function processJSON_file(_obj)
 {
   
   for(let node of _obj)
   {
     if( node.hasOwnProperty('fetch') )
     {

      if( !node.fetch.startsWith("/") ){
        node.fetch = "/"+node.fetch;
      }
        
      fetch(node.fetch).then( function(response) {

        try {
          return response.json()
        }
        catch (err)
        {
          console.log('caught error:', err);
        }

        return;
      }).then( function(_json) {
        
        let keys = Object.keys(_json);

        let match = node.hasOwnProperty('prefix') ? node.prefix : oscprefix;
        
        const match_set = new Set( (Array.isArray(match) ? match : [match]) );


        for( let m of keys )
        {
          // if( m.startsWith("/*") )
          // {
          //   drawsocket_input( _json[m] );
          // }
          // else 
          if( match_set.has(m) )
          {
            drawsocket_input( _json[m] );
          }
        }

      });
     }
  }
}


  function processJSON_Fn(obj_arr)
  {
    for( const o of obj_arr)
    {
      if( typeof o === 'object' && o.hasOwnProperty('id') )
      {
        if( o.hasOwnProperty('body') )
        {
          let fill_;
          
          if( o.hasOwnProperty('args') )
          {
            if( typeof o.args === "string" )
              fill_ = [o.args, o.body];
            else
              fill_ = [...o.args, o.body];

          } 
          else
          {
            fill_ = o.body;
          }

          functionStack[o.id] = new Function( ...fill_);

        //  console.log(typeof functionStack[o.id], fill_);
        }
        
        if( o.hasOwnProperty('call') && typeof functionStack[o.id] === 'function')
        {
          let ret = null;
          
          try {
            
            if( o.call === "" )
            {
              ret = functionStack[o.id]();
            }
            else
            {
              if( Array.isArray(o.call) )
              {
              //  console.log("calling with args", ...o.call );    
                ret = functionStack[o.id]( ...o.call );
              }
              else
                ret = functionStack[o.id](o.call);

            }
              
            if( ret )
            {
              sendMsg({ 
                event : {
                  key : "function",
                  val : {
                    id : o.id,
                    return : ret
                  }
                }
              });
            }

          } catch (err) {
            sendMsg({
              event : {
                key : "function",
                val : {
                  id : o.id,
                  error : err
                }
              }
            });
          }
          
          

          //processMethodCalls(functionStack[o.id], o.call );
        }
        
      }   
    }
  }


  /**
   * can be overwritten by user to listen to drawsocket input
   */

  let input_listener = null;// = function(key, obj_arr) {};

  /**
   *  the main input to drawsocket
   */
  
  function drawsocket_input(obj)
  {
  //  const keys = Object.keys(obj);
    //console.log("keys", keys);
    let iter_obj_arr;

    let toplevel_timetag;
    if( !Array.isArray(obj) )
    {
      toplevel_timetag = obj.hasOwnProperty('timetag') ? obj.timetag : null;
      iter_obj_arr = obj.hasOwnProperty('obj_arr') ? obj.obj_arr : [ obj ];
    }
    else
      iter_obj_arr = obj;
    

//  console.log(iter_obj_arr);

    let wasHandled = true;

    for( let i = 0; i < iter_obj_arr.length; i++ )  
    {
      const key = iter_obj_arr[i].key;
      
      const timetag = iter_obj_arr[i].timetag ? iter_obj_arr[i].timetag : (toplevel_timetag ? toplevel_timetag : Date.now());

      const objValue =  iter_obj_arr[i].val;

      let _objarr = !Array.isArray(objValue) ?  [ objValue ] : objValue;

      // first level command switch
      switch (key)
      {
        /**
         * svg is *only* a flat array now
         * if /parent is found, it will be used to append a new child node to it
         */
        
        case "svg":
            iterate_HTML_array(_objarr, 'svg');
        break;

        case "html":
          iterate_HTML_array(_objarr, 'html');
        break;

        case "remove":
          for( let _clear of _objarr )
          {
            d3.select("#"+_clear).remove();
          }
        break;
        case "clear":
        {
          if( _objarr[0] == 1 || _objarr[0] == "*" || _objarr[0] == "all" ) // clear : 1
          {
            
            drawing.selectAll("*").remove();
            maindef.selectAll("*").remove();
            main.selectAll("*").remove();
            forms.selectAll("*").remove();

            ongoingTouches = [];

            mouseCallbacks = {
              mousemove: new Map(),
              mousedown: new Map(),
              mouseup: new Map(),
              mouseover: new Map(),
              wheel: new Map()
            };
            
            clearCSS();
            clearAnim();
            clearPDF();
            clearSound();
          }
          else
          {
            for( let _clear of _objarr )
            {
              switch( _clear )
              {
                case "svg":
                  drawing.selectAll("*").remove();
                break;

                case "html":
                  main.selectAll("*").remove();
                break;

                case "css":
                  clearCSS();
                break;

                case "tween":
                case "tweens":
                  clearAnim();
                break;

                case "pdf":
                  clearPDF();
                break;

                
                default:
                {
                  let parent = d3.select(`#${_clear}`).node();
  //                console.log("select and remove", _clear, parent);

                  while( parent.firstChild )
                  {
                    parent.firstChild.remove();
                  }
                  
                  

                }
                
                break;
              }

            }
          
          }
          
        }
        break;

        case "css":
          if( objValue === "clear" )
          {
            clearCSS();
            break;
          }

          processJSON_CSS(_objarr);
        break;
        
        case "tween":
        case "tween/to":
        case "timeline":
        case "tween/timeline":

          if( objValue === "clear" )
          {
            clearAnim();
            break;
          }

          iterateTweenNodes(_objarr, timetag);

        break;
        
        case "sound":
          if( objValue === "clear" )
          {
            clearSound();
            break;
          }
          processJSON_Sound(_objarr, timetag);
        break;

        case "pdf":
          
          if( objValue === "clear" )
          {
            clearPDF();
            break;
          }

          processJSON_PDF(_objarr);
        break;

        case "event":
          scheduleEvent(_objarr, timetag);
        break;

        case "file":
          processJSON_file(_objarr);
        break;

        case "function":
          processJSON_Fn(_objarr);
        break;
        /*
        case "keyframes" :
            setCSSRule("@keyframes "+ id, objValue);
          break;
        */
        case "multitouch":
            //console.log("multitouch", objValue);
            ongoingTouches = [];
            if( objValue > 0 )
              enableMultitouch();
            else
              disableMultitouch();
        break;
        case "mouse":
            processJSON_mouse(_objarr);
        break;

        case "key":
          
          if( _objarr[0].hasOwnProperty('enable') )
          {
            if( _objarr[0].enable == 0 )
              removeKeyListeners()
            else
              addKeyListeners();
          }

        break;

        case "do_sync":
          do_sync();
        break;
        case "log":
          log_enabled = ( objValue > 0 );
        break;
        case "canvas":
          rasterizeSVG();
        break;
        case "writeSVG":
          {
            //console.log("svgElement", mainSVG.node().outerHTML );
            generateStyleDefs(mainSVG.node());

            sendMsg({
                key: 'svgElement',
                val :  mainSVG.node().outerHTML
              });
          }
        break;
        default:
            sendMsg({
              event: {
                key: "input",
                val: {
                  error: `unrouted command key: ${key}`
                }
              }
            });
            console.log("unrouted command key:", key, objValue );
            wasHandled = false;
        break;
      }

      if( input_listener != null )
        input_listener(key, _objarr, wasHandled);

    }
  }


  /**
  *   mouse handling
  */
  let mouseIsEnabled = true;
  
  function processJSON_mouse(_objarr)
  {
    for( const obj of _objarr)
    {

      if( obj.hasOwnProperty('enable') )
      {
        if( obj.enable == 0 )
          removeMouseListeners()
        else
          addMouseListeners();

        mouseIsEnabled = obj.enable;

      }
      else if( obj.hasOwnProperty("id") && obj.hasOwnProperty("callback") && obj.callback.hasOwnProperty("event") && obj.callback.hasOwnProperty("function") )
      {
        if( !obj.callback.hasOwnProperty('args') ){
          obj.callback.args = "event";
        }

        mouseCallbacks[obj.callback.event].set( obj.id, functionize(obj.callback) );

      }
      else if( obj.hasOwnProperty('remove') && obj.hasOwnProperty("event") )
      {
        /**
         * key: mouse,
         * val: {
         *    remove: id,
         *    event: 
         * }
         */

        mouseCallbacks[obj.event].delete( obj.remove );
      }

    }
  }


  function emptybundle(){
    return {
      timeTag : Date.now,
      packets : []
    }
  }

  function initMultitouch(name) { //(name)
 /*
    document.body.addEventListener("touchstart", handleStart, true);
    document.body.addEventListener("touchend", handleEnd, true);
    document.body.addEventListener("touchcancel", handleCancel, true);
    document.body.addEventListener("touchleave", handleEnd, true);
    document.body.addEventListener("touchmove", handleMove, true);
    */
    let el = document.getElementById(name);
    el.ontouchstart = handleStart;
    el.ontouchmove =  handleMove;
    el.ontouchend =  handleEnd;
    el.ontouchcancel =  handleEnd;
   
    //el.touchleave =  handleEnd;
  //  display_log("initialized multitouch");
  }

  function disableMultitouch() {
    document.body.removeEventListener("touchstart", handleStart, true);
    document.body.removeEventListener("touchend", handleEnd, true);
    document.body.removeEventListener("touchcancel", handleCancel, true);
    document.body.removeEventListener("touchleave", handleEnd, true);
    document.body.removeEventListener("touchmove", handleMove, true);
  //  display_log("disabled multitouch");

  }


  function procTouchEvent(event, caller)
  {
    
    let obj = {};
    obj.event = {
      key: 'touch',
      val: {
        action: caller,
        button: event.buttons,
        mods : {
          alt: event.altKey,
          shift: event.shiftKey,
          ctrl: event.ctrlKey,
          meta: event.metaKey
        },
        target: elementToJSON(event.target),
        fingers: ongoingTouches
      }
    };

    sendMsg(obj);

  }


  function handleStart(event) {
    event.preventDefault();

    let touches = event.changedTouches;
   
    for (let i = 0; i < touches.length; i++) {
      ongoingTouches.push(copyTouch(touches[i]));
      //let idx = ongoingTouchIndexById(touches[i].identifier);

    }
    
    procTouchEvent(event, "touchstart");

  }

  function handleMove(event) {
    event.preventDefault();
    let touches = event.changedTouches;
    
    for (let i = 0; i < touches.length; i++) {
      let idx = ongoingTouchIndexById(touches[i].identifier);
      ongoingTouches.splice(idx, 1, copyTouch(touches[i])); // swap in the new touch record

    }
    procTouchEvent(event, "touchmove");


  }

  function handleEnd(event) {
    event.preventDefault();
    let touches = event.changedTouches;

    for (let i = 0; i < touches.length; i++) {
      let idx = ongoingTouchIndexById(touches[i].identifier);
      ongoingTouches.splice(idx, 1); // remove it; we're done

    }

    procTouchEvent(event, "touchend");

  }

  function handleCancel(event) {
    event.preventDefault();
    let touches = event.changedTouches;

    for (let i = 0; i < touches.length; i++) {
      let idx = ongoingTouchIndexById(touches[i].identifier);
      ongoingTouches.splice(idx, 1); // remove it; we're done

    }

    procTouchEvent(event, "touchcancel");

  }

  function copyTouch(touch) {
    return { identifier: touch.identifier, x: touch.clientX, y: touch.clientY };
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
/*
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
*/

  function elementToJSON(elm)
  {
    let obj = {};
    obj.type = elm.tagName;
    Array.prototype.forEach.call(elm.attributes, (attr) => {
      if( attr.specified )
      {
        if( obj.type === 'path' && attr.name === 'd' )
        {                
          obj.points = SVGPoints.toPoints({ type: "path", d: attr.value });
        }

        obj[attr.name] = attr.value;
      }
    });

    return obj;
  }



  function procMouseEvent(event, caller)
  {
   
    // considering removing this user callback system, since it seems better performing to addEventListeners separately in a separate file    
    if( mouseCallbacks[caller].size > 0 )
      mouseCallbacks[caller].forEach( cb => cb(event) );

    let obj = {
      event: {
        key: 'mouse',
        val: {
          action: caller,
          xy: [ event.clientX, event.clientY ],
          button: event.buttons,
          mods : {
            alt: event.altKey,
            shift: event.shiftKey,
            ctrl: event.ctrlKey,
            meta: event.metaKey
          },
          target: elementToJSON(event.target)
        }
      }
    };
  
    if( caller == 'wheel' )
    {
      obj.event.val.delta = [ event.deltaX, event.deltaY ];
    }

    sendMsg(obj);

  }

  function mousemove_callback(event)
  {
    if( event.clientX != prevMousePos[0] && event.clientY != prevMousePos[1] )
    {
    //event.preventDefault();
      procMouseEvent(event, "mousemove");
    }

    prevMousePos = [ event.clientX, event.clientY ];
  }

  function mousedown_callback(event)
  {
    //event.preventDefault();
    procMouseEvent(event, "mousedown");
    prevMousePos = [ event.clientX, event.clientY ];
    
  }

  function mouseup_callback(event)
  {
    //event.preventDefault();
    procMouseEvent(event, "mouseup");
    prevMousePos = [ event.clientX, event.clientY ];
    
  }

  function mouseover_callback(event)
  {
    //event.preventDefault();
    procMouseEvent(event, "mouseover");
    prevMousePos = [ event.clientX, event.clientY ];
    
  }

  function wheel_callback(event)
  {
    event.preventDefault();
    procMouseEvent(event, "wheel");  
  }

  function addMouseListeners()
  {
    document.body.addEventListener("mousemove", mousemove_callback, true);
    document.body.addEventListener("mousedown", mousedown_callback, true);
    document.body.addEventListener("mouseup", mouseup_callback, true);
    document.body.addEventListener("mouseover", mouseover_callback, true);
    document.body.addEventListener("wheel", wheel_callback, {passive:false} );
  }
  
  function removeMouseListeners()
  {    
    document.body.removeEventListener("mousemove", mousemove_callback, true);
    document.body.removeEventListener("mousedown", mousedown_callback, true);
    document.body.removeEventListener("mouseup", mouseup_callback, true);
    document.body.removeEventListener("mouseover", mouseover_callback, true);
    document.body.removeEventListener("wheel", wheel_callback, {passive:false});
  }
  
  function procKeyEvent(event, caller)
  {

   // console.log("drawsocket handler");
    
    sendMsg({
      event: {
        key: 'key',
        val: {
          action: caller,
          keyVal: event.key,
          mods : {
            alt: event.altKey,
            shift: event.shiftKey,
            ctrl: event.ctrlKey,
            meta: event.metaKey
          }
        }
      }
    });

  }
  
  function keydownhandler(event)
  {
    procKeyEvent(event, "keydown");
  }

  function keyuphandler(event)
  {
    procKeyEvent(event, "keyup");
  }

  function addKeyListeners()
  {
    console.log("add");

    document.body.addEventListener("keydown", keydownhandler, true);
    document.body.addEventListener("keyup", keyuphandler, true);
  }

  function removeKeyListeners()
  {
    console.log("removeKeyListeners");
    
    document.body.removeEventListener("keydown", keydownhandler, true);
    document.body.removeEventListener("keyup", keyuphandler, true);
  }



  function pingResponse()
  {
    sendMsg({
      event: {
        key: 'status',
        val: {
          connected: 1,
          screensize: [window.innerWidth, window.innerHeight]
        }
      }
    });

  }

  function do_sync()
  {
    console.log('starting sync');

    statusDiv.innerHTML = "<p>synchronizing...</p>";
    statusDiv.style.visibility = "visible";

    setTimeout(function () {
      ts.sync().catch(err => console.log('timesync err', err));
    }, 100);
  }

  let softlock = 0;

  function _SocketPort_()
  {

    this.port = new WebSocket(ws_url);

    this.close = function () {
      this.port.close();
    }

    this.port.onmessage = function (event) {
      const msg = event.data;
      try {
        const obj = JSON.parse(msg);

        switch( Object.keys(obj)[0] ) 
        {
          case 'timesync':
            ts.receive(null, obj.timesync);
          break;
          case 'ping':
            pingResponse();
          break;
          case 'statereq':
            port.sendObj({ statereq: 1 });
          break;
          default:
            drawsocket_input(obj);
          break;
        }

      }
      catch (e) {
        console.log('parse error: ', e, msg);
        return;
      }
      
    }

    this.port.onopen = function() {
  //    display_log("opened port");
      console.log("connected");
      statusDiv.style.visibility = "hidden";

      do_sync();

      pingResponse();
      
      softlock = 1;
    }

    this.port.onclose = function() 
    {
     // port.readyState = port.CLOSED;
      softlock = 0;
      setTimeout( ()=>{
        if( (typeof port.readyState === "undefined" || port.readyState !== 1 ) && softlock == 0)
        {
          statusDiv.innerHTML = "<p>reconnecting...</p>";
          statusDiv.style.visibility = "visible";
          console.log("tring to reconnect, softlock", softlock );
          try {
            port = new _SocketPort_();
          } catch(err) {
            console.log("failed to connect", err);
          }
          softlock = 1;
        }
      }, 1000 );


    }

    this.sendObj = function( obj )
    {

      if(this.port.readyState === this.port.OPEN)
      {
        this.port.send( JSON.stringify(obj) );
      }
      else {
        display_log("<b>no open port!</b> try refreshing in few seconds");
      }

    }

    this.senderror = function (err) {
      let _obj = {};
      _obj[oscprefix+"/error"] = err;
      _obj.timetag = Date.now();
      this.sendObj(_obj);
    }

    this.port.onerror = function(error) {
     // this.senderror(error);
     console.log("got error", error);
     
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

  function handleVisibilityChange() 
  {
    if( !port ){
      console.log('handleVisibilityChange, no port');
      return;
    }
      

    display_log (document[hidden] + " " + (typeof port.readyState) );
    if( document[hidden] )
    {
  //    port.sendObj({ "/bye" : "skinny" });
      console.log('handleVisibilityChange, document[hidden]');

      port.close();
    }
    else if( typeof port.readyState === "undefined" || port.readyState !== port.OPEN )
    {
      console.log('handleVisibilityChange, typeof port.readyState === "undefined" || port.readyState !== port.OPEN');

      port.close();
      port = new _SocketPort_();
      hasstate = false;
    }
    else
    {
      console.log('handleVisibilityChange, unhandled case');
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


   window.addEventListener("load", function() {
  //  display_log("loaded");

  // if we have no URL arguments, then we can go forward with websockets,
  // otherwise, don't make a socket, but prepare the read message for the json file fetch
    if( url_args.has("fetch") )
    {
      document.getElementById("loading").style.visibility = "hidden";
      hasstate = true;
    
      let _val = {
        fetch: url_args.get("fetch")
      };

      if( url_args.has("prefix") )
      {
        _val.prefix = url_args.get("prefix");
      }

      console.log({
        key: "file",
        val: _val
      });
      
      drawsocket_input({
        key: "file",
        val: _val
      });
      return;
    }

    if( typeof port === "undefined" )
        port = new _SocketPort_();

    ts = timesync.create({
        server:   port,
        interval: null,
        repeat: 5,
        delay: 100
    });

    ts.on('sync', function (state) {

      console.log('syncing', state);
      statusDiv.innerHTML = "<p>synchronizing...</p>";
      statusDiv.style.visibility = "visible";

      if( state === 'end' )
      {
        display_log('sync offset: ' + ts.offset + ' ms');
        statusDiv.style.visibility = "hidden";

        if( !hasstate )
        {
          // ask server for current state
          port.sendObj({ statereq: 1 });

          hasstate = true;
        }


        if( event_connected_callback )
        {
          event_connected_callback();
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

    //let prev_offset = 0;

    ts.on('change', function () { // (offset) optional arg
       
    //  prev_offset = prev_offset - ts.offset;
   //   console.log(`dx=${prev_offset} new=${ts.offset}`);
      let msg = {};
      msg['event'] = {
        key: 'sync',
        val: {
          syncOffset: ts.offset
        }
      };
      sendMsg(msg);
  //    port.sendObj({ syncClient: ts.offset });
    });
  

    ts.send = function (socket, data, timeout) {
  //    console.log('sending', data, timeout);
      return new Promise(function (resolve, reject) {
        let timeoutFn = setTimeout(reject, timeout);
        if(port.readyState === port.OPEN)
        {
         //console.log('data',data);
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

    if( mouseIsEnabled )
      addMouseListeners();

    //initMultitouch();
   
    initMultitouch("main-svg");
    initMultitouch("main-div");
    initMultitouch("touchdiv");
   
    addKeyListeners();
    
    console.log("drawsocket finished loading");

  });


  

  window.addEventListener('click', ()=>{
    startAudio();
  });


  window.onbeforeunload = function() {
    // port.onclose = function () {}; // disable onclose handler first
    if( port.readyState === port.OPEN  )
    {
      port.close();
    }

  };

  window.onresize = function(){
    let msg = {};
    msg['event'] = {
      key: 'status',
      val: {
        screensize: [window.innerWidth, window.innerHeight]
      }
    };
    sendMsg(msg)
  }

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

    function jsonSound_obj(_obj) {  }

  */

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
      
      //let mainDiv_bbox = main.node().getBoundingClientRect();

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
/*

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
  }
*/

  function sendMsg(_obj)
  {
    if( port )
    {
      port.sendObj(_obj);
    }
  }

  

  return {
    input: drawsocket_input,
//    submitOnEnterKey: submitOnEnterKey,
    send: sendMsg,
    oscprefix: oscprefix, // legacy name from previous API
    url: oscprefix,
    startAudio: startAudio,

    setInputListener: function(cb_fn) {
      console.log("setting listener, function signature: (key, objarray, wasHandled");
      input_listener = cb_fn;
    },

    setConnectionCallback: function(cb) {
      console.log("setting on connection callback");
      event_connected_callback = cb;
    }

  }

})();
