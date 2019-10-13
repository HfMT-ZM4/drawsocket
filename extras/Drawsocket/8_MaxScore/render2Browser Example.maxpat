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
		"rect" : [ 140.0, 79.0, 1125.0, 668.0 ],
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
					"hidden" : 1,
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 888.0, 516.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1042.6666259765625, 487.5, 45.0, 20.0 ],
					"text" : "default"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 952.6666259765625, 457.5, 155.0, 20.0 ],
					"text" : "Turn outputs on selectively"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 952.6666259765625, 543.5, 157.0, 22.0 ],
					"presentation_linecount" : 2,
					"text" : "output canvas socket matrix"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 952.6666259765625, 515.5, 121.0, 22.0 ],
					"presentation_linecount" : 3,
					"text" : "output canvas socket"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 952.6666259765625, 487.5, 83.0, 22.0 ],
					"text" : "output canvas"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 774.6666259765625, 379.75, 272.0, 20.0 ],
					"text" : "Set resources folder relative to patcher's path"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 823.6666259765625, 457.5, 113.0, 20.0 ],
					"text" : "Save page as SVG"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 774.6666259765625, 406.75, 205.0, 22.0 ],
					"presentation_linecount" : 5,
					"text" : "setMediaFolder public/media/project/"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 581.6666259765625, 575.0, 297.0, 20.0 ],
					"text" : "Open URLs in browser (Safari and Chrome work best)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 0,
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
									"id" : "obj-161",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 100.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-26",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 128.0, 95.0, 35.0 ],
									"text" : "autoadjust 0, bgcolor 1 1 1 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-20",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 223.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-161", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 49.5, 245.0, 34.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p init"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.5, 114.0, 102.0, 20.0 ],
					"text" : "Start the server"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 623.6666259765625, 597.0, 233.0, 49.0 ],
					"text" : ";\rmax lauchbrowser http://localhost:3002/1;\rmax launchbrowser http://localhost:3002/2"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-15",
					"linecount" : 2,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 210.25, 597.0, 321.0, 48.0 ],
					"text" : "/port/ip : \"http://192.168.178.177:13002\",\n/port/localhost : \"http://localhost:13002\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 26.25, 180.0, 63.0, 22.0 ],
					"text" : "script stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 26.25, 147.0, 64.0, 22.0 ],
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
					"patching_rect" : [ 26.25, 562.0, 203.0, 22.0 ],
					"text" : "hfmt.drawsocket public @port 13002"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-176",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 253.0, 248.5, 272.0, 20.0 ],
					"text" : "Auto-convert new events into graphical notation"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-175",
					"maxclass" : "gswitch2",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 218.0, 245.0, 29.0, 27.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-168",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 774.6666259765625, 107.0, 67.0, 22.0 ],
					"text" : "mousefilter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-131",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 128.0, 101.5, 162.0, 33.0 ],
					"text" : "Click for new score. \nAdd notes by double clicking"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-128",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 883.9166259765625, 180.0, 238.0, 100.0 ],
					"text" : "Define staff groups by sending the staffgroups message. The numbers after the message refer to the parts shown in the browser. In this particular case the first tab with resource id /1 will display staves 0 and 1 while the second with resource id /2 will display the second staff.  "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-127",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 58.0, 877.1666259765625, 33.0 ],
					"text" : "This patch shows how to create drawsocket messages for display of notation in browsers.\nLaunch Google Chrome and create two browser tabs with the URLs http://localhost:3002/1 and http://localhost:3002/2 to see the result of the staff group definitions."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 36.0,
					"id" : "obj-126",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 7.0, 488.0, 47.0 ],
					"text" : "MaxScore render2Browser"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-124",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 549.0, 114.0, 165.0, 20.0 ],
					"text" : "Click for proportional notation"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 328.0, 114.0, 150.0, 20.0 ],
					"text" : "Click for graphical notation"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 573.0, 217.0, 74.0, 22.0 ],
					"text" : "showClefs 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 549.0, 133.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"embedstate" : [ [ "restoreblob", "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" ] ],
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 549.0, 171.0, 103.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "maxscore.store",
						"parameter_enable" : 0
					}
,
					"text" : "js maxscore.store"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 356.0, 217.0, 215.0, 22.0 ],
					"text" : "getScoreAnnotation clear, showClefs 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 328.0, 138.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"embedstate" : [ [ "restoreblob", "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" ] ],
					"id" : "obj-97",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 328.0, 176.0, 103.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "maxscore.store",
						"parameter_enable" : 0
					}
,
					"text" : "js maxscore.store"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 790.6666259765625, 457.5, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "bang" ],
					"patching_rect" : [ 790.6666259765625, 487.5, 66.0, 22.0 ],
					"text" : "savedialog"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 790.6666259765625, 516.0, 76.0, 22.0 ],
					"text" : "writeSVG $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-118",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 205.0, 97.0, 717.0, 304.0 ],
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
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 38.79998779296875, 125.0, 47.0, 22.0 ],
									"text" : "zl.nth 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 38.79998779296875, 86.0, 56.5, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 38.79998779296875, 53.0, 118.0, 22.0 ],
									"text" : "routepass newScore"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.79998779296875, 8.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 38.79998779296875, 160.399993896484375, 82.0, 22.0 ],
									"text" : "uzi 144 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 101.79998779296875, 195.0, 544.0, 22.0 ],
									"text" : "setInstrumentDimension $1 5 originalPitch -1 127 -1, setInstrumentDimension $1 6 index -1 10000 -1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-11",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 76.29998779296875, 242.60003662109375, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-43", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"fontsize" : [ 12.0 ],
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontname" : [ "Arial" ]
								}
