const verovio = require('verovio-dev');
const fs = require("fs");
const xslt = require("xslt-processor");

const { Midi } = require('@tonejs/midi');

const midiFile = require('midi-file');

const convert = require('xml-js');




// xmlString: string of xml file contents
// xsltString: string of xslt file contents
// outXmlString: output xml string.


let vrvToolkit = new verovio.toolkit(512);

vrvToolkit.setOptions({
    scale: 100,
    evenNoteSpacing : true
});


let src = fs.readFileSync("Bach_Nun_komm_der_Heiden_Heiland_BWV.659-2.mei");
//let src = fs.readFileSync("MozartTrio.musicxml");

let jsObj = convert.xml2js(src, { ignoreComment: true, compact: false });
fs.writeFileSync('parsedMEI.json', JSON.stringify(jsObj)  );  
fs.writeFileSync('parsedMEIxml.xml', convert.js2xml(jsObj, { ignoreComment: true, compact: false })  );  



vrvToolkit.loadData(src.toString());
/*
const xmlString = fs.readFileSync("MozartTrio.musicxml");
const xsltString = fs.readFileSync("musicxml2mei-3.0.xsl");

const src = xslt.xsltProcess(
    xslt.xmlParse(xmlString.toString()),
    xslt.xmlParse(xsltString.toString())
);
fs.writeFileSync("testXML", src);
*/

//vrvToolkit.loadData(mei);

//vrvToolkit.loadData(src.toString());

/*
let mei = `<mei xmlns="http://www.music-encoding.org/ns/mei">
<meiHead>
    <fileDesc>
        <titleStmt>
            <title/>
        </titleStmt>
        <pubStmt/>
    </fileDesc>
</meiHead>
<music>
    <body>
        <mdiv>
            <score>
                <scoreDef>
                    <staffGrp>
                        <staffDef clef.shape="G" clef.line="2" n="1" lines="5"/>
                    </staffGrp>
                </scoreDef>
                <section>
                    <measure>
                        <staff n="1">
                            <layer>
                                <note pname="c" oct="4" dur="4"/>
                                <note pname="c" oct="4" dur="8"/>
                                <note pname="c" oct="4" dur="16"/>
                                <note pname="c" oct="4" dur="4"/>

                            </layer>
                        </staff>
                    </measure>
                </section>
            </score>
        </mdiv>
    </body>
</music>
</mei>`;

*/

const meiJson = {

};

let svg = vrvToolkit.renderToSVG(1, {});
fs.writeFileSync("hello.svg", svg);

fs.writeFileSync("generatedMEI.mei", vrvToolkit.getMEI() );

var buf = Buffer.from( vrvToolkit.renderToMidi(), 'base64'); 
fs.writeFileSync("generatedMIDI.midi", buf );

// const BASE64_MARKER = ';base64,';
// function convertDataURIToBinary(dataURI) {
//     var base64Index = dataURI.indexOf(BASE64_MARKER) + BASE64_MARKER.length;
//     var base64 = dataURI.substring(base64Index);
//     var raw = Buffer.from( vrvToolkit.renderToMidi(), 'base64');// window.atob(base64);
//     var rawLength = raw.length;
//     var array = new Uint8Array(new ArrayBuffer(rawLength));
    
//     for(let i = 0; i < rawLength; i++) {
//         array[i] = raw.charCodeAt(i);
//     }

//     return array;
// }


function MIDI64toArrayBuffer(midi_64)
{
    const raw = Buffer.from( midi_64, 'base64');// window.atob(base64);
    const rawLength = raw.length;
    let array = new ArrayBuffer(rawLength);
    
    for(let i = 0; i < rawLength; i++) {
        array[i] = raw[i];
    }

    return array;
}

function toArrayBuffer(buf) {
    var ab = new ArrayBuffer(buf.length);
    var view = new Uint8Array(ab);
    for (var i = 0; i < buf.length; ++i) {
        view[i] = buf[i];
    }
    return ab;
}

var byteArray = toArrayBuffer( buf );



const midi = new Midi( byteArray );

//console.log(typeof midi);

let parsedFile = midiFile.parseMidi(buf);

fs.writeFileSync('parsedMIDI.json', JSON.stringify(midi) );


//the file name decoded from the first track
const name = midi.name
//get the tracks
midi.tracks.forEach(track => {
  //tracks have notes and controlChanges

  //notes are an array
  const notes = track.notes
  notes.forEach((note, i) => {
      console.log(i, note);
      
    //note.midi, note.time, note.duration, note.name
  })

  /*
  //the control changes are an object
  //the keys are the CC number
  track.controlChanges[64]
  //they are also aliased to the CC number's common name (if it has one)
  track.controlChanges.sustain.forEach(cc => {
    // cc.ticks, cc.value, cc.time
  })

  //the track also has a channel and instrument
  //track.instrument.name
  */
})
