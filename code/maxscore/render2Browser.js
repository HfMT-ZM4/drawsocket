inlets = 3;
outlets = 3;

include("xml2json");

var output = new Dict();
output.name = "output";
var joutput = {};
var svgGroups = {};
var svgBackground = {};
var sg = {};
var groups = ["score"];
var groupcount = 0;
var staffBoundingInfo = [];
var staffBoundingFlag = 0;
var scoreLayout = [];
var spacing = [];
var staffSpacing = {}; 
var boundingBox = [];
var boundingBoxTop = [];
var c;
var fontMap = new Dict();
fontMap.name = "Bravura";
fontMap.import_json("MaxScoreDefaultMap.json");
var fontExtras = new Dict();
fontExtras.name = "Extras";
fontExtras.import_json("MaxScoreFontExtras.json");
var textFont = "Arial";
var textFontSize = "12.";
var mgraphics = new JitterObject("jit.mgraphics", 320, 240);
var outmatrix = new JitterMatrix(4, "char", 320, 240);
var setStaffGroup = [];
var instrumentNames = [];
var flag = 0;
var tempoflag = 0;
var oldIndex = [];
var notes = 0;
var stems = {};
var prev_noteheadx = [0, 0, 0, 0];
var renderNoteheadx = [];
var currentStaff = 0;
var frgb = [0, 0, 0];
var cursors = new Dict();
cursors.name = "cursors";
var jcursors = {};
var cursorAttr = new Dict();
cursorAttr.name = "cursorAttr";
var dumpflag = 0;
var dump = [];
var json = {};
var tempo = 60;
var timesig = [4, 4];
var svg = new Dict();
//svg.name = "svg";
var imageTable = {};
var target = "socket";
var numStaves = 0;
var numMeasures = 0;
var	scoreTitle = "";
var	composer = "";
var mediaFolder = "/media/project/";
var prop = 1;
var oldstaff = -1;
var stafflines = {};
var oldstafflines = {};
var clefList = {};
var toffset = 0;
var duration = 0;
var eol = 0;
var zoom = 1.;
var pathToScript = "default";
var svgFile = "untitled.svg";
var extendedStaffLines = {};
var annotation = new Dict();
var shownClefs = 1;
var shownTitle = 0;
var clefs = {
	"0" : ["", 3], 
	"1" : ["", 2], 
	"2" : ["", 1], 
	"3" : ["", 1], 
	"4" : ["", 3]
};


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
		if (attribute[0] == "@staffgroups"){		
 		var g = attribute.slice(1, attribute.length);
		for (var i = 0;  i < g.length; i++) {
		if (!isNaN(filterInt(g[i]))) g[i] = filterInt(g[i]);
		}
		flag = 0;
		setStaffGroup = g;	
		if (setStaffGroup[0] != "score" && setStaffGroup[0] != "parts") 
		{
		fillObj([].concat(setStaffGroup));
		flag = 1;
		}
		}
		else if (attribute[0] == "@setMediaFolder") mediaFolder = attribute.slice(1, attribute.length);
		else if (attribute[0] == "@root") setpath(attribute.slice(1, attribute.length));
		else if (attribute[0] == "@showClefs") shownClefs = attribute.slice(1, attribute.length);
		else if (attribute[0] == "@showTitle") shownTitle = attribute.slice(1, attribute.length);
		post("pathToScript", pathToScript, "\n");	
		}
}

function filterInt(value) {
  	if (/^(\-|\+)?([0-9]+|Infinity)$/.test(value)) return Number(value);
  	else return NaN;
}

function setMediaFolder(f)
{
	mediaFolder = f;
}

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

function showClefs(show)
{
	shownClefs = show;
}

function showTitle(show)
{
	shownTitle = show;
}

function staffgroups()
{
	if (inlet == 2)
	{
	for (var s = 1; s <= groupcount; s++) {
		var clear = {"key" : "clear", "val" : "*"};
		var joutput = {};
		joutput[s] = clear;
		}
	output.parse(JSON.stringify(joutput));
	outlet(0, "dictionary", output.name);
	flag = 0;
	setStaffGroup = arrayfromargs(arguments);	
	if (setStaffGroup[0] != "score" && setStaffGroup[0] != "parts") 
		{
		fillObj([].concat(setStaffGroup));
		flag = 1;
		}
		outlet(1, "setRenderAllowed", 1);
	}
}

function fillObj(groups)
{
	sg = {};
	if (typeof groups == "object") {
	groupcount = groups.length;
	svgGroups = {};
	for (var s = 1; s <= groupcount; s++) svgGroups[s] = {};
	//post("fillObj", groups, groupcount, "\n");	
	for (var g = 0; g < groupcount; g++)
	{
	//post("fillObj", g, groups[g], "\n");	
		if (typeof groups[g] == "number") sg[g] = groups[g];	
		else 
		{
		if (groups[g].indexOf("+") != -1) 
		{
			sg[g] = toNumber(groups[g].split("+"));
		} 
		else 
			{
			if (groups[g].indexOf("-") != -1) {
		 	var delim = groups[g].split("-");
			var voices = [];
			for (var v = delim[0]; v <= delim[1]; v++)
			{
			voices.push(parseInt(v));
			}
			}
			sg[g] = voices;
		}
		}
	}
	}
	else {
	groupcount = 1;
	svgGroups = {};
	for (var s = 1; s <= groupcount; s++) svgGroups[s] = {};
		if (typeof groups == "number") sg[0] = groups;	
		else 
		{
		if (groups.indexOf("+") != -1) 
		{
			sg[0] = toNumber(groups.split("+"));
		} 
		else 
			{
			if (groups.indexOf("-") != -1) {
		 	var delim = groups.split("-");
			var voices = [];
			for (var v = delim[0]; v <= delim[1]; v++)
			{
			voices.push(parseInt(v));
			}
			}
			sg[0] = voices;
		}
		}
	}
}

function getNumStaves(n)
{
	if (numStaves != n) {
		numStaves = n;
		flag = 0;
		}
	if (flag == 0)
	{
	if (setStaffGroup == "parts") {
		var parts = [];
		for (var i = 0; i < n; i++) parts.push(i); 
		fillObj([].concat(parts));
		}
	else fillObj("0-" + (n - 1));
	//post("fillObj", "0-" + (n - 1), "\n");	
	flag = 1;	
	}
//	if (scoreLayout[1] == 0) outlet(1, "getScoreTopMarginOfFirstPage");
//	else scoreTopMarginOfFirstPage = 0.;
//	outlet(1, "getScoreTopMargin");	
	staffBoundingInfoFlag = 0;
	//post("staffBoundingInfo3", staffBoundingFlag, "\n");
	for (var b = 0; b < n; b++){
		outlet(1, "getStaffSpacing", b);
		outlet(1, "getStaffBoundingInfo", 0, b);
		outlet(1, "getInstrumentName", b);
	}
}

function getInstrumentName(n, i)
{
	instrumentNames[n] = i;
}


function getNumMeasures(n)
{
	numMeasures = n;	
}

function getStaffSpacing(staffIndex, a, b)
{
	spacing[staffIndex] = (a + b) * scoreLayout[3];
	staffSpacing[staffIndex] = [a * scoreLayout[3], b * scoreLayout[3]];
}

function getStaffBoundingInfo(measureIndex, staffIndex, x, y, width, height, marginX)
{
	//post("staffBoundingInfo", staffBoundingFlag, measureIndex + "::" + staffIndex, x, y, width, height, marginX, "\n");
	//this can be potentially iffy if number of stafflines changes from measure to measure.
	if (staffBoundingFlag == 0){
	boundingBox[staffIndex] = height;
	//post("spacing", spacing, "staffBoundingInfo", boundingBox, "\n");
	boundingBoxTop[staffIndex] = y;
	}
	else {
		staffBoundingInfo = [x, y, width, height, marginX];
	}
}

function cursorExtent(staffGroup, startStaff, endStaff)
{
	//find occurence of staff in staffgroup
	var extent = [-1];
	var idx = [];
	for (var i = startStaff; i<= endStaff; i++) {
	if (typeof staffGroup == "number") {
	if (staffGroup == i) idx = [i];
	}
	else if (staffGroup.indexOf(i) != -1) idx.push(staffGroup.indexOf(i));
	}
	//calculate extent
	if (idx.length == 1) 
	{
	var top = boundingBoxTop[0];
	var bottom = boundingBoxTop[0] + spacing[idx[0]] - staffSpacing[idx[0]][1] - staffSpacing[idx[0]][0] + boundingBox[idx[0]];
	extent = [top, bottom];
	}
	else if (idx.length > 1)
	{
	var top = boundingBoxTop[0];
	var destinationBoxes = 0;
	for (j = 0; j < idx.length; j++) destinationBoxes += (spacing[idx[j]] + 24);
	var bottom = boundingBoxTop[0] + destinationBoxes - staffSpacing[idx[j - 1]][1] - staffSpacing[idx[j - 1]][0] + boundingBox[idx[j - 1]] - 24;
	extent = [top, bottom];
	//post("boxes", j - 1, boundingBoxTop[0], boundingBox[idx[j - 1]], destinationBoxes, staffSpacing[idx[j - 1]][1], staffSpacing[idx[j - 1]][0], boundingBox[idx[j - 1]], "\n");
	}
	//post("extent", extent, "\n");
	return extent;
}


function remap(staffGroup, staffIndex, position)
{
	var dest = [];
	// get occurences of staffIndex in staffgroup #s  
	var idx = getAllIndexes(staffGroup, staffIndex);
	//post("staffgroup", staffGroup, "contains staffline from staff", staffIndex, "at position", position, "in boxes", idx, "\n");
	if (idx != -1)
	{
 	for (i = 0; i < idx.length; i++){
	// y - (top margin + sum of source boxes) 
	var sourceBoxes = 0;
	for (j = 0; j < staffIndex; j++) sourceBoxes += (spacing[j] + 24);
//	var delta = position - (scoreTopMarginOfFirstPage + scoreTopMargin + sourceBoxes);
	var delta = position - sourceBoxes;
	// top margin + sum of destination boxes + delta
	var destinationBoxes = 0;
	for (j = 0; j < idx[i]; j++) destinationBoxes += (spacing[staffGroup[j]] + 24);
	//dest.push(scoreTopMarginOfFirstPage + scoreTopMargin + destinationBoxes + delta);
	dest.push(destinationBoxes + delta);
	//post("dest", destinationBoxes, delta, dest, "\n");
	}
	}
	if (dest.length != 0) return dest;
	else return idx;
}

