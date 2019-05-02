var folder = "";
var d = new Dict();

if (jsarguments.length >= 1) 
{	
	var args = jsarguments.slice(1);
	var occurence = [];
	for (var i = 0; i < args.length; i++){
		if (args[i].toString().indexOf("@") != -1) occurence.push(i); 
		}
		for (i = 0; i < occurence.length; i++){
		var attribute =  args.slice(occurence[i], occurence[i+1]);
		//post("attribute", attribute[0], attribute.slice(1, attribute.length), "\n");
		//cursorAttr.replace(id + "::" + attribute[0], attribute.slice(1, attribute.length));
		if (attribute[0] == "@setMediaFolder") mediaFolder = attribute.slice(1, attribute.length);
		//post("pathToScript", pathToScript, "\n");	
		}
}

function setMediaFolder(f)
{
	folder = f;
}

function list()
{
	var l = arrayfromargs(messagename, arguments);
	if (l[1] == "sfplay") sfplay(l[0], l[2]);
}

function sfplay(voice, id)
{
	var o = {};
	 o[voice + 1] = {
		"key" : "sound",
		"val" : 		{
			"id" : id,
			"call" : 			{
				"method" : "restart"
			}

		}
		
	}
	
d.parse(JSON.stringify(o));
outlet(0, "dictionary", d.name);	
}


function dropsound(sf)
{
	//var id = sf;
	var o = {
	"*" : 	{
		"key" : "sound",
		"val" : 		{
			"new" : "Player",
			"id" : sf,
			"vars" : 			{
				"url" : folder + sf,
				"autostart" : "false",
				"loop" : "false"
			}
,
			"call" : 			{
				"method" : "toMaster"
			}

		}

	}

}

d.parse(JSON.stringify(o));
outlet(0, "dictionary", d.name);	
}


