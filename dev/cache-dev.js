
const mixin = require('mixin-deep');
const fs = require('fs');

class StateCache
{
  constructor() {

    this.cache_map = new Map();
    this.cache_obj = [];

    this.input = this.input.bind(this);
    this.removeKey = this.removeKey.bind(this);
    this.removeId = this.removeId.bind(this);

    this.makeObj = this.makeObj.bind(this);
    this.unionIdMap = this.unionIdMap.bind(this);
    this.cacheKeys = this.cacheKeys.bind(this);

    //this.writeToFile = this.writeToFile.bind(this);
    //this.getJSONstr = this.getJSONstr.bind(this);
  }

  unionIdMap(cached_id_map_, objarr_)
  {
      for( let o of objarr_)
      {
          if( o.hasOwnProperty('id') )
          {
              if( cached_id_map_.has(o.id) && !o.hasOwnProperty('new') )
                  mixin( cached_id_map_.get(o.id), o );
              else
                  cached_id_map_.set(o.id, o );
          }
          else
              cached_id_map_.set(NaN, o);
      }
  }
  
  
  cacheKeys(k_obj_)
  {
      let iterobj_ = Array.isArray(k_obj_) ? k_obj_ : [ k_obj_ ];
      for( let ko of iterobj_)
      {
        if( !ko.hasOwnProperty('key') || !ko.hasOwnProperty('val') )
            continue;

        switch(ko.key)
        {
            case "clear":
                this.removeKey(ko.val);
            break;
            case "remove":
                this.removeId(ko.val);
            break;
            default:
                if( ko.val === "clear")
                {
                    this.removeKey(ko.key);
                }
                else
                {
                    let k_id_map;
                    if( this.cache_map.has( ko.key) )
                        k_id_map = this.cache_map.get(ko.key) 
                    else
                    {
                        k_id_map = new Map();
                        this.cache_map.set(ko.key, k_id_map);
                    }
                    this.unionIdMap(k_id_map, ko.val );
                }
                
            break;
        }

      }
  }

  makeObj()
  {
    this.cache_obj = [];
    this.cache_map.forEach( (value_, key_, map_) =>{
        this.cache_obj.push({
            key: key_,
            val: Array.from(value_) // << timetag has to be in there
        });
    });

    // maybe stringify here too?
  }

  input(obj_)
  {
    this.cacheKeys(obj_);
    this.makeObj();

//   console.log("updated", this.cache_map);
//   console.log(" ob", this.cache_obj);

  }

  removeKey(kname)
  {
    if( !Array.isArray(kname) )
        this.cache_map.delete(kname);
    else
    {
        for( let k of kname )
            this.cache_map.delete(k);
    }

    this.makeObj();

//    console.log("reemoved", this.cache_map);
//    console.log(" ob", this.cache_obj);
  }

  removeId(id_)
  {
    
    if( !Array.isArray(id_) )
    {
        this.cache_map.forEach( (value_, key_, map_)=>{
            value_.delete(id_);
        });    
    }
    else
    {
        this.cache_map.forEach( (value_, key_, map_)=>{
            for( let i of id_ )
                value_.delete(i);
        });
    
    }

    this.makeObj();

//    console.log("reemoved", this.cache_map);
//    console.log(" ob", this.cache_obj);
  }



  writeToFile(filename)
  {
    writeJSON(filename, this.state);
  }


}


module.exports = new StateCache();