function writeAt(s, c, f, fs, x, y, t)
{
			if (!isNaN(parseInt(t))) t = parseInt(t);
			//post("t", t, t.toString().length, "\n");
 			if(t.toString().length >= 1){
			var xoffset = (tempoflag == 1) ? 10. : 0.;
           	svgGroups[s + 1]["/" + c + "/style/fill"] = "black";
            svgGroups[s + 1]["/" + c + "/style/fill-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/style/stroke"] = "none";
            svgGroups[s + 1]["/" + c + "/style/stroke-width"] = 0.;
            svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/style/font-family"] = f;
            svgGroups[s + 1]["/" + c + "/style/font-size"] = fs;
            svgGroups[s + 1]["/" + c + "/draw/text"] = [x + xoffset, y, t];
            svgGroups[s + 1]["/" + c + "/transform/matrix"] = [1., 0., 0., 1., 0., 0.];
			}
}

function text_measure(f, fs, t)
{
			mgraphics.select_font_face(f);
			mgraphics.set_font_size(fs);
			return mgraphics.text_measure(t);
}

function writeStaffLines()
{
			var minmax = [stafflines[0][0][0][0], stafflines[scoreLayout[2] - 1][0][0][2]];
			//if (JSON.stringify(oldstafflines) != JSON.stringify(stafflines)) {
			for (var s = 0; s < groupcount; s++) {
			var path = "";
			for (var staves in stafflines[0]) {
				for (var lines in stafflines[0][staves]){
					//post("JSON.stringify(stafflines)", staves, lines, JSON.stringify(stafflines[0][staves][lines][1]), "\n");
					if (typeof stafflines[0][staves][lines][1] != "undefined") {
					var dest = remap(sg[s], staves, stafflines[0][staves][lines][1]);
					if (dest != -1)
					{
					for (var d = 0; d < dest.length; d++) {
						path += "M" + minmax[0] + "," + dest[d] + " L" + minmax[1] + "," + dest[d] + ","					
					//post("path", path, "\n");
								}
							}
						}
					}
				}
				c++;
				/*
           		svgBackground[s + 1]["/" + c + "/style/fill"] = "black";
           		svgBackground[s + 1]["/" + c + "/style/fill-opacity"] = 1.;
           		svgBackground[s + 1]["/" + c + "/draw/path"] = path;
           		svgBackground[s + 1]["/" + c + "/style/stroke"] = "black";
           		svgBackground[s + 1]["/" + c + "/style/stroke-width"] = 0.4;
           		svgBackground[s + 1]["/" + c + "/style/stroke-opacity"] = 1.;
           		svgBackground[s + 1]["/" + c + "/transform/matrix"] = [1., 0., 0., 1., 0., 0.];
				*/
           		svgGroups[s + 1]["/" + c + "/style/fill"] = "black";
           		svgGroups[s + 1]["/" + c + "/style/fill-opacity"] = 1.;
           		svgGroups[s + 1]["/" + c + "/draw/path"] = path;
           		svgGroups[s + 1]["/" + c + "/style/stroke"] = "black";
           		svgGroups[s + 1]["/" + c + "/style/stroke-width"] = 0.4;
           		svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = 1.;
           		svgGroups[s + 1]["/" + c + "/transform/matrix"] = [1., 0., 0., 1., 0., 0.];
				}	
			//}
			//oldstafflines = stafflines;
}

function writeStems()
{
			if (!isEmpty(stems)){
			var y = [];
			for (var key in stems)
			{
			y.push(stems[key][1]);
			}
			if (stems[key][8] == "STEM_UP") var xoffset	= -0.4;
			else var xoffset = 0;		
			var bottom = arrayMax(y);
			var top = arrayMin(y);
			for (var s = 0; s < groupcount; s++)
			{
			var dest = remap(sg[s], stems[key][5], top);
			if (dest != -1)
			{
			for (var d = 0; d < dest.length; d++) {
			c++;
           	svgGroups[s + 1]["/" + c + "/style/fill"] = "black";
            svgGroups[s + 1]["/" + c + "/style/fill-opacity"] = 1.;
           	svgGroups[s + 1]["/" + c + "/draw/rect"] = [stems[key][0] + 7. + xoffset, dest[d] - 22, 0.75, bottom - top + 20.];
            svgGroups[s + 1]["/" + c + "/style/stroke"] = "black";
            svgGroups[s + 1]["/" + c + "/style/stroke-width"] = 0.4;
            svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/transform/matrix"] = [1., 0., 0., 1., 0., 0.];
			}
		}
	}
}				
}

function destination()
{
	target = [].concat(arrayfromargs(arguments));
}

function getScoreAnnotation(a)
{
	annotation.parse(a);
}

function getTitle(t)
{
	scoreTitle = t;
}

function getComposer(c)
{
	composer = c;
}

/*
function linesegment()
{
	var noteheadx = arrayfromargs(arguments);
	if (noteheadx[3] == prev_noteheadx[1] && noteheadx[1] == prev_noteheadx[3] && noteheadx[0] != prev_noteheadx[0]) {
    //post("linesegment", noteheadx, "\n");
	anything("noteheadx", noteheadx[0] + 1, noteheadx[1] - 2, 0.5, "Note", 0, currentStaff, 0, 0);
	}
	prev_noteheadx = noteheadx;
}
*/

