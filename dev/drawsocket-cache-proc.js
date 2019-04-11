const os = require('os');

const express = require('express');
const http = require('http');
const bodyParser = require('body-parser');

const WebSocket = require('ws');
const url = require('url');
const app = express();
//const Max = require('max-api');


app.use( bodyParser.urlencoded({ extended: true }) );
const server = http.createServer(app);

const socket = new WebSocket(`ws://localhost:3002/cache`);

socket.on('message', (msg) => {
    console.log('received msg', msg)
    try 
    {
        console.time('t1');
        const obj = JSON.parse(msg);
        console.timeEnd('t1');
        console.log(obj);
    }
    catch(e)
    { 
        console.log('err', e); 
    }
    
});
