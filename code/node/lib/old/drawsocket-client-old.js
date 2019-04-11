// to do:
// make ping/pong to check sever connection and display warning if the page goes stale
//


var oscprefix = window.location.pathname; // document.getElementById("OSC").getAttribute("OSCprefix");
console.log(window.location.pathname);
//var oscprefix = location.pathname.slice(0, -5);
/*
if (window.WebSocket){
     $("#error").text("");
}
*/

var port; // = new WebSocket(`ws://${location.host}${oscprefix}`);
var ts; // timesync object
//console.log(`ws://${location.host}${oscprefix}`);

function pad(num, size) {
  return ('0' + num).substr(-size);
}

// low-level object reference array
var objectStack = [];
// css array
var objectStyle = [];
// transform array
var objectTransform = [];
// touch array
var ongoingTouches = [];
// audio files
var audioObj = [];
// file array
var fileObj = {};
// animations
var animStack = [];
// defs
var defStack = [];


var main = d3.select("#main");

var drawing = d3.select("#drawing"); // svg object
var maindef = d3.select("#defs");

var overlay = d3.select("#overlay-drawing"); // svg object

var back = d3.select("#back-drawing"); // svg object

var forms = d3.select("#forms");

const _click = ( (document.ontouchstart!==null) ? 'onclick' : 'ontouchstart' );

var css = document.styleSheets[0];

var styleEl = document.createElement('style');
styleEl.appendChild(document.createTextNode(""));
document.head.appendChild(styleEl);
styleEl.type = 'text/css';
var styleSheet = styleEl.sheet;


function getCSSRuleStyle(name)
{
  for( var i = 0; i < css.cssRules.length; i++ )
    if( css.cssRules[i].selectorText == name )
      return css.cssRules[i].style;

  return;
}