function anything() {
    var msg = arrayfromargs(arguments);
    //post("msg", messagename, msg, "\n");
    switch (messagename) {
        case "scoreLayout":
			scoreLayout = msg;
			oldstaff = -1;
            break;
        case "startRenderDump":
			outlet(2, "startRenderDump");
			svgGroups = {};
			stems = {};
			stafflines = {};
 			for (var s = 1; s <= groupcount; s++) svgGroups[s] = {};
   			c = 0;
           	outlet(1, "getNumMeasures");
           	outlet(1, "getNumStaves");
 			for (var i = 0; i < numMeasures; i++) {
					stafflines[i] = {};
						for (var j = 0; j < numStaves; j++) {
							stafflines[i][j] = {};
							outlet(1, "getStaffInfo", 0, j);
           					//post("extendedStaffLines", extendedStaffLines[j], (5 + Number(extendedStaffLines[j][0]) + Number(extendedStaffLines[j][1])), "\n");
								for (var k = 0; k < (5 + Number(extendedStaffLines[j][0]) + Number(extendedStaffLines[j][1])); k++) {
									stafflines[i][j][k] = {};
						}
					}
				}
           break;
        case "frgb":
            frgb = msg;
            break;
        case "clearGraphics":
            break;
 		case "tempoqtrequals":
			for (var s = 0; s < groupcount; s++)
			{
			for (var i = 0; i < 2; i++) {
			c++;
			var glyph = fontMap.get("tempoqtrequals");
		    svgGroups[s + 1]["/" + c + "/style/fill"] = "black";
            svgGroups[s + 1]["/" + c + "/style/fill-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/style/stroke"] = "none";
            svgGroups[s + 1]["/" + c + "/style/stroke-width"] = 0.;
            svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/style/font-family"] = glyph[i*5+3];
            svgGroups[s + 1]["/" + c + "/style/font-size"] = glyph[i*5+4];
			svgGroups[s + 1]["/" + c + "/draw/music"] = [glyph[i*5+1] + msg[0], glyph[i*5+2] + msg[1], glyph[i*5+0].charCodeAt(0).toString(16)];
           	svgGroups[s + 1]["/" + c + "/transform/matrix"] = [1., 0., 0., 1., 0., 0.];
			}
			}
			tempoflag = 1;
            break;
        case "writeat":
			for (var s = 0; s < groupcount; s++)
			{
           	c++;
			writeAt(s, c, "Arial", 10., msg[0], msg[1], msg[2]);
			}
			tempoflag = 0;		
            break;
       case "printNoteText":
			//printNoteText measureIndex staffIndex trackIndex noteIndex zoom x y test
			for (var s = 0; s < groupcount; s++)
			{
			var dest = remap(sg[s], msg[1], msg[6]);
			if (dest != -1)
			{
			for (var d = 0; d < dest.length; d++) {
			c++;
           	svgGroups[s + 1]["/" + c + "/style/fill"] = "black";
            svgGroups[s + 1]["/" + c + "/style/fill-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/style/stroke"] = "none";
            svgGroups[s + 1]["/" + c + "/style/stroke-width"] = 0.;
            svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/style/font-family"] = "Arial";
            svgGroups[s + 1]["/" + c + "/style/font-size"] = 10.;
            svgGroups[s + 1]["/" + c + "/draw/text"] = [msg[5], dest[d], decodeURI(msg[7])];
            svgGroups[s + 1]["/" + c + "/transform/matrix"] = [1., 0., 0., 1., 0., 0.];
			}
			}
			}
            break;
        case "StaffLine":
			//StaffLine measureIndex staffIndex staffLineIndex zoom x1 y1 x2 y2 selected
 			stafflines[msg[0] - scoreLayout[1]][msg[1]][msg[2]] = [msg[4], msg[5], msg[6], msg[7]];
			currentStaff = msg[1];
			//post("staffline", msg[0],msg[1],msg[2], stafflines[msg[0]][msg[1]][msg[2]], "\n");
			break;
        case "LedgerLine":
			//LedgerLine measureIndex staffIndex trackIndex noteIndex ledgerLineIndex zoom x1 y1 x2 y2
			for (var s = 0; s < groupcount; s++)
			{
			var dest = remap(sg[s], msg[1], msg[7]);
			if (dest != -1)
			{
			for (var d = 0; d < dest.length; d++) {
			c++;
            svgGroups[s + 1]["/" + c + "/style/fill"] = "black";
            svgGroups[s + 1]["/" + c + "/style/fill-opacity"] = 1.;
           	svgGroups[s + 1]["/" + c + "/draw/path"] = "M" + msg[6] + "," + dest[d] + " L" + msg[8] + "," + dest[d];
            svgGroups[s + 1]["/" + c + "/style/stroke"] = "black";
            svgGroups[s + 1]["/" + c + "/style/stroke-width"] = 0.4;
            svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/transform/matrix"] = [1., 0., 0., 1., 0., 0.];
			}
			}
			}
            break;
        case "Beam":
			//Beam measureIndex1 staffIndex1 trackIndex1 noteIndex1 measureIndex2 staffIndex2 trackIndex2 noteIndex2 zoom x y width height
  			var orient = (msg[13] == "up") ? -1 : 1;
			for (var s = 0; s < groupcount; s++)
			{
			var dest = remap(sg[s], msg[1], msg[10]);
			if (dest != -1)
			{
			for (var d = 0; d < dest.length; d++) {
			c++;
           	svgGroups[s + 1]["/" + c + "/style/fill"] = "black";
            svgGroups[s + 1]["/" + c + "/style/fill-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/style/stroke"] = "none";
            svgGroups[s + 1]["/" + c + "/style/stroke-width"] = 0.;
            svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/draw/rect"] = [msg[9], dest[d], msg[11], msg[12]];
            svgGroups[s + 1]["/" + c + "/transform/matrix"] = [1., 0., 0., 1., 0., 0.];
			}
			}
			}
           break;
        case "Slur":
			//Slur measureIndex1 staffIndex1 trackIndex1 noteIndex1 measureIndex2 staffIndex2 trackIndex2 noteIndex2 zoom x y width height
  			var orient = (msg[13] == "up") ? -1 : 1;
			for (var s = 0; s < groupcount; s++)
			{
			var dest = remap(sg[s], msg[1], msg[10]);
			if (dest != -1)
			{
			for (var d = 0; d < dest.length; d++) {
			c++;
           	svgGroups[s + 1]["/" + c + "/style/fill"] = "black";
            svgGroups[s + 1]["/" + c + "/style/fill-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/style/stroke"] = "black";
            svgGroups[s + 1]["/" + c + "/style/stroke-width"] = 0.4;
            svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/draw/path"] = "M0,1.1l0-0.2c19.9,9.6,79.9,9.6,100,0v0.2C79.9,11.8,19.9,11.8,0,1.1";
            svgGroups[s + 1]["/" + c + "/transform/matrix"] = [msg[11]/100., 0., 0., orient, msg[9], dest[d] + 7];
			}
			}
			}
           break;
        case "Tie":
			//Tie measureIndex1 staffIndex1 trackIndex1 noteIndex1 measureIndex2 staffIndex2 trackIndex2 noteIndex2 zoom x y width height
			//Tie 0. 0. 0. 0. 0. 0. 0. 1. 0.5 94.120689 54. 60. 15. up
			//This is a svg tie scaled to 100 px: "M0,1.1l0-0.2c19.9,9.6,79.9,9.6,100,0v0.2C79.9,11.8,19.9,11.8,0,1.1"
 			var orient = (msg[13] == "up") ? -1 : 1;
			for (var s = 0; s < groupcount; s++)
			{
			var dest = remap(sg[s], msg[1], msg[10]);
			if (dest != -1)
			{
			for (var d = 0; d < dest.length; d++) {
			c++;
           	svgGroups[s + 1]["/" + c + "/style/fill"] = "black";
            svgGroups[s + 1]["/" + c + "/style/fill-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/style/stroke"] = "black";
            svgGroups[s + 1]["/" + c + "/style/stroke-width"] = 0.4;
            svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/draw/path"] = "M0,1.1l0-0.2c19.9,9.6,79.9,9.6,100,0v0.2C79.9,11.8,19.9,11.8,0,1.1";
            svgGroups[s + 1]["/" + c + "/transform/matrix"] = [msg[11]/100., 0., 0., orient, msg[9], dest[d] + 7.];
			}
			}
			}
            break;
        case "TieOut":
			//TieOut measureIndex staffIndex trackIndex noteIndex zoom x y width height
  			var orient = (msg[9] == "up") ? -1 : 1;
			for (var s = 0; s < groupcount; s++)
			{
			var dest = remap(sg[s], msg[1], msg[6]);
			if (dest != -1)
			{
			for (var d = 0; d < dest.length; d++) {
			c++;
           	svgGroups[s + 1]["/" + c + "/style/fill"] = "black";
            svgGroups[s + 1]["/" + c + "/style/fill-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/style/stroke"] = "black";
            svgGroups[s + 1]["/" + c + "/style/stroke-width"] = 0.4;
            svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/draw/path"] = "M0,1.1l0-0.2c19.9,9.6,79.9,9.6,100,0v0.2C79.9,11.8,19.9,11.8,0,1.1";
            svgGroups[s + 1]["/" + c + "/transform/matrix"] = [msg[7]/100., 0., 0., orient, msg[5], dest[d] + 7.];
			}
			}
			}
           break;
        case "TieIn":
			//TieIn measureIndex staffIndex trackIndex noteIndex zoom x y height
			//TieOut measureIndex staffIndex trackIndex noteIndex zoom x y width height
  			var orient = (msg[9] == "up") ? -1 : 1;
			for (var s = 0; s < groupcount; s++)
			{
			var dest = remap(sg[s], msg[1], msg[6]);
			if (dest != -1)
			{
			for (var d = 0; d < dest.length; d++) {
			c++;
           	svgGroups[s + 1]["/" + c + "/style/fill"] = "black";
            svgGroups[s + 1]["/" + c + "/style/fill-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/style/stroke"] = "black";
            svgGroups[s + 1]["/" + c + "/style/stroke-width"] = 0.4;
            svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/draw/path"] = "M0,1.1l0-0.2c20,9.6,80,9.6,100,0v0.2C80,11.8,20,11.8,0,1.1";
            svgGroups[s + 1]["/" + c + "/transform/matrix"] = [msg[7]/100., 0., 0., orient, msg[5], dest[d] + 7.];
			}
			}
			}
            break;
        case "cresc":
			//cresc|decresc measureIndex1 staffIndex1 trackIndex1 noteIndex1 measureIndex2 staffIndex2 trackIndex2 noteIndex2 zoom x1 y x2 startContinued endContinued
			//cresc 0. 0. 0. 0. 0. 0. 0. 1. 0.5 89.620689 105. 157.620697 false false
			var type = 2 * JSON.parse(msg[12]) + JSON.parse(msg[13]);
			for (var s = 0; s < groupcount; s++)
			{
			var dest = remap(sg[s], msg[1], msg[10]);
			if (dest != -1)
			{
			for (var d = 0; d < dest.length; d++) {
			c++;
			var path ="";
			switch (type){
			case 0 :
			path = "M0,0L100,7.5,0,15";
				break;
			case 1 :
			path = "M0,0L100,5M100,10L0,15";
				break;
			case 2 :
			path = "M0,2.5L100,7.5,0,12.5";
				break;
			case 3 :
			path = "M0,2.5L100,5M100,10L0,12.5";
				break;
			}			
            svgGroups[s + 1]["/" + c + "/draw/path"] = path;
           	svgGroups[s + 1]["/" + c + "/style/fill"] = "none";
            svgGroups[s + 1]["/" + c + "/style/stroke"] = "black";
            svgGroups[s + 1]["/" + c + "/style/stroke-width"] = 0.6;
            svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/transform/matrix"] = [(msg[11]-msg[9])/-100., 0., 0., 1., msg[11], dest[d]]; //maybe +7.5
			}
			}
			}			
            break;
        case "decresc":
			//decresc 0. 0. 0. 0. 0. 0. 0. 1. 0.5 157.620697 105. 89.620689 false false
			//post("type", msg[12], msg[13], JSON.parse(msg[12]), JSON.parse(msg[13]), "\n");	
			var type = 2 * JSON.parse(msg[12]) + JSON.parse(msg[13]);
			for (var s = 0; s < groupcount; s++)
			{
			var dest = remap(sg[s], msg[1], msg[10]);
			if (dest != -1)
			{
			for (var d = 0; d < dest.length; d++) {
			c++;
			var path ="";
			switch (type){
			case 0 :
			path = "M0,0L100,7.5,0,15";
				break;
			case 1 :
			path = "M0,0L100,5M100,10L0,15";
				break;
			case 2 :
			path = "M0,2.5L100,7.5,0,12.5";
				break;
			case 3 :
			path = "M0,2.5L100,5M100,10L0,12.5";
				break;
			}			
            svgGroups[s + 1]["/" + c + "/draw/path"] = path;
           	svgGroups[s + 1]["/" + c + "/style/fill"] = "none";
            svgGroups[s + 1]["/" + c + "/style/stroke"] = "black";
            svgGroups[s + 1]["/" + c + "/style/stroke-width"] = 0.6;
            svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/transform/matrix"] = [(msg[9]-msg[11])/100., 0., 0., 1., msg[11], dest[d]];
			}
			}
			}			
            break;
        case "stem":
			//stem 83.620689 67. 0.5 Note 0. 0. 0. 0. STEM_UP
			var index = [msg[4], msg[5], msg[6], msg[7], msg[8]];
			if (JSON.stringify(index) === JSON.stringify(oldIndex)) {
			notes++;
			stems[notes] = msg;
			}
			else {
			writeStems();
			stems = {};
			notes = 0;	
			stems[notes] = msg;
			}
			oldIndex = index;
            break;
        case "barline":
			//barline 0. 0.5 20. 51. 363. 1.
			//barline measureIndex zoom x barTop barBottom barThickness
			for (var s = 0; s < groupcount; s++)
			{
				if (typeof sg[s] == "number") 
				{
					var top = boundingBoxTop[0];
					//var bottom = boundingBoxTop[0] + boundingBox[sg[s]] - staffSpacing[sg[s]][1] - staffSpacing[sg[s]][0];
					var bottom = boundingBoxTop[0] + spacing[sg[s]] - staffSpacing[sg[s]][1] - staffSpacing[sg[s]][0] + boundingBox[sg[s]];
				}
				else 
				{
				var top = boundingBoxTop[0];
				var destinationBoxes = 0;
				for (j = 0; j < sg[s].length; j++) destinationBoxes += (spacing[sg[s][j]] + 24);
				//post("staffspacing", sg[s], j, staffSpacing[1][1],  "\n");
				//var bottom = boundingBoxTop[0] + destinationBoxes - staffSpacing[sg[s][j-1]][1] - staffSpacing[sg[s][0]][0];
				var bottom = boundingBoxTop[0] + destinationBoxes - staffSpacing[sg[s][j - 1]][1] - staffSpacing[sg[s][j - 1]][0] + boundingBox[sg[s][j - 1]] - 24;
			}
			c++;			
           	svgGroups[s + 1]["/" + c + "/style/fill"] = "black";
            svgGroups[s + 1]["/" + c + "/style/fill-opacity"] = 1.;
           	svgGroups[s + 1]["/" + c + "/draw/rect"] = [msg[2], top, msg[5] - 0.4, bottom - top];
            svgGroups[s + 1]["/" + c + "/style/stroke"] = "none";
            svgGroups[s + 1]["/" + c + "/style/stroke-width"] = 0.4;
            svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/transform/matrix"] = [1., 0., 0., 1., 0., 0.];			
			}
            break;
        case "RepeatDots":
			//RepeatDots:measureIndex, staffIndex, zoom, x, y, TopLineOfStaffY
			var glyph = fontMap.get("staccato");
			for (var s = 0; s < groupcount; s++)
			{
			var dest = remap(sg[s], msg[1], msg[5]);
			if (dest != -1)
			{
			for (var d = 0; d < dest.length; d++) {
			c++;
		    svgGroups[s + 1]["/" + c + "/style/fill"] = "black";
            svgGroups[s + 1]["/" + c + "/style/fill-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/style/stroke"] = "black";
            svgGroups[s + 1]["/" + c + "/style/stroke-width"] = 1.;
            svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/style/font-family"] = glyph[3];
            svgGroups[s + 1]["/" + c + "/style/font-size"] = glyph[4] - 6;
            svgGroups[s + 1]["/" + c + "/draw/music"] = [glyph[1] + msg[3] - 1.5, glyph[2] + dest[d] + 15.5, glyph[0].charCodeAt(0).toString(16)];
            svgGroups[s + 1]["/" + c + "/transform/matrix"] = [1., 0., 0., 1., 0., 0.];
			c++;
		    svgGroups[s + 1]["/" + c + "/style/fill"] = "black";
            svgGroups[s + 1]["/" + c + "/style/fill-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/style/stroke"] = "black";
            svgGroups[s + 1]["/" + c + "/style/stroke-width"] = 1.;
            svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/style/font-family"] = glyph[3];
            svgGroups[s + 1]["/" + c + "/style/font-size"] = glyph[4] - 6;
            svgGroups[s + 1]["/" + c + "/draw/music"] = [glyph[1] + msg[3] - 1.5, glyph[2] + dest[d] + 21.5, glyph[0].charCodeAt(0).toString(16)];
            svgGroups[s + 1]["/" + c + "/transform/matrix"] = [1., 0., 0., 1., 0., 0.];
			}
			}
			}
            break;
        case "Gliss":
			//Gliss, measureIndex, staffIndex, trackIndex, noteIndex, measureIndex2, staffIndex2, trackIndex2, noteIndex2, zoom, x1, y1, x2, y2
			for (var s = 0; s < groupcount; s++)
			{
			var dest = remap(sg[s], msg[1], msg[10]);
			if (dest != -1)
			{
			for (var d = 0; d < dest.length; d++) {
			c++;
			var dest2 =dest[d] + msg[12] - msg[10];
 			//post("Gliss", msg[10], msg[12], dest2, "\n");	
           	svgGroups[s + 1]["/" + c + "/draw/path"] = "M" + msg[9] + "," + dest[d] + " L" + msg[11] + "," + dest2;
            svgGroups[s + 1]["/" + c + "/style/stroke"] = "black";
            svgGroups[s + 1]["/" + c + "/style/stroke-width"] = 0.4;
            svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/transform/matrix"] = [1., 0., 0., 1., 0., 0.];
            }
			}
			}
			break;
        case "TupletBracket":
			//below: TupletBracket 0. 0. 0. 0. 0. 0. 0. 2. 0.5 80.120689 124.620689 140.620697 185.120697 90. 84. up 3.
			//above: TupletBracket 0. 0. 0. 0. 0. 0. 0. 2. 0.5 87.120689 131.620697 147.620697 192.120697 54. 60. down 3.
  			var orient = (msg[15] == "up") ? -1 : 1;
			for (var s = 0; s < groupcount; s++)
			{
			var dest = remap(sg[s], msg[1], msg[14]);
			if (dest != -1)
			{
			for (var d = 0; d < dest.length; d++) {
			c++;
           	svgGroups[s + 1]["/" + c + "/style/fill"] = "none";
            svgGroups[s + 1]["/" + c + "/style/fill-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/style/stroke"] = "black";
            svgGroups[s + 1]["/" + c + "/style/stroke-width"] = 0.4;
            svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/draw/path"] = "M0,6L0,0,42,0M58,0,100,0,100,6";
            svgGroups[s + 1]["/" + c + "/transform/matrix"] = [(msg[12] - msg[9])/100., 0., 0., orient, msg[9], dest[d] - orient * 6];
			}
			}
			}
            break;
		//OttavaAltaLine OttavaBassaLine OttavaAltaHook OttavaBassaHook
        case "OttavaAltaLine":
			for (var s = 0; s < groupcount; s++)
			{
			var dest = remap(sg[s], msg[1], msg[6]);
			if (dest != -1)
			{
			for (var d = 0; d < dest.length; d++) {
			c++;
            svgGroups[s + 1]["/" + c + "/style/fill"] = "black";
            svgGroups[s + 1]["/" + c + "/style/fill-opacity"] = 1.;
			var path = "";
			for (var i = 0; i < parseInt((msg[7] - msg[5]) / 12); i++) path = path + "M" + (msg[5] + i * 12)  + "," + dest[d] + " L" + (msg[5] + i * 12 + 6)  + "," + dest[d] + ",";
			path = path + "M" + (msg[7] - (msg[7] - msg[5]) % 12)  + "," + dest[d] + " L" + msg[7] + "," + dest[d];
           	svgGroups[s + 1]["/" + c + "/draw/path"] = path;
            svgGroups[s + 1]["/" + c + "/style/stroke"] = "black";
            svgGroups[s + 1]["/" + c + "/style/stroke-width"] = 1.4;
            svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/transform/matrix"] = [1., 0., 0., 1., 0., 0.];
			}
			}
			}
            break;
        case "OttavaAltaHook":
			for (var s = 0; s < groupcount; s++)
			{
			var dest = remap(sg[s], msg[1], msg[6]);
			if (dest != -1)
			{
			for (var d = 0; d < dest.length; d++) {
			c++;
            svgGroups[s + 1]["/" + c + "/style/fill"] = "black";
            svgGroups[s + 1]["/" + c + "/style/fill-opacity"] = 1.;
           	svgGroups[s + 1]["/" + c + "/draw/path"] = "M" + msg[5] + "," + dest[d] + " L" + msg[7] + "," + dest[d] + msg[8] - msg[6];
            svgGroups[s + 1]["/" + c + "/style/stroke"] = "black";
            svgGroups[s + 1]["/" + c + "/style/stroke-width"] = 0.4;
            svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/transform/matrix"] = [1., 0., 0., 1., 0., 0.];
			}
			}
			}
            break;
        case "OttavaBassaLine":
			for (var s = 0; s < groupcount; s++)
			{
			var dest = remap(sg[s], msg[1], msg[6]);
			if (dest != -1)
			{
			for (var d = 0; d < dest.length; d++) {
			c++;
            svgGroups[s + 1]["/" + c + "/style/fill"] = "black";
            svgGroups[s + 1]["/" + c + "/style/fill-opacity"] = 1.;
			var path = "";
			for (var i = 0; i < parseInt((msg[7] - msg[5]) / 12); i++) path = path + "M" + (msg[5] + i * 12)  + "," + dest[d] + " L" + (msg[5] + i * 12 + 6)  + "," + dest[d] + ",";
			path = path + "M" + (msg[7] - (msg[7] - msg[5]) % 12)  + "," + dest[d] + " L" + msg[7] + "," + dest[d];
           	svgGroups[s + 1]["/" + c + "/draw/path"] = path;
            svgGroups[s + 1]["/" + c + "/style/stroke"] = "black";
            svgGroups[s + 1]["/" + c + "/style/stroke-width"] = 0.4;
            svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/transform/matrix"] = [1., 0., 0., 1., 0., 0.];
			}
			}
			}
            break;
        case "OttavaBassaHook":
			for (var s = 0; s < groupcount; s++)
			{
			var dest = remap(sg[s], msg[1], msg[6]);
			if (dest != -1)
			{
			for (var d = 0; d < dest.length; d++) {
			c++;
            svgGroups[s + 1]["/" + c + "/style/fill"] = "black";
            svgGroups[s + 1]["/" + c + "/style/fill-opacity"] = 1.;
           	svgGroups[s + 1]["/" + c + "/draw/path"] = "M" + msg[5] + "," + dest[d] + " L" + msg[7] + "," + dest[d] + msg[8] - msg[6];
            svgGroups[s + 1]["/" + c + "/style/stroke"] = "black";
            svgGroups[s + 1]["/" + c + "/style/stroke-width"] = 0.4;
            svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/transform/matrix"] = [1., 0., 0., 1., 0., 0.];
			}
			}
			}
            break;
        case "printScoreTitle":
			//printScoreTitle 0.5 120. 34. JMSLMaxScore-118
			//post("position", scoreLayout[4], msg[3], text_measure("Times New Roman", 26, msg[3]), "\n");	
			var x = (scoreLayout[4] - text_measure("Times New Roman", 26, msg[3])[0]) / 2;
			for (var s = 0; s < groupcount; s++)
			{
			c++;
			writeAt(s, c, "Times New Roman", 26, x, msg[2] + 15, msg[3]);
			}
            break;
        case "printScoreSubtitle":
			//post("position", scoreLayout[4], msg[3], text_measure("Times New Roman", 12, msg[3]), "\n");	
			var x = (scoreLayout[4] - text_measure("Times New Roman", 12, msg[3])[0]) / 2;
			for (var s = 0; s < groupcount; s++)
 			{
			c++;
			writeAt(s, c, "Times New Roman", 12, x, msg[2] + 15, msg[3]);
			}
           break;
        case "printComposer":
			var x = scoreLayout[4] - text_measure("Times New Roman", 12, msg[3])[0] - 30;
			for (var s = 0; s < groupcount; s++)
			{
			c++;
			writeAt(s, c, "Times New Roman", 12, x, msg[2] + 15, msg[3]);
			}
            break;
        case "RenderMessage":
 			var e = new Dict();
			//e.name = msg[msg.length - 1];
			e.parse(msg[msg.length - 1]);
 			var picster = e.get("picster-element");
			if (picster.contains("expression")) picster.remove("expression");
			var keys = [].concat(picster.getkeys());
			switch (msg[0]){
				case "note" :
            	var RenderMessageOffset = [msg[5], msg[6]];
				break;
				case "staff" :
            	var RenderMessageOffset = [msg[3], msg[4]];
				break;
				case "measure" :
            	var RenderMessageOffset = [msg[2], msg[3]];
				break;
			}
			for (var s = 0; s < groupcount; s++) {
			if (msg[0] != "measure") var dest = remap(sg[s], msg[2], RenderMessageOffset[1]);
			else var dest = [].concat(RenderMessageOffset[1]);
			if (dest != -1)
			{
			for (var d = 0; d < dest.length; d++) {
			for (var k = 0; k < keys.length; k++) {
            var dict = picster.get(keys[k]);
            var commands = dict.get("commands");
         	var info = dict.get("info");
            var ckeys = commands.getkeys();
           	var ikeys = info.getkeys();
					var path = "";
					var mode = "none";
            		c++;
                    for (var i = 0; i < ckeys.length; i++) {
                     var command = commands.get(ckeys[i]);
                     switch (command[0]) {
                            case "color":
                                svgGroups[s + 1]["/" + c + "/style/stroke"] = "rgb("+ Math.round(command[1] * 255) + "," + Math.round(command[2] * 255) + "," + Math.round(command[3] * 255) + ")";
                                svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = command[4];
                                svgGroups[s + 1]["/" + c + "/style/fill"] = "none";
								var svgcolor = "rgb("+ Math.round(command[1] * 255) + "," + Math.round(command[2] * 255) + "," + Math.round(command[3] * 255) + ")";
             					var svgopacity = command[4];
                   				break;
                            case "pen_size":
                                svgGroups[s + 1]["/" + c + "/style/stroke-width"] = command[1];
                                break;
                            case "line":
                                svgGroups[s + 1]["/" + c + "/draw/path"] = "M" + command[1] + "," + command[2] + " L" + command[3] + "," + command[4];
                                break;
                            case "rectangle":
                                svgGroups[s + 1]["/" + c + "/draw/rect"] = [command[1] - command[3]/2., command[2] - command[4]/2., command[3], command[4]];
                                break;
                            case "ellipse":
                                svgGroups[s + 1]["/" + c + "/draw/ellipse"] = [command[1], command[2], command[3]/2., command[4]/2.];
                                break;
                           case "ovalarc":
								//$5 $6 $1 $2 $3 $4
								//ovalarc(command[5], command[6], command[1], command[2], command[3], command[4]);
                                svgGroups[s + 1]["/" + c + "/draw/path"] = ovalarc(command[5], command[6], command[1], command[2], command[3], command[4]);
                                break;
                            case "f": //should be "fill" but this get trunkated to f as it doesn't have a value.
 							//set fill color here
 								svgGroups[s + 1]["/" + c + "/style/fill"] = svgcolor;
                                svgGroups[s + 1]["/" + c + "/style/fill-opacity"] = svgopacity;
                               break;
                            case "textcolor":
                                svgGroups[s + 1]["/" + c + "/style/stroke"] = "rgb("+ Math.round(command[1] * 255) + "," + Math.round(command[2] * 255) + "," + Math.round(command[3] * 255) + ")";
                                svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = command[4];
                                svgGroups[s + 1]["/" + c + "/style/fill"] = "rgb("+ Math.round(command[1] * 255) + "," + Math.round(command[2] * 255) + "," + Math.round(command[3] * 255) + ")";
                                svgGroups[s + 1]["/" + c + "/style/fill-opacity"] = command[4];
            					svgGroups[s + 1]["/" + c + "/style/stroke-width"] = 0.;
                               break;
                            case "font":
            					svgGroups[s + 1]["/" + c + "/style/font-family"] = command[1];
            					svgGroups[s + 1]["/" + c + "/style/font-size"] = command[2];
								if (command.length == 3) svgGroups[s + 1]["/" + c + "/style/font-style"] = ["normal", "normal"];
								else if (command.length == 4) svgGroups[s + 1]["/" + c + "/style/font-style"] = [command[3], "normal"];
								else if (command.length == 5) svgGroups[s + 1]["/" + c + "/style/font-style"] = [command[3], command[4]];
								mode = "Text";
                            	break;
                            case "write":
  							//post("text", dest, command[1], "\n");
          					svgGroups[s + 1]["/" + c + "/draw/text"] = [moveTo[0], moveTo[1], command[1]];
 								mode = "none";
                               	break;
							//accum data and create message after switch loop
                            case "move_to":
 								if (mode == "Text") var moveTo = [command[1], command[2]];
								else {
 								if (mode != "M") path = path + "M";
								path = path + command[1] + "," + command[2];
								mode = "M";
								}
                                break;
                            case "line_to":
								if (mode != "L") path = path + "L";
								else path = path + ",";
								path = path + command[1] + "," + command[2];
								mode = "L";
                                break;
                            case "curve_to":
 								if (mode != "C") path = path + "C";
								else path = path + ",";
								path = path + command[1] + "," + command[2] + "," + command[3] + "," + command[4]+  "," + command[5] + "," + command[6];
								mode = "C";
                               break;
                            case "raster":
								//dims and path need to be written to object and retrieved when svg is written
								imageTable[command[1].split('/')[command[1].split('/').length - 1]] = [command[1].substring(command[1].indexOf(":") + 1), info.get("a")[0], info.get("b")[1]];
								svgGroups[s + 1]["/" + c + "/draw/img"] = mediaFolder + command[1].split('/')[command[1].split('/').length - 1];
                                break;
                            case "svg":
								imageTable[command[1].split('/')[command[1].split('/').length - 1]] = [command[1].substring(command[1].indexOf(":") + 1), info.get("a")[0], info.get("b")[1]];
								svgGroups[s + 1]["/" + c + "/draw/img"] = mediaFolder + command[1].split('/')[command[1].split('/').length - 1];
                                break;
                        	}
						}
 						if (path != "") svgGroups[s + 1]["/" + c + "/draw/path"] = path;
            			var origin = info.get("origin");
            			var transform = info.get("transform");
						//transform[4] + origin[1] + dest[d]
						svgGroups[s + 1]["/" + c + "/transform/matrix"] = [transform[0], transform[1], transform[2], transform[3], transform[4] + origin[0] + RenderMessageOffset[0], transform[4] + origin[1] + dest[d]];
                   }
				}
			}
			}
            break;
		case "startdump" :
			dump = [];
			json = {};
			dumpflag = 1;
		break;
		case "enddump" :
			if (msg[0] == "getMeasureInfo") {
			json = xml2json(dump.join(" "));
			tempo = json["measure"]["TEMPO"];
			timesig = json["measure"]["TIMESIG"].split(" ");
			}
			else if (msg[0] == "getStaffInfo") {
			json = xml2json(dump.join(" "));
			extendedStaffLines[msg[2]] = [json["staff"]["EXTENDEDLINESABOVE"], json["staff"]["EXTENDEDLINESBELOW"]];
			clefList[msg[2]] = json["staff"]["CLEF"];
			}
			dumpflag = 0;
			break;
       case "endRenderDump":
			outlet(2, "endRenderDump");
          	outlet(1, "getTitle");
           	outlet(1, "getComposer");	
			/*		
			var f = new Folder(pathToScript+mediaFolder);
			var found = 0;
			while (!f.end) {
 			if (f.filename == scoreTitle + ".instructions.svg") {
				found = 1;
				break;
			}
   			f.next();
  			}
			f.close();
			*/
			writeStems();
			writeStaffLines();
			output.clear();
			annotation.clear();
			outlet(1, "getScoreAnnotation");
			var clear = {"key" : "remove", "val" : "main"};
			var joutput = {};
				if (target[0] == "file") {
					if (target[1] == "svg") {
					writeSVG();
					for (var s = 1; s <= groupcount; s++)
					{
					var val = {
        				"new" : "use",
        				"id" : "score",
        				"href" : mediaFolder + svgFile+"#" + s
   					}
					joutput[s] = [clear, {"key" : "svg", "val" : val}];
					}
					output.parse(JSON.stringify(joutput));
					outlet(0, "dictionary", output.name);
					}
					//else {	} create a method for writing JSONs to file
				}
            else {
			var j = 1;
			var oldID = 0;
			//insert new code here:
			for (var s = 1; s <= groupcount; s++) {
			//for (var s = 1; s <= 120; s++) {
			outlet(2, "groupcount", s);
			var virgin = 1;
			var val = [{
					"parent" : "main-svg",
					"new" : "g",
					"id" : "back"
				}
				, 	{
					"parent" : "main-svg",
					"new" : "g",
					"id" : "main"
				}
				, 	{
					"parent" : "main-svg",
					"new" : "g",
					"id" : "overlay"
				}
			];
			var keys = Object.keys(svgGroups[s]);
			for (var i = 0; i < keys.length; i++) {
			outlet(2, "keys", s, svgGroups[s], i, svgGroups[s][keys[i]]);
			var oscAddress = keys[i].split('/');
			var id = parseInt(oscAddress[1]);
			if (!isNaN(id)){
			var svgElement = oscAddress[3];
			var svgAttribute = svgGroups[s][keys[i]];
			if (id == oldID) {
			if (oscAddress[2] != "draw") {
				svg.replace(j + "::" + svgElement, svgAttribute);
				j++;
				}
			else svg.replace(0 + "::" + svgElement, svgAttribute);
			}
			else {
			//post("svg", id, JSON.stringify(svgGroups[s]), "\n");
			if (!virgin) val.push(createJSON(j, id - 1));
				j = 1;
				svg.clear();	
				if (oscAddress[2] != "draw") {
				svg.replace(j + "::" + svgElement, svgAttribute);
				j++;
				}
			else svg.replace(0 + "::" + svgElement, svgAttribute);
			virgin = 0;
			}
			oldID = id;	 
			}
			}
			val.push(createJSON(j, id));
			if (prop && shownClefs) {
			if (annotation.contains("staff-"+sg[s - 1]+"::clef") && annotation.get("staff-"+sg[s - 1]+"::clef") != "default")
			{
			var ann = annotation.get("userclefs::"+annotation.get("staff-"+sg[s - 1]+"::clef"));
			for (var i = 0; i < ann.get("characters").length; i++){
			var dest = remap(sg[s - 1], s - 1 , ann.get("offsets")[i * 2 + 1] + (boundingBoxTop[sg[s - 1]] + (clefs[clefList[sg[s - 1]]][1] + ann.get("stafflines::above") * 6)));
			//post("y", dest, typeof dest, 23 + parseInt(dest), "\n");
 			val.push({
                    "id": "clef_"+i,
                    "parent": "overlay",
                    "new": "text",
					"x" : 60 + ann.get("offsets")[i * 2 + 0],
					"y" : 23 + parseInt(dest),
					"child" : ann.get("characters")[i],
					"style" : 					{
						"font-family" : ann.get("font")[0],
						"font-size" : ann.get("font")[1]
					}
					,
					"transform" : "matrix("+zoom+",0,0,"+zoom+",0,0)"
			});
			}
			}
			else {
			val.push({
                    "id": "clef",
                    "parent": "overlay",
                    "new": "text",
					"x" : 60,
					"y" : stafflines[0][0][clefs[clefList[s - 1]][1]][1],
					"child" : clefs[clefList[sg[s - 1]]][0],
					"style" : 					{
						"font-family" : "Bravura",
						"font-size" : 22
					}
					,
					"transform" : "matrix("+zoom+",0,0,"+zoom+",0,0)"
			});
			}
			}

			if (shownTitle != 0) {
			val.push({
                    "id": "title",
                    "parent": "overlay",
                    "new": "text",
					"x" : 300,
					"y" : 40,
					"child" : composer+":blah "+scoreTitle,
					"style" : 					{
						"font-family" : "Times New Roman",
						"font-size" : 30
					}
					,
					"transform" : "matrix("+zoom+",0,0,"+zoom+",0,0)"
			});
			}
			joutput[s] = [clear, {"key" : "svg", "val" : val}];
			outlet(2, "joutput", s);
			gc();
			}
			//end new code
			output.parse(JSON.stringify(joutput));
			outlet(0, "dictionary", output.name);
			outlet(2, "dict");	
			}
			if (prop) scroll("playhead");
            break;
        default:
		if (dumpflag == 1) {
			dump.push(messagename);
		}
		else {
			var msgname = messagename;
		if (prop) {
			if (msgname == "noteheadwhite" || msgname == "noteheadwhole") msgname = "noteheadblack";
			if (msgname == "dot") return;
		}
		/*
		if (msgname == "linesegment") 
		{
			msgname = "noteheadx";
			msg = msg.slice(1);
		}
		*/
		//post("msgname", msgname, msg, "\n");
		if (fontMap.contains(msgname)) var glyph = fontMap.get(msgname);
		else if (fontExtras.contains(msgname)) var glyph = fontExtras.get(msgname); 
		else return;
		if ((msgname == "tr" || msgname == "al" || msgname == "te" || msgname == "ba" || msgname == "pe") && annotation.contains("staff-"+msg[5]+"::clef") && annotation.get("staff-"+msg[5]+"::clef") != "default")
		{
		var ann = annotation.get("userclefs::"+annotation.get("staff-"+msg[5]+"::clef"));
		for (var i = 0; i < ann.get("characters").length; i++){
 		glyph[i * 5] = ann.get("characters")[i];			
		glyph[i * 5 + 1] = ann.get("offsets")[i * 2 + 0];
		glyph[i * 5 + 2] = ann.get("offsets")[i * 2 + 1];
 		glyph[i * 5 + 3] = ann.get("font")[0]; 
		glyph[i * 5 + 4] = ann.get("font")[1];
		}
		}
		if (msgname.indexOf("staffnumber") != -1)
			{
	            //post("msg", msg, "\n");
				if (msg[msg.length - 1] < instrumentNames.length && oldstaff != msg[msg.length - 1]){
				glyph[0] = instrumentNames[msg[msg.length - 1]];
				glyph[1] = glyph[1] - text_measure("Arial", 12, instrumentNames[msg[msg.length - 1]])[0];
				oldstaff = msg[msg.length - 1];
				}
				else return;
			}
		var multiple = glyph.length / 5;
			for (var s = 0; s < groupcount; s++)
			{
			var dest = remap(sg[s], msg[5], msg[1]);
			if (dest != -1)
			{
			for (var d = 0; d < dest.length; d++) {
			for (var i = 0; i < multiple; i++) {
			c++;
		    svgGroups[s + 1]["/" + c + "/style/fill"] = "rgb("+ frgb[0] + "," + frgb[1] + "," + frgb[2] + ")";;
            svgGroups[s + 1]["/" + c + "/style/fill-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/style/stroke-width"] = 1.;
            svgGroups[s + 1]["/" + c + "/style/stroke-opacity"] = 1.;
            svgGroups[s + 1]["/" + c + "/style/font-family"] = glyph[i*5+3];
            svgGroups[s + 1]["/" + c + "/style/font-size"] = glyph[i*5+4];
			if (typeof glyph[i*5+0] == "number") svgGroups[s + 1]["/" + c + "/draw/text"] = [0, 0, glyph[i*5+0].toString()];
            else {
				if (glyph[0].length == 1) svgGroups[s + 1]["/" + c + "/draw/music"] = [0, 0, glyph[i*5+0].charCodeAt(0).toString(16)];
				else svgGroups[s + 1]["/" + c + "/draw/text"] = [0, 0, glyph[i*5+0]];
 				}
           	svgGroups[s + 1]["/" + c + "/transform/matrix"] = [msg[2] * 2., 0., 0., msg[2] * 2., glyph[i*5+1] + msg[0], glyph[i*5+2] + dest[d]];
			}
			}
			}
		  }
       }
	}
}

