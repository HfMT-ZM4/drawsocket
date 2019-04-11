
const mixin = require('mixin-deep');

// note: mixin only works with objects, so we need to iterate still and find matches and then union them

function mergeByProp(a, b, prop, timetag)
{
    var ret = [];
    var b_matched = [];

    for( var i = 0; i < a.length; i++ )
    {
        var found = false;
        for( var j = 0; j < b.length; j++ )
        {
            if( a[i][prop] === b[j][prop] ){
                found = true;
                b[j].timetag = timetag;
                ret.push( mixin(a[i], b[j]) );
                b_matched.push(j);
                break;
            }
        }

        if(!found)
            ret.push(a[i]);
        
    }

    for( var j = 0; j < b.length; j++ )
    {
        if( !b_matched.includes(j) ){
            b[j].timetag = timetag;
            ret.push(b[j]);
        }
    }

    return ret;
}

var layer_cache = {
    svg: {
        defs: [],
        back: [],
        main: [],
        overlay: []
    },    
    css: [],
    anim: [],
    sound: []
}

var input = {
    timetag: 1,
    key: "svg",
    value: {
        main: [{
            id: 'foo',
            new : "line",
            x1: 0,
            y1: 10,
            style: {
                fill: "red"
            }
        }, {
            id: 'bar',
            new : "line",
            style: {
                fill: "black"
            }
        }]
    }
};

var input2 = {
    timetag: 2,
    key: "svg",
    value: {
            id: 'foo',
            style: {
                'stroke-width': 2
            }
        }
};


var input3 = {
    timetag: 2,
    key: "tween",
    value: {
        id: "fooTween",
	    target: "#main-drawing",
	    dur: 1,
	    vars: {
            y: 370,
            x: 100,
            paused : "true",
            ease : "linear"
        }
    }
};

var input4 = {
    timetag: 6,
    key: "tween",
    value: {
        id: 'fooTween',
        cmd: "stop"      
    }
};


function addToCache(obj)
{
    const val = obj.value;

    switch( obj.key )
    {
        case "svg" :
            if( !Array.isArray(val) ) 
            {
                var has_context_arrays = false;

                if( val.hasOwnProperty('defs') )
                {   
                    var _objarr = (val.defs.length === undefined) ?  [ val.defs ] : val.defs;
                    layer_cache.svg.main = mergeByProp(layer_cache.svg.defs, _objarr, 'id', obj.timetag );
                    has_context_arrays = true;
                }
    
                if( val.hasOwnProperty('main') )
                {   
                    var _objarr = (val.main.length === undefined) ?  [ val.main ] : val.main;
                    layer_cache.svg.main = mergeByProp(layer_cache.svg.main, _objarr, 'id', obj.timetag );
                    has_context_arrays = true;
                }
    
                if( val.hasOwnProperty('back') )
                {
                    var _objarr = (val.back.length === undefined) ?  [ val.back ] : val.back;
                    layer_cache.svg.back = mergeByProp(layer_cache.svg.back, obj_ar, 'id', obj.timetag );
                    has_context_arrays = true;
                }
    
                if( val.hasOwnProperty('overlay') )
                {
                    var _objarr = (val.overlay.length === undefined) ?  [ val.overlay ] : val.overlay;
                    layer_cache.svg.overlay = mergeByProp(layer_cache.svg.overlay, obj_ar, 'id', obj.timetag );
                    has_context_arrays = true;
                }
    
                if( !has_context_arrays )
                {
                    layer_cache.svg.main = mergeByProp(layer_cache.svg.main, [val], 'id', obj.timetag );
                }
            }
            else
            {
                layer_cache.svg.main = mergeByProp(layer_cache.svg.main, val, 'id', obj.timetag );
            }
           
        break;

        case "css":
            if( val === "clear" )
            {
                layer_cache.css = [];
                return;
            }
    
            var _objarr = (val.length === undefined) ?  [ val ] : val;            
            layer_cache.css = mergeByProp(layer_cache.css, _objarr, 'selector', obj.timetag );
        break;

        case "timeline":
        case "tween":
            if( val === "clear" )
            {
                layer_cache.anim = [];
                return;
            }

            var _objarr = (val.length === undefined) ?  [ val ] : val;            
            layer_cache.anim = mergeByProp(layer_cache.anim, _objarr, 'id', obj.timetag );
        break;

        default:
        break;
    }
}


//console.log(newobj);
 
//console.log( obj1.map( (o) => { if(o.id === 'foo') return o; }  ) );

//merge3(obj1, obj2, 'id') ;
//console.log( mergeByProp(obj1, [obj2], 'id') );

addToCache(input);
addToCache(input2);
addToCache(input3);
addToCache(input4);


let array_ = [
    {
        key: 'svg',
        val: [{
            id: 'foo',
            new: "obj"
        },
        {
            id: 'b',
            new: "g"
        }]
    },
    {
        key: 'svg',
        val: {
            id: 'bar',
            new: "obj"
        }
    }
];

let map_ = new Map();

for( const o of array_)
{
    if( o.val.hasOwnProperty('id') )
        map_.set(o.val.id, o);
}

console.log( map_);



//const res = _mixinDeep({}, { a: { bar: true } }, { a: { baz: true } });
//console.log(res);