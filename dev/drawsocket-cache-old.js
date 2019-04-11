
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

const mixin = require('mixin-deep');
const Max = require('max-api');
const fs = require('fs');

function ClientCache() 
{
  return [{
    key: 'file',
    val: []
  },{
    key: 'svg',
    val: []
  },{
    key: 'html',
    val: []
  },{
    key: 'tween',
    val: []
  }] 
}

/**
 * 
 * @param {array} objarr -- object array to iterate to find the target key/value
 * @param {string} id -- id to remove 
 */
function remove_nodeByID (objarr, id) {
  if( !Array.isArray(objarr) )
  {
    for( let k in objarr) 
    {
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
    for( let i = 0; i < objarr.length; i++) 
    {
      if( objarr[i].id === id ) //o.hasOwnProperty('id')
      {
        objarr.splice(i,1);
        return true;
      }
      
      if( typeof objarr[i] === "object" )
      {
        if( remove_nodeByID(objarr[i], id) )
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

//    Max.post(ret);
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

function writeJSON(filename, json)
{
  fs.writeFile(filename, JSON.stringify(json), (err)=>{
    if( err )
    {
      return Max.post("could not save file", err);
    }
  });
}


class StateCache
{
  constructor() {

      this.state = {};// new ClientCache(); 
      this.update = this.update.bind(this);
      this.remove = this.remove.bind(this);
      this.writeToFile = this.writeToFile.bind(this);
      this.getJSONstr = this.getJSONstr.bind(this);
  }

  writeToFile(filename)
  {
    writeJSON(filename, this.state);
  }





  // note: we should probably merge wildcard prefixes in the cache rather than have a separate prefix for wildcard.
  // wrong! we should havea  separate prefix for wildcards since new URLs could show up, and if the wildcard is separate we can update them right away
  update(prefix, _objInput) 
  {
    Max.post( _objInput);

    if( !this.state.hasOwnProperty(prefix) )
    {
      this.state[prefix] = {};
      Max.post("added new prefix", Object.keys(this.state));
    }

    const objArray = Array.isArray(_objInput) ? _objInput : [ _objInput ];

    let cache = this.state[prefix];

    for( let obj of objArray )
    {
      let key = obj.key;

      if( !cache.hasOwnProperty(key) )
      {
        cache[key] = [];
      }

      let val = obj.val;
      let timetag = obj.hasOwnProperty(timetag) ? obj.timetag : new Date();

    //  Max.post( key);
    
      let _objarr = !Array.isArray(val) ?  [ val ] : val;            

      switch( key )
      {
        case "remove":
          for( let _clear of _objarr )
          {
            switch( _clear.charAt(0) )
            {
                case "#": // only svg nodes? ... no actually this might be CSS also, ah but
                {
                  const _clearID = _clear.slice(1);
//                  Max.post("find and remove ", _clearID);
                  remove_nodeByID(cache.svg, _clearID );
                }
                break;
                case ".":
                {
                  const _clearClass = _clear.slice(1);
                  cache.svg = cache.svg.filter( (item) => {
                    return !item.hasOwnProperty('class') || item.class !== _clearClass;
                  });
                }
                break;

                default:
                  remove_nodeByID(cache.svg, _clear );
                break;
            }
          }
        break;
        case "clear":
        {
          if( _objarr[0] == 1 || _objarr[0] == "*" || _objarr[0] == "all" ) // clear : 1
          {
            cache = new ClientCache();
          }
          else
          {
            for( let _clear of _objarr )
            {
              cache.svg = cache.svg.filter( (item) => {
                return (item.hasOwnProperty('parent') && item.parent !== _clear) || (!item.hasOwnProperty('parent') && _clear === "main-svg");
              });
            }
          }
        }
        break;

        case "svg" :
          if( val === "clear" )
          {
            cache.svg = [];
            break;
          }

          cache.svg = mergeByProp(cache.svg, _objarr, 'id', obj.timetag );
        break;


        case "html":
          if( val === "clear" )
          {
            cache.html = [];
            break;
          }

          cache.html = mergeByProp(cache.html, _objarr, 'id', obj.timetag );
        break;

        case "css":
        {
          if( val === "clear" )
          {
            cache.css = [];
            break;
          }

          cache.css = mergeByProp(cache.css, _objarr, 'selector', obj.timetag );
        }
        break;

        case "tween":
        case "tween/to":
        case "timeline":
        case "tween/timeline":

          if( val === "clear" )
          {
            cache.tween = [];
            break;
          }

          cache.tween = addUpdateByProp(cache.tween, _objarr, 'id', obj.timetag );
        break;
       


        case "pdf" :
          if( val === "clear" )
          {
            cache.pdf = [];
            break;
          }
          cache.pdf = mergeByProp(cache.pdf, _objarr, 'id', obj.timetag );
        break;

        case "sound" :
          if( val === "clear" )
          {
            cache.sound = [];
            break;
          }
          cache.sound = mergeByProp(cache.sound, _objarr, 'id', obj.timetag );
        break;

        case "file":
        if( val === "clear" )
        {
          cache.file = [];
          break;
        }

        cache.file = mergeByProp(cache.file, val, 'id', obj.timetag );
      break;

        default:
        break;
      }

      
    }
    
  //  this.state[prefix] = cache;


  }

  get(prefix)
  {
    if( typeof this.state[prefix] == "undefined" )
      return false;
    else
    {
      let out = [];
      let cache = this.state[prefix];
      let keys = Object.keys(cache);
     // Max.post(keys);
      for(let k of keys )
      {
        let v = cache[k];
        if( v.length > 0 )
        {
          out.push({
            key: k,
            val: v,
            timetag: 0
          });
        }
          
      }
      return out;
    }
      
  }

  getJSONstr(prefix)
  {
    if( this.state.hasOwnProperty(prefix) )
    {
      // merge with /* and then stringify
      // mixin

      return JSON.stringify(this.state[prefix]);
    }
    else
      return false;

  }

  remove( prefix ) {
    //Max.post("deleting state");
    delete this.state[prefix];
  }
}

Array.prototype.mySwapDelete = function arrayMySwapDelete (index) {
  this[index] = this[this.length - 1];
  this.pop();
}


module.exports = new StateCache();