function proportional(p)
{
 	prop = p;
}

function createJSON(j, id) 
{
			var sub = {};
			sub.parent = "main";
			for (var k = 0; k < j ; k++){
			var elem = svg.get(k).getkeys();
			var attr = svg.get(k).get(elem);
			if (k == 0) {
			switch (elem){
			case "path" :
			sub.new = elem;
			sub.id = "_" + id;
			sub.d = attr;
				break;
			case "rect" :
			sub.new = elem;
			sub.id = "_" + id;
			sub.x = attr[0];
			sub.y = attr[1];
			sub.width = attr[2];
			sub.height = attr[3];
				break;
			case "ellipse" :
			sub.new = elem;
			sub.id = "_" + id;
			sub.cx = attr[0];
			sub.cy = attr[1];
			sub.rx = attr[2];
			sub.ry = attr[3];
				break;
			case "text" :
			sub.new = elem;
			sub.id = "_" + id;
			sub.x = attr[0];
			sub.y = attr[1];
			sub.child = htmlEntities(attr[2]);
				break;				
			case "music" :
			sub.new = "text";
			sub.id = "_" + id;
			sub.x = attr[0];
			sub.y = attr[1];
			sub.child = String.fromCharCode("0x" + attr[2]);
				break;				
			case "img" :
			sub.new = "image";
			sub.id = "_" + id;
				//all images need to reside in public folder and fetched via http
				//post(attr, imageTable[attr], "\n");
			//post("attr", attr, "\n");
			sub.x = 0;
			sub.y = 0;
			sub.width = imageTable[attr][1];
			sub.height = imageTable[attr][2];
			sub.href = attr;
				break;				
				}
			sub.style = {};
			}
			else {
				//if (elem == "matrix") if (JSON.stringify(attr) != "[1,0,0,1,0,0]") post("json", JSON.stringify(attr), "\n");
				//if (elem == "matrix") if (JSON.stringify(attr) != "[1., 0., 0., 1., 0., 0.]") sub.transform = elem + "(" + attr + ")";
				if (elem == "matrix") sub.transform = elem + "(" + attr + ")";
			//filter defaults
				else {
					switch (elem) {
						case "fill" :
						if (attr != "black") sub.style[elem] = attr;
						break;
						case "fill-opacity" :
						if (attr != 1.) sub.style[elem] = attr;
						break;
						case "stroke" :
						if (attr != "black") sub.style[elem] = attr;
						break;
						case "stroke-opacity" :
						if (attr != 1.) sub.style[elem] = attr;
						break;
						case "stroke-width" :
						if (attr != 1.) sub.style[elem] = attr;
						break;
						default:
						sub.style[elem] = attr;	
					}
				}
			}
		}
		return sub;
}
createJSON.local = 1;

