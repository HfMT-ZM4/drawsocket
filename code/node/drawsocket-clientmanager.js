
'use strict';

const WebSocket = require('ws');

// client storage
class ClientManager {
    constructor() {

        //this.addPrefix = this.addPrefix.bind(this);

        this.ids = {}; // object of arrays storing subscribed unique ids, labeled in the object by client URL 
        this.sockets = new Map(); // object lookup for sockets stored by unique id

        this.sendToClientsURL = this.sendToClientsURL.bind(this);
        this.sendToALL = this.sendToALL.bind(this);
        this.saveClient = this.saveClient.bind(this);
        this.removeClient = this.removeClient.bind(this);

    }


  // dont' need to add prefixes if we just go ahead and cache all prefixes we receive
  /*
    addPrefix(prefix) {
      if( !this.prefixList.includes(prefix) )
      {
        this.prefixList.push(prefix);
      }
    }
*/
    // new version: store by prefix
    // add unique id to a subscription list
    saveClient(client, uniqueid, prefix) 
    {

      if( !this.ids.hasOwnProperty(prefix) )
      {
        this.ids[prefix] = new Set();
      }

      this.ids[prefix].add(uniqueid);
      this.sockets.set(uniqueid, client);

/*
      for( const s of this.sockets.keys() )
        Max.post("set client ", s );
*/

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

    //  Max.post("removed websocket", uniqueid, "but keeping prefix", this.prefixList );
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