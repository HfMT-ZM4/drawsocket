var verovio = require('verovio-dev');
var fs = require("fs");

var vrvToolkit = new verovio.toolkit(512);

mei = fs.readFileSync("Beethoven_Sonata_no.29_op.106.mei");

vrvToolkit.loadData(mei.toString());



svg = vrvToolkit.renderToSVG(1, {});


fs.writeFileSync("hello.svg", svg);
