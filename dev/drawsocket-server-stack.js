/*jslint es6:true*/

// OK WE ARE REALLY GOING TO DO THE FLAT ARRAY THING!
// make a odot helper to deal with syntax in Max


// settings
const http_port = 3002;

// load libaries
const express = require('express');
const http = require('http');
const bodyParser = require('body-parser');

const WebSocket = require('ws');
const url = require('url');
const app = express();
app.use( bodyParser.urlencoded({ extended: true }) );

let mixin = require('mixin-deep');

const Max = require('max-api');
Max.post("started up ");

const userpath = process.argv.slice(2);
let htmltemplate = '/lib/drawsocket-page.html';
let infopage = "/lib/drawsocket-info.html";

/**
 * main cache object
 * keeping as structured data since it's faster to lookup into, but actaully looking up ids for deleting sucks this way
 * lookup up by id would be more convient but the benefit of this format is that it's the same format as what gets sent in from max
 * and what gets parsed by the client
 * sorted now in terms of delete search by id
 * 
 * BUT I forgot that the order is important for keeping the layer order! so, on update, the nodes must be pushed to the end of the layer arrays
 * or just make one big array... actually that's not true, the display order is set by the NEW tag..
 * 
 * another thought: why are we not using SQL?
 * 
 * currently we're only scanning based on type, but that means that different types could have the same id! mmm
 * 
 * 
 * also: we could *dynamically create* the actual svg layers as options... so then the names would be up to the user
 * then you could create the webpage even more by OSC
 * ... but the order is still important
 * 
 * storing things in a hierarchy sucks
 * 
 */
function ClientCache(){
  this.svg = {
    main: [],
    defs: [],
    back: [],
    overlay: []
  }; 
  this.html = [];
  this.tween = [];
  this.css = [];
  this.sound = [];
}

/**
 * 
 * @param {array} objarr -- object array to iterate to find the target key/value
 * @param {string} id -- id to remove 
 */
function remove_nodeByID (objarr, id) {
  if( !Array.isArray(objarr) )
  {
    for( let k in objarr) {
      if( objarr[k].id === id ) //o.hasOwnProperty('id')
      {
        // this is a odd case, maybe shouldn't be possible, since the cache is all arrays... 
        delete objarr[k];
        return true;
      }
      
      if( typeof objarr[k] === "object" )
      {
        if( remove_nodeByID(objarr[k], id) )
          return true;
      }
    }
    
    return false;
  }
  else
  {
    for( let i = 0; i < objarr.length; i++) {
      if( objarr[i].id === id ) //o.hasOwnProperty('id')
      {
        objarr.splice(i,1);
        return true;
      }
      
      if( typeof objarr[k] === "object" )
      {
        if( remove_SVG_nodeByID(objarr[k], id) )
          return true;
      }
    }
    
    return false;
  }
  
  /*
  if( Array.isArray(object) )
  {
    object = object.filter( o => !keys.every( k => target[k] === o[k] ) && purgeAll(o, target) );
  }
  return object
  */
}


/**
 * not tested yet, but is a faster filter function to remove all array nodes that fail the test expression
 */
Array.prototype._removeIf = function(expression) {
  let res = [];
   for(let idx=0; idx < this.length; idx++)
   {
     let currentItem = this[idx];
       if( !expression(currentItem) )
       {
           res.push(currentItem);
       }
       else if( Array.isArray(this[idx]) )
       {
          res.push( this[idx]._removeFirstIf(expression) );
       }
      
   }
   return res;
};


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



/**
 * adds node to end of array, unioning with preexisting node if found by prop match (e.g. id === foo )
 * 
 * @param {array of objects} current - current array of objects
 * @param {array of objects} add - new array of objects to add
 * @param {key} prop - prop to look for
 * @param {time} timetag - timetag to add to newly added or updated nodes
 */