function writeJSON(path)
{
	output.export_json(path);
}

function writePNG()
{
	outmatrix.dim = [scoreLayout[4], scoreLayout[5]];
	mgraphics.dim = [scoreLayout[4], scoreLayout[5]];
	//post("dim", outmatrix.dim, "\n");
	mgraphics.set_source_rgba(1., 1., 0.94, 1.);
	mgraphics.paint();
 	mgraphics.identity_matrix();
	var j = 1;
	var oldID = 1;
	var virgin = 1;
	svg.clear();	
	var keys = Object.keys(joutput);
	for (var i = 0; i < keys.length; i++) {
	var oscAddress = keys[i].split('/');
	var id = parseInt(oscAddress[2]);
	if (!isNaN(id)){
	var svgElement = oscAddress[4];
	var svgAttribute = joutput[keys[i]];
	if (id == oldID) {
	if (oscAddress[3] != "draw") {
		svg.replace(j + "::" + svgElement, svgAttribute);
		j++;
		}
	else svg.replace(0 + "::" + svgElement, svgAttribute);
	}
	else {
		if (!virgin) if (svg.get(0).getkeys() != "img") createSVG(j);
		else {
		mgraphics.transform(svg.get(1).get(svg.get(1).getkeys()));		
		mgraphics.image_surface_draw(svg.get(0).get(svg.get(0).getkeys()));
 		mgraphics.identity_matrix();
		}
		j = 1;
		svg.clear();	
		if (oscAddress[3] != "draw") {
		svg.replace(j + "::" + svgElement, svgAttribute);
		j++;
		}
	else svg.replace(0 + "::" + svgElement, svgAttribute);
	virgin = 0;
	}
	oldID = id;	 
	}
	}
	if (svg.get(0).getkeys() != "img") createSVG(j);
	else {
	mgraphics.transform(svg.get(1).get(svg.get(1).getkeys()));		
	mgraphics.image_surface_draw(svg.get(0).get(svg.get(0).getkeys()));
	mgraphics.identity_matrix();
	}
	mgraphics.matrixcalc(outmatrix, outmatrix);
	outmatrix.exportimage("Macintosh HD:/Users/Shared/Max 8/Library/MaxScore/node.js/hfmt-drawsocket/examples/basic-drawsocket/public/media/test.png");
	}

function createSVG(j) {
		var svg_string = "";
		for (var k = 0; k < j ; k++){
		var elem = svg.get(k).getkeys();
		var attr = svg.get(k).get(elem);
		//post("svg", elem, attr, "\n");
		if (k == 0) {
			switch (elem){
			case "path" :
				svg_string = "<svg><path " + "d=\"" + attr + "\" ";
				break;
			case "rect" :
				svg_string = "<svg><rect x=\"" + attr[0] + "\" y=\"" + attr[1] + "\" width=\"" + attr[2] + "\" height=\"" + attr[3] + "\" ";
				break;
			case "ellipse" :
				svg_string = "<svg><ellipse cx=\"" + attr[0] + "\" cy=\"" + attr[1] + "\" rx=\"" + attr[2] + "\" ry=\"" + attr[3] + "\" ";
				break;
			case "text" :
				svg_string = "<svg><text x=\"" + attr[0] + "\" y=\"" + attr[1] + "\" ";
				break;				
			case "music" :
				svg_string = "<svg><text x=\"" + attr[0] + "\" y=\"" + attr[1] + "\" ";
				break;				
			}
		}
		else {
			if (elem == "matrix") svg_string +=  "transform=\"" + elem + "(" + attr + ")\" ";
			else svg_string += elem + "=\"" + attr + "\" ";
			}
		}
		if (svg.get(0).getkeys() == "music") svg_string += ">" + String.fromCharCode("0x" + svg.get(0).get(svg.get(0).getkeys())[2]) + "</text></svg>";
		else if (svg.get(0).getkeys() == "text") svg_string += ">" + htmlEntities(svg.get(0).get(svg.get(0).getkeys())[2]) + "</text></svg>";
		else svg_string += "/></svg>";
		//post("svg", svg_string, "\n");
		mgraphics.svg_create("svg_string", svg_string);
		mgraphics.svg_render("svg_string");
}
createSVG.local = 1;

function writeSVG()
{
	f = new File(pathToScript + mediaFolder + svgFile, "write", "TEXT");
	post("path", pathToScript + mediaFolder + svgFile, "\n");
	f.open();
	f.eof = 0;
	f.writeline("<?xml version=\"1.0\" encoding=\"utf-8\"?>");
	f.writeline("<!DOCTYPE svg PUBLIC \"-//W3C//DTD SVG 1.1//EN\" \"http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd\">");
	f.writeline("<svg width=\"" + scoreLayout[4] + "px\" height=\"" + scoreLayout[5] + "px\" viewBox=\"0 0 " + scoreLayout[4] + " " + scoreLayout[5] + "\" style=\"background: ivory\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"1.1\">");
	for (var s = 1; s <= groupcount; s++) {
	var j = 1;
	var oldID = 0;
	var virgin = 1;
	f.writeline("<g id=\"" + s +  "\">");	
	var keys = Object.keys(svgGroups[s]);
	for (var i = 0; i < keys.length; i++) {
	var oscAddress = keys[i].split('/');
	var id = parseInt(oscAddress[1]);
	if (!isNaN(id)){
	var svgElement = oscAddress[3];
	var svgAttribute = svgGroups[s][keys[i]];
	if (id == oldID) {
	if (oscAddress[2] != "draw") {
		svg.replace(j + "::" + svgElement, svgAttribute);
		j++;
		}
	else svg.replace(0 + "::" + svgElement, svgAttribute);
	}
	else {
	//post("id != oldID \n");
	if (!virgin) f.writeline(createSVG2(j));
		j = 1;
		svg.clear();	
		if (oscAddress[2] != "draw") {
		svg.replace(j + "::" + svgElement, svgAttribute);
		j++;
		}
	else svg.replace(0 + "::" + svgElement, svgAttribute);
	virgin = 0;
	}
	oldID = id;	 
	}
	}
	f.writeline(createSVG2(j));
	f.writeline("</g>");
	}
	f.writeline("</svg>");	
	f.close();
}