// todo: add functionality to add -webkit- automatically here
// maybe use GSAP to set this?
function objToCSS(obj)
{
  var styleString = "";
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
    for(var i = 0; i < styleSheet.cssRules.length; i++) {
        var rule = styleSheet.cssRules[i];
        if(rule.selectorText === selector) {
          for( var key in ruleObj )
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



function log(msg) {
  var time = new Date();
//  console.log( msg +" @"+time.toLocaleTimeString() );

  var p = document.getElementById('log');
  p.innerHTML ="["+time.toLocaleTimeString()+"] : "+msg ;

}


function inputReponse(ele)
{
  if(event.key === 'Enter')
  {
    var obj = {};
    obj[oscprefix+"/"+ele.id+"/input"] = ele.value;
    port.sendObj( obj );
  }
}

function getTransformString(transform)
{
  var str = "";
  for( var key in transform )
  {
    str += key + "(" + transform[key] + ") ";
  }
  return str;
}

function getStyleString(style)
{
  var str = "";
  for( var key in style )
  {
    str += key + ":" + style[key] + "; ";
  }
  return str;
}

function svgObj(cmd, argc, objValue)
{
  switch (cmd)
  {
    case "path":
      if( argc == 1 ) // pathstring
      {
        return d3.create("svg:path")
          .attr("d", objValue).node();
      }
    break;
    case "ellipse":
      if( argc == 4 ) // cx="200" cy="80" rx="100" ry="50"
      {
        return d3.create("svg:ellipse")
          .attr("cx", objValue[0])
          .attr("cy", objValue[1])
          .attr("rx", objValue[2])
          .attr("ry", objValue[3]).node();
      }
    break;
    case "rect":
      if( argc == 4 ) // x="50" y="20" width="150" height="150"
      {
        return d3.create("svg:rect")
          .attr("x", objValue[0])
          .attr("y", objValue[1])
          .attr("width", objValue[2])
          .attr("height", objValue[3]).node();
      }
    break;
    case "circle":
      if( argc == 3 ) // cx="50" cy="50" r="40"
      {
        return d3.create("svg:circle")
          .attr("cx", objValue[0])
          .attr("cy", objValue[1])
          .attr("r", objValue[2]).node();
      }
    break;
    case "line":
      if( argc == 4 ) // x1="0" y1="0" x2="200" y2="200"
      {
        return d3.create("svg:line")
          .attr("x1", objValue[0])
          .attr("y1", objValue[1])
          .attr("x2", objValue[2])
          .attr("y2", objValue[3]).node();
      }
    break;
    case "polygon":
      if( argc > 2 ) // points="220,10 300,210 170,250 123,234"
      {
        return d3.create("svg:polygon")
          .attr("points", objValue).node();
      }
    break;
    case "polyline":
      if( argc > 2 ) // points="220,10 300,210 170,250 123,234"
      {
        return d3.create("svg:polyline")
          .attr("points", objValue).node();
      }
    break;

    case "music":
//        console.log("draw/music", argc);
      if( argc == 3 ) // [ x, y, text ]
      {
        return d3.create("svg:text")
            .attr("x", objValue[0] )
            .attr("y", objValue[1] )
            .html( "&#x" + objValue[2] )
            .attr("class", "bravura_text" ).node();
      }
    break;
    case "text":
      if( argc == 3 ) // [ x, y, text ]
      {
        return d3.create("svg:text")
            .attr("x", objValue[0] )
            .attr("y", objValue[1] )
            .html( objValue[2] )
            .attr("class", "basestyle" ).node();
      }
    break;

    case "img":
      if( argc == 1 || argc == 3 ) // url or [x,y,url]
      {
           const locx = ( argc == 1 ) ? 0 : objValue[0];
           const locy = ( argc == 1 ) ? 0 : objValue[1];
           const imgurl = ( argc == 1 ) ? objValue : objValue[2];

           // add image to svg now so that drawing order is correct,
           // then update the width and height after the images has loaded and we can query the image object
           var newNode = d3.create("svg:image")
              .attr('x', locx)
              .attr('y', locy)
              .attr('width', 100)
              .attr('height', 100)
              .attr("xlink:href", imgurl+"?"+(new Date()).getTime());

           var image = new Image();

           image.addEventListener('load', function() {
             newNode.attr('width', this.naturalWidth)
                .attr('height', this.naturalHeight);
           });

           image.src = imgurl+"?"+(new Date()).getTime();

           return newNode.node();
      }
    break;

    case "fromsvg": // pulls object from a separate svg file
    if( argc == 2 ) // args: file id, select id (file must be loaded first of course)
    { // return node to add to objectStack

      if( typeof fileObj[ objValue[0] ] != "undefined")
      {
        var importedElement = d3.select( fileObj[ objValue[0] ] ).select( "#"+ objValue[1] );
        var importedNode = importedElement.node().cloneNode(1);
//            d3.select(el).append(function(){return svg.node();});
        importedNode.id += '~';

        var newNode = d3.create("svg:g").append( ()=>{ return importedNode; } );

        const bbox = importedNode.getBBox();
        importedNode.setAttribute('style', `transform:translate(-${bbox.x}px,-${bbox.y}px)`);
//             console.log(importedNode);

        return newNode.node();

      }

    }
    break;

    case "importFromSVG": // pulls object from a separate svg file
    if( argc == 2 ) // args: file id, select id (file must be loaded first of course)
    { // return node to add to objectStack
      if( typeof fileObj[ objValue[0] ] != "undefined")
      {
        var importedElement = d3.select( fileObj[ objValue[0] ] ).select( "#"+ objValue[1] );
        return importedElement.node().cloneNode(1);
      }

    }
    break;

    case "group":
    case "symbol":

      var newNode = ( cmd === "symbol") ? d3.create("svg:symbol") : d3.create("svg:g");

      for( var k in objValue )
      {

        if( typeof objValue[k] == "object")
        {

          var _svgel;

          for( var _addr in objValue[k] )
          {
            const _val = objValue[k][_addr];
            const _argc = (typeof _val == 'object') ? (_val.length === undefined ? "obj" : _val.length) : 1;

            var _genNode = svgObj(_addr, _argc, _val);

            // I don't like this approach, since it uses the fact there is no matching node type to
            // determine that this is an attribute. not cool. also, it requires that the object is *first* in
            // an object (not an array) before the attrs can be set.
            if( typeof _genNode != "undefined" )
            {
              _svgel = _genNode;
              newNode.append( () => { return _genNode });
            }
            else
            {
              if(typeof _svgel != "undefined" )
              {
                _svgel.setAttribute(_addr, _val);
              }
            }
          }

        }

      }

      return newNode.node();
    break;

    case "use":
      if( argc == 3) // x,y,id
      {
        return d3.create("svg:use")
            .attr("x", objValue[0] )
            .attr("y", objValue[1] )
            .attr( "xlink:href", "#"+objValue[2] ).node();
      }
    break;


    default:
    break;
  }

  return undefined;
}

/*

/context/nodes : [{
  /svg : "line",
  ... required attrs ...
},
{
  /html : "form",
  ... required attrs ...
}]

*/

const svgtag = 'http://www.w3.org/2000/svg';
var mainSVG = document.getElementById("drawing");

function processJSON_HTML(_obj)
{
// first check if there's a new node to make, then iterate everything else and set attrs
// otherwise run select to grab the element by id, or class

// alternatively, use /context/create, /context/update, /context/css
// or instead of create, maybe /new/svg /new/html ? idk
  //var keys = Object.keys(obj);
//  console.log(_obj);
  for(node of _obj)
  {
    if( typeof node.svg != "undefined" )
    {
      var svg_el = null;
      if( typeof node.id != "undefined" )
        svg_el = document.getElementById(node.id);

// PROBLEM 1: SVG Presentation attributes are overridden by CSS,
// so then there can't be any default settings, which won't work for us here...
// maybe the style sheet shouldn't be hard coded?
// or maybe style attributes should be added to the DOM style sheet in a subbundle
// like :
/*
  {
    /svg : "line",
    /x1 : 0,
    /y1 : 0,
    ...
    /style : {
      /stroke-width : 4,
      /stroke: "black"
    }
  }
*/
      if( svg_el === null )
       svg_el = document.createElementNS(svgtag, node.svg);

      for(prop in node) {
        if( prop !== 'svg' && prop !== "style" )
          svg_el.setAttribute(prop, node[prop])
      }

      mainSVG.appendChild(svg_el);
    }
  }




}

// temp version, should check for object type and recurse
function booleanize(_obj)
{
  for (var key in _obj)
  {

    if( _obj[key] == "true" )
      _obj[key] = true;

    if( _obj[key] == "false" )
      _obj[key] = false;

  }
  return _obj;
}


const wait = ms => new Promise(resolve => setTimeout(resolve, ms));

async function delayProcess(ms, obj)
{
//  console.log("starting");
  await wait(ms);
//  console.log("sending");
  processCmdObj(obj);
}

function processCmdObj(obj)
{

//  console.log(obj);
//  const keys = Object.keys(obj);
  // console.log("keys", keys);

// using indexes now so we can accumulate the remaining keys if we need to defer
  for( var i = 0; i < obj.length; i++ )
  {
    var key = obj[i].key;
//     console.log("key", key);
    // get timetag and then slice(1) the for the rest of the array
    const timetag = obj[i].timetag;
    const objValue =  obj[i].val;

    const argc = (typeof objValue == 'object') ? (objValue.length === undefined ? "obj" : objValue.length) : 1;

    //const nargs = if( typeof(objValue) == )
//    console.log("received "+ key + " " + objValue + " " + (typeof objValue) + " argc "+ argc + "\n");

  //  var addr = oscMessage.address;
  // "id" is the address prefix
  // the second address level is the drawing switch

    const id_cmd = key.split("/").filter( function(e){ return e } );
    // the filter removes empty strings (which we get for the first '/' )

    var id = id_cmd[0];

    if( id == "clear" )
    {
      if( id_cmd.length <= 1 )
      {
        for( var key in objectStack)
        {
          if( key == "main" || key == "overlay" || key == "back")
          {}
          else
          {
            objectStack[key].remove();
            delete objectStack[key];
          }

        }

        for( var key in defStack)
        {
            defStack[key].remove();
            delete defStack[key];
        }

        objectStyle = {};
        objectTransform = {};
        defStack = {};
        ongoingTouches = [];

        continue;
      }
      else
      {

        var layerID;

        if( id_cmd[1] === "overlay" )
        {
          layerID = 'overlay-drawing';
        }
        else if( id_cmd[1] === "main" )
        {
          layerID = 'drawing';
        }
        else if( id_cmd[1] === "back" )
        {
          layerID = 'back-drawing';
        }

// make option to clear all including css
        // console.log("layer id", layerID);

        var removeNodeIDs = [];
        var nodes = document.getElementById(layerID).childNodes;
        for(var i=0; i<nodes.length; i++) {
          if( typeof objectStack[ nodes[i].id ] != "undefined" ) {
            // console.log("remove id", nodes[i].id);
            removeNodeIDs.push( nodes[i].id );
          }
        }

        for( var r_id of removeNodeIDs ) {
          // console.log(r_id);
          objectStack[ r_id ].remove();
          delete objectStack[ r_id ];
        }

        continue;

      }

    }
    else if( id == "importDefs" ) // pulls object from a separate svg file
    {
      if( argc == 1 ) // args: file id
      { // return node to add to objectStack

        if( typeof fileObj[ objValue ] != "undefined")
        {
          var importedDefsNode = d3.select( fileObj[ objValue ] ).select( "defs" ).node();

          for(const child of importedDefsNode.children)
          {
              const defId = child.id;
              // clone each child and add to defs
              if( typeof defStack[defId] != "undefined" )
                defStack[defId].remove();

              defStack[defId] = maindef.append( () =>{
                return child.cloneNode(1);
              }).attr('id', defId);
          }

        }
      }

      continue;
    }
    else if( id == "multitouch" && argc == 1 )
    {
      ongoingTouches = [];

    //  log(objValue);
      if( objValue > 0 )
        enableMultitouch();
      else
        disableMultitouch();

      continue;

    }
    else if( id == "nodes" )
    {
      processJSON_HTML(objValue);
      continue;
    }
    else if( id_cmd.length < 2 )
    {
    //  _port.senderror("wrong address format, should be: /unique_id/drawing_command\n\t got: "+id_cmd+" size "+id_cmd.length+"\n");
      console.log("wrong address format, should be: /unique_id/drawing_command\n\t got: "+id_cmd+" size "+id_cmd.length+"\n" );
      continue;
    }

    var cmd = id_cmd[1]; // position, remove, or if draw, look for drawType

    var drawingTarget = drawing;
    var cmdtype = "none";

    if( cmd == "overlay" && id_cmd.length == 4 )
    {
      drawingTarget = overlay;
      cmd = id_cmd[2];
      cmdtype = id_cmd[3];
    }
    else if( cmd == "back" && id_cmd.length == 4 )
    {
      drawingTarget = back;
      cmd = id_cmd[2];
      cmdtype = id_cmd[3];
    }
    else if( id_cmd.length == 3 )
    {
      cmdtype = id_cmd[2];
    }

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

    switch (cmd)
    {
      case "draw":
      case "svg":

        if( typeof objectStack[id] != "undefined" )
          objectStack[id].remove();

        objectStack[id] = drawingTarget.append( () =>{
          return svgObj(cmdtype, argc, objValue);
        }).attr('id', id);

      break;

      case "def":
        //defs need to be stored separately from the drawing nodes so we can keep the library of shapes available
        if( typeof defStack[id] != "undefined" )
          defStack[id].remove();

        defStack[id] = maindef.append( () =>{
          return svgObj(cmdtype, argc, objValue);
        }).attr('id', id);

      break;

      case "keyframes" :
        setCSSRule("@keyframes "+ id, objValue);
      break;

      case "tween/to":
        if( argc == 3 ) // obj to animate, duration, object of parameters to move to
        {
          if( typeof animStack[id] != "undefined" )
          {

              if( animStack[id].target[0].id === objValue[0] )
              {

                if( fastObjEqual( animStack[id].vars, { css: objValue[2] }) ||
                    fastObjEqual( animStack[id].vars, { attr: objValue[2] })  )
                {

                  if( animStack[id].duration() != objValue[1] )
                    animStack[id].duration( objValue[1] );

                  animStack[id].restart();
                  break;

                }
                else
                {
                  animStack[id].pause(0);
                  animStack[id].kill();
                }

              }

          }

          animStack[id] = TweenMax.to( "#"+objValue[0], objValue[1], booleanize(objValue[2]) );

        }

      break;

      case "tween/kill":
        if( typeof animStack[id] != "undefined" )
          animStack[id].kill();

        delete animStack[id];

      break;

      case "tween/timeline":

        if( argc === "obj" ) // bundle containing /tweens bundle array, and an optional /params bundle for init
        {
          var newTimeline;
          var timelineparams = ( typeof objValue.init != "undefined" ) ? booleanize( objValue.init ) : { paused: true };

          if( typeof animStack[id] != "undefined" )
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


          for( tween of objValue.tweens )
          {
            newTimeline.add( TweenMax.to( "#"+tween.target, tween.time, tween.vars ) );
          }

          animStack[id] = newTimeline;

      //    console.log("new timeline", animStack[id], timelineparams);
        }

      break;
      case "tween/cmd":
        if( argc >= 1 && typeof animStack[id] != "undefined" )
        {
          switch(objValue)
          {

            case "start":
            {

              var end = timetag + ( animStack[id].totalDuration() * 1000. );

//              console.log("start end", end, ts.now() < end);

              if( ts.now() < end )
              {
                var latestart = (ts.now() - timetag) * 0.001;

//                console.log("start offset", latestart);

                if( latestart > 0 ){
                  animStack[id].play(latestart);
                } else {
                  TweenMax.delayedCall(latestart, ()=>{
                    animStack[id].restart();
                  }, this );
                }

              }

            }
            break;

            case "play":

              var currentposition = animStack[id].totalTime();

              var end = timetag + (( animStack[id].totalDuration() - currentposition) * 1000. );

              if( ts.now() < end )
              {
                var latestart = (ts.now() - timetag) * 0.001;

//                console.log("start offset", latestart);

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

      break;
      case "timedanim" :

/*
        keyframe name,
        duration (used to calculate the current point),
        nrepeats
*/
        if( argc >= 2 )
        {
          if( typeof objectStack[id] != 'undefined' &&
              objectStack[id].node().nodeName === 'text' )
          {
            var gID = id+"_g";

            var parentNode = objectStack[id].select( () => { return this.parentNode; });
            if( parentNode.node() === null )
            {
              console.log("parent node", parentNode.node());

              objectStack[gID] = drawingTarget.append("g")
                .attr("id", gID);
              objectStack[gID].append( ()=>{ return objectStack[id].node(); } );

            }
            else
            {
              // ?
            }

            id = gID;
          }

          console.log(id);
          var nrepeats = ( argc == 3 ) ? objValue[2] : 1;

          var end = timetag + (objValue[1] * 1000.);

          if( ts.now() < end )
          {
            // this is a animation that should be playing,
            // if there's already one there, clear it, and schedule a reprocessing of this command

            if( typeof objectStack[id] != 'undefined' &&
                typeof objectStyle[id] != 'undefined' &&
                typeof objectStyle[id]["animation"] != 'undefined' &&
                objectStyle[id]["animation"] != 'null' )
            {
                objectStyle[id]["animation"] = 'null';
                objectStyle[id]["-webkit-animation"] = 'null';

                objectStack[id].attr("style", getStyleString(objectStyle[id]) );

// better to use a promise here probably
                var delobj = {};
                delobj[key] = obj[key];
                delayProcess(100, delobj);
                break; // continue iterating the commands, this one will be delayed until after the others are finished
            }


            if( typeof objectStyle[id] == "undefined" )
              objectStyle[id] = {};

            var startdelta = (timetag - ts.now()) * 0.001;

            // console.log("delay", objValue[0], timetag, ts.now(), startdelta, end);


            objectStyle[id]["animation"] = `${objValue[0]} ${objValue[1]}s linear`;
            objectStyle[id]["animation-delay"] = startdelta +'s';
            objectStyle[id]["animation-fill-mode"] = 'forwards';
            objectStyle[id]["animation-iteration-count"] = nrepeats;

            objectStyle[id]["-webkit-animation"] = `${objValue[0]} ${objValue[1]}s linear`;
            objectStyle[id]["-webkit-animation-delay"] = startdelta +'s';
            objectStyle[id]["-webkit-animation-fill-mode"] = 'backwards';
            objectStyle[id]["-webkit-animation-iteration-count"] = nrepeats;

            if( typeof objectStack[id] != 'undefined' )
            {
              //console.log('animation-iteration-count', objectStyle[id]["animation-iteration-count"]);
              if( objectStyle[id]["animation-iteration-count"] != "infinite" )
              {
                objectStack[id].on("animationend", function(){
                  objectStyle[id]["animation"] = 'null';
                  objectStyle[id]["-webkit-animation"] = 'null';
                  objectStack[id].attr("style", getStyleString(objectStyle[id]) );                objectStack[id].on("animationend", null);
                });
              }
            }

          }


        }
        break;

      case "style" :
/*
        const selector = '#'+id;
        var style = getCSSRuleStyle(selector);

        if( typeof style == 'undefined' )
        {
          css.insertRule(selector + '{' + cmdtype + ' : ' + objValue + '}', css.cssRules.length);
        }

        console.log(css);
        return ;
*/
//        console.log("objValue " + cmdtype + " " + objValue);
        if( typeof objectStyle[id] == "undefined" )
          objectStyle[id] = {};

        if( cmdtype == "transition")
        {
          objectStyle[id]["transition"] = objValue;
          objectStyle[id]["-webkit-transition"] = objValue;
          objectStyle[id]["-mos-transition"] = objValue;

        }
        else
          objectStyle[id][cmdtype] = objValue;

        /*
        if( typeof objectStack[id] != "undefined" )
        {
          objectStack[id].attr("style", getStyleString(objectStyle[id]) );
        }
  */
      break;
      case "attr" :

        if( typeof objectStack[id] != "undefined" )
        {
          if( cmdtype === "onclick")
          {
            cmdtype = _click;
          }

          objectStack[id].attr(cmdtype, objValue);
        }

      break;

      case "transform" :
        if( typeof objectTransform[id] == "undefined" )
          objectTransform[id] = {};

        if( cmdtype == "translate" && argc == 2 )
          objectTransform[id][cmdtype] = [objValue[0]+"px", objValue[1]+"px"];
        else
          objectTransform[id][cmdtype] = objValue;


          // NOTE: SVG rotates from the top left corner
          //  if we want to rotate from the center we'll need the object bounds, and use rotate(deg, cx, cy)


        /*
        if( cmdtype == transform && typeof objectStack[id] != "undefined" && objectStack[id].objecttype == "img" )
        {
          objectStack[id].attr("transform", getTransformString(objectTransform[id]) );
        }
        */

      break;

      case "file/load":
        if( argc == 1 ) // file .. selector is id!
        {
          // for now just assuming this is an svg file...

          var deferredObj = obj.slice(++i);

          /*while( ++i < obj.length )
          {
            deferredObj.push( obj[i] );
          }
*/
          d3.svg( objValue )
            .then( ( svg ) => {
              fileObj[id] = svg;
  //             console.log( "then", id, fileObj[id], deferredObj );

              // note: this is blocking for the rest of the processing for the cmd object, since you might be trying to refer to this file, to avoid the blocking if necessary you can just send the file/load separately, and then whatever else if it's not dependent on the file being loaded.
              processCmdObj(deferredObj);

            });

          return;
        }
      break; // never reached

      case "pdf/load":
        if( argc == 1 ) // url
        {

          if( typeof objectStack[id] != "undefined" && !(objectStack[id].context == "main" ) )
            objectStack[id].remove();

          objectStack[id] = main.append("canvas")
            .attr("id", id)
            .attr("class", "pdfcanvas")
            .attr("context", "canvas");

          objectStack[id].pdf = new PDFdoc(objectStack[id]);

          objectStack[id].pdf.setPDFref(objValue);

        }
      break;
      case "pdf/page":

        if( argc == 1 ) // page num
        {
//          console.log(objectStack[id]);
          objectStack[id].pdf.queueRenderPage(objValue);
        }
      break;

      case "remove":
        if( objectStack[id] != main && typeof objectStack[id] != "undefined" )
        {
          objectStack[id].remove();
          delete objectStack[id];
        }

//        if( objectStack[key].context == "canvas" )
//          pdfcontext.clearRect(0, 0, canvas.width, canvas.height);

      break;

      case "sample/load":
        if( argc > 0 ) // audio file
        {
            if( typeof audioObj[id] == 'undefined' )
            {

              audioObj[id] = new Tone.Player({
                  "url" : objValue,
                  "loop" : ( argc > 1 ) ? argc[1] : false
                }).toMaster();

            }
            else
            {
              audioObj[id].load( objValue );
            }

        }
      break;
      case "sample/play":
        if( argc == 1 && typeof audioObj[id] != 'undefined') // play/stop
        {
          audioObj[id].restart();
          port.sendObj({ "/msg" : "trying to start "+id });
        }
      break;

      case "form/input":

        if( argc > 0 ) // list of text inputs fields
        {
          if( typeof objectStack[id] != "undefined" )
            objectStack[id].remove();

          var new_form = forms.append("input")
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
          if( typeof objectStack[id] != "undefined" )
            objectStack[id].remove();

          var new_form = forms.append("form")
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
        console.log("received unknown command: "+cmd+ "\n" );
      break;
    }

    if( typeof objectStack[id] != "undefined" )
    {

      var style = ( typeof objectStyle[id] != "undefined" ) ? objectStyle[id] : {};

      if( typeof objectTransform[id] != "undefined" )
      {
          style['transform'] = getTransformString(objectTransform[id]);
          style['-webkit-transform'] = getTransformString(objectTransform[id]);
      }

      if( Object.keys(style).length > 0 ) {
        objectStack[id].attr("style", getStyleString(style) );
//        console.log("setting style", style );
      }


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
  var el = document.getElementById(name);
  el.ontouchstart = handleStart;
  el.ontouchmove =  handleMove;
  el.ontouchend =  handleEnd;
  el.ontouchcancel =  handleEnd;
  //el.touchleave =  handleEnd;
//  log("initialized multitouch");
}

function disableMultitouch() {
  document.body.removeEventListener("touchstart", handleStart);
  document.body.removeEventListener("touchend", handleEnd);
  document.body.removeEventListener("touchcancel", handleCancel);
  document.body.removeEventListener("touchleave", handleEnd);
  document.body.removeEventListener("touchmove", handleMove);
//  log("disabled multitouch");

}

function handleStart(evt) {
  evt.preventDefault();
  var touches = evt.changedTouches;
  var bndl = {};
  for (var i = 0; i < touches.length; i++) {
    ongoingTouches.push(copyTouch(touches[i]));
    var idx = ongoingTouchIndexById(touches[i].identifier);
    bndl[oscprefix+"/"+evt.target.id+"/finger/"+idx+"/start/xy"] = [touches[i].clientX, touches[i].clientY];
  }
  port.sendObj(bndl);
}

function handleMove(evt) {
  evt.preventDefault();
  var touches = evt.changedTouches;
  var bndl = {};
  for (var i = 0; i < touches.length; i++) {
    var idx = ongoingTouchIndexById(touches[i].identifier);
    ongoingTouches.splice(idx, 1, copyTouch(touches[i])); // swap in the new touch record
    bndl[oscprefix+"/"+evt.target.id+"/finger/"+idx+"/move/xy"] = [touches[i].clientX, touches[i].clientY];
  }
  port.sendObj(bndl);

}

function handleEnd(evt) {
  evt.preventDefault();
  var touches = evt.changedTouches;
  var bndl = {};
  for (var i = 0; i < touches.length; i++) {
    var idx = ongoingTouchIndexById(touches[i].identifier);
    ongoingTouches.splice(i, 1); // remove it; we're done
    bndl[oscprefix+"/"+evt.target.id+"/finger/"+idx+"/end/xy"] = [touches[i].clientX, touches[i].clientY];
  }
  port.sendObj(bndl);
}

function handleCancel(evt) {
  evt.preventDefault();
  var touches = evt.changedTouches;
  var bndl = emptybundle();
  for (var i = 0; i < touches.length; i++) {
    var idx = ongoingTouchIndexById(touches[i].identifier);
    ongoingTouches.splice(i, 1); // remove it; we're done
    bndl[oscprefix+"/"+evt.target.id+"/finger/"+idx+"/cancel/xy"] = [touches[i].clientX, touches[i].clientY];
  }
  port.sendObj(bndl);
}

function copyTouch(touch) {
  return { identifier: touch.identifier, clientX: touch.clientX, clientY: touch.clientY };
}

function ongoingTouchIndexById(idToFind) {
  for (var i = 0; i < ongoingTouches.length; i++) {
    var id = ongoingTouches[i].identifier;

    if (id == idToFind) {
      return i;
    }
  }
  return -1; // not found
}

function findPos (obj) {
    var curleft = 0,
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
//    log("opened port");
    var msg = {};
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
      log("no open port!");
    }

  }

  this.senderror = function (err) {
    var erroraddr = oscprefix+"/error";
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
var hidden, visibilityChange;
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
  log (document[hidden] + " " + (typeof port.readyState) );
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


var hasstate = false;

window.onload = function() {
//  log("loaded");

  port = new _SocketPort_();

  ts = timesync.create({
      server:   port,
      interval: 5000,
      delay: 250
  });

  ts.on('sync', function (state) {

    if( state === 'end' )
    {
      log('sync offset: ' + ts.offset + ' ms');

      if( !hasstate )
      {
//        var loading = document.getElementById("loading");
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
        log('<b>sync in progress please wait</b>' );
      } else {
        log('sync in progress' );
      }

    }

  });

  ts.on('change', function (offset) {
    port.sendObj({ syncClient: ts.offset });
  });


  ts.send = function (socket, data, timeout) {
    return new Promise(function (resolve, reject) {
      var timeoutFn = setTimeout(reject, timeout);
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



  objectStack['main'] = main;
  objectStack['overlay'] = d3.select("#overlay");




  //for( var rule of css.cssRules )
//    console.log(getCSSRuleStyle("#main"));

//  console.log(css.cssRules);

//  objectStack['main'].context = 'main';

/*
  objectStack['canvas'] = document.getElementById('pdfcanvas');
  objectStack['canvas'].context = 'canvas';
*/

  StartAudioContext(Tone.context).then( function() {
  	log("Started Audio");
    initMultitouch("drawing");
    initMultitouch("main");
    initMultitouch("touchdiv");
  });


  if (typeof document.addEventListener === "undefined" || hidden === undefined) {
    console.log("Page Visibility API not found");
  } else {
    document.addEventListener(visibilityChange, handleVisibilityChange, false);
  }

}


window.onbeforeunload = function() {
    // port.onclose = function () {}; // disable onclose handler first
    if( port.readyState === port.OPEN  )
    {
      port.close();
    }

};