function addUpdateByProp(current, add, prop, timetag)
{
    let ret = [];
    let addToEnd = add;

    // could be faster with large sets to put current in the inner array, and use splice() when found
    // otherwise we have to itereate the whole array everytime, that said some tests 
    // but, we can optimize later if it becomes noticable
    for( let i = 0; i < current.length; i++ )
    {
        let found = false;
        for( let j = 0; j < add.length; j++ )
        {
            if( current[i][prop] === add[j][prop] )
            {
                found = true;
                // if it's a new object, overwrite the old attrs by marking it as found and skipping it below
                if( !add[j].hasOwnProperty('new') ) 
                {
                  addToEnd[j] = mixin(current[i], add[j]);
                }
                break;
            }
        }

        if(!found)
            ret.push(current[i]);
        
    }

//    ret.push(... addToEnd ); can't do it this way because we need to add the timetags...

    for( let j = 0; j < addToEnd.length; j++ )
    {
      addToEnd[j].timetag = timetag;
      ret.push( addToEnd[j] );
    }

    Max.post(ret);
    return ret;

}




// storage for current clientOSC bundles
// new state format:
/*

setup:

this.state = {};
this.state[prefix] = [];

input from sender function:
{
  timetag: timestamp,
  key: svg,
  value: object array
}

intput to cache:

first, figure out what the id is




this.state[prefix][id] = mergeDeep( this.state[prefix][id], {
  /id : "id",
  /attr : attr,
  /params : {
    /subbundle-args : args
  }
});

*/
class OSCstate
{
  constructor() {

      this.state = {}; // collection of ClientCaches stored by prefix

      this.update = this.update.bind(this);
      this.remove = this.remove.bind(this);
  }

