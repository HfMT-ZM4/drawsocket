

var prefixes = [];

function addprefix()
{
	for( var ai = 0, aj = arguments.length; ai<aj; ai++)
	{
		var arg = arguments[ai];
		for( var i = 0, j = prefixes.length; i < j; i++)
		{
			if( prefixes[i] === arg)
				return;
		}
	
		prefixes.push(arg);
	
	}
	
	post("prefixes", prefixes, "\n");
}


function flattenWithParentName( obj, parent )
{
//	post("p", parent, '\n');
	if( Array.isArray(obj) )
	{
		var newArray = [];
		// iterate 
		var parentIDs = Object.keys(obj);
		for( var i = 0, j = parentIDs.length; i < j; i++ )
		{
			var val = obj[ i ];
		//	if( val.hasOwnProperty("id") )
			{
				newArray = newArray.concat( flattenWithParentName( val, parent ) );
			}
		
		}
		return newArray;

	}
	else if( obj.hasOwnProperty("child") && obj.hasOwnProperty("id") )
	{		// do recursive
		var newArray = [];
		obj.parent = parent;
		
		var child = obj.child;
		delete obj.child;

		newArray.push( obj );
		newArray = newArray.concat( flattenWithParentName( child, obj.id ) );
		
		return newArray;
	}
	else
	{
		obj.parent = parent;
		return obj;
	}

}

function flattenAppendTo( obj )
{	
	var newArray = [];
	var parentIDs = Object.keys(obj);
//	post("flattening", obj, parentIDs, '\n');

	for( var i = 0, j = parentIDs.length; i < j; i++ )
	{
		var val = obj[ parentIDs[i] ];
		
		newArray = newArray.concat( flattenWithParentName( val, parentIDs[i] ) );
		
	}
	
	return newArray;
	
}


/**
 * 	{
 * 		/prefix : {
 * 			/svg : [{
 * 				/new : "line", ...
 * 			}]
 * 		}
 * 	}
 */


function dictionary(n)
{
	var dict = new Dict(n);
	var obj = JSON.parse( dict.stringify() );
	
	
	// first level addresses 
	// flatten /svg and /html have special constructors
	// otherwise, keep as is
	var newObj = {};
	
	var keys = Object.keys(obj); // input OSC targets
	for( var i = 0, j = keys.length; i < j; i++ )
	{
		var val = obj[keys[i]];
		
		var routeAddr = keys[i].slice(-4);
//		post("has append", val.hasOwnProperty('appendTo') ,'\n');
		if( (routeAddr === "/svg" || routeAddr === "html") && (val.hasOwnProperty('appendTo') || val.hasOwnProperty('appendto') ) )
 		{
//			post("sending", val, '\n');
			newObj[ keys[i] ] = flattenAppendTo( val.appendTo );
		}
		else
			newObj[ keys[i] ] = val;
		
		
	}
	
//	post( JSON.stringify(newObj), '\n' );
	var outDict = new Dict();
	outDict.parse( JSON.stringify(newObj) );

	outlet(0, "dictionary", outDict.name);
}