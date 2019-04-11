{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 423.0, 79.0, 983.0, 787.0 ],
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
					"id" : "obj-43",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 113.0, 141.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 22.0, 84.0, 50.0, 22.0 ],
					"text" : "read"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 22.0, 128.0, 50.5, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"parameter_enable" : 0,
						"parameter_mappable" : 0
					}
,
					"text" : "dict"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-37",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 495.0, 274.0, 337.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 109, 97, 105, 110, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 115, 99, 97, 108, 101, 0, 44, 105, 105, 0, 0, 0, 0, 2, 0, 0, 0, 1 ],
					"saved_bundle_length" : 64,
					"text" : "/svgdraw/1/main/transform/scale : [2, 1]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-34",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 499.0, 317.0, 337.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 109, 97, 105, 110, 47, 115, 116, 121, 108, 101, 47, 119, 105, 100, 116, 104, 0, 44, 115, 0, 0, 49, 48, 48, 37, 0, 0, 0, 0, 0, 0, 0, 44, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 109, 97, 105, 110, 47, 115, 116, 121, 108, 101, 47, 104, 101, 105, 103, 104, 116, 0, 0, 0, 0, 44, 115, 0, 0, 49, 48, 48, 37, 0, 0, 0, 0 ],
					"saved_bundle_length" : 108,
					"text" : "/svgdraw/1/main/style/width : \"100%\",\n/svgdraw/1/main/style/height : \"100%\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 303.0, 299.0, 100.0, 22.0 ],
					"text" : "o.print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 492.0, 79.0, 878.0, 787.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-9",
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 372.5, 311.0, 409.0, 24.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 99, 108, 97, 112, 47, 115, 97, 109, 112, 108, 101, 47, 108, 111, 97, 100, 0, 44, 115, 0, 0, 47, 56, 48, 56, 95, 109, 112, 51, 47, 104, 97, 110, 100, 99, 108, 97, 112, 46, 109, 112, 51, 0, 0, 0 ],
									"saved_bundle_length" : 76,
									"text" : "/svgdraw/1/clap/sample/load : \"/808_mp3/handclap.mp3\""
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-7",
									"linecount" : 14,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 68.5, 471.0, 669.0, 201.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 99, 108, 97, 112, 47, 115, 97, 109, 112, 108, 101, 47, 108, 111, 97, 100, 0, 44, 115, 0, 0, 47, 56, 48, 56, 95, 109, 112, 51, 47, 104, 97, 110, 100, 99, 108, 97, 112, 46, 109, 112, 51, 0, 0, 0, 0, 0, 0, 52, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 107, 105, 99, 107, 47, 115, 97, 109, 112, 108, 101, 47, 108, 111, 97, 100, 0, 44, 115, 0, 0, 47, 56, 48, 56, 95, 109, 112, 51, 47, 107, 105, 99, 107, 49, 46, 109, 112, 51, 0, 0, 0, 0, 0, 56, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 104, 104, 47, 115, 97, 109, 112, 108, 101, 47, 108, 111, 97, 100, 0, 0, 0, 44, 115, 0, 0, 47, 56, 48, 56, 95, 109, 112, 51, 47, 99, 108, 95, 104, 105, 104, 97, 116, 46, 109, 112, 51, 0, 0, 0, 0, 0, 0, 76, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 99, 95, 107, 105, 99, 107, 47, 100, 114, 97, 119, 47, 112, 97, 116, 104, 0, 44, 115, 0, 0, 77, 51, 53, 44, 54, 53, 97, 51, 48, 44, 51, 48, 44, 48, 44, 48, 44, 48, 44, 48, 45, 54, 48, 97, 51, 48, 44, 51, 48, 44, 48, 44, 48, 44, 48, 44, 48, 44, 54, 48, 0, 0, 0, 0, 0, 0, 0, 40, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 99, 95, 107, 105, 99, 107, 47, 115, 116, 121, 108, 101, 47, 102, 105, 108, 108, 0, 0, 0, 0, 44, 115, 0, 0, 114, 101, 100, 0, 0, 0, 0, 84, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 99, 95, 107, 105, 99, 107, 47, 97, 116, 116, 114, 47, 111, 110, 99, 108, 105, 99, 107, 0, 0, 44, 115, 0, 0, 112, 114, 111, 99, 101, 115, 115, 67, 109, 100, 79, 98, 106, 40, 32, 123, 32, 39, 47, 107, 105, 99, 107, 47, 115, 97, 109, 112, 108, 101, 47, 112, 108, 97, 121, 39, 32, 58, 32, 49, 32, 125, 32, 41, 0, 0, 0, 0, 0, 0, 0, 76, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 99, 95, 104, 104, 47, 100, 114, 97, 119, 47, 112, 97, 116, 104, 0, 0, 0, 44, 115, 0, 0, 77, 51, 53, 44, 54, 53, 97, 51, 48, 44, 51, 48, 44, 48, 44, 48, 44, 48, 44, 48, 45, 54, 48, 97, 51, 48, 44, 51, 48, 44, 48, 44, 48, 44, 48, 44, 48, 44, 54, 48, 0, 0, 0, 0, 0, 0, 0, 48, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 99, 95, 104, 104, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 116, 114, 97, 110, 115, 108, 97, 116, 101, 0, 44, 105, 105, 0, 0, 0, 0, 100, 0, 0, 0, 10, 0, 0, 0, 40, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 99, 95, 104, 104, 47, 115, 116, 121, 108, 101, 47, 102, 105, 108, 108, 0, 0, 44, 115, 0, 0, 111, 114, 97, 110, 103, 101, 0, 0, 0, 0, 0, 80, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 99, 95, 104, 104, 47, 97, 116, 116, 114, 47, 111, 110, 99, 108, 105, 99, 107, 0, 0, 0, 0, 44, 115, 0, 0, 112, 114, 111, 99, 101, 115, 115, 67, 109, 100, 79, 98, 106, 40, 32, 123, 32, 39, 47, 104, 104, 47, 115, 97, 109, 112, 108, 101, 47, 112, 108, 97, 121, 39, 32, 58, 32, 49, 32, 125, 32, 41, 0, 0, 0, 0, 0, 76, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 99, 95, 99, 108, 97, 112, 47, 100, 114, 97, 119, 47, 112, 97, 116, 104, 0, 44, 115, 0, 0, 77, 51, 53, 44, 54, 53, 97, 51, 48, 44, 51, 48, 44, 48, 44, 48, 44, 48, 44, 48, 45, 54, 48, 97, 51, 48, 44, 51, 48, 44, 48, 44, 48, 44, 48, 44, 48, 44, 54, 48, 0, 0, 0, 0, 0, 0, 0, 52, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 99, 95, 99, 108, 97, 112, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 116, 114, 97, 110, 115, 108, 97, 116, 101, 0, 0, 0, 44, 105, 105, 0, 0, 0, 0, -106, 0, 0, 0, 40, 0, 0, 0, 44, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 99, 95, 99, 108, 97, 112, 47, 115, 116, 121, 108, 101, 47, 102, 105, 108, 108, 0, 0, 0, 0, 44, 115, 0, 0, 121, 101, 108, 108, 111, 119, 0, 0, 0, 0, 0, 84, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 99, 95, 99, 108, 97, 112, 47, 97, 116, 116, 114, 47, 111, 110, 99, 108, 105, 99, 107, 0, 0, 44, 115, 0, 0, 112, 114, 111, 99, 101, 115, 115, 67, 109, 100, 79, 98, 106, 40, 32, 123, 32, 39, 47, 99, 108, 97, 112, 47, 115, 97, 109, 112, 108, 101, 47, 112, 108, 97, 121, 39, 32, 58, 32, 49, 32, 125, 32, 41, 0, 0, 0, 0 ],
									"saved_bundle_length" : 936,
									"text" : "/svgdraw/1/clap/sample/load : \"/808_mp3/handclap.mp3\",\n/svgdraw/1/kick/sample/load : \"/808_mp3/kick1.mp3\",\n/svgdraw/1/hh/sample/load : \"/808_mp3/cl_hihat.mp3\",\n/svgdraw/1/c_kick/draw/path : \"M35,65a30,30,0,0,0,0-60a30,30,0,0,0,0,60\",\n/svgdraw/1/c_kick/style/fill : \"red\",\n/svgdraw/1/c_kick/attr/onclick : \"processCmdObj( { '/kick/sample/play' : 1 } )\",\n/svgdraw/1/c_hh/draw/path : \"M35,65a30,30,0,0,0,0-60a30,30,0,0,0,0,60\",\n/svgdraw/1/c_hh/transform/translate : [100, 10],\n/svgdraw/1/c_hh/style/fill : \"orange\",\n/svgdraw/1/c_hh/attr/onclick : \"processCmdObj( { '/hh/sample/play' : 1 } )\",\n/svgdraw/1/c_clap/draw/path : \"M35,65a30,30,0,0,0,0-60a30,30,0,0,0,0,60\",\n/svgdraw/1/c_clap/transform/translate : [150, 40],\n/svgdraw/1/c_clap/style/fill : \"yellow\",\n/svgdraw/1/c_clap/attr/onclick : \"processCmdObj( { '/clap/sample/play' : 1 } )\""
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-4",
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 146.5, 400.0, 251.0, 24.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 99, 108, 97, 112, 47, 115, 97, 109, 112, 108, 101, 47, 112, 108, 97, 121, 0, 44, 105, 0, 0, 0, 0, 0, 1 ],
									"saved_bundle_length" : 56,
									"text" : "/svgdraw/1/clap/sample/play : 1"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-3",
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 146.5, 369.0, 251.0, 24.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 104, 104, 47, 115, 97, 109, 112, 108, 101, 47, 112, 108, 97, 121, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1 ],
									"saved_bundle_length" : 56,
									"text" : "/svgdraw/1/hh/sample/play : 1"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-6",
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 146.5, 338.0, 244.0, 24.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 107, 105, 99, 107, 47, 115, 97, 109, 112, 108, 101, 47, 112, 108, 97, 121, 0, 44, 105, 0, 0, 0, 0, 0, 1 ],
									"saved_bundle_length" : 56,
									"text" : "/svgdraw/1/kick/sample/play : 1"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-5",
									"linecount" : 3,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 146.5, 270.0, 409.0, 51.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 99, 108, 97, 112, 47, 115, 97, 109, 112, 108, 101, 47, 108, 111, 97, 100, 0, 44, 115, 0, 0, 47, 56, 48, 56, 95, 109, 112, 51, 47, 104, 97, 110, 100, 99, 108, 97, 112, 46, 109, 112, 51, 0, 0, 0, 0, 0, 0, 52, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 107, 105, 99, 107, 47, 115, 97, 109, 112, 108, 101, 47, 108, 111, 97, 100, 0, 44, 115, 0, 0, 47, 56, 48, 56, 95, 109, 112, 51, 47, 107, 105, 99, 107, 49, 46, 109, 112, 51, 0, 0, 0, 0, 0, 56, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 104, 104, 47, 115, 97, 109, 112, 108, 101, 47, 108, 111, 97, 100, 0, 0, 0, 44, 115, 0, 0, 47, 56, 48, 56, 95, 109, 112, 51, 47, 99, 108, 95, 104, 105, 104, 97, 116, 46, 109, 112, 51, 0, 0, 0 ],
									"saved_bundle_length" : 192,
									"text" : "/svgdraw/1/clap/sample/load : \"/808_mp3/handclap.mp3\",\n/svgdraw/1/kick/sample/load : \"/808_mp3/kick1.mp3\",\n/svgdraw/1/hh/sample/load : \"/808_mp3/cl_hihat.mp3\""
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-2",
									"linecount" : 4,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 51.0, 9.0, 525.0, 65.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 100, 114, 97, 119, 47, 112, 97, 116, 104, 0, 0, 0, 0, 44, 115, 0, 0, 77, 51, 53, 44, 54, 53, 97, 51, 48, 44, 51, 48, 44, 48, 44, 48, 44, 48, 44, 48, 45, 54, 48, 97, 51, 48, 44, 51, 48, 44, 48, 44, 48, 44, 48, 44, 48, 44, 54, 48, 0, 0, 0, 0, 0, 0, 0, 56, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 115, 116, 121, 108, 101, 47, 116, 114, 97, 110, 115, 105, 116, 105, 111, 110, 0, 44, 115, 0, 0, 116, 114, 97, 110, 115, 102, 111, 114, 109, 32, 49, 115, 32, 108, 105, 110, 101, 97, 114, 0, 0, 0, 0, 88, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 97, 116, 116, 114, 47, 111, 110, 108, 111, 97, 100, 0, 0, 44, 115, 0, 0, 112, 114, 111, 99, 101, 115, 115, 67, 109, 100, 79, 98, 106, 40, 123, 47, 102, 111, 111, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 116, 114, 97, 110, 115, 108, 97, 116, 101, 32, 58, 32, 91, 49, 48, 48, 44, 32, 48, 93, 32, 125, 41, 0, 0, 0 ],
									"saved_bundle_length" : 248,
									"text" : "/svgdraw/1/foo/draw/path : \"M35,65a30,30,0,0,0,0-60a30,30,0,0,0,0,60\",\n/svgdraw/1/foo/style/transition : \"transform 1s linear\",\n/svgdraw/1/foo/attr/onload : \"processCmdObj({/foo/transform/translate : [100, 0] })\""
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-23",
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 132.0, 169.0, 345.0, 24.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 116, 114, 97, 110, 115, 108, 97, 116, 101, 0, 0, 44, 105, 105, 0, 0, 0, 0, 100, 0, 0, 0, 0 ],
									"saved_bundle_length" : 68,
									"text" : "/svgdraw/1/foo/transform/translate : [100, 0]"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-10",
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 132.0, 214.0, 330.0, 24.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 116, 114, 97, 110, 115, 108, 97, 116, 101, 0, 0, 44, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0 ],
									"saved_bundle_length" : 68,
									"text" : "/svgdraw/1/foo/transform/translate : [0, 0]"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-11",
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 78.0, 110.0, 525.0, 24.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 115, 116, 121, 108, 101, 47, 116, 114, 97, 110, 115, 105, 116, 105, 111, 110, 0, 44, 115, 0, 0, 116, 114, 97, 110, 115, 102, 111, 114, 109, 32, 49, 115, 32, 108, 105, 110, 101, 97, 114, 0 ],
									"saved_bundle_length" : 76,
									"text" : "/svgdraw/1/foo/style/transition : \"transform 1s linear\""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 59.0, 308.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 19.0, 180.0, 100.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p dev"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-30",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 642.0, 664.0, 489.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 115, 99, 111, 114, 101, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 116, 114, 97, 110, 115, 108, 97, 116, 101, 0, 0, 0, 0, 44, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0 ],
					"saved_bundle_length" : 72,
					"text" : "/svgdraw/1/score/transform/translate : [0, 0]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-36",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 642.0, 637.0, 489.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 115, 99, 111, 114, 101, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 116, 114, 97, 110, 115, 108, 97, 116, 101, 0, 0, 0, 0, 44, 105, 105, 0, 0, 0, 0, 100, 0, 0, 0, 0 ],
					"saved_bundle_length" : 72,
					"text" : "/svgdraw/1/score/transform/translate : [100, 0]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-35",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 657.0, 599.0, 489.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 115, 99, 111, 114, 101, 47, 115, 116, 121, 108, 101, 47, 116, 114, 97, 110, 115, 105, 116, 105, 111, 110, 0, 0, 0, 44, 115, 0, 0, 116, 114, 97, 110, 115, 102, 111, 114, 109, 32, 49, 115, 32, 108, 105, 110, 101, 97, 114, 0 ],
					"saved_bundle_length" : 80,
					"text" : "/svgdraw/1/score/style/transition : \"transform 1s linear\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 21.5, 270.5, 87.0, 22.0 ],
					"text" : "o.timetag /now"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-24",
					"linecount" : 3,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 12.0, 302.5, 273.0, 51.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 111, 118, 101, 114, 108, 97, 121, 47, 109, 111, 117, 115, 101, 47, 120, 121, 0, 44, 105, 105, 0, 0, 0, 2, -82, 0, 0, 0, 25, 0, 0, 0, 20, 47, 110, 111, 119, 0, 0, 0, 0, 44, 116, 0, 0, -33, 124, 15, -13, -88, -92, -12, -122 ],
					"saved_bundle_length" : 84,
					"text" : "/svgdraw/1/overlay/mouse/xy : [686, 25],\n/now : 2018-10-25T09:48:35.658767Z"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 401.0, 317.0, 142.0, 22.0 ],
					"text" : "o.select /terminated/error"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-27",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 401.0, 472.0, 543.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-23",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 44.0, 51.0, 489.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 109, 97, 105, 110, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 116, 114, 97, 110, 115, 108, 97, 116, 101, 0, 44, 105, 105, 0, 0, 0, 1, 44, 0, 0, 0, 0 ],
					"saved_bundle_length" : 68,
					"text" : "/svgdraw/1/main/transform/translate : [300, 0]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-20",
					"linecount" : 12,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 868.0, 239.0, 553.0, 174.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 100, 114, 97, 119, 47, 112, 97, 116, 104, 0, 0, 0, 0, 44, 115, 0, 0, 77, 51, 53, 44, 54, 53, 97, 51, 48, 44, 51, 48, 44, 48, 44, 48, 44, 48, 44, 48, 45, 54, 48, 97, 51, 48, 44, 51, 48, 44, 48, 44, 48, 44, 48, 44, 48, 44, 54, 48, 0, 0, 0, 0, 0, 0, 0, 56, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 115, 116, 121, 108, 101, 47, 116, 114, 97, 110, 115, 105, 116, 105, 111, 110, 0, 44, 115, 0, 0, 116, 114, 97, 110, 115, 102, 111, 114, 109, 32, 49, 115, 32, 108, 105, 110, 101, 97, 114, 0, 0, 0, 0, -28, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 97, 116, 116, 114, 47, 111, 110, 99, 108, 105, 99, 107, 0, 44, 115, 0, 0, 10, 105, 102, 40, 32, 116, 121, 112, 101, 111, 102, 32, 116, 104, 105, 115, 46, 120, 120, 32, 61, 61, 32, 39, 117, 110, 100, 101, 102, 105, 110, 101, 100, 39, 41, 123, 10, 9, 116, 104, 105, 115, 46, 120, 120, 32, 61, 32, 49, 59, 10, 125, 10, 101, 108, 115, 101, 10, 123, 10, 9, 116, 104, 105, 115, 46, 120, 120, 32, 61, 32, 40, 116, 104, 105, 115, 46, 120, 120, 43, 49, 41, 32, 37, 32, 50, 59, 10, 125, 10, 99, 111, 110, 115, 111, 108, 101, 46, 108, 111, 103, 40, 39, 120, 120, 32, 61, 32, 39, 43, 32, 116, 104, 105, 115, 46, 120, 120, 41, 59, 10, 112, 114, 111, 99, 101, 115, 115, 67, 109, 100, 79, 98, 106, 40, 123, 32, 39, 47, 102, 111, 111, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 115, 99, 97, 108, 101, 39, 32, 58, 32, 91, 49, 48, 42, 116, 104, 105, 115, 46, 120, 120, 43, 49, 44, 32, 49, 48, 42, 116, 104, 105, 115, 46, 120, 120, 43, 49, 93, 32, 125, 41, 59, 0, 0 ],
					"saved_bundle_length" : 388,
					"text" : "/svgdraw/1/foo/draw/path : \"M35,65a30,30,0,0,0,0-60a30,30,0,0,0,0,60\",\n/svgdraw/1/foo/style/transition : \"transform 1s linear\",\n/svgdraw/1/foo/attr/onclick : \"\nif( typeof this.xx == 'undefined'){\n\tthis.xx = 1;\n}\nelse\n{\n\tthis.xx = (this.xx+1) % 2;\n}\nconsole.log('xx = '+ this.xx);\nprocessCmdObj({ '/foo/transform/scale' : [10*this.xx+1, 10*this.xx+1] });\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1222.0, 116.0, 96.0, 22.0 ],
					"text" : "0, -10000 2000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 1222.0, 185.0, 100.0, 22.0 ],
					"text" : "line 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1025.0, 9.0, 50.0, 22.0 ],
					"text" : "$1 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 1023.0, 45.0, 229.0, 35.0 ],
					"text" : "o.pack /svgdraw/1/score/transform/translate"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-18",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 586.0, 68.0, 424.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 100, 114, 97, 119, 47, 105, 109, 103, 0, 44, 115, 0, 0, 103, 114, 97, 100, 105, 101, 110, 116, 46, 112, 110, 103, 0, 0, 0, 0, 0, 0, 0, 56, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 115, 116, 121, 108, 101, 47, 116, 114, 97, 110, 115, 105, 116, 105, 111, 110, 0, 44, 115, 0, 0, 116, 114, 97, 110, 115, 102, 111, 114, 109, 32, 53, 115, 32, 108, 105, 110, 101, 97, 114, 0 ],
					"saved_bundle_length" : 124,
					"text" : "/svgdraw/1/foo/draw/img : \"gradient.png\",\n/svgdraw/1/foo/style/transition : \"transform 5s linear\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-17",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 7.0, 316.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 42, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 115, 99, 97, 108, 101, 0, 0, 0, 0, 44, 105, 105, 0, 0, 0, 0, 10, 0, 0, 0, 10 ],
					"saved_bundle_length" : 64,
					"text" : "/svgdraw/1/*/transform/scale : [10, 10]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-31",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 662.0, 690.0, 345.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 56, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 115, 99, 111, 114, 101, 47, 112, 100, 102, 47, 108, 111, 97, 100, 0, 0, 0, 44, 115, 0, 0, 112, 105, 97, 110, 111, 45, 102, 108, 105, 110, 116, 95, 114, 101, 100, 117, 99, 101, 100, 46, 112, 100, 102, 0 ],
					"saved_bundle_length" : 76,
					"text" : "/svgdraw/1/score/pdf/load : \"piano-flint_reduced.pdf\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 667.0, 735.0, 345.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 99, 108, 101, 97, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1 ],
					"saved_bundle_length" : 48,
					"text" : "/svgdraw/1/clear : 1"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-28",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 35.0, 389.0, 345.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 100, 114, 97, 119, 47, 105, 109, 103, 0, 44, 115, 0, 0, 102, 101, 114, 110, 46, 106, 112, 103, 0, 0, 0, 0 ],
					"saved_bundle_length" : 60,
					"text" : "/svgdraw/1/foo/draw/img : \"fern.jpg\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-49",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 495.0, 239.0, 337.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 109, 97, 105, 110, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 115, 99, 97, 108, 101, 0, 44, 105, 105, 0, 0, 0, 0, 1, 0, 0, 0, 1 ],
					"saved_bundle_length" : 64,
					"text" : "/svgdraw/1/main/transform/scale : [1, 1]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-47",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 437.0, 357.0, 270.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 200.0, 332.0, 54.0, 22.0 ],
									"text" : "o.accum"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 201.0, 87.0, 22.0 ],
									"text" : "o.timetag /time"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 130.0, 100.0, 45.0, 22.0 ],
									"text" : "zl.rot 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 165.333343505859375, 245.0, 50.0, 22.0 ],
									"text" : "set $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 141.333343505859375, 281.0, 74.0, 22.0 ],
									"text" : "o.pack /start"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 200.0, 161.0, 55.0, 22.0 ],
									"text" : "unjoin 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 165.333343505859375, 201.0, 126.0, 35.0 ],
									"text" : "combine / status / res @triggers 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 130.0, 130.0, 55.0, 22.0 ],
									"text" : "zl.ecils 2"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-42",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 130.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-43",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 141.333343505859375, 394.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-27", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 3 ],
									"source" : [ "obj-30", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 1 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"order" : 0,
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"order" : 1,
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 401.0, 283.0, 35.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p log"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-26",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 760.0, 142.0, 366.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 109, 97, 105, 110, 47, 115, 116, 121, 108, 101, 47, 98, 97, 99, 107, 103, 114, 111, 117, 110, 100, 45, 99, 111, 108, 111, 114, 0, 0, 44, 115, 0, 0, 119, 104, 105, 116, 101, 0, 0, 0 ],
					"saved_bundle_length" : 72,
					"text" : "/svgdraw/1/main/style/background-color : \"white\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-16",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 36.0, 337.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 115, 99, 97, 108, 101, 0, 0, 44, 105, 105, 0, 0, 0, 0, 1, 0, 0, 0, 1 ],
					"saved_bundle_length" : 64,
					"text" : "/svgdraw/1/foo/transform/scale : [1, 1]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 760.0, 99.0, 366.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 109, 97, 105, 110, 47, 115, 116, 121, 108, 101, 47, 98, 97, 99, 107, 103, 114, 111, 117, 110, 100, 45, 99, 111, 108, 111, 114, 0, 0, 44, 115, 0, 0, 114, 101, 100, 0 ],
					"saved_bundle_length" : 68,
					"text" : "/svgdraw/1/main/style/background-color : \"red\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-12",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 801.0, 190.0, 165.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 99, 108, 101, 97, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1 ],
					"saved_bundle_length" : 48,
					"text" : "/svgdraw/1/clear : 1"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 73.0, 82.0, 330.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 116, 114, 97, 110, 115, 108, 97, 116, 101, 0, 0, 44, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0 ],
					"saved_bundle_length" : 68,
					"text" : "/svgdraw/1/foo/transform/translate : [0, 0]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-9",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 341.0, 197.0, 273.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 115, 116, 121, 108, 101, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 98, 108, 97, 99, 107, 0, 0, 0 ],
					"saved_bundle_length" : 60,
					"text" : "/svgdraw/1/foo/style/fill : \"black\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 317.0, 138.0, 258.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 115, 116, 121, 108, 101, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 114, 101, 100, 0 ],
					"saved_bundle_length" : 56,
					"text" : "/svgdraw/1/foo/style/fill : \"red\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 341.0, 171.0, 366.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 115, 116, 121, 108, 101, 47, 116, 114, 97, 110, 115, 105, 116, 105, 111, 110, 0, 44, 115, 0, 0, 116, 114, 97, 110, 115, 102, 111, 114, 109, 32, 50, 115, 0, 0, 0, 0 ],
					"saved_bundle_length" : 72,
					"text" : "/svgdraw/1/foo/style/transition : \"transform 2s\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.0, 468.0, 217.0, 22.0 ],
					"text" : "url http://localhost:3002/svgdraw-1.html"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-2",
					"maxclass" : "jweb",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.0, 521.0, 331.0, 266.0 ],
					"rendermode" : 1,
					"url" : "http://localhost:3002/svgdraw-1.html"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-21",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 217.0, 105.0, 359.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 116, 114, 97, 110, 115, 108, 97, 116, 101, 0, 0, 44, 105, 105, 0, -1, -1, -40, -16, 0, 0, 0, 0 ],
					"saved_bundle_length" : 68,
					"text" : "/svgdraw/1/foo/transform/translate : [-10000, 0]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-11",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 12.0, 9.0, 525.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 98, 98, 47, 111, 118, 101, 114, 108, 97, 121, 47, 100, 114, 97, 119, 47, 112, 97, 116, 104, 0, 44, 115, 0, 0, 77, 51, 53, 44, 54, 53, 97, 51, 48, 44, 51, 48, 44, 48, 44, 48, 44, 48, 44, 48, 45, 54, 48, 97, 51, 48, 44, 51, 48, 44, 48, 44, 48, 44, 48, 44, 48, 44, 54, 48, 0, 0, 0, 0 ],
					"saved_bundle_length" : 100,
					"text" : "/svgdraw/1/bb/overlay/draw/path : \"M35,65a30,30,0,0,0,0-60a30,30,0,0,0,0,60\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 225.0, 190.0, 44.0, 22.0 ],
					"text" : "o.dict /"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 137.0, 204.0, 63.0, 22.0 ],
					"text" : "script stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 137.0, 180.0, 64.0, 22.0 ],
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 225.0, 239.0, 230.0, 35.0 ],
					"text" : "node.script node/drawsocket-server.js @watch 1"
				}

			}
, 			{
				"box" : 				{
					"attr" : "rendermode",
					"id" : "obj-48",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 239.0, 472.0, 150.0, 22.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
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
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-8", 0 ]
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
				"name" : "o.accum.maxpat",
				"bootpath" : "~/Documents/dev-lib/CNMAT-odot/patchers/namespace",
				"patcherrelativepath" : "../../../../CNMAT-odot/patchers/namespace",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.dict.mxo",
				"type" : "iLaX"
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
				"name" : "o.union.mxo",
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
				"name" : "o.print.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
