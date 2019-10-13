{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 198.0, 166.0, 1202.0, 840.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"bubble" : 1,
					"fontsize" : 14.0,
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 364.0, 372.0, 234.0, 26.0 ],
					"text" : "Just like normal Drawsocket input"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontsize" : 14.0,
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 399.0, 197.0, 282.0, 26.0 ],
					"text" : "Everything inside the quotes is Javascript"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 283.0, 691.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 718.0, 303.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-30",
					"linecount" : 5,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 118.0, 724.0, 299.0, 88.0 ],
					"text" : "/button : {\n\t/id : \"button-foo\",\n\t/msg : \"I'm about to draw some stuff!\",\n\t/clicked : 1\n}"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 529.0, 604.0, 64.0, 22.0 ],
					"text" : "script stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 138.0, 681.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 118.0, 638.0, 100.0, 22.0 ],
					"text" : "o.select /button"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-19",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 556.0, 54.0, 569.0, 100.0 ],
					"text" : "Here we take our simple button example, and add a script to create a bunch of random circles when you click the button. The way to do this, is via the drawsocket.input() function which is an acess point to the main Drawsocket input.\n\nThe format of the drawsocket.input() function is the same as when sending from Max, except that it needs to be a JS object."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 556.0, 26.0, 495.0, 22.0 ],
					"text" : "Triggering other Drawsocket commands using a button with drawsocket.input()"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-15",
					"linecount" : 4,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 529.0, 498.0, 136.0, 65.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0, 0, 0, 0, 16, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 0, 0, 42, 0, 0, 0 ],
					"saved_bundle_length" : 92,
					"text" : "/* : {\n\t/key : \"clear\",\n\t/val : \"*\"\n}"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-10",
					"linecount" : 40,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 118.0, 19.0, 359.0, 554.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 116, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 3, 104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0, 0, 0, 3, 60, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 3, 44, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 102, 111, 114, 109, 115, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 98, 117, 116, 116, 111, 110, 45, 102, 111, 111, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 98, 117, 116, 116, 111, 110, 0, 0, 0, 0, 0, 24, 47, 116, 101, 120, 116, 0, 0, 0, 44, 115, 0, 0, 99, 108, 105, 99, 107, 32, 109, 101, 33, 0, 0, 0, 0, 0, 0, -120, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 112, 111, 115, 105, 116, 105, 111, 110, 0, 0, 0, 44, 115, 0, 0, 97, 98, 115, 111, 108, 117, 116, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 111, 112, 0, 0, 0, 0, 44, 115, 0, 0, 49, 48, 48, 112, 120, 0, 0, 0, 0, 0, 0, 20, 47, 108, 101, 102, 116, 0, 0, 0, 44, 115, 0, 0, 49, 48, 48, 112, 120, 0, 0, 0, 0, 0, 0, 20, 47, 119, 105, 100, 116, 104, 0, 0, 44, 115, 0, 0, 55, 48, 112, 120, 0, 0, 0, 0, 0, 0, 2, 40, 47, 111, 110, 99, 108, 105, 99, 107, 0, 0, 0, 0, 44, 115, 0, 0, 10, 32, 32, 32, 32, 32, 47, 47, 32, 116, 104, 105, 115, 32, 105, 115, 32, 97, 108, 108, 32, 106, 97, 118, 97, 115, 99, 114, 105, 112, 116, 32, 104, 101, 114, 101, 10, 32, 32, 32, 32, 32, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 115, 101, 110, 100, 40, 123, 10, 32, 32, 32, 32, 32, 32, 32, 98, 117, 116, 116, 111, 110, 58, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 58, 32, 116, 104, 105, 115, 46, 105, 100, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 108, 105, 99, 107, 101, 100, 58, 32, 116, 114, 117, 101, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 109, 115, 103, 58, 32, 39, 73, 92, 39, 109, 32, 97, 98, 111, 117, 116, 32, 116, 111, 32, 100, 114, 97, 119, 32, 115, 111, 109, 101, 32, 115, 116, 117, 102, 102, 33, 39, 10, 32, 32, 32, 32, 32, 32, 32, 125, 10, 32, 32, 32, 32, 32, 125, 41, 59, 10, 10, 32, 32, 32, 32, 32, 102, 111, 114, 40, 32, 108, 101, 116, 32, 105, 32, 61, 32, 48, 59, 32, 105, 32, 60, 32, 49, 48, 48, 59, 32, 105, 43, 43, 32, 41, 10, 32, 32, 32, 32, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 105, 110, 112, 117, 116, 40, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 107, 101, 121, 58, 32, 39, 115, 118, 103, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 97, 108, 58, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 101, 119, 58, 32, 39, 99, 105, 114, 99, 108, 101, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 58, 32, 39, 99, 105, 114, 99, 108, 121, 45, 39, 43, 105, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 120, 58, 32, 77, 97, 116, 104, 46, 114, 97, 110, 100, 111, 109, 40, 41, 32, 42, 32, 51, 48, 48, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 121, 58, 32, 77, 97, 116, 104, 46, 114, 97, 110, 100, 111, 109, 40, 41, 32, 42, 32, 50, 48, 48, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 114, 58, 32, 77, 97, 116, 104, 46, 114, 97, 110, 100, 111, 109, 40, 41, 32, 42, 32, 50, 48, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 102, 105, 108, 108, 58, 32, 39, 114, 103, 98, 97, 40, 48, 44, 48, 44, 50, 53, 53, 44, 48, 46, 51, 41, 39, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 10, 32, 32, 32, 32, 32, 32, 32, 32, 125, 41, 59, 10, 32, 32, 32, 32, 32, 125, 10, 32, 32, 0, 0 ],
					"saved_bundle_length" : 904,
					"text" : "/* : {\n\t/key : \"html\",\n\t/val : {\n\t\t/parent : \"forms\",\n\t\t/id : \"button-foo\",\n\t\t/new : \"button\",\n\t\t/text : \"click me!\",\n\t\t/style : {\n\t\t\t/position : \"absolute\",\n\t\t\t/top : \"100px\",\n\t\t\t/left : \"100px\",\n\t\t\t/width : \"70px\"\n\t\t},\n\t\t/onclick : \"\n     // this is all javascript here\n     drawsocket.send({\n       button: {\n         id: this.id,\n         clicked: true,\n         msg: 'I\\\\'m about to draw some stuff!'\n       }\n     });\n\n     for( let i = 0; i < 100; i++ )\n     {\n        drawsocket.input({\n          key: 'svg',\n          val: {\n            new: 'circle',\n            id: 'circly-'+i,\n            cx: Math.random() * 300,\n            cy: Math.random() * 200,\n            r: Math.random() * 20,\n            fill: 'rgba(0,0,255,0.3)'\n          }\n        });\n     }\n  \"\n\t}\n}"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 718.0, 343.0, 143.0, 22.0 ],
					"text" : "url http://localhost:3002/1"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-6",
					"maxclass" : "jweb",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 718.0, 386.0, 320.0, 240.0 ],
					"rendermode" : 1,
					"url" : "http://localhost:3002/1"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-4",
					"linecount" : 2,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 283.0, 638.0, 313.0, 48.0 ],
					"text" : "/port/localhost : \"http://localhost:3002\",\n/port/ip : \"http://192.168.178.36:3002\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 529.0, 574.0, 64.0, 22.0 ],
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "FullPacket", "", "" ],
					"patching_rect" : [ 118.0, 605.0, 184.0, 22.0 ],
					"text" : "hfmt.drawsocket"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"order" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"order" : 1,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 292.5, 715.0, 695.0, 715.0, 695.0, 332.0, 727.5, 332.0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "hfmt.drawsocket.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/drawsocket/patchers",
				"patcherrelativepath" : "../../../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "drawsocket-server.js",
				"bootpath" : "~/Documents/Max 8/Packages/drawsocket/code/node",
				"patcherrelativepath" : "../../../code/node",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "startscript.js",
				"bootpath" : "~/Documents/Max 8/Packages/drawsocket/code",
				"patcherrelativepath" : "../../../code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.timetag.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.display.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.select.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.dict.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.codebox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.compose.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
