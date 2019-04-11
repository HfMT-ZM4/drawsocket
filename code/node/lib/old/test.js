

var score = {};

score['prefix'] = {};


var newNoteSVG = [{
	new: "line",
	id: 'foo',
	x1: 0,
	x2: 100
}, {
	new: "line",
	id: 'bar',
	x1: 0
}];

score['prefix'].svg = newNoteSVG;

var dict = new Dict();

dict.parse( JSON.stringify(score) );

function bang()
{
	outlet(0, "dictionary", dict.name );
}