//{ font: "Bravura" }

const verovio = require('verovio');
const fs = require("fs");

verovio.module.onRuntimeInitialized = function ()
{
    /* create the toolkit instance */
    var vrvToolkit = new verovio.toolkit();

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
                            <note pname="c" oct="4" dur="4">
                                <verse n="1">
                                    <syl wordpos="t">-12</syl>
                                </verse>                     
                            </note>
                                <note pname="d" oct="4" dur="4"/>
                                <note pname="e" oct="4" dur="4"/>
                                <note pname="f" oct="4" dur="4"/>

                            </layer>
                        </staff>
                    </measure>
                </section>
            </score>
        </mdiv>
    </body>
</music>
</mei>`;

    const options = { font: "Bravura" }
    vrvToolkit.setOptions(options);

    /* load the MEI data as string into the toolkit */
	vrvToolkit.loadData(mei);
    /* render the fist page as SVG */
	svg = vrvToolkit.renderToSVG(1, {});
    /* save the SVG into a file */
	fs.writeFileSync("hello.svg", svg);
}