function createSVG2(j) {
		var svg_string = "";
		for (var k = 0; k < j ; k++){
		var elem = svg.get(k).getkeys();
		var attr = svg.get(k).get(elem);
		if (k == 0) {
			switch (elem){
			case "path" :
				svg_string = "<path d=\"" + attr + "\" ";
				break;
			case "rect" :
				svg_string = "<rect x=\"" + attr[0] + "\" y=\"" + attr[1] + "\" width=\"" + attr[2] + "\" height=\"" + attr[3] + "\" ";
				break;
			case "ellipse" :
				svg_string = "<ellipse cx=\"" + attr[0] + "\" cy=\"" + attr[1] + "\" rx=\"" + attr[2] + "\" ry=\"" + attr[3] + "\" ";
				break;
			case "text" :
				svg_string = "<text x=\"" + attr[0] + "\" y=\"" + attr[1] + "\" ";
				break;				
			case "music" :
				svg_string = "<text x=\"" + attr[0] + "\" y=\"" + attr[1] + "\" ";
				break;				
			//<image x="0." y="0." width="22.0" height="198.0" xlink:href="file:///Users/Shared/Max 7/Packages/MaxScore/media/Images/brace.png" preserveAspectRatio="none" transform="matrix(0.2762,0.0000,0.0000,0.1674,23.7575,49.7250)"/>
			case "img" :
				//all images need to reside in public folder and fetched via http
				//post(attr, imageTable[attr], "\n");
				svg_string = "<image x=\"" + 0. + "\" y=\"" + 0. + "\" width=\"" + imageTable[attr][1] + "\" height=\"" + imageTable[attr][2] + "\" xlink:href=\"file://" + imageTable[attr][0] + "\" ";
				break;				
			}
		}
		else {
			if (elem == "matrix") svg_string +=  "transform=\"" + elem + "(" + attr + ")\" ";
			else svg_string += elem + "=\"" + attr + "\" ";
			}
		}
		if (svg.get(0).getkeys() == "music") svg_string += ">" + String.fromCharCode("0x" + svg.get(0).get(svg.get(0).getkeys())[2]) + "</text>";
		else if (svg.get(0).getkeys() == "text") svg_string += ">" + htmlEntities(svg.get(0).get(svg.get(0).getkeys())[2]) + "</text>";
		else svg_string += "/>";
		//post("svg", svg_string, svg.get(0).get(svg.get(0).getkeys())[2], "\n");
		return svg_string;
}
createSVG2.local = 1;