,
								"umenu" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"bgfillcolor" : 									{
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
, 							{
								"name" : "caption text",
								"default" : 								{
									"fontsize" : [ 11.0 ],
									"fontface" : [ 2 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "section dividers",
								"default" : 								{
									"fontsize" : [ 15.0 ],
									"fontname" : [ "Arial" ],
									"fontface" : [ 3 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "section info reg",
								"default" : 								{
									"fontsize" : [ 12.0 ],
									"fontname" : [ "Arial" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "titles",
								"default" : 								{
									"fontsize" : [ 20.0 ],
									"fontname" : [ "Arial" ],
									"fontface" : [ 1 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 128.0, 176.0, 18.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-143",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 774.6666259765625, 338.0, 79.0, 22.0 ],
					"text" : "scroll offset 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 774.6666259765625, 314.0, 79.0, 22.0 ],
					"text" : "scroll offset 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-95",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 774.6666259765625, 192.0, 95.0, 22.0 ],
					"text" : "setTimeUnit 100"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 774.6666259765625, 290.0, 75.0, 22.0 ],
					"text" : "scroll rewind"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 774.6666259765625, 241.0, 63.0, 22.0 ],
					"text" : "scroll stop"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-40",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 774.6666259765625, 216.0, 63.0, 22.0 ],
					"text" : "scroll start"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 774.6666259765625, 157.0, 144.0, 22.0 ],
					"text" : "setProportionalNotation 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 774.6666259765625, 133.0, 144.0, 22.0 ],
					"text" : "setProportionalNotation 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 920.6666259765625, 333.5, 101.0, 22.0 ],
					"text" : "staffgroups 0+1 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 920.6666259765625, 285.5, 98.0, 22.0 ],
					"text" : "staffgroups parts"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 920.6666259765625, 309.5, 100.0, 22.0 ],
					"text" : "staffgroups score"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 128.0, 138.0, 119.0, 22.0 ],
					"text" : "newScore 2 600 400"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.611765, 0.701961, 1.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 128.0, 217.0, 219.0, 22.0 ],
					"text" : "mxj com.algomusic.max.MaxScore"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 2,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-35",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "maxscore.bcanvas.maxpat",
					"numinlets" : 2,
					"numoutlets" : 4,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 128.0, 314.0, 597.5, 207.5 ],
					"prototypename" : "bcanvas",
					"varname" : "bcanvas",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-99",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 774.6666259765625, 266.0, 80.0, 22.0 ],
					"text" : "scroll resume"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"order" : 0,
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"order" : 1,
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"source" : [ "obj-143", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-168", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 1 ],
					"midpoints" : [ 582.5, 295.5, 716.0, 295.5 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-168", 0 ],
					"midpoints" : [ 237.5, 284.0, 738.0, 284.0, 738.0, 97.0, 784.1666259765625, 97.0 ],
					"source" : [ "obj-175", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 1 ],
					"midpoints" : [ 365.5, 295.5, 716.0, 295.5 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-175", 1 ],
					"source" : [ "obj-34", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 1 ],
					"midpoints" : [ 187.5, 295.5, 716.0, 295.5 ],
					"source" : [ "obj-34", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 330.333333333333371, 547.25, 35.75, 547.25 ],
					"source" : [ "obj-35", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"midpoints" : [ 137.5, 532.322402358055115, 91.5, 532.322402358055115, 91.5, 208.0, 137.5, 208.0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"hidden" : 1,
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 1 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"order" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 1,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 1 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"hidden" : 1,
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "maxscore.bcanvas.maxpat",
				"bootpath" : "/Users/Shared/Max 8/Packages/MaxScore/patchers/abstractions",
				"patcherrelativepath" : "../../../../MaxScore/patchers/abstractions",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "pane.js",
				"bootpath" : "/Users/Shared/Max 8/Packages/MaxScore/javascript",
				"patcherrelativepath" : "../../../../MaxScore/javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "picster-select.js",
				"bootpath" : "/Users/Shared/Max 8/Packages/MaxScore/javascript",
				"patcherrelativepath" : "../../../../MaxScore/javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "render2canvas.js",
				"bootpath" : "/Users/Shared/Max 8/Packages/MaxScore/javascript",
				"patcherrelativepath" : "../../../../MaxScore/javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "maxscore.proportionalNotation.js",
				"bootpath" : "/Users/Shared/Max 8/Packages/MaxScore/javascript",
				"patcherrelativepath" : "../../../../MaxScore/javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "MaxScoreKeyMap.txt",
				"bootpath" : "/Users/Shared/Max 8/Packages/MaxScore/patchers/maps",
				"patcherrelativepath" : "../../../../MaxScore/patchers/maps",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "boxSize.js",
				"bootpath" : "/Users/Shared/Max 8/Packages/MaxScore/javascript",
				"patcherrelativepath" : "../../../../MaxScore/javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "jit.pane.js",
				"bootpath" : "/Users/Shared/Max 8/Packages/MaxScore/javascript",
				"patcherrelativepath" : "../../../../MaxScore/javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "socket.pane.js",
				"bootpath" : "/Users/Shared/Max 8/Packages/MaxScore/javascript",
				"patcherrelativepath" : "../../../../MaxScore/javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "maxscore.store.js",
				"bootpath" : "/Users/Shared/Max 8/Packages/MaxScore/javascript",
				"patcherrelativepath" : "../../../../MaxScore/javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "hfmt.drawsocket.maxpat",
				"bootpath" : "/Users/Shared/Max 8/Packages/drawsocket/patchers",
				"patcherrelativepath" : "../../../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "drawsocket-server.js",
				"bootpath" : "/Users/Shared/Max 8/Packages/drawsocket/code/node",
				"patcherrelativepath" : "../../../code/node",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "startscript.js",
				"bootpath" : "/Users/Shared/Max 8/Packages/drawsocket/code",
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
					"fontsize" : [ 11.0 ],
					"fontface" : [ 2 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "section dividers",
				"default" : 				{
					"fontsize" : [ 15.0 ],
					"fontname" : [ "Arial" ],
					"fontface" : [ 3 ]
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
					"fontsize" : [ 20.0 ],
					"fontname" : [ "Arial" ],
					"fontface" : [ 1 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
