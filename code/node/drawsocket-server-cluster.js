/*jslint es6:true*/
'use strict';

// settings
const userpath = process.argv.slice(2);
const http_port = 3002;
let htmltemplate = '/lib/drawsocket-page.html';
let infopage = "/lib/drawsocket-info.html";

// load libaries
const cluster = require('cluster');
const fs = require('fs');

const express = require('express');
const http = require('http');
const bodyParser = require('body-parser');

const WebSocket = require('ws');
//const url = require('url');
const app = express();
const Max = require('max-api');

if (cluster.isMaster) 
{
    Max.post("started up ");
    Max.post(`pid: ${process.pid}`);

    const clients = require('./drawsocket-clientmanager');

    const cache_proc = cluster.fork();

    cache_proc.on('message', (msg)=> {

        if( msg.url )
        {
            clients.sendToClientsURL(msg.url, msg.val);
        }
        else if( msg.output )
        {
            Max.outlet(  msg.output );
        }
        else
            Max.post( msg );

    });


    app.use(bodyParser.urlencoded({ extended: true }));

    if (userpath.length > 0) {
        app.use(express.static(userpath[0]));
        Max.post("adding user html root path " + userpath[0]);
    }

    app.use('/scripts', express.static(__dirname + '/node_modules/'));
    app.use('/lib', express.static(__dirname + '/lib/')); // client js and css files
    app.use('/fonts', express.static(__dirname + '/lib/fonts/')); // client js and css files

    // new system: use the same page for everything, and allow users to just set the OSC prefix by the URL
    app.use('*', (req, res) => {
        if (req.baseUrl == "")
            res.sendFile(__dirname + infopage);
        else
            res.sendFile(__dirname + htmltemplate);

    });


    app.get('/', (req, res) => {
        console.log('express connection ' + req + ' ' + res);
    });


    app.post('/form-post', (request, response) => {
        Max.outlet(request.body);
        return response.send(request.body);
    });


    const server = http.createServer(app);

    // setup sockets
    const wss = new WebSocket.Server({
        server: server
    });

    wss.setMaxListeners(200);

    // create OSC websockets from vanilla websockts, and add to clients list
    wss.on("connection", function (socket, req) {

        let uniqueid = req.headers['sec-websocket-key'];

//        Max.post("A Web Socket connection has been established! " + req.url + " (" + uniqueid + ") " + req.connection.remoteAddress);

        // setup relay back to Max
        socket.on("message", function (msg) {

            try {

                const obj = JSON.parse(msg);

                let key = Object.keys(obj)[0]; // only single elements
                if (key === 'timesync') {
                    socket.send(JSON.stringify({
                        timesync: {
                            id: (typeof obj.timesync.id == "undefined") ? null : obj.timesync.id,
                            result: Date.now()
                        }
                    }));

                }
                else if (key === 'statereq') 
                {
                    cache_proc.send({
                        key: 'get',
                        url: req.url
                    });
                    /*
                    const bundleState = state_cache.get(req.url);
                    if (bundleState) {
                        socket.send(bundleState);
                    }
                    */
                }
                else if(key === 'svgElement')
                {
                    
                    let _prefix = req.url.slice(1);
                    console.log(userpath[0] + 'downloaded-'+_prefix+'.svg');
                    fs.writeFileSync(userpath[0] + '/downloaded-'+_prefix+'.svg', obj[key], (err) => {
                        if(err) {
                            return console.log(err);
                        }
                    });
                }
                else
                    Max.outlet(obj);

            } catch (e) {

                Max.post("json failed to parse " + e);
            }

        });

        socket.on("close", function (event) {
  
            clients.removeClient(req.url, uniqueid);
            socket.terminate();

            let _msg = {};
            _msg[req.url + '/connected'] = 0;
            Max.outlet(_msg);

//            Max.post("closed socket : " + uniqueid + " @ " + req.url);

        });

        socket.on("error", function (event) {
            clients.removeClient(req.url, uniqueid);
            
            Max.post("error on socket : " + uniqueid + " @ " + req.url);
            Max.post(event);
        });

        clients.saveClient(socket, uniqueid, req.url);

    });
/*
    Max.addHandler("addprefix", (...args) => {
        for (let p of args) {
            clients.addPrefix(p);
        }
    });
*/
    Max.addHandler("html_template", (...args) => {
        htmltemplate = args;
        Max.post("set html template page to " + args);
    });

    Max.addHandler("writecache", (filename, prefix) => {
        Max.post("attempting to save", userpath[0]+filename, prefix);
        cache_proc.send({
            key: 'write',
            url: prefix,
            val: userpath[0]+filename
        });
    });

    Max.addHandler("importcache", (filename, prefix) => {
//        Max.post("attempting to import", userpath[0]+filename, prefix);
        cache_proc.send({
            key: 'read',
            url: prefix,
            val: userpath[0]+filename
        });
    });

    Max.addHandler("ping", (...prefix) => {
        //console.log(prefix, prefix.length, Array.isArray(prefix) );
        for( const _prefix of prefix )
        {
            if( _prefix === "/*" )
            {
                stringifyOBJAsync({
                    ping: 1
                }).then( result => clients.sendToALL(result) );
            }
            else
            {
                stringifyOBJAsync({
                    ping: 1
                }).then( result => clients.sendToClientsURL(_prefix, result) );
            }
        }
    });

    Max.addHandler("statereq", (...prefix) => {
        //console.log(prefix, prefix.length, Array.isArray(prefix) );
        for( const _prefix of prefix )
        {
            if( _prefix === "/*" )
            {
                stringifyOBJAsync({
                    statereq: 1
                }).then( result => clients.sendToALL(result) );
            }
            else
            {
                stringifyOBJAsync({
                    statereq: 1
                }).then( result => clients.sendToClientsURL(_prefix, result) );
            }
        }
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
    * 
    * adding timetag for incoming dict since these are in sync
    * then the cache will add the timetags into the interal objercts since these could have different start times
    * 
    */


    function stringifyOBJAsync(obj_){
        return Promise.resolve().then( ()=> JSON.stringify(obj_) );
    }

    function wrapTimetag(obj_, timetag_)
    {
        if( Array.isArray(obj_) )
        {
            return {
                timetag: timetag_,
                obj_arr: obj_
            };
        }
        else
        {
            obj_.timetag = timetag_;
            return obj_;
        }
        
    }

    Max.addHandler(Max.MESSAGE_TYPES.DICT, (dict) => {

        const timetag_ = Date.now();

        for (const _prefix in dict) 
        {
            const addr = _prefix[0] != "/" ? "/" + _prefix : _prefix; //annoying that o.dict strips leading / !

            if (addr === "/*") {
                let obj_ = dict[_prefix];

                if( typeof obj_ !== 'object' )
                {
                    Max.post(`syntax error, value must be an object. Received  message ${obj_}`);
                    continue;    
                }

                stringifyOBJAsync( wrapTimetag(obj_, timetag_) )
                    .then( result => clients.sendToALL(result) );
                
                cache_proc.send({
                    key: 'set',
                    url: addr,
                    val: obj_,
                    timetag: timetag_
                });

            }
            else 
            {

                let obj_ = dict[_prefix];

                stringifyOBJAsync( wrapTimetag(obj_, timetag_) )
                    .then( result => clients.sendToClientsURL( addr, result ) );
                
                cache_proc.send({
                    key: 'set',
                    url: addr,
                    val: obj_,
                    timetag: timetag_
                });
            }

        }

    });

    // helper func
    let getIPAddresses = function () {
        let os = require("os"),
            interfaces = os.networkInterfaces(),
            ipAddresses = [];

        for (let deviceName in interfaces) {
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


    server.on('uncaughtException', function (err) {
        Max.post("xx" + err);

        if (err.errno === 'EADDRINUSE')
            Max.post('EADDRINUSE');
        else
            Max.post("xx" + err);
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
        Max.post('or', 'http://' + getIPAddresses() + ':' + http_port);
        Max.outlet({
            "/port/localhost": 'http://localhost:' + http_port,
            "/port/ip": 'http://' + getIPAddresses() + ':' + http_port
        });
    });


}
else if (cluster.isWorker) 
{
    const state_cache = require('./drawsocket-cache');
    process.on("message", (_msg) => {
        
        switch(_msg.key)
        {
            case 'get':
                const _state = state_cache.get(_msg.url);
                if( _state )
                {
                    process.send({
                        url: _msg.url,
                        val: _state
                    });
                }
                else
                {
                    /*
                    process.send({
                        msg: "no state for url?", 
                        keys: Array.from( state_cache.state.keys() )
                    });
                    */
                }
            break;
            case 'set':
                state_cache.update(_msg.url, _msg.val, _msg.timetag);
            break;
            case "write":
            {
                try {
                    let err = state_cache.writeToFile(_msg.val, _msg.url);
                    if( err )
                        console.log("err", err);

                } catch (error) {
                    console.log("uncaught error", error);
                }
                
            }
            break;
            case "read":
            {
                try {
                    let err = state_cache.loadCache(_msg.val, _msg.url, process);
                    if( err )
                        console.log("err", err);
                    else
                    {
                        // trigger update somehow
                    }
                } catch (error) {
                    console.log("uncaught error", error);
                }
                
            }
            break;
            default:
            break;    
        }

    });

}