function htmlEntities(str) {
    return String(str).replace(/&/g, "&amp;").replace(/</g, "&lt;").replace(/>/g, "&gt;").replace(/\"/g, "&quot;"); //"
}

function ovalarc(startangle, endangle, cx, cy, r1, r2) {
//var endangle = startangle + angle;
		startangle += Math.PI/2.;
		endangle += Math.PI/2.;
        // Compute the two points where our wedge intersects the circle.
        // These formulas are chosen so that an angle of 0 is at 12 o'clock
        // and positive angles increase clockwise.
        var x1 = cx + r1 * Math.sin(startangle);
        var y1 = cy - r2 * Math.cos(startangle);
        var x2 = cx + r1 * Math.sin(endangle);
        var y2 = cy - r2 * Math.cos(endangle);
        // This is a flag for angles larger than than a half-circle
        var big = 0;
//        if (endangle - startangle > Math.PI) big = 1;
		if (endangle - startangle < 0) endangle =+ Math.PI*2;
		if (endangle - startangle > Math.PI) big = 1;

        // This string holds the path details
        var d = "M" + cx + "," + cy + "M" + x1 + "," + y1 + "A" + r1 + "," + r2 + ",0 ," + big + ",1 " + x2 + "," + y2;           
//            + " Z\"";                       // Close path back to (cx,cy)
 		return d;
}


function cursor()
{
	var msg = arrayfromargs(arguments);
	cursors.clear();
	jcursors = {};
	var id = msg[0];
	switch (msg[1]){
	case "countdown":
		
		break;		
	case "start":
		var color = cursorAttr.get(id + "::@color");
		var range = [];
		var svgkey = {
					"key" : "svg",
					"val" : {
					"parent" : "overlay",
					"id" : "cursor" + id,
					"style" : {
						"fill" : "rgb(" + Math.round(color[0] * 255) + "," + Math.round(color[1] * 255) + "," + Math.round(color[2] * 255) + ")",
						"fill-opacity" : Math.round(color[3] * 255)
						}
					}
				};
		// why? for (var j = cursorAttr.get(id + "::@begin")[1]; j <= cursorAttr.get(id + "::@end")[1]; j++) {						
		for (var s = 0; s < groupcount; s++) {
		var timeline = {
			"key" : "tween/timeline",
			"val" : {
				"id" : "tween" + id,
					"init" : {
					"paused" : "true",
					"yoyo" : "false",
					"repeat" : cursorAttr.get(id + "::@passes") - 1
					}
				}
			};
		var tweens = [];
		var m = 0;
		for (var n = cursorAttr.get(id + "::@begin")[0]; n <= cursorAttr.get(id + "::@end")[0]; n++) {
		tweens[m] = {
			"target" : "#cursor" + id,
			"dur" : 0.0001,
			"vars" : {
				"x" : cursorAttr.get(id + "::@trajectory::" + n)[0] - cursorAttr.get(id + "::@trajectory::" + cursorAttr.get(id + "::@begin")[0])[0],
				"ease" : "linear"
			}
		};
		tweens[m + 1] = {
			"target" : "#cursor" + id,
			"dur" : (cursorAttr.get(id + "::@trajectory::" + n)[2] / 1000) - 0.00001,
			"vars" : {
				"x" : cursorAttr.get(id + "::@trajectory::" + n)[1] - cursorAttr.get(id + "::@trajectory::" + cursorAttr.get(id + "::@begin")[0])[0],
				"ease" : "linear"
			}
		};
		m += 2;
		}
		timeline.val.tweens = tweens;
		var start = {
			"key" : "tween",
			"val" : {
				"cmd" : "start",
				"id" : "tween" + id
					}
				};
		jcursors[s + 1] = [svgkey, timeline, start];
		}
		cursors.parse(JSON.stringify(jcursors));
		outlet(0, "dictionary", cursors.name);
		//}
		break;
	case "reset":
		var color = cursorAttr.get(id + "::@countdowncolor");
		var range = [];
		for (var j = cursorAttr.get(id + "::@begin")[1]; j <= cursorAttr.get(id + "::@end")[1]; j++) {
		for (var s = 0; s < groupcount; s++)
		{
		if (typeof sg[s] == "number") range[0] = sg[s];
		else for (var k = 0; k < sg[s].length; k++) range[k] = sg[s][k];
		if (range.indexOf(j) != -1){
		var extent = cursorExtent(sg[s], cursorAttr.get(id + "::@begin")[1], cursorAttr.get(id + "::@end")[1]);
		if (extent != -1) {
		var svgkey = {
					"key" : "svg",
					"val" : {
					"parent" : "overlay",
					"id" : "cursor" + id,
					"style" : {
						"fill" : "rgb(" + Math.round(color[0] * 255) + "," + Math.round(color[1] * 255) + "," + Math.round(color[2] * 255) + ")",
						"fill-opacity" : Math.round(color[3] * 255)
						}
					}
				};
		var reset = {
			"key" : "tween",
			"val" : {
				"cmd" : "reset",
				"id" : "tween" + id
					}
				};
		jcursors[s + 1] = [svgkey, reset];
		}
		}
		}
		}	
		cursors.parse(JSON.stringify(jcursors));
		outlet(0, "dictionary", cursors.name);
		break;
	case "stop":
		for (var s = 0; s < groupcount; s++)
		{
		jcursors[s + 1] = {
			"key" : "tween",
			"val" : {
				"cmd" : "stop",
				"id" : "tween" + id
					}
				};
		}
		cursors.parse(JSON.stringify(jcursors));
		outlet(0, "dictionary", cursors.name);
		break;
	case "resume":
		for (var s = 0; s < groupcount; s++)
		{
		jcursors[s + 1] = {
			"key" : "tween",
			"val" : {
				"cmd" : "play",
				"id" : "tween" + id
					}
				};
		}
		cursors.parse(JSON.stringify(jcursors));
		outlet(0, "dictionary", cursors.name);		
		break;
	case "blink":
		var range = [];
		for (var j = cursorAttr.get(id + "::@begin")[0]; j <= cursorAttr.get(id + "::@end")[0]; j++) range.push(j);
		for (var s = 0; s < groupcount; s++)
		{
		if (msg[2]) {
		jcursors[s + 1] = {};
		if (range.indexOf(s) != -1) {
		var timeline = {
			"key" : "tween/timeline",
			"val" : {
				"id" : "tween" + id,
					"init" : {
					"paused" : "true",
					"yoyo" : "false",
					"repeat" : -1
					}
				}
			};
		//var tweens = [];
		var tweens = [
		{
			"target" : "#cursor" + id,
			"dur" : 0.00001,
			"vars" : {
				"opacity" : 0,
				"ease" : "linear" }
		},
		{
			"target" : "#cursor" + id,
			"dur" : 0.59999,
			"vars" : {
				"opacity" : 0,
				"ease" : "linear" }
		},
		{
			"target" : "#cursor" + id,
			"dur" : 0.00001,
			"vars" : {
				"opacity" : 1,
				"ease" : "linear" }
		},
		{
			"target" : "#cursor" + id,
			"dur" : 0.59999,
			"vars" : {
				"opacity" : 1,
				"ease" : "linear" }
		}
			];
		}
		timeline.val.tweens = tweens;
		var start = {
			"key" : "tween",
			"val" : {
				"cmd" : "start",
				"id" : "tween" + id
					}
				};
		jcursors[s + 1] = [timeline, start];
			}
			else {
			jcursors[s + 1] = [{
			"key" : "tween",
			"val" : {
				"cmd" : "stop",
				"id" : "tween" + id
					}
				},
				{
					"key" : "svg",
					"val" : {
					"parent" : "overlay",
					"id" : "cursor" + id,
					"style" : {
						"fill-opacity" : 1
						}
					}
				}];
				}			
			}
		cursors.parse(JSON.stringify(jcursors));
		outlet(0, "dictionary", cursors.name);		
		break;
	case "show":
		var range = [];
		for (var j = cursorAttr.get(id + "::@begin")[0]; j <= cursorAttr.get(id + "::@end")[0]; j++) range.push(j);
		for (var s = 0; s < groupcount; s++)
		{
		jcursors[s] = {};
		if (range.indexOf(s) != -1){
		jcursors[s + 1] = {
					"key" : "svg",
					"val" : {
					"parent" : "overlay",
					"id" : "cursor" + id,
					"style" : {
						"fill-opacity" : msg[2]
						}
					}
				};
			}
		}			
		cursors.parse(JSON.stringify(jcursors));
		outlet(0, "dictionary", cursors.name);	
		break;
	default :
	var occurence = [];
	for (var i = 1; i < msg.length; i++){
		if (msg[i].toString().indexOf("@") != -1) occurence.push(i); 
		}
		//send defaults once:
		cursorAttr.replace(id + "::@begin", [0, 0]);	
		cursorAttr.replace(id + "::@end", [0, 0]);	
		cursorAttr.replace(id + "::@passes", 1);	
		cursorAttr.replace(id + "::@timestretch", 1);	
		cursorAttr.replace(id + "::@color", [0.25, 1, 0.25, 1]);	
		cursorAttr.replace(id + "::@countdowncolor", [1, 0, 0, 1]);	
		cursorAttr.replace(id + "::@shape", "line");	
		cursorAttr.replace(id + "::@notevalue", 1.);	
		for (var i = 0; i < occurence.length; i++){
		var attribute =  msg.slice(occurence[i], occurence[i+1]);
		//post("attribute", id + "::" + attribute[0], attribute.slice(1, attribute.length), "\n");
		cursorAttr.replace(id + "::" + attribute[0], attribute.slice(1, attribute.length));
		}
		var stretch = cursorAttr.get(id + "::@timestretch");
		var startStaff = cursorAttr.get(id + "::@begin")[1];
		var endStaff = cursorAttr.get(id + "::@end")[1];
//		for (var i = cursorAttr.get(id + "::@begin")[1]; i <= cursorAttr.get(id + "::@end")[1]; i++) {
			for (var j = cursorAttr.get(id + "::@begin")[0]; j <= cursorAttr.get(id + "::@end")[0]; j++){
			outlet(1, "getMeasureInfo", j);
			staffBoundingFlag = 1;
			outlet(1, "getStaffBoundingInfo", j, 0);
			staffBoundingFlag = 0;
			//x y width height marginX
			//[20,147,360,24,83]
			//calculate distance to travel 
			//post("tempo/timesig", tempo, timesig, stretch, parseFloat(tempo),  parseFloat(timesig[0]), parseFloat(timesig[1]), "\n");
			//post("travel from", staffBoundingInfo[4], "to", staffBoundingInfo[0] + staffBoundingInfo[2], "in", cursorAttr.get(id + "::@timestretch") * (60000 / parseFloat(tempo) * (4 * parseFloat(timesig[0]) / parseFloat(timesig[1]))), "msec \n");		
			var from = staffBoundingInfo[4];
			var to = staffBoundingInfo[0] + staffBoundingInfo[2];
			var travel = stretch * (60000 / parseFloat(tempo) * (4 * parseFloat(timesig[0]) / parseFloat(timesig[1])));
			cursorAttr.replace(id + "::@trajectory::" + j, from, to, travel);
			}			
//			}
			//calculate y position and height of cursor
			//map staves to staffgroups
			var color = cursorAttr.get(id + "::@countdowncolor");
			for (var s = 0; s < groupcount; s++)
			{
			jcursors[s + 1] = {};
			var extent = cursorExtent(sg[s], startStaff, endStaff);
			if (extent != -1) {
				jcursors[s + 1] = {
					"key" : "svg",
					"val" : {
					"parent" : "overlay",
					"new" : "rect",
					"id" : "cursor" + id,
					"x" : cursorAttr.get(id + "::@trajectory::" + cursorAttr.get(id + "::@begin")[0])[0],
					"y" : extent[0],
					"width" : 3.,
					"height" : extent[1] - extent[0],
					"style" : {
						"stroke-width" : 0.6,
						"stroke" : "none",
						"stroke-opacity" : 0.,
						"fill" : "rgb(" + Math.round(color[0] * 255) + "," + Math.round(color[1] * 255) + "," + Math.round(color[2] * 255) + ")",
						"fill-opacity" : Math.round(color[3] * 255)
						},
					"transform" : "translate(0, 0)"
					}
				};
			}	
		}			
		cursors.parse(JSON.stringify(jcursors));
		outlet(0, "dictionary", cursors.name);	
	}
}



function scroll()
{
	var msg = arrayfromargs(arguments);
	cursors.clear();
	jcursors = {};			
	switch (msg[0]){
	case "playhead":
			//post("clefList", clefList, "\n");
		var startStaff = 0;
		var endStaff = numStaves - 1;
			staffBoundingFlag = 1;
			outlet(1, "getStaffBoundingInfo", 0, 0);
			staffBoundingFlag = 0;
			var from = staffBoundingInfo[4];
			var color = [0.2, 1, 0.2, 1];
			for (var s = 0; s < groupcount; s++)
			{
			jcursors[s + 1] = {};
			var extent = cursorExtent(sg[s], startStaff, endStaff);
			if (extent != -1) {
				var val = [{
					"parent" : "overlay",
					"new" : "rect",
					"id" : "playhead",
					"x" : from,
					"y" : extent[0] - 50,
					"width" : 3.,
					"height" : extent[1] - extent[0] + 100,
					"style" : {
						"stroke-width" : 0.6,
						"stroke" : "none",
						"stroke-opacity" : 0.,
						"fill" : "rgb(" + Math.round(color[0] * 255) + "," + Math.round(color[1] * 255) + "," + Math.round(color[2] * 255) + ")",
						"fill-opacity" : Math.round(color[3] * 255)
						},
					"transform" : "translate(0, 0)"
					}];
				//post("g", sg[s], clefs[clefList[sg[s][i]]], "\n");
				if (prop  && shownClefs) {
				for (var i = 0; i < sg[s].length; i++){
				val.push({
					"parent" : "overlay",
					"new" : "text",
					"id" : "clef-" + i,
					"x" : from - 20,
					"y" : stafflines[0][i][clefs[clefList[sg[s][i]]][1]][1],
					"child" : clefs[clefList[sg[s][i]]][0],
					"style" : 					{
						"font-family" : "Bravura",
						"font-size" : 22
					}
					,
					"transform" : "matrix(1,0,0,1,0,0)"
					});
				//Hack for grand staff 	var lines in stafflines[0][staves]
				//post("how many?", JSON.stringify(stafflines[0][i]), Object.keys(stafflines[0][i]).length), "\n";
				if (Object.keys(stafflines[0][i]).length == 11) {
				val.push({
					"parent" : "overlay",
					"new" : "text",
					"id" : "bassclef-" + i,
					"x" : from - 20,
					"y" : stafflines[0][i][clefs[clefList[sg[s][i]]][1]][1] + 24,
					"child" : clefs[3][0],
					"style" : 					{
						"font-family" : "Bravura",
						"font-size" : 22
					}
					,
					"transform" : "matrix(1,0,0,1,0,0)"
					});
					}
					}
				}
				jcursors[s + 1] = {"key" : "svg", "val" : val};
			}	
		}			
		cursors.parse(JSON.stringify(jcursors));
		outlet(0, "dictionary", cursors.name);	
		break;
	case "offset":
		toffset = msg[1] / msg[2];
		if (target == "socket") var trgt = "#main";
		else var trgt = "#score";
		for (var s = 0; s < groupcount; s++)
		{
				jcursors[s + 1] = {
				"key" : "tween",
				"val" : {
				"id" : "scroll",
				"target" : trgt, 
				"dur" : 0,
				"vars" : {
					"x" : msg[1],
					"y" : 0,
					"paused" : "false",
					"ease" : "linear"
					}
				}
			};
		}
		cursors.parse(JSON.stringify(jcursors));
		outlet(0, "dictionary", cursors.name);	
		break;
	case "rewind":
		for (var s = 0; s < groupcount; s++)
		{
			jcursors[s + 1] = {
				"key" : "tween",
				"val" : {
				"cmd" : "pause",
				"id" : "scroll"
				}
			};
		}
		cursors.parse(JSON.stringify(jcursors));
		outlet(0, "dictionary", cursors.name);	
		break;
	case "stop":
		for (var s = 0; s < groupcount; s++)
		{
			jcursors[s + 1] = {
				"key" : "tween",
				"val" : {
				"cmd" : "pause",
				"id" : "scroll"
				}
			};
		}
		cursors.parse(JSON.stringify(jcursors));
		outlet(0, "dictionary", cursors.name);	
		break;
	case "play":
		post("dur", duration, toffset, duration + toffset,"\n");
		if (target == "socket") var trgt = "#main";
		else var trgt = "#score";
		for (var s = 0; s < groupcount; s++)
		{
			jcursors[s + 1] = {
				"key" : "tween",
				"val" : {
				"id" : "scroll",
				"target" : trgt, 
				"dur" : duration + toffset,
				"vars" : {
					"x" : eol,
					"y" : 0,
					"paused" : "false",
					"ease" : "linear"
					}
				}
			};
		}
		cursors.parse(JSON.stringify(jcursors));
		outlet(0, "dictionary", cursors.name);	
		break;
	default:
		post("msg", msg, "\n");
		duration = msg[2]/1000;
		eol = msg[1]
		if (target == "socket") var trgt = "#main";
		else var trgt = "#score";
		for (var s = 0; s < groupcount; s++)
		{
			jcursors[s + 1] = {
				"key" : "tween",
				"val" : {
				"id" : "scroll",
				"target" : trgt, 
				"dur" : duration,
				"vars" : {
					"x" : eol,
					"y" : 0,
					"paused" : "false",
					"ease" : "linear"
					}
				}
			};
		}
		cursors.parse(JSON.stringify(jcursors));
		outlet(0, "dictionary", cursors.name);
	}
}

function getAllIndexes(arr, val) {
    var indexes = [-1], i;
	var c = 0;
	if (typeof arr == "number" && arr == val) indexes = [0];
    else {for(i = 0; i < arr.length; i++)
        if (arr[i] == val)
			{
            indexes[c] = i;
			c++;
			}
		}
    return indexes;
}

function arrayMin(arr) {
  var len = arr.length, min = Infinity;
  while (len--) {
    if (arr[len] < min) {
      min = arr[len];
    }
  }
  return min;
}

function arrayMax(arr) {
  var len = arr.length, max = -Infinity;
  while (len--) {
    if (arr[len] > max) {
      max = arr[len];
    }
  }
  return max;
}

function toNumber(arr) {
    var indexes = [], i;
    for(i = 0; i < arr.length; i++) 
		indexes.push(Number(arr[i]));
    return indexes;	
}

function isEmpty(obj) {
    for(var property in obj) {
        if(obj.hasOwnProperty(property))
            return false;
    }

    return JSON.stringify(obj) === JSON.stringify({});
}