  // note: we should probably merge wildcard prefixes in the cache rather than have a separate prefix for wildcard.
  update(prefix, objArray) 
  {
    //Max.post( objArray);

    if( !this.state.hasOwnProperty(prefix) )
    {
      this.state[prefix] = new ClientCache();
    }

    let cache = this.state[prefix];

    for( let obj of objArray )
    {
      let key = obj.key;
      let val = obj.val;
    //  Max.post( key);

      switch( key )
      {
        case "clear":
        {
          let _cleararr = !Array.isArray(val) ?  [ val ] : val;

          if( _cleararr[0] == 1 || _cleararr[0] == "*" || _cleararr[0] == "all" ) // clear : 1
          {
            cache = new CacheStorage();
          }
          else
          {
            for( let _clear of _cleararr )
            {
              /* maybe this should be "remove" and then called from each type:
              like 
                /svg : { 
                  /remove : "foo", 
                  or 
                  /remove : ".note"
                }

                and then "clear" is just for layers
              */
              switch( _clear.charAt(0) )
              {
                case "#": // only svg nodes? ... no actually this might be CSS also, ah but
                  const _clearID = _clear.slice(1);
                  remove_nodeByID(cache.svg, _clearID );
                  //let t = remove_SVG_nodeByID(cache.svg, _clearID );
                // Max.post(t, cache.svg);
                  
                break;
                case ".":
                  const _clearClass = _clear.slice(1);

                  cache.svg._removeFirstIf( (item) => {
                    return item.id === _clearID;
                  });

                  let elements = document.getElementsByClassName(_clearClass);
                  while(elements.length > 0){
                    const _id = elements[0].id;
                    elements[0].parentNode.removeChild(elements[0]);
                    delete objectStack[ _id ];
                  }
                break;

                default:
                
                  
                  if( cache.svg.hasOwnProperty(_clear) )
                  {
                    Max.post("clearing layer cache", _clear);
                    cache.svg[_clear] = [];
                  }
                  else
                  {
                    Max.post("finding and clearning id", _clear);
                    remove_nodeByID(cache, _clear );
                  }
                    


  // if it doesn't match a layer, then it might be an animation, or css etc.!
  // have to check for that also, or have separate deletes for each type? 


                break;
              }

            }
          
          }
        }
     
        break;

        case "svg" :
        {
          if( !Array.isArray(val) ) 
          {

              let has_context_arrays = false;

              if( val.hasOwnProperty('defs') )
              {   
                  let _objarr = (val.defs.length === undefined) ?  [ val.defs ] : val.defs;
                  cache.svg.main = mergeByProp(cache.svg.defs, _objarr, 'id', obj.timetag );
                  has_context_arrays = true;
              }
  
              if( val.hasOwnProperty('main') )
              {   
                  let _objarr = (val.main.length === undefined) ?  [ val.main ] : val.main;
                  cache.svg.main = mergeByProp(cache.svg.main, _objarr, 'id', obj.timetag );
                  has_context_arrays = true;
              }
  
              if( val.hasOwnProperty('back') )
              {
                  let _objarr = (val.back.length === undefined) ?  [ val.back ] : val.back;
                  cache.svg.back = mergeByProp(cache.svg.back, _objarr, 'id', obj.timetag );
                  has_context_arrays = true;
              }
  
              if( val.hasOwnProperty('overlay') )
              {
                  let _objarr = (val.overlay.length === undefined) ?  [ val.overlay ] : val.overlay;
                  cache.svg.overlay = mergeByProp(cache.svg.overlay, _objarr, 'id', obj.timetag );
                  has_context_arrays = true;
              }
  
              if( !has_context_arrays )
              {
                cache.svg.main = mergeByProp(cache.svg.main, [val], 'id', obj.timetag );
              }
          }
          else
          {
            cache.svg.main = mergeByProp(cache.svg.main, val, 'id', obj.timetag );
          }
        }
        break;

        case "css":
        {
          if( val === "clear" )
          {
            cache.css = [];
              return;
          }

          let _objarr = (val.length === undefined) ?  [ val ] : val;            
          cache.css = mergeByProp(cache.css, _objarr, 'selector', obj.timetag );
        }
        break;

        case "tween":
        case "tween/to":
        case "tween/timeline":
        {
          if( val === "clear" )
          {
            cache.tween = [];
              return;
          }

          let _objarr = (val.length === undefined) ?  [ val ] : val;            
          cache.tween = addUpdateByProp(cache.tween, _objarr, 'id', obj.timetag );
        }
        break;

        default:
        break;
      }

      
    }
    
    this.state[prefix] = cache;
   //Max.post(this.state[prefix]);


  }

  get(prefix)
  {
    if( typeof this.state[prefix] == "undefined" )
      return false;
    else
    {
      let out = [];
      let cache = this.state[prefix];
      for(let k in cache )
      {
          out.push({
            key: k,
            val: cache[k],
            timetag: 0
          });
      }
      return out;
    }
      
  }

  remove( prefix ) {
    //Max.post("deleting state");
    delete this.state[prefix];
  }
}

// client storage
class Clients {
    constructor() {
        this.clientList = {};
        this.prefixList = [];
        this.saveClient = this.saveClient.bind(this);
        this.removeClient = this.removeClient.bind(this);
        this.addPrefix = this.addPrefix.bind(this);
    }

    addPrefix(prefix) {
      if( !this.prefixList.includes(prefix) )
      {
        this.prefixList.push(prefix);
      }
    }

    saveClient(client, uniqueid, prefix) {
      this.clientList[uniqueid] = { socket : client, oscprefix : prefix };

      this.addPrefix(prefix);

    }

    removeClient( uniqueid ) {
      if(typeof this.clientList[uniqueid] === "undefined" )
        return;

      let prefix = this.clientList[uniqueid].oscprefix;
      // this.prefixList = this.prefixList.filter( function(item) { return item !==  prefix} );
      delete this.clientList[uniqueid];

    //  Max.post("removed websocket", uniqueid, "but keeping prefix", this.prefixList );
    }
}

const clients = new Clients();

const osc_state = new OSCstate();

// setup UDP listener from Max

