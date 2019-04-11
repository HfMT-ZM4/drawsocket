var folder = "";
var d = new Dict();

function setMediaFolder(f)
{
	folder = f;
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


