{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 7,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 301.0, 79.0, 1202.0, 880.0 ],
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
					"id" : "obj-7",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 421.0, 396.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 24.0, 238.0, 22.0 ],
					"text" : "Fetching a JSON file from the server."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-2",
					"linecount" : 4,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 850.0, 272.5, 136.0, 65.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0, 0, 0, 0, 16, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 0, 0, 42, 0, 0, 0 ],
					"saved_bundle_length" : 92,
					"text" : "/* : {\n\t/key : \"clear\",\n\t/val : \"*\"\n}"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 820.0, 434.5, 77.0, 22.0 ],
					"text" : "o.select /port"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 820.0, 187.0, 64.0, 22.0 ],
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-45",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 820.0, 474.16668701171875, 306.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.588235294117647, 0.811764705882353, 0.996078431372549, 1.0 ],
					"fontsize" : 14.0,
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "FullPacket", "", "" ],
					"patching_rect" : [ 820.0, 385.5, 110.0, 24.0 ],
					"text" : "hfmt.drawsocket"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 820.0, 220.16668701171875, 63.0, 22.0 ],
					"text" : "script stop"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-16",
					"linecount" : 12,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 45.0, 178.0, 244.0, 174.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 124, 47, 49, 0, 0, 44, 46, 0, 0, 0, 0, 0, 112, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 102, 105, 108, 101, 0, 0, 0, 0, 0, 0, 0, 68, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 52, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 102, 101, 116, 99, 104, 0, 0, 44, 115, 0, 0, 115, 97, 118, 101, 100, 45, 99, 97, 99, 104, 101, 46, 106, 115, 111, 110, 0, 0, 0, 0, 0, 0, 0, 124, 47, 50, 0, 0, 44, 46, 0, 0, 0, 0, 0, 112, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 102, 105, 108, 101, 0, 0, 0, 0, 0, 0, 0, 68, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 52, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 102, 101, 116, 99, 104, 0, 0, 44, 115, 0, 0, 115, 97, 118, 101, 100, 45, 99, 97, 99, 104, 101, 46, 106, 115, 111, 110, 0, 0, 0, 0 ],
					"saved_bundle_length" : 272,
					"text" : "/1 : {\n\t/key : \"file\",\n\t/val : {\n\t\t/fetch : \"saved-cache.json\"\n\t}\n},\n/2 : {\n\t/key : \"file\",\n\t/val : {\n\t\t/fetch : \"saved-cache.json\"\n\t}\n}"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-15",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 45.0, 57.0, 765.0, 85.0 ],
					"text" : "If a saved JSON file is in the Drawsocket search path (by default the Folder of the saved patch containing the Drawsocket object), you can use the \"file\" key and the /fetch keyword to retrieve the file.\n\nIf a /prefix keyword is given, the client will request that URL, otherwise, by default the client will load the file and then lookup it's prefix in the file."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-12",
					"linecount" : 14,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 566.0, 151.0, 244.0, 201.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -112, 47, 49, 0, 0, 44, 46, 0, 0, 0, 0, 0, -124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 102, 105, 108, 101, 0, 0, 0, 0, 0, 0, 0, 88, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 72, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 102, 101, 116, 99, 104, 0, 0, 44, 115, 0, 0, 115, 97, 118, 101, 100, 45, 99, 97, 99, 104, 101, 46, 106, 115, 111, 110, 0, 0, 0, 0, 0, 0, 0, 16, 47, 112, 114, 101, 102, 105, 120, 0, 44, 115, 0, 0, 47, 51, 0, 0, 0, 0, 0, -112, 47, 50, 0, 0, 44, 46, 0, 0, 0, 0, 0, -124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 102, 105, 108, 101, 0, 0, 0, 0, 0, 0, 0, 88, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 72, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 102, 101, 116, 99, 104, 0, 0, 44, 115, 0, 0, 115, 97, 118, 101, 100, 45, 99, 97, 99, 104, 101, 46, 106, 115, 111, 110, 0, 0, 0, 0, 0, 0, 0, 16, 47, 112, 114, 101, 102, 105, 120, 0, 44, 115, 0, 0, 47, 52, 0, 0 ],
					"saved_bundle_length" : 312,
					"text" : "/1 : {\n\t/key : \"file\",\n\t/val : {\n\t\t/fetch : \"saved-cache.json\",\n\t\t/prefix : \"/3\"\n\t}\n},\n/2 : {\n\t/key : \"file\",\n\t/val : {\n\t\t/fetch : \"saved-cache.json\",\n\t\t/prefix : \"/4\"\n\t}\n}"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 421.0, 433.1666259765625, 126.0, 22.0 ],
					"text" : "http://localhost:3002/2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 421.0, 468.5, 69.0, 22.0 ],
					"text" : "prepend url"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-9",
					"maxclass" : "jweb",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 421.0, 504.0, 320.0, 240.0 ],
					"rendermode" : 0,
					"url" : "http://localhost:3002/2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 40.0, 433.1666259765625, 126.0, 22.0 ],
					"text" : "http://localhost:3002/1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 40.0, 468.5, 69.0, 22.0 ],
					"text" : "prepend url"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-10",
					"maxclass" : "jweb",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 40.0, 504.0, 320.0, 240.0 ],
					"rendermode" : 0,
					"url" : "http://localhost:3002/1"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-23",
					"linecount" : 14,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 304.0, 151.0, 244.0, 201.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -112, 47, 49, 0, 0, 44, 46, 0, 0, 0, 0, 0, -124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 102, 105, 108, 101, 0, 0, 0, 0, 0, 0, 0, 88, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 72, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 102, 101, 116, 99, 104, 0, 0, 44, 115, 0, 0, 115, 97, 118, 101, 100, 45, 99, 97, 99, 104, 101, 46, 106, 115, 111, 110, 0, 0, 0, 0, 0, 0, 0, 16, 47, 112, 114, 101, 102, 105, 120, 0, 44, 115, 0, 0, 47, 50, 0, 0, 0, 0, 0, -112, 47, 50, 0, 0, 44, 46, 0, 0, 0, 0, 0, -124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 102, 105, 108, 101, 0, 0, 0, 0, 0, 0, 0, 88, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 72, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 102, 101, 116, 99, 104, 0, 0, 44, 115, 0, 0, 115, 97, 118, 101, 100, 45, 99, 97, 99, 104, 101, 46, 106, 115, 111, 110, 0, 0, 0, 0, 0, 0, 0, 16, 47, 112, 114, 101, 102, 105, 120, 0, 44, 115, 0, 0, 47, 49, 0, 0 ],
					"saved_bundle_length" : 312,
					"text" : "/1 : {\n\t/key : \"file\",\n\t/val : {\n\t\t/fetch : \"saved-cache.json\",\n\t\t/prefix : \"/2\"\n\t}\n},\n/2 : {\n\t/key : \"file\",\n\t/val : {\n\t\t/fetch : \"saved-cache.json\",\n\t\t/prefix : \"/1\"\n\t}\n}"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-38", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"order" : 0,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"order" : 1,
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"order" : 1,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 0,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-8", 0 ]
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
				"name" : "o.compose.mxo",
				"type" : "iLaX"
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
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "black on white",
				"number" : 				{
					"fontsize" : [ 12.0 ],
					"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
					"fontname" : [ "Arial" ]
				}
,
				"umenu" : 				{
					"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "caption text",
				"default" : 				{
					"fontface" : [ 2 ],
					"fontsize" : [ 11.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "section dividers",
				"default" : 				{
					"fontface" : [ 3 ],
					"fontsize" : [ 15.0 ],
					"fontname" : [ "Arial" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "section info reg",
				"default" : 				{
					"fontsize" : [ 12.0 ],
					"fontname" : [ "Arial" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "titles",
				"default" : 				{
					"fontface" : [ 1 ],
					"fontsize" : [ 20.0 ],
					"fontname" : [ "Arial" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