// setup http server
// app.use( express.static('public') );

if( userpath.length > 0 ){
  Max.post("adding user html root path "+userpath[0] );
  app.use( express.static(userpath[0] ) );
}

app.use('/scripts', express.static(__dirname + '/node_modules/'));
app.use('/lib', express.static(__dirname + '/lib/') ); // client js and css files
app.use('/fonts', express.static(__dirname + '/lib/fonts/') ); // client js and css files

// new system: use the same page for everything, and allow users to just set the OSC prefix by the URL
app.use('*', (req, res) => {
  if( req.baseUrl == "" )
    res.sendFile( __dirname + infopage );
  else
    res.sendFile( __dirname + htmltemplate );

});


app.get('/', (req, res) => {
  console.log('express connection ' + req + ' ' + res );
});


app.post('/form-post', (request, response) => {
  Max.outlet( request.body );
  return response.send(request.body);
});


const server = http.createServer(app);

// setup sockets
const wss = new WebSocket.Server({
  server : server
});

wss.setMaxListeners(200);

// create OSC websockets from vanilla websockts, and add to clients list
wss.on("connection", function (socket, req) {

  let uniqueid = req.headers['sec-websocket-key'];

  Max.post("A Web Socket connection has been established! " + req.url + " ("+uniqueid+") "+ req.connection.remoteAddress );

  // setup relay back to Max
  socket.on("message", function (msg) {

    try {
      //Max.post(msg);
      const obj = JSON.parse(msg);

      if( Object.keys(obj)[0] === 'timesync' )
      {
        socket.send( JSON.stringify({
          timesync: {
            id: (typeof obj.timesync.id == "undefined") ? null : obj.timesync.id,
            result: Date.now()
          }
        }));

      }
      else if( Object.keys(obj)[0] === 'statereq' )
      {
        //const wildcardState = osc_state.get("/*");
        //const bundleState = osc_state.get(req.url);

// mix here should be based on timetag...maybe hmmm
         const bundleState = osc_state.get(req.url);
//         Max.post('getting state for prefix ' + req.url, bundleState );

    /*
        if( wildcardState != false ){
          socket.send( JSON.stringify(wildcardState) );
        }
*/
        if( bundleState != 0 ){
          socket.send( JSON.stringify(bundleState) );
        }

      }
      else
        Max.outlet( obj );

    } catch(e){

      Max.post("json failed to parse " + e);
    }

  });

  socket.on("close", function (event) {
    Max.post("closed socket : "+ uniqueid+ " @ " +req.url);
    clients.removeClient( uniqueid );
    socket.terminate();
  });

  socket.on("error", function (event) {
    Max.post("error on socket : "+ uniqueid+ " @ " +req.url);
    clients.removeClient( uniqueid );
    Max.post( event );
  });

  clients.saveClient( socket, uniqueid, req.url );

});

Max.addHandler("addprefix", (...args) => {
  for( let p of args ){
    clients.addPrefix(p);
  }
});

Max.addHandler("html_template", (...args) => {
  Max.post("set html template page to "+ args);
  htmltemplate = args;
});

/**
 * main entry point for messages from Max to Client
 * address format:
 *  
 *    /prefix/svg : {
 *      /id : "foo",
 *      /new : "line"
 *    }
 *
 * handler passes object or object array from max, and adds a timetag
 * going out to the client, all bundles are considered "top-level" and have one timetag at the top-level
 * in the cache, every object node has a timetag added from its last update
 * on the client side, timetags inside the object node override the top-level timetag (so that the cache time is respected)
 * 
 * note that all wildcards are handled first and then specific names.
 */

Max.addHandler(Max.MESSAGE_TYPES.DICT, (dict) => {
  // Max.post("parsing :" + Object.keys(dict))
  let broadcast; 
  let target = {}; // obj of values to send to client targets
  const timetag = Date.now();

  // iter and sort by prefix for sending
  for( const key in dict )
  {
    const addr = key[0] != "/" ? "/" + key : key; //annoying that o.dict strips leading / !
    const value = dict[key];

    if(addr.startsWith("/*/") )
    {

      if( typeof broadcast == "undefined" ){
        broadcast = [];
      }

      broadcast.push({
        timetag: timetag,
        key: addr.slice(3), // removing the following slash also
        val: value
      });

    }
    else
    {

      for( const pref of clients.prefixList )
      {
        Max.post("testing "+pref);

        if( addr.startsWith(pref+"/") )
        {
          if( !target.hasOwnProperty(pref) )
            target[pref] = []; // new array of objects to send to client for this prefix

            target[pref].push({
              timetag: timetag,
              key: addr.slice(pref.length+1), // top level address minus prefix for client target (removing the following slash also)
              val: value // this will be the full object array with subbundles etc.
            });

        }
      }

    }
  }

  // queue up send objects to send, and update the server cache database
  let sendObj = {};
  sendObj["*"] = JSON.stringify(broadcast);
  

  for( let t in target )
  {
    sendObj[t] = JSON.stringify( target[t] );
  }

  Max.post("sendObj", sendObj );

  // send message queue to all clients
  for( let id in clients.clientList )
  {
      let socket = clients.clientList[id].socket;
      let prefix = clients.clientList[id].oscprefix;

      if( socket.readyState === WebSocket.OPEN )
      {

        if( typeof sendObj["*"] != "undefined" )
        {
          socket.send( sendObj["*"] );
        }

        if( typeof sendObj[prefix] != "undefined" ){
          // Max.post("sending", sendObj[prefix]);
          socket.send( sendObj[prefix] );
        }


      }
      else if ( socket.readyState > 1 )
      {
          //oscport.close();
          clients.removeClient( id );
      }

  }

  // do async state caching
  if( typeof broadcast != "undefined" )
  {
    for( const pref of clients.prefixList )
      osc_state.update(pref, broadcast);
  }

  for( let t in target )
  {
    osc_state.update( t, target[t] );
  }
  

});

// helper func
let getIPAddresses = function () {
    let os = require("os"),
    interfaces = os.networkInterfaces(),
    ipAddresses = [];

    for (let deviceName in interfaces){
        let addresses = interfaces[deviceName];

        for (let i = 0; i < addresses.length; i++) {
            let addressInfo = addresses[i];

            if (addressInfo.family === "IPv4" && !addressInfo.internal) {
                ipAddresses.push(addressInfo.address);
            }
        }
    }

    return ipAddresses;
};


server.on('uncaughtException', function(err) {
  Max.post("xx"+err);

    if(err.errno === 'EADDRINUSE')
         Max.post('EADDRINUSE');
    else
         Max.post("xx"+err);
});

server.on('error', (e) => {
  Max.post("*** got error");
  if (e.code === 'EADDRINUSE') {
    Max.post('Address in use, retrying...');
    /*
    setTimeout(() => {
      server.close();
      server.listen(PORT, HOST);
    }, 1000);
    */
  }
});

/*
let myErrorHandler = function(err, req, res, next){
    // note, using the typical middleware pattern, we'd call next() here, but
    // since this handler is a "provider", i.e. it terminates the request, we
    // do not.
    Max.post("yo "+err);
};

app.configure(function(){
    app.use(myErrorHandler);
});
*/

process.on('unhandledRejection', (reason, p) => {
  Max.post('Unhandled Rejection at:', p, 'reason:', reason);
  // Application specific logging, throwing an error, or other logic here
});



// start server
server.listen(http_port, () => {
  Max.post('load webpage at', 'http://localhost:' + http_port);
  Max.post('or', 'http://'+getIPAddresses()+':'+http_port);
  Max.outlet({
    "/port/localhost" : 'http://localhost:' + http_port,
    "/port/ip" : 'http://'+getIPAddresses()+':'+http_port
  });
});

