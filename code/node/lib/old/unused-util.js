
/**
 * In place deep merge, updating existing array of objects
 * 
 * @param {array} a -- old array
 * @param {array} b -- new array
 * @param {key} prop -- key to look for
 * @param {time} timetag -- time tag
 */
function mergeByProp(a, b, prop, timetag)
{
    var ret = [];
    var b_matched = [];

    for( var i = 0; i < a.length; i++ )
    {
        var found = false;
        for( var j = 0; j < b.length; j++ )
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

    for( var j = 0; j < b.length; j++ )
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
    var ret = [];
    var addToEnd = add;

    // could be faster with large sets to put current in the inner array, and use splice() when found
    // otherwise we have to itereate the whole array everytime, that said some tests 
    // but, we can optimize later if it becomes noticable
    for( var i = 0; i < current.length; i++ )
    {
        var found = false;
        for( var j = 0; j < add.length; j++ )
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

    for( var j = 0; j < addToEnd.length; j++ )
    {
      addToEnd[j].timetag = timetag;
      ret.push( addToEnd[j] );
    }

    Max.post(ret);
    return ret;

}
