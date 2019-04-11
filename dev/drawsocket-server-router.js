// settings
const userpath = process.argv.slice(2);
const http_port = 3002;
let htmltemplate = '/lib/drawsocket-page.html';
let infopage = "/lib/drawsocket-info.html";
const state_cache = require('./drawsocket-cache.js');
const clients = require('./drawsocket-clientmanager.js');


// load libaries
const cluster = require('cluster');
const os = require('os');

const express = require('express');
const http = require('http');
const bodyParser = require('body-parser');

const WebSocket = require('ws');
const url = require('url');
const app = express();
const Max = require('max-api');

app.use( bodyParser.urlencoded({ extended: true }) );
Max.post("started up ");

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
        const bundleState = state_cache.get(req.url);
        if( bundleState ){
            socket.send( bundleState );
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
    let _msg = {};
    _msg[req.url+'/connected'] = 0;
    Max.outlet(_msg);
    
    clients.removeClient( req.url, uniqueid );
    socket.terminate();
    });

    socket.on("error", function (event) {
    Max.post("error on socket : "+ uniqueid+ " @ " +req.url);
    clients.removeClient( req.url, uniqueid );
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

Max.addHandler("writecache", (filename) => {
    state_cache.writeToFile(filename);
});

/**
 * main entry point for messages from Max to Client
 * new address format:
 *  
 *    
 * {
     /prefix : [{
         key : unique key type,
        val: [ {} {}, array of values with optional timetag, unioned by id ]
        } , {
        key : unique key type,
        val: [ {} {}, array of values with timetag, unioned by id ]
    }]
    }
* 
* note that all wildcards are handled first and then specific names.
*/

Max.addHandler(Max.MESSAGE_TYPES.DICT, (dict) => {
    
    for( const _prefix in dict )
    {
    const addr = _prefix[0] != "/" ? "/" + _prefix : _prefix; //annoying that o.dict strips leading / !

    if( addr === "/*")
    {
        const obj_ = dict[_prefix];
        clients.sendToALL( obj_ );
            
        // make this ASYNC!
        state_cache.update( "/*", obj_ );
    }
    else
    {

        const obj_ = dict[_prefix];

        // send and cache aync store in cache internally
        clients.sendToClientsURL( _prefix, obj_ );

        // make this ASYNC!
        state_cache.update( _prefix, obj_ );
    }

    }

});

// helper func
let getIPAddresses = function () {
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

// this doesn't work...
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



/*
server.on('listening', ()=>{
    Max.post('or', 'http://'+getIPAddresses()+':'+server.address().port);
});

server.listen();
*/


// start server
server.listen(http_port, () => {
    Max.post('load webpage at', 'http://localhost:' + http_port);
    Max.post('or', 'http://'+getIPAddresses()+':'+http_port);
    Max.outlet({
    "/port/localhost" : 'http://localhost:' + http_port,
    "/port/ip" : 'http://'+getIPAddresses()+':'+http_port
    });
});
