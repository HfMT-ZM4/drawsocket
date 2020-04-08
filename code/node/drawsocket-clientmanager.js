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

const WebSocket = require('ws');

// client storage
class ClientManager {
    constructor() {
        this.ids = {}; // object of arrays storing subscribed unique ids, labeled in the object by client URL 
        this.sockets = new Map(); // object lookup for sockets stored by unique id

        this.sendToClientsURL = this.sendToClientsURL.bind(this);
        this.sendToALL = this.sendToALL.bind(this);
        this.saveClient = this.saveClient.bind(this);
        this.removeClient = this.removeClient.bind(this);
        this.getURLs = this.getURLs.bind(this);
        this.getPeers = this.getPeers.bind(this);

    }

    getURLs()
    {
      return Object.keys(this.ids);
    }

    getPeers(_requesterURL)
    {
      let keys = Object.keys(this.ids);
      let filtered = [];
      keys.forEach( k => {
        if( k != _requesterURL )
        {          
          filtered.push({
            url: k,
            ids: Array.from(this.ids[k])
          });
        }
      })

      return filtered;
    }

    // new version: store by prefix
    // add unique id to a subscription list
    saveClient(client, uniqueid, prefix) 
    {

//      console.log('saving client', uniqueid, prefix );
      
      if( !this.ids.hasOwnProperty(prefix) )
      {
        this.ids[prefix] = new Set();
      }

      this.ids[prefix].add(uniqueid);
      this.sockets.set(uniqueid, client);


    }

// add url here, and use filter to remove uniqueSocket id from a subscription list
    removeClient( prefix, uniqueid ) 
    {

      /*
      let _ids = this.ids[prefix];
      let i = _ids.indexOf(uniqueid);
      _ids[i] = _ids[_ids.length - 1];
      _ids.pop();
      */
      this.ids[prefix].delete(uniqueid);
      this.sockets.delete(uniqueid);

  //    console.log("removed websocket", uniqueid, "but keeping prefix", Array.from(this.ids[prefix]) );
    }

    sendToClientsURL( _prefix, _jsonstring )
    {

      if( this.ids.hasOwnProperty(_prefix) )
      {

        for( const id of this.ids[_prefix] )
        {
          const sock = this.sockets.get(id);
          if( sock.readyState  === WebSocket.OPEN )
          {
            sock.send( _jsonstring );
          }
          else if ( sock.readyState > 1 )
          {
            console.log("trying to send to client that doesn't exist and I don't know the url to remove!")
           //   clients.removeClient( id ); // url??
          }
        }
      }

    }

    sendToALL( _jsonstring )
    {
      //console.log('send', _jsonstring);
      for( const sock of this.sockets.values() )
      {
        if( sock.readyState  === WebSocket.OPEN )
        {
          sock.send( _jsonstring );
        }
      }

    }

    
    /*
    sendToClientsURL( _prefix, _obj )
    {
      if( this.ids.hasOwnProperty(_prefix) )
      {
        // put this in a promise and then send afterwards?
        let _jsonstring = JSON.stringify(_obj);

        for( const id of this.ids[_prefix] )
        {
          const sock = this.sockets.get(id);
          if( sock.readyState  === WebSocket.OPEN )
          {
            sock.send( _jsonstring );

          }
          else if ( socket.readyState > 1 )
          {
            // Max.post("trying to send to client that doesn't exist and I don't know the url to remove!")
           //   clients.removeClient( id ); // url??
          }
        }
      }

    }

    sendToALL( _obj )
    {
      for( const sock of this.sockets.values() )
      {
        if( sock.readyState  === WebSocket.OPEN )
        {
          sock.send( JSON.stringify(_obj) );
        }
      }

    }
*/
}

module.exports = new ClientManager();