
const { obj2osc, osc2obj } = require('./lib/o')
const dgram = require('dgram');

let udp_server;
let sendToIP = '127.0.0.1';
let sendPort = 7777;


function init(listenPort = 9999, sendPort_ = 7777)
{
    sendPort = sendPort_;

    udp_server = dgram.createSocket('udp4');

    udp_server.on('error', (err) => {
        console.log(`server error:\n${err.stack}`);
        server.close();
    });


    udp_server.on('message', (msg, rinfo) => {  

        let str = msg.toString('utf-8');
        if( str.startsWith('#bundle'))
        {
            receive( osc2obj(msg) );
        }
        else
        {
            sym_util.parseAsync(str).then( obj => {
                receive(obj);
            })
        }

    });

    udp_server.on('listening', () => {
        udp_server.setSendBufferSize(65507);
        const address = udp_server.address();
        console.log(`server listening ${address.address}:${address.port}`);
    });

    udp_server.on('error', (err) => {
        console.error('udp send err', err);
    });

    udp_server.bind(listenPort)


}

function send(msg)
{
    const bndl = obj2osc(msg);
    if( bndl.length > 65507 ){
       // console.error(`udp_server error, buffer too large ${bndl.length}`)
        udp_server.send( obj2osc({
            sendError: `udp_server error, buffer too large ${bndl.length}`
        }), sendPort);
    }
    else
    {
        udp_server.send( bndl, sendPort, (err) => {
            if( err ) console.error(`udp_server ${err} (size ${bndl.length})`);
          });
    }
    
}

let receive = (msg) => {}

/**
 * 
 * @param {Object} msg key/val object from UDP
 */
/*
 function udpRecieve(msg)
 {
     switch(msg.key){
         case 'data':
            
             break;
         case 'lookup':
             
             break;
         case 'drawsocket':
             process.send({
                 key: 'drawsocket',
                 val: msg.val
             })
             break;
         default:
             break;
     }
 }
 */
 module.exports = {
    send,
    init,
    receive_callback: function(cb){ 
        receive = cb;
    }

 }