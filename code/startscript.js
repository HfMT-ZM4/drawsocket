var pathToScript = "default";

function setpath(relPath)
{

	var toplevel = this.patcher;
	
	while( toplevel.parentpatcher)
		toplevel = toplevel.parentpatcher;

	var fullpath = toplevel.filepath;

	if( fullpath ) // must be saved first
	{
		var lastSlash = fullpath.lastIndexOf('/') - 1;
		var afterDrive = fullpath.lastIndexOf(':') + 1;

		if( typeof relPath != "undefined" )
		{
			pathToScript = fullpath.substr(afterDrive, lastSlash - afterDrive + 2) + relPath;
		}
		else
		{
			pathToScript = fullpath.substr(afterDrive, lastSlash - afterDrive + 2);
		}

	}

}

function bang()
{
	if( pathToScript === "default"){
		setpath();
	}
	// outlet(0, "script", "start");
	//else
		outlet(0, "script", "start", pathToScript );

}
