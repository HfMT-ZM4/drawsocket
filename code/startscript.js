var pathToScript = "default";

function setpath(relPath)
{

	var fullpath = this.patcher.parentpatcher ? this.patcher.parentpatcher.filepath : this.patcher.filepath;

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
		setpath('');
	}
	// outlet(0, "script", "start");
	//else
		outlet(0, "script", "start", pathToScript );

}
