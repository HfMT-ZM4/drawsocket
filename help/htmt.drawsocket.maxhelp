{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 10,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 158.0, 79.0, 1155.0, 937.0 ],
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
		"showrootpatcherontab" : 0,
		"showontab" : 0,
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1155.0, 911.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-34",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 928.5, 320.0, 128.0, 33.0 ],
									"text" : "key maxOutput sends out the value of val"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-28",
									"maxclass" : "o.display",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 45.0, 782.5, 287.0, 33.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "dictionary" ],
									"patching_rect" : [ 45.0, 731.0, 100.0, 22.0 ],
									"text" : "dict.deserialize"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 45.0, 702.5, 100.0, 22.0 ],
									"text" : "route message"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 57.5, 333.0, 133.0, 20.0 ],
									"text" : "send to local instance"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 248.0, 337.0, 133.0, 20.0 ],
									"text" : "send to everyone"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 463.0, 337.0, 133.0, 20.0 ],
									"text" : "send to one peer URL"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 441.064453125, 305.0, 161.0, 22.0 ],
									"text" : "prepend signalPeer /barbara"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 10,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 37.0, 22.0 ],
													"text" : "o.dict"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"linecount" : 2,
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 134.5, 100.0, 35.0 ],
													"text" : "dict.serialize @mode json"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-23",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 49.999999874999958, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-25",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 49.999999874999958, 229.5, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 441.064453125, 267.0, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p serialize"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-17",
									"linecount" : 9,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 441.064453125, 109.0, 165.0, 136.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -112, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 120, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 120, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 98, 108, 117, 101, 0, 0, 0, 0 ],
									"saved_bundle_length" : 184,
									"text" : "/key : \"svg\",\n/val : {\n  /new : \"circle\",\n  /id : \"foo\",\n  /cx : 120,\n  /cy : 120,\n  /r : 20,\n  /fill : \"blue\"\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 10,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 37.0, 22.0 ],
													"text" : "o.dict"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"linecount" : 2,
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 134.5, 100.0, 35.0 ],
													"text" : "dict.serialize @mode json"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-23",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 49.999999874999958, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-25",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 49.999999874999958, 229.5, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 903.0, 284.0, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p serialize"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-12",
									"linecount" : 4,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 903.0, 196.0, 223.0, 66.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 109, 97, 120, 79, 117, 116, 112, 117, 116, 0, 0, 0, 0, 0, 0, 68, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 52, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 109, 115, 103, 0, 0, 0, 0, 44, 115, 0, 0, 104, 101, 108, 108, 111, 32, 109, 97, 120, 79, 117, 116, 112, 117, 116, 33, 0, 0, 0, 0 ],
									"saved_bundle_length" : 116,
									"text" : "/key : \"maxOutput\",\n/val : {\n  /msg : \"hello maxOutput!\"\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 407.5, 456.0, 244.0, 87.0 ],
									"text" : "you can also communicate between instances of jweb that are logged into the server\n\nthis can also be used as a server if your comptuer is setup with an open port."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 10,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 37.0, 22.0 ],
													"text" : "o.dict"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"linecount" : 2,
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 134.5, 100.0, 35.0 ],
													"text" : "dict.serialize @mode json"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-23",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 49.999999874999958, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-25",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 49.999999874999958, 229.5, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 45.0, 263.0, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p serialize"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-30",
									"linecount" : 9,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 45.0, 101.0, 165.0, 136.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -108, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 98, 111, 98, 98, 121, 0, 0, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 50, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 50, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 111, 114, 97, 110, 103, 101, 0, 0 ],
									"saved_bundle_length" : 188,
									"text" : "/key : \"svg\",\n/val : {\n  /new : \"circle\",\n  /id : \"bobby\",\n  /cx : 50,\n  /cy : 50,\n  /r : 20,\n  /fill : \"orange\"\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 10,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 37.0, 22.0 ],
													"text" : "o.dict"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"linecount" : 2,
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 134.5, 100.0, 35.0 ],
													"text" : "dict.serialize @mode json"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-23",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 49.999999874999958, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-25",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 49.999999874999958, 229.5, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 242.0, 263.0, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p serialize"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 10,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 37.0, 22.0 ],
													"text" : "o.dict"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"linecount" : 2,
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 134.5, 100.0, 35.0 ],
													"text" : "dict.serialize @mode json"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-23",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 49.999999874999958, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-25",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 49.999999874999958, 229.5, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 716.064453125, 240.0, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p serialize"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-22",
									"linecount" : 9,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 242.0, 101.0, 165.0, 136.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -116, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 98, 111, 98, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 16, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 114, 101, 100, 0 ],
									"saved_bundle_length" : 180,
									"text" : "/key : \"svg\",\n/val : {\n  /new : \"circle\",\n  /id : \"bob\",\n  /cx : 100,\n  /cy : 100,\n  /r : 20,\n  /fill : \"red\"\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 740.064453125, 404.0, 177.0, 22.0 ],
									"text" : "url http://localhost:3002/barbara"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "jweb",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 716.064453125, 443.0, 320.0, 240.0 ],
									"rendermode" : 0,
									"url" : "http://localhost:3002/barbara"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 242.0, 305.0, 117.0, 22.0 ],
									"text" : "prepend broadcast"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 45.0, 303.0, 117.0, 22.0 ],
									"text" : "prepend drawsocket"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 716.064453125, 347.0, 148.0, 22.0 ],
									"text" : "prepend signalPeer /loco"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-5",
									"linecount" : 9,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 716.064453125, 82.0, 165.0, 136.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -112, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 120, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 120, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 98, 108, 117, 101, 0, 0, 0, 0 ],
									"saved_bundle_length" : 184,
									"text" : "/key : \"svg\",\n/val : {\n  /new : \"circle\",\n  /id : \"foo\",\n  /cx : 120,\n  /cy : 120,\n  /r : 20,\n  /fill : \"blue\"\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 45.0, 394.0, 158.0, 22.0 ],
									"text" : "url http://localhost:3002/loco"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "jweb",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 45.0, 443.0, 320.0, 240.0 ],
									"rendermode" : 0,
									"url" : "http://localhost:3002/loco"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ],
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
					"patching_rect" : [ 472.0, 334.446458239907543, 150.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p jweb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 1015.0, 576.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-3",
									"linecount" : 6,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 161.46153724193573, 117.990291714668274, 136.0, 92.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 112, 47, 118, 105, 101, 119, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 109, 111, 117, 115, 101, 0, 0, 0, 0, 0, 0, 52, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 36, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 101, 110, 97, 98, 108, 101, 0, 44, 105, 0, 0, 0, 0, 0, 1 ],
									"saved_bundle_length" : 132,
									"text" : "/view : {\n\t/key : \"mouse\",\n\t/val : {\n\t\t/enable : 1\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-50",
									"linecount" : 7,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.0, 283.330096781253815, 301.0, 106.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -120, 47, 118, 105, 101, 119, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 109, 111, 117, 115, 101, 0, 0, 0, 0, 0, 0, 76, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 101, 109, 111, 118, 101, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 20, 47, 101, 118, 101, 110, 116, 0, 0, 44, 115, 0, 0, 109, 111, 117, 115, 101, 117, 112, 0 ],
									"saved_bundle_length" : 156,
									"text" : "/view : {\n\t/key : \"mouse\",\n\t/val : {\n\t\t/remove : \"foo\",\n\t\t/event : \"mouseup\"\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-48",
									"linecount" : 11,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 373.67474502325058, 110.330096781253815, 301.0, 160.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -20, 47, 118, 105, 101, 119, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -36, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 109, 111, 117, 115, 101, 0, 0, 0, 0, 0, 0, -80, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 124, 47, 99, 97, 108, 108, 98, 97, 99, 107, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 101, 118, 101, 110, 116, 0, 0, 44, 115, 0, 0, 109, 111, 117, 115, 101, 117, 112, 0, 0, 0, 0, 20, 47, 97, 114, 103, 115, 0, 0, 0, 44, 115, 0, 0, 101, 118, 101, 110, 116, 0, 0, 0, 0, 0, 0, 36, 47, 102, 117, 110, 99, 116, 105, 111, 110, 0, 0, 0, 44, 115, 0, 0, 99, 111, 110, 115, 111, 108, 101, 46, 108, 111, 103, 40, 101, 118, 101, 110, 116, 41, 0, 0 ],
									"saved_bundle_length" : 256,
									"text" : "/view : {\n\t/key : \"mouse\",\n\t/val : {\n\t\t/id : \"foo\",\n\t\t/callback : {\n\t\t\t/event : \"mouseup\",\n\t\t\t/args : \"event\",\n\t\t\t/function : \"console.log(event)\"\n\t\t}\n\t}\n}"
								}

							}
 ],
						"lines" : [  ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ],
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
					"patching_rect" : [ 389.0, 412.0, 100.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p mouse"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1155.0, 911.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-32",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 186.8642578125, 83.33331298828125, 279.0, 22.0 ],
									"text" : "See the Extras menu for more examples!"
								}

							}
 ],
						"lines" : [  ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ],
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
					"patching_rect" : [ 500.0, 403.446458239907543, 46.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p more"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1155.0, 911.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [  ],
						"lines" : [  ]
					}
,
					"patching_rect" : [ 525.0, 452.0, 25.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p ?"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1155.0, 911.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"fontface" : 3,
									"fontlink" : 1,
									"id" : "obj-64",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 78.0, 241.59375, 329.388671875, 21.40625 ],
									"text" : "Click here for an overview of browser debugging tools.",
									"texton" : "Click here for an overview of browser debugging tools.",
									"textoncolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"textovercolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
									"usetextovercolor" : 1
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-4",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 78.0, 288.0, 564.0, 49.0 ],
									"text" : ";\rmax launchbrowser https://developer.mozilla.org/en-US/docs/Learn/Common_questions/What_are_browser_developer_tools"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-31",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 84.8642578125, 138.33331298828125, 667.0, 69.0 ],
									"text" : "Most modern browsers provide \"Developers Tools\" which allow you to see the page's HTML layout in real time. For example on Mac in Chrome and Safari, you can press the alt-cmd-i keyboard shortcut to open the developer window. You may need to enable the show developer tools option in the browser before this shortcut will work."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-32",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 84.8642578125, 111.33331298828125, 186.0, 22.0 ],
									"text" : "Browser debugging tools: "
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"source" : [ "obj-64", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ],
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
					"patching_rect" : [ 475.0, 366.446458239907543, 150.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p debugging"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1155.0, 911.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-15",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 237.0, 50.0, 443.0, 22.0 ],
									"text" : "State cache: a mechanism to remember the state of a client page."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 108.0, 472.5, 100.0, 22.0 ],
									"text" : "s to_drawsocket"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 661.0, 567.83331298828125, 137.0, 22.0 ],
									"text" : "http://localhost:3002/4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 519.0, 567.83331298828125, 137.0, 22.0 ],
									"text" : "http://localhost:3002/3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 370.8857421875, 567.83331298828125, 137.0, 22.0 ],
									"text" : "http://localhost:3002/2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 226.5, 567.83331298828125, 136.0, 22.0 ],
									"text" : "http://localhost:3002/1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 370.8857421875, 633.5, 136.0, 35.0 ],
									"text" : ";\rmax launch_browser $1"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-34",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 237.0, 80.0, 508.0, 132.0 ],
									"text" : "The drawsocket cache system stores all incoming messages for a given URL in  memory, so that if you preset the view for a given client, the data will be there ready to view when the client logs into the that URL.\n\nFor example, in this patch we set four URLs /1, /2, /3 and /4.\n\nTo test, first click the button to send the messages to drawsocket and then try logging into the /1, /2, /3 and /4 URLs and notice that each has a different color."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-16",
									"linecount" : 4,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 843.0, 370.0, 165.0, 66.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0, 0, 0, 0, 16, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 0, 0, 42, 0, 0, 0 ],
									"saved_bundle_length" : 92,
									"text" : "/* : {\n  /key : \"clear\",\n  /val : \"*\"\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 108.0, 224.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-11",
									"linecount" : 11,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 660.0, 281.0, 165.0, 164.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -60, 47, 52, 0, 0, 44, 46, 0, 0, 0, 0, 0, -72, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -112, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 103, 114, 101, 101, 110, 0, 0, 0 ],
									"saved_bundle_length" : 216,
									"text" : "/4 : {\n  /key : \"svg\",\n  /val : {\n    /new : \"circle\",\n    /id : \"foo\",\n    /cx : 100,\n    /cy : 100,\n    /r : 20,\n    /fill : \"green\"\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-13",
									"linecount" : 11,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 477.0, 281.0, 165.0, 164.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -60, 47, 51, 0, 0, 44, 46, 0, 0, 0, 0, 0, -72, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -112, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 121, 101, 108, 108, 111, 119, 0, 0 ],
									"saved_bundle_length" : 216,
									"text" : "/3 : {\n  /key : \"svg\",\n  /val : {\n    /new : \"circle\",\n    /id : \"foo\",\n    /cx : 100,\n    /cy : 100,\n    /r : 20,\n    /fill : \"yellow\"\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-10",
									"linecount" : 11,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 291.0, 281.0, 165.0, 164.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -60, 47, 50, 0, 0, 44, 46, 0, 0, 0, 0, 0, -72, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -112, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 111, 114, 97, 110, 103, 101, 0, 0 ],
									"saved_bundle_length" : 216,
									"text" : "/2 : {\n  /key : \"svg\",\n  /val : {\n    /new : \"circle\",\n    /id : \"foo\",\n    /cx : 100,\n    /cy : 100,\n    /r : 20,\n    /fill : \"orange\"\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-9",
									"linecount" : 11,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 108.0, 281.0, 165.0, 164.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -64, 47, 49, 0, 0, 44, 46, 0, 0, 0, 0, 0, -76, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -116, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 16, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 114, 101, 100, 0 ],
									"saved_bundle_length" : 212,
									"text" : "/1 : {\n  /key : \"svg\",\n  /val : {\n    /new : \"circle\",\n    /id : \"foo\",\n    /cx : 100,\n    /cy : 100,\n    /r : 20,\n    /fill : \"red\"\n  }\n}"
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
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"order" : 2,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"order" : 1,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"order" : 3,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ],
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
					"patching_rect" : [ 307.0, 72.0, 88.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p \"state cache\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 862.0, 79.0, 766.0, 664.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-5",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 223.0, 337.0, 150.0, 47.0 ],
									"text" : "tween bezier coordinates are absolute, relative to the first position "
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-27",
									"linecount" : 8,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 191.5, 391.0, 150.0, 106.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -120, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 80, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 97, 114, 116, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0 ],
									"saved_bundle_length" : 156,
									"text" : "/* : {\n\t/key : \"tween\",\n\t/val : {\n\t\t/cmd : \"start\",\n\t\t/id : \"fooTween\"\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-1",
									"linecount" : 15,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 69.0, 46.0, 366.0, 201.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 28, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, 16, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -24, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, 108, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 98, 97, 114, 0, 0, 0, 0, 48, 47, 100, 0, 0, 44, 115, 0, 0, 109, 32, 48, 32, 48, 32, 81, 32, 50, 48, 32, 50, 48, 48, 32, 50, 48, 48, 32, 49, 48, 48, 32, 50, 48, 48, 32, 50, 48, 48, 32, 49, 48, 48, 32, 49, 48, 48, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 112, 97, 116, 104, 0, 0, 0, 0, 0, 0, 0, 104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 99, 99, 0, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5 ],
									"saved_bundle_length" : 304,
									"text" : "/* : {\n\t/key : \"svg\",\n\t/val : [{\n\t\t/id : \"bar\",\n\t\t/d : \"m 0 0 Q 20 200 200 100 200 200 100 100\",\n\t\t/new : \"path\"\n\t}, {\n\t\t/new : \"circle\",\n\t\t/id : \"cc\",\n\t\t/cx : 0,\n\t\t/cy : 0,\n\t\t/r : 5\n\t}]\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-38",
									"linecount" : 32,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 448.0, 65.0, 193.0, 432.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 68, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 2, 56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 2, 12, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, -4, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 0, 16, 47, 116, 97, 114, 103, 101, 116, 0, 44, 115, 0, 0, 35, 99, 99, 0, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2, 0, 0, 1, -88, 47, 118, 97, 114, 115, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 117, 115, 101, 100, 0, 44, 115, 0, 0, 116, 114, 117, 101, 0, 0, 0, 0, 0, 0, 1, 84, 47, 98, 101, 122, 105, 101, 114, 0, 44, 46, 0, 0, 0, 0, 1, 68, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 113, 117, 97, 100, 114, 97, 116, 105, 99, 0, 0, 0, 0, 0, 1, 20, 47, 118, 97, 108, 117, 101, 115, 0, 44, 46, 46, 46, 46, 46, 0, 0, 0, 0, 0, 48, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, -56, 0, 0, 0, 48, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, -56, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 48, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, -56, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, -56, 0, 0, 0, 48, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 20, 47, 101, 97, 115, 101, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 97, 114, 0, 0 ],
									"saved_bundle_length" : 600,
									"text" : "/* : {\n\t/key : \"tween\",\n\t/val : {\n\t\t/id : \"fooTween\",\n\t\t/target : \"#cc\",\n\t\t/dur : 2,\n\t\t/vars : {\n\t\t\t/paused : \"true\",\n\t\t\t/bezier : {\n\t\t\t\t/type : \"quadratic\",\n\t\t\t\t/values : [{\n\t\t\t\t\t/x : 0,\n\t\t\t\t\t/y : 0\n\t\t\t\t}, {\n\t\t\t\t\t/x : 20,\n\t\t\t\t\t/y : 200\n\t\t\t\t}, {\n\t\t\t\t\t/x : 200,\n\t\t\t\t\t/y : 100\n\t\t\t\t}, {\n\t\t\t\t\t/x : 200,\n\t\t\t\t\t/y : 200\n\t\t\t\t}, {\n\t\t\t\t\t/x : 100,\n\t\t\t\t\t/y : 100\n\t\t\t\t}]\n\t\t\t},\n\t\t\t/ease : \"linear\"\n\t\t}\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 73.0, 548.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ],
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
					"patching_rect" : [ 296.5, 233.209843679930714, 51.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p bezier"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1155.0, 911.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 579.0, 580.0, 286.0, 21.0 ],
									"text" : "for example an iframe can load another website:"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-9",
									"linecount" : 16,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 563.0, 603.0, 324.0, 234.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 108, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0, 0, 0, 1, 52, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, 36, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 105, 102, 114, 97, 109, 101, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 102, 111, 114, 109, 115, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 105, 102, 114, 97, 109, 101, 95, 101, 120, 0, 0, 0, 0, 0, 0, -104, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, -120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 112, 111, 115, 105, 116, 105, 111, 110, 0, 0, 0, 44, 115, 0, 0, 97, 98, 115, 111, 108, 117, 116, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 116, 111, 112, 0, 0, 0, 0, 44, 115, 0, 0, 48, 112, 120, 0, 0, 0, 0, 16, 47, 108, 101, 102, 116, 0, 0, 0, 44, 115, 0, 0, 48, 112, 120, 0, 0, 0, 0, 20, 47, 119, 105, 100, 116, 104, 0, 0, 44, 115, 0, 0, 49, 48, 48, 118, 119, 0, 0, 0, 0, 0, 0, 20, 47, 104, 101, 105, 103, 104, 116, 0, 44, 115, 0, 0, 49, 48, 48, 118, 104, 0, 0, 0, 0, 0, 0, 44, 47, 115, 114, 99, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 116, 112, 115, 58, 47, 47, 105, 110, 115, 99, 111, 114, 101, 119, 101, 98, 46, 103, 114, 97, 109, 101, 46, 102, 114, 47, 35, 0, 0, 0 ],
									"saved_bundle_length" : 384,
									"text" : "/* : {\n  /key : \"html\",\n  /val : {\n    /new : \"iframe\",\n    /parent : \"forms\",\n    /id : \"iframe_ex\",\n    /style : {\n      /position : \"absolute\",\n      /top : \"0px\",\n      /left : \"0px\",\n      /width : \"100vw\",\n      /height : \"100vh\"\n    },\n    /src : \"https://inscoreweb.grame.fr/#\"\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 10,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 723.0, 170.0, 923.0, 703.0 ],
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-11",
													"linecount" : 4,
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 243.0, 602.0, 143.0, 66.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0, 0, 0, 0, 20, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 0, 0, 102, 111, 114, 109, 115, 0, 0, 0 ],
													"saved_bundle_length" : 96,
													"text" : "/* : {\n  /key : \"clear\",\n  /val : \"forms\"\n}"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-3",
													"linecount" : 10,
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 573.0, 417.5, 237.0, 150.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -60, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -72, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0, 0, 0, 0, -116, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 118, 105, 100, 0, 0, 0, 0, 0, 84, 47, 115, 101, 116, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 68, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 109, 101, 109, 98, 101, 114, 0, 44, 115, 0, 0, 99, 117, 114, 114, 101, 110, 116, 84, 105, 109, 101, 0, 0, 0, 0, 20, 47, 118, 97, 108, 117, 101, 0, 0, 44, 100, 0, 0, 64, 37, -103, -103, -103, -103, -103, -102 ],
													"saved_bundle_length" : 216,
													"text" : "/* : {\n  /key : \"html\",\n  /val : {\n    /id : \"foovid\",\n    /set : {\n      /member : \"currentTime\",\n      /value : 10.8\n    }\n  }\n}"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 120.0, 347.5, 393.0, 33.0 ],
													"text" : "note: in chrome the user has to click on the screen first before this works, in safari, it might require being in the top level \"forms\" layer"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-7",
													"linecount" : 9,
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 363.0, 417.5, 187.0, 136.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -88, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -100, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0, 0, 0, 0, 112, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 118, 105, 100, 0, 0, 0, 0, 0, 56, 47, 99, 97, 108, 108, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 109, 101, 116, 104, 111, 100, 0, 44, 115, 0, 0, 112, 97, 117, 115, 101, 0, 0, 0 ],
													"saved_bundle_length" : 188,
													"text" : "/* : {\n  /key : \"html\",\n  /val : {\n    /id : \"foovid\",\n    /call : {\n      /method : \"pause\"\n    }\n  }\n}"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-6",
													"linecount" : 9,
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 132.5, 410.5, 179.0, 136.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -88, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -100, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0, 0, 0, 0, 112, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 118, 105, 100, 0, 0, 0, 0, 0, 56, 47, 99, 97, 108, 108, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 109, 101, 116, 104, 111, 100, 0, 44, 115, 0, 0, 112, 108, 97, 121, 0, 0, 0, 0 ],
													"saved_bundle_length" : 188,
													"text" : "/* : {\n  /key : \"html\",\n  /val : {\n    /id : \"foovid\",\n    /call : {\n      /method : \"play\"\n    }\n  }\n}"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 89.0, 623.5, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-1",
													"linecount" : 18,
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 87.0, 89.0, 714.0, 262.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -64, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, -76, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0, 0, 0, 1, -120, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 102, 111, 114, 109, 115, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 118, 105, 100, 101, 111, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 118, 105, 100, 0, 0, 0, 0, 0, 16, 47, 99, 111, 110, 116, 114, 111, 108, 115, 0, 0, 0, 44, 84, 0, 0, 0, 0, 0, 20, 47, 112, 108, 97, 121, 115, 105, 110, 108, 105, 110, 101, 0, 0, 0, 0, 44, 84, 0, 0, 0, 0, 0, -72, 47, 99, 104, 105, 108, 100, 0, 0, 44, 46, 0, 0, 0, 0, 0, -88, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 115, 111, 117, 114, 99, 101, 0, 0, 0, 0, 0, 24, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 118, 105, 100, 101, 111, 47, 109, 112, 52, 0, 0, 0, 0, 0, 0, 96, 47, 115, 114, 99, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 116, 112, 58, 47, 47, 99, 111, 109, 109, 111, 110, 100, 97, 116, 97, 115, 116, 111, 114, 97, 103, 101, 46, 103, 111, 111, 103, 108, 101, 97, 112, 105, 115, 46, 99, 111, 109, 47, 103, 116, 118, 45, 118, 105, 100, 101, 111, 115, 45, 98, 117, 99, 107, 101, 116, 47, 115, 97, 109, 112, 108, 101, 47, 84, 101, 97, 114, 115, 79, 102, 83, 116, 101, 101, 108, 46, 109, 112, 52, 0, 0, 0, 0, 0, 0, 56, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 122, 45, 105, 110, 100, 101, 120, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100 ],
													"saved_bundle_length" : 468,
													"text" : "/* : {\n  /key : \"html\",\n  /val : {\n    /parent : \"forms\",\n    /new : \"video\",\n    /id : \"foovid\",\n    /controls : true,\n    /playsinline : true,\n    /child : {\n      /new : \"source\",\n      /type : \"video/mp4\",\n      /src : \"http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4\"\n    },\n    /style : {\n      /z-index : 100\n    }\n  }\n}"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "black on white",
												"number" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"umenu" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "caption text",
												"default" : 												{
													"fontsize" : [ 11.0 ],
													"fontface" : [ 2 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section dividers",
												"default" : 												{
													"fontsize" : [ 15.0 ],
													"fontname" : [ "Arial" ],
													"fontface" : [ 3 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section info reg",
												"default" : 												{
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "titles",
												"default" : 												{
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
									"patching_rect" : [ 480.0, 575.0, 47.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p video"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-49",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 90.0, 58.0, 47.0, 22.0 ],
									"text" : "HTML"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 10,
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-12",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 59.0, 106.0, 482.0, 35.0 ],
													"text" : ";\rmax launch_browser https://developer.mozilla.org/en-US/docs/Web/HTML"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-15",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "black on white",
												"number" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"umenu" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "caption text",
												"default" : 												{
													"fontsize" : [ 11.0 ],
													"fontface" : [ 2 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section dividers",
												"default" : 												{
													"fontsize" : [ 15.0 ],
													"fontname" : [ "Arial" ],
													"fontface" : [ 3 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section info reg",
												"default" : 												{
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "titles",
												"default" : 												{
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
									"patching_rect" : [ 87.947265625, 140.296875, 19.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"fontface" : 3,
									"fontlink" : 1,
									"id" : "obj-46",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 82.947265625, 111.796875, 270.484375, 21.40625 ],
									"text" : "Click here to learn more about HTML online..",
									"texton" : "Click here to learn more about HTML online..",
									"textoncolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"textovercolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
									"usetextovercolor" : 1
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "obj-8",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 358.0, 477.0, 474.0, 50.0 ],
									"text" : "As with other nodes, you can update the values of a pre-existing element, but it must exist before you can change the values (i.e. /new creates the new element)."
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"id" : "obj-7",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 337.0, 424.0, 262.0, 51.0 ],
									"text" : "the /text is actually the same as /child, but provided as a more ideomatic option for writing text."
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"id" : "obj-6",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 375.0, 224.0, 163.0, 37.0 ],
									"text" : "the /child attribute sets the child value of a node"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 90.0, 86.0, 571.0, 21.0 ],
									"text" : "Drawsocket's \"html\" key, creates and manipulates HTML objects, in a similar way as SVG objects."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-11",
									"linecount" : 4,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 224.0, 541.0, 143.0, 66.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0, 0, 0, 0, 20, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0 ],
									"saved_bundle_length" : 96,
									"text" : "/* : {\n  /key : \"clear\",\n  /val : \"html\"\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-4",
									"linecount" : 7,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 192.0, 384.0, 158.0, 108.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -124, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0, 0, 0, 0, 76, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 100, 105, 118, 95, 101, 120, 0, 0, 0, 0, 0, 20, 47, 116, 101, 120, 116, 0, 0, 0, 44, 115, 0, 0, 103, 114, 101, 97, 116, 0, 0, 0 ],
									"saved_bundle_length" : 152,
									"text" : "/* : {\n  /key : \"html\",\n  /val : {\n    /id : \"div_ex\",\n    /text : \"great\"\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-3",
									"linecount" : 13,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 164.0, 161.0, 230.0, 192.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 12, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, 0, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0, 0, 0, 0, -44, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 100, 105, 118, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 100, 105, 118, 95, 101, 120, 0, 0, 0, 0, 0, 20, 47, 99, 104, 105, 108, 100, 0, 0, 44, 115, 0, 0, 104, 101, 108, 108, 111, 33, 0, 0, 0, 0, 0, 112, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 112, 111, 115, 105, 116, 105, 111, 110, 0, 0, 0, 44, 115, 0, 0, 97, 98, 115, 111, 108, 117, 116, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 111, 112, 0, 0, 0, 0, 44, 115, 0, 0, 50, 48, 48, 112, 120, 0, 0, 0, 0, 0, 0, 20, 47, 108, 101, 102, 116, 0, 0, 0, 44, 115, 0, 0, 49, 48, 48, 112, 120, 0, 0, 0 ],
									"saved_bundle_length" : 288,
									"text" : "/* : {\n  /key : \"html\",\n  /val : {\n    /new : \"div\",\n    /id : \"div_ex\",\n    /child : \"hello!\",\n    /style : {\n      /position : \"absolute\",\n      /top : \"200px\",\n      /left : \"100px\"\n    }\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 164.0, 652.0, 100.0, 22.0 ],
									"text" : "s to_drawsocket"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"hidden" : 1,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ],
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
					"patching_rect" : [ 423.0, 271.446458239907543, 41.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p html"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1155.0, 911.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 10,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"hidden" : 1,
													"id" : "obj-36",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 372.0, 49.0 ],
													"text" : ";\rmax launchbrowser https://developer.mozilla.org/en-US/docs/Web/HTML/Element/button"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-65",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"source" : [ "obj-65", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 50.0, 174.0, 19.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"fontface" : 3,
									"fontlink" : 1,
									"id" : "obj-64",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 64.0, 137.59375, 281.142578125, 21.40625 ],
									"text" : "Click here for an overview of the HTML button.",
									"texton" : "Click here for an overview of the HTML button.",
									"textoncolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"textovercolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
									"usetextovercolor" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 191.0, 615.0, 343.0, 20.0 ],
									"text" : "<< messages from the client browser are being forwarded here"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"fontface" : 3,
									"fontlink" : 1,
									"id" : "obj-46",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 191.0, 637.0, 372.73046875, 21.40625 ],
									"text" : "See the Client Messages subpatch in the first tab for more info",
									"texton" : "See the Client Messages subpatch in the first tab for more info",
									"textoncolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"textovercolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
									"usetextovercolor" : 1
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-47",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 252.0, 668.203125, 33.0, 22.0 ],
									"text" : "front"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 252.0, 701.203125, 106.0, 22.0 ],
									"text" : "s client-msg-patch"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 76.0, 608.0, 100.0, 22.0 ],
									"text" : "r client_message"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 615.0, 471.703125, 150.0, 20.0 ],
									"text" : "click to load page in jweb"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 0.8,
									"fontsize" : 13.0,
									"id" : "obj-33",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 191.0, 362.0, 264.0, 25.0 ],
									"text" : "Everything inside the quotes is Javascript"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-35",
									"maxclass" : "o.display",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 76.0, 668.0, 155.0, 34.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 76.0, 765.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 76.0, 637.0, 100.0, 22.0 ],
									"text" : "o.select /button"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-37",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 70.0, 66.59375, 376.0, 69.0 ],
									"text" : "HTML provides many UI building blocks including a button. Here is a simple button example, that sends a messages back to us when the button is clicked using the drawsocket.send() function. "
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-38",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 70.0, 32.59375, 279.0, 22.0 ],
									"text" : "Basic HTML Button on the \"forms\" layer."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-39",
									"linecount" : 4,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 437.0, 484.5, 143.0, 66.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0, 0, 0, 0, 16, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 0, 0, 42, 0, 0, 0 ],
									"saved_bundle_length" : 92,
									"text" : "/* : {\n  /key : \"clear\",\n  /val : \"*\"\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-40",
									"linecount" : 25,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 76.0, 195.5, 353.0, 360.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 28, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 2, 16, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0, 0, 0, 1, -28, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, -44, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 102, 111, 114, 109, 115, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 98, 117, 116, 116, 111, 110, 45, 102, 111, 111, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 98, 117, 116, 116, 111, 110, 0, 0, 0, 0, 0, 24, 47, 116, 101, 120, 116, 0, 0, 0, 44, 115, 0, 0, 99, 108, 105, 99, 107, 32, 109, 101, 33, 0, 0, 0, 0, 0, 0, -120, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 112, 111, 115, 105, 116, 105, 111, 110, 0, 0, 0, 44, 115, 0, 0, 97, 98, 115, 111, 108, 117, 116, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 111, 112, 0, 0, 0, 0, 44, 115, 0, 0, 49, 48, 48, 112, 120, 0, 0, 0, 0, 0, 0, 20, 47, 108, 101, 102, 116, 0, 0, 0, 44, 115, 0, 0, 49, 48, 48, 112, 120, 0, 0, 0, 0, 0, 0, 20, 47, 119, 105, 100, 116, 104, 0, 0, 44, 115, 0, 0, 55, 48, 112, 120, 0, 0, 0, 0, 0, 0, 0, -48, 47, 111, 110, 99, 108, 105, 99, 107, 0, 0, 0, 0, 44, 115, 0, 0, 10, 32, 32, 32, 32, 47, 47, 116, 104, 105, 115, 32, 105, 115, 32, 97, 108, 108, 32, 106, 97, 118, 97, 115, 99, 114, 105, 112, 116, 32, 105, 110, 115, 105, 100, 101, 32, 116, 104, 101, 32, 113, 117, 111, 116, 101, 115, 10, 32, 32, 32, 32, 32, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 115, 101, 110, 100, 40, 123, 10, 32, 32, 32, 32, 32, 32, 32, 98, 117, 116, 116, 111, 110, 58, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 117, 114, 108, 58, 32, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 111, 115, 99, 112, 114, 101, 102, 105, 120, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 58, 32, 116, 104, 105, 115, 46, 105, 100, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 108, 105, 99, 107, 101, 100, 58, 32, 116, 114, 117, 101, 10, 32, 32, 32, 32, 32, 32, 32, 125, 10, 32, 32, 32, 32, 32, 125, 41, 10, 32, 32, 0, 0, 0, 0 ],
									"saved_bundle_length" : 560,
									"text" : "/* : {\n  /key : \"html\",\n  /val : {\n    /parent : \"forms\",\n    /id : \"button-foo\",\n    /new : \"button\",\n    /text : \"click me!\",\n    /style : {\n      /position : \"absolute\",\n      /top : \"100px\",\n      /left : \"100px\",\n      /width : \"70px\"\n    },\n    /onclick : \"\n    //this is all javascript inside the quotes\n     drawsocket.send({\n       button: {\n         url: drawsocket.oscprefix,\n         id: this.id,\n         clicked: true\n       }\n     })\n  \"\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 615.0, 496.703125, 143.0, 22.0 ],
									"text" : "url http://localhost:3002/1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "jweb",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 615.0, 542.703125, 320.0, 240.0 ],
									"rendermode" : 1,
									"url" : "http://localhost:3002/1"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 10,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 79.0, 845.0, 530.0 ],
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
										"showontab" : 0,
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"bubble" : 1,
													"fontface" : 3,
													"fontsize" : 11.0,
													"id" : "obj-8",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 277.89776611328125, 356.0, 374.0, 47.0 ],
													"text" : "\"forms\" is special HTML div layer, that is located *above* all the other layers, which is used for HTML interaction elements (forms, buttons, etc.)",
													"textcolor" : [ 0.0, 0.423529411764706, 0.886274509803922, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"fontface" : 3,
													"fontsize" : 11.0,
													"id" : "obj-7",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 277.89776611328125, 287.5, 302.0, 23.0 ],
													"text" : "\"main-svg\" where SVG objects are placed by default.",
													"textcolor" : [ 0.0, 0.423529411764706, 0.886274509803922, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"fontface" : 3,
													"fontsize" : 11.0,
													"id" : "obj-6",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 277.89776611328125, 256.5, 490.0, 23.0 ],
													"text" : "\"defs\" is a special SVG parent node that contains definitions of objects to be used later.",
													"textcolor" : [ 0.0, 0.423529411764706, 0.886274509803922, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"fontface" : 3,
													"fontsize" : 11.0,
													"id" : "obj-5",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 277.89776611328125, 225.5, 246.0, 23.0 ],
													"text" : "\"svg\" is the top-level SVG parent element.",
													"textcolor" : [ 0.0, 0.423529411764706, 0.886274509803922, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"fontface" : 3,
													"fontsize" : 11.0,
													"id" : "obj-3",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 277.89776611328125, 201.0, 352.0, 23.0 ],
													"text" : "\"main-html\" is where the HTML objects are placed by default.",
													"textcolor" : [ 0.0, 0.423529411764706, 0.886274509803922, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 13.0,
													"id" : "obj-4",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 54.0, 52.0, 597.0, 21.0 ],
													"text" : "Here is the HTML layout for the default Drawsocket page ( as defined in drawsocket-page.html )"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.396078431372549, 0.396078431372549, 0.396078431372549, 1.0 ],
													"fontname" : "Monaco",
													"fontsize" : 11.0,
													"id" : "obj-2",
													"linecount" : 25,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 54.0, 80.0, 313.0, 350.0 ],
													"text" : "<html>\n <head>\n    <style type=\"text/css\"></style>\n </head>\n\n <body>\n\n    <div id=\"main-div\">\n\n      <div id=\"main-html\"></div>\n\n      <svg id=\"svg\">\n\n          <defs id=\"defs\"></defs>\n\n          <g id=\"main-svg\"></g>\n\n      </svg>\n\n    </div>\n\n    <div id=\"forms\"></div>\n\n </body>\n</html>",
													"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
												}

											}
 ],
										"lines" : [  ],
										"styles" : [ 											{
												"name" : "black on white",
												"number" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"umenu" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "caption text",
												"default" : 												{
													"fontsize" : [ 11.0 ],
													"fontface" : [ 2 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section dividers",
												"default" : 												{
													"fontsize" : [ 15.0 ],
													"fontname" : [ "Arial" ],
													"fontface" : [ 3 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section info reg",
												"default" : 												{
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "titles",
												"default" : 												{
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
									"patching_rect" : [ 458.0, 155.0, 171.0, 24.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p more about page layers"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "obj-19",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 626.0, 357.0, 344.0, 50.0 ],
									"text" : "processes one or more Drawsocket JSON messages. For example, using this function allows you to create new objects as a result of user interactions."
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "obj-18",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 626.0, 328.0, 329.0, 21.0 ],
									"text" : "sends a JS object back to the server (and to Max)"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "obj-17",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 626.0, 299.0, 170.0, 21.0 ],
									"text" : "returns the URL of the client"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 13.0,
									"id" : "obj-16",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 473.0, 299.0, 151.0, 79.0 ],
									"text" : "drawsocket.oscprefix\n\ndrawsocket.send( obj )\n\ndrawsocket.input( obj )"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "obj-15",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 458.0, 195.5, 506.0, 94.0 ],
									"text" : "In order to receive the input value from the input object, we use the \"onclick\" attribute to define a Javascript function to be called by the browser when the user clicks on the button. \n\nIn the funciton we create a new JS object and send it back to the server with one of the special functions exported by Drawsocket."
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "obj-7",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 458.0, 66.59375, 506.0, 79.0 ],
									"text" : "In this example, we create a new HTML element in the top-level \"forms\" layer for handling user interaction. HTML UI objects need to be on the top layer of the page, so that the user clicks are captured by that layer, not the invisible SVG layer.\n\nSee the \"page layers\" subpatch below for more details."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 76.0, 571.0, 100.0, 22.0 ],
									"text" : "s to_drawsocket"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"border" : 2,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-41",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 613.0, 537.703125, 325.0, 247.0 ],
									"proportion" : 0.5
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"hidden" : 1,
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ],
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
					"patching_rect" : [ 439.0, 302.446458239907543, 150.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p \"forms & JS API\""
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1155.0, 911.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 10,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 549.0, 93.0, 707.0, 826.0 ],
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-6",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 426.0, 118.0, 150.0, 33.0 ],
													"text" : "without the attr {} object, the r var is not animated..."
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-40",
													"linecount" : 8,
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 386.5, 593.0, 157.0, 119.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -96, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -108, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 104, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 88, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 105, 109, 101, 0, 0, 0, 44, 100, 0, 0, 63, -27, 30, -72, 96, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 111, 112, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0 ],
													"saved_bundle_length" : 180,
													"text" : "/* : {\n\t/val : {\n\t\t/time : 0.66,\n\t\t/cmd : \"stop\",\n\t\t/id : \"fooTween\"\n\t},\n\t/key : \"tween\"\n}"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 365.0, 514.5, 55.0, 22.0 ],
													"text" : "o.pack /*"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-37",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 365.0, 480.5, 127.0, 22.0 ],
													"text" : "o.pack /val /key tween"
												}

											}
, 											{
												"box" : 												{
													"format" : 6,
													"id" : "obj-36",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 365.0, 413.0, 50.0, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 365.0, 446.0, 200.0, 22.0 ],
													"text" : "o.pack /time /cmd stop /id fooTween"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-5",
													"linecount" : 13,
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 68.0, 121.0, 150.0, 160.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -60, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -72, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -112, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 98, 111, 98, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 112, 117, 114, 112, 108, 101, 0, 0 ],
													"saved_bundle_length" : 216,
													"text" : "/* : {\n\t/key : \"svg\",\n\t/val : {\n\t\t/new : \"circle\",\n\t\t/id : \"bob\",\n\t\t/cx : 100,\n\t\t/cy : 100,\n\t\t/r : 20,\n\t\t/fill : \"purple\"\n\t}\n}"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 68.0, 459.0, 100.0, 22.0 ],
													"text" : "s to_drawsocket"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 220.0, 41.0, 314.0, 47.0 ],
													"text" : "some SVG attributes are not accessible via GSAP's CSS based anmiation, to animate presentation attributes, use the attr : {} sub var object "
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-4",
													"linecount" : 15,
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 228.0, 94.0, 165.0, 214.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 36, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, 24, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, -20, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -36, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 97, 114, 103, 101, 116, 0, 44, 115, 0, 0, 35, 98, 111, 98, 0, 0, 0, 0, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, -124, 47, 118, 97, 114, 115, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 116, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 47, 97, 116, 116, 114, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 32, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 1, 44, 0, 0, 0, 20, 47, 112, 97, 117, 115, 101, 100, 0, 44, 115, 0, 0, 116, 114, 117, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 101, 97, 115, 101, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 97, 114, 0, 0 ],
													"saved_bundle_length" : 312,
													"text" : "/* : {\n\t/key : \"tween\",\n\t/val : {\n\t\t/id : \"fooTween\",\n\t\t/target : \"#bob\",\n\t\t/dur : 1,\n\t\t/vars : {\n\t\t\t/attr : {\n\t\t\t\t/r : 300\n\t\t\t},\n\t\t\t/paused : \"true\",\n\t\t\t/ease : \"linear\"\n\t\t}\n\t}\n}"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-3",
													"linecount" : 13,
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 407.0, 153.0, 165.0, 187.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -12, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, -56, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -72, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 97, 114, 103, 101, 116, 0, 44, 115, 0, 0, 35, 98, 111, 98, 0, 0, 0, 0, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 96, 47, 118, 97, 114, 115, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 30, 0, 0, 0, 20, 47, 112, 97, 117, 115, 101, 100, 0, 44, 115, 0, 0, 116, 114, 117, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 101, 97, 115, 101, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 97, 114, 0, 0 ],
													"saved_bundle_length" : 276,
													"text" : "/* : {\n\t/key : \"tween\",\n\t/val : {\n\t\t/id : \"fooTween\",\n\t\t/target : \"#bob\",\n\t\t/dur : 1,\n\t\t/vars : {\n\t\t\t/r : 30,\n\t\t\t/paused : \"true\",\n\t\t\t/ease : \"linear\"\n\t\t}\n\t}\n}"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"order" : 1,
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 1 ],
													"order" : 0,
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "black on white",
												"number" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"umenu" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "caption text",
												"default" : 												{
													"fontsize" : [ 11.0 ],
													"fontface" : [ 2 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section dividers",
												"default" : 												{
													"fontsize" : [ 15.0 ],
													"fontname" : [ "Arial" ],
													"fontface" : [ 3 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section info reg",
												"default" : 												{
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "titles",
												"default" : 												{
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
									"patching_rect" : [ 578.5, 91.0, 285.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p a note about animating svg presentation attributes"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 10,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 79.0, 1099.0, 838.0 ],
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
										"showontab" : 0,
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"fontface" : 1,
													"fontsize" : 14.0,
													"id" : "obj-49",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 57.5, 63.0, 123.0, 22.0 ],
													"text" : "Tween Timelines"
												}

											}
, 											{
												"box" : 												{
													"hidden" : 1,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 1,
															"revision" : 10,
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
														"assistshowspatchername" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-12",
																	"linecount" : 2,
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 100.0, 482.0, 35.0 ],
																	"text" : ";\rmax launch_browser https://greensock.com/docs"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-15",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-12", 0 ],
																	"source" : [ "obj-15", 0 ]
																}

															}
 ],
														"styles" : [ 															{
																"name" : "black on white",
																"number" : 																{
																	"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
																	"fontsize" : [ 12.0 ],
																	"fontname" : [ "Arial" ]
																}
,
																"umenu" : 																{
																	"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
																	"bgfillcolor" : 																	{
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
, 															{
																"name" : "caption text",
																"default" : 																{
																	"fontsize" : [ 11.0 ],
																	"fontface" : [ 2 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "section dividers",
																"default" : 																{
																	"fontsize" : [ 15.0 ],
																	"fontname" : [ "Arial" ],
																	"fontface" : [ 3 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "section info reg",
																"default" : 																{
																	"fontsize" : [ 12.0 ],
																	"fontname" : [ "Arial" ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "titles",
																"default" : 																{
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
													"patching_rect" : [ 36.5, 115.5, 19.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
													"fontface" : 3,
													"fontlink" : 1,
													"id" : "obj-6",
													"maxclass" : "textbutton",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 54.8642578125, 112.0, 314.271484375, 21.40625 ],
													"text" : "Click here to read the GSAP Documentation online...",
													"texton" : "Click here to read the GSAP Documentation  online...",
													"textoncolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
													"textovercolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
													"usetextovercolor" : 1
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 14.0,
													"id" : "obj-7",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 57.5, 87.0, 565.0, 22.0 ],
													"text" : "Drawsocket uses the GSAP TimelineMax animation library for multi segement animations."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 241.5, 149.0, 160.0, 47.0 ],
													"text" : "2) create a new tween and assign the object target, using CSS style selectors."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 70.0, 171.0, 154.0, 20.0 ],
													"text" : "1) create an object to move"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 509.5, 419.5, 283.0, 20.0 ],
													"text" : "timelines use the same /cmd commands as tweens:"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 415.8642578125, 324.5, 259.0, 20.0 ],
													"text" : "timelines are essentially a sequence of tweens."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 411.5, 188.0, 384.0, 33.0 ],
													"text" : "for simplicty, timelines can be created using the \"tween\" key -- and are recognized by drawsocket, by the /tweens keyword attribute."
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-24",
													"linecount" : 11,
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 70.0, 198.5, 157.0, 146.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -76, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -88, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -128, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 112, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 98, 97, 114, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 116, 101, 120, 116, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 20, 47, 99, 104, 105, 108, 100, 0, 0, 44, 115, 0, 0, 104, 101, 108, 108, 111, 33, 0, 0 ],
													"saved_bundle_length" : 200,
													"text" : "/* : {\n\t/key : \"svg\",\n\t/val : {\n\t\t/id : \"bar\",\n\t\t/new : \"text\",\n\t\t/x : 100,\n\t\t/y : 100,\n\t\t/child : \"hello!\"\n\t}\n}"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-1",
													"linecount" : 32,
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 242.5, 198.5, 165.0, 445.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 124, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 2, 112, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 2, 68, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 2, 52, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 95, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 100, 47, 105, 110, 105, 116, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 117, 115, 101, 100, 0, 44, 115, 0, 0, 116, 114, 117, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 121, 111, 121, 111, 0, 0, 0, 44, 115, 0, 0, 116, 114, 117, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 101, 112, 101, 97, 116, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 1, -96, 47, 116, 119, 101, 101, 110, 115, 0, 44, 46, 46, 0, 0, 0, 0, -60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 97, 114, 103, 101, 116, 0, 44, 115, 0, 0, 35, 98, 97, 114, 0, 0, 0, 0, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, -124, 47, 118, 97, 114, 115, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 116, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 115, 99, 97, 108, 101, 88, 0, 44, 115, 0, 0, 53, 48, 37, 0, 0, 0, 0, 20, 47, 111, 112, 97, 99, 105, 116, 121, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 20, 47, 101, 97, 115, 101, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 97, 114, 0, 0, 0, 0, 0, -56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 97, 114, 103, 101, 116, 0, 44, 115, 0, 0, 35, 98, 97, 114, 0, 0, 0, 0, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2, 0, 0, 0, -120, 47, 118, 97, 114, 115, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 99, 97, 108, 101, 0, 0, 44, 115, 0, 0, 49, 48, 48, 37, 0, 0, 0, 0, 0, 0, 0, 20, 47, 111, 112, 97, 99, 105, 116, 121, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 20, 47, 101, 97, 115, 101, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 97, 114, 0, 0 ],
													"saved_bundle_length" : 656,
													"text" : "/* : {\n\t/key : \"tween\",\n\t/val : {\n\t\t/id : \"foo_line\",\n\t\t/init : {\n\t\t\t/paused : \"true\",\n\t\t\t/yoyo : \"true\",\n\t\t\t/repeat : 20\n\t\t},\n\t\t/tweens : [{\n\t\t\t/target : \"#bar\",\n\t\t\t/dur : 1,\n\t\t\t/vars : {\n\t\t\t\t/y : 0,\n\t\t\t\t/x : 0,\n\t\t\t\t/scaleX : \"50%\",\n\t\t\t\t/opacity : 1,\n\t\t\t\t/ease : \"linear\"\n\t\t\t}\n\t\t}, {\n\t\t\t/target : \"#bar\",\n\t\t\t/dur : 2,\n\t\t\t/vars : {\n\t\t\t\t/y : 10,\n\t\t\t\t/x : 0,\n\t\t\t\t/scale : \"100%\",\n\t\t\t\t/opacity : 1,\n\t\t\t\t/ease : \"linear\"\n\t\t\t}\n\t\t}]\n\t}\n}"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-40",
													"linecount" : 8,
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 626.5, 590.0, 157.0, 119.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -96, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -108, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 104, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 88, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 105, 109, 101, 0, 0, 0, 44, 100, 0, 0, 63, -13, -123, 30, -64, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 111, 112, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 95, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0 ],
													"saved_bundle_length" : 180,
													"text" : "/* : {\n\t/val : {\n\t\t/time : 1.22,\n\t\t/cmd : \"stop\",\n\t\t/id : \"foo_line\"\n\t},\n\t/key : \"tween\"\n}"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 517.0, 602.5, 100.0, 22.0 ],
													"text" : "s to_drawsocket"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 517.0, 556.5, 55.0, 22.0 ],
													"text" : "o.pack /*"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-37",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 517.0, 522.5, 127.0, 22.0 ],
													"text" : "o.pack /val /key tween"
												}

											}
, 											{
												"box" : 												{
													"format" : 6,
													"id" : "obj-36",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 517.0, 455.0, 50.0, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 517.0, 488.0, 200.0, 22.0 ],
													"text" : "o.pack /time /cmd stop /id foo_line"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 72.0, 729.0, 100.0, 22.0 ],
													"text" : "s to_drawsocket"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"order" : 1,
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 1 ],
													"order" : 0,
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"hidden" : 1,
													"source" : [ "obj-6", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "black on white",
												"number" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"umenu" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "caption text",
												"default" : 												{
													"fontsize" : [ 11.0 ],
													"fontface" : [ 2 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section dividers",
												"default" : 												{
													"fontsize" : [ 15.0 ],
													"fontname" : [ "Arial" ],
													"fontface" : [ 3 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section info reg",
												"default" : 												{
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "titles",
												"default" : 												{
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
									"patching_rect" : [ 578.5, 51.209843679930714, 208.0, 24.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p multi-segment tween timelines"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-49",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.5, 15.0, 123.0, 22.0 ],
									"text" : "Tween Animation"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 556.3642578125, 750.5, 277.0, 20.0 ],
									"text" : "key \"clear\" with the val \"tween\" clears only Tweens"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 10,
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-12",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 482.0, 35.0 ],
													"text" : ";\rmax launch_browser https://greensock.com/docs"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-15",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "black on white",
												"number" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"umenu" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "caption text",
												"default" : 												{
													"fontsize" : [ 11.0 ],
													"fontface" : [ 2 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section dividers",
												"default" : 												{
													"fontsize" : [ 15.0 ],
													"fontname" : [ "Arial" ],
													"fontface" : [ 3 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section info reg",
												"default" : 												{
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "titles",
												"default" : 												{
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
									"patching_rect" : [ 14.5, 67.5, 19.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"fontface" : 3,
									"fontlink" : 1,
									"id" : "obj-46",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 32.8642578125, 64.0, 314.271484375, 21.40625 ],
									"text" : "Click here to read the GSAP Documentation online...",
									"texton" : "Click here to read the GSAP Documentation  online...",
									"textoncolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"textovercolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
									"usetextovercolor" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-40",
									"linecount" : 8,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 861.8642578125, 415.5, 165.0, 122.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -96, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -108, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 104, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 88, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 105, 109, 101, 0, 0, 0, 44, 100, 0, 0, 63, -32, -11, -62, -128, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 111, 112, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0 ],
									"saved_bundle_length" : 180,
									"text" : "/* : {\n  /val : {\n    /time : 0.53,\n    /cmd : \"stop\",\n    /id : \"fooTween\"\n  },\n  /key : \"tween\"\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 840.3642578125, 577.0, 100.0, 22.0 ],
									"text" : "s to_drawsocket"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 840.3642578125, 337.0, 55.0, 22.0 ],
									"text" : "o.pack /*"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 840.3642578125, 303.0, 127.0, 22.0 ],
									"text" : "o.pack /val /key tween"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-36",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 840.3642578125, 235.5, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 840.3642578125, 268.5, 200.0, 22.0 ],
									"text" : "o.pack /time /cmd stop /id fooTween"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 0.1,
									"bubbleside" : 2,
									"id" : "obj-33",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 828.8642578125, 176.0, 250.0, 52.0 ],
									"text" : "optional keyword /time, with the  stop /cmd, stops the tween at a specific timepoint."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 561.8642578125, 668.5, 274.0, 20.0 ],
									"text" : "\"playfrom\" plays from a specfied time in the tween"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-32",
									"linecount" : 8,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 378.8642578125, 611.0, 179.0, 122.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -92, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 108, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 92, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 0, 24, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 112, 108, 97, 121, 102, 114, 111, 109, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 105, 109, 101, 0, 0, 0, 44, 100, 0, 0, 63, -32, 0, 0, 0, 0, 0, 0 ],
									"saved_bundle_length" : 184,
									"text" : "/* : {\n  /key : \"tween\",\n  /val : {\n    /id : \"fooTween\",\n    /cmd : \"playfrom\",\n    /time : 0.5\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 561.8642578125, 541.5, 268.0, 20.0 ],
									"text" : "\"reset\" resets the tween back to its starting point."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-29",
									"linecount" : 7,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 378.8642578125, 489.0, 172.0, 108.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -120, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 80, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 114, 101, 115, 101, 116, 0, 0, 0 ],
									"saved_bundle_length" : 156,
									"text" : "/* : {\n  /key : \"tween\",\n  /val : {\n    /id : \"fooTween\",\n    /cmd : \"reset\"\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 561.8642578125, 420.5, 263.0, 47.0 ],
									"text" : "\"play\" starts the tween from the current position up until the end. if the tween is already at the end it will not play."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 561.8642578125, 312.5, 262.0, 20.0 ],
									"text" : "\"stop\" pauses the tween at the current possition"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-19",
									"linecount" : 7,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 382.8642578125, 372.0, 172.0, 108.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -120, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 80, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 112, 108, 97, 121, 0, 0, 0, 0 ],
									"saved_bundle_length" : 156,
									"text" : "/* : {\n  /key : \"tween\",\n  /val : {\n    /id : \"fooTween\",\n    /cmd : \"play\"\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 386.3642578125, 91.0, 168.0, 47.0 ],
									"text" : "3) the tween /cmd keyword can be used to trigger actions."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 203.3642578125, 91.0, 160.0, 47.0 ],
									"text" : "2) create a new tween and assign the object target, using CSS style selectors."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 32.8642578125, 92.0, 154.0, 20.0 ],
									"text" : "1) create an object to move"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 35.5, 39.0, 362.0, 22.0 ],
									"text" : "Drawsocket uses the GSAP TweenMax animation library."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-2",
									"linecount" : 13,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 184.3642578125, 140.0, 187.0, 192.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 8, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -4, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, -48, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 97, 114, 103, 101, 116, 0, 44, 115, 0, 0, 35, 98, 97, 114, 0, 0, 0, 0, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 104, 47, 118, 97, 114, 115, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 88, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 114, 111, 116, 97, 116, 105, 111, 110, 0, 0, 0, 44, 105, 0, 0, 0, 0, 1, 104, 0, 0, 0, 20, 47, 112, 97, 117, 115, 101, 100, 0, 44, 115, 0, 0, 116, 114, 117, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 101, 97, 115, 101, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 97, 114, 0, 0 ],
									"saved_bundle_length" : 284,
									"text" : "/* : {\n  /key : \"tween\",\n  /val : {\n    /id : \"fooTween\",\n    /target : \"#bar\",\n    /dur : 1,\n    /vars : {\n      /rotation : 360,\n      /paused : \"true\",\n      /ease : \"linear\"\n    }\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-20",
									"linecount" : 4,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 386.3642578125, 737.0, 143.0, 66.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0, 0, 0, 0, 20, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0 ],
									"saved_bundle_length" : 96,
									"text" : "/* : {\n  /key : \"clear\",\n  /val : \"tween\"\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-12",
									"linecount" : 7,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 382.8642578125, 258.5, 172.0, 108.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -120, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 80, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 111, 112, 0, 0, 0, 0 ],
									"saved_bundle_length" : 156,
									"text" : "/* : {\n  /key : \"tween\",\n  /val : {\n    /id : \"fooTween\",\n    /cmd : \"stop\"\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 561.8642578125, 195.0, 211.0, 20.0 ],
									"text" : "\"start\" starts the tween from beginning"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-27",
									"linecount" : 7,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 382.8642578125, 140.0, 172.0, 108.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -120, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 80, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 97, 114, 116, 0, 0, 0 ],
									"saved_bundle_length" : 156,
									"text" : "/* : {\n  /key : \"tween\",\n  /val : {\n    /id : \"fooTween\",\n    /cmd : \"start\"\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-24",
									"linecount" : 10,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 2.5, 140.0, 172.0, 150.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -76, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -88, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -128, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 112, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 98, 97, 114, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 116, 101, 120, 116, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 20, 47, 99, 104, 105, 108, 100, 0, 0, 44, 115, 0, 0, 104, 101, 108, 108, 111, 33, 0, 0 ],
									"saved_bundle_length" : 200,
									"text" : "/* : {\n  /key : \"svg\",\n  /val : {\n    /id : \"bar\",\n    /new : \"text\",\n    /x : 100,\n    /y : 100,\n    /child : \"hello!\"\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-8",
									"linecount" : 14,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 172.8642578125, 372.5, 187.0, 206.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 16, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, 4, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, -40, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 97, 114, 103, 101, 116, 0, 44, 115, 0, 0, 35, 98, 97, 114, 0, 0, 0, 0, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 112, 47, 118, 97, 114, 115, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 1, 114, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 20, 47, 112, 97, 117, 115, 101, 100, 0, 44, 115, 0, 0, 116, 114, 117, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 101, 97, 115, 101, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 97, 114, 0, 0 ],
									"saved_bundle_length" : 292,
									"text" : "/* : {\n  /key : \"tween\",\n  /val : {\n    /id : \"fooTween\",\n    /target : \"#bar\",\n    /dur : 1,\n    /vars : {\n      /y : 370,\n      /x : 100,\n      /paused : \"true\",\n      /ease : \"linear\"\n    }\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 32.8642578125, 780.0, 100.0, 22.0 ],
									"text" : "s to_drawsocket"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"order" : 1,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 1 ],
									"order" : 0,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"hidden" : 1,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ],
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
					"patching_rect" : [ 401.5, 233.209843679930714, 114.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p \"tween animation\""
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1155.0, 911.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 10,
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-12",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 482.0, 35.0 ],
													"text" : ";\rmax launch_browser https://developer.mozilla.org/en-US/docs/Web/SVG"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-15",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "black on white",
												"number" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"umenu" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "caption text",
												"default" : 												{
													"fontsize" : [ 11.0 ],
													"fontface" : [ 2 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section dividers",
												"default" : 												{
													"fontsize" : [ 15.0 ],
													"fontname" : [ "Arial" ],
													"fontface" : [ 3 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section info reg",
												"default" : 												{
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "titles",
												"default" : 												{
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
									"patching_rect" : [ 43.974609375, 80.0, 19.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"fontface" : 3,
									"fontlink" : 1,
									"id" : "obj-46",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 64.974609375, 80.0, 306.05078125, 21.40625 ],
									"text" : "Click here to read the SVG Documentation online...",
									"texton" : "Click here to read the SVG Documentation  online...",
									"textoncolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"textovercolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
									"usetextovercolor" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-49",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 70.5, 21.0, 174.0, 22.0 ],
									"text" : "Defining SVG prototypes"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 10,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 260.0, 79.0, 832.0, 535.0 ],
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
										"showontab" : 0,
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"bubble" : 1,
													"fontface" : 3,
													"fontsize" : 11.0,
													"id" : "obj-8",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 250.89776611328125, 320.0, 374.0, 47.0 ],
													"text" : "\"forms\" is special HTML div layer, that is located *above* all the other layers, which is used for HTML interaction elements (forms, buttons, etc.)",
													"textcolor" : [ 0.0, 0.423529411764706, 0.886274509803922, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"fontface" : 3,
													"fontsize" : 11.0,
													"id" : "obj-7",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 250.89776611328125, 251.5, 302.0, 23.0 ],
													"text" : "\"main-svg\" where SVG objects are placed by default.",
													"textcolor" : [ 0.0, 0.423529411764706, 0.886274509803922, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"fontface" : 3,
													"fontsize" : 11.0,
													"id" : "obj-6",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 250.89776611328125, 220.5, 490.0, 23.0 ],
													"text" : "\"defs\" is a special SVG parent node that contains definitions of objects to be used later.",
													"textcolor" : [ 0.0, 0.423529411764706, 0.886274509803922, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"fontface" : 3,
													"fontsize" : 11.0,
													"id" : "obj-5",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 250.89776611328125, 189.5, 246.0, 23.0 ],
													"text" : "\"svg\" is the top-level SVG parent element.",
													"textcolor" : [ 0.0, 0.423529411764706, 0.886274509803922, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"fontface" : 3,
													"fontsize" : 11.0,
													"id" : "obj-3",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 250.89776611328125, 165.0, 352.0, 23.0 ],
													"text" : "\"main-html\" is where the HTML objects are placed by default.",
													"textcolor" : [ 0.0, 0.423529411764706, 0.886274509803922, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 13.0,
													"id" : "obj-4",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 27.0, 16.0, 597.0, 21.0 ],
													"text" : "Here is the HTML layout for the default Drawsocket page ( as defined in drawsocket-page.html )"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.396078431372549, 0.396078431372549, 0.396078431372549, 1.0 ],
													"fontname" : "Monaco",
													"fontsize" : 11.0,
													"id" : "obj-2",
													"linecount" : 25,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 27.0, 44.0, 313.0, 350.0 ],
													"text" : "<html>\n <head>\n    <style type=\"text/css\"></style>\n </head>\n\n <body>\n\n    <div id=\"main-div\">\n\n      <div id=\"main-html\"></div>\n\n      <svg id=\"svg\">\n\n          <defs id=\"defs\"></defs>\n\n          <g id=\"main-svg\"></g>\n\n      </svg>\n\n    </div>\n\n    <div id=\"forms\"></div>\n\n </body>\n</html>",
													"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
												}

											}
 ],
										"lines" : [  ],
										"styles" : [ 											{
												"name" : "black on white",
												"number" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"umenu" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "caption text",
												"default" : 												{
													"fontsize" : [ 11.0 ],
													"fontface" : [ 2 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section dividers",
												"default" : 												{
													"fontsize" : [ 15.0 ],
													"fontname" : [ "Arial" ],
													"fontface" : [ 3 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section info reg",
												"default" : 												{
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "titles",
												"default" : 												{
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
									"patching_rect" : [ 325.5, 119.8549218399653, 171.0, 24.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p more about page layers"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 113.5, 518.0, 154.0, 47.0 ],
									"text" : "nothing is drawn, because the parent is the SVG \"defs\" element."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 304.0, 764.0, 173.0, 20.0 ],
									"text" : "clearing all also clears the defs"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-11",
									"linecount" : 4,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 315.66668701171875, 681.0, 143.0, 66.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0, 0, 0, 0, 16, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 0, 0, 42, 0, 0, 0 ],
									"saved_bundle_length" : 92,
									"text" : "/* : {\n  /key : \"clear\",\n  /val : \"*\"\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 743.0, 101.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-31",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 660.0, 200.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 660.0, 151.0, 73.0, 22.0 ],
									"text" : "random 500"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 660.0, 67.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 743.0, 151.0, 79.0, 22.0 ],
									"text" : "sprintf foo-%i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 585.0, 151.0, 73.0, 22.0 ],
									"text" : "random 500"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 660.0, 101.0, 54.0, 22.0 ],
									"text" : "uzi 1000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 844.0, 211.0, 150.0, 47.0 ],
									"text" : "note that HTML requires that IDs start with a letter, so this doesn't work"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 844.0, 261.0, 50.0, 22.0 ],
									"text" : "1-foo"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 585.0, 474.0, 100.0, 22.0 ],
									"text" : "o.pack /*"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 585.0, 424.0, 113.0, 22.0 ],
									"text" : "o.pack /val /key svg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 766.0, 208.0, 56.0, 22.0 ],
									"text" : "foo-1000"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-14",
									"linecount" : 10,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 585.0, 510.0, 187.0, 150.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -60, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -72, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -112, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 120, 0, 0, 44, 100, 0, 0, 64, 109, 64, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 121, 0, 0, 44, 100, 0, 0, 64, 120, 96, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 45, 49, 48, 48, 48, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 117, 115, 101, 0, 0, 0, 0, 24, 47, 104, 114, 101, 102, 0, 0, 0, 44, 115, 0, 0, 35, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0 ],
									"saved_bundle_length" : 216,
									"text" : "/* : {\n  /val : {\n    /x : 234.,\n    /y : 390.,\n    /id : \"foo-1000\",\n    /new : \"use\",\n    /href : \"#noteline\"\n  },\n  /key : \"svg\"\n}"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-10",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 585.0, 200.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 585.0, 293.0, 169.0, 22.0 ],
									"text" : "o.pack /x /y /id foo-1"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-6",
									"linecount" : 2,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 585.0, 338.0, 155.0, 46.0 ],
									"text" : "/new = \"use\",\n/href = \"#noteline\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 315.5, 361.0, 135.0, 20.0 ],
									"text" : "use group def by href id"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 70.5, 45.0, 453.0, 33.0 ],
									"text" : "\"defs\" is a special SVG element, which is not drawn to the screen, but provides a mechanism to create definitions of objects which can be re-used by reference."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-1",
									"linecount" : 28,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 100.0, 115.0, 208.0, 402.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 32, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 2, 20, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 1, -20, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, -36, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 100, 101, 102, 115, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 1, -124, 47, 99, 104, 105, 108, 100, 0, 0, 44, 46, 46, 0, 0, 0, 0, -88, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 49, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 12, 47, 121, 49, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 12, 47, 120, 50, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 121, 50, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 60, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 44, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 116, 114, 111, 107, 101, 45, 119, 105, 100, 116, 104, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, -56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 108, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 92, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 116, 114, 111, 107, 101, 45, 119, 105, 100, 116, 104, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 110, 111, 110, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 116, 114, 111, 107, 101, 0, 44, 115, 0, 0, 98, 108, 97, 99, 107, 0, 0, 0 ],
									"saved_bundle_length" : 564,
									"text" : "/* : {\n  /key : \"svg\",\n  /val : {\n    /parent : \"defs\",\n    /new : \"g\",\n    /id : \"noteline\",\n    /child : [{\n      /new : \"line\",\n      /x1 : 10,\n      /y1 : 5,\n      /x2 : 100,\n      /y2 : 5,\n      /style : {\n        /stroke-width : 1\n      }\n    }, {\n      /new : \"circle\",\n      /cx : 5,\n      /cy : 5,\n      /r : 5,\n      /style : {\n        /stroke-width : 2,\n        /fill : \"none\",\n        /stroke : \"black\"\n      }\n    }]\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-12",
									"linecount" : 10,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 310.5, 386.0, 194.0, 150.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -76, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -88, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -128, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 112, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 117, 115, 101, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 24, 47, 104, 114, 101, 102, 0, 0, 0, 44, 115, 0, 0, 35, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100 ],
									"saved_bundle_length" : 200,
									"text" : "/* : {\n  /key : \"svg\",\n  /val : {\n    /new : \"use\",\n    /id : \"foo\",\n    /href : \"#noteline\",\n    /x : 100,\n    /y : 100\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 100.0, 644.0, 100.0, 22.0 ],
									"text" : "s to_drawsocket"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 1 ],
									"order" : 0,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 1,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 2 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"order" : 1,
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-25", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"order" : 0,
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 1 ],
									"order" : 0,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 2 ],
									"order" : 1,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 1 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"hidden" : 1,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ],
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
					"patching_rect" : [ 380.0, 202.0, 64.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p defs/use"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1155.0, 911.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-16",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 691.0, 750.0, 171.0, 47.0 ],
									"text" : "here we set the body element type to have a background color of gray"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-7",
									"linecount" : 9,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 459.0, 716.5, 252.0, 136.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -72, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 115, 115, 0, 0, 0, 0, -124, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 116, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 98, 111, 100, 121, 0, 0, 0, 0, 0, 0, 0, 68, 47, 112, 114, 111, 112, 115, 0, 0, 44, 46, 0, 0, 0, 0, 0, 52, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 98, 97, 99, 107, 103, 114, 111, 117, 110, 100, 45, 99, 111, 108, 111, 114, 0, 0, 0, 44, 115, 0, 0, 103, 114, 97, 121, 0, 0, 0, 0 ],
									"saved_bundle_length" : 204,
									"text" : "/* : {\n  /key : \"css\",\n  /val : {\n    /selector : \"body\",\n    /props : {\n      /background-color : \"gray\"\n    }\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-15",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 55.947265625, 51.796875, 37.0, 22.0 ],
									"text" : "CSS"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 846.0, 610.0, 171.0, 47.0 ],
									"text" : "here we use inline styling to override the previously set values."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-12",
									"linecount" : 14,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 691.0, 475.73956298828125, 165.0, 206.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -12, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -52, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -68, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 20, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 111, 112, 101, 110, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 50, 0, 0, 0, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 25, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 52, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 36, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 114, 101, 100, 0 ],
									"saved_bundle_length" : 276,
									"text" : "/* : {\n  /key : \"svg\",\n  /val : {\n    /new : \"circle\",\n    /class : \"open\",\n    /id : \"foo2\",\n    /cx : 25,\n    /cy : 100,\n    /r : 10,\n    /style : {\n      /fill : \"red\"\n    }\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 657.0, 47.796875, 302.0, 22.0 ],
									"text" : "CSS style inheritance and precedence order"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "obj-8",
									"linecount" : 14,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 657.0, 76.296875, 401.0, 210.0 ],
									"text" : "There are three levels of inheritance with SVG CSS styling:\n\n* presentation attributes -- these are attributes set as standard attibutes.\n\n* stylesheet definitions -- set in an attached CSS stylesheet, or within an <style> element in the HTML page (settable via the \"css\" key as shown in this patch).\n\n* inline styling --  a set of CSS style attributes, set within the /style addtriburte. \n\nEach is overridden by the next: stylesheets override presentation attributes, and inline styles override all the others."
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 10,
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-12",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 482.0, 35.0 ],
													"text" : ";\rmax launch_browser https://developer.mozilla.org/en-US/docs/Web/CSS"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-15",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "black on white",
												"number" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"umenu" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "caption text",
												"default" : 												{
													"fontsize" : [ 11.0 ],
													"fontface" : [ 2 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section dividers",
												"default" : 												{
													"fontsize" : [ 15.0 ],
													"fontname" : [ "Arial" ],
													"fontface" : [ 3 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section info reg",
												"default" : 												{
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "titles",
												"default" : 												{
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
									"patching_rect" : [ 55.0, 152.296875, 19.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"fontface" : 3,
									"fontlink" : 1,
									"id" : "obj-46",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 123.796875, 262.052734375, 21.40625 ],
									"text" : "Click here to learn more about CSS online..",
									"texton" : "Click here to learn more about CSS online..",
									"textoncolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"textovercolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
									"usetextovercolor" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 464.0, 497.0, 203.0, 60.0 ],
									"text" : "The CSS classes are then kept until a clear message is received, so any new objects that refer to these CSS classes will be styled appropriately."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-5",
									"linecount" : 11,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 269.0, 468.73956298828125, 193.0, 164.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -56, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -68, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -108, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 20, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 111, 112, 101, 110, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 50, 0, 0, 0, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 25, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10 ],
									"saved_bundle_length" : 220,
									"text" : "/* : {\n  /key : \"svg\",\n  /val : {\n    /new : \"circle\",\n    /class : \"open\",\n    /id : \"foo2\",\n    /cx : 25,\n    /cy : 100,\n    /r : 10\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 258.0, 408.0, 430.0, 47.0 ],
									"text" : "Here we send two key/val objects in an array to the /* wildcard address. First a set of two CSS classes, and then two SVG objects which each refer to the newly assigned classes."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 258.0, 235.0, 368.0, 60.0 ],
									"text" : "/selector : the CSS selector, using standard CSS selector characters (e.g. the \".\" (dot) operator creates a CSS class, etc.)\n\n/props : an object containing the rules to assign to the selector"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-11",
									"linecount" : 5,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 280.66668701171875, 667.0, 136.0, 80.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0, 0, 0, 0, 16, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 0, 0, 42, 0, 0, 0 ],
									"saved_bundle_length" : 92,
									"text" : "/* : {\n  /key : \"clear\",\n  /val : \"*\"\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 56.0, 734.0, 100.0, 22.0 ],
									"text" : "s to_drawsocket"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "obj-2",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 55.947265625, 81.796875, 563.0, 36.0 ],
									"text" : "The CSS key type can be used to create new CSS rules which can be applied to page elements.\n(note that not all browsers support full CSS / SVG styling)"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-14",
									"linecount" : 34,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 56.0, 209.0, 208.0, 485.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, -92, 47, 42, 0, 0, 44, 46, 46, 0, 0, 0, 1, 88, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 115, 115, 0, 0, 0, 1, 48, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -100, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 46, 111, 112, 101, 110, 0, 0, 0, 0, 0, 0, 108, 47, 112, 114, 111, 112, 115, 0, 0, 44, 46, 0, 0, 0, 0, 0, 92, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 116, 114, 111, 107, 101, 0, 44, 115, 0, 0, 98, 108, 97, 99, 107, 0, 0, 0, 0, 0, 0, 24, 47, 115, 116, 114, 111, 107, 101, 45, 119, 105, 100, 116, 104, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 110, 111, 110, 101, 0, 0, 0, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 46, 99, 108, 111, 115, 101, 100, 0, 0, 0, 0, 80, 47, 112, 114, 111, 112, 115, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 116, 114, 111, 107, 101, 0, 44, 115, 0, 0, 110, 111, 110, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 98, 108, 97, 99, 107, 0, 0, 0, 0, 0, 1, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 1, 20, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 20, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 111, 112, 101, 110, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 15, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 20, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 99, 108, 111, 115, 101, 100, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 98, 97, 114, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 45, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10 ],
									"saved_bundle_length" : 696,
									"text" : "/* : [{\n  /key : \"css\",\n  /val : [{\n    /selector : \".open\",\n    /props : {\n      /stroke : \"black\",\n      /stroke-width : 2,\n      /fill : \"none\"\n    }\n  }, {\n    /selector : \".closed\",\n    /props : {\n      /stroke : \"none\",\n      /fill : \"black\"\n    }\n  }]\n}, {\n  /key : \"svg\",\n  /val : [{\n    /new : \"circle\",\n    /class : \"open\",\n    /id : \"foo\",\n    /cx : 15,\n    /cy : 100,\n    /r : 10\n  }, {\n    /new : \"circle\",\n    /class : \"closed\",\n    /id : \"bar\",\n    /cx : 45,\n    /cy : 100,\n    /r : 10\n  }]\n}]"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"hidden" : 1,
									"source" : [ "obj-46", 0 ]
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
									"source" : [ "obj-7", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ],
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
					"patching_rect" : [ 366.0, 166.736614559976914, 37.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p css"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1155.0, 911.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-15",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 27.5, 8.0, 87.0, 22.0 ],
									"text" : "SVG Layers"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 10,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 260.0, 79.0, 832.0, 535.0 ],
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
										"showontab" : 0,
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"bubble" : 1,
													"fontface" : 3,
													"fontsize" : 11.0,
													"id" : "obj-8",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 250.89776611328125, 320.0, 374.0, 47.0 ],
													"text" : "\"forms\" is special HTML div layer, that is located *above* all the other layers, which is used for HTML interaction elements (forms, buttons, etc.)",
													"textcolor" : [ 0.0, 0.423529411764706, 0.886274509803922, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"fontface" : 3,
													"fontsize" : 11.0,
													"id" : "obj-7",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 250.89776611328125, 251.5, 302.0, 23.0 ],
													"text" : "\"main-svg\" where SVG objects are placed by default.",
													"textcolor" : [ 0.0, 0.423529411764706, 0.886274509803922, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"fontface" : 3,
													"fontsize" : 11.0,
													"id" : "obj-6",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 250.89776611328125, 220.5, 490.0, 23.0 ],
													"text" : "\"defs\" is a special SVG parent node that contains definitions of objects to be used later.",
													"textcolor" : [ 0.0, 0.423529411764706, 0.886274509803922, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"fontface" : 3,
													"fontsize" : 11.0,
													"id" : "obj-5",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 250.89776611328125, 189.5, 246.0, 23.0 ],
													"text" : "\"svg\" is the top-level SVG parent element.",
													"textcolor" : [ 0.0, 0.423529411764706, 0.886274509803922, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bubble" : 1,
													"fontface" : 3,
													"fontsize" : 11.0,
													"id" : "obj-3",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 250.89776611328125, 165.0, 352.0, 23.0 ],
													"text" : "\"main-html\" is where the HTML objects are placed by default.",
													"textcolor" : [ 0.0, 0.423529411764706, 0.886274509803922, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 13.0,
													"id" : "obj-4",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 27.0, 16.0, 597.0, 21.0 ],
													"text" : "Here is the HTML layout for the default Drawsocket page ( as defined in drawsocket-page.html )"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.396078431372549, 0.396078431372549, 0.396078431372549, 1.0 ],
													"fontname" : "Monaco",
													"fontsize" : 11.0,
													"id" : "obj-2",
													"linecount" : 25,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 27.0, 44.0, 313.0, 350.0 ],
													"text" : "<html>\n <head>\n    <style type=\"text/css\"></style>\n </head>\n\n <body>\n\n    <div id=\"main-div\">\n\n      <div id=\"main-html\"></div>\n\n      <svg id=\"svg\">\n\n          <defs id=\"defs\"></defs>\n\n          <g id=\"main-svg\"></g>\n\n      </svg>\n\n    </div>\n\n    <div id=\"forms\"></div>\n\n </body>\n</html>",
													"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
												}

											}
 ],
										"lines" : [  ],
										"styles" : [ 											{
												"name" : "black on white",
												"number" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"umenu" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "caption text",
												"default" : 												{
													"fontsize" : [ 11.0 ],
													"fontface" : [ 2 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section dividers",
												"default" : 												{
													"fontsize" : [ 15.0 ],
													"fontname" : [ "Arial" ],
													"fontface" : [ 3 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section info reg",
												"default" : 												{
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "titles",
												"default" : 												{
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
									"patching_rect" : [ 458.5, 643.8549218399653, 171.0, 24.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p more about page layers"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-9",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 27.5, 32.0, 649.0, 69.0 ],
									"text" : "SVG group objects can be used to assign objects to separate drawing layers. The /parent attribute tells drawsocket to insert this node as a child of another element. For the assignment to work correctly, the parent object needs to exist already, and should be an object that expects child nodes (e.g. group, symbol, defs, etc.),"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 238.0, 564.912622690200806, 285.0, 33.0 ],
									"text" : "clearing a layer, does not change the drawing order (and also does not remove the group object itself)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 708.0, 54.912622690200806, 263.0, 20.0 ],
									"text" : "2b) alternatively, you can use the /child keyword"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.5, 799.912622690200806, 100.0, 22.0 ],
									"text" : "s to_drawsocket"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-3",
									"linecount" : 42,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 708.0, 80.912622690200806, 252.0, 597.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 64, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 3, 52, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 3, 12, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 2, -4, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 103, 114, 111, 117, 112, 105, 101, 0, 0, 0, 2, -64, 47, 99, 104, 105, 108, 100, 0, 0, 44, 46, 46, 46, 0, 0, 0, 0, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 114, 101, 99, 116, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 114, 101, 99, 116, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 16, 47, 119, 105, 100, 116, 104, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 104, 101, 105, 103, 104, 116, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 114, 101, 100, 0, 0, 0, 0, -108, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 99, 108, 101, 102, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 116, 101, 120, 116, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 101, 120, 116, 0, 0, 0, 44, 115, 0, 0, 38, 35, 120, 69, 48, 53, 48, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 98, 114, 97, 118, 117, 114, 97, 95, 116, 101, 120, 116, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 40, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 50, 0, 0, 1, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 103, 103, 0, 0, 0, 0, 1, 64, 47, 99, 104, 105, 108, 100, 0, 0, 44, 46, 46, 0, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 114, 101, 99, 116, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 114, 101, 99, 50, 116, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 119, 105, 100, 116, 104, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 104, 101, 105, 103, 104, 116, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 114, 101, 100, 0, 0, 0, 0, -108, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 99, 108, 101, 50, 102, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 116, 101, 120, 116, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 101, 120, 116, 0, 0, 0, 44, 115, 0, 0, 38, 35, 120, 69, 48, 53, 48, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 98, 114, 97, 118, 117, 114, 97, 95, 116, 101, 120, 116, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 40, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 2, 88 ],
									"saved_bundle_length" : 852,
									"text" : "/* : {\n  /key : \"svg\",\n  /val : {\n    /new : \"g\",\n    /id : \"groupie\",\n    /child : [{\n      /new : \"rect\",\n      /id : \"rect\",\n      /x : 5,\n      /y : 5,\n      /width : 100,\n      /height : 100,\n      /fill : \"red\"\n    }, {\n      /id : \"clef\",\n      /new : \"text\",\n      /text : \"&#xE050\",\n      /class : \"bravura_text\",\n      /x : 40,\n      /y : 50\n    }, {\n      /new : \"g\",\n      /id : \"gg\",\n      /child : [{\n        /new : \"rect\",\n        /id : \"rec2t\",\n        /x : 5,\n        /y : 100,\n        /width : 100,\n        /height : 100,\n        /fill : \"red\"\n      }, {\n        /id : \"cle2f\",\n        /new : \"text\",\n        /text : \"&#xE050\",\n        /class : \"bravura_text\",\n        /x : 40,\n        /y : 600\n      }]\n    }]\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-4",
									"linecount" : 4,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 85.980582058429718, 694.912622690200806, 133.0, 62.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0, 0, 0, 0, 16, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 0, 0, 42, 0, 0, 0 ],
									"saved_bundle_length" : 92,
									"text" : "/* : {\n  /key : \"clear\",\n  /val : \"*\"\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-1",
									"linecount" : 4,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 85.980582058429718, 626.291262269020081, 206.0, 62.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 72, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0, 0, 0, 0, 28, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 115, 0, 111, 118, 101, 114, 108, 97, 121, 0, 98, 97, 99, 107, 0, 0, 0, 0 ],
									"saved_bundle_length" : 104,
									"text" : "/* : {\n  /key : \"clear\",\n  /val : [\"overlay\", \"back\"]\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 224.0, 699.912622690200806, 226.0, 33.0 ],
									"text" : "If you clear everything it also clears dynamically created group layers"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 890.0, 710.912622690200806, 156.0, 47.0 ],
									"text" : "after an object is created in a group it can be edited as with other svg objects"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-24",
									"linecount" : 10,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 745.0, 690.912622690200806, 143.0, 150.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -84, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, 120, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, 48, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 99, 0, 0, 0, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 52, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 99, 108, 101, 102, 0, 0, 0, 0, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 70 ],
									"saved_bundle_length" : 192,
									"text" : "/* : {\n  /key : \"svg\",\n  /val : [{\n    /id : \"c\",\n    /r : 10\n  }, {\n    /id : \"clef\",\n    /y : 70\n  }]\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 295.0, 108.912622690200806, 321.0, 20.0 ],
									"text" : "2) add elements to a layer via the /parent attribute keyword"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-22",
									"linecount" : 28,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 270.0, 133.912622690200806, 194.0, 402.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 28, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 2, 16, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 1, -24, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 46, 0, 0, 0, 0, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 98, 97, 99, 107, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 114, 101, 99, 116, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 114, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 119, 105, 100, 116, 104, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 104, 101, 105, 103, 104, 116, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 109, 97, 105, 110, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 99, 0, 0, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, -106, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, -106, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 25, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 112, 105, 110, 107, 0, 0, 0, 0, 0, 0, 0, -100, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 111, 118, 101, 114, 108, 97, 121, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 100, 111, 116, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, -106, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, -106, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 24, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 108, 105, 103, 104, 116, 103, 114, 97, 121, 0, 0, 0 ],
									"saved_bundle_length" : 560,
									"text" : "/* : {\n  /key : \"svg\",\n  /val : [{\n    /parent : \"back\",\n    /new : \"rect\",\n    /id : \"r\",\n    /x : 100,\n    /y : 100,\n    /width : 100,\n    /height : 100\n  }, {\n    /parent : \"main\",\n    /new : \"circle\",\n    /id : \"c\",\n    /cx : 150,\n    /cy : 150,\n    /r : 25,\n    /fill : \"pink\"\n  }, {\n    /parent : \"overlay\",\n    /new : \"circle\",\n    /id : \"dot\",\n    /cx : 150,\n    /cy : 150,\n    /r : 5,\n    /fill : \"lightgray\"\n  }]\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 26.5, 117.0, 150.0, 20.0 ],
									"text" : "1) create some layers"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-17",
									"linecount" : 16,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.5, 146.912622690200806, 201.0, 234.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 76, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 1, 24, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 46, 0, 0, 0, 0, 0, 0, 0, 84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 109, 97, 105, 110, 45, 115, 118, 103, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 98, 97, 99, 107, 0, 0, 0, 0, 0, 0, 0, 84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 109, 97, 105, 110, 45, 115, 118, 103, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 109, 97, 105, 110, 0, 0, 0, 0, 0, 0, 0, 84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 109, 97, 105, 110, 45, 115, 118, 103, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 111, 118, 101, 114, 108, 97, 121, 0 ],
									"saved_bundle_length" : 352,
									"text" : "/* : {\n  /key : \"svg\",\n  /val : [{\n    /parent : \"main-svg\",\n    /new : \"g\",\n    /id : \"back\"\n  }, {\n    /parent : \"main-svg\",\n    /new : \"g\",\n    /id : \"main\"\n  }, {\n    /parent : \"main-svg\",\n    /new : \"g\",\n    /id : \"overlay\"\n  }]\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-5",
									"linecount" : 4,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 85.980582058429718, 552.912622690200806, 133.0, 62.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0, 0, 0, 0, 20, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 0, 0, 109, 97, 105, 110, 0, 0, 0, 0 ],
									"saved_bundle_length" : 96,
									"text" : "/* : {\n  /key : \"clear\",\n  /val : \"main\"\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-6",
									"linecount" : 29,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 469.0, 133.912622690200806, 223.0, 416.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 72, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 2, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 2, 20, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 46, 0, 0, 0, 0, 0, 0, 0, -84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 109, 97, 105, 110, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 99, 108, 101, 102, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 116, 101, 120, 116, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 101, 120, 116, 0, 0, 0, 44, 115, 0, 0, 38, 35, 120, 69, 48, 53, 48, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 98, 114, 97, 118, 117, 114, 97, 95, 116, 101, 120, 116, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 40, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 50, 0, 0, 0, -80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 98, 97, 99, 107, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 114, 101, 99, 116, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 114, 101, 99, 116, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 16, 47, 119, 105, 100, 116, 104, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 104, 101, 105, 103, 104, 116, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 114, 101, 100, 0, 0, 0, 0, -100, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 111, 118, 101, 114, 108, 97, 121, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 50, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 50, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 98, 108, 117, 101, 0, 0, 0, 0 ],
									"saved_bundle_length" : 604,
									"text" : "/* : {\n  /key : \"svg\",\n  /val : [{\n    /parent : \"main\",\n    /id : \"clef\",\n    /new : \"text\",\n    /text : \"&#xE050\",\n    /class : \"bravura_text\",\n    /x : 40,\n    /y : 50\n  }, {\n    /parent : \"back\",\n    /new : \"rect\",\n    /id : \"rect\",\n    /x : 5,\n    /y : 5,\n    /width : 100,\n    /height : 100,\n    /fill : \"red\"\n  }, {\n    /parent : \"overlay\",\n    /new : \"circle\",\n    /id : \"circle\",\n    /cx : 50,\n    /cy : 50,\n    /r : 10,\n    /fill : \"blue\"\n  }]\n}"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 40.0, 586.912622690200806, 40.0, 586.912622690200806 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 279.5, 544.912622690200806, 40.0, 544.912622690200806 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 717.5, 779.412622690200806, 40.0, 779.412622690200806 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 478.5, 549.912622690200806, 40.0, 549.912622690200806 ],
									"source" : [ "obj-6", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ],
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
					"patching_rect" : [ 356.0, 133.854921839965357, 81.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p \"svg layers\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1155.0, 911.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 10,
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-12",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 482.0, 35.0 ],
													"text" : ";\rmax launch_browser https://developer.mozilla.org/en-US/docs/Web/SVG"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-15",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "black on white",
												"number" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"umenu" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "caption text",
												"default" : 												{
													"fontsize" : [ 11.0 ],
													"fontface" : [ 2 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section dividers",
												"default" : 												{
													"fontsize" : [ 15.0 ],
													"fontname" : [ "Arial" ],
													"fontface" : [ 3 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section info reg",
												"default" : 												{
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "titles",
												"default" : 												{
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
									"patching_rect" : [ 844.46484375, 294.5, 19.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"fontface" : 3,
									"fontlink" : 1,
									"id" : "obj-46",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 439.8642578125, 290.0, 306.05078125, 21.40625 ],
									"text" : "Click here to read the SVG Documentation online...",
									"texton" : "Click here to read the SVG Documentation  online...",
									"textoncolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"textovercolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
									"usetextovercolor" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-49",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 101.064453125, 22.0, 201.0, 22.0 ],
									"text" : "Drawsocket Message Syntax"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-32",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 83.064453125, 583.5, 177.0, 20.0 ],
									"text" : "creates a new circle SVG node:"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial Bold",
									"fontsize" : 14.0,
									"id" : "obj-31",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 83.064453125, 607.5, 366.0, 22.0 ],
									"text" : "<circle id=\"foo\" cx=\"100\" cy=\"100\" r=\"5\" fill=\"yellow>"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "obj-30",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 513.06707763671875, 416.5, 220.0, 50.0 ],
									"text" : "Note that here we are using the \"svg\" key as an example, but other keys are formatted in a similar way."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-21",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 220.89776611328125, 476.0, 34.0, 20.0 ],
									"text" : "/new"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 233.89776611328125, 531.83331298828125, 21.0, 20.0 ],
									"text" : "/id"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 256.89776611328125, 476.0, 237.0, 47.0 ],
									"text" : "the /new attribute, tells drawsocket what kind of element to create in the context of the SVG */key* type."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-24",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 256.89776611328125, 531.83331298828125, 236.0, 33.0 ],
									"text" : "Each object should be assigned a unique ID that can be used to manipulate it later."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 128.564453125, 201.0, 24.0, 9.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 128.564453125, 192.0, 24.0, 9.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 128.564453125, 187.0, 24.0, 9.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 128.564453125, 182.0, 24.0, 9.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 76.66668701171875, 151.5, 24.0, 9.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 121.564453125, 177.0, 5.0, 29.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 70.064453125, 99.0, 5.0, 97.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-1",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 106.064453125, 137.0, 36.0, 38.0 ],
									"text" : "/key\n/val"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 292.96649169921875, 649.796875, 208.0, 20.0 ],
									"text" : "the \"clear\" key type, ... clears objects!"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-14",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 101.064453125, 48.0, 719.0, 85.0 ],
									"text" : "Drawsocket messages are routed to the URL specified in the client browser. For example, messages with the URL /foo will only be recieved by clients logged into the address \"ipaddress:port/foo\".  \n\n/* is a wildcard that matches all URL addresses. The value of the URL address can be one or more objects containing /key and /val addresses."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-12",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.064453125, 79.5, 45.0, 22.0 ],
									"text" : "/URL "
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-10",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 134.064453125, 137.0, 633.0, 38.0 ],
									"text" : ": the main type switch (e.g. svg, tween, tone, pdf, see the online documentation for more details)\n: the values linked to the /key, can be one or more objects."
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-7",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 106.064453125, 224.0, 721.0, 132.0 ],
									"text" : "Each */key* type has a set of */val* attributes that can be used to configure the element.\n\nIn most cases the available attributes are the same as the standard associated with the key type. For example, the SVG object \"circle\" has required presentation attributes \"cx\", \"cy\" and \"r\", and many optional other attributes. For more information see the SVG official documentation.\n\nThere are some additional \"keywords\" used by drawsocket to add useful functionality. For example, /new creates a new object, replacing any other objects with that /id."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-11",
									"linecount" : 4,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 296.064453125, 674.203125, 143.0, 66.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0, 0, 0, 0, 16, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 0, 0, 42, 0, 0, 0 ],
									"saved_bundle_length" : 92,
									"text" : "/* : {\n  /key : \"clear\",\n  /val : \"*\"\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 729.064453125, 546.5, 185.0, 33.0 ],
									"text" : "note that the order of messages sets the drawing layer order"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 64.064453125, 744.0, 100.0, 22.0 ],
									"text" : "s to_drawsocket"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 10,
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-12",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 482.0, 35.0 ],
													"text" : ";\rmax launch_browser https://github.com/HfMT-ZM4/drawsocket/blob/master/README.md"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-15",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 844.46484375, 192.0, 19.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"fontface" : 3,
									"fontlink" : 1,
									"id" : "obj-37",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 433.46484375, 192.0, 280.298828125, 21.40625 ],
									"text" : "Click here to read the Drawsocket API online...",
									"texton" : "Click here to read the Drawsocket API online...",
									"textoncolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"textovercolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
									"usetextovercolor" : 1
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"id" : "obj-6",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 711.39776611328125, 520.5, 131.0, 24.0 ],
									"text" : "/val can be an array"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 707.89776611328125, 493.0, 231.0, 24.0 ],
									"text" : "/* is a wildcard that sends to all clients."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-9",
									"linecount" : 18,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 573.064453125, 493.0, 165.0, 262.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 72, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 1, 20, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 98, 97, 114, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 111, 114, 97, 110, 103, 101, 0, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 121, 101, 108, 108, 111, 119, 0, 0 ],
									"saved_bundle_length" : 348,
									"text" : "/* : {\n  /key : \"svg\",\n  /val : [{\n    /new : \"circle\",\n    /id : \"bar\",\n    /cx : 100,\n    /cy : 100,\n    /r : 10,\n    /fill : \"orange\"\n  }, {\n    /new : \"circle\",\n    /id : \"foo\",\n    /cx : 100,\n    /cy : 100,\n    /r : 5,\n    /fill : \"yellow\"\n  }]\n}"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 196.89776611328125, 441.0, 301.0, 24.0 ],
									"text" : "/val : one or more objects to interpret on the client."
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 192.89776611328125, 416.5, 301.0, 24.0 ],
									"text" : "/key: tells drawsocket what kind of objects are given"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 0.1,
									"bubbleside" : 2,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 56.5, 375.5, 274.0, 39.0 ],
									"text" : "Top level address is the URL to send to (e.g. /foo)"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-5",
									"linecount" : 11,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 64.064453125, 414.5, 165.0, 164.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -56, 47, 102, 111, 111, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -72, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -112, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 121, 101, 108, 108, 111, 119, 0, 0 ],
									"saved_bundle_length" : 220,
									"text" : "/foo : {\n  /key : \"svg\",\n  /val : {\n    /new : \"circle\",\n    /id : \"foo\",\n    /cx : 100,\n    /cy : 100,\n    /r : 5,\n    /fill : \"yellow\"\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "obj-29",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 161.064453125, 177.0, 655.0, 36.0 ],
									"text" : "The values contained in the /val object are either object attributes or special keywords (e.g. /new, /parent, etc.), see the online documentaiton for more details."
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"hidden" : 1,
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ],
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
					"patching_rect" : [ 290.0, 45.0, 113.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p \"message format\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 158.0, 105.0, 1155.0, 911.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"autofit" : 1,
									"data" : [ 146635, "png", "IBkSG0fBZn....PCIgDQRA..FvN..DfhHX....v47dFo....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6ce1babll12+nQitQ2HCPRvfnjrjUvAMVdu2ZWWas69sde88KtepYKOI6YFGj7XYEoXNgLPGedQi9RfzV1J4AV1++UEKJF.PCPQhFWGWmmmVooooB.............KDEVzG..............+VFA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.Qfc.............KPDXG............vBDA1A............r.UbQe.fe8IMMUwwwJLLTiFMRSmNUgggJNNVIIIJIIw78ZYYoBEJnBEJHGGG455JWWW444IGGGUnPAYYYs.u2............7yKBrCuwEGGqoSmpSN4Ds0Vao82ee0qWOS3cQQQJIIwDVWd.c0pUSsa2VKu7xZ0UWUMZzPtttx11dQeWB...........3mMDXGdiILLTCGNTmbxIZ+82WO8oOUO7gOT6t6t5zSOUCGNzTscoooRRx11VNNNx22WMZzvDV2lato1XiMzFargZzngbbbH3N...........7qRDXGdiY3vg5AO3A5t28t5u829a592+95fCNPmd5oZ73wmo55xYYYclP6pVspZ1roVd4k068dum9u+u+u0MtwMTylMIvN...........7qRDXGdiHIIQ850S2+92W+0+5eU+w+3eTO3AOPCFLPSlL4Lyvt7pqKWdncEKVTtttpb4xpZ0p5jSNQ999xxxRu+6+9xyyaAcuC...........3mODXGdskjjnnnH0saWcu6cOcm6bG83G+XcvAGXpnt7f5NeXcRRoooJNN179ff.MXv.ykIHHPqrxJZ4kWdAbuC...........3mWDXGdskllpnnHMZzHcvAGn82eec5ompQiFIomUAc4UQWgBEjkkk4xFGGqnnHy6CCCMW2VVVZ0UWUmbxIJJJR111lKK...........vuFPfc30VdnagggJHHPgggmoR5rsskmmmJWtrJWtrJUpjYdzEEEooSmpACFXlycwwwlu1fACT2tcU+9803wikuuuJVj+aK...........90CR9.u1xaIl4g0k2FLy444oUWcUs1Zqo0WecUudcSnawwwpWudZmc1Q6t6tZ2c2UCFLvb8FDDnISlnoSmpff.UpToEx8Q...........fetPfc30VdvZ4uEEEclJrqZ0p5F23F5129152869cZ80WW111pPgBJIIQ6u+95N24N5u9W+qZxjIZ3vglKed6uLNN1Lm6............90DBrCu1lNcp1e+80Se5S0QGcjFNbnhhhLe8xkKqKcoKoO3C9.8u7u7unKbgKbl4X2d6smJVrn51sq95u9qOy7sKOLv986qACFnJUpPU1A..........feUg.6vqs986q6d26p+9e+uqG9vGpCO7PEDDHorJjyyySc5zQqu95pQiFx222DJmTVE30oSGs7xKKWWWymOMMUQQQZ3vgZ2c2U6s2dpQiFpRkJ+S+9H...........vOWJrnO.vauxCTqWud5IO4I5QO5Q5vCOTiFMRQQQxwwQMZzPqt5pZiM1Pc5zQUpTQNNNpXwhl2JWtr5zoi5zoyYByK+5evfAZ6s2V6ryNZxjIK360............uYQfc3EVZZ5YlgbwwwZxjIpWud5vCOTGe7wJHHv78ToREc4KeYciabCcoKcouWEzkqToRpSmNZ0UWUUpTQEKVTVVVJIIQQQQpe+9Zqs1RO8oOUiFM5eZ2eA...........9mAZIlPwwwJJJRwwwJIIwD3Vd.cm+MIoBEJnoSmpSN4D83G+Xy7qa5zolqWeeecgKbAc4KeYs5pqp50qKGGmu2sewhEU0pU0Jqrhdm24czidzizd6smFNbnRRRzvgC0Se5S0idziz96uuVYkUjqqqJTnv2635GSgBEjsssrssOyLzC...........XQh.69MtjjDEDDn986qwiGelf6RRRL+633Xy+VJKjs7fz9hu3Kz28cemN3fCNSfc4UN2ZqslpWutIjsyKO3rkVZI8u+u+uqwiGqe+u+2qgCGpzzTMZzHs81aq6e+6qu669NUqVM0rYS455ZNdeQBrywwQkKWVdddx00U111ugdTD...........3UGA18aXgggZ73wZu81Se629s5vCOzD.1OVncVVVl.61c2c0CdvCzVask52uuhhhjkkkrrrjuuuVc0UOSqt7GJvNorP6Zzng9vO7C0wGer91u8a096uuBCCUPPfN4jSzCdvCze5O8mTud8TqVsToRkTXXnIvterP6RSSOyrxas0VS0pUS111Toc...........Xgh.69MroSmp81aO8Ye1mo+m+m+G8se62JorvslODry+VdfbQQQZxjIZ3vgpWudJLLTIIIl.8pVspVc0UUmNcjmm2yMrtbUpTQuy67NZ2c2Uqu955wO9wpa2tlfEe3CenFNbn9zO8SU0pUkss8YBV74IOrwVsZoabianae6aqO4S9Dc4KeY444ohE4WC...........vhCIU7aP4Au0qWOcu6cO84e9mq+7e9Oqu4a9FSnZyOK6dY466qkWdYcoKcIcgKbAs7xKqRkJ8Sd4bccU61s0Fargtzktjd7ierBBBzzoSURRhN8zSU2tckssso8Z9hTcc4A10rYSc3gGpvvPszRKYp3NBrC..+Z2YddxzT8h9L7muJzopzA.......94AIU7aPoooJLLTGbvA5y9rOSe9m+45jSNQooolJU6UMrNIo50qqO3C9.8we7GqKe4KqVsZIWW2exKmkkkbbbTqVsz0t10z1ausN7vC0omd5YN1iii0zoSkkkk437m53MMMUCFLP2+92WkJURarwFpVsZx22W999+jU+G..vail+4IMavk4Br6487m4AyM+6O+mC........u4Pfc+FTXXn51sq1Zqszctycz8t28zfACjjLs7x7Y617KPWtm2GWnPAYaaq0VaM8AevGnO3C9.s5pqpxkKKaa6exiq7PypVsptzktjt7kur9G+i+gN5niLeOmegE+olac4sKyzzTEDDniO9X83G+X8Ue0WoVsZoNc5n50qqRkJ8BcLB..7Kc4Ayk+bfyOOZSm8bhImK.OCKKYomEPmUgBxxxRErrTAaaYaaqBEJnBy97+Pmm.........d4Qfc+Fz3wi0Se5S08u+80Ce3C0d6smlNcp4qWnPA433HGGGSvcR5LKL2OzNt200UUpTQW8pWUe3G9g5ZW6ZpQiFlE26Egkkk777TmNczFargVd4kMA1clpC347wyKNNVAAAJJJxz5Lkj50qm95u9qU8500Uu5U0RKsjZ0pEA1A.f25kGTWbbrhhhTPPfBCCUXXn44CShiURZp48oyMGXyed87P4JL64vsssUwhEk6ryOnniiJVrnosRSnc........udHvteCIeA7N7vC0W9keo9hu3KzN6riFNbnjdVPcUqVUKu7xpd85mIzt4W.u7+87A3444oFMZnadyap268dOs95qqxkK+R0tIyudVc0U069tuq9nO5iT0pUMK.44qZfy+4yCkyxxRAAApa2tpWud5zSOUSlLQoool.Ku28tmt28tmVYkUjqqqJUpDK3H..dqT9yGFEEovvPEDDXdKOvt33XSk1kWscmel098d99Yu211VEssManGGWWyycd9yU.........u7HvteCINNVCGNTO4IOQ+9e+uWe5m9omocS533nZ0poKdwKpae6aqKbgKnxkKKGGGIkEnWwhEk8bsDq4WfNeee0tca0oSGcgKbASfeurxqvtacqaIOOOc3gGdlEXLO3wyuvi4K5X9wS+9801ausdvCdf9lu4azAGbfhhhTTTj4qk2ZLa0pkoZ.YwFA.vaSx2vJQQQZznQl2BlNUQypnt4aClJeStjcg+dWWRYaxmuW6wbtf7rssUIOOUoREUtbY466S01A.......7Zf.69MjwiGqs2dacu6cOc26dW8vG9PMd7XyhvUsZUc4KeYcqacK8Iexmn24cdG444cl.6NeXcyWkckJUR0qWWUpT40ZlvUrXQUsZUYaaqxkKqQiF8rYuybs5qyGVWx4ZoWCFLP6ryNpc61Z5zolY22zoSUPPfN7vC0W+0esZzngt3EunZzngpUqlJUpzajGuA..9mgzzTEFDnwSlnA86qgiFowiGqvffyT84urWmOO4OueXX3Yd9WOOOyF6A........ubHvteCoe+95t28t5q9puR6u+9Z73wJNNVVVVxwwQqrxJ5e8e8eUexm7I5i+3OVarwF+nyvt4+7ROqkZVrXwWp1f44kuC9877zRKsjZznw2aN0MeKv74MC6hhhz0u900xKurFLXflLYhBCCMyqu986q6bm6nRkJo24cdG0nQCc4KeY455R0A..f2ZjWYc862W862WSlLwL6VeUBq6mR90YXXnFzuuhihL2V4sBaddT.......fWNDX2uAjWQZGczQ5q+5uVe8W+053iOVQQQRJqUXVoREs1Zqoacqaoae6aqqbkqnVsZsvNlsrrTwhEMsWqWEyOOed7ierN93i0wGerFLXfhii0zoS0zoS0Ce3C0W8UekVZokTylMUsZ0n0XB.f2JLeqvb3vglMmx+Ltcyq1cIoByp5dmYUXGg1A.......7x4UuLnvaMhii0nQizd6sm9pu5qzcu6cU+98MecGGG0rYScwKdQ8du26oqd0qpJUpr.OheyHuR8Z1rod+2+80st0szpqtp788OS655zSOU+8+9eW+s+1eSGd3glV7E..vujkuwTBCC03wiMUV2+rEGGqwiFoQCGpoAAJZVE2A.......fWbTgc+FvnQizidziz27MeidvCdf1e+8M69dKKKUoREcwKdQckqbEswFarPqrt2zxu+8Nuy6niO9X8ce22oACFnm9zmpd85ojjDMZzH8vG9P0oSGy6Wd4kU4xkWzG9...OW4UWWXPfBBBTXX3BInr7PCyOFhiiespPd.......feKhUS42.N93i0e5O8mze7O9GMg0kllZp.sFMZn268dO8du26oZ0psnObeiqToRpSmN5l27l5vCOTooolpQHel1czQGYZMlsa2VdddDXG..9EMSPYuApL771W4qRfe4U5WbbrhihLyOO........7hi.69Eh7Ys1zoSM6N8WmE6xxxRwwwJJJRe629s5y9rOSe0W8U5zSO0rndEKVT999pSmN58e+2WW+5W+WkA1kOK7Ve800su8sUPPfN93iUPPfN7vC0vgC03wi0t6tq96+8+tokYNXvfu2L3Y9Ezb92NuzzTUnPAUrXQ444opUqpRkJIKKqW3Y5SbbrBBBzzoSMyjnW0+Ow7AzVpTIywSgB+70UbiiiUXXnlLYhFNbnhhhdklmQ4OFm+XY9a111lGiFMZjBBBTRRh4wnWzaq7u+RkJoFMZnRkJ8ReLB.rHjGT1K5yMj+7.4uY96jVVZ9+hY90W9e+MIIwb677tsRSSUxr29w99........vOLBr6W.xCqqe+95fCNPc61UiGOVwwwuTA7LOKKKMc5T0qWO80e8WqO+y+b8fG7.Mb3PyWuToRpc615RW5R58du2Su669t+pX1087TqVMc8qeckjjntc6pjjD8ke4WpoSmpnnHc5ompO+y+bMb3P0ueecwKdQ433HaaayOGx+YgoRBhiOSUML+ha533n50qq0VaM8tu66pkWdY4337B+yyff.cxImnCN3.syN6nd85YlKPunWGVVVliUaaa444oUVYEcsqcMs7xKqhEK9yVncggg5jSNQ6t6t5QO5QpWudlGKeYje7WoREs1Zqo0Wecs5pqJOOOMYxDczQGos1ZKc7wGaleSmOn0eL4+7pSmN5V25VpSmNuJ2cA.9mNS.by8bTOufxx+dccckqqqbbcUQa6rv59ABrKMMUwIIJJLzTM54yGum6sw4dC........u3HvteAHJJRCFLP6ryN5q+5uVO8oOUCFLPQQQuTAOLu7.651sqdvCdfd3CenN4jSNy2SkJUzUtxUzMu4M0Eu3E+U0rq6GhqqqVZokzUtxUzG+werlLYh50qmFOdrIjzs2daEFFpnnH8ce22cl.6x+YwYZ8WypDx4W7x7JQv00U0pUSW8pW070a2ts788egNdCBBzQGcj9tu66zW8Uek1c2cUTTjRRRdoBrKMM0LOgpToht10tlZ1ropWutoJK94PdqF892+95u7W9KZ2c28UJvt7YzT61s0MtwMTRRhpWutbbbznQizt6tq9hu3KzidzizfACTXX3Kz8qyWAIW+5WWat4lDXG.dqgkjJL2yO8Sw11Vtttx22W9kKKGGmrqmYW17qgzzTkJYlOdSlL4LUY2O8AlU1a....3Ux7q4P3r1edgBEjsssYi2N+ZQXYYYd814qYw4udx65MtttpXwhlu+jjTEE8rMnUd2Bx00URxbYyes1y2wajjYiIme6FEEIortcT9HIIeyGmeeH+MKKoye5kmuUsm2AoxOmz7GCbccOy5zje7juV.4m6p041ba4qqx7qYP9iy4G2EKV7L2u9g5xRyeN3ye8e9M387WtrtdjqJTv1r1N111ligzzDIYozTojj3YmCdrRRxtMssKnhEcNyw97OtN+l197GG42V4caoen6GooIlGGy9YbhlLYhRSSkmmmYNUm+yYKKKyiS4+etyug2A.vKGBr6W.xaQiey27M5+6+2+u5t28tuQBrKJJRiGOVCFLPmd5om4qmllpFMZnO9i+X8we7GqlMa9l5tyu3Uudc8ge3GpnnHSKwLLLTmd5oJLLTGczQ5K9huPdddeuSzX9pW340RLm+jdJVrnt10tl4iKUpzKbfcSmNUGbvA5e7O9G5+8+8+U2+92+Lmn0KizzTS.hCFLPW+5WWW3BWvbB3+bX9i++ve3On6e+6+JcRa4OFu95qqISlnxkKqKe4KqxkKqACFnm9zmp+xe4unu7K+R0saWMc5zWnamy+ysd85o+y+y+yW56m..KLy8bTuH+cOKKKUzwQk77Tkxkk6OQK.NusCWnPASK69mbV4wKLG...30VbbrFOdrFNbn51sqBCCkqqi788U0p0jqqihie1FpJejmXaael.xBBBz3wi0nQiznQijsssZ1ropUqlJWtrJTH66ue+d5fCNPSlLQtttpZ0ppYylpPgBZ3vgZvfApe+9x00Uqs1ZpToRZ73wxxxxrgZiii0zoSm0YmRU4xUTbbr51sqFMZzY1HwOaTWTXt0V4YcEBom8Z1sss0nQizd6smBBBjuu2riuVxyyy730jISjjLi4hoSmZB3K+s7taUTTzYBZZxjIpa2tJMMUUqVU0pUyb+Z9wVSdvd4AUYaaelVNeRRhYrlLZzHEFFnjjmc477JokVZI45VxD.Z4xkkjl8XTjJTHKnroSmnoSmpffoJJJd18sr00IasbdVXhNNEU4xULm2d9wv3wi03wiMgqUtbYsxJqnRkJcl.bsssmElYnFOdrjj7880jIS0N6riRSS0pqtppVspjxVGygCGpBEJn50qqhEKpvv.kllJa6hlGWHzN.fWdDX2u.j25C2ZqszctyczW9keo4ITecBrKeGub9cDuiiiJWtr1byM0G9gent90ut4Ic+s.OOOs1ZqoACFnO3C9.0saWMXvfYmHTVkDjehdya9f3rsskiiibbbL6ts4+btttlfXe3Cen9lu4aTmNczktzkzxKu7KzwYbbrFMZjN4jSzSe5S0Ce3CM+77U89cylM0latoFMZzq000Kh7i+iO9Xyw+qinnHcgKbA0qWOyhFGDDnd85YZ6lmbxI+f+r6GS9KH3xW9xuzWV.fEozYOO+Ozy0+CIeW0533HmYsFyeL4sl6vvPUrXwex1tY9hXL+tIlWjN...vKuISlns2dac7wGOKXrr.TJWtrlNc5rvmd1bu211V0qWWkK6qhEcl85wGpACxF4GiGOdVXW9pXwhpToRxyySwww5jSNQGd3gZ+82SSlLQNNYgBkG5296uu52umBBBU850UsZ0znQizie7iTgB15pW8ppd85Z5zol01RRZyM2TEJTP6t6tZznQlpha5zopToRlJjSJcVU7E+8BPJ+7IGNbn1au8lc8Xq1saate1ueOMb3HMd7X444oUWcUYaael0GnToRpYylZ73w592+6zfACjueYUpTISnb8622T4YNNNlQFS+98Mg+k2IqRSSUsZ0juuuoky644Y13xYaB+rpVb73wZ5z.EEEoZ0xV6MWWWcxImJGGGswFanzzD83G+XMd7XUtbEYaWTwwQZzng53iOVQQQxyKKnxrPUKMa8bxNubeeekllsdU850yLdUFMZjjjox5Z2tsZzngRRRzgGdnrrjVd4r.7xB5axbinmrvZ2c2cTZpTXXfZ1rk78803wi0SdxSjscAc0q9tpRkxpe+9JMMU99kkmmmIPS..7xg.69EfvvP0saWczQGYBOZ9cuyq5hc87p.rxkKqKdwKpabiaXZCfunU80uFjOCeVd4k0st0sz3wi0omdplNcpN93iMmPyOzBRlsagrUkJUT850UylMUkJULgf1nQC0rYS0tcac7wGq+7e9OqQiFos2da83G+Xy08Kyw57sLh7VSvq5867.E+4pMXNOyrU5Mzs07skz4+ch4eL5U42Uxeb4YuXA.f2NDOa2.Od7XyFY3GKzt4+6xuH+8x7+d676Z3erKWRRhBlsidKUpjok4Pnc....ub51sq9hu3Kz96uuoZujrTTTV.agggJHHTCFLPGczQRJUsZ0RqtZGcgKbQIkpm7jmnCO7P0u+.kllHeeeszRKelyabznQ5IO4wZ2c20z8grrJXB4axjw5d266zjIimERl8rwJxo5+2+u++TgBVx0sj1bSKMXPec+6ee8G9C+AYYI8e7e7enZ0pos1ZKEFFpkWdYUnPAcxImXZ25RYMngvvPMb3PYYkUwV4UIWdkokG7UVHjCzRKsjpWugFLn+YFgHqt5plV.+Se5S0gGdnlLYhZzngt4Muo50qq9C+gOUau81pQilpUq1pc61pb4xxxxR999moh5xCfqWudJIIQmd5o5wO9wJNNVqu95pc61pZ0ZyVenFpWud5t28t5zSOU05ex03r...H.jDQAQkUUAAAZ2c2UCFLTVVVZ4kWxrou+tu66jmmu777TXXf9zO8S0QGcnVe8MTqVsm0Ug5q6cu6ovvPswFan1sWRiFMVEJTPAAARJq5JqUqtosYt6t6pG9vGp6d26pISln0Wec0oSG0pUKSGape+95N24qUZZp9nO5iTsZ00QGcjFLXfRRh0vgYAElu41srrz96umVZo1ZyMun51sm9zO8SMU14Jqrh1au8TRRhVZokTiFMMqSC..d4PfcKP48S5986qc1YGsyN6nd85M6IcyjuHWuNkR94qLrNc5ne2u62oae6aqM2byYm32ucjWgA0qWWW4JWQiFMRGczQpPgBZ+82e1Inj7CF1YRRhYmV0nQC0tcaUudc466qFMZnNc5nUVYEs7xKaNg2G9vGpACFLaWo0WAAAlSP6m537kYgReQue+pFr0q5s4ax1fv7sGi7O9mZAnOeKM87x+8BZWC.3sI4UQ+jISLyajmGyeqbV00kWsbuHLyJkYWt7YRxOj71fj6jIJx2mcUK...vqnQiFos1ZKs2d6NaSV6ozzDEEEpd8xpnrff.0saOs+96ooSmnRkb0wGugrsypjs81aOs2d6o986qhEKpUVYEkjDelWmddmA5niNZVXNEjiS1HVIOzlG8nGovv.444YVGqSOsq91u8en33X8du26KOuRZ3vgZ6s2V24N2Q11ELiGjSO8DkllpkVZIIk0pJGMZnFOdhoxAmNch1YmcUPPfpVslpUqlpVspo55BBBTbbzrfJmZBTqe+95a9luQO5QORNNNJMMUSlLQEKVTCFLP6t6tZ2c2UKszRZiM1PSlLQGd3g5QO5Qxyae0t8R5xW9RZ4kWQUpT46sAgyaglGe7wJIIQGczQZ6s2VSmNQiFMTc6trVZokUbbjJW1SiGmsgs61sqbbtjRSSLsSzRk7LsnzoSmpG+3GqJUppO7C+PEFFnm9zsz1ausBCy5dFttanjjT0u+.SqxrXwhZ5zoydc.Oq0UZYkslHwwwlpk7gO7AJHHPttNpVsppc61lMvcPPf1au8TXXjtzktjRRR0t6tqlLYhoZ49G+i+gFMZjVc0UUwhE0N6rsFLnu78Kqd85oG8nGpBEJnadyqKoTcxIGOqEelUInoo+1ov...dSh.6Vfhiy10JGbvA5a+1uU2+92eVu9NS9IJjOraeUWzq7Pmbbx524W8pWU+W+W+W5S9jOQsa29Mx8k2FUpTIsxJqnabianoSmp0VaMc7wGqgCGpnnHyI.J8rYWW9tQJucG366aBuK+D.WZokT0pU0xKurN93iUwhE0Ce3CU2tcU2tc0vgCUkJUdglebuLylnWDyGv0O2CA3yGj1OVaT6k4567Avc9P79gtbyGH272mme.TC.71h7cjb9tMNHH3Gs55x+6ftNNxyySkJU5E5bJLsPyYsuHGGmyroh9gNtlNcZ12WXnbiiYyP....7JHNNRCGNPCGlUwS4s0bIMqUXNUAAgJNNayTMZzH8zm9T0qWO0nQS0nQSMXv.yLLyyqjoaCM+F3JeTSjMS2bm04fxmcaQyBt6YGCkJkc8DFlGb3P8jm7D44kEnXudmpiO9H433nISlnnnnYypMa455nRkb03wYiniQiFphEcT61KozzT0qW1bzy1tnVZokzUu56pxk8UTTnlLYrYtys1ZqqM1XCUqVMyFfeqsdhVZoUTXXVa7LesHFMZjdvCtu50qq9W+W++nRkJY1z0850WooRKu7xpc6XUrnso8VluIqyOm6ISlX1bZRYgBt0Vaod85Z5tDqs1pypZwgyBdrpJUxUmd5ox0sjZzntZ1rkbccmMW.GJIKSPoVV4y.uIJIIQMa1TUqVc151kpqbk2QMa1RmbxIpe+dl6i99Yy.uc1Ym4dcAOacrx2Xe4qeU9ZQEFFowiGotc6ovvHs+96KIokVpsrss0SdxSTTTj9vO7Vpb4x5vCOTGczwlpuLLLTgggZqs1RIIYqWV4xkm0d7iesV+G.feKi.6VfhhhLUd0CdvCzVaskYn8lWJ9sZ0RMZz3LsDfWVyGXWkJUzG7Aef9nO5izUtxUL8j6eKpXwhpZ0pZs0VSwwwpSmNZvfAlSpb9.6xkufnyW0a999pd85pUqVpSmNpd85lSv6V25VJLLTiFMREJTPGe7w5fCNvz61eQ7lNPoerpM6Ms2jgMN+04Oz08y61v22Wc5zQMZz36sH0yGH6Uu5U+M8uO.f2djGL1zISLKvxO1LI0xxJq0+NaVg3337B2RLkjryCry0UElcdJOu1FcTTjBBBLGW4aXB....7hKOnk7vbx2H2YqGgk46w11V0pUSwwQyBQIxLy3xakgYy4LKy5Pjugvm+7AOeG4I+1OJJb1nZQmYTR33jsdJSmNQGbv9x22S99dZznQlM5b9wX10cg41L5YgEFEEohEcT0pUmc6lEv1nQYgys1ZqqpUqnZ0pIGGG0qWeYaWXV3i1ZvfA5zSOUCGlUsdiFMxLq9RRRLmG5zoSU+98U2tcUqVszxKuhVYkNpWu9ZxjwJNNxrY4cccjiSwy73S9l2NJJTEJXoZ0pooSmp82eOMbXdnisUbbhIjOKKMqRyd1w+RKsjpU6YqsWRR1LHbvf9R5YqqQ1FxKatD555pFMpqhEKpNcVU0pUSSlj0pRy6.TUqVQiGOwLCBa0psJUpjpToxY5nPdddxyyyb81pUKEGGqc1YGYYYoSN4D0nQc444IWWWyLoqYylpd85pPAKMYxDSKUMu8nt816njjTUud1kc1+ixbeB..ubHvtEn7gZ6AGbf1ZqsLked9BqsxJqne2u62oqcsq8Z05JyWTs7cC0ZqslIrt74Kyuk466qKbgKnkWdYSPc4mXrz2eV1kWYC4mzVwhEMUaW4xkMm.a0pU00u90UZZpFOdrFLXfN7vC0ie7iUiFMTsZ09IO194LTs2V2sSurG2sa2V+6+6+655W+5pc61l40X90S96uvEtfVc0UeydvB.7yf33XMdzHMZzHyKX9Gissc1yS44Y1M0unO+RdUL6LW09O+hWLu7ONNN1DZW9BKQU1A...7hKuZ3JUxyDxV94UkWgbwwwypHtrwywlato52uuN7vC0ImbrVZokU4xkmUAXtpToRlKadWPH61ojbcKohEsUXXfN7vCjTV.d4U0V95djc9fETsZ00Mu4M0VaUV862SO9wOVKszRJJJRMZzXV0kUxTYf4g0Urni4iyViJW0nQS46WVsa2R6t6N53iOV850UiFMTttanUWcSEGGqm7jmn986qQiFoc2cGSE4UrXQUoREEDDn986oACFnZ0xpRv7VAYgBEzQGcnJVrnVas0mE319JLL3bGeEMGa4myrscAYaWPQQVxyyWW3BkUwhE0d6sm51sqpToh51smRRhMgZlllJW2RpToRx22eVvp0mENYAyimooIZu81WVVRooIlVd4fAC0nQYcmopUqHeeeUsZU466O650SNNtlJFb5zfYyqurYMXiF00pqtpFNbn788kiSQUpjqokXVqVMcyadSUnPA8Meyc0fACTylMUqVMm0QN7l8+OrT0pUMUkXTT7r1lpipVs1rfB2eVnmWTsZ0REJXaBkE..u7HslEn7Jr6jSNYVIsms6Ux20Ssa2V27l2Te7G+w5JW4JpUqVux2V4UEV9IxzpUqW3J75W6l+Dey8i0ZwxCrKOXu7chksss4DeSSSUoRkTmNczjISz1aus1d6sMg18i0RwNu2zmjyOzr46sEuJG20pUS23F2P+a+a+apSmNpZ0pm45J+84s1T.feIKe2NOY5TSEg+S820ssskmuu778eolec4JjWgdttpniirCB9AqB84O9BlNUSmN0rvN....3EWZ57c3mmMtIleyCGEk0lJKWtr788Twhqo81auYaF7wpZ0pxyKeNh8rtDz7adqryiLwrAqhhhTudcUbbxrYKW17hywon4xmEFkqVc0U0nQiLqoksssBBBLgQk+8lGLXVE7Uvb6FGmnjjTYaWP99dpUq1pQiFlMy9fA80vgiL2d99k0nQYsvwISlnjDoISFqxkKqNc5X1La6s2dl4zV4xUzFarwrYB3SUPPntzktrVd4kMs1y7JBL+XL6wGyOILmqcdkFVpTIUsZUUqVcEFFNac8NVCFLPVVVyZAkoxxRlpgTRyUAiYebRR17s6AO39yBSMqp2xa68au81pVsZJIIUdd9y5jS1lqWGG2YqqWVU4c5ompnnP4LqM3666qvvvyD9XdvfdddZiM1PGbv9Z6s2V6s2d5ZW6ZJJJdVHtYsuznnr1.53wiMyx5hEsMqsX+98kkUVKYc+82a1FheSSvf..3kGA1s.kGX2fACTXX3YpDt71g4latotxUtht3Eu3qcXBmel3gyZ9Ev7G6DKxOoyhEKdlYf14mkZEJTvbhbqrxJZ3vg5jSNwLi7dQNdNe6e700aqA0I8perWpTIs5pqpKcoKoNc5XZ6km+5qXwhuxscV.f+Y3YKNSjBmUAa+XavDIYdd+x99lc26KKqBY6h1Rkx1kvgytcedRRRzjISjiqqpToxYZ+v....3mVVKtbjFOdjYFjk29wmLIq8ONYxDUrni77JopUqXpvsBEJnwimn98GnvvnYeeEm0IgRURxy5nPIIwZ73rVrniS12yfACm0dyiMU5kTphiiTRRrIjqrJ7JqEKlEbUeMYR17UNqcZFYd6YUbkkhiizzoAliqgCGpxk80RK0Vqt5p5oO8oZ73wpa2dZmc1VRYav174h1QGcj1au80fACjuum1byM0xKurN8zSkjkt+8uuN8zSTylsToRkzUu56pc1Yacm6bGs+96q0WeC45VRSlLYVawbhYyXmOW+hiyCFM6w7oSmpoSCLmKtjzlato777zAGruN5niLU62fACjjLsJ9r1SZ182rY.nkBBBzvgC0t6tm50quVZo1ZyM2TKszRpWudZxjw5N24NxyySqrxJZokVZ1OuRm6wTaEGGq986oSO8TMXv.ynvoTIOEFFpwiGKeeOykKatykU0jMZzPdd95zSOQ6t6NZ4kWdVnmYW2UqlOi.2VGe7w5zSOU11OqRIyGOL4Uw4CdvCUPPnd+2+8McdJ..7xi.6VPRSSMCo2986el.bJVrnJWtrZ1roVYkUzJqrhZ0pkoxfvO+9wVTwWz49S92muuuZ2tsN8zSUud8zzoSM8VcWW2exEOkE37mGyGF576jN.fWG4gSkjjHklpyGkVpjzrmiv70rxurRVy1Auoyt7yKu5tGOdrlNcpo55ddx+aatttxcVKP5U4uyYYYI6Ya1m7VxTXXnYwiNujjDyNCNHHv7bcuw+arooRmaisveGG...+ZfiiipWuglLYpjjoJmx27v99kMc4Ge+xpRkJpYylJNNQqs1Zx11V0qWSEK5L6x3LK7nr48VPPvrvirm0BDKYphrBErjqqqpTorjjpWugJVzVSmNcV3ZUmc8WWqrxJyprtoyprtrYbVqVsjueYUrXVKUOMMQiFMRooYsO87Jzpb4JypVrhZokVRat4l5fCNT850S0pUSEJjU0dEJXYBrLeCoUrX1bzayM2TMZzPc6l0NLGMZnFMZjZ2dI0nQCsxJqHKKKcu6cOkllJOuRlaOIKyrda73wpe+9RRx0sjRRRLslTe+xxxpvrGeJnRk7T85MTylMTgBRUpT1TIdUpTwLRZxp1MeUnvy93rJJzWMZzvzosbbb0FargZ1roN4jSz96uu1ZqsLcuo7QZSgYajt74Qmkk0r1PeQ0pUa466o1sWZVfbM0zoSmUIgApe+9pWudxww0bd80qWWc5rplLYxrVSp+r0jrht3EunN7vC0fACz3wSjueYUudcUudC43TTqrxJpTIO0nQC0qWOc7wGKIIa6huRc0C..jg.6V.LsypISTud8Tud8TXXn4qaaaqJUpn50qqZ0poxkK+Jsi3wuL333nlMap1saqCO7PkllpSN4Dc7wGelYpFd07Ss.sSmNU6s2d5wO9wJHHPUqV8LKvcdO0OukXxuqAfWU4uH87cdaxbsMxzzTkZYozrdXiTgBY+67OmxZOMowIRQQJMLTowwR4yS0YsWmvfrcma9NA9mJvt7WLew4ZENurxuLlYPhiir9Q1wr4KlRvri07K2Ozee87sm3WE4KZy7s4I...f2lUsZ1LFqd85pPgBpa2txxxR999pYyVpYylypDpBlJcpVsZx1tn9c+tORc6d5rYNVjN8zSMA9czQGo50ylwbkKWVdddZs0VSooo53iOVQQQpd8FpRkJpSmUMs3xAC5qwiGqCO7H0nQKUtbYsxJqnJUxB1INNaijMd7jY21k0Zqs1ri4xZxjw5fC1eVHd1pQiri2r09pgJW1WNNtypvsTMbX17ay22WkJURAAS0gGdflNcp5zoi5zoiRRRTylM069tWSMZzvbecqsdhjj5zYE0t8Ryl6atpa2SksssVd4kURRpt8s+Xc5ompM1XCUpTIc7wGq986qUVYE433XFkLsZ0dVK1Lzb92NNYAkNd7XSfl4sYy28ceWUnfsZ0psbcc0EtvFJLLRsZk83VVayLQ27l2TsaujRRRzJqrhdu268UylMMU0VwhYKY6latoVYkNyBXsfZzn4rYXWVmyJqqajZZioarwFxxxRW6ZWS99dyl6ei0d6sqoidkGL2xKur9u9u9u0AG7dpQiFZyM2bVPpk0G8Q2V6ry1ZznQRJUW6ZWWc5zQqt5pxxxRW4JWQSmNU0q2PCGNTNNYA80nQCNmb.fWCDX2BP9NOeznQlxJe9.6x1gT9pVsZDX2uB355plMaplMyFduSmNUGczQlSNk.6dy34sPz862We629spPgBZokVRkKW9LKLboRkTsZ0z5qutt90ut7779m4gM.9Ujj3XMcVqpLLLTwIoxxtvyBpSYUNWZbRVEzEGoznHojjrpsqPAkZaKYUvTkcowwlJsKNNdVarIzzJs+ImccyBry90bWtlWMxNNNxcV3aVVVO24XWdmDHamTm9bmiElK+qPfc4WB6BEjia1L73Eox0A.vauRSy96+oJUVZ1qAXQePA7yfpUqpqbkqppUqogCGnzzT466qpUqppUqIGGGyrWywwQ99dpRkpx0sjd228c03wiMywsd85ZpRpxkKel1UXoRkzJqzQRRVVELssw7pmKIIQkJURmd5IZ5zol0vnVsZpToRJIIVRVJMMqMRlWEdNNNZkUVQQQYs1yACFXFCE4srw7JEqVsZx00UkKWVNNtpXQGMc5TyF9pPAKynjoRkPUudiYyHOaUqVMs5pqZ5HUMa1TEKZqnnHsxJcl01GytslN8CjjkZ0psjj9fO3CLACFGGqiO9XYYoYyJthlGaa1roJUpT1FxKIYV6.MaS+FEEYZA7KsT6YOVjsw4Z1r4rpKbcEGGO69W14DWrXQkjjn0VK6q0rYScgKbAUsZU0nQc44kMtNRRRzEtvELgGJIUqVMSqtO+bte1iqkTqVsjjzktzkToRkzQGcnBCCMUkYgB1l.0Zzngt0stkFLXfJTnfoEWVnPAc0qdUUsZUs6t6HKKKs95anUVYE0nQi41nhwpb4JZ5zIxwwQNNEUsZ0ocXB.7Zf.6V.RRRTPPfFLXfN7vC0wGerBBBLe8BEJXNQr7.6x2YM3sO48F7lMaJWWW0qWOcvAGnxky1wY3mWmd5o5y9rOSO3AOHqJSN2uKUsZUs95qqae6aqkWdY0tc6EzQJ.daVZZpBBCU2SNIa1ODEojB1RddRttxpnsRiiU5jIJc3Pk1qmzf9xpeOoISUpRUpumTyVR0pIUthjssRCijlUocIIIJYVE78SM65jxBrqb4xuw13O4A1435JmhEU3r4lwy63HNJRCGNzzJdrxlx8u1GGyKUZV6Wxyr3BridA.90ozTk87fydukkTwBLBAvuN466qKdwKpkVZIMYxDkllnhEyZigdddlvZleDOjOygcbbLsNxr4EWVaJOHHP11EMad37Jzpc61xyySMa1RQQQlfzx2rqMZzPSlLYVqW7YAXkGZS9uCl291ymidYA5knxkKaVyqhEsMsX87Vm37arKW2Rx222z5Iy+7AASmUYbIx22SNNtpPA6YgU5adc94ggkGvY9l4JatqUTVVYUunjz0u90UXXnrsKp33Hs95qqzzTUtruJWNK7q7V+Y1Lz6Ym+c94Eme+SJK7Sor0XvxxxzxJ877TZZ5rvxJX9bUpTwrI7bccUsZ0LgTZamUAeooopZ0pm49XdWC57Ot2pUKy4+mllZZwlCGtohiilccl0JNyeL222Wat4llhHH+wSKKK0oSGUoREs7xKKKKKUudc466KGGGyFxKuEsFGGO69cAUqVUZU8..uFHEnEf4CrKuB6lOvt7RTOemK871U53sC4U3fqqqhii0vgCUTTjpVs5Y949ODNAmWeiFMRas0VZ2c28GbQbazngN8zSU61s03wiWPGk.3sY4s55oAAZvjIZ3jIJVRoVwJMJTVoIJMHTZzHY0qqRO8ToiOVVmdhJzqqrlLI65w2WIKsrRWeckt4EkZ1Lq8YljpzffmUId+DxeAx4KZyapg9d90Y9hrjuyfedA1kjjnfoSUXPvOqOelsssYV.munLLWRA.90kzToowIpePjFLIV8ChUpRUUWa46XKGaK4ZWPNErjSAKYWvRE34Avawx23uUqV0DpSd3b4sB74Me.Ittty01wyp7sjjXEEEaZk3ye9R4yas7JEKO.v7.hxq.s7P.yCUZ94Bet46.DYs2xD444YNmQKKYtsyd84m89QdXgyGHkjlEHTMIkN63un402O+2W97aVRm4qmWce4GW4gjkc7lc82nQ3r.nrMgIl2h4+gNe27a27tzS9Gm2Ekl+mGmWdEEN+iU4GuOa1D5ateL+ZY7i10Jl61MOnwlMalMes0yZw84+7Kqp3b9d+ba9+eQsZ0LGy4aBv7.6d1sWpYlGl8yT96u..upHvtEf7Vh43wi0Imbh51s62aF1444Y1AM++yduWuGG43oq4K.BWZISZksTopK0UMU6lpmK1yYOO6e56MmK1smcNyomtKmT4jidSlISS3AvdQjQpjTjxanTg2mhEIyLYDHMB.A9v22OmXce3iTJmKVW+98mmG5OOA6fmeMZ6xLusa60G+m04vXphki5+M1YerdddDGGSVVFZs9sVa0gCGe7hVqqpKHYYjCjGDfHH.SVFz+X3vCQr6tHN3PD8OB0vAHFN.U7THOAotDAf0O.cqNTdqOiBsA77w1qGBeUUzYpqVjkmmncKJrlmu+qcbXVS8NItVDvrrr4QCz4wah5S2KBVqESbLBgX9BIDFF5Rm.GNb33iDpcV237Rte+Dd3II7ngoTpsrQ6.VsU.8h7X4HO5F5Q2HOZ6qPp9v7Znb3.NcMDVJkmR.qyaMhVbtdm9mUHDRrVEddOwcXKdczKJNS84Yw6utMrnK1tny2Y+8EE1qVvtmbru3qk+r2dc6q57KlKz24ctWLYINOQEO6sUGgkddp429Ye84EoM9798Wl+9Eedb1073k43t3mepuuyaiLeQu9r36eK94tyu87re8xgCGNb7hgakLdOPsvMCGNjACFv3wimuyvgJADZ0pEsZ0xsXSeDg0ZIOOeVA6km588yiOjmnyYmf6hSR+cI0Ne4hDiqtVPUVV9Nus4vgiONPaLjTTPRQA4FMl7LXxXn+wHdvCP93Gib2cPc7QHlLBY7Tj4oHzkHrU0nNo.rBIxwCgxBz85gtQSDMhv1pSUssag5Y2yhEqcc00ei2Dimr3t5t1kcOuMdx6h9U0Zc0lyHMkjjj46Z7EiQIGNb3vwGtXwhwZYZllsGmwOcTBOn+TxKsr+De50LfdM7X4FJVNJfki7X4PeZErfy6TB7kRBTBThJ228A7kZ432H75LGtWFAdpeLWTDp+xzFNuG6KazredGi54g9p92e1a+z+LTI1zEe7eVuF75Jb2EcLecec+M0w3E6yEt9Tc3vgi2T3TC58.444LXv.N7vCoe+9mR3l5cEe2tcoSmNNA69HCq0RYY4bg6ddB143cGeHKNpCGNd+g0ZozZYh1vjRM5hhJG0c+eEwu7K38y+DdGsOxrXDkEfw9DQ2DRry56QCf0fnr.0viw6d2EaP.1k5BgQH77.g.aVFBigm0UDuXsqy6Mj65podwR7CBHHHfzzz4wJz6Sp2bFoyDrKHH3T6BbGNb3vwGtXsPowxzBMGLIiCljx3TMYEkjVn4vw43oDD5IoQfjNQ9rbjG8Z3yxy94kB8XoYtvqouh.kDka9+Nb3vgCGNb33RFN0fdOPsfcGczQLd7Xxxxlm+yMZzfM1XCt4MuIW8pWcdlU63CepyDbsV+R4nq2FBIU2VdWr.quoa+urs65LW+hhX1tc6xMtwMXs0VadDa3vgCGuHXrVzFCY44jN9Dx1+.L6sKhGbe79w6g5Q2GuC2GYdBBqAPfEQkPcRIVgbVxwTEykRSIXKQjkh5fcwr0JT94eAh02.BCwHDPQAVsd1e1Su6cq23OQQQDFE8RuileQPJkDDDPvrXmToTn0526h1UGAxdddDMqs45W2gCGN9vGKf1BIEZNZZACiKnPaParjlWR5rGmP.dJIAd4zLTQmPO51vmkh7XoPE8ZDvJM7XoHeZ6qHx+INuyWIIXgZeW8PrNI8b3vgCGNb3vw6RbB18df77b52uO862etXcPUgp8ZW6Zbm6bG9S+o+De9m+4ztc62ysVGuIwXLWXs94cEuuWP0WGNaa+EIhG5zoCewW7Eb8qec5zoy7b4ullMaxpqtJ24N2YdwT1gCGNdQvXsjpKIdxXx2dar28GP8O9uP8feEuAGgLKFzVrBEVoGyW1OQsvc0GIQ0sIjHDRDXQkNE8f9v3QUtpKLBgRM6u87QHDycWVPXH999uU1zG00PjxhBRBConnX9FR48I00H3zzThSRP44MWPQGNb3vwGtXsf1XIozvIoELMqZiqD3c98uWnMbRrkwIkr2nLrTZOwJ...B.IQTPT8jBB7jzLPRmPOVtgO8Z5wxQAzMrx8cqLSXuVAJBURpptVLeyw3DtygCGNb3vgCGuKvIX26Ahii4QO5Q7nG8n40yL.BBBnWudb0qdUt10tFqu95366+drk53MIVqEiwLuHNedE52E4MUMG525ztcatyctCe0W8Ur95qSylMO08666SqVsXiM1vIPtCGNdwvZwBTjjvz9GSxCeH5u4aP9ceC9266wa3QHzEUVBPpvHTvLG0IrVptiE5eWHlEMlUeWXsHJKPDOEQbLjmAJIB+.HyCwLgwpOB0B3444Mu10EDDbphD+aRNqvfA44yqibuIndSUb119yaCmTKZXddNIwwyai00yN2XpNb3vwGlXrVxzFhKLDmqonTSfuBkTLePP6BOViELFMFiEyr6Uh.kRRnujFAUtuqSjGcBpDvakl9rRCeVNTQy.OBUUh7E5IIPpVn12M65z.N0duwgCGNb3vgCGNdCfSvt2CLZzH99u+64G9gefQiFM+1qq4LsZ0hnnn2Z6LdGueXQA6jRoawCeGQqVs312917W9K+EtwMtwS4hNoTNO1zZ0p06oVoCGN9PBq0h0XnX3Phu2cI4u+2Q8+5+.useHpzXvnAoOVgbAmzIlIVW0OeVDy1LG0wiIFKxhBDIwPQNROOHJDaQDXsUh1YsvBatC+f.Z0tMsZ2ddsq6skfcRoDkmGgAAjGDPQQwoDr6MgateVs8m0wWq0jjjfTJILH.OkB+YB24vgCGN9viRqko4ZlVThd1FeYQSpuv2PRknZVgDqZgxF6rGPotx4cSRJYeAHkBB7TzNTQ6HO5F5S2HEKMqF3sRjO8hBXoHEM8qbemRVc7jKbfcWUmCGNb3vgCGNdSfSvt2Cjkkw96uO6s2dTTTL+1877nQiFzrYSBBBdpZskiOb4r0LNoT9Vy4CWl3xvyOeeeVd4k4JW4Jb8qecVZokde2jb3vwGhXsXJKwljP4nQTb7wD+f6S127Ow7CeG9O99HSFW8PEJrRUUMpag+9mh4EHmpHwDq.T9UB9YMHxywav.DCFf2MJQEDhnoAguOn0UB.V+2BDFDP61sIJJZtfcusn1kcQQQXLFjRYUzXtvy0ySTsEu+ydayu0KPLt5XkVq0OSG8YsVJJJHKKijjD778Q5bYmCGNb7AIVfbsgSxJYbdIZicde4B3ohI5mLz5S2eu0ZQap9xXLXlM1iPH3jXIgdJh7UzHPQ6HEKE8Dm20KxmtgdzzWQCeIQdxm3.uY0+NOoaLFGNb3vgCGNb75gSvt2CTWiUpq4K0nTJZ0pEMa1zsKv+HiZw5NqC6de2ddWva5EG8UoceVASc3vgiWJp6CeZL46sGo+38H4+8+IY+7OB6uK9SFgnHCqzqZG8KjLeu1+b52optzo.U0XBVsWUbZVjipHCuc2A+s2gFe1mSzlahr2xHEhJW1cFG1ojR778mGAjusQoTzrUKBCCoS2tyGiytnfc0Bwsffbm6seFA6leLV31J0ZxyxHMMkjjjmofc.TVVRZZJ999DDDfmW0zdch14vgCGeXfkmDGlCRKXTZIVKHmsgXdYmYuPHPIAoPfUIO80FXgRsgIZCSxJ3vwB7TBh7phPy1gdybfmGK2viUaDPuFdrbjO8Z3Qun.TBwbACun3c1gCGNb3vgCGNdV3Dr68.0B2b1EZRJkyWTIm6593gEEqqdwLee2ddWPcjo8lzQCupscmXcNb33UFqESdNkSlPwN6RxcuKoe6+jz+w+az6uMjmhvX.4LW0IUU6VeqErFdRVcU+cIBkDjdHBBQ1rU0WMZV0WU7DziFh8jAHzknN9P71Yah5Ofl2HC+FMPFEMu4U2656iEDrtOdee+SKR2Y99h8+9hb6y9gSsPrVqkxxRxlMGoZG1cQ8uWWO6RSSm6DPOOu25NOzgCGNb7liY6uCRKlIXWRIFqEo7UOxmEyDUawfrzZmU66LVzFCZqsx8c4vTo.uXA9dp40+t1gdrbi.VskOq2Jfa1MjPkjHOeLFKEkZRyJvXr34UkrJdJIJoblw3EOoN34vgCGNb3vgCGKfSvtKY3psYe7xhB289j4Wf36fOi49rrCGN9flY0pN8jwj8fGR728cL8+3+Oxu+Oi8jAX0Fr0tiSplWQcD0qvX0uvbY0jJD99HBhP1rEpUVifabSBt10vaiMvVTR1CuOY+xOS9uVhY5HDmL.6NagY+cw1+5PyVHZzXdS7xROrmsu9E+8KZCS7L2HEmQvNnJgBpquu4EEn05mJsBVDsVSVVFJkhFMZfuu+6cGt6vgCGNdwwhEs0RZogSRJXzLQvjhW+w+N0HGhpZemPARoBOVbLJw7nzbZpl3LM8mVvNxTZE5wZsCX5Fs3JsBoWjG4EZFOIl86OhrhRZ0HjlMBoUTHgA93ojUh2obWmjCGNb3vgCGNdZbB14vw6.VLRFuL51q2FsmZG18tnV84tXWGNb7FkYB0YxxPOYBYO9wD+MeCwey+jre9dnGbHh59xkyh+xYwTIFCBVvccJOvK.QXDxlsQ0cITKuLpdqf+lWgfadCBt50ve8MPOYL1hbJO7PvOr5vUjQ4nQn2+.JO5H7WeMD1NOwwdWx375O9MoKqkRIFigrrLLZckCHt.Q6pckWddNIII366ixyyIZmCGNb7ABVKjUZXRdI8SJYbplRisZHv2zCCJ.ABdRYnal66.LFParXsFJMVLkVr1paqcnp51.zZKoYEr2wi3+5dOhiOYJsaFP21MX0tsoaqFzHJfVMBnYTHQg9364gRIQJEHEUeU6BPGNb3vgCGNb7aObB1cIiKqB533UmEeO8kMRLea3FtyJb3aiX5bd8TRodiKX2h0ChEeswIZmCGNdSg0XvVTP4fAj9fGP728cD+e9eP9CuOlIi.6r9hDhSKbl0hvpqhHSqsp9zo7QzcYTabE7uwMH3V2lvqeMB1XS7VZYjMqh3Roe.YEEvrysvnA.iTgVaH6niva+CH3V2BOiAgTdoUzt2VHDBTJEAAAzpUKLFCkkknKKAt3MehVqIIIAkRg+rZY26Jml6vgCGNd0ovXY7Lw5NdZNiSKQaruU6+97FIQJpbeGJEFacItvR2He9jdM4VK0fVARJ0Zlljx824P9+9u887SOXW7C7Y4NM4pqsDatRWVc41rVuNr4ZKwpK2lk5zjVQA366gumh.OO7TUaFH2vTNb3vgCGNb7aObB1cIiKCQlni2775TC6VTPpWmKNsdgMSRR3niNhc2cWlNcJAAAmpc8l3BfEBACGNjCN3.N4jSlGYYuMDh9EU3QmH3Nb334hwforD8joT1+XRe3CI4t+.o+vOP9C9EzC6W83rVPrfCsrlmTy5rVrRE34gnYG7VcC7u9Mv+VeJA25VDcqaQvUtB9qrBxYQaosrDSRJ53XJGL.ynSvVVTceHvTVfd3.JN9XzSlhMOGBBpDD72XHDB777nQiFXzZxyxlGMlZs9b+alGMlddDMql1ELS3NGNb3vwkWJzVFkpYPRkXcoEFTx2CBYMKxLq9NXsBrBncnhatTH2raDM77PqKIIqfi6Oge4A6xObusvyWQylg73kZypcawJK0hU60gMVaIVe0trZuNrbmFzLJhNMCocqHZ0HfnfJQ7TRAJoDoRfRHctuygCGNb3vgiOxwsREWh3xbjI530i21NZ6Eg5HD6niNh6cu6gwXnSmN344gVqmKT7qqfc0Qg4nQi3QO5Q7q+5uxjISdS7T3Tr3qmkkkn05KLRzpeM28uqb3vwyBSYI5oSIemsI969dRt6OP1OcOJ2eWLwy5Galy5lWY5rVDFCByLWdIUXZzB6paf5StEMuyumF291DbyOA+0VEYiVnZDgHH3Im2rLxO9Hx25wj+vGR4A6iMOq5XCPQA5winb3.JmLFcZZk6k+MnfcPU8QMHH.SyljWTfwZwLYxEN9p0ZonnfrzThiim6962EQ1rCGNb33UCqEx0ZFlVvvYh0oMFjBIxYiC+Ns8L++UgP.MCUb8NQbstQzzWxzBCY4EjlliNs.cdARAjLMicmjwg61m.OEAg9zncCZ2oA8VtCqtbKVsaKVektr4ZKwlq1k0VoKK0tAgA9zHzmnPeB78v2M1kCGNb3vgCGeTiSvtKY3DU3iOtHw5dWGGWZslzzTN3fC3a+1ukCO7PZznAJkZtfcuobWmTJINNliN5H1ZqsX5zouAdFb9mGeeeZ1rIc5zghhBBVXQvAnc61DDDfT5Jr6Nb33BvXvn0nGOlrs2gje5GI9a+mj+S+HE6s8SDqqlZgzpi.Sa0Fdv5GP4Rqh8pWGuO81D7Y+Nh97Oml23l3u15nZ07oO2VKlzTxO3.x1daJOXeLiOAzkyueqoDadFlzDrYYXKKqVIyeixhQiYylMqbXWd97wxN67npGCtnnXtfc0NryM1fCGNbb4C6ruxzF5mTvf3BJ0WNRgFKfRHHvWRmPe50vmtgpYiyTxnIoLdRLE4EUySPH.rjUTRRodlI8EHFLlf.OZzHjNshX41MY0kay5q1kMVqKqs5xrxRsncyHVpcDK0oIcaEQ6lQzHL.kRhmRgRIm6BOgT7Fuz94vgCGNb3vgi2s3Dr6RFuubeki2tbVmS9ht3fuIqgc00vm81aOlNcJQQQycWvaRghqaq0QPVRRBSmN8M9mqqEqqSmNr4laxMtwMnUqVjlldpG2UtxUna2tDFFhTJufilCGN9sLFsFSRB46c.S+1ukzu6aI6GuKkGtO17Y8o7T0ptYtpyTBH.+.JWaSx+SeMde4+BA25SowU2jndqhe6NHCCe5Sr0VITX7TJ2eeJ1cOziOAaYN1EhG6mHN3B+tCjRIQQQTVVRVZJZsl7YB2cdn0ZRhiQJDzHJBeee788Q8aTmJ5vgCGWlwhkrBCGEmyfjBLVpDk58f65NcCyhmmjkZ3wJM8HPIlWS6RRy4v9i3vASHqzfxSgefOJeE9gAUaBG6oSJj3oojLIkAGNjsTJBiBnQyPZztIc5zjdcZxZ8ZyUWeIt55KyUVeYVY4NzoYHsZDRyn.hBCHJvCOgBDNQ6b3vgCGNb33CYbB1cIhZAMbtr6iSdYi7z2zNvyZsTVVxjISdqDQkuqQoTznQC1XiM3q9puhVsZw3wiIOOe9qaVqkabiav0u90oc61t5UjCGNNMFCVsdVMqqO46tCE6tKkGcH5oSlIblclXcVvBBrfYlq5rFPJwDzjx02jxe+Wf8e8eEuu3Kn4UtJMWZYBBCuPAgLkkXRRn33Aj83GS4taiIYJ1mRvIQUMySHQHj3JdMUTuwMhhhnQiFTp0WnK6.lWKYq2LI9AAyiFSGNb3vwkHrUFIOSaoeRAmjTf1XQ9dVLJqkYBGJnWq.VsY.gdRLVKEkZFGmw1GNj85OhBiAomBkmB07qAY106arn0FDkkTnKwTpISap1rNiiQnjn77HLxm1MBoW2lr9JcYi0VhMWeYVsWWVtSCVZlfdK0tIcZGQyFADETEclJkBOkbtC7DBABb0+NGNb3vgCGNtria0qujgSntONwUeBeyimmGc5zgO8S+T5zoCSlLghhhSEsmVqklMax5quNc618ohKSGNb7aarZMl3Xz86S1Cd.4auMTjiHJBUmtftDc7TrEYHrTE+klxJA6vBJEks5Rw0uEk+4+U3K+J7t8mRz5aRyNcoQP.pmgyds4ETLX.4auMY+xuPwNagMK8oefBAHUfmBTyDryshamJZja0pEFigh7bJKmUOAufwa0ZMwII346OOZLcwhoCGNbb4BAyhDy3BNIoDrfTvqrMyEm2urvvDunWgl0B9JAq0zmMZ4WIXmwRdolgSR3g6dLacv.xLFT99UiWas0R0M+3nTRjBeTddUiWsv0JpMFLZKYoETlly3gSX+c6STT.QshnYqH5zpA8VpMatRG1XVMua0U5vpK0lk6zjNshnUi.ZDFRPfG9J4r4j3DsygCGNb3vgiKy3Dr6RHNAc93hyJVWc7m7hF+otEQ7Ir3qWRojff.50qGc618opOf0OdoTN+K2qkNb3..6Lm0Yhiobv.x2aWx2YGJ1eOzSFCkEfTBJuJysYsHzkHr5pUpSov3GftSOJt4sPemu.ye9Oi+mdahVtGM5zgnvP7mE6vOcCnZg4LIwTr29j+3GQ4t6fYzvpy8YQJQznAx1sPFEgndA.cfPHvyyinYNrKMKCsVSYYIZs9bGmstlt544MuVtt3XDOuWYO6Q7kcrkyVKaciM4vgCGmFCVJMVRK0LMSSVgFekDo7Uu+RScbTRU+70c8JPLui+EO5OqqRyWJoWCOVoQ.gJIVKn0FlLMgcOX.Gd7HzFKd9pmLb8YFORHDHTm9DWM8.CRsgxBM5xRJKMTnMjjkCSSPLXLJOEgA9ztUDqzsEqtba50qCqzqMq1qCqtbaVYoVzqSS51tI851jUWpEsa1fv.OTJWYBvgCGNb3vgiKq3Dr6RFtZX2Gm75HXG3DsCtXgrEBw7Ea8hvsfnNb7gGKFSzun7h9uyqihxxACnX6sHeqso3vCnreeLmL.8IivLcBl7TPqQXzHz4H.rJEksWhxqeKz+tOG8W7kvMtIrxJ30rEs78okPf2ypeGqESYIkiFS1CeH4O7AnGM.aQ1opccyed46i2Jqf+ZqipSU8vS5hww4T6xtFMZPQdNXsDGGOe71y9YHiwPdVFoJEwwwyE86UMZLO66xunehs9751PINb3vwowXfjRMIEUhUYLVrpp9aeYuRYAUh0Upm4bsYiInjRjBARIHYw4PT6.Ma8+cpikT.AdRVNzmkB8vSJwZMTp0DmjwQGMhA8GWEGlJ475E9Y4bmeisR.QoThef.Oeu4axmZw7zFKFsgrrBJxJX7vIr6NGQPnOgMBIrYHc6zj0VpEqubaVaktbqqsN+gO+5byqsB851lFNA6b3vgCGNb33RKNA6tDgqF18wKuNh0434iSPNGN93.iwLuFj8lteR6LQ8EFSkXcmLD896SwVaSwNaQ496g93iwbxPLSmhIMFxRQVjBlRPHv3GPYu0n7l2hxe+Wg8284H9jahXodHjR7UdzzyiFJEpmQeRlRM5owTbzQj8f6S9VOFyzyo10U63qfHT8VEu0VCUylH77bNraAp23FAAAzrUqSMOphhhmxocVqEsVSVVFSmNEiwfuuOJk5ENo0pcnAmwUdu3QplEkRQXX37y8yZim3vgCG+VhbigAIkLLsDswVkDzuhGq5vnTHpDoSr30kQU4n0L69qbd2Sd7Ulu6ImYg.7jBh7kzJvilAR7jPYggzrblljwjIwjklSTyHjdpmxYcWPi7TTG4ym8IswXPTZvHznKq9pnPSbpElH.k.opx8ccZFxxcZxJ85xnIIrxxsXkdsoSqmdiA4vgCGNb3vgiKO3Dr6RFNQb93iEEpyUK6b3vgiKFsVSRbLY44nKKwbNtM6h3T8nd19WUJvyu5mKKvbxIn2cWz6sClc2E696gYucw1uO1ISfrXnrDgNGooDqPhILh7MtAk+kuF8W9u.27Sfd8vJUHKKwGKQJIgdd3GD7LEewlmS4fAjs8Vj+f6S4d6fM+bpcc.BkBYTC7VaU7WY0pHwTJcB1cNnTJhhhlu9lRoj3jDxm84oyNtaYYISlLgrzT788ms3nufutdlHX9492cFGiZABBBnUqVzrYSBCCcB14vgCGyHsTydSx3vo4nsyDZS7x4ttJ23YQarHEBh7U3ojHEf1XINWSg1fVaNU8kqxEchYtuSLqzwJPP0O6ojzv2iPOI9xpM5QQotRrt3LJ0lp97EuZNBrly6ZEEHpp8cRId9mt12YL0aLTKE4kLLKmoiSn+ISILzm+7W9IjW7xM2JGNb3vgCGNb7tGmfcWBwIjyGe3bW2aNbhc5vwGunKKINNl33XzZM5YNN644f1KpOAKBPJPHUXUJD5RHdJlACvt61X1aWD6tCbv9HN5PXzIPVJBcQUdbgEqTgoQKJ175T9EeEl+xWCe1sQzYIPovljfTWRCeeZ36SvyJZEmsvZ5oSHaqGS1CtOkGrK5oify5tN.gxCQTST8phCS+UVAYXnSrtK.gPfuekvr0Qdltdb2Yt2bQpiFyxhBxyyegELq9Sam5cgWPA6p9wYt+KLbtKJpijSmawc3vgCHqzxgwEbzzBzFKJo3TNc6EAKyG1EeOIq0NftM7ogmhBikAwYLIWSdgkbsgxYeUWq6LXwVq81rHxTHj3qpbXWnRh2rZpWdQIGeRLCFGSowfPIeyLT84L8lSMV07ZemE6rnxTqMnKJornJ9sIsf7RMJoj.O0qUc.zgCGNb3vgCGu8wIX2kLbh47wKNw5d8w8ZmCGe7h0ZoblfciGO9T8W9b+29h4qX0ruO6aJYky5DBDFCh3IP+igAGiXv.33iPdv9HObeDmLDQVRkvY1Jw5vymhNKS4M+TJ+yeM1u3KgadSDs5fMKGJyg7b7BBn8xKS6Ncvy6YL0JqESQAE8GRxcuG4+3Ohdz4KVG.B+.7Vcc7u9MH3pWAudKgXlfTNdZpE6xyyinnHrVKEkkUwr5rnV8reV5T04tWlUW8rNr6kfEaCIR47nwzUO6b3vgiJxKMzOofgoEycH2KpdcBp5htdiaHEBZGp31q1jasbS5E4gA3voYLLsjQYkLJSynjBljURRtl7xYh2YLTxh64BO51viHOIQdRTyNYwoYr6wmv9CFSgET9UQW8aiqc4YVWu8THURTdJHJ.OOEsa0f0VsKarZW50sEAOq4o3vgCGNb3vgi263ls1kHb0vtOdwEElNb3vwESsnIkkkjmmSdd9q9FbvVUcwrBAXUfPB5RDwSggCPdvdHN9HDCGh7fCpbW2I8QjkfvnqbkmxGcXD5dqh9S9Tze9uGyW8UHt9Mv1nUU7SkmgLOGIVB87nQiFDFEg7Y3tNcRBk86S1CuOo+zOVU65Rhe5H7THpDYrQS7u10I7V2ZV8qqUU8qywERsi0788wXLDEEQYYIkyhX0yVO6fW84cUKr1EUGUsUG742uTVEiY00POiwPddNYooTVTfYli6bB14vgieqRkq3rjpsLJqj37Y8Y+R1s37nvbV8lak1AbqkavcVoIqzrZiurYq.FkUv3bMCSKYPRQk.dokLMqjzBMokFRKLTTZPaL36InYfh1AJBThp30TaYRbF6r+.16fgjkWb59wEmpg8lkENdKNljb1TQBCCnYqH5ztAc6zj1MCwy62Rwu7SFeWTWTBc3vgCGNb33RNtU84RFNwb93iyJV2KyBC5V3NGNb7aApcWW4LwTds62SH.kpJJLAD4Yvv9HOXeD6uGxCN.4gGh53iPMrOx7DDVc0tgW4SY2Un3y9bJ+c2AymeGDW8JPmtXkdvzIPYITVhRJIJpAMZ0hfYNj5ba6VKVigxQmP7cuKw+i+IEO39nGdL1h7ys8K77Q0YI7u0sH3S+T7VdYDAAU0uNGOSVLlICCCq9rUQAlYe95rQi4qy4nt12cd0xt5ZKjblK5788IHH.iwPbbL444UhTWTL2Ift5XmCGN9sLVqkRSUDUlUXHuzfw9xWK3rVnTqIP5wRM74Jch35cCYyNAzvSgT.M8UrgwmRikjBCSy0LNuxscSxKYZtlSRKoeRAmjTv3zRB8jrdq.5E4S3LguJ0FlLIkc14P1YmCIdZ5rMcjppN1cAyo4M808+zGupPD0SIIv2iv.e788pbq3uQXww7cwNsCGNb3vgiOTvIX2kLpEnwMYxOdv8dpCGNb7rwXLTVTTIpxqqSjEBrypacfsJlKmNFwngHFcBhoSPNZLpiOB4ngHJywJkX7CwD1DS6tTd8aR4e7Oi8N2Aw0uAhVswVTB4YXyxpDrCP46SilMoYylyEt4be9UTfd5Tx2YWh+gefze5dT1+.rYIm+SAkOxVcwayqP3mbKBu10Q0pEhKx8dNdJDBAJkhff.zkkTLSbr53oFd0Wrz5wzUJEdddOIFTWbb95isPf2rHuLHHffvPzkky27NoybWWQQAkkkO6HU0gCGN9HGiERKsjVpIqzP4qna6sXwBnjB5F4wZM8Ykn.5F5gRT4LtHO.pFWsVjvjRMIEFhKLDWnYTVkfc8SxYXRIJofMaGvlsCngurJpqMFxxKXxjDlNspOccoFAfoTNyz7ypotm85Bea49NS0qA9dJVektr4pcoUT.pOx2THFid13oUaPmhhBxxRorrD3IiaGFFRiFMlW2aeaQ0GcexarUus+hul.0IPQcJTTmR.0Qo8EVyjeCQ8bUJKKIKKCf4Q386x02Pq0jkkg0ZPJU34oPo7tv4cW2tKJJHIoZt10ue+tncWVVRRRBVqEee+40oX2lxxgCGNb7hhaUAtDwhwkjiOt3U88UmPeOMNWn5vwGeXMFJJJHeAWP8xePryDqSV4rNkrxYciFhXv.DSlBE4.BvpQjFirLGievLQ59DLarI1dKi4JWE6m9YvZqCAAXyygzTr4EHLl4By344QqVsnUqV38LhBSSbB46rKI+3OQ12+cT7n6iM87EqC.QXH9W4JD7o2lvO4Sve80PFF9x+ZxuwQHD366SYP.9AADTTLOJJqEs6h348YvEcw2YEYawnvrVzvFMaNeQtJKKoXVLcVG+qEyDsKHH3MiKSc3vgiO.ozXItnjoYZxMFLlJQ7dobWGOo10E5IYoHeVNxmHeIJg3bKWoJgf.kDOofldvRQVzFC4ZKIEZhKLLNqDKVZG3wRQdzzyCK00AUPpTnTRvB5xRJyxqZ7.RkDomGJeup5LmmDk57qYoutWqSk6tq1LTshB3Kt0l7k29pzoUzq0w8CAJJJ3jSNg33j40E4gCGxzoSHKKGOOOVZokXs0ViqcsqQ2tceqMdaknQvE8o2Wjya87CRSSYxjIjkkgVqoQiFr5pqRylMey1nOCUNTrjoSmvgGdD.r1ZqQ61su3Tk3s.YYYb7wGSQQNQQQzrYCZ0pMRYvyncqYznQr81aC.23F2fkVZo2INsLIIgc2cWJKKX4k6Q61soQiFt046s.0+qK2rlc3vwGa3DVfPj9...f.PRDEDUr6RDKVCeJJJHOO+TSX+7p4JuLG6W0GacLN81dGb85Rcsood2mYLlSMYrEyu9EWjs5ININSgAewZJXcsT5r+7Yeb0Gm5uKDBJKKIMMkhhhWpZxzh6.y2DSprdgCihhna2tDEEMeh1OuEt7U4bUuS3RRRX73wjmeNw91KINw5b33iSLy1ErE44y28vuN+6cq0fvngxhJ2voKp987BDSlfXxXjEYXURz8VihO4SQ+keE1qcMnUKnSWXkUffnYweYQknckkvrwPTddDFEQTiFDDFd90tNqEqVS4nSH4m+IR9gef7seLlwmf0bNwx3rZWmLpIdW4ZDdyOA+0WGU61WbswywER83d0QQY4rwgqG26rieWyS86O4NlebqiCSOOOjJ0SlC.OY7a4h6j+nH7CBluPQQQQy242ZigrrLRSSmKpW84wgCGN9sDkFKwYFlTnmU23dEbWmsJLH8TJZDnnaCO5D9jZN24gP.d003r4C2pvZAs0Rgox0eFiEOoDekDek.qoZCVzpUH27ZqQ+wwzrUDCFLgz3TxSyIuPSowfFAFc0XORs.iThrtAs307cAhJ9R8ZvrQtZ0LjO6Favu6FaPqFe7HXW80YFGGO+5Lqtt6BlNMd9lgINNgAC5ywGeLGczgXsvpqtJ27l2DgPvzoSXznwn05pMWSiHZ0pMQQQDLaL6WExyyYxjoLc5DlLYBEyh+7pqCeIZ2t87qE+YQVVFGczQy95XhimB.sa2hqbkqvpqtFKu7xDEE8VYNCFigrrbN93i4t28t.vW8UeEggguS2n4YYYb3gGPRRLc61EstGAAQ36ewB1UVVxnQi3W+0eEg.51sKsa29bayUqiT0ZHo0FjR4q06+IIIr81aQZZ573NOHH3stiN+XAq0hUavjWswGz4EXJKq9ddARkB+NsvqQHBoDcdA4ilfTIowpKiLvGcVNlRCHlsYJB8Q54tVJGNb7gCNA6tDgwXHMMk33XhiiYxjIyW3R3zBC8hrXlmmfSuHT+3gJmg0nQi46FoKyn0ZlNcJwwwLc5TJJJN0DxpedUKZUylMoc61DDDfTJeJQ3pe70h.t3WUSl6I6R+E+aWzojRoDiwPddNiFM5Thv9tdg3TJEMZzfqbkqvW9keIW8pWsxUHddyES7MkvfRojjjDN7vCYqs1he5m9I52uuSvMGNbbtXLFJl45nWlwqNE0aVh55SVQNBSIDEBsZhcZLh7bT6sKpiODgQitcWJ98eI5+veB6W7EvJqBFScwuAawjpimQivXmInFnl4rt5wPtncqq0XvjmSwgGQ727Mj8Ce6EKV2rmCBkGxVsw+pWifqcUTsaUIVmaW49RS86IJkh.eeLQQHjR7CBvdNB18bEtage+oREgYN7TTWu577valfdA993sPjoVGkUEEE3GDfNMkzzT7TJZ1r4q0hD4vgCGeHiwZItTSbtlLsE8K6F3wNu6XB8jzLPQ2PEsC7v6hTq6YfP.JDHTfmnxQcBpDTSIDXjBBC73JqsD+e7u94bsqtBGb7HN3ngb3Qin+fIL3jILXTLCmlPRRFk4kTn0Uh8AHjUavCkuOJeEJu2LN.RJkzoUC9zqsJexUWklMNewM9PjZgrdzidD26d2k986WMdaPvLw1phgZsVyjIi4fC1m6d2efISlRud83vCO.vhmmOe+2+cLc5TVc0U4ZW6Zb6aeat5UuJ85sBMZz3Up8Mc5TdvCtO2+9+J+5u9qLb3..X802f+ve3Oxsu8s4JW4Jztc6m4wY73w7i+3OxO9i+Das0iYxjoDD3SmNcXs0VkO6y9L9y+4+BW8pWA37cr4qCZsljjX1Zqs4u829aHDBVd4koWuduSEeJKKk82eeFM5DVe80Qo7XokV9Be70B1Mb3P9ke4mQHDb6aea1byMOWQRqbQ3TRRRHKKCeeeVYkUeke+ONNlG8nGwjISHHHjlMa8beu1wSvpMTljQ1ISH9fAj1eH4mLgzgiHq+I32rA89WtMMuxZ3EERZ+Qb728y3E5yU++7ekFqrDwGNfx3zpnouUCZt1xNA6b3vwGT3Dr6RD444zueed3CeHey27Mzue+40akEYQA0dQDs6rBJ873rEm4Nc5vlatIc61c9hH8h5Hq2EBzT+bKNNl986yvgC4jSNgrrLjxmLw0Zw0777HJJh1sayRKsDQQQyWDsEEC87DqqtFybQh1MeW0uffcPUNl+vG9PN5niHMMktc6dp116BpEpbiM1f+3e7OxW7EeAKszRUwE1rOm8lTvtQiFwVasEQQQr6t6R+98eC7rvgCGeLh0ZeRMr64L9xh8yV2ikUH.oDgTVEIlFMjkBYkUhiklgc3PT86i2jQn.rqtAbyag7O9mP9E+Kv0tNzrI1zLr4YPVFTTLak+jH7XlnfUtipcqVU0ttmQj.omNkrs2g36cOx+kelxC2Cad5SpuYm84lxCYyN3s15Db8qi+lWAYTCmXcuFrXrThPfxyq5yXV67nqzRcDhsfK6mcey+4E98EN3O4wOKpTqcves66Vrtkrnq4qc8WPP.444TVTPVVF444DFFNuc6vgCG+VhBigI4kLIujxRyEMb4EhEKFqEOgf.OIsi7nanOs7Uux0usZQ6p5R9zi2Km4juk61hO+VR1X0tbx3DNd3XN33QbT+wbzfwbzfIb3vIbx3ILcRBIwojFmSddAEZC5YhL9jHT7U6ZxpuNVOOEQgAzaoVr5xcXo1Mdscs2kApu97ACFvO+y+D28t2k6d26xzoSnWuUnWudzqWO.HNdJwwILZzIr81awCe3CY73wLZzHhhh3129yv22i81aON7vCY6s2l82eu4QOYPP3qry0RSSYu81k6d26xe+u+2Y2c2E.9zO8SoYylr7xKyJqrxKzwY2c2gG9v6yN6rKkkZVasUvXzr2d6wnQiXkUVkVsZRqVsv2OXwRnK.O0uCVz5pTcxZsyWyhyaymUTTvnQiY+82ie8W+U777XznwTTTNOYnNassa9YY1ZJUmxNKtA2VbsVzZMBgXdx+TNqNQu35oHDxYyaJDOO+ScbpOFZcIBQkS1pd9Jv22ilMaN636O+uoJFxqZW99ADGmvd6sOGczgbxImPmNcHHHbtfc0s05015ruds38WeNpDOtw7jpp91O6qwmcybW+ZSQQwr+s7SRDo56qNkG9XIhMsFClBMko4TFmP1nIjb7IDe3wLc2CH4vAjObDoCFQV+ADtxxfRf0XHnaalt6Qb3+0OfeqFrx+xmgx2ig+5iH83SPEEPi0VAun.DRIkIYUNptUCTAtkC2gCGWdw0C0kHhiiYqs1hxxRN3fClY2+mtV97h5vty9XeYDOqdASUJEKszRbiabC1byMYkUVgvvvmq.OKNQrW2nM6EosVVVxImbB6ryNb3gGxvgCIKK6TwI4hNrqJxKZP61smuvX0Gq516Sl72S+UsHcKNwoEetOewjWXw4FNbHO7gODoTx5qu96zbeGXdTLrxJqvu+2+64u7W9Kr7xKSXX3az2ipeNcxImvpqtJwww72+6+82HGavEKlNb7wFVqEiVS4rudV+a7ZQLTyhZP0L2QiRAA9HBhfFyhwxSFf83iPOYJ581G9keA0taiWQNxdqh4O8uh3K+JT+tOGwZqCJE17YBzIkPP.36OakNdRERn14400ihmknJEGeLi+2+2I9+7+EE6sC17Tr5Kvcc.B+.7VeCB9jaQvMtI9qspq108F.4LW0ImM9+48Yrm0m6leeWPTYNWruE1vN0Qt8Yi155EqoNpNCCBH22mjE1XPEEEO2XxxgCGN9XjRikQ4ZFmWEij08zJfW35Xm0BHDD4Iqp2bgUQho+qfC6ddHDBTRHJvGkTR6FQrQutbyqzioI4LMNiwSSYzjDFLIlgilxfSFyQ8GygGMSPugSXbbJYEZzVCv4uv9uLDD3yFq0kMWcIhB89nPrN3IIpy1auE+G+G+Gb26dWFM5jYNNaMt4M+DVc0UHKKmG7fGvt6tC6s2tr81aS+98onnfVsZgwXHLLfkVZYt0stEFigG+3GwQGcH862mjjD1XiMlKp1K66EEEELb3P1Ymc3W9kekG+3GCTMGfu5q9JlNcBZc4y83TVVxjISHMMgf.eVas03K+xujoSmx+y+m+Ooe+9biabC5zoC23F2.OumdNNO4WEHD1YBVky3w0QAZHgggOkfaUOOxYvfAbzQGy3wioQilXVHkHphpxCAX95aT+7zZsjllxwGeL.rxJqPylMmm.QYYYjkkRRRBRohNcZiPHINNFiwLeSMEFFR61s42869cjkkQiFUhSV6fxrrThiSHNdJJk270qJHHfM27J7e6+1+M.XyM2.kRgVqIMMkSNYH.r7xKyImLhe4W9Y9oe5mY6s2hqbkqxladEVas0lWpORRRlKlnuuOMZzX9y256uN9Kihh3q9p+.FigUWcU51sKdddKHN2Sdu47VqurrLFMZTUcnrUKTJ07MNdddN999rzRKQ3GIWifoPS9nXhOnOidv1L5gayIOZKlt2dj1+XxFMAcZFkoYTlGSy02fFarB9MivZLj1uOidz8wucKxFOA7jbv+02yjc1ivU6xR29SnwZKCZKS19.DdJV5SuJpfNuuep6vgCGWHtUC3RD0NrKMMkiN5H788OWmF7x5VtE+9KyeCTsHWsa2lM2bS1XiMXs0V6TB1cQrnfcuntA7Ug5caT0t+ZD6u+9zueelLYx7rr+rO2p2AW0QlwhBmsnHiKJJ2Yusy5xwy9b6r0eNoTNKK6mvxKWEeCuKJ3wmsM444QiFMXkUVgM2bS50qGQQucpmAMZzfjjDVd4kIHH3TuF6vgCGvSb9bwLwJLOGA6TJEAggDN6h3mKVlTNSvtPrgQHJKf7LJEJxGMlx81C6taiJdB9c6g7ytCx+xWi7K+WfUWq5uqnpF0YMJv5iX9tbuhp0+SfTHHLLjnFMveg91VDcbLkGeDw26tj98eKEa8nJW6ITfv7zN0RJQ34ip2pD7Y+NBuycHXyMqpccNgadsoVfr53ut91VjWzXF+L23oce2YF2+7pit0TKpWTTD444jkkUEg1YYjOagldWOOAGNb338MoEFNbZFGNIi3bMkZKRAHq6K7ze6BEwSV6vt.EsCTzzW8JEIluHHDB7TB7TRZDVESfFaSJ0FJJ0jkWRRVNIo4LNNkSFGyQCFw9GNh8O5DNn+HNZ3D5OZJmLIlwSSIKuDqw9JIbm0RULctdOt5F8nQzGOQgYddNCFzmG+3s3d26tr0VawZqsJW6ZWmae6OiacqaQ2tcY73Qzuee1YGAiFU8ySmNEeeeZ1rEKu7xr7x8XyM2DkpxsT0qkvN6rK85sBCGdxbwQdYc7dcIwHNNlQiNYdjXNZzHRRRmsVJuHa95pZql0ZILLjkVpKW4JaR+9CnrrblvSiYvfA34oX5zoybgVU6srrblfXR5zoCVqkSNYHCGNfiOtOEE4DDDxxKuLW8pWiNcpDvHKKigCGxd6U4rts1ZKlNcJMZz.orR7n82eeFOdD6t6tXsVFLX.qt5pzqWOrVKGczQLXPeN4jQDFFLKlJ0366QbbL6s2tLb3PRSSm29pErSHfFMZRudKyFarIddp4yKpQilyRymSHNNgSNoJckFN7DBBB3F235r1ZqS61sw22edzcVerO3fCXvf9LZzX77Tr95qynQi4AO3g7K+xOy8u+8Y73wr2d6w5qu97Zc3d6sGwwIyEK6JW4JDEEQZZBmbxIbvAG..arwFUaHqYaJ7fff4Q3pTJoWudDFFhVWNqNLlfPHnc61n0Z52+XN4jSXxjoXLFhhhPMqVIWTTPZZBMZzjabiavpqtBMZz7C1Zimtnjxoojb7PFs0tL59ayve9gL9Aawjc1kzg8IOYB5hTrlpM3owVfxOfjC6SR+SvuaaJRRIa7DrFCEIw.VN4WeHS1YO5ZuNgc6xve8QH87YxV6RPmVzXstDzsMV6rRAjRdpjy3sAVsAcQIXsHTUICy6hy6S0NLVrFSUkdP9t+76vgiWLbqBzkHp2oQ06PmKZx4uJBd7pJRhPHXvfAb3gGRylMmWyydQpwPuJN66UgEiag33XxxxdgDTbwnL3rhIc1ZY2EceK1FN6w+r+bsS.qyu720Qh4h7t38lEconSjNGNbbdXsVxyyIOOG8yo90IlEmgsZ1jlsZMeCWL6NqhESnJNL0Zr9AjKDLcvPxOXermL.YXHAe4efvu9eifu7qPc0qhHJBqTB5fmT+5dFHWvcTKN9whTd7QL5+m+Fwey+fhsdL17LjMai02Gy3QXMYm94lmOxt8v+S9TZ90+UZ9G+S3u5JUh04tHp2HT+9zyJY.doYQA6dNmm5MxzhnTJhZzfhYKnVwrXwLHMknnnEVjI2mAb3vwuMHtvv1mjw1CSYTRAkFC9RIJoDojp5GG08KZmqX2h8tJDfRJHxWQSeIM78HPIemNbZkHdRjBA9JEMB8orUCVa41TTpINcMFOIsx8cSS3fAi4w6cL+xiOfe3W2gCNZD44kW3lL4hvZqtlyv.etwF83la1iFge7HXWZZB6t6d7nG8vYBEY3K+xuh+5e8uxctycX80WGeeeFMZDYY4LYxXt+8u+7xYQ61UNQ6y9rOiqcsqw0u904ZWqpd0YsVt28tG6t6tLc5TFMZDSlLgNc57RKXW0FExatfQUimaw22Cee0K75.TG8gUteqxMb0oEzxKu7LGX0jjjD9ge3tUNqbiMnYyV.U0.uc2cW7884y+7OGsVy28ceKO7gOfiN5n4ta6S9jOg+6+2+uyMtwMAfCN3.9lu4ex8u+84vCOj81aORRhIHvmnnPRRh4G+w6wVas0bmK1nQC9jO4l7W+q+an0F92+2+ar6t6RPP.qt5Zn0FVe8DZzHh81aO9a+s+e4wOdq4wxouu2L2rYv22mtc6xst0mx+1+1ek1sayAGb.Zsl0VaMLFC6s2dr2d6wt6tKGd3Azu+.hhh3y+7Om6bmeOe4W9kjllv29seKFS0qcFig+1e6+W1ZqsPHDzrYSVas0HKKms1ZKN5ni33iOlff.1ZqGMy0eB1e+84e7O9uXvfgzoSGt0s9T95u9qoc61r2d6wCdvux2+8eOMa1j+G+O9+hd85wN6rCfkqcsqSRRL+y+4+DgPvW+0eMqt5ZyJmKGyVasEJkhae6OijjD9O+O+OYu81c9lLqrrDgPPTTCLFCSmNgkWtG+w+3ef6bm6vMu4Mw2eoW1+ozkBJmlxnGtGGe2eg8+u9GL7mtOwGb.4mLBcVFlxxJGcZAARjBY02MdXhKPOMESQIBDnT9HDJJSKPmUP7AGQ9nwn7hvjUx9+u9VxiGS5ngz8lWid+9aSyUWGiNGgT.g9u0qwc5hx++Yu2yujaqyr98GxoJWc04.yAYIK6wy348cstyb+v7e9cMg0LdrsrLoEChgNmpb.ERGbte.A1jVARIRptkp8ZUjMa1cAb.PAbNO6m8dS3noHEBzrsP2x7ix18hHyYaRIMJN6YkVFnrvB9WfE3RIVPX2kHbQBNJ7B7KKX73wkEnrXxCusVx4GZ7lYN2kcxgJrTyOFjY9sgOlDodU3bxBr.KvOMnnCjihh9dazBHifCKaabccy53zKp9LoDDhbUxIPDGiX5TTO+bTGOALLQaoUv9d2Gm6+IXr1ZnUq1qHDSW+6krNE30TQ0aVrkzf.hGN.+m7T7+xufnW9hrbSqVcjwQjJhe8XoQQAEMMTqTCys2A66dWru0swZi0Q01dQ10Iy5.ToPfLQj0Inll+fWX46chuTTdmRYn2jztBqp111FKKqWkGLQQkyUXQN1s.KvB7KMTbWRMUEjREj.oRIoBPgB0LKyItCTdMY2oT96ZYngigF1ZJnqpf5Ovbg6GBJHUTUSAzf7+nDhTOBaIHJJgv3XNu+X7bMILNl8NoOppS.JEu86711xTmUZWiUaWuT0eWkQw5JmNcJGczgb3gGw3wiw00k1sawZqsFqrxxzrYlEVlllR0pUKyfrh0iZaawxKuLqs15k4cWlS3DSylMoRkJXa6PRRBGe7wrzRKwN6ry6r0CpnTjyYp413d174JT6+aa1iU3P.JJEpda.6u+ADFFfttNddtznQ1X3vCOnbtCMZjoxs986wyd1WikkEMa1.gPvt6tKGbvAjllhu+bFNbHwwwr4lalaikgb7wGyyd1yJIIKijPCzzTINNh986wSe5SKIjKHHfm+7mSud8XokVFgHg+3e7OR+984t28trxJqBjYUnBgftc6x96uOGd3gToRkbUr4WpzLSSKlLYBZZpr0VaVZ8lYmCsINNlCO7.N7vCoWuL65LJJhzzT1au8vxxls1ZKlMaFO8oOgjDA27l2FgHgG9vGxImbBW+5WmFMZjSJVbtRFSQMWItQQwLXPe52e.GbPVFHNd7XbbbQJyTRWkJdr6t6xKdwK3fCNf1saWZakGe7QjjjfiiCiFMhG9vGfhhJarwlXZZwnQi3vCOjm7jGittAUpTAeeedzi9JN+7yYiM1njrPoLk1sWBccibKCUx96ueIgi0pcEgvNoDYpjj4gDNdBi26T5829Z58fGy4O3AL4nCINXZ1b9Iibtr4ZqQgktlJSIUHHb7XBFNhJAEwMfBh3DB5ODoTPr+TjjhUsJnnpxfm9LBF1GMOSraVmYmdNJJpDNYB51FTci0wpQMT0UyHv68x3MaLmLOjfQiIXvDBGNAQbB5VlX34fYMOrp5gQUWzL+.euZoDRkHBBYdugfhBtK0DCuEq0XAVfKiXAgcKvaEJlj7ECR2KK3aRMbWlQQmRULg0hfC9aBuo0Z99Z6+whH0ED1s.KvB7cgBKMNNJBwaQiLTPvgoUVGFq8l26TIqvdBQJhgCH4jSH93iIMJB8MuFl26Sv9t2Cq0WGUOuW+duui2i8a5dxwCGxr+xWh+e9OS3ydJjDi0ctOnnP3SdDo9yfKj8GJZZnX6h9Jqgyu9yw6W+4Xs5xnZai5BhZxBg9vPRCBH02GzTQudCztBSl4ap.+RK51wAQZJwQQjjO+fhOOrPgcKvBr.+RANFprdMSlF4vfYwLMHA+HAwBABorzFAUTTPSQAUUkL02onfpRNQIEJrSKKG6z0x9YuLcqTUkLBEMzTw1xfvnXp3jor5r9O5G150TTxr1MaaSZ2nBsp6hgwU+R9TzPyCGNjCN3.N8zSHMMSIVYDjDl2zWR.kRqfb1rB22QjqRI6Rh5rssKmGXTTDiFMBeeepToBZZZ77m+0XXnSylMod82UBQJtdK6ZTEEU.4qsl92tqGUPUUinnXN+7y4fCNjiN5PzzzIJJhM1XCVd4rriKyFEmR61swzLKi5GOdB850ESSKFNbHpppDDDP0pU4V251DFFwe5O8GIJJJ2hKmxwGeLSlLAoLkUVYEVZokX3vg4V2sjd85lmifGRbbL28tYYp2SdxSX73wb6aeKRRD7jm7DTUUYyM2jO8S+TZznAJJja0nwXYYyJqrB6ryN.vKdwKQQQkadyahttFGd3gLe9bN+7yw22myO+bz00od854jF1O+7UUVd4UnQiFDDDxt69R52uGymOmoSmvd6sGIIILd7XjxTN5niHJJh6e+6y8u+mfhRlhBmMaFSlLlffvx7KTHR4wO9Q4pTzjVsZQPPHiGOh82eeLMM4vC2mwiGQiFMKsoxzTY498xKuLiGmYcnZZZLa1z7b2ymwiGyYmcNllF4e+vbaM0j6cu6ikkIewW7EDFFx1auM0pUinnXhhhJssy6bm69Nds4OcPlJQDmvry5S2u7Iz8u9X59fuhI6uOACGPR3bPpfphIJJpnpjQTW9uLhzDRQPT7L76cFVmUipSWmj33L6xLJhIGbDnIQPD50rvY0ljJjL6riIb7DVdsOEqp0Yzt6Ruu9oLY+CwtQS14e8egV21B8JVnY9dZMXxLa7zu6.N+O+HlbvwD6GloJPUULp3f6pKQssVil2dazZ+Al3UY1ZqhFOkge8dfhB51VX38gIhbVfEXA9wgq9yd6JHJ785Nc57sZGBeHKNyaR9Sg+mGFFVRhz2DJHf4pFJ5LMKKK777JCT4BhG+gsXnuaq05aBEaqkVZIVd4koVsZ+j523eLU+3BB6VfE38Ct3mmdeRj+OUPJkjDGSb9Bs91fhhBJpEcorN555n9l46UoRrRP36S74mS74cIMH.EuJXbm6i8u9Wi4lahQ854sk+6mieoQwHlMiv82G+G7.h1eWTrrQqYKzpWmTeejQQHiBQlJJ2tJlVn2tCl6bMbtycw95WC8Z0+kWt0klRZRBxnHRCCHMHjznHR8miX5DDSmlQ1olNFsZidyFnUuFZdUPywAkqnGuJ9LbVl53RpPTRVWbTDwwwkV38Br.KvB7KA3YpwNMbPSUggySXfeBCChYVnf4wBhRRIJIEQth7UHeMpRIBYQgcknfDCMErzTQW8xEYcvqHbTSEL.L00PHRIJJgnvXRhSxaXi2s2W07LQxywl5UcnpmM5ZW8eFRlBqNic2MKmwN8zSJyitnnH50qG6u+9LYxDz00oa2t7rm8L1au8X3vgDEEAjIvjnnPlLIKu5BBxxStiN5HBCCyedqLO265QbbB6ryNTudcbbbdmW6dYzK9NQR2qiKtL5rotpVVGi33HlMaJppZkVqcV9PKPHRKsZ6zTIgggk0.oVs5byadKhiiY2ceI850iwiGyvgC44O+EjlJXqs1h0Wec1byMoa2t73G+XRRhY3vgXX3yrYyJsmSgHAMsricEVboscFI.Y1QZBVVl4DWNBUUU777v00kqe8qC.ylkEILW6ZWCUUElLYBBQFwqRoj4ymiooYVi9Emk+aRojZ0pwJqrJas0VLd7XN4jiyrZegfnnXlLYJBQVVYaXnWteIkRzzToVsZHDBpUqFddUnVsZkpyrPokmd5or4lahiiKBQZt0cJHLLfISlRTTLMZzfNcVlJUpxrYSyILbZYc178mitt1qcNJ67S.RYZYtFVXUmas0V355x96uO999rxJqF2ltcG...H.jDQAQUZGnCGNf81aOlOedlkQdEAIyCX5o8n2W8bN9O7Ez8u9ULYu8Hb5nLUxIUPUU+UWiC.4M+cFW7nnnk2TiYtvA.ZF5n65PxLeleRWjJBPHQQSi34gjFkPZbLp553rTGLLcXvW+Bl2e.wylABH1eNhnPTB.HylJU9QN+aQbLwS7w+zdLd+iX9o8Qy1BEUUDwwvDI9zEcaSpt8pjlHPDDRRPDIAgYj544flUVlomFmPr+bRSDYclBjcCh7iOJ55XVwAUSCPBowwDMcNxjDPAT00Q2whj4g3edVtZFO0mHWah8CHMNFYZJpF5X34hVdydHhSHd1bjoonYXfpodlZ.yUOnHNFoHEEcML8bQ0z.EEHMVPh+bDwYpWUAEn34QoonpqiYUWTMLxbLsnXhl5SZTBJpJnYYhYUOz9YfJwWfE3GBtZVgiq3v00ks2d67I672GhwEEm4GBoPuM3UVqP1D8lNMKDc61sKCGN7JIobeWnfrtNc5vMtwMx80cWzzz9Aq9q27bzayOegUWk4G66v0u90wyy6JeA2+tvOmGaKvB7SAJtOB.555W4sKuhwSx2S90gxqxczBk0o75uQYD9DFlQVW+9DdzwjLZHJttn0rEt+leCt+peE50a7dkrN.DylQvKeI9+s+FQO4wjljf2u+eFMuJDt+9Dc3gHlMEYZRoWeonphhaEL19ZXe66f4lagdyVnX9ymrl4sEowYDdlze.QmdJwmeFI85QR2djz6bRmMEYTLJ55nVsJFquAN2+dXesaf45qgd0p+TOD9QAcc8LB6RSY974kJIPOeNhZuI4zKvBr.KvOSQUSctcaOVqhMySRYVTBiCELJHlQgILbdL87iYbPB9gBBiEDKRIVHHIMqnkZZfPpiglBlZJ79xcy9PhnXACl3SuASYxDeBmGglgFpZuaYdtllJNNVTqhCUbrw1z3u2MBthgh5U70e8WyW9keIO3AOftc6xlatIMa1fff.d4KeIGd3gXaaimmG862m+7e9OySdxS33iONmzmTBBlyd6sOVV1zsaWrrrv22ujrtpUqx4meFGczwLXv.lNcF27l2jZ0pwFar4G8lsMK1ODnqavRK0gpUqxsu8cHHXN+O+O+ObzQGxW9k+U77bQHDkDMUPrkllJFFlkY9rllFttt344Q61sHNNgFMZhuuOwwwLe9blLYL111ztca1byMYkUVkjjDrrrHLLfwim7Z4r64mmYalc5rBMZTms2dGLLL3e5e52yomdBO6YOC.bbbxs0Qcbbrod85nqqyJqrJJJpzu+P.XkUVI2VOav74yKWqSlUhpko7J0rwkiiK0pUm1sayJqrBlllTsZU.kR6GsndaFFFznQCt28tGGd3A7vG9.78mwu+2+6wzzDKKSrrrvz7UGuRRRv2Oibxhb5ywwgFMZjueJJUZXsZ0nd85XYYQPPP45zJpajooQ42SUUEcccLLLyeYT9ylQjoCsZ0DWWOZ1rEVV1ztcKZ2tMPFQi862GKKKTUuhrVPIDLbBm+EeEG+G9BN8O8mYxgGQZXLRAnpXjs1HkLx3RSEHjwHRCARQAczzrvzrJVUqgSqkvoUarpUCYZJUWeM7O4bB6NFQbHDqPpeJCezK.UULqTCyZUn5lqRZRBCd7yIZ7XZbqaR0s1DCGaRSDDO0mzXibKp7G98NkRIwyCYxImyrS6hHJFqV0nwcuNl0pPxr4DMdJgCmPZj.oLEQPHyNqGyNtGSO5bzLzows1FmNMPUUivISY7tGSzjYnlSllTHPJRAgDyFUn1M1D6FUQI+38nWdHQCmfhlBVspSiarYYF1kJRIZxLjoBlr+oDzeLoQQXTyi52XKraVCEffAiYzKODQPDVspicyZX2pNoIIL6nyIn+PRBhvnhKMtwVX2pNpZpDNYFi28XBGLNylSUUPMm7sznDrZTgl2darZTiTQJy6MjgOYWBGMAMCSbWoEMuyN3X03G+0eKvBbEDKHr6m.Tudc9rO6ynd85euD18gn.MuIgciGOlCO7PN4jSJkt+6qs6aZ8SuuvaywlhB+lMoPGVc0U4t28tr5pqhmmG555kVR4Ojs86pUUVTXZGGGVZokJ2O94dQ3deammKvB7KQDGGyrYyXvfAb5omx74ywvv.aaabbbnZ0pkc+qtt9UBE4Tj8nYcd62cySnlacfWbwuW79JxzTjwwjLdLQGeLAu3EDt+dH7mi9Jqf40tA123lXt5pYpW6808cyIJLY3.BdwyI93iACCLZ2Fqs2AYZJhG7.RN6DjgAPgUdoqmYElcVEqacaru0svrSazbce+recUBRIhoSv+YOmnc2i3SNl3yNEQutHFzmjgCxO1kBpZnXYS7oGiX1LDilfveFlqsJF0ajk6eWAelphhRdwhrJyBlvvvxFNpnnX+be9BKvBr.KfolJcbMoksjDojHQJ9woLITvjvXFDDSW+XFLOgwAILMLlYQBlFlvrPAIBIZpPEKcpYoimoF5WhYrKMURbhfwyB3rdS379Sv2OyBG0Ld2aVCMMU7bLopqMtNYOS4pvbB+1PgS.cxImvidzi4IO4IzueehhBKa3q4ymWN22riWRN8zS4oO8Ir+96yzoSIMUfppFAAgr+96UpXqpUqRRRRohvDhDFLX.c61kff.50qGO7gODOOObbbKa52OdOOVVFeFdddk0yX3vg7+9+9+x4meN6u+dznQCDhzbKUUVVeiuoZJoqqikkU9ZFhwxxDMMsbE6koHOCCiR2Ix11Fc8r4gHDouVjdnplovtBWLpUq1r4lagooI+C+Cg7xW9RN5nCoe+9bzQGk6XSoXXXhooEllF33jcL0yyCPhqqath7rJcZfBnn7JqFsnlVEYAriiCAAAXXXRZZ5q076ppJnooR8504d269XXXvd6sGu7k6RqVswyyijDQ4mWx9cxHGLMUlqFOMpVsFUpTgUVYU1XiMX5zInpphTJwvv.SSyWacJuptdpYwGVZJoooHDokJO7UiKkbBF0wzzBKKarssv11hzTAVV1kYxnssedlBpckXZuhvXhlLigu3.N6u7H59kOhIGbHQ9iQEiLx5TxNdKQhTlhjTTT0vvxCMKKrrqhUkFX0rN1sZhyRMo5VqQk0WAPR7u51X2tIIylSr+bL77PDGS3fofBXVsF1MpiHHjnoSQDFglkMU2ZCbZ1jIGcBAiFggmKNK0fJF5+vyTtbUuIBiXd+gDNcVVd0UuB01ZUL7bv+rAHEBRSDnnqQ7r.RlGR+m7Rl7xiX1IcQyvf34A3tbKzsMIYdHSO7ThFOqXCk8483DDyivtcczrsPLOfnw9L+79L8fSHb3DjBA1KkYKsIgwL4fS.oD+sVFsIVL5Y6SP+Qnnph4jrZTFNnFJpJLu2PF7nmSZbBU1b0LE6IkkuOyN9bBGNAyptnnpPx7PTzUIZ7TldvIDza.hfXjHyHZTAjQBbWtUFweBAy6NhoGdJCe1ADNbbF40qtDJFZHkoXVqB5V+xqoVWfeYiED18S.5zoC+K+K+KLc5zu0PG9CoUm8lu2999zqWO51sa4jSKrKg2Waq2WimKNYluuEeTLYUc8LqOnQiFr5pqR850KmL1OVKw7M+52l8GMMsxIUVLoquqsy6yqCtXd+cUCWE2mWfE38E788Yu81i+5e8ux+4+4+IGd3gkcJ5latI25V2hO6y9L1ZqsvyyCyK4pzpLiKSRPju30uqOiqj2grFFFeipaVJkHiiIpaWl9E+EBe1SIoaWzpVE669qw892GikZ+9krNfzjDDSlPzYmQ3yeNoymi6u6eDi1sQwvfn81ijiODwv9Hiid03wzNirtadab+UeJN27ln4U48190UFHyrylny5xj+8+cB9p+FoiGQp+LjgAY1HZRzEx8OEjQADGEP53wjb39Ddvd37I+Jp7q+LLWY0L6q4pP0Kt.JtdtnHZE4baPP.dwwjlmYiKvBr.KvO2ghBnhBJZflTASUUr0kT0TmXOcBSrXdbJAIRBRDLMVv3fX54GwIShYRTLhTIsbLYkJ1T2xDiKw2+LNQvjYy47AS3vS6yY8FQXTbdrMoT1fsusPWSEGKSp5ZgmsIVlZncIlvxuOTPV2yd1y3gO7Ar+96issMZZ5LXv.zzznVs5rzRKQ61sINNl81aON8zSY3vQDFFPVdwZfppBggAr+96iPjofqVsZQqVsPJk4D00iyN6LBBBnSmkv11l+xe4uPRRBqs15ztc6xli6iAJlu7EqoQ850JiwDe+YLYxDLLLPQQoTQXWrYeDBQoa+TnXuzzWkStYecJZZpky0HyNIiHLL7BuhHMMMmLIKDhTbbb4F23lr81aiTlhscViIqoogiiCc5zgm8rVLb3.dwKdA86Ofs1ZqRBBSRDkVAYF4bfPjjSpUQiUKgBRbjWb+N6m4MeULNKdIDI4ecViye+6e+RRAO4jS4+9+9+tT0bFFF4uOo4G+jXamQtomWEVe8M31291r95qSsZ0X2c2EoTRXXP44jrOuJK2OzzxpqVPPH.DFFUZklSmNk33HLLzKIFrfTzh8CgH40FeEmeDhh0O8Q4RweTHZ5LF7zc47+zeid+kuho6cHoQBTUrPSUGExIGUlhHMDIonpnioSMprwZTcq0n5VaPk0WA2NswrQULbrwnpG1MqBRItcZQz3oDOaNQSlQz3YL8nyX3SdIIAAX0nIpJZz6gOEQRDdquBdqsLK8qtGxXAG7+2+EwA9z7N2fk9z6hUipXUy6G9fVJysDyYHSSwayUvoUczcsINHB+y6She.l0qhgmCy6MB+y6xY+uOfo6eLhvXTzzX5wmfYMOrpUCMaKjJYpSKdpOxDAZVFHBhHn6PBGNFyl0w+ztL7I6RPuLUqJBiHZzXzOxgjvPhCC37u3KQ0z.2UagY0pL8nyPDDhyxsPJRyy3NP0xfnISX7K1GUMcLqUAyJUPAHNHhvAiIn2PlczonYZgloAAClfhZVjQDMZJwyBHdlOhvnW4wuJpftJ98Gge+gb9W7U3evYHhRHwOj3oSw+3yPjFSRvbZeuahdmV+3uXbAVfqPXAgc+D.OOOt90udYmO8sQHyGqN2JJJJOjcmvnQiHJJprK09wPRx2DYc+XGSudmJ88+dUz8WlllkpPwJuvWer6T8Kdr7c0RM+Pse7gD+bHesVfE3mZTrXzrLk347EewWv+0+0+E6t6tnooURX2omdJQQQ366yN6rCsZ0pjbqKiPJkHJrBy2BkNqlmyWeqiIoLqKEmOGQ+djNYBJ55n0dIru90wdmcPqRE380wibhlDy7I5zyHoeOPSCikVB6adSTLLI3oOkvm80jzuKxv4YKPQUEEMCzZzBqaeGb9jOAqc1NifuKomq9ff7NOMY5LhO+b7e3CH3u8Phd1SPFGBhrhGUlKCu4udbDoymkQrWbBpllXs95nUuAZVVWIyzNEEEzTUwxxprHYQ4E+oXtLKdl5Br.KvO2gBE8bgBEdesAJXqCRoJRxDqtHMK25BRDLITvf4wrV0HFGlPjHkJlFrQUaZ3niwkXBqBhh4z9iYui6wAG2mt8FSRRF4IJ+.lVfllFUbyxtNaKcLzTup0CK.ENSSLCFzmm8rmwSe5SxmqaHUqVknnX50qGme94TsZMLMMKUW1jISX5zoDEElqzpWozLgPvzoSYxjwkDQopphuuOGbvAb3gGRPPHlllTudCLMMoWudb3gGwSe5SnVsZr81aS850+HcjPojrsYylQ2tcY+8OfoSm..UqViNc5PqVMILLK21N3fCna2t355huuOQQQkD5A+8SsJKqDyT5esZUYkUVAoTxvgC4Eu34Lb3PN4jSXxjwnploRsBkFVXil9994pXSiffLRRyxus4kjqkYuk5kDHVrsSSk.oYy6Ck78uuo5U7scg7qHm6U478E6cKkRhOCBBX73wLYxXhiiIJJKa4pVsJc5zgzzTBBBXzngLd7XLMMnYyVDEkk21iGOBe+Y4WaInLX0xRSSJ789hwfhhJ55YNhRkJUX1rYb7wGSZpfACFPud8xIpT8BuGu43h2X7854Y9kYTjIaSO5LN+u9X59kOho6eHQyl.JfVgx5PgTo.oT.JfgoKNM6Pss1fF28Fz3FaSscVGuUWB610Q2wAUM0r7LWK64B1MpiHJK62hmMmnoywdolnfBA8FhpsIwSmg+Y8.EI0u0V3zrEwSlh+48Y79GPZZBU2YCjBAhvvbkhcAqI9ssQ8I+yXoRDQYpQyvyAyZUPyxjjvXDgwD6OGEcMDwQjFGyzCOgw6c.gCFiU0pnnpPX+gDMZBQ0lgc6l3t5RnaYgXdHR.caaPQEEcMREoHBBHZ7D5+3mQz3I3s9pnoafhtNRQJA8GQ33w3e14na6Pz3oXX6floAZFF3rTS.Hb+SIIJBy5djFkjkCcBY9w2YjlDiHJ6kTjlYsoIo4j0oBpJkVfoItYGUTUQJR.TPU2.cSSjIBBGLh9+smv7y6SkUWGcGKDAAHhiI37A3eVeZbis9vbQ5Br.WhwUuJZ7y.njW3wuOhS9X8.3BO8NyKyaWZg.uuTD2E+62G3c48rXBnEYezEsKiepIr6h+8Br.KvB7MAgPv74y47yOmm7jmvSe5SoWudLc5z7t0Lagm862mtc6xImbB+q+q+qnqqSsZ0vxx5m5gv2HJrByK1MpemVhopJF55uVAG9F+4z0QshG5KuJZMpg016f4FafVsZn9dL2QJsfyQCI3ku.wnw3bm6fd85n2nEgGtO9+k+Lge0CIc53xJinnYfZkpXr4N3969Goxu9WiQqVWIUE1OJHkjljPzImv3+y+C7+y+IhOZejg9YAHew0BeWySRHPFNGQutDexIDe94XzoCpMZdkjvN.T0zvzxByvrtvNUHH8GnS.r.KvBr.+bBYb3oTVZbUMPWpfgpB15ZT2VmUpXQTRJoRPWUgJVZ3Xngg1k2mu5GDxdG2ku9kGyt6eJC5OAzTP2z3cVccRoDccUpU0l5UcwzP+JaCTljDyjIS3fCNj+xe4K3wO9wjlJnYyl333fuuO862mACFxCe3C4zSOkSO8DpToRtRlTJy.1KZ65J4VrtllFooB50qG85koptiO9XBBBvwwgZ0pgqqKVV141UsQoR6777nVsZeTNtVnNv33XN93i43iOlyO+7xZZb26dW98+9+YpWuVtEO9Bd7ieDSmNkJUpTpFvlMaTlcZuxohJ1+UPSSGWWu7wdC52uGGbv970e8Sv00iYylQudcYiM1jUVYY77pfiiMmc1Y7G9C+AdvCd.BQBc5rDe5m9Y.J7fG7W4zSOEgPfqqKKu7xkMTXlxGAUUkRx0TTdUMZJxotB6j7U+6WY2jppZ4uTQU8h1eoJEDooplc9NIIgnnH1e+83e+e+emW9xWPTTLlllzoyRr7xqvJqrJmc1YLd7HFMJirxUWMy5KUTT3vCOfiO9H1c2WxMu4s3y+7eCQQQnppfkkE55F46qEimLa3zxxDCiFryN6vd6sK+s+1C4wO9Qk1iYZZZdL4nhPHKOOUb73Umyd0X7hVs4k4OeKBBY5Ico+idAm8G9qz+qdBgSGmYMhnihZFYcRoHKq5T.cCapt1lr5+7uiN+56RsqsAtqzByJtnaailkAJugsiJgrlhzPCMaSLq3hcKANspSk0WloGbBC95cIbzHjIBT00QWykvdS47+zCIbxHPWgZ2XaZc6aQkUWizHAACGgtqC51VnY7CyAxTUzPIEDAQjFkfptNFt1n6Zw7A8Y3KeAI4y6OZ7DRhBvrtGMt0MPyxB+iOiX+.T0zwv1lZasF5t1X55PZRB1MqiHIAyZdnfBFddjLuOAiGfHH.i5tTYkkyVekHkTojnQyPQpgBpnnpgY8Jzv9ZnYoiyRsH1eNQilhZjAdqsbVViGDiHHBjP7TeRlGlcdTWCypdX0JKm4zMyyhPMUL7bwtccTT0HZxLRBCQJDnnphtkUFIldtL6jyv+7yH1eNdazAuUWgvISHMJAEMEjIR3cKEiVfE3mE3pYEMthiKaSbtHzasssAd+o.qKSiwKC3x1wien1A5O03p598Br.+PPRRBiGOliO9XdxSdBO+4OuTIzvqTH874yY1rYjllxRKsDtttryN6boUkcxzThu.gceeJrSQQAcCiu874SQAECCzpUCqs1Fi1cPucaLWcULZ0B02WDWVnrtoyHtWWhN9XDiFihtFlarAplVDc1oD7zmP7tu.wftHSEY6eZ5nVsNV6bcb9UeBt24tXswFnXX7KKx5.RCiHd3.B28kL+A+UBe5iIcxvrLQ3sAE16bbLhIiQzsKIm2kjACQy0CUqr7KAoL6XuhxUBRQKZnqhO2lYWTYJQsn.NKvBr.KvuTQI8BulB7TvTCbMzntUtZTx+4TKH36R7s9CiR3r9S33tiX3nYDDDhsmMZZua2uuP0TF5ZztQEZ2nB1le2M4zkYjjjvzoyX73QLYxDhiiwyy6B1LXlKS.JLc5DN5niHJJjJUpfllFymGTNW4WKyiym+PPP.mc14LXvPN93iYvfADDDVlOzY4mVBVVRZ2tcIISCFLfoSmVlyaensqZaaaVc0UXvfsPJSw2OSwZlllbm6ba1YmqkawiYDyEEEwYmcNwwIkMj8RK0gs1ZKZ0pE555r5pqhqaVlyoppxpqtJlllr5pqR0p0PSSiyN6TBBly4meFJJJ4qq3Zb8qecVe80wyyiacqakebIhISFiTlR0pUJssQeeelOeddF2Ug0Va87sQUBBLX4kWNSQnUpfppJc5rDfBttdHkozoSGpVsJsZ0BMM87lL2jpUqQRRBqrxJDEEQqVsoRkpkNpzpqloPPWWGhiqwst0sINNlZ0pgTBggYYDYQypu81aypqtJsZ0Fccc1d6sY97fxbD9F23FTqVMRRhoe+9DFFxrYyHIIFaaa1XiMnYyVrxJKS85MvvvDaaGVas0IJJhFMZfllNe1m8o344xomdV40p111XZZxZqsFsZ0BgPvN6rC111k4G3xKuLAAATudi7b9ixweFoxW9ZNSYpjTQJAilvvmuG8ezSYvydNy5dRVlsQForJPlMmpHQyvDSup3sxZrzu5tr9+2eKs+jahamVXTwIivxuEUtkSkY18MMxJwstThYUWbZWGq5UJy5sznXRlGRre.I9yY5QmBpoz31WmpqsJoIoL4vSPDEhYMOpuyl31oMJpNn8VNO7hFLQ0v.iJNDO0G+S5gvOJSMkJJY6KgwDzeDhnPL7byHlV2.MaaLp5htkMwSqfhpFp5ZnW0AqlUQ2wg3oyIMQf0RMxbYlnXDwInpqgDIJpJnXnmQtWsLKrTlq3OcG6r8i7GVpYYhQEWLbcwtYUTzTQ0x.MoDSOGjIVXUsJQxoY6yQiHNJDEEYlMcllhlkYF4qoYMkolhApF5XUuJZVlnYaPRPHjlhhlV12qnNEoonnphloI5UbvrlWl08ZDihlZ196kXqsdAVfOTXAgcKveGtpNw9etg2zRQ+PjkceLvU086EXAtLfvvP51sK6s2d70e8Wy96uO999k++EelX974bxImfqqa4B3pVsJUpT4amjqeBQpTRRb7aj2Ce6P8Mxvt+t+eMMvwAyUWEMO2rtmz1BUKGTcceuseKSSIMLj3tmyzu7KQLbHZUpfdmkQuVch5dNS9O9OH7geIICGTtnREMcTb7vXisv8+y+W797OGyUWFECieYYEl4P3Okfm+Bl+nGQ7A6mQVW7aIYcWDoBRCmiX7HhO+TR52CyNsIMwlzvrEEhpZV1EZZdoewdYci8qbCfhNBuvNqJbMfEXAVfEXAdcbQE3cwu4k46XVjgWylGxr4gjjSzQQil7tstmLqEzvPmUZWi0VpN1Vu+bVfOln33x749Hkx+NqJ7zSOkjDAas0VrxJqvAGb.CGNfSO8TN5niJsYwrmYxETT1qxlstc6RTTVwymMaFVVVrwFqgqaFofQQQLc5TRSErwFqyRK0AEEE5zYYhhhX73wTud8O3D1UqVMt+8+DZ2dI506SHLL.cccpToRY960pUKTU0vzzhFMZx5quAiGmYektttztcKZ1rEMZz.EEEZznIFFFTsZURSS4y+7Om4yCv00MmrRS1byMnUqVLZzvR0sonnP61sYqs1BaaG9W+W++kyNK6X974yw11lNc5v0t10HMMKK152uOJJPylM45W+F46qpDEEQkJUPQQklMahhhRIwS0qWOWsnYJiy00AEEUBCCQSSCOOOjRIUpjQNXV9x4gqqK5554J7SRqVswyqB+a+a+ajllx0t10HIIge+u+2yMu4MQUUilMav1auMMa1BCCcZ2tEVVl366SylMnYylzrYKBCiXs0VkgCGhPHnYyVr4lagiiCUp3QbbBtttTqVMbbbPSSie2u62gPHXkUVACCCpWuF2912g82eehiioUqV333fhhBddtrzRcPJSoRkpnqqSmNcPWWmO4S9UHDITudi7FrWRsZ0nd8FnqqS0pU+fdM3ODjJRIwOjYmzitO3Ib9CeDy5cDwwyPSwFMUSxxrtDRRCQS2.mFKQyacCV8+y+.K8Y2g5WeCbZ2DMaSTKZfg2g4.qnn.ZpnYYf2JsPy5Svc0kvaiNz+wufgO9YDMZBlUqRkMVkk9r6hpoAcevWw7yOmnYSwa8UYm+s+eP2wpzxHeK23YQzlsEtKuDACFS2G7TjwIDLbDl0pP3nIHBhQIUKKq9VekLR77SQDFQ3voHrhxZluptX3Zgc8JnpofLUj0PnjhhhDTAoRVNOlJhQQSA6FsHMNAMUib08EiptNlMphUipfgJoHx+cRQQK2VZKIEUhTJHMJIq+GyOGDO0mvYSXV2SIUlfcylXX6hpz.MciL0BpBRWIF4MspptZFAh5JHSydvrjr0UKRSQ0vfJqsNI9gHiSY9Y8X148QyvfZ2XCbWoMZVluSWCt.KvOGvBB6VfE3RNVTbtEXA93hKC4BPQVKLc5TN3fCX2c2kSO8TFMZzeWAbjxrfZONNNOaK1mCO7PlLYRoxbtrAoTRbtxIIMc.G...B.IQTPTg99rDyBaewPWGc8uE6HovtXz0QuRkhew2esUetx5RmOmjQCI5ryHoWejwwXr95nWuFowwjb9YD8hmS7QGjY8HZpnnnipaUzWeSru28w4W8qv95WGMOuK8DH89FRg.YbLQm0k4O5qH3wOBQ+tHiB+ts+x2DEmW0zQwzBLMAUURSRHYVlsZlLZLRQJptNnWwCMU0K8GuecqOJSgcE4YmssMFuGs00EXAVfEn.u4yeupt1Ckx+3xODooDmHXVPHimFvz4gHxy51eHPJyrQYCMUVtYMVocMrLu59LirF0xjJUpPmNcHJJhiO9XBCiHNNojLJKKK77bY1roLe9bBCyrCSU0BKS7B1lmTV1.X.LaVVCvkllhkkIMa1BOOWFMZLIIIjkcbBlLYJMZzj0VaMVasUwww4i1wAaaaVas0nQiFkp5RQQAaaaZznI111kisriEdzpUKlOeNoooXZZR0pUKsFSHiDP07LyUJkrwFahPHJaXnh76KKC7lC7pHTIifpJ44cWMZ2tM0qWm4ymm2rf0nUqVkNmQFomoTohGqt5Z344gPHPHD4D1oTZ28Et8TQCJYaaSZZJZ41eXQ12oqqiTJKItqv5S0yWmv5qud4wNaaat28tG.355RbbL28t2iYylA.dddr7xKWpdSWWWbccIHH.oThiiCsZ0BPgZ0pxrYSILLBaaaVZo1XYY+Z6GEMWXgR8JNujYKoMoc61znQCDBAMZz30FiEmOpVsVopFUTTX80WCoTl2zhZ4ikTpVs5qQz4kIHiiIZ7Dld3YL3IufI6d.w99fTlYWhJpHIkBeNzvoB0u90nyu8SY0+oOil2ZGLq4g1OxlNHizNML7byr1RGaT0UIMNlYGdLIAAX2nAldUPDFS3nwLYuCIneeTM0yWaRgQLyqhrv2tMN51l3rTcb51.cGaBlOj4m1m3YYYatptNtcZiYsJT6ZqiHNgzvDB5MLK9EDoX0nBFdtXT0A6V0wHuQTMq5hLUhtqS1OWsJHBiP20FGYcZd6aPx7PzrsxxftnXTMMvtYMjxTpcsMQllhcy5X34fltVFwjVFX3YicqFj3OGcW6bqoTCUCCTLMACPnDQZRLZVlnZZfttC5lVn4XgtiIFdNY6241+oPjfhtZYyGpnkq.boD6VMn88uCQi8Q0Pm34gYMeaEWbWtMtqzBc6ED1s.+xCKHraAVfEXAVfEHGEAiN7p.p+mBHDBBCCoWud7rm8LdwKdASmN86saqSRRv22mYylQXXHwwweTrrm2UbwLr6sgrthEg+sRX2q9E9f38UkYV23QDr6dDe1YnZaiVqlXsxpnXZR7omP3dGfz2GHWUzp5ftJ5cVF2e6uC2eyuA6M2.MOuLUe8KLHiiyrBy82k4+0uLyJLmM8cirtbnnoipiG5cVEys2Ai0WGMOORFMlnSNgniOBjf4pqBqrJpV1vkvhZ7cgzzzLa2RWmj7BBAWcKl9Br.KvkOT7L3K9b3eJm+yuTPRRJSmEvfQ9LXxLlNOhTEET00f2U00onjoRhDAFJJzoYEVtUMruBSXmkkEKu7x.fuelKRbxImvomdJllFkpfJNNJmbGmbaDMi3GoTVRfWbbLoookj8ToRkRGaHirKnZ0p355flV1byLMMoUqVHkR95u9YDDDxMtwMXyM2jkWdYpUq1GklnofHGcccbccyGGjqnNyWyEdzzzv00ECCixlgqffxBRu.J2u0zzJIkpnH5EMLjkkUNYbYp9r3+6ht...UpTgs1ZaDBA55ZnqafooIRojUVYEZ2tM.nqqgssSoSBTL2dfx2qh+tX+7M+2EelnnglJ98eSGIpfP0hwRgBzzyyB6UVYkRa6TSSqjzyru1g1s0PHRAxHgyzzDPgVsZSsZ0yIXSEKK6xiIWb+n35J2bhUJ92E6aqs1Zk1Z5EGiEecwZcJdessc.juVd0cww+ks03APRXDyNqGS26Hl9xiHr+HTR0QSUCEzHUJPJSPhDcMKba2gN+1OkU9m9Lpt8pXVyCUi2iiKEPgLBzb6zh52XGRlLmoGcVFQcCFwnW9BhCyHRyY4Nz4S+DZcuaQyquMlUpfpVFQwJuCR2Vyz.qF0n9M1hzDASO3DB5OhjYyQy1D6l0wa8N3txR3rTCDAQnaXvjCNA+S5ghgFU2dCbVtYddu4ftqMxTYVdcKkXV0CYpDMCiLR4LzPJgJarFgCmvrS5R7zYfpJFtN3t7R3tb6LazLQPyauCNK0DEc0Lqwz0AMKSZdmqQx7PT00IXvHT0TwvyAu06fUypn4jolN+i6Q7j4YVZosE10qhtmCZ1VXUuB1sqmY8kF5jFmjS5Yl5GA.QJlUbwakkXdugL9EGP3noX2oIdq1gZasJdK0ZgB6VfeQhe4UsnEXAVfEXAV.dUQpRSSQHDjjjPXXHymOuriHKd8wNK3RRRXxjIbxImTlccEcC52Ft3BsuLWnsxi44pq66J+5JJthttdYwF9nO1jRjQQjLYLICFQpueVl0sxxY1sopBhwiI93SHoeOPUAEKSjgQnnqgV0FXr0N37I2G2acKzazBUyegsnibEJlLZDyexSY9CdHw69RRG2OSIhusPUMmnNWzZ1F8UVEys1Ayqccr2dGzqUmzvPRBCIcxTjIIjXZhpiC5MpgpiyUhrrCHKeKRSINJhHCixb64x7msWfuaTbuuuuL67aCWEt+9Bb0AEyAJLLjoSmRPP.ooonqqWlcRWFa3metfDgfI9ALbxLFN1G+4AjJAMM024GQISSQUUAaaSpUwkFU8nhqM55Wcsb6KRzTbbDggAHDhbxjxx3uYylV1XZUqVkjjrrmqv9J62uG862mgCGRPP.PAASagkkECGNBgPTpTunnXhhhQWWuLCwxxRuoHDILe9bhhhPWW+ilpltHAWpppjlJxmKvqN2dw4GTPJ06x6egB8Jd9TwynLMsv1VMWogokjbcwsollVoRudymMUnTNor3YduNQbee3Gx5ttHwWE3h2CqPEbeanXMGeS3aSYkeS2i7aZ+.nTAdeW3Me+trEqAeuPJQDFQPugL6rdDNbLIQAnpnghhd90aBDownaXgSyNT+lWm1exsn4s1Fml0+QqrtuQn.plFXVuJUVcIhGsIohTF+rCHXvHlObHJ5J3s5xTe6MoxZqhoqGgi7QAUjspiQEGzLzKsGxu2MolJ5Nl31oAJpWCqZUX79GmobMGabVpI01YMbVpYlR1BiyTlmqM5dYVAa0qsNtcZhtsU11VUEYZZohyzLMAoDcGKRSRxyMcUzzMHbxLzL0IXvD.vYoF3tbCzLMxT6lHE6V0vvwNa8q55naZfzRhplFh33L2JQWk3IqhTjRkMWA2UZgUipHBiYbiiIZz3r6GXYhY0JX3ZmkedNVXVwEUMUTMzQl7JaeF0LewTJRQQUIS8espgTHvbzTzrMwc413rTSL7ruZr1sEXAdOiED1s.KvBbkBKxwtE38AJrbxBh5lOeNiGOl986yYmcFBgf50qS61sYkUVgZ0p8QMK3hhhne+9r2d6widzi3Eu3EemD1UrP4hhVTudcbbb9nSz32GJOt+VPVG75YW2OIY8VNQSBeeBO9TRmLAUWOL5zA8lMPFFSvt6RzIGSR2tHm6iVkJHCpSRTWvvDis2Am68IXs0Nn2pMp+BrCAKTnX3Imvz+q+Sl+E+YRF16cirNxUUmaEL1Xab9M+Vruycvb80wncaz7pfhpJogAfDRGMhjISxswzQHl0FUGWTsrtTaMlRorHC3QBHxsN1hhis.WcQghISRRJIK46i7sRqCJuPrlllulRIVfE3GJxxIrDFNbHO+4OuLSu777XiM1fkWdYZ1r4BB69.gDQJS8CY3DeFNwmY9gYedufT9rHD56EYYEl.KKCVpSUVesVTw0Bcsqtj6qnnTRT14meN6s2tLXv.Z2tUNIZwLc5TFOdL.kWmNa1LpVsF25V2FKKSN93ivvvfoSyH1SQQgpUqxm+4eNllV7G+i+QlMaFc5zA.1au8HMMkM1XiRx5rrr3d26d344wgGdTtBrZWlGbenQwyJhiiyILLDgPfggQYVmcQ0zUn3q218sBh5RtfM0mllhppJlllkqiPHDkMz3E+dEq83hpL60euyVmETzzIZKZ7jeNi7qWEQwDLXLgCmPZbTlSZbASPQRJRDn4XSqO4Vrx+3mRiatINs9.QVWNT0zvv0FyZdXTuBn.SO9TBGLDuNcnxlqR8amYGmQSlx4m2GQbBtK0jN+56QssWEkpt4p48sCJJJnYYh6RMwzykJatLoIhLRrLMwzyFUKST0zPwVAukagUMOps8ZfBkJdSQKKG3H2FI0SyZZfh0Gq6Z+5NwgpR1XshKoww.YJ9yrpGJpJTyzHSYdVFYYDXtK0TnfUUcsr0oIkXVwEmkZfTBF1VY4JnoA51Vz7lagHINe6lQLmhVdCloohhd18iTMJrXT3hALaopEUUPUuIc9byLK3TWEMSSLq5tfrtE3WrXAgcKvBr.WYvhhUt.+PQwBdEBAwwwDDDvzoSKeMXv.N6ryJeUPX25quN24N2gs1ZKVZokvyy6C5hLK1OmMaFGd3gr6t6xwGeLCFL3672yvv.OOOVc0U45W+5r0VaQ0pU+9sPxOxPlqrt2lrqCdEgc5+TP7nTRZbLo99jLdLoylks.o50QuUSLZzfnyOmjtmS3KdNhACHcxjLBi.TLsPu0RXcm6h8cuKlK2AM2Od4dxkFHkj56SzomQvieBAO5QDezdHihd6sBSUUTzMPsZCL1XKru28w829aw8V2BiVsPMuqmkBAJlFYcmY35nzsKhQiIc7Hh62GECcLZzDE6qFcp4E638EO+6pOlMaFGbvALXv.hhhJK14218nKt+XQgSa1rIat4lTqVsOx64KvOGQXXH862mm+7mye3O7G3fCNf33XpVsJW6ZWiae6aym7IeBVVVWplGwOWPRhfo9ALbx7LE14GhHQ.jOunx9YQ467wURojTg.GaOt80Vi6di0oQM2rra6iv33CIJr+QSSKbc8xsDvoLdbLBQZYizYYYgllFIIBpVsJqrxJ7+O68d1bbbklstOo2UY4gk.DDzIIRoVpmd5tm64Fy4FSDy+6d9xbhSaGIJ5IHIHgu7lzaueHqLIHkiRhNotVJp.TjExbmtct2606ZsTUUY974nnHSddVU1uIJJhkUMZznAW3BawzoSPSSifffWZblkEymooIMa1jFMZ.Tn.x772c4ccZZJAAALd7XN93iIHvGcccZznABBEjyMYxXRRRPW2.SSypLl60AwwwLe9blMaFylMEeeeRSSqxwtFMZP850IHHfm+7mSbbLqrRgBFGOdLRRRUE1XYVzAuX7Kdd9LYxXxxRwxpFFFlUV74R7qOjmmSVRJIdADNdFQSmSZbD4jeNajrHH3DkjQqdcpu61z7paWoxr2lPPT.IQYTrLvbkVXtdWL5zh7zTTLpgnjJYgI3OXLyO4Dhm4g.xjGmRyq5SVZ1OIa7WTVBQYIjM0QmFeOsOIDqYfRs2PyWTiuys02mESJ.f7KJVGYSczZZ+M+hJ7iHa49gK9GIE4B09U0HVhk3etwx2TtDKwRrDKwu5w4qN04ymS+984fCNfiN5HN5ni3vCOjCN3.FMZTUPiqnnv1auM+g+vefe2u62wW7EeA555uUU2PY6rrh22e+8+AsBSnvlV1Zqs3F23F7u9u9uxm9oeJc5z4cpp.ecP1hJ5ONN90RgckUtq54xZj2IXgx5x77HpWORmOGDEQpVMT51A450QPQgrfPh62i3m+bR5eFoNygrTDTTQpdSTuxUw527av7itNR09Vlnyu1QwpZQ7nQ37O96392+ajz+TxihHOK8G92eAJIqSamcw328uh4MtA56rCJsaWD94keOQQD0zPoUKD00QzzB+GbeRlMGN7PHMEAUMTzzJlG3GnKBc9hya+TVTfk3CWLXv.9u+u+u4d26dLa1Lhhh9d6WqbAOUUUw11lO4S9D9O+O+OqV33kXI94f4ymyidzi3O+m+y7m9S+Id5SeJYYYXYYwFarA+g+vef1saSmNcVppy2BHIsfvtwybX5LWbcJTuTo5IDWXeyEm1W7ypqAKHKBADHmrjLZXYvu6StD+gatKcZTCw2GVH9aPTjGaFr1ZqwMu4mhooI2+92md85wzoyHMMktcWAEEkEp3JEIIQTU0vvv.AAvyyiYylWorYAAAbcc4ryNCCCS9zO8SYxjI7fGbelMaFarw5.B344wjISpFqpuuOat4lr6tWls2dKrssIKKcgpxd6dNtvwMFxidzi3u7W9K344wku7tboKsKpppjjjv8t28vyyiUVYE1XiMX6s290lvNOOON3fCX+8eJ6u+9LZzPBCiv11lc1YG1c2c4pW8ZLc5T9+7+4+FOOe97O+yQPPf6bmaippJ+w+3+F6t6tUJ7CdYE7d+6eehii3BWXKVc00nUqVKIr6WoHOKmrnXhb8IZpCQybHKMgRR5JFZaFBBRnpZfQytXt5Jn2tvlFeWAYCcr2ZMJ5aUjw2eeb1+XF+vmxf6eeRSBHN1s36s1EQTSFQUEjTjAgOblW8u5v4KFheDYE36DTNmreA+d0k3WdX4aJWhk3CX7K4IZsDKw6aTpntnnHbccY73wzueeN4jS3niNhCN3.N7vC4jSNo5iiiyKsMFMZDBBBnppVEx7VVVu0BZ9jjD777ne+97nG8nevrqqLaKZ1rIW6ZWiO6y9Lt90uNW3BW.CCiOnHqCJTXW7qPX22qB6jjPQUEkyEL6u8ajkJqym3oSHdxDHNFwZ1H0nNRlVff.IylQ7YmQ7ImPRuSIY7PxiCQPTFQq5nd4qf4M+LzuzkPoSm2Ms8OvPVbLoNtDczw3eu6QzS1ir4yJHq60gLJQIDTTPpYaT24xneiaf4m8av3x6hb8FHp+JYHif.BRRHXXTn5trLRFMj7zTRlLAxRQTunRSkqUCwy+brfv68Ig8Co3zk3WtHOOmYylwCdvC3u9W+qUEGxqCgc0pUi0Wecrssw22+cbKeI9PEm2ZuOeAvHJJVk6qee2e444wSe5S4t28tb+6eed1ydFPQA.Mb3PZ0pUkZPKUvzR7lC444jlkQZVdkxuJser7zLRSyKxTHAADJ+44Iuq3OBHfrrD0szYmMZyEWuMlF+xWUjEJKViZ0pQmNcX73wHKKuH2zDQTT.EEUfbbc8HOOGKKKLMMVPxlGCGNfwiGWYGlPAgcO4IOACCS9W9W9sTqVMd3Cevh6yaiff.ylMijjDTUUPUUoJ61Z0pIc5zAs2gVatuuOGe7I7jm7DdxSdBBBvN6ryBhJyX9bGN4jSX97hLpxxpFggQKTmXw8.mWo9kyanTc2Ea+i4wO9I7rm8TlMaFxxJ344hqqC999TqVsJEGFGGCjiuuOO4IOAYYI9nO5iHNdqp9fJJ9vhu+3wi4vCObgc6Vi50aTYKzuJNupEKe+W4OAdo9zN+wVokaV92+peVh2cHOMizfHhc8Ib5bRbc+FEnWddFhxJnUqIlqtJlqzAsl1H8VZt0eaPRQFIkZjuVJwNaQ7LWbd1Ij35QRR.4RoEpgqcKLVsMFcZVnjLwebjHkmkUnJOnv1IQnHl.RypxaNYMEPPjrzTxSyHOMEP.QUYDKs13OzuOdQgtVTyIBKJ1jeDmqVL+mr3TRidg8cJVpxuuqs2heu7rWL+IQIoBqC8m0wyKTudVXD44fjhDBxRHJI8g+0ik3WMXIgcKwR7ANdSOXyxED7cwhBtbfxKw6KTNAuff.FMZDGczQ7fG7.dvCd.2+92miN5HlOeNtttDDDfuueUfzedLe9b1au8nQiFr6t6RqVsXyM27sJgcylMiiO9Xt+8uO6s2deCRDOOjjjPSSiUWcU97O+y4K9huf0WecLLL9fbw0xxyIINl333evb4RPP.oEVcjll16FB6Jmvfe.w86S7jwj64gftFJsZfb8lfn.ISmR3gGg+idHQGcHoSGCIQEj0UqFpWbGp8G+2v5274H2p0a+18GnHyymvCOD+GuGQOeeRF1m73vWOx5DDJTpXy1nckqg0e7+GLtwmf1Fqib8FH7Z7LnjsMlez0Qzv.uu9qI5niJt9FFfvNWDp2XQtZHTjaPKTzv6cbtEsp5y64lzR7SGm+8QCGNjSO8TFOdLAAAuVYXWRRBqrxJKU4zR7Rnzp7788O2Bo+BKx1vv36knMee+JWF37DAmkkQTTD99933Trf8kD.tDu4PoU2VyTmlMpQy5ND4GQbTLwIojlkSVAGSfPwh1Jtf7NQQgpEEsPUY5Ty1DSCMTUjQ7m6hU9A.JysSAAQhhhHJJDHGCCcTTjIHHDWWWlOeNSmNsRYn111La1TN6ry3fCNf986uHy2TIOOGGGGtyctMRRR7a9MeF111XZZhnnHtttUDiVudcVYktXYUCAgBKM100kvvPpUq16r9i8773YOaeN3fCHKKk0VaMt90uNW9xWAAAX73IjjTnvvzzrWhDeIIIxxxHdw3tSSSPTTBcc8p4wDFFxYmcF862i33DZ1rIas0VDFFx8t28X5zozoSW1byM4i+3OFccct7kuBGczgDGGgueBQQwUikurPBBCCX5zhrAe73wUsirrWzFOuZ7N+ZSHJJV0OTbbLQQQHHHfggApppU18e46GcccIKKqJK8DEKHkTRRdYd48NF4YYjDEShqOQybHwM.RyQ.wBESQdAgcRxn2sEVatJFq1BMaKDUdO8NlEj8HHBp0sod2KhwZED0o0xFYScLZ2DYS0php30BmydPgBU8gn.YQIEVFpqKhRRXzoIhJxj3GRhe.wdAHHJhViZnXpin7G9i8KOKizvh9ADjDQPpfXqeTYoYbBwtADLoHaR0aVG4xhOQR7ac6U96kEmVP.pnHxFZHI9yiliBx5xH10mfASHOKCsl0P0x.zzdAQhKwR7VFKIraIVhOfwa5WNurx8WhesixIBVZ8kmd5o7zm9Td7ieLO7gOj81aO1au8XvfAUDF88gxIx97m+bN7vCYmc1gNc5fs8aG6MLHHf986ywGeLGe7wLZznuy1nff.lllr4laxG8QeD27l2jKe4KSiFM9f0pYJmb8qCYchhhHIKWjgcuir1yrjDx77Hd7XhFzmLOOD0zPtVcjpYifpJY9dDcxo3c6uF+6dGR62i7nfhf5tlMJWbWzuwMw3i9Dz1dqWVEW+yBxyIOMk3oiw+QOjf6eOR5cJ49dudVgonHBRJH0rEZW6iv327av5y9Tz1YGDMLP7079aQMMD6zkTOODzzIa3PBe59jGDUb8TQExx.whfeGYYD9.nxIyozvyVfeITcsKw2IJW.yRqVVSSCEEEBCCqrpsy2WnrrLZZZnpphhhBc5zgc1YG1Zqsvv3eByAyk3aEAAAUtCvomdJNNNjmmSylMYmc1gM1XCZ2t8248LkVNsllF555nooQddN555XZZhtt9Grik3WCPUQgNMrX2sVk4tArRCKbm6wbGel6EfWPDAwIDFmPRRgJMxxxHOMmBAaTPrjjnBllZT21DcMEjkkP7WAuunrXUjkkQWWGaaa5zoCggED0EEUXy8dddjkkgggAqt5pznQCFMZDmc1ILc5DhhBQVVFU0hbSKNNlYylwImbLGd3gr95avZqsFoooLb3PhhBQUUshz6Z0rvzzh1s6foo4hwiJgv6HawKHHfyNqWEgZxKFWbgpsmSPP.sa2Fa6ZTudcxyyYvfADGGQsZ1jllvfACw2+EpPbkUVEa6ZHIIWQ7eTTLJJJzrYK1d6sY97470e8sYxjo33LmzzDrssod85XaaipZgCGTLGkWPVWPPgp5FNbDCFLfCN3.FNbH555jjjPXXHCFL.OOOrrrPRRphPwjjXfBWMINNlwiGw74yw2O.YYYZ1rIsZ0hlMahrrLAAALc5TFLnOAAEW2zzzvvPGKKKZznAZZ5U2OsDu8QdVFoQwj3ERhiGoKhYhW77RwHbkTjwnaar1XEza0.ESihwe+NFBRE4JmZ8ZHaagZRJJllHqZfhrAj.AiFSZbHR5pHophjl5Or8ctvV6S7Cwq2HxyxwXkVHHJPv343c1PlezonXoyJe9GiZMK76OF+ASHbxLjzUowtWXgEbJf3BBjJKxPDDpTrG4YjkkWLelEGSBKHpNOOirjTxyxKlFgXIwWPVZVgp3xJxWPAQwWnnOV7ummCK92Oux0xyxHMNsp8jFFQ3z4jFEinhLxZpHaZfrlxBx6dA47YIYP9h01XgM5lDDQv3oDLbJAilRNPzTWTpYfjlBx5ZnZagnh7KHMUPj7jDhc8Ix0mXGOjTkwb8tHJYtnao7EGK4jmjVbbnTnbQDDJrv0EJarb9fRJxjFmP3z43c5Plt+wHHJPqqcQDkjPJGxjKrCYAoW87YgRCEDn5947zzWn7PQgpued1BUDuPAlEEN5Kr857zbxI+E8cs3bc00gk8o8OEX4nvWhk3Cb7K4AX9K419R7KSjllhmmGmc1Yr2d6wW+0eM+0+5ekm7jmvzoSY9743337cZGKeaaOeeelNcJ850awj4idqz1KBmcupL0qbQH91ZmkDZ0oSG9s+1eK+a+a+ab8qecVc0UQSS6aYq+gAxyyIIM8G77eok8nbNa85cPiiLeehNqGw86QxnQHnph7lW.0U6hjoIYQQDObD968Hb+K+YB26Aj4NuPgVZFnr9lX86+iX8a+BTWakBx59mv9AySSIKHf3y5g2W8UDb26P1rou14VmfzBkJt8kn1+q+ew7y9LTWc0Bx59wNgdQQD00QoaGRFMfvmtOoymi5E1DISihIVIKCllHpqWYqluuvq9bwR008KeTpr.UUU1d6s45W+5b5omRud8ne+9UpCnztxz00oa2tztcaZznAW+5Wm+8+8+c9rO6ync61uuObVhOPvrYy3d26d72+6+c9e9e9e3jSNAAAAtzktD+G+G+G769c+NLLL9NIry11lqcsqQ+98oe+9366WYAqarwFUD9Utn5KwaVXYnxNaRJdDPC..f.PRDEDUzkl1lbssWkgSlynINzejCmMZJ8GOmASbXzTWlMyEWm.7cCHLJljjLRVrfvpxRTyPiF0zQWSEoeEonn77bTUUYkUVAfJUY8nGsG99dDEEhjjDqrxJryN6vN6rChhhr+96yfACHKKCMMMjkUvzzjlMa9RYY2e6u823i9nOtZ7y+o+zeBGGG1XiMQSSCGGGpUylqe8qyUu5UY0UWmFMZrvJNe2fRm2nH29RX9bGd9yO.e+BxpTTT3i9nOBSSCBCiX97473GuGJJJbwKdQBCC4N24NLZzHLLzYiM1bAInZUYNmllFVVljmmS61soa2UPW2fUVYUxxRQWWmrrLbbbHMMiVsZSZZBpppHJJUQreddNSlLk6d26v96+LFMZDiFMhISlP2tcIMMk4ymyAGb.ZZZr81aittNNNN33LGGmBENVudcbbbXu81iyN6TbccQW2XQNBtKe7G+wnoowImbBGbvyqlimjjL110XkUVgKbgKvku7UPU8W91C6ujPdVghmRihH1Ojz3nWoJzVPXmpJFqzFq0WAsFVHpoTQpy6RHoofQ2lXcgUn1Vqxr3DBFNA2S5yHAQRh7v2Y.Fq1ls92+egfnDJVlnXp+CtsyxxIZtKie7Ajmj.hEioexiOfg2cO5+U2E8tswnaapswpL4IGvr8OlfdiPqoMZ0qgpsEBhBj.j5GQdZZAwNJxEVzofPgByhJNmKHJfrgNhpJHJIQVbJQNdjkjfffXA4Wl5HHHPZPLoQQjtvxfkz0PVSYAoX4jEFSZbRwuqjHJF5HHKif.jFFS3bWxRRQTVhn4tL+fSIZtGhJxnU2ByU6fVC6EpRSAAQAxhSI1Kn37AEjmIoqQ3LGF8v8w8ndD63AY4HZnghkIZMMwbk1Xu0FnXYPRPDjkgnrLIQQ3OXBd8Fh6w8PwxDIcUj0TKHhLOmbJZuwt9HHJfVCaDLTQ.HKMkXWeRCiHKNYQauFwt9L8IGw3G7TFdm8PtlIZspiZ8ZjDEuvhNKNepXYfff.YgwjDEWPZon.xFEqGSrW3BUkJgnpBxFE88lFmPZPDIggPNEDAqHufC1EJVLKqf.VJHDTTVpPAgpJEQo3x919UOVRX2RrDefhesXmjuION90v4ik3sChiiIHHfISlvomdJO9wOlae6ayst0s3K+xujSN4jJEN7iAk49fmmWEgek1N0aRjlltnZRGySdxSX+82upZ4+1fnnHJJJTqVM1byMY80WGUUUBCCqH567JySTTbg8vHUMA8JUrs3u+ss89Tp9wjjDR+AxtNgEGekJq6sd+gYEYIPpm6Bx5FRVRBJ0rQttMR0pifjH4NNjLZHwmbLwGeHoSFBBhHZVCk02Dsq+wXdyahwk2EoZ1vGXYH36DTR74omQ3SdJQOaeRFdF4QQ+v1HifPg0eYXg75ag50tNFezGiwN6ffhxOYhzD0MPciMHY5ThO9XHMkrnHxhhqlXTdZBhQgHYUCQMcDj9.wdLWhewix9uZznA23F2.IIId1ydF6s2dU1Y34ytGa6hEHd2c2kUWcUt5UuJe9m+4bwKdwkJraI.JVX7xB7492+97ke4WxAGb.BBB344wMu4MwyyqJ6s91fkkEW4JWAWWWlMaVEYF111r81ayMtwMnSmNnpptb72ugQYNrUulN0rzX8tMvOHhwy7X3LWFLdF8G6vvINLbxbFO1gQSbX7XGlN2CG+P7CiHJLlZ0Lnaq5zsYML0TPRR7WUu5RVVFKKKRRRX0UWkoSmxImbJZZ5UJgamctDW4JWgKbgKfmmGJJxXXXvVasMddd344gttNat4EPRRjZ0pUku0999r4lahfvl7zm9zp8I.ppZTutMc61ktcWgFMpigg96zmGJsT4hwzKPZZ5hBOLl82eeZznAau81TudC52uOiFMj6cu6UYYjQQQbm6bGlMaFau8Vztcmp4CkmWNehhhiKHHnR8gAAgHHHPsZ1TudC.34O+4HJJgooINNtjmSkhCyxxv00kyN6Tt+8u+huqHwwuvtLSSSX5zI7nG8HTTTVnbx5Lb3.FNbHiFMDAAA51sKNNN7vG9.FLX.RRRnqaPXXHhhhr95qihhB6s2i3YOa+JhAGNbD55Fb0qdETTTXyMuvR2E5cNJTXTVbLYQwEp6JO+a7LifjDJ1lnV2DIM02aVLnfrDJV5nYWCkZEJ3JIrPcfBBBjlFRVXBjtvch40qH5xWjAZowIDMygrnXBm4PdRJyd9wLa+Cv4nSIMJFmS5SdF3b3Y3dRehm5ffhLw9AD64Sre.I9g3OXB4IInXYhZMSTrMAfXWehc7I10GIMEr1nKJF5jEmPniG9ClRxBKXWslIVq2ADDvq+XhmW37IhRxEJMrgE5sZPdVF98GQrSw3SkMzVjieZjmlQvLGbOtGw9gnXnSrq2BB6bJTFskIACmh4pcvbitnUuFRJRjDTPvVz7BRDk0UwXkVDLZJSd7A3dbuh9SRSIw0GQMELWs0BRGyPwxj3EVLppkQQebycIb7LlevoHang0FqfnjbgpzSRIOIgHGeBFMAAIIruvpn1vFIkWP3WzLGRBJNVps0ZDM2iI68LFc+mvr8O.8tsIblCASlS3jYjFFifjHp0LwbsNHJKR3DGhb7IKJFAYYzaXUbdb3TRiiQVSCEaSzaWGQIIR7CIZtKAiWXAnsZfhUgEnlklVnR0fh4pluXMcTssn1FcQnQMDE9v2pTWhe9XIgcKwR7ANdarP0uqxvt2FX4KlVhWEYYY366WQT2st0s3N24N7fG7.N7vCYxjI+jHq6U2GkYES415M48hIII333vomdJ26d2iG8nG88lcckYeRY1tUFZ7SlLYg01DUkUDkj6YZZVkGbkjgUXcLFnqq+V09qJWrgjjDRSSKrehumqGhBBHqnfhhx6DqcJaghvRmMmjgCI00C4NsQtSaDMLKHqKKiLeOhGNjjwESZRPRFjkQtyJX74+VL+hu.ss2BoZ1+SqUXRdNISlh6ctMd281jNdH4wwuv9S99ffHBJJH2pM5exMw7l2DktsKHq6mA4mhllns01.PVXHjjfjkUg0jnoUnbx9C.QQTWaMjqW72KrLiBVh2.nr+50VaM9i+w+Has0Vbu6cOTTT3zSOkgCGVQrhnnHc61ke+u+2yu+2+6YyM2jUWcUZ1r4GrYS5R7tEkigOJJhYyl8MJjnhE2t3c5eepSufnicJxQsZ03ryNivvPrrrX6s2ls2da51s6uZJfvOTPddNok48EEKBrjjHlFZnHKSSaS1ZklDFmPTbLt9QLyIfAimyo8mvoCmR+Qyo+DGFNdFFZpboKzgM51.SCUjDecWR4O7QIoSki4VUUCaaaVYkUVXwiYTudc9s+1eK6t6kodcaFMZDqs1ZHIIgkkESmNiG7fG..au8VzrYqEYulOylMiNcZSqVsnQiF7+9+8+ezs6Jb26dG788WXEwainnDgggUsi2kOOHIIgooAVVVDGGuX76RLe9bt8s+Zz0M3hW7hjjDyQGcLO5Q6wst0sPRRDKKKxxxX+82GQQA9rO6yXyM2DKqB6vr7XQRRljjD50qG6u+S4gO79HHHRZZJW6ZWiUVYEBBB3q9puBW2BqrTVt3bRQ+LBDGGwjIi4YO6Y7vG9PlOe9hLuyfSO8jE1bYBttC4QO5gHKKylatIYY4zqWON4jS33iOFfE4KdH850ijjT1c2sPUUk986wQGcHCGdUxyy4q9pujgCGvVasEQQQ7O9G+ODGmfggAau81UpobId2g7bpxC7x4D7MgPQl1IJsnP7d+cMRXgUPJHHTXIh44HIKiTy5nuZ6BhlzUwb8tz9i2E6KrZkxo992vEaaQIAjzUHOKgzfPhb8vq2Ph8BPuSSTaZiyI8HZlKt8FQVZJZsafd65PdNAimQriGtmNfIO7YjEmh81qi4ZcPqscAgP8FSvnoDNYF5MaTPFTcK7NcHtmN.2Ea+7jTL51jNe10AxYvceHACmhjTgMeJang0lqP6abYxRSo+Wde7GLFYccL5zj7jLTrMIwOB2iOi929QDOyEsl1HH.gSlSrmOYQIff.SUjwZitz4lWiZatJJVFD43wjG+b7Nc.QSmiRMKZ8wWlXOel8rCIb7LrVaUxhhY1SOjrzDhlsFQtt3OXDhxpj4GgnhBFqzB0F0PRSkbfXGOhm6xrmeBIKTLWw4beBGNAmS5ijhBs9ncwZiUPwRmX+.l+rSvq+Phm4gVyZjDDQRPHie39377iIMJBDfzfHbOtGCu6dDLXJHJh4Jsn0mbIjTkY9yOkvINjmlhjlFFcaQZTLy2+Hh8CPw1BiUZRssWCYUMhl6he+wL+fSKTV7NahdmlHYnBY4E4m2no3d1.R8CQRSE6s23EpjTTj2QNy7R7dDKIraIVhOvwaZx0dePV2qFlz+b2NKwR7pYU2QGcDO7gOj6cu6wsu8sYu81iCO7PlMa1ar8WQn2G8ilvtx6aKIsp7SYnqmkkw74yoWudr2d6wSdxS3jSNAee+u2sqffPEQcxxx77m+7pJjsjvtWrHGpUViU4B4UXANEY7P61sYkUVg50q+Vg3tymccooo+fJrqjjQEEke7Vf3OsFH4IIE1mgZgkRozsKxsZhfhLY99jLcBA6+LBd7djbzgjGFffpFRs6h5UtJF27lXbsqiR6NH9Arsj91DYwwj53R3QGQvCd.QOYOxblAutVgopJxs5hxktBFexGi9kuLx10+YaQkhJJH1rA4wQnewKRVfOh5ES1QTSirvPh52i7fPxiiIa0HT61EIYqeV62ex36bQNVheIhRK9sVsZXaaijjD862ewhdJ+ReOQQQrss4JW4J7oe5mxZqsF0pU6k1dmeLUupRpKUjLvK8dlx20TY2vJJuVpp976myqBvx822195716o7BaM9miBteoh83UZGmWg3eajSU19O+6sOe636RA2m+b74G6Y4287edS19e0y2mu8UtuRSSILLjYylwnQiX5zoDWZoUKt1VVXNku6sb+c9qYxxxXaaW891KcoKQTTD555r5pqR850qrX6WnHmu86A9tN+Ud+4qd967siepm+DEEqt+5Gy168MRxxIHNFunH7BiIGvPSAcYYjDEQSWAKSMDEEPRPfjzL7CiYxbO5OdN8GOmgSbXvXGFLYFRhBrQ2lryFcw1Tew4h22Gku4P48LktJQmNcw00aQAoIgssMat4EnUqVKxAsTLMsXyMUYyMu.SlLggCGhuuO110Ys0VCSSSBB74vCOjZ0JH0RQQgc1YGhhhnWuyHIIgKdwKx1aeQZznwB6e7c+8YxxxTqlMMa1jvvPrssoQiFU1KoqqGNNNU44miyblNcBhhhLe9bjjjHOOGCCKVe80Y802nxlaKOVNuZ777JT8srbQeIEm6kwyKiACFxrYyX1rYXYYRVVJBBEjJFEEuHOMOi7bnUq1ryNWBCCiWJ2pKIJUQQgnnXRSSVre8X974.433XWnpGYYpWuNW9xWFQQwphRzyyijjXFMZDttdnqafoYDIIIKrIUQTTTWn1zeE8vvujPNju3+9VgfPAgCu2uFs38Wksgx1krDJl5n0xF0F1XtVmBxgTUesJfPgEaKQEYTpYTjq29ADLdNQNNHHIh8NW.IMMbN7zxeCTz0QuaCTaXSRXDICFSzj4L+YGyjGsO4YYUYXVZRDYII3cx.BFLknIyIKLgXu.RSRY38dLNGdZgsK5GRhW.wycKrUx3X5+k2ln4tXu9VHanShe.QNtn2sE4jwzCNhfdiPuQS.ATaTqP0eycw8zADNdNoggEDXJHTrO7if7hrbK10GQYY75MBQUETCiHwymnIywu2X7Na.JVFn0zlrrTR8BHOKG4E1MZVTLIA9jDFQ3LGhbbfLAHATVXgu.n0sIYIoDLbLIdAn0pAo9AjklQhW.gSlSjiKo9gjJIwjGtew9ttA4Y4DN0g3Ydj3VrtKtmNnfnuoNjmkghkEhxx3d7Y3cpHNO+TBmLGAAQRb8HKKAAQAbOoOogwnXYgrtFwtdj5EhyI8IMHDICUBmNin4NHoqRVXBgScv6rgENdjtZw9y1rvNSiRI1wCmCNgXWOLZ2B81MHKIcgkb9F9Qgk3CRrjvtkXI9.EeWKVvO2s24IL3sM4WmeQGdSz9KWPnkj1sDooo355xomdJO7gOju9q+Z9K+k+BO4IOgwiGuHjx+9I75GCJyfnRUqc9J986CkeujjDhiiqH8KLLDeeeBBBHHHfACFvSe5S4q9puhCO7PlOed0hr8c0dJVTgd7W9K+E95u9qq1em+Y7RTZ8kpppnqqiggAlllznQCVYkU3RW5R7Iexmvt6tKqu95eiEH9mKxyyIYw4uzjjJqc36Bhhhnpn7tcARDDPxx.8KtCBhhH2oEh5FPdNQCFh+Ce.d241D702h3iOjLOGjp2F8a7oX9E+VLt9GUjyZ5+yIYc.j44QvAGf+Ce.A68HhO8DxCKrtjWGBnDMpg50+DL+s+KXb8OBs0WuHW4dCAAUUja2lLe+Ep1S.QUUHKijy5Q7fAjNYJoNtHYnijo46bawLeQdKb9yVKWvoe4iyeMLJJhwiGynQiHHH3k5qF.UUUZ1r4hrR5apT2RBnJeuRoRpKUMcoJ7Jyz0xExMIIAQQQLLLpTr2q11d08y4e+UoJ.KIbQVVthTnvvvpERMJJhrrLjkkwzzDSSyeVEBRoBz888IJJp5ciE4vjd093UIrqr8WZY1oooHKK+RjM8sQn34I4q73t7ZT46RKI776672q19KKllxwwV19Keeb4hlWrnyQUjHT1FK2Ok1mcud83zSOkQiFQTTTEwaZZZnpphjjDIIIDrvJrJa2kuSsbbMBBBzoSGZ1rIYYYUJzqzJLSSSeo18qdOv214uxwqe9wLU96UdeyqKItIIIUioq75QYgHUqVMLLLdoqGeni3zDF65xIimx98GRRVNq1pAMsLwRUEKMMrzTvPQAMYIjjDwPSAYoZXapyEVsIgQIDFEiePDY44nHKisoF0qYtvUB90y6LJuWSWWmNc5r3YXPUUYgpikQVVFGGGFOdLiGOhzzzED4sIlllTud8prSVRRh1saSRRBddd.BLXPeJxKOE5zoCW+5WGQQQtxUtJau8VXaWuxkJ9IcLvKthH7J+++PPQQgFMZPmNcHLLjUVY0pL1qzdKKKFOSScpUqnP7DDDpbQiKdwsoc6BBzVas0pdOw4K3BQwBqB0xxh1saSddF862i33BqCMJJDCCcfbLMMp5KorefnnPd9yeNSlLgqd0qwlatA27leJYYoLaVQ9gWRttooAZZ5XZ9hhHzvn3+ufbQip9e5zoCe5m9oUJ.rrunzzrJhG0zzvzzjUWcUJywyM2bCLLLWpP32C3EC2u7N8u8w++RDk8dEBEyGXQLL.PVXDgSlSVVL9NCIIyAYaUTrzQ1PGoWmtBDDPRQAsF0IONkDm.hlNmrjTTaTitex0IILhS9+9OHwyiFWYGzZ0EyUZgroNQycIwOfXWOBmMmXWWHGRCKHfKWLmrnnhuWP.oouXrjgSmyfacW7Na.1auExVFjFFQjmOSe5wDNcJCu2dHoHS6qccTMMw4fSHILjFWeGjTkHd1bR7Bf5.YYDNYNgylS33oD6FfY2lHYngQmVjDTPHXdZFJ1VHHIRZXDx5ZjFDR3nojEmrvcZjPTUlrjDh88IbtCRxxnXYghUML61hDu.LVoMIdAX1oChZx3OZHoQwHqXhjlVQQhlTLdfrnHbOoGgimhRMKRChPPov1ICFNFIEEr2cSxSyXxieBQOzAICcza0Dq0WCq06Vr1D4PzzBkBJani45qVXCnYYL7N6UndNcMTrsJbTlfPF70OfrnPxhhQsYCr1bMjUUw4jdj33gnrDBl5jklPvfQDLbHRpJHWyBQIYTpahnrBjmSZTLJ4BHaZfTK0hw6H+TDTDQuaSLWqCJ0LPTQlkxq6eNvRB6Vhk3Cbb9Ef+mCQUkK9vaJBzdWiW87vaZKIbI9kANeVuczQGwidzi3q9puhacqawst0s3zSO8sBYzkKxT4h8c968NOwzk2iVRNW4hXVlSQkKdpqqKymWLAVOOOFNbHGbvA7zm9TFLX.QQQeusmxE0qzNrJq.8WcgeeUTNwVMMsEYGgMsa2liN5HFOdLNNNUK322khE9of77bRyxJrdxWi9fN+462TsgukFUQ1ksHmExSSQTSCIccPRAQ8BkWE2qOAO4w3cqaQvCtGwG8bx78PzvBks1F8abSL+jaf5ZqgTs2SJx58MVbtLY1LBdxdD7vGRxoGSt2bxSS+AIqSPVFAUcjWeSL9jaf4M9DTWecjdCSbrfrBR0pgfjbgp8JWr.IIDTVXAIiFhngAo96VD12huGxxtyovtpJf+caKXIdKh33XlLYBSlLoxl0Nu5uJr.MyugB7J+d999LYxjp9+SRRpxxolMahllFIII355R+98Y73wLc5ThhhPRRh50qyFarAqrxJzpUqJxhd0wTUph8YylUoPEfp2QT1FSRRX3vgU6GeeeRRRPSSilMaRmNcX0UWkFMZfll1OHwckDDU9NyoSmxnQiX1rY344UodbUUUrssoUqVU1FpooY0B8V9t3wiGygGdHtttuDglZZE1qmss8KolrxeOWWWFMZDNNNuDIjVVVzsaWrssqHF67njrpvvPbccY5zozue+pyMuZ6uQiFzpUKzzzpN1CBBPQof7.aa6JhQ888Y3vg77m+bdzidTkUXWZIlBBBDEEwfAC34O+4Le9bpUqF555TqVMZ2tM5KJBBWWW50qGtttujJ9z00od85jmmihhBgggLXv.lOeNgggUJ0r76Uud8pyEkG+ggg333rPALtuDYI0pUiUVYkpiqW8c7km+BBBpHgoe+9La1LBBBdIhma2tc0Gaa6Wq6udegBmhKG+nXNa5LdzImwse5ywMJlU51g1MpistFMMzokoAMLzwVWGcMETDkPQRD0EpuSRRDAJOWkQZVNBHfhhDevrF3uAwqNF7xmEUTTwwYNiFMbQ9qMkvvnJ6yzzzjvvPjkkOmhzbQTTBKKMrsafqqCGczQLZzXrsqghhJW7hWj50qyVasEc5zshT3erHGHCAxDDHaw0jTDHCAxQ36R6QuDDEEpT6VVVF55Etiguue0eWw8AIjl9Bk4ddxzrrrnd8FznQiuQA4UN+AnvlbKU3cTTwyvggEpeKHnn3qNeADTV3Hk8YVzGQ.qrRQl+0tcKBBBqN28Bh6EQTT3aL2dQwBBdJNlKZ2sZ0hUVoKQQQXZZTo1VAAAZ1rEylMioSK5aXs0VmlMavku7kY80WeYlu9dBkDw8xDx8xkhVddFoIIEj3jWXEkuO53JOKuv5DiRpxaOPfr7bRCCIaVDY9wjKmh4pqfY2Nj88jMrUnrvfTUPqtEgSliW+Sw+rQHf.5sZRsKrF9CmRzjBUW03ZWB0FVn1rFHHRxj4D65Qddw1QRWm7nXhl6f3.YThLQPpPEehppfa.IAQDMygfoyw8jyHblC0u7kPqoM4IojGmPVXDQSmSzzYnV2tvZIsrH6VYDO2kD2.DEMPTQEoEiKJ1ymzyRHOOkDOeDEkPqYihOsqivz4HJIgnZgUUpXYPRXQ1kKHIVjyddAEwKwh7CuPohBjmlAJfhgAhpxn0pQAoX0qgfnDJVlHpJQruNhBRHIq.BTnnOWuBBLCiH1yiXWGhm6Rj4bxIiznHhccQpcKrVqKIgADcKGbN4Dj0JbZkVWYWpcg0PPRjD2.7Na.YgIHoqVjqeKt94+38IKMglWdWza2fbfnYyIX3PhbcPPPDsNswZstHpHy7CKxnP81MQPVhDeehccIdtCo9gHpnhRKCLpUCQUEHawy.44jmjRJQ.4n0vF050v9haf05qfpowu5TR+R7ciOLGQ6RrDKwKgW01i9otMN+.qeaixJh7M4hs+KUxFWh2bnbw2d7ieL+0+5eku5q9Jt6cuKGbvALc5z2nj0c9pEWQQoZg8JWLvxpg+7JcHNNlvvPlOe9h.PeX0BlNe97pOylMiISlv74ywyyq5SIQd+Pnb+VNo0W2mKJWHsjjD788wwwggCGxYmcFO6YOiACFTUo8eaJV3mE9QnXXAAghLD3bpg3MJJUbbXHoymUEPzhpJHpY.hBjGGSzYmg2s9Z7uysI7A2i3dmRdnGhl0Pc2qhwW7EXdiaf1Vagn4+7tv.4YYEjaNZHAO3gD93GQlyBx5dMffpNJatMFexmf4MuA56bohLl6MLDDEQPUEwr7BFvDEgrLjLLP+pWAAMUhO9XxBCfEj399nBf+FOcb9E+XI9EOJWXyYylUQDz4QYl2Upv3RTpVrQiFwCdvC3YO6Yb5omRXXH0pUiUWcU1YmcvzzDOOuJaV93iOlQiFQXXHRRRzpUqJUU+4e9myEtvEpr9ryivvP52uO6u+9b26dWFLX.BBBXXXPmNcnSmNzsaW7773gO7gbvAGvvgCwwwgjjDz00oa2tr6t6xm9oeJW9xWlUWc0ePBUhhhX3vgbxImv96uOGczQb5omV8dznnHxyyqHD7BW3BbsqcMt7kuLW5RWhVsZgnnXEgiO+4Om+q+q+KN93ioVsZnppRddNMZzfs2datzktDW4JW4kr+QeeeN4jS3d26dujp2KycoO6y9L1YmcnYyleCB6JU1X44t82eed1ydVE4XksecccZ1rIc61sRIPmuPe5zoC+leyuAYYYxyywyyiiO9XdxSdB2+92mu9q+ZN3fCX1rYUj.lllxnQi3V25VLYxjJRbWYkU3hW7hHIIUs8FLX.+8+9emCN3fJh3DEEYs0ViadyaxVasE111Lc5Tt+8uOO6YOqRUnm+9nKcoKUkEdvKTT3gGdH26d2iSN4DbccqHY4BW3B7EewWvN6ryKQz24O+U5fB6s2dr+96yAGb.CFL3kTJ54um+i+3Olc1YmWq6udeg77bRxxXpeHOa3Dt6AGysdzSYriGlMZfYMKpoqRSKC5ZWitMpSm50nkkI155zPWCaCcpqqgsl13FyvP...H.jDQAQEJxEEUknf.xKdogn3uteOQ43wa2tcEwQO9wOlu7K+R506LDEEWnPrNHHHT4lEQQQKtm5LzzzYyMuP03bcbb3YO6Y355tfrts42+6+8boKsaEIv+TTuYFPlf.IBPh.DW3QdjJ.oBrf.ue3qUooYUpWtbNFIIwjjDWULfEuOYNylMsZdEJJJUeuB08FR12h8jWNufRk5s95qym7I2.GGGt6cuKAAuvQPJ12ojjTrcJHwqvd9000qJzOGGWlNcBttdKHRcFNNNzoS6phYHKKCGm4nppT0lKUJbbbBhhQU6yzzLxxxIJJtxx+MLLna2tDFFxie7djllw5quAW+5Wiqd0qwZqsN555+p94gODgff.HJTX0kRhUjvVhho+kSdZgEHl35SV7BKqtXC7Ns8VZUkQNdD63QZPQdkIJtvoBhiHxeFhZhDsPwY4IouVDLJHTnZOESSHOmYO6H76OBitswncaTrLHXxbHCDxEPQ2.EKKjT0Jx58zzhwCV2FEMMxBRwu2P7GLhHGGpcg0wXk1Xt5JHq6P3nYDLdJNG0iXWWxhiQTQFsFEpVSRUlzvDDEEHx0EIYUTLsv5BqhpcMTaVizEE7fjpF01XcB0lRVXL9CmPZRHBhfjgFZ11EyYVQpv9SSKJJWQEILVoElqV7rdVXLItADNcF9CFSZTLRZpjEmfrtJRFEJVTTUFQSEj0zPstIBxhHanQZTDBRBnXZPCisHMIgzvjB0BN2AD.UaKxBiPPVDQcMD0JFiW3zYjFGgfjDxV5EJ+SV.QUIPJuX6Zng45cn9kt.hxR3OZFQtdD45iTlBhpxHWyjjvPxyJJrA0l1Xt4pHJJPvTCxhhQZzhBpnUSpeoMQPTjoO9YjmDid2lnXnWPp3LW7UFA44nTqF5saRsMWEIUUBm5PdZgchFLYFgSmSVbRw04Nsn9Nah05cQ13MmyyrDe3iOLGQ6RrDKARRRUUO5Eu3EeIqzAd8sHqxEGuz5XtvEtvK4E+usPgm6WLY5c2cWhhh9QYKEmeA8yyyqVrgtc6hll1xAf+OYHNNtZAvd5SeJ2912l+7e9OyctycpHq6mBNedunoognnXkcTUpR.fJ63QQQoZwV+9r3xoSmxomdJmc1YzqWOFOdLttt333T8yRE1UTAqg+nHZ7mJw0mmnOfpJlsTAEVVVr+96yVasUksU8FC+XdlU30Oef9QirLxhiIKHfj4yIYzXxyyP1tNhJxEYVWTDQm0ifG8H7u8sH7A2m3yNh7nHDzMQdysw3y9LL+zOC8st.xMp+luc9KHjEFRxvgDc3QDevyIoeOxiB9gsASAADjjQpQazt1GgwM+Tz1daTZ07sSCURDQccxDf7nHHIgrv.DDEPa80ADHyuHyExRSHOLjbQwWq7p3MA9tdtd4a690EJIzn78HkW2KynouqEItbgN62uO24N2gae6aywGeLQQQTqVMVas0nWudXXXv3wi4ryNi82eeN8zSqHGTTTj50qWQBksscEwQFFFuTetAAAb5omxCdvC3u829abzQGgff.VVVrxJqPmNcnUqV355xCdvC3niNhoSmhmmGooonppRqVsnWudUuKsLKU+15euz9F60qGO5QOhG8nGwCe3C4vCOjACFTovtySXmssMqs1ZbxImP+98IHHfc2cWZ2tc06ymMaVEIWkJ5JOOmNc5vzoSQRRhM1XCZ0pEvKrb5QiFUkMtkDdJKKyUtxUnUqVzpUKrrrpTrVY6exjIbxImvSe5S4d26d73G+XN5nipToXoZ3JUXW61sY0UWEcc8Wx5QuxUtBW9xWtxRHO4jS3e7O9Gbm6bGdxSdB6u+9zue+pE+t7djoSmxCe3CoWudnppRmNc3xW9xHIIwVasEMa1j33X50qG25V2h6bm6TYYnRRRb0qdUVc0UY0UW8kHurjj3oSmVQrWIw.kJbrrMTZ02O3AOfG9vGVkydxxxbsqcMVc0Uoa2tUVe24u+tzAE1au83q+5ulG+3GyImbRU9UURXmooIsa2liO93JUPVZwneHZCdoYY3EEyPGW1evXdZ+Qza5Lbl6hSTLJylihhLF5pT2zjF1VzztFMsLw1zjVVFzwxjNVlz1xjZ55noHighLlpJnTpZ7ekiRRmyxxvyyEIIoEJwbBFFFUpDyvvf4ycnWudLXv.506LFMZb08fMa1.aa6ENcgO862G.pW2FKqBUf9yI6MgBR6J+YF.4u3O+pVe82ENegAd9htUTTBEE0p9FJJzgALd7XhhhpHl+74K5287FdgE.655gqqC99djllsn.bKyXyyW7rEsgREVWRVpmmGiFMjrrTrsqSZZJCFLnx9cKeFMLLjiO9DlLYJ862ioSmRZZFxxJeqs6hOuvt+KbLDcDEEplCngwkoQilUEVY44uOz5K3WynfjpBkVIqognrBBBE2ye9qBYIIDLdF9CmTj0WQIHoHifz6ZB6xHIHjXGWhl4PrmO4YEDOIoqhrpFRBxXzpMp11Hoqgfzq+bBDkjPVWqPgUddjmjfwJsnVIIY0bvnaajWXOip0rPRSEgn3E1dHHaniffHp0LIbxLxlDSNEDjIHJhrtVkp0xRRHMHDxyQsQcxyxKxCsx9MTkQslEF9An0rI5MpidKaTqUC0l1j34ijhBhxxnZZRha.IdgjEEQVZLhpxHoogfjDQybIMHFk4dD45QZRBJl5n1nVQVqkkRrWXgx+cbKxENWOjiW3mnRRHophjlJRpJnXnirgVwwqjD5cKFSQddwwphgARZ5DI3UP3aPHYwE8IJang0FqgVcaLVqChxxDNaJjkijQQAoEMYNoQgnXZh4JqhrtNFqzA8V0QuQMDjkHKIEESCTLzHUVDQYYjM0PIxDiU6RdbJRJJPZFY4EVdp4JcPVWiHOeTaXiQ6FHpHid2VjEmTXJroYE+d1unXTksMPsdw4JIUUDjEIdlGwt9DLdJdmM.AYIpewKr3d.Ax9+m8Ny9xItRy1+KFUDglmx4IHSRlLF2FWU0qpd39x8O56q29V8pqtJ61FLX.yTNqLUJoL0rh46CgNGTljXC1.Fi0dszBaPCw3INmu82duCRFSTMLBUEs+H7H++vioD1MESwGovzzjRkJwUtxUv00kqd0qJmn9ayBQEVMgf.vkWdYVYkUHa1ruW6BUKKKle944y9rOiNc5vUu5UeqrXOwhJDSXOe9DKtX80Wmb49icww+iHFLX.6t6t7vG9P9W+q+krHN0qWebFT7KCFFFTrXQJWtLUqVECCCoEUt+96S2tcOiZQCCCkKFtc61R60QT7UQw351sK0qWmVsZQ2tcYznQRE3IdIxaHgh29sLeFEEkqYylr81ayZqsFYylkzuCU4jB7aeQzhhRVLS+93cbCBZ0jfSNIwRFUTP0NEZQQD1sCCdzOvfu86XzidHA0OfXWWTrSi4k1.qacKR+m9y3rw5nkc53QQC5yns1hQO6oDzpIwdidiTWmhlNJ1owXgEv4K+Rb97OG87umHqCPUWGRmFEEE7GNhHOeh7CS5HyLYI07ID1EG3mbsxvAIYc2GXEaLUE4eZCAgc862WRXGjLuo4laNlat4jj.MIDiSezQGwcu6c4a9lugSN4D788kpMaqs1BUUUpWuNmd5oRqLSjkXJJJx7Oy00kJUpfkkEat4lxlVQLF8vgCY+82me7G+QYyw.HalLaaaoMMJrTYAgSBaYSXkhBRVle94ob4xWXgvGMZDGczQ7C+vOv+w+w+Ae+2+8R6ZV7bxyVv5ju+Z0pwSe5S4oO8oznQC9pu5q3K+xuT96HNle5omR61skMpxLyLCpppToRkyj4shBj2uee1c2c4G+wejiO9XFLXPxXG99b8qecVas0nZ0pmY6+vCOjm8rmwcu6c4AO3A73G+XN7vCkp7474gmttN6t6tXYYIIRTbtLe97xBU2rYSdvCd.+e9+7+g6cu6Q+98oe+9Lb3vy3r.Ba+amc1gZ0pIIVSPJoHC.GNLgfhG9vGx29seq75CAYH999XZZNAwHuTwl0qWG.ZznAoRkhpUqx0u90Oy4x33X4wuG+3GKUlmXdTewW7EzqWOIIe.Rq27oO8o70e8Wy2+8eOO5QOhCO7P40vSNOIcccN5ni33iOVRn5byM2D4b1GWUxxOLhNCGwgc5xyOtIG1oGXXhQZPUSknnPbG4i2nQzqaeNt4InaXfgYRd9lw1hxYSSkrYnb9rTNaFJmMCymKKqTt.EcrQkOsy7zI22RHV2GEEUJUpHgggXXXP0pyxpqtJVV1Tu9Q7zm9TdwKdtbrQCCc5zoMvxTnPd788HWtrzoSaBBBj2C7qkrN.TFau0pwf5XF6ThAEAicuQT1IrPxIs4RCbbbF2zAmxO9i+HFFF344IaXhjlSPS9YS1Wd08GghtCCC4niNZ7X1cPQQgd85xLyLqLOUEuujL3TirYyxvgCXmc1gvvPJWNIS8d7ieDO+4OmQiFgttA0pknt4ToRryy4laNpU6.9we7w344ynQCQWWm74KfssCZZimStphz52DDG9R6xWAeeW788wvPm3XvyKgv+CO7PTUUoZ0p3337JW6LEu+fhpRB4KNVXj0AcKK7Fn.gQ.ZxqCC88XvQGSu8NhgMaiS0hnjwAs2BxvdWfnwVzXBIIcvqcGTSoilSFRULKVUJhU47jdtJjc4EvoRQzeKxpbEMEzRYftsE5osQUWiBarJE2XULRaQvnQT5y2jfAiFShWZzsLITELymlPWeTTUSTV1nDKlTKsM5Vlnm1BEcUB88IzyGPA8TlnmwFsT4nzFqie+gD4FvvZMvq2.Lx3P1EmCUcUxrzrXjIMp55nnqQphYSHLKsURFz44Q3H2Dk9YniYgLXj0gT4xhe+Qz8EGf+fgX3XihlJQAgnUJG5oLQ0TmXuXzz0H1wByLNnk1FUOOB88STRVXXR1ApkPNpQVGzLMSH7UWmbqrHZlFLr4oDL5ThxlrcD6GjLdPpjiAFYrwHiMUu8MHzyOQcei7HXvP751GCaKBG5Qiu+InnohcgpjYtEP2xBm4pfgiMQwQnFkjkgFosvLeVBF4hplBZl5XUt.U+hahe2ADLbDc1de.vvwF6YKg0LEYvQMwLaZTLzQ2whLKLKgCcYX8SHxO.ybYPOiC1yTBMScPSQRNoVJCRkOKgdALZuCo2tGwviafptNZ5FDGFgW6t3LaExcoESbfHUETT+8Q18NE+xwTB6lhO4fH+GDY.gvx39kNQMQHtaZZ9AMaDDJTat4lCOOOpVspbg9SVPkeNHH7RLg7JUpPgBEtvbiXRH5zUWW2yDx6uoPzcb111b4KeYpToxuXB6R7r+jvF2xxR1U5usPbtLc5zWn8OMEe7Ag8Rt6t6x8t28369tuiu8a+Vd1yd1YxTm2TnqqisssL6cJVrHyO+7L+7yyBKr..RKmRP1lvxI877nSmNbzQGgooIsZ0RZqkIYnvKytm986KUU2jEoS7RrsXXXHuu38Q168lBw1URmw1RVD32U37j08ydu2an0Y91hnvPhFNjf1sI33iI3zSHxyCsLoSrDSMMhBBH3j13t0139hmSPiiRHqyzDiYmGqabSRe6u.60uLFUp9y+i9oLFS.ZvImxnW7B71ZKBaeJD3Aw+LVurhBJV1XrvRXdkMwd8MH07ymPp16KnphpoYh55hRrDUkvPTz0P0zDE0rXTpHgCFPbfeRNMj9caN5MESgf3MQgUEHc5zr5pqxZqs1E1rDBke0tca1au8X6s2V9cnoowImbBsZ0BUUUo0AJx6IAYWhhs1tcaRkJE26d2i74yKyJsIyjMAAZ6s2dREiCIMTVmNcj4p1jyWSjupSpTr33XrssYgEVfVsZwvgCw11VNePAAR0pUie3G9A9lu4a3q+5ulG+3GKaPFCCCoZ3AjyMcvfAb5omhhhhLK1LMMYs0VSZadhL6qToRRk3IPiFMjp+57HHHPlgdMa1TNefYmcVIYquL+nRrhxG9vGJmmxie7iYu81id85gllFlllXYYIISRbcPud8NCQd4xkSRTl38JZjnZ0pwgGd3qb9DRliqllFZZZxyCh8CgaBHHET3D.MZzfiN5H49unokz00wwwQdb211FcccYyHAIyg40c7Sbc2vgCkG+DmeVXgEjWeJVqfuuOMa1jG8nGw28ceG+2+2+27vG9P1e+8w00UlUdZZZx4h0qWOhhRrKv33Xlc1YkyK7ctkd+N.AQgzezHZ1qOG2oKCFNjXMMzSkZ7bdhHJBhiRrbPW2DqYSQIQk2lFFbrsEYcrIWZaJmOGKToLileFJl1l7VoP8Wf0M96UHx0tb4xwZqcIJWtBJJpisY1p366Q2tc4zSSbQAgSZjJUJYcBDYr4Jqrh7uet4l+UTa7uDnGGSlnXpFEyRgwnNl7tECioPTDVQwn8FLEWSSSJTn.yLyrDD3S4xkwwwAccc1XiMHJJh986IaDv74SxptJUpP0pUvzLECGNjxkKKG+77e+kKWgYlYFYNaexImL1RiSb2FQ1WtxJqvfACjJxds0tDc5zVtNopUqNt9EYY3vDqvzxxdrMJWRlYpqu95noowt6t63rUUmrYyJIbOIWUgzocFWyBSTTToRkxXXjPVmXreOOuwm6SFyoYyF.I1GskkkzpNmhOPPSMgvtz1IjOk1BNUch0yofhhJQA9LpQS5cvQLr0o3OXXBQXluCc1keBDGEQjeH98FvfFmvnlmlPNEwnnpPbbD98FhloEl1Yf.UzLLQOk4akqannnln1pBYI2ZKBQwja0EvY1xfBXGDP4atAgt9jd1JIJ8xPGs.SPABc8ARN9YVHKn.NZkwHiC1USrUShhINHhzKLC5VFjdgpIpDyxF2S6feuDUaoaaQp7YwYtxDEUfRstJ5lFIDIYkhbKOOg9AXUpPRcCy3PvvQIDXZZfckBXlKCZVVLpQaFTqIAibQQSEizNXjwlzyOCoJjECmDhnTGqhNPg3nHFlMMA8FPne.JwJIjhVNOFNVnYpghgAlYcRVKnxhn4jBEUUBFNJgLLcchEY1qgNoJjEmJIDfomJEwAgXjwF+Ai.UU751GMcMBc8YTq1nZXP9KsH1UJjjSdYbvLe1DRB0zvvIEVkKfpgdxwdEPyJQwgr373dRG57h8w8zNI1ZYVaxt77nlx.8LNXl0IgrZaKxt3rDMxmf9t3OXHZNVXMlDXcaShBCQOkIl4RitkEFJwDGFwfLowHiCQAEPUWCc6TIWK34SvH2jrHbZic9GFLkvto3SN344wImbBMZzP1Uq+bjS85fHiIxmOOkJURNQzODHwpGRBL6rYyJsCCg0N71XsjhtpVnnGwjZ+oFrWX6RMa1jSN4DYmwBuYco1jai555RqF5WhkXJ9bhtWtVsZuQeGS9cI5j4hEKJycj2FhOmheaP2tc4QO5Q7se62x+4+4+IO7gOj50SrNEOOu25uOQQCWYkUXs0ViUVYEVd4kY94mmpUqR2tc469tuiACFvSe5SkpqSzc9Gd3gxBBJHpqSmNR6sTzE8hLnQXyYZZZxhqIJXFfjrtOVtNTTP3KJWk9fi2CSFM1yKgrtlMInUSh77POedzqVEiJkQw1gXWWBZ0hf5GQzosHNvGESSzqNGo17pj4q9Jbtw0QOW924ae+dCQAAD1sKdGUG2m+b72aGhGz6mWccJJnn.ZYyi8stMo+huDipkGu.sO.2KDCDEQbbDJiyIBhiR9sMLQQcDQibQQeHwiK58GJLYNOdlmCNM+V+jABRFDMUFjLGmrYyxlatIat4ljMa1W4yIT9kPEECGNTRXif7mfffwY3TIYyIITSUmNcjJUCRrB46e+6Stb43xW9xTsZUIoO.RagrYylRaMWPDTud8vxxhLYxHISQQQQlOqmbxIx8Mw6uUqVxFgQPDDjnjuCN3.99u+64+6+2+u7ce22wKdwKjMNhggA4xkSVbc.Z1rImd5ox8I.N8zS4AO3ATpTI9q+0+JW5RWhToRwBKr.+6+6+6344cFB6DG2DjtM47qmjfsIUdn33yjJvQbre+82m+q+q+K9u+u+uY6s2liO9XFNbHZZZ333PwhEYt4lSR7T+98kVkoHi2fDRyxmOur31h0cXZZxLyLCKt3hR6zdxOmllFoSm9L1pJ.KrvBr95qyRKsDYxjQdtUXsnStuIT.Stb4Ha1rnooQlLYjyURnVketieh0ab9ieBBEEuDJVra2tr0Vawe+u+24q+5ulm7jmP850Y3vgTnPAt90uNyO+7R6d892+9TqVMY1aIHVUjygllluasz62AHHLhdtdzY3HFNZDA9AvX6iCHQ4DiIAWNdu3YAimaVXfO860i5.0ykktibwJkAaNSYhDelORlO46aHZr0EWbQJWtD99Axqm0zz33iGLVgW5r7xqv7yu.EKlrVdwXUUpTgRkJwsu8skyeWP30uVXECyEEy0BiwPEN0RmXfpJwbo3XJFGi4avizcbbXs0Vi74SrXtjsubDGC+o+zehYmcVN3fCj4HWx8blTnPdlc14PWWmJUpHsJzyizoSyktzkjqQVzXBNNNToREVbwEoZ0pLZzH9y+4+Dtttr5pqhssMYxjlNcRbQj74S98JTn.24N2YbdAZNdbf0XlYlgkVZIrscFamskIa1bxlGoPgBL+7yS974ki4466M1sObHJJhM1XCZ1rIAAAb7w0oVsZDDDvku7kQW2f50OVVmfd85wryNqzdj+XYcVepCEU0D0Rk1Fy7YPOsyXU.ESLfhfvtvPF09DFbTcbacB98FfYtrevJNcjeHdcGvfiZQ6msK8O33jFiHSZTLTIbnKmdXCTh1FibYo3UuDp1FXj1hT5ZI1U4aBTSxwNmJkX9+zsAfrKLCFoSbQAEUUzz0SHuw1Jw1DURHLLUtrDEFAQQ3lOKZlFIJ0JeFLykFyLNDGFwnlcvL2PblOQsXYWrJ51VDtpGiNoC8NnN9cSZvYqR4H6xIJryvJgLrzUKihgFU9rqPTXL1kySbXHQQgXVJWBIXNVXOyXBBiggk5fhpB9CFhYFGLykgTExRp7YHUtLnZpigcjLa6rJkibKOKtcGjjkcCcQQWCyzNXWsH5VFD5UFEMULSaihtdhUUVNGVExRvPWzsRkLGz9CQUWiTEySpBYvHcRCfYUJOwQwnYjb7L6RyQnqGgAAIDyV+DzRMlvtR4SHTbrZ9T00RxbQSSTMLHzsjbsrJpIViopoNdc5itkItm1M43Ywbj6xKkXImishyDaM0frKMKJF5nXnheugI2STLGomoDFNVDEFgplJZoRgpodh8llJEDComqBQ9iikESijsOUERkKK5NVnpMcLs+nfoD1MEexAWWWossHxchI6X32VHB03KcoKgkk06TKh6mBhN6sYylryN6vwGe7Yrzn2VB6DDVUsZU4BYE1JwEAQwGd1ydF6ryNxLq3Mk3Sw6MUpTXaaK6D6eIPTPDQXaKrzm2FHJ9xZqs1YJtzzG18wIDc+8Se5S4e9O+m7u9W+K91u8aYu81SVfl2TnnnHsvqkVZIt5UuJarwFboKcIYt0jKWNrssk2eMY2tKF6Pz0oh6k50qmTYcIYfw.YN1ItFUQQQplSeeeIochuaQwS+4t2PPfuH+eNe9L.H+NOukAM48NhsgIIiSTbCg8fVrXQxjIy6zlS3MMqNdkOy6JBJFqDrnQiHr+.hbcA8De3WuRULJUB0TVD65xn82mQauEAGcDg86kXmQYxgwZqi80uI1W9RXVcl2MaW+NGQibwqdCb2aO7OX+w1gYRwyS7vH0ypztwmOUzMPMcVLWYUru90vdiKmXsnenTDgpJXZfZXxhUSxIhjmGnZnSjpFwttD44RbTzaT3x+9D+Rt+YJ93CBRXEJP67i8KZnj4me9KzRLm7y544IsSyIIaIe97L2byw5quNUpTASSSN4jSjp8RTrS3kVM8VaskzxBmbNt999ztc6ynfJAoKIpunBqt5pL+7ySkJUHNNl50qyN6rizkKfWpnv986KsQ5b4xImeZ61s4IO4Ib26dW9tu663wO9wzoSGhhhHc5zTtbYVd4kYwEWj4laN.nVsZryN6HUauH2zpWuN6u+9b7wGS2tcIe97iUfyZr0Va8JDNIxr1IcvhI+2OuxvEO+WLGZEEE45Nd9yeNO3AOfG8nGIazMEEEJVrHqs1Zr1ZqwpqtJEKVDMMMpWuN555xmQKx3ISSS47TMMMwzzTZib25V2hToRwd6sGGbvAxOGjXopyLyLrvBKvBKrfr37yLyLb8qecVZokHc5zRE1IHLdRE5IHozxxRlsbBGtnToRx+N.ox3DG+Ne1Se9l947DdJNVOZzHpUqFO4IOQlodMZzPZG9arwF7m+y+YVe80w11ls2daIgsh4yHliiXNXuMyQ7CAhABhRHrq2HW778IJLLwJxTOqUEp.mkvtnnjLOKJhfnHh7CHXbFEENSEzTTPUbc5efVSittNoSmVRHL7xqIGMZDCGNjpUqRTTHyM2bnqaP4xkky0OgHnLTrXQ43WIMHf4YFm3WJRQLUhhIDHmgFCxXSLwjUWkkhgbwuYEhSXUxEJjWZYtNNoQUUkKcoKQtb4nb4RLb3H48t11VXa6PlLIV.doRkwzz.GG6K76e1YmcrR9xSud8HHH.aaalYlYFSrVVrrRw0t10HHHX7XAIjrMXv.5zoCoRkhhESrlzqe8avryNGggAXXXP1rYoXwRiU4mENNNXYkrVld85IyiTw4mj6BhSHLvLEoRYADyhKtHllo3niNDWWO51sGJJJjJkHiw8nWud.vvge7MNveDfpZhB6zcrwLe1DKWTSaLYch0npRbbHdt8XXqlzq1wLnwIXUp.j04Cx3XQgg3OXHCazhNaeH8On9XRjTwHSxyIUhUIvyGHlPOuDkMEE8VMgbET.UULyll7qsHfB5NoPyHIiIM0zPOkYx5LTGOFtvtbiGOuwvHzsRkXihnfUgbXjwFMCcBc8PyPmfQ9nZZfoiEl4RHLJQAXoQ0zPRxkQFGbJmjwZF1IiGXjdEse.D...B.IQTPT0BTUHyByPbLnYZHaVwfh4fXP2JEVkxgVJiDquzzDEUEh77STyWlDEUpkx7kONKYg7DGEkX8kF5XOxiT4RS3HOTz0PKkYh55Fm4lJJJItdhdhxx0ssP2zjPO+w4KdHACFgptF1kxiQ5D63LFvHiib8ZJJJDSxwtPWO75ODqx4QSWmzyUkT4bPrgNY8STMzQ2zXhyywDGqLlXMCLFOFpW2DKR2HiMNUKgtsIoxlN47qcJT0TQsPFPUAE.+AtIJOMiM1EyglkIDM9BIM0DxB0TQSWCPA6YJgBJiO+GJmSftcJLrsPQ+OFYV6TLkvto3SPLYm592+6+c1e+8OyBCeaQhMNTlu5q9JVbwEkYdw6aLb3P1c2c4t28t72+6+cdwKdgjnheID1IJvx5quNtttx++KpnP.zqWOd9yetLuvpWu9aUGpMYW19KUgime+PD9zmmvg2DXXj32+e4W9kbkqbEVbwE+nytblhWh1saycu6c4e9O+m72+6+cYFn3559VctWTbwpUqJy0lae6aypqtJYxjAUUUFNbHc5zgZ0pwye9y4G9gePZ0XhhyoMNvlGNbHsZ0hnnH51sKsa2lSO8T50qGiFMhACFPud8jcttvVoDEkSTDSQASEVU1OW90kJUJpToByO+7rxJqPgBEjDIJtGWT7WQWqKJ9fnyyaznwYroyIUdpssM4ymmqbkqvUu5UY0UW8cRAKNO9shzgnfPB6Ofvd8RrAQCSLmedzbRiQohnXZRbXHd0NjA26dL79eOAMNF78R59whkw4V2BmO6lnMUYcRDNnOi1YKbe9yHnQchGkDV6nnfhlQxZgR73qjE+LFpNoI0Fah0stMVWZcLpTE0KvpldeAECczyliX6wc3pdRN0EGD.ZZfZRvdqFD7dQom+TPTj1W2++T76WHFSVz7Uhw7EyWxvvPpNpKpgIDyCRLGnIUpsH2fuwMtg70ryNK555r2d6IydHQik.IDxITD2jV7n.Sl0dS1jTNNNrzRKw0t103u7W9Kr95qSgBEvyyic2cW91u8aod85zrYyyrcKHTQ7b7nnHoaNbu6cO91u8aY2c2kNc5fuuOYxjQ1jM24N2gM1XClc1YIJJhZ0pwcu6cYznQzueeFMZjbaW3FCGd3gRqr+hrFMw1jnIaDyudxySmmX0IavEwba60qGO6YOiG9vGxd6smzl1DmSme944+0+q+W7u8u8uwRKsjrgwDyqWnVewbNLMMIa1rxFmIUpTLyLyfllljjz+4+7eRXXHc5zg986CjnTl0Wec97O+y4F23Fx70Kc5zRkl333HOdMXvfybsnX687yYWPF7jDi.uTQ9SZc9ZZZRxSEWqMoh8mjzNwbU51sKO4IOg6e+6yVasEMZz.WWWJVrn7Zr+2+u+eyFarAZZZb+6eedvCd.6ryNxL7axqy9szdwuHHZ9HuvP555QOWWBihO6a3Blcjj.NEkjbcJFPQgPMOBb8HkgNqVoHqWoD4crQSUk+HspFw3dm+bcXXHVVovzzfb4RrlQg8xlXUpIN1hgg436IrGeeOIptWQ8ch5L0AxCnonPQSMBRmLGGcSMxhBoAzeClUrPwsYylIoX5ZpisHREoRZSxvunybukfXbfwMifBllu57rDJXVPLex3cQiaTPqIZxWMVbwEIJJFSSSoU9mPXXRdgJx0zKcoKwhKt3YVmgHZQDNKxLyLCYxjQluoh3GYxwnEedw4ihEKRbLLb3.Y8KFMZHMa1.ccc5zoC.TsZUle949nzZb+jGiUTltSJLKlEiboQYhboSgjl4KNNjvfQLp6ozauZzc2iHyhygUo7npo9dmLhnfDheFdRGFT6X5s+gDE5iUw7jY0EHybUPOcx5fCF3RphYwoZQzLMNy9yOKTR1mUMzPWM4ZVg0Eqnn.pfpgFRFMOCaWI+Qrdbh0HZkzvLpFuTwUZoLvtbAhBiFqDLsjuuje.zsSQl4qRTv37haLIYJpIjMAHU4shcpDdCUUIVWCKMMhCG+r6wVcpxXUgal0IIm5hhPUnTMC8KvtPigXsw1673s2R4SVSnhBJppnne17BUQ8kMfhloAVEykP5mRhCEEMdtZZoLPUTyCXbSeJOPl7qqGipgNZVovLWZTTTQerxBEPUQb7BThS9dtHm9RQM43Y54pfckP4wNMKyDEuYmBPI45iw6aFosIyRyRbP3KO+XZfpl5YVCfz4YDGeBCQz3BIM623sUM0we9e8Yr5T76CLkvto3SFH5b4gCGxQGcD6ryN77m+b1d6s+UEbzoRkhb4xQ5zo4vCOj0VaMYVN79DhNe9gO7gbu6cOd1yd1YJnvuTB6FMZDKu7xxt390AOOOZ1rI6s2d7rm8LN3fCdqlzqX6SnztesOTYRKB6WxhwEcnb0pUoe+9eTsX9o3kv00kNc5vSdxS3e9O+m7O9G+CdvCd.0pU6s57tHqBylMK4ymmM2bS9a+s+FW+5WWR5d61soa2tznQCo0utyN6vidzij1Ki.Bq1Ur3QgBXmTMcB6uLc5zRqHSXoslllHxAOAodhhjNYt1cdHV7cwhEkjos4laJstLQwEmjvtIueS760pUKpUqFMZzPZgXStPXgEpcsqcM1XiMXlYl4By5heug3vPhCBHbv.B6zgv9CSV.fSZzymEUGGTsrH1Offtcw6vZ39zmh+NaQX21fpJZ4Ki4Zqg05qi4BKhp8q1gx+QCwggI1KZyV39hsvamsIraGhC8AE0DEzkxBTHQMiAisuVEkjv0NWARs4Uw4F2.y4lEs2CjC+SAEMMzbrIJLoqVU0zPQSKIX000QQUGFunveKHKaph59zDBBv51sqjzJAQIBW.HQ4AWbl6HH357pLWWOI+eVZok3N24N7ke4Wx5quNkJURZogau81r6t6xt6t6Y99DDtbdR.EpOSPnk32SUUkrYyxktzk3y+7Om6bm6v5quNoSmlgCGR1rYoUqVuhR1lLq2DMnhvJDO5ni34O+4r0VaIsAScccJWtLW+5Wmu7K+R9pu5qjDCFEEwBKr.AAAbu6cO1d6skjBEGGiqqq745yO+7R0vIJ7rnAblzBnmjvIwy2E1csv5QmTo6VVVRhs52uOu3Eufm8rmQiFMX3vgDGGS5zokpa6N24Nbm6bGpToB111RU0UnPgWwxHEq6Ha1rxscQg4KWtLpppr0VaQ5zoOy0IBhTu5UuJ25V2RpFQQS4XZZhttt75PQyEINtIHzvww4LeuSVLcQCPJNmddB6DyORzPSm+3mkUh5ZRkJ0qb76oO8oRaDUQQgBEJvm8YeF24N2gM2bSlat4X3vgRxBDXRkOlJUpW4e+2ZDGGSXTDd9gzy0k9tdmIeGY7X.WHFmgcfn90JI4dmgNN11rXwBrXgbjIkIp+ASgchlB87PWWCccMIw2hBPKHvRXIw.xLk78Az.LQEGEEL0TIbbQwUUUIkRLI5n3M36YL4aWDDDoeQVc4aJljndgk4dwWOpQ1rIDmcQEydRLoRbuHL4ZOdafllM4xER4xkY1YmkEVXAN8zSARHpU77y0VaMVd4UHSlzSsCyOvPQQAzRHEIUgrjpPNTMSHxHNNlXk3DR6FSFQvvAzdqcwYlJja0EvJe1D0i8dJK6DJVxu+.5UqNCOpAgttIOGQKYrff9CvezHLKjAy7YQyzjT4yhUo7u0YXGfbbbsK5y8Zqo24TcstVhp4N+6RSCcmWuKhoYni1qw9N0LO61yj6WJ7Rh7d0MYEzRodgaOWv69sZ68U9zZpIY31azuxqdbL4uQKQcabwhT3LG9G+b1W2HFBxJuvumye9cLgiutqkuvy5ZZnaOMyMmhWhoD1MEexfIUSxImbhbQ+hNt7W5j0DEp3vCOj81aON5niXt4lSNo12WXvfAryN6vKdwKnQiFxvU+Lciwa.DuegMJcxImP850oUqV+jY.1jEXYx7o3sESZkP+Zv4sZm2VHr8ny2A4SwGWnSmN7C+vOHUV2O7C+fTQauMm2EYxv5quNat4lb8qect4MuIppp7nG8H1YmcnQiFzpUKN8zSkEUpc61b7wGKyHOg85ztcahhh3fCN3LJhSXAY4xkSVHOGGGxjICEJTf74ySgBEvxxBEEEYg.2au83t28tx6uGLXvEteHxjlkVZI9S+o+jTkAkJU5L2SMIg1S92KT0mfXRAIgWjB6xkKGyLyLr1ZqIKT3uo3c.QIw99D1sCAc5RPmNPTLpoSid1LnkMKJZZDMZDAc6h+wMvq1g3e3AIV6n6PTyVfTW4p3bqu.y4lGMGGTzlN0oXOO7a0B282CuW7LBpsOwtCAEUTSYghsCZoSSbXLwQmPbX.njz8mJobPuxLXs4UwZ80QK862mkdQPQUELLPSTnNQWdpplj2.h+93oTmMEu6fqqKMa1TNl+jMYgP8ABBktn4LIrVRAAHBXZZJscQgJxEOSRQQQlyboSm9LEmdR0NIJponIPlzQCDOuS79ykKGat4l7Ye1mwpqtJUqVUVT4RkJQgBENSAaOuppD6edddznQCN3fCnd85b5omJIqKa1rr7xKyW8UeE+4+7elKe4KKs3y33j7kdokVh74ySpToNywSOOON8zSkeemmPmToRIaZkIsixffD6aSzfN0qWW1jK999xmGmMaVIoSpppLXv.1d6sY6s29LMDVgBE312917W9K+Et10tFKrvBxFgQ76JZ5mIyZZgh2EJsTTbagx9DDpc94DYZZJUhe4xkOS1QO44XeeeYNCJNN.uTIO4xk6LO+exieBROEykdR6YMHH.cccY1GJVqgvh8DV8YgBEHSlLRh0DyIZu81iACFH2dKWtLewW7E7Ye1mgssMsZ0hCN3.Y91IT9o3XzjyG6274uLADD1Mx2itibYvHWBGasZJ+bMT5DpuKNVr9GULrsIS1LTIeVJmKCoFqPgozRb1q2000G6PZJxWBhiAdsDg8t.QnPfB3QLihiIbrRUziiQSQIwlS+M9LlXcCSlkp+b4Uu3ybd7ghTrDKBcdTU0PUUi50ORpz1xkqP4xkYs0Vi4laNxlM2TB69M.JJJnaXfUgbjpTdzssQUUiHhfHeTUMPUQCM0TD6GPmc2F8LVjcsEvpXNxnO66OB6BCIXjKCZzhlO9YzY2ZnmwlrqtHDCAiFvIO64b51u.6pknvFqwr24V3LaoDqlzJwtCmhoXJlhODXZUmlhOYfnP3mbxIbzQGQylMkAQ+qaxkuIPnbkVsZwVasEqt5pjKWt26D1IxhiiN5HYWv9t.862mSN4jyjII+TXRh.98rpz90P53T79Gdddzuee1Zqs3+4+4+g+0+5ewie7ieiUVmXQlVVVjMaVVYkU31291biabCt10tlLj42Ymc3q+5ulG9vGdF0lIxFQQttHr+KKKKJTn.4xkSZsJh6EE1HybyMGEKV7LJ5SPVmnK4EE1SXUTO7gOj82ee1c2c+IWHo32XgEVfabiavst0sNS1z7yAwBwGMZjL6flL27lTYGBxFEJB72yHNLZLYccw6niInWWvO.UGazbrQ0drMmzoCd0pge8ivuQSbewyIrwwD66gZl7Xt7JXeyag0U2D8REQ0z3WeGrOti5kMeg56eqe4cMBGNBuCOD2s2F+COfv1m.A9IEez1AsLYQwxBb8FmGCIDeoXZgwLyi4kWmTKsLFkSBn6O3XrR+dEnNVcflFu8cP66.HeN6zmS8IIDDYzrYSFNbnTUaSRXmPESm+4BBEucQYzkffqpUqxhKtHyO+7moHkSpLpIgfbnLYxHUZhhhxYHh4hx7zzoSyxKuLqt5pRaVDRrXyKZ6eR6QWP3ippJiFMhlMaJsOSAwNSlOdBUeWoRkynZOgpRDJcSPzn33zjYz1jOmKSlLjNcZIIjhl4ZznQ355hooor41lrIWRrYOKJUpDUqVUpLt33X52uO0qWmiO9XbG2o9JJJjOedt10tF27l27LO2VnFMw7dFLXfTcZBB4lj3Iw1u.Bq7bRqlTb9bRBEecVd+vgCoVsZTqVMoZ.EprQjcdmmXWAYmNNNxL.axieBU1YZZJI7rQiFmQMoBq8b94mWRzZXXH862WpHRw7qDmOmTsjsa2lc1YGt+8uOGd3gRhqcbbnRkJL6ryRwhEeEEB9KEwwwDJrc12BmM47HJNFufP564yo8GRWw8uukeeIJCIFMMUrbxR0xEob1LjIkIFZZSIqSBA4bu92w6aWxARnYMhXBhgf3XBheIwqgw+12JPhwI62uO850CEEHa1bxbATbOjmmmz1+eYde9REyZa6HcUjODDiIFmTnV2rYyhsssrgCpToByM2bjKWNzzd0mkNEeXfZJSrKWfLyUEmpkYXyF3MrCAggXnnhhhFpJ5DEEha2So6N6Riu+wnmxl3nHhWXVLRaON2190i3vHB87wqaeF05T57h8o6N0XP8iSrIQaKrJU.CeKB7Gg+nA31tMtsaC.ZoLQyz30p5reND5GPP+g3ObDACcINLJwpFGmgapZZDEDBJIphCU0Dm9HHjH+fj4AXkXkkgdAINcxD1Uo36BfPWuj2SPXhB0brPyT+k1r7TLESwuavTB6lhOYfXA10pUic2cWN5nijVdwuVnnnPud83IO4Ir3hKxZqsFyLyLuS9tuHHTKX61seiIV6MEAAAzoSGYGC+5fnfCeJ0YZeJsu7oF52uOO+4Omu8a+V9O+O+O4t28tzrYyyXYX+Tj1IV.W0pU45W+5b6aeaoZzJWtLMZzf+e++9+wW+0eM2+92mZ0pIKrlHCLlLag.jVxzst0s3RW5RLyLyfkkkrS6cbbHWtbTpTIYgCsssIc5zXYMYtOn+J4M2omdJQQQxBT95fP4Dhrqat4l60VDtKBS1Mwhh5ddK3bR0Onqq+AoPFuuQbPhx57NpNi1cahF4hdghnmxBszoQQWif1swc6cXv2eW71YWB61gvVMH3jlnXZg0lWCqacab97ag0pqlnDresK1QXyhggDKT9so4ESdzGwHZPeF8hWf2yeFgsZRr2nD6jzvDsLYQ0ISRV1ED.SDR6poyRpa9YX+4eNFUFSV2GQVWFppnXXhhodx4jeiddQhnJ9stbdSw6ZHlW2omdpjLoIUXm34FmmbsIIhZ3vgRBdDPjcPNNNRxvlbtNSZ8iSN1uPQVyLyLxF0XxFKYznQuRFmIdlY0pUoZ0pmw5jEVM24IT77EX0xxBUUUoRuDMOyjDvr7xKyku7kY94mmBEJbgJlZRUybQDbN46SPNonYZDJxvyyigCGR+98Y3vg333HIbpUqVmIa+rssYgEVfUVYEJWtL111REr2saW44EwuW9744RW5Rr1ZqcFqeSPH5j1touuuTkXoSmlhEKR974OyyiEVMono6Ne1Bd9iIuNHrfxW7hWPud8NCgcYyl8UTXu37mPI9YxjQRBmuuuz1Tcccw119LJ3SPLcbbLNNNrxJqvZqsFkKWFSSSFMZDc5zQRHvjW2b7wGy+w+w+AO9wOVZimMZzPlOghsgLYxvFarAat4lTrXw2I4lM.gww3N93aJccz+UPX2nw4WWqA8o6vQiyvt2RR.iiINJDCKSlelxr5ryP9zNXNkThO5QTbxK3iGKuVj0m6u+9ryNaittNW4JaxhKtHEKVTphWQFcdvAGvomdJCGNfffPRm1g4laNVbwEY4kWg74Sx2422WKJxd0iN5H1Zqsv22iUWcUlc14nPgBjMalw1J8z6K9sD5oLwoRIxt5Bjei0X3omf+tcHJXDQwFnonghhVRlgEEfaq1b7WeeBG3QzHWBcCH+kVDMye4185jHzymQmzgd6WmSe1Nz4Y6g6wsws0oLp8IjJeVrqVfbKuDYWcA752mAG2Hg.wfHh77IN5W9ctA8GRmspQmcqQ+CpSnmGlYyfc0Rja04Q2whfdINUhY9znYZPbXDACFwnS6gptFomqDJZZ30tG98GRnaRCtnYYhY9L3TMQU8CZbBtmzEutCP2JEYWYNrJlMI26ldOwTLE+tB+9upbSwTLFhIv0rYSN93ikVh46JHr7ls1ZKY.u+9.iFMhSN4DIoihvq+cEBCCYvfAuRAetH71jUd+dAeps+76cH5T7CO7Pt+8uOey27MR0mMoMQ85fHuWxmOOyM2brwFavsu8s4V25Vb8qeclat4PWWW1E+0qWGEEEJUpDFFFjJUJrrrne+9ryN6vfACHNNVZcSqu957Ue0WIy9NQ1yHJPpHu5Dc4uoo4qUgD.xhzItObznQxh6IJdq.JJJxLqYlYlgxkKS1rYeqKDk36+2SDwIJnwasxdiiS5hx9Cvq9w323XhFNJIyxR6fZZGTzzHbPeb2YGF7vefg2+9Dbv9D45RbfGnpgd0Yv552jze9svZkkwnPgeZhkNGQbwAIYmGgAI+8QgurZMJJPbTRmTFFk79iFaNRpZnXZfpoYhJuLLQ0xBEc8OJThWbPPh55pWG2W7B71cGh50E.TsSiZ17nlIGJ55D2oMQiFjjqc.J5FnUnHo1XCrt75nkM6uMj0cNE6N4wUQXpipFv3JrIT71zmcLE+JgfHiVsZIImRPXm3YQBaw7hHfx22WRrzEQHlfnOwmcRh9tHB6DYd1pqtJEKVTlcdBB6FLXfTQESdOiooI4ymm74yeFhcdcV1onoQRmNMYxjAaaaYVw0saWIYcBarWPj3ryNKEJTP99+4v4s8Ng0aNo0OKTLuvENDD10qWOFLX.4ymWRXmPIjh8kDqXaNVXgEnPgBDGGywGeL6u+9RxoDJkKUpTjISFpToBkJU5LpVWPz0nQij+thOmPEfkJUh74yelOmvIQD4Om32SrOKTw3qa9GB355JmOjnwFUTTjmWuHE1IHrS7u2oSmyP34vgCkp2200UFMAiFMRdMmkkEyO+7r3hKR974QQQQR.ovptEjCKZroG7fGvyd1yjGuDtDPbbrbNQW4JWg+s+s+Mt5UuJ4ym+clMGNvyi8acJC77wzPmT5FjxPGSccRoqgolFoz0PSXmrulumvnXb8Bn6HWZ0a.8FjPVbhJte6UYmggNyTHOKTNOYsRgt1zlQ7icHlS6GSmkD0MoVsC3wO9wXXXPgBEnXwhiy9uXIgcO+4Omc1Ya78eoEIGD3S1rYkDm+gBggALXPeZ1rI6s2tnppxFabEJWtrLBBlhe6gpgFl4bH67yP4abE750gQ8aQzwIMvQTbHpJ5nfFJnSnmG8pcPhUAqBAdtD56StUmmTYyf9X0k81NW7nfPBF5ha6tzuVCN8Y6Ri68XFbTC.vHiC9dCHVIlQcNAy713L6rXUoHoxmCiz1Xl6WNYWQAgD55Q+CaPiG7D57h8w6ztDEFhtsEiZ0lvQtn4jB+t8QQUEqJEP2xBHF21co816ilgNku1Fnakht0pi6ocHbjKp55XlOKNUJRbTDQdAbxS2F2Vc.EEbloDomqza818TLESwGG32OUuaJlheFHJ.dmNcnc61+rJW4sAwwwLb3PN3fCnVsZuyTt2EgSO8Tt28tGey27Mr81aKyfi2UPXCOmuvMWD9TbAfSsDyOtfvtid5SeJ+i+w+fu4a9FpWutLi094TVWpTonRkJr4lax+9+9+N25V2RlcAEKVDSSSBBBPUUkxkKy0t103y+7OmzoSKK1nmmGO4IOgd85wImbB.jISFtxUtBe0W8U7W+q+Ut5UupzxWlzJIEpRaxBC9SojyIylRQNRJ97hhcAm0hOqToBUpTQpJgo30i3vHhbcIn8o3t6ND1qGZ4yiQoRXLyLn43PbfOd0pwf6cOF9fuGucdAQsOk33PY9pk5JWEmO6lXc4KiVledhkhBCIZzHhFMj3giHr+.B60iv98IZ3fwjAFfhtFZNoAMcHJhftcv+vCIpaWHNFEqTnWrL5EKjrcWtLFyTE8r4.CieyUhmvJLG87mmjccGcHwdtIVc4BKiVghfgAQ86SX+tIj4EDfhlFpNYPuRULmedLqVA0T+7gH96bDEQTP.DE8RR3zOuZ5RJ7ZTPHppIj1EGCJefHsSZA0L84UepAOOuexLryxxRpxtyqvNwb250qmzhFmDWz0JSlQaWjEJlISF1byMk1FsfXLAILmmvNwKUUUbbbdEqG7mhvNaaaokQmISFYSpHd+hiEPhc0437RaV608L0Kxx1EOaVXunhO6jYCmfPJQSyHrDtACFHIFpYyluRVOKrzwYmcVbbbXvfA7i+3OJsXaWWWBCCk1Z4jVK24ybVw4yACFHOdIZhnLYxHyftIIDMJJBWWW4mQTnbw92j4f3O0bEBBBj6ySNmiToRQgBEdkLHTPHrP4eEJTfiN5Ho8rJZBvgCGJ2mZ0p0qz3jh4qMoaEzpUKZznwYH1Sb7oe+9r+96illlzY.lzxTWYkU3pW8pbyadS97O+yYsw4u66Jzp2.95muCa25TT0zvw1hJYSS4zNTzwlxNNTMaZRaZhl5qeMSgwwLz2mtCGQ6t8XX+gDEGOtYQdy1VdoEZqfggNky3PkzowwzDMUUlNyvOtgBebQVGb1l.oQiFXXXHUTr35MAgcas0Vb3gGxxKujrADxjIKkKWh74SFu3CUS9FFlLNX61mxAGbvXaL1apK57QFTTTP0PG6JEYlu35DSHiZ2lV9w31tMg9dnnkXMlZpFDSHAdCo2Q6g2+pK8OtNiZ0lJ25ZT9FqSlYKipgNJZucmiCF5R+CaPuZGyfZM3jG+BZ9fGSTfOEt1kI6kmm7dqxvVM4zW7b5d3AL2WdaJt45T8KtFNkKgY1LXlwFUi29RmG55wfiOgSdx1bz+5tL7nlXOSEzLSgW293OXHts6.pJDLpOJ55XWp.FYRipkNCpWmC+l6hplAgdtXlMKm7hWvvlsH1M.8zoI67yhW+93dZOba0gi9lGP3HWxuwxjpTtWlS2Su+XJlhe2goD1MEex.gRcDK9WTv+2UPzwsGd3gTqVMZ1r46krdRXMf+3O9iTud8WovG+ZwjK3WX2Qhv4dJlhOTPzA0c61ks2dad3CeHO7gOjs1ZK51sqrqwecPzs2yM2bbkqbE9hu3K3u8cC3ys...f.PRDEDU29ab0qdUJUpDoSmVVjmvvPRmNMW5RWhxkKKKXWlLYXvfA7hW7BTUUINNVVXwEWbQ9hu3K3N24Nb0qdUVYkUtvL.5sECFLfc2cWpUqFpppmISalrvfhBNVpTIVc0UYkUV4L42ym73sMGuhiINJJwFLqcHd6uGg6sGnaf9RKiwryfdt7D66gWsiXzSdJi9wGi21ufvSaAgAnXZgdwxjZyqh8MuIoVYELJUJ45PgB5BBHx2mXeehbGQzHWhFNZ7+8nDh47bIraOBZ0hndcI10CTTQMiCZ4xihtNpViuNJLjnd8H3jVI4lmkEnnlnnNccBz0gXHrW+DU2YkXompll+5smyeAH1cD9GdHd6sKA0qSr6vjiaUmkTW6FnlICgGWmnSOkX2QD66RbTDporQu5bXrzxXVoJZYx7aR10EEFRzvQDG3kzEuZ5n43bl7pKNdLod9dDop8AsywOClRV2mbv00klMaJUtkPMQmWgcWjkXNoMJJH6S.AgeWDQeBx5DyKdxqmmTwXBaPTQQQpjqySXm34R111Rhgl72RXYmWjB.EJraRKwbxrx674jm33w4UMn32JLLjffD0dLoB.EDOMoB.mLC1D4JqggwYTHlng+Z1rIGd3gr2d6Q850w00UR1mHi.mc1Yw11lSN4jw1I2Nztca49gX+UjqRWDgcSl8aS5l.555xr3UPro.hFSrWudzsaW4wYgBFE4KmHybOOlTYeh7nR76NoB6NuxImzRSOOgqSttqNc5PbbL6u+9bvAGHUwnfruYlYFVXgEnZ0pXYYgqqqrIKEjOJtNSjqtYxjQR5o3U974YokVh0Wect4MuIarwFr7xK+ZsN02VDDEwP+.N7zN7n8Oje7v5DhBVoLSHrKSxqJYSyr4xRAGarMMHktAlF5XoqgkgNlZIpuKJJBuf.F55xf9CwycDp5FIJp+s7Q3JJJXnqSNGaJXagkg9up70aJ93GBa2UXKuBEzljAl8PQQkb4xIUrpPsxP73wtbjYFYbbr7ys+9Gv1auM6s2dbxImP1rYkMNwjD1I98888nToRrxJqJaXCgpo0zzXvfAztcaYSMKZ..gsI655JyzxIedhhhhrgEEYcY974vvvbhL3tCAAAnqmzjksa2gACFP2tcAhY2c2kzoSStb4He9BR6DV7rxIUIbTTjzojRmNMwwwzsaWFMZ3374KBP40r82YBq6UD4.ovw4kNsxz5oLFiGWxHqC4VYd7GNjd6eDg8GQqm9T7B6PDAnFCpJpDGCAQA3OZ.90GjX2igfe+QDzeHCVYdLylNIW6lHO4DuhigX+.B8CHZ7eF56iaq1zYmZz+nF31pMiZ0h33PPEBGMBTJPtUVDiroYvw0IJLfv.eTMzH6ByP5YmATTPUUIQgeuMHN9LDF51oGnpfyLkQOsMCqeBgtdD4GRTnOd85Rne.iZbJlYSi8bEYzImxfipSbXLm7nWfQ1LzY+cwueeT0MHUXDCLLwevHZGuMtsZS2spgQ5znkx.ybYP0v3seaeJlho3iBLkvto3SFHV.rHL2eqsRseFHlz3wGeL+vO7CToREt5UuJkKW9c1uA7Rqp4vCOTlOEuq2OD1+SmNcne+9jNc5+PLAy20WSLE+xgnPYMZzf6e+6y2+8eO6u+9zsaWYgH+oNWYaayxKuLe1m8Y729a+MY2UWoRELMMOih2LMMoZ0p7EewWH6NaQQI+we7G4d26d7+7+7+PylMwzzj4laNtwMtA+0+5ek6bm6P0pUemPVG7RB6Z1rIyLyLDGGSylM4zSO8LEbQj2bKrvBbyadS1byMem143epg3nDk04U6P5+O9GDs+tnFGiwRKgYtbXTrDnnf+wMXvCeHCt62g+VufvSOgXeeTsrwXgkI0UuNo+SeENadUzKVTFP2QAADMbHg86QX2d3exIDTuN9GUG+iNjntcjJuDMMhFLjfF0IdznDU0UYFrtwMwX1Ywbt4QKaRd3E1oKpocHn9wD1oMJ5FXL2bnWnHJ11PTHi1aWv2GUcczKUhTqtBFEKghgwGbB6hFMBuiNLQUfC5CZ5XL2Bj5pWmL+k+B.z6+pCwdtD6GL1pOAEGGL2Xcru5lnWLeBYc+FTfwX+.B51gv9CfvvD6FUSCz0QUSKIn688Ix0ingCAcCHJJYS8C016aKY0SwuafmmGsZ0RRjg3YbhmSIHA67D7.ujrkKhPLcccxjIyERvinAsDMo0jDiM4maRERLIwPhBoJrpxKhPGwbqDDJdQJrSP.24UL24UHGbVab9hTMgX+RP5jX6S7Leaaalc1YYlYlQVPXw1PlLYjMzy4INSjsfO4IOgm8rmIcTCQS7r95qyktzkjYI6jmOOuEmJNedQycXx0qb9segp8EYf6jeVee+KLC6LLLHSlLjKWNbbbdEhaO+m+hxv5ymgcm2RLEG+DjtpqqK2ODWi0nQC1e+84QO5Q7rm8LIgmoSmlUWcU1byMY0UWkJUpPpTojWWNYNAJtNqXwhrzRKwFargTQdBRPymOuToiB2TPPN56BhqF5Gvgs6vVsNkcOsCG17zjh9CTyPGKSSrLMHiiM4xlgBYSSoLooTFGJlNMyjMMymKKkRaiigAQww3GDfmqG9iFQnqGpZ5IEP8MbrdEkwVpnpB55ZjIkIYRYhl5zLI5SczsaWdxS9Q777XgEVjrYyhhhBmbxI77m+Lz0M3l27lnppxie7iX+82WZYsYxjgkVJYsRUqVknnX5zoCO+4OmG9vGxcu62wt6tK862arcx9RGCYREUmPhVAVbwE4xW9R337R0CKFitd85bu6cON5nCINNlYlYVt8s+blYlYIJJhFMZvO9iOliO9XBBBGON8L.JznQC45+pToLe1m8YTrXQFLXHGdXMdzidL850krYyIig.OOWfXN8zS4a9lulc2cGxmOOqrxZb6aeabbbX2c2kd85gllJ4ymmEVXQBBB34O+Y.vktzkIJJjG+3GSsZGLtIU7QQQgYmcVt0s9blc1YAh43iavidzCoVsZLb3P.kwMhPUVas0X1Ymib4xclbccJ.UMMzSaQl4mgpe9MHbnGiZcBACGPTneh6lnlBEEUzTMHJVk3nH751klO9wL33Fz9oufLKLOomeFROWEbloLoJkmTYRiQVaLRaSbXDts6knxrNcS9yS6xvlsn+Q0wueOhiiPQQkBWYM75Oft6b.d85Sl4lkhqsJPDgttXWpHZZlnpqmXS9va+5.hiINJF+ACo2A0wqSObluJoxkkY9hqits0+e1687413LMKd+04FciLH.AXlhJPpjkbZt1a5C68C6exaUaUaU6dmc7X6YbPZrxTAlACHG5Fc59gFus.knrkkksF4Amp33QRDnCnwa347bNG59r8wq+PTL0wenCc2WiAGbHC16H7r6i4LEP2NKV4mA2lco2SO.YMM7FM.ECMrJTB0TVfSHcpuMs1aSB7bwJ6rXu7Jj+BKStkmC8zoR1O6TLESw6WXJgcSwuaff.fI2z2aSHJFQiFM3t28tTtbYlc1YoPgBuUJjuvpW52uexlw+0vW3ED10saWZ0pEc5zIov.SwT7aEDE5Zqs1h6bm6v8u+8eI6mZRHJjnssMkJUhEWbQtvEt.W+5WmO9i+XVas0R5fzW70onnfssMoRkJ4uqa2tr2d6w1auM2+92mc1YGTTTXgEVfqd0qxm9oeJW8pWkEWbwWY2p+yABaISTrMOOOlc1YQUUMQQghB1IIIkndvkWd4DK9bZtL7JPXHQCFRvwGynsdFNO6oD0tMlyMGxEmA4rYfnH7N4Xbd7lL7t2gQa9H7adLD3irkMZUmGiqbMRc4Ki4JqhbZaBZ2BuiOlvQdD5LLVIbc6PXqN303D7pWmfFMHraGHJB4z1HkxFYEkXKzbbV0E4CfDxVVnjNCxoRgrtVrBuTUiy9srtwuFEUTRaiTJSjMzIzwEIOOB51K15IcbHv1FEMMjSmAoeiJLPTP.gtt30nwyUWWTHJ4Kf9EtHlWZcTKVhfVMIbv.B50kn.uwYxmdbl.dt0vXkUP19cT10APX.QtiHzwIdeqg5mtfoggD46QjqKgiFEayXSyuto3sDD172KlgvBkcaYYclcnuPgcwJi34YX2jJi5rTjkvQElLiwDG2IUykH65DE9eRKSbxbEKUpTL2byQsZ0N07QSZ8lm00mfLnWjLx2zlnxyyKIi450qWx59EGKQ1uVpToWIgcBBmDjSVudcLMMIHHfm7jmvt6tK850CYY4jFz6xW9xrvBKjnjqWkkdNo8XeVqcP74oPMGhycgR1DqI+EyhMeee5zoCMa1LgL0vvvjF7Qn9sW0ZVD22Z1r4oTz1jOKjKWteRB6ljvSwyz6u+9.PiFM3QO5Qr2dwE+VSSiJUpvku7k4pW8pL+7yS1rYSrWbee+Dk0LoknlISFVXgE3i9nOhUWcURkJEoRkBSSSRmNcx0pv1TeaBWOONncW1oYKZ0e.Ccbv2yinf.FLVoEJxJnpogQpTXYkhr1oHusEESawr4xxb4yR4LoIaJSb88YuFsndmt3Nxi2jcmFOMTrsloqoQJccRoog5TUS76dzqWOd3CeHCFLD4wp9WVVlCN3.t8suM555TqVMTUU4AO3g7zm9jj4GhsKReJWtLRRx34MhCN3.t+8uOO5QOjiN5PFLnex64YYq+hu+CvfACoUq1333hkkEYxjgvvPZznAO4IOg6cu6R850QQQYb8Ezna2Xx.O4jSFSL19XYYQ1rYw00Aeee1e+CXznQjNsMoSayvgCQRRh50qyyd1yXyMeDNNNTsZswjHJQPPXxXH85ES12VasMsa2kYloDoSmgG9vGRylMQWWipUqRlLYYzHWdvCdHPDEJTbLgc2is15Y.RDEEO24fACIa1biULXDGd3g7vG9P1au8RF+TQQg4medRmNM4ymmvP62IOi72yPRVBEYULymkBqsLdc6S2c2CemgL3jiHvaDAQxHiJRRxHiDgQAD4GhamV3MX.tMZQus2mTUlAqYKic0RXVJO5YSi0rkH2xySTXHM2bKbNtIgAg3ztK826.F0oWrSkLxkQ85hlsEEu3EP01ld6tGNsZR2c2EjlC6JUPQWGMaSLKjGEc82XkoIr09fQdLpSWBbcwHeNROWERO+rfjD816n3FELJBYCcrJUD+dCoyi1B+gN3OXD54rI8byiTTcbZzDh.87YvrXQxrv7HIoPumsOCO7D5WuNQQAXXlCYUEzylFiroQV+29F7bJlho3sClRX2T76FHJlwuVgerXijc5zg6cu6Q4xk4C9fOfEWbw2JpuQTfDgp29055PTfAg0+ztcaxkK2q72+2Sct4Y0I2Sw6FHTZ18t283t28t7rm8rDKJ4rfnfe0pUKQQcqs1ZrzRKQsZ0doN9+EeshMfJHF+3iOlu669N9K+k+BO8oOEWW2wcS403e+e+emabiavBKrPRGj9KEhBkIxjRSSSxmOeRWrNYAXEV9z4N243BW3BTtb4WJqf9GA7ZkgWggD4GPPqlL5d2C2G8PFNb.QEJf9UuJRW3BHYmF+lMXvstMCt0sv892EuC2mnQNHYZg9xqg4UtJY9C+AzmeAfHFcPcFs813c3g32pEAc5PX+dDMnOgCFFmKcC5EaohEJg17Kf9pmCsxkQwJUrZ+N3.BNoAg86hb5LnjMKHKQPutDzsCg8Gfe+dD1tCgtNwUjSINuCPcXrErnoh7LyDWb3C1Go1sI7fCvWUEMM8eyHrKz0E+SNA2s2lQO9IDbxQHajB8kVA6O5iPu1b32rANO3A3s61D1oUb10oqiZkZXr5Znu54PuZUTR8Nl3YIh6ZVccjsSgjtdLIqRRwYb2nQD4MB7C.se6sCynw+LE+9CSRTyjis8pT1zjutIy7LAgXSZyWYxjIgHJAlzxGOKKPTVVNQIaStVOeee51sKc618T1UY5zo47m+7b9yedRmN8Kc9455ljwdSZYmSNG7q68oIs5xD0KOFhLkd6s2NQUbun0NlOe9SYIluJB6BCCoSmN7fG7.N5nivwwg50qyImbBRRRjMaVVd4k4S9jOgO7C+PpUqVRV+M402Yc9+i07fm05QEVo4qJuZisBt1zpUqSQRnllF4xkihEKdJKj7EgHyfO5niRrjUfScuQPX2jqmZRKE8rt+0tcat28tGas0VznQC1e+8oYylnnnPwhEYs0ViO8S+T9vO7CST8n35SVVNgDWw8QAA1kKWl0WectxUtxoH7UUUEMMsj7+8sMD1gY8VcvwyarcnoP337MMRJNW5B87vKHtv9MaHydpJXnohcJSxl1hrosIaF63lDafC0azD2vHTz0AI4Wa00EEEMVdcRnnphttFoz0vTSCk+AvcT9GczqWOdzi1jtc6jjm0JJJb3gGxctycvvvjO7C+Hz004IO4wr+9GvRKE2rgc5zgiN5Pd1ydVR8E1e+8392+9ii1irnqaPqVMQQQNtOylnwCd9OPqVs36+9umG+3GihhBkKWlKcoKQTTD24N2gm9zmxgGVGOOOrss4jSNg+3e7OxbyMGezG8wzueed5SeFMa1f0WecLMSQylsna235QjMa1D6sUWWOgfuc1YGFLXHoSmlJUpPoRESNuhhhvzzj4ladhhh3t28t355xRKsD111bu6cWN4jFjJUJ777Y4kWlACFxidzCIJJhKco0ILLjG+3MYu81mkVZIRmN83FcINiR2YmsAhU5X850wwwAUUUFMZD6u+dDDDvku7kIbbdGOEmMTRoic0RT3hqhyIMIxO.uua.9sFfePDxRZnpnijjJJJxw1SejDDDxn9cw2Y.CZdHselIp1oP0xDESCxs1xrz+1mC.a8+7+gSiVjd9ZD3OhFa8.jPlYN+kIz0mVa8TT5zg7m67XVHOoWrJ8O5.18q+yX8rJL2m9ojcoEvpRQRUJOZ1+RihhHhhBIv2GhhPyPGMSSPVFut8oyS2kd6UGMKSLKkmzyOKAi73v+5sHXv.76NfTEySt0VEYUU5cvdD5GPl0lmbmeYJt1J30c.cdvV320Ac0rDFEfWKGbNpMANid97GSwTLEuWhoD1ME+tAhNI9EyBi2lHJJhACFvd6sGas0Vb3gGR2tceqjkcdddzpUqDRzdamccB7b+f+41pyKZMNSwT7qEDExRjccat4lr6t6RylMOym2EEZKa1rTqVMt90udBgc0pUiBEJjX6T+XXRq9x00MoKv2d6sQQQIwdM+3O9i4C+vOj0Vasj7y4sAFNbXRttLZznjhUITkfHj2EY8hvVNWe80oXwhuwcP9j4dTqVsv00MwxvJTn.VVVmpPYuugHOeB62C+8OfQO7g3t2N3npQToRXTpHJZZDczgDt0VL512lf6cWBpuGgC5AQQHIqfroAR55DNxCuSNNV8b6c.id1Sw+vCHnUaB62kPGGhBBh61xXuQA4b1nVtLZyOO5yUC0BEQRUAo9CPMy.hbbHbPeBGL.u82mvd8hOuGMZ7e+PBccgvPPUEIMMjLzQ0LEZVVfgAgpp3zqGc1+.787PtaWr6zgh9AXWqZbdvIxztestOOZDiZz.uCN.+iOjPmgnVcNzVbILV4bnjJECeziv8oOkflMhsDynPjSkFskWEiKdILlaNTylK1JOeGAIk3OuQRBYUEjTThUOnmWr0XBw4tglNJYyfrgARZuaruyo32OPPLifDpyhvtBEJPgBENk0TN4qWPXW2tcoWud366mX8hoRkJIWVeQKwzww4TY6rPIE555XZZhtt9K0zYiFMhSN4jWhXGKKKle94Y94mOQw5B7hYr2jJ4SjwZhBMKf3e6EIyyyyi1saSylMSHlRQQIQMWau81b6aeat6cuKmbxIIJryzzjYlYFlc1YIWtbI1es38VL+pPgXhyaw5QN3fCRVebud8vzzj4medtzktTRVoMYNooooQ1rYSrAsIyMWg0yOXv.bccSxOpvvP50qG6s2dIVto.SZcnmEQTB0.NXvfWRUgSRh0jDvNYw2mzBOcbbRdtTQQIQwK4ym+LUXmP8eBKwbRE10oSG1byMQQQg1saS2tcoe+9jISFVbwEYiM1fKe4KypqtJYylM4ZSUUM4yCAwphFqR7rpkk0or7RfDa3TnxPgh7daYEci77nQ+Azr+.77ChmSPQFY4w9RIOmr0HgxJiBgHPVVhlJJnaXftoAorh+rz2O.G2QDDEghp5OaUaDEFhhhJlF5jMkIoMzQWSE4oyM86dHpOPmNsSxUTEEE52uOGe7IjJkINNNHIIwvgw+2pUqhssMau81LZj2XRzaj3hOCGNjToRQwhEYzH2w6K4kGyYxwOccGxgGVmFMhalAWWGpVcVFMZD24N2gCN3.xmOGEJTfzoSOlnwGQ61sY4kWFQTDXXXvryFaks0qWmlMaR2tcSZ9jzoSmLN4ImbBCFLj74ySsZ0XgEVfLYxP+98SHrOUpTTq1b.v1auCQQQzqWWbcc33iOlFMZhss8XEiGaCwsZ0hnnHbcisUyd8haxjRkJwLyTdrR1cnc6VzrYCjj.GG2jLwSLVebiv3hrrxqzJhmhXnnpfbFKROeEl4ZWh.ee7GNfVOVG2tcIzeDgQAHQDRn.HgjjRLwc9AD3OhnQ8f9fbS0XaEVUEoHIbt5U.Inyi2F2NcH0LEIRJD21sPQUG0TlDoRraqLbHtsaipkN10p.ZPqG+TBFMBMqTjpTArqTJN62TeyaHDIfHjPVUEMKSbTTvscWjTTPuPF75LfAGbLC1+PTRYfjtJkxcdB88Q1PCug8w2cHHKQ5pyRnuGHKQXjGZYsH0L4wbl7PjDQRfZJSxW4bDEFfSi1LpSW5ty9jpbAxL+rHmK8D6ecJlho38ELkvto32M3UEd8usQr0KDuHx82eeN7vCSrvleIPjcc6u+9znQijBx71FBhM62uOsZ05TYF1YgopQaJdaBAgYMa1js1Zqj7E3EKfo.hMis7xKy+1+1+VhUUJJX3YYaT+TGeGGGZ2tM0qG2InW5RWhUWcU9zO8S4RW5RL2by8JKX1aJ50qGat4l73G+3jBPVudcN3fCXvfAIE+wvvfxkKyZqsFe3G9gb4KeYxlM6a7wUXCmO6YOiu8a+VN5nivvvHwpoVXgEdqk6KuswqiZXCcbvudcF8rmg6S1D298w87WjvxU.GWbe7SvbmsQ6IOAoG8.jpuOQNwEfVBHxaD9mbLb26f2t6D+d1oMAc5PP2tD4LfHuQD46GmkY55HaW.k74QIWdTJOKFKr.JExC.9mbLgCFfeqV3e7Q3e3g3eXchbcP5Ao.Mk3tpOHNqzHvmnwE1NRRFIEIjkTPUUiHCCB00oipFGD3yi61k1ddnpnP0Z03pcZw7qeYRs14PqXIjD1v4uBHbzH7O9D7O9XB62CTTPs7rnO+BnlKKgCcvq9A3e39D5LHNmHjkQISVLuvkvZ80QqXbt6I8tpfFQQHophZt7D55RnqKQddDDzinQiPw1FjkQ1vDsh4iOO0zPN0uzNr8m243zLr62ePPrwYY+e.XZZRkJURxpqyRwV999ItivKRXmsschkXN47VhBJJxUtIsPwerLOSzfIBagTrlZCCClYlYRxfrIO+DmiNNNIGGAQOFFFmoBBeUJ7a3vgr81ayyd1ynQiFIpZqe+97rm8L9tu663+8+8+ku669tw4gTLoIYxjgKcoKw5quNYyl8TEaVPp0KlAaBR.2au8FSrxyyVtxkKyFarAevG7AbtycNJWt7ottEVD5BKr.O9wONg7PAgiGe7wb7wGSmNcHUpTnpphqqK0qWm+5e8ux28ceGsZ0J476UQr4Y8bzjO+HVWuPogh+sWbNTw4U61sO0dkDDdITk3KpTyIu+IrlRQAqEp9Ktv2jDMA999jMaV1XiM35W+5rzRKkPHs.555iKP9LIelHbJkiN5H1au83vCOj1samPHIPx+dbw3afkkEqu95u0HryOLh9ddLXjG9h0l9BjnKMw8XhfnwD1APHR3NxCO+.FNHNqqDeJDRrBuesgT7KJJLDYIIxYawrYRSVSSLTUPYpkX96dDqj5XkUJHkOd7BYTUURTnZb1OlmrYyvFabYxjIMxxxTu9gbxImLd9GOjjjGaOjwemuUqVb7wGmLGvjiaD+HerJgD1xp32SL9Z77E6vvgC4i+3OlyctUQVVgm9zmvcu6coQiSnUqX27oZ0Ywvvj0WecxmOO111355xSdxioUqX65sPgBnnnvnQiPRBJTHOW3Bw4e4ryNKRRRi2KiYRimTqVMrssSlqKUpTIMnnl1yalAgkeFOVRzXUEJkzz.W3BWh4med5zoMGczQimCrKxiyJRQiiDW2j34bJVrXx0xaql772kPRBIYvHqMEt3Jnjx.i7Y33u+tbz2cG5s+N351iH+PTj0QVREIIEjkjIRIhnHYhHddaBhGtUVRFBUPRVMNy3FAxR5XUpLQRQnFYSjSHQdRnnpQp7EwoSK5r6VDJ4SwyeNRWaNrKVFUaaxr3bXlOMplFwM02un8TM1ECRYhUkxz+fS3369CPD3MvMlz6Vcv2wM1VPcbQMcJLID87owysOAgtDhOlkxRfSw3r5KxGYSUjTkILLfHoPTynS5UmiYt9FD54wAe82fW+Ab329CD56ih1GFqHQMUjTlNmwTLEuOgoypLE+t.SZGO+ZSXmXiwsZ0hs2da1au8nToR+hJpNbZK9oQiF+povNAwlhtrqUqVuxbC62SXpcX92GPP38wGeLas0VI4bxq56roSmlkWdYt4MuIe1m8YbiabCpUqFYxj4M53K1rokkEyM2bIjWc9yedt10tF0pUCcc82Zj0I5ndAoY0qWOIWc1d6sOkBWUTTFGP7wmOqt5pTsZ02nM.JFSrUqVr4laxst0s3O+m+ybvAGfggAKu7x366SqVsRrTzWGkJ92KHJJhvf.bZ2htO7gz3N+.G7jGyIddzISV7kAk5GfY+9TXmcn3g0oXyiwvY.xg9nRrsVguG9saR3vgwuu99D4NjHOWHHHNyyh8lS.h6lS8XRbjxYFdN3...H.jDQAQUYgrpBgNCH7HOhF4R3PGB6FS1WP61D1tQbtt45FW3MXbQ8BgvHhPPNSbgOTjkQRQgPYEbTTocTDOwKfG46w8c8nguGpgAL2AGvPGGZOXHKKKSwHPKaVTLLd6RZ236yA86i+QGEmoeNNHophRlznjwFBiHreOBZzffVsHxyCIYYjLrPoXQzWX9Xqvzx54pX62ZDEQTP.Q99iyjPmXBYG4ESRmsEx5wVLprgARRxHYXDq.yeircT341gYTTzTGr48XLYdt0tca52uONNNbu6cON4jSdIKO222mACFvQGcDO3AOf986S974Sr2vWkkSNYthITF0jpwVzfJhbk6rHrSz3KSVXJAgHBKhTnBKCCCxlM6KQ71jJ.Tbr788OkUTdVYrmPYWSZiigggLb3P1e+8492+9r3hKxvgCw11ltc6xCe3C4V25VbqacKd1ydFCFLHQ03KrvB7AevGvku7kIWtbuTw1DM.jfvIw5AEjLItVDVp4JqrBW6ZWiqbkqjnXkIeOsrrX4kWlc1YGt8suM6s2dIEyc3vgb3gGxO7C+PhR8LMMoWud7fG7.9q+0+JO3AOftc6l79IHD6UYIlB7hWWBh3D2yDWCYylkJUpjn.PgB6ZznwoH2SPj4jD3dVEpT740j2+DV+ofvNwwtToRr5pqxUu5UY80WmxkK+RjQqqqSwhEOEgcBU3HxY3acqagppJUqVkzoSSTTDsa2lc2cWN5ninc61TqVMpVsZRlh+lVjUwXuiB7omiKCbGEuOr3onO86q3+uXsAQw5oHZ7f3gQQD56eZhNTThUrQruC9ZdVEyXWXX.JRPQaalMWVxZZfwKPz8T76S77LwT4TYL2Kl4bwD9mBUUEpToBYxjgCN3.Z1rIc5DOOTXXDoSaS1rkoToYHWtri+Na75dh6Wnm+r4jJz0zzfYloDYxjEUUEJWtB4xkabSjzkffPJWtLKu7JDDDPiFMHHHVMrttwDTjNcljwkJVL1ZKGLnOGbv933LL468ZZpzsaOhhhHc5zL6rUoVsZjOed777nSmNnoEqvNMs3LbsPgBTsZU51sK555IGyXa2M9Gw8KUUkDqVVz3K55FTt7LTsZULLLvyyiiO9XFMxkTorX3vgzpUyw+4TjKWNJWtLqt54R1W2TE18S.IITM0QVKOJ5ZnYkBcaajUTQ8don6daia2ND4GRXjORIFQb7ORPhUnJGofhrNJpFHqoE2TkQxnpXfYt7fhL5lYwu2.76NDobJjYwEPsoMi51A+d8QOSFRWsBVyTBMaSxNWUzRairt1ab1087q03+GMSSrqNCCpOCMz0wsQa5t0dHqnPjmO51VnlwBqYmAy7YQwTmrqt.xlZXVJOF4RSpR4gnHxctkwscGRWoLl4RihlFpVljpZQjTTn7Uu.QQgLpeG5t0d363vviZh2.Gh7CHRUgoyXLESw6W38iJyMESwOBlLr6EKJ7WChtl73IB98m9zmxRKsDm6bm6W766fACXqs1hG+3GSiFM9UMK9DEG5jSNgFMZ7JIr62aja86sqm2GgvZWN3fCXmc1gCO7vSYITSBIIIJWtL+K+K+K7O8O8OkPnlo4adFXI5j7ye9yikkEtttI41hn6ueatgKAA4c61k82eeFLX.27l2DYYYN5niRr0JQGeVnPAN+4OOqs1ZjKWt237wTTb2c2cW9e9e9e3q9puhG7fGjjqLO8oOkm9zmlXwnarwFTtb4+9hvtejuuFFDvHWWZWuN69MeCO3u907MO6Y7jACo290wabAOyDFx79dbgn.tlhLyq.lRxHoJgaXH9A9D1qKAx8i2HXTTLIcggO+3K9uRRIa.Kz0kvCqi+A6STX.LlLH78IzaD36QnmG3MhH+QDE7hikOt67GWfOYIITkjPSQFcMc7jUoSX.ObvP9+Zzf+V29r+HO5E5iTXD4NtIOpYCtYql7+qrLaDFR10VCYgB1dKUDuvf.BGND+1sYzg0InwID4MBIUUPVlPOe7a1fQGcHAsaSjqyX68TG07EQc1pnlOOxoRAuCyfwnwYSWPut3cbi3bIraGhBCPwLEpkJQXlLnXZFqBPUUjCEVm46fuSLsHruWCQlk9zm9Tt8suMas0VzoSG1YmcXyM27kx3sNc5vctycnSmN7ce22wpqtJ23F2fye9yyryNKxxxmxxIEMzkPcAoSmlBEJ7RY4pvZFmjvtfffjWyjD1M47LSpDKOOuD0UoqqiggwKMO4jpqqSmNIN2fXdMSSSrsseoreSSSi74yeprWSrN950qy2+8eO862mJUpPpTovwwg81aO1au8RTmdPP.111L+7yyFarAexm7IbsqcsyLalEElcxBq9hqKTTf3ye9yyMu4M4C+vOjKdwKlnXuIQ5zo4BW3BbxImvW7EeAlll355lLu9AGb.+2+2+27vG9PpVsJJJJIq+4oO8oIDhNYdBNIghm04+jJEQ.gCcb6aeaFMZDewW7E344wxKuL+6+6+6bkqbEJTnPRF1c3gGdJqNUPf6jVS4Ygy576rt+ITV2m7IeB23F2fyctyQ5zoeo2WAgckJUhzoSm7bkPkhau817e8e8ewcu6coVsZXYYQPP.sa2NoYuzzz35W+5bsqcsDGC3MsgqhhhvOHDWuXB6F55RnePrhwkN60gkX8nw+ojgtkRrNS4Wlvuel6EIJLl7OUjXlzVLa1XE1oqpfxz4J9G.DyB7oy6RoSQVm.RRfjTbtPFq7NY.owMOXTrhbhHIKHEpy6LOpieMQQwi8jKWNt3EuHKrvhIDukKWNZ0pExxJDDDhttVBYWxxRDFFQv30+FeNKkbtaYYQsZ0FO1mF6u+dzoSmw4omJP7q0zzLgbNw06yOmedN6IHhKV0gisv1j6KRm50FS5yy+pX7+lbx8DQ1ZFOWQNJWtBMa1jG8nGQ2tcIWt7rzRKypqtJKszxI6eZJA5uFPRBYEYzRmhLKLKpl5XVJGYVddp+WuMsdviYvQ0YjaOhH.H14QjPAYYUDD2IqngVpznmICZoLIzyGEMChTiPOcZj00vZlRz2OfgmbBxlpT5Jqi+vgb3e81HEnhrhFlEKP1kpgVFKzrshITT8sTc.j.0TFjtZY7G5xnVcissyV8vajGx5ZXWYVJr9pj+BKi0rkvevPpbiqQ1EW.iBYI87yh0LEQ2JEy8+ymfW29jc0EvpxLXjwFEcMxetUPVUAqxEQVWk49rOltyuO8d1AnaaijhLSCxtoXJd+D+cTk4lho3MCSRXWrWh+qqB6DGud85wN6rC6rSrMP7lBWWW51sKas0V7vG9vjfg9Es7l2VPn3mQiFcpBq7hPX8QKu7xzsaWJUpzq06uXwphhK0qWOZznACFL3Wz4snPAht.dxN08049jnXSqt5pjISloKp9cDDJrqYylb7wGSqVsNUFJJ5RzzoSS4xk4l27l7oe5mxG7Ae.yO+7uwJqS.wlSEphUzc4OeysucetvwwgCO7P1c2coa2tIGaw3HCGNL4bPWWmzoSybyMGyM2bXaa+FSdXud8Xqs1hu8a+V95u9q46+9umiN5HFLX.RRRznQijtSWn.vKdwKxbyMWx2udWCIIoWpS.STrXmNb3t6xy9a+Mt+e61b2G9.91FsX6gCYX853O9UlQQlc0ToogAirsnWJCVvPibJxwjjEAd9iHTvMG7i18gQAgD5LDBCHbzn3rZy0gHeuwVYnvVrhKxgjrLnpgrgJRJwjbgrLHIG28lxJwpQSQAEUMTLLQ11F2Qdr6wGx8a2kuuSWteyVz1O.2wDIdT+9bTuNLLHjTorvWRhMrRQECCjSkJtaSiugEa4lSP5nj3b30AddDzoMdGdH96uGgsZDmCboyfRt7HqqgeiF3s29DztULgcQAHomB0xUPu1bnlKWrp0dGSXWjuerEp1sCA85RznQfpxXB5zF+4xX6dJopquilmXpsX9dMDJTayM2j+xe4uv8u+8GWHxVzrYyWpgrFNbHas0VzrYSz00oQiFTtbYpVsJkJUBMMsSsNWg5nDD3jJUJxjISR1hIvjD1MYF1Ixds74yeJKwTbL50qWR9q8hDuIx8tWjvNwwRjgYSZYmh7Q6EUXmvJPmat4nRkJbvAGPqVsvwwIw1O60qG111nqqmPjX+98SZzLgsTJVqvFarQhR4eQLY18ItNlzhREWiyM2bb8qe8DxlJWt7YNWrXcxBEdUrXwDKAMJJhNc5vCdvCX+82OQ8Wc5zgACFjrekfffSoxiyhXSAhs7tBLyLyjP15nQiRtOs2d6giiCZZZ333vku7kSxNtLYxjPjbylMOUi5oqqStb4dIBeOq6eBxWsrrRJLu3YYMMMrrrXwEWjabiavMu4MYkUVghEKdl2+DJdrPgBTqVMpToxobJk1say8t28Xu81ihEKhooI999zueeN4jSHLLj74yS4xkoYylLXvfWxVX+4ffvP5OZDccbYvj6m70Xn3WZsiiatm2NiiGEmgcxRTv1hR11jRWCkWvlNmheeBw3uAAATudcTUiIRRzbuwi0IxI0PjkCSdtHNtAhUUsgg9XUkAsZ0lffPFNbPRLbXZZdl0OIJJNWNUTToXwRrvBKPgBEwxxBYY4jFFoYylTudcRm9wDEAMa1Z7+t8XKAV6TD3MY1hlKWNZ2tE0qWmd85NQFhKgiiCGbv9HIIQkJURTkmXrOgZeihXLojgiabaILMMSx8yiN5H1e+8v0cDCFLDccsDm2I1BmAAAfh5JHKKkLtlPc6850knnHrrrob4JLyLy7R4k5T7S.IITz0PQSEUCczyXGqrMMcLykm1O4YL3nCYzfN365RjW.hMpEEERDgnHEghgFpVFnZpiOfjpDQ9gfjDZVlXWqBgd9wMTYTD4VYdTzzHbXbcGrlsDolIGlExhl035JEKiu2ZWpxZpnmylLKLKANWB8L1z4Y6Sf6HzyXS54qPg0OGoWnBlYSiulFyr9ZLp+.Tz0wrPVLxlFMKSl4pqSfia74qcJTLzPIkIPbtbaLVgdJFFXlMK5V1HqphdF638ZN8wyoXJduCSIraJduGSZEOhNy8WaB6.RrrmCN3fjht+lrPstc6x8t283a+1uk6bm6v1aucRlV8qElrancbbNSEIlISFVe80w11lKbgKPud8dsVLp32w00k1saylatIe4W9kI2idSgnnLm6bmiKe4KSkJUdkc36YAQ2KuvBKPsZ0l1Ibuiffr3ACFjTDwIe9axLq6e9e9el+ve3OvMu4MSxrt2FPT3HYY4Xa03k5Xy2dnc61bqacKt28tGgggTnPAzzzXvfAIDlCwaXUT30BEJP974+QKb1OFBCC4vCOj+2+2+W9i+w+H24N24TValHn0a1rI26d2iFMZvCdvC3y9rOiadyaxUtxU96mvS+E9LQzH.Gt+97k+w++3a+huf+1cuGO6f5zv0k99ADLQdwLRRhAxRzZnC6ObHOy1hOMaFtnkIynpfoLP..gDF875xclOIDEQj2HBZ2fPI4XU3EFBQiUj23em3yYIjjkPR2Dk7EPNWdTxjAISKjzUQRSGEcCTFaAiQorHLsMQVVfgIc1eOdze5OwcO7H10Ofldd3EFQnvB2BBo4PWt6t6Qmu3OwAiFQpRyPtLYwnRkDB6hBBhypM+fwY3lxXKe70K3wCbbYzQGyns2lQ6rMAc6frUZzlaALVZITyliQ6tKi1dKBa0jPWGHJDEiTnVaNzWHNi6j00e2kccvysDyf3Oyj0zPNaVTrSiR9bnjNCJVVHqn7NWcaSZGluoqqXJd2hgCGxAGb.O9wOlG9vGxlatYRFx444kjYqhOaEVUX2tcQUUkBEJbJkmKVylXctSpL6eLkuEDDjLWqqqaRifMox1xjIyoT1jfTQAYch4HMLLvzzDCCiWRQdmkB6hUXQLAOB6JKa1rmZdMgMVd9yedN24NGGczQIYwlXdpVsZQud8NkJCE1vnkkEyLyLbkqbE9O9O9O3i+3ONgrtyZ9KAoXB6LKSlLzsa2wYkjTx5Lu7kuL+g+vefabiajP1zY88PAQaBqrdgEVf1samj6eBRLEjLIIIkPPmvBp62uOAAAiKndr8l9pxBoToRwhKtHqs1Zb+6e+D6sTzzfNNNIYQknwBEjBFEEkn1+IyHaw4RwhEoXwh+n4wsPwIhBzmMaV5zoSh0yYaayRKsDW+5Wm+ve3Ov0t109QsoRweW1rY4hW7hiKVebQwEeNOb3vjyaQg4EeWPjIfCFLf1saSmNcR9dvaBFEDP6ACoQ+ALv0EeuXKs7WhGh81a7aITUTHioIYSYf5uBMX1T72mPQQEKKa771kae6awie7ljKWtjXsHUpTIi234MBHl.JgU056GLNu2LPQQlACFvSe5SvyyirYylLe0LyLC99duzdpiI1axFEQ4TYOpscZVZokv00ku4a9Ft+8uOoSaiiiCllFTtbEJTn.FFF366mnzaGGG1e+CX+82KIuJcccQSSmrYyirrThU+t+96SwhE47m+7jMaNbccna2tLb3PjkiGWMHHdbAGm32innHxkKK862OQk6B698jSNgRkJQXX79OccGkLtY78NQlyFj3XICFLLoYVbbFxvgwi6jKWtwp.T6WkF+720PRBYMULxkl7maQLymgRWYM5s2gz8Y6RyG9D5s093bbCF0qK9dCILxivHOjQAziPwTAIcMj78HDOB7Gg+fAXVHKYVZNjTTXv9GghgAoJlmLKNKoJkmHhvpRQLxldBKvT5Wz38m8kXrcHalOCEt3Jjd9JT9FCHzO.YcMzrLwLWFTsEYLmBYWdNB8CPRVFYcMTRYfRjN4WcdhBhecJppfrD5ggXjwN1tQSYhjhbrUYZZfYwbHIKiQNw03eGru9oXJlheVXJgcSw68PrAdGGmjtV8WSKwDHoPBMZzfCN3.1au8XokVJImH94.gUX9nG8H1au8nUqV+pe9Cw22bbbR55ZQWpIVnonPJYylkkWd4DaQ50YgnxxxLb3PN4jSvvvf6d269yRMbmEDVmypqtJe7G+wr5pqlb9957dNYgUJVr3zEU+NBhMPJ5B8WTccoSGuwuadyaxm+4edBYc+RyHxWD+VQFU+98SxtNAQb0qWmCO7vjrLRj4KhbHRjsC+bK5TTTDCFLfiO9X9ge3G3q9puhu+6+d1e+8oe+9m56IwatMHYbrNc5jrA5nnHtvEt.kJUBKKqey+dh37TQQINS2F+cbQl7s81aye669N9hu3K36+9uiGs+dbR2dDNtCamDd.NRRLvym19dzOHjHjXXXHqaYvrZpnJAZHi2XR69QuZiBiUT23+XrZ0FqRKEEPMNGzTLMQJkEJ4xgxLUPsXQTykCoTVHoohrtNxFFnpafhoAQVV3aaQuvHNoaWdxwGwcbb3gc6wwtiv4ErTS+vP7CC4vtcnoyPrrr3StvEnVgBT1zDaQtW0tMNauM9sZGSTUJSTKTD074PMWNTRk5rInJJti9CG1GuCNfQ6uOAsZRTXHpUph9hKhRlrD55h6VawnsdFAc6DOGQpzw+NqrB5Kr.x1oiu27tb71f.BcFRnqarcWlICp4yiZ1rHmNcLIluEsRzewHZZdq99LDquxwwIIK2dcrpOwZrzzzRTwzjulIILQQQg74yyLyLCEJT3TJk6EgH6wDpJuXwhL6ryxLyLShMHJJVoXMgh7pSWWGUU0ji0jVWn.hFAQXcllllIV5b4xkSNVunBtDDGt7xKyG7Ae.dddXXXvN6rCc61MY87BxkTTTRTHmkkEUpTgUWcU9jO4S3l27lr1Zq8RjINIDDOlOedVXgE3fCNf50qiiiCFFFL6ryx5quNezG8QbkqbEVbwEeobq6r9LKa1rboKcoDRWEDzMZznD0aHHXLa1rXaamXelGd3gLZzHRkJEkKWNQ8+mEgclllTsZUN+4OOW9xWlgCGxlatImbxI344kPlkvt6D4wqX8tSphuBEJjzDTkKWlZ0pQ4xk+Q2Civ5LqToBqs1ZznQijlLLUpTL+7yyUu5U4i+3OlM1XCle94+IWCg392FarQxd3LLLnYylI2C888O0dPzzzHSlLTrXQpUqFqrxJjISleQ4WG.i7C339843d8ouyH7CBd2Kz4nXc+qpohooAoSYfktNpJSK75+n.KKKVZoknWutbvA043iONo1GkJMCUqViTorvzzfBEJfppVx7MVVVTnPgwiM+bk4cxImPmNcRFeJSlLiGeOShkAK99lPYutttXYYmLmfXb1rYyv5quAAAgr81aQ850YvfLXaay4N2Zr3hKR4xyfjjL4ymOooOhmuY.sZ0hCO7PZ0p4XR1xw7yO+3wvpygGVe764.RkxLYdhToRQkJkOkheyjIyX0u8b0+oppQiFmjzPCllljOedpVsJoRYM14SlAY4XE4Ilm0xxBaa6wpTOVkd55FXaG+d1uee1byGkXMyB6T9MsgA9GUHoHihhNoz0vLeZrqNC4VdN5t3bXOaY57j8n+d0Y3wMvsWG7FzG+QCP0xjzyWiTUmA8zVHICVUlA+gNnZYfdFaxu1hXTHGF4yhYgbjpbArJWDyBw0TPVUA9ENuwO8EX77bplFnXnCyjerxsiF6pGRmZ+GJJJHqm8TcPp37Sd748Kd1pZEOWdx0glJpl5XjM8y+6eKqbvoXJlheavTB6lh26gf.fgCGlXgO+VP3knykqWuN24N2gBEJv5qu9OaB6DVlW850S5z1eKJTmnX8CGNLIaSDc7K7bKpv11NwxffW+tE0wwghEKR850wxx5W74qXiGkJUhEWbQN24N2OaR2DESxXrBSlRX2u8P7b2KpDVQwjJWtLe1m8Y74e9my0u90eqprteqgXroFMZfuuOW7hWjnnH95u9qYyM2j50qm7ccwFhqUqFyO+7ToRkeVikH1z8QGcD+4+7el+ze5Owsu8sY2c2MgDtW0qKHHfiO9X95u9qoQiFzrYSN4jS3S+zOkEVXgeSI2NZBhJDEcTnJggCGxSdxS3+7+7+j+xW8U7nG7f3wMGN3LIqax2SOfNdArYzPZ46yttNzyOKWOsEKpqgsrLQgQDDEQzOwkZDDasjRis6RSKjsrPxxFkb4Qc1pnUc7OkJgR1rnjxJtCPUFu4vw+HqHCJJDIofhrDGcvA7C26d7ke0Ww27C+.atyNz+GwxkEEsowQGyi9tukZ1owrRYLyjABCwYqso8+0+EtO9QwVpU1rXrxpXbwKR5qbEjpV8LUUVTXHQdd32oGi1ee7qWmnQtnXmFiyeALVcUhB7wau8v4A2GusdJQtCPxHEZyuDlqeYRcgKhwbyghk067MIF54geqNDNb.JloPNscLgkV1Hoo92Uj0MoB6lh2OgPo3EKVjkVZojhSJFa6rFOcRq4ZkUVgkVZoj4A777RHwqRkJr3hKhkkEEKVjEVXAVbwEISlLuT1lIV2TwhEYwEWDIIIBCCoVsZr3hKxryNKVVVIiyJlOPSSKgLLeeez00SHVKe97uDgcBqr111lYmcVVd4kSHdob4xr5pqRsZ0dIB6DV8VsZ03e8e8ekpUqx7yOO+s+1eiG9vGljwsBROMMMoXwhI2CtvEt.W6ZWiKbgKjjeY+XyUopphkkEyN6rrwFafqqK111355RoRkXs0ViO5i9H1XiMRHA50IWWymOO27l2DEEEbccQVVlc1YmDKmVnfsEVXgjlgIJJhFMZvlatI850iLYxvpqtJyO+7I2ieQXXXjbd1qWujyMIIoDqzWTHaaa6j64FFFIOSVqVMN24NG850KoggVd43rXZ1Ym8G0NrE4r6JqrBe7G+wI2S60qGyM2bboKcoDx5VXgEdIBmeUHa1rbkqbErssISlLr3hKx8u+8Y2c2MQAgSpnTQA8O+4OOW6ZWiKe4KyEu3EYlYl4m8dvlDNd9bXm9bP6tz2czKYce+VinwMNirrDZVVXmwFKSCL0zllcc+CDhGe4CIc5Lb6aeaZ2tURCBuzRKkrmgToLY80WGYYkDkSKhR.YYojl8nQilDFFxt6taxbK4xkiEVXAVZoEO03dRRxjKWd1XiKiuuOyN6rujk8lOeA9vO7CIWtbb6amliN5HTTTnRkJr95wiEjKWNbccYs0VKooADi+CP2tcne+djKWdpTYVt3EuXx7cO6YYILLXbSvDaYtSl6klloX1Yql3NKCGFmsk55FXXXP0pUGuOmiRxt00VaMVXgEnRkJDFFx0t10PRR5TMxPrEaF6XIGe7IzueepUqJ.TrXQ50qG28t2c70lCPDKrvhSIr6MEisre0TFHqnfZJSrqMCkuQOba2C2lcvoYKF1nMNMZBRRXUp.YVYARUJOZ1VT9FWi.2QjdgZXWqDJFFjOLjQW47nXng0L4QRNVUewGxWO2F4sy023z2SBjkTPDBCRmAQZmZNGoWweOm4uxj+x77nW8suxAmhoXJ9sASIraJduGSlaFBkhLopc9073JBv86e+6mjCGkJU50ZycgggmJKFNqbM4WSHHSH1O1isfFgEW.jzUtuoPrAaaa6eQuOBLYVsjKWNJTnvTUx8dHDc.9KRLsooIEJTfKbgKvG8QeD23F2fEWbw2Xk0IduEEA8EIrZx+7oCrcoj+6uDU3444Q+98oc61IpUnVsZmJuJg3Bf466mDl6arwFTsZUrss+Yc7DVG1idzi3q+5ulu4a9lDUJ7iAAoXBx9DetHJ7muuOkKWlzoS+Kt60ecffHcQnuy3BL2pUKdxSdBe4W9k7m9S+It0stEMa170N+PChhsSReuH5FDRDPdUULUjIihLlxRnJIirbLYIQHrqtwala7OQxJDonQjtAJVVHkIKpklINO2rsQoPQzqNK5UqgV0YiyuMSSjeEE8MhSqLxGr4l7W+lugu86+dd51aSywc.8qBQQw1UT2Nc4Ia9XVrZMVt4mPoJ8Hnaebdxiw4t+.tO4AwJryxF+FmPP+9wVzhuO5yLCJ11mZCiQAADLbH9Mavnc2kfSNFjjQNeQzWZIzJWAuSNFu50I3n5D1qcr04kw.sZyiwxKid0pn9bphRG...B.IQTPTkO+yySu2EXrUXF53fe6VD5NB8YJibpTwVfo4adwcmho3UAAQUqs1ZnppRylMesZ5IgslsxJqvBKr.oSmNgjMAYKezG8QTsZ0D0ZUtbYVYkUHWtbuzbVhyiKbgKfjjDm+7mmvvPJVrHW5RWhEVXgjBmJF20zzjYmcVt90uNyN6rIVnY5zoY4kWNIS8dQhAEGqqe8qS974wyyKoQTVYkURlWax0CJNlYxjIIazRkJEkJUh4laNpWudhkRBjzzVyN6rrvBKv4N243hW7hToRkeTk0IfvhNqToBW8pWEKKKVXgERJ.7xKuLW4JWIoH2utEdU3HEAAAzueexlMK6ryNINlgooYRylcgKbAJTn.999zrYSle94oe+9XaaS0pUYs0V6UR7jf.1YmcVt7kubhhCWbwEoUqVIyaaYYQlLY37m+7L2bykTf8LYxvFarAlll333jnJuYmcVtvEtvOYiBI1Wf39m34hgCGlPD3UtxURxf2WWa8dRqVUUUkhEKR0pUY2c2kSN4DFLXv3LlRJgzPwm+arwFr3hKRgBENU1V+l.WOeNraOp2tCCbbILHXhFz4cvdMFSXmjpJV1VjOSFxXZhglJJxS26y+nf3bgbow6OOhlMisASKqTIiIVrXQzzzXkUVEIIojFwnRkJjKWtwVeqN11wDVMZzHJVrHCGNDcccpToBkKWgJUpj7ZEjIjISZN24NGgggTpTILMMO0XsB00pppRTTDGe7QDFFQ4xyvFarAyLyLIpNWz3rBRwDJ6a94mi74ymLNoXLjToRMdrcnWu9jISZJUpThZfymuPhC7D+6IkXGyh7SMc5LI0qQVVhLYxP0p0nb4JjOerZmVas0Fq12bisNTkw1H7H5zoSR1eZZZlzPDMa1jiN5H52e.sZ0lgC+02gm9cOjjPVUEYUUTsLIUobDFDPnqGi5OD2N8voYWba1lvfPzrSgYwbXjKCZ19LyUtHgA9jtVYLKjCszVHqpPz37uSRQ9c234PR1lJIk7G9I9c+kd7lNOwTLEuuioD1MEu2COOO5zoCGe7wbvAGvwGe7oBS8esfHOHDEIuVsZbyadywAy7OMQRhPhWjWHhti82JHH5TbNzsa2DKk3sADDB91jDxoVD1uOfPEASp1fb4xwUu5USx8jkWd42XkYJduEpEPXGUhi8j+HHHJwtIjkS94EUqvOGLb3P1c2c4vCOLIvxEEwLNiEbHSlLnooQXXHUqVk+4+4+Y97O+yYlYl4m8wqSmNb26dW95u9q4a+1ukG8nGQud89QeMSZsThrfYznQ7fG7.FNbHNNNbxImvm+4eNqrxJuVV51uDDEEghhx3NiUGjjRFSbmc1g+y+y+S9+9+9+3d26dzrYyeViyKAHKIgrjDp.88C39CFRJYIpnphshBYkkwTQdbNwEugJIYEPVgHUUBUzHxzhvLYQpzLnM+7ntvBXtzRnlu.nN1pKSYfrgIxloPRWKg3wy7ZdbA5O5ni3q9puhu7K+R9hu3KXyM2Lwth9Iu1jjX3HW143iYm50oe+A30pMtO6o3t4lDztEQiFAQQD1qKdO6wDMbHgCGhe61j9i+XLSk5TpLKx2mftcv+nCwa2sIncSTrrQa1pnM6rHaaQvy5ieiSHbj6y+trtApyLCZyVA4z1wj08NbCiQggDNZDA86ie61fmGg4y+N6740ESmq68aXaayJqrBkKWlqd0qlXMhvONgch4kDJK3Es.vKcoKkTjUwXkhbOSTT1Ie+isjryQkJU3ZW6ZIiYpqqSlLYRxKMwqQWWOofrUqVMQAVh4CE1q1KpjMg55VYkUHa1rIDrLoELJTW2qJa4zzzXlYlgO3C9.Vc0U4y+7OmACFjjAaheGKKKrrrRJZpXdzWm4pewiyZqsVx4pfnqrYylTj3WWHdemat43e8e8ekO3C9fSYomBqjT7itdb9JMZzH9nO5iR12fHu+9oVKtffPQi9zsa2jqCQd3J9LVzvMpppTpTI9rO6y35W+5mZcQBaB01190ZO.hmqJWtLW6ZWKgTRg5UdQE375.gknO4yq862O4YfWzxUEe1KNdhro5WBb77nd6tbTqN3Nzg.+.jUeG0XfiOjgAgnnIQdaKpjMMYSYholJxRSsDy+QAwD0mJoQBFMZz3lsSAEE0DhoDiSCjPdcgBERxMSw+tppJW4JWl0VasjwVMLLRxoTw3oBREDY6YTTThS7L43shw+Djn455BPhsJaL1h1EMcqH2LAXlYlAKKKle94IHvGccCrrRQlLYSHuOUpTiUIm+XaxzfToLQVVAee+jy+3+qNggQHIEedonnhppF27leHiF4BHHLzbbt9EOVrPk4FFlnpFeu022Ga6zHIIywGeL0qWmRkJkzLBVVVINQTlLoIUJyeU2iz+PBo37eCCILTUPyxjTEySfW0j8LJqqgZJChBin3EWFhhhUomt1yG+V44Mi6TLESwT79DlRX2T7dOlj3KQ3z+aAwWhBqLXv.1e+8Y6s2lCN3.VXgEHSlL+ja50yyi1sayImbRRtW7agx.EPPnVud8nc61zqWOJUpzas2eAYI999SK93Tj.QAWDa3SrQuRkJwktzk3xW9xIEh5UgII7S7LlfXtff.FMZzoHFSjIOvyUvfPIYhiufjcQQPSmNchkq7lPb2fACRFSvvvHITxm7ZWn.AgUzr95qyZqs1OK00IT5a8504G9gefacqawSdxSRx3hWEDabVjEMYxjII2I2d6sY+82mu4a9F788QSSCGGmDq5Zxri7rH87MAh2KYYYRkJEFFFDDDPylMoQiF78e+2yW9keYhx5bbbdsdekj.YjvTVlriIlyRNVsbM774wCc4hVinjtJRZZnGIwvfPBkjhsSmT1XjON+4TSmEorYgr4PtbYzleNzmedzmaNTyj4M5ZdxLG7K+xuju9q+ZdzidDGe7w+nuVgxJRJNfDb3fArSiSn09++ydumOGG2amq6Smlo6IhYvfbFfPjfjRhhJ569Z6y8rqyor+K1UYW1mZepxt1VosjXFfDjHOXxwNGteXles.oXVThDT8SUrXBSOc2SOcX8tdeWGisrLt6rMAGrGQC6CgAi6V+.h7bwe7eWRUcjS3xkEkb4Qd70sh77Hnae7Z0lvNsIx2E4YlE0olBIUUB5O.uSNF+Z0Hx0YjXeJpnjKOZUpf5jShhtN7Vd.mKbWWnoEQhngURJtKaeWimlafS37GhYy1DugDG9rET8U49zRkJUrK2dYPDahFFFuRMNh3Z4utayhq8JDiSDSYhjnPbcFgivecajlm78YlYl40Z47rVt4ymm74y+X2mgP3x2jM7hPTtBEJvBKrPbzHKtFpvg5O40jEa2+Z4U83pW2kqX6Rb+dBQGN6b46MAQi+kquO8GLfA8GhqsCgA9HI+ziLse6K7qDQQiZ5DEYYJkKCyTr.EEB1k3vt+vvYeVo7uf607Iazfm14bNqC2dQHI8ymu4Y+y73mW8YgXjTbVDulm00aDWOpb4xuTquOs0SQbR+73YEAw4xkiIlXBJUZBFLX.xxRwyTyzoSypqtJSLwnwYfPjwDdCijznYMmpBJoSwyqUZT0e5thO4rkIjPBmWI4pJIbtGQrR1ueerrrhe3teuPH7V0pU4QO5QL2bywJqrxKTvNWWWZ1rIUqVklMa96lPiBDE52zzj986GO+7RHgeK4rEDTHNV974Y5oml0We83YyyyhyJRmuuerKQEe22xxhd85Q+98iiwjZ0pwvgCiKhlmmW7qWUUMVfcwvUWDSVhX47UIZrDXZZxd6sGUqVkhEKFWDynnHJTn.YxjgNcFEqMqu95wtwHa1ruROvmHlWdzidD25V2hc1YG50q2i4fwmFhHr4ZW6Z7+5+0+KVZokvzzjs2da92+2+2Ymc1gSN4Drrrnc61b3gGx+y+m+O4hW7hwwZ1KSABeUPrrxkMKo00wwwgCN3.91u8a4a9lugc1YGZ2t8KeiMHAJRRjVVloSkhMylg4SqyjZJzx0i+6t8nlqG6a6PQMUbiF8PcUcbIPUihoyP4olkY9vOhRarAFyMOolnHnpgjdZTLLPxv.4WiYrnPz4lMax28ceG+0+5ek+5e8uxN6ryKLFSAhi.Hcc8QQXpiCsGNfia2glaeO52pIJ6uObxIf6uTbyHWW7qeJtObWrt2hHmIC5qt5iIXmeutwtySRKEpSOCJSLAAcaieq13d+cv6ji.OOPMExYxfR4xnVoBJEKhj1a+43QjuOACGPfk4nG5WSC4ToPR8sqy+dgjHZWB+AFgvLOYzTedY1C+Xw57X90Dw1uLueZZZuwZfl2U3raWm8e6M81WDihMaOee7rsw0xh.WWB78GMqYG8NGW0WIIo34LZ75gzYVXuQWyhPUQgRYyxT4yRAccRoplLC6RHgeiQzTDKu7x7EewWxjSNIGd3AXZNDYYYlbxI4ZW6ShmirkKW9MVJEkPBIjPBI.IB1kv4bDyZogCGxvgCiiNmeOQDsjsZ0hCO7PN4jSdgcsaTTDVVVTsZ03gp9vgC+cUvtvvPbcciEryzz7202+D9iIhXeRWWOdt2L4jSxBKr.qrxJL2bygttNvOKpgPfNOOOrsswzzLd1K1oSGpWudrCUsssYvfAwykQgKVssser3tTrrSkJEEJT.EEk3yeDEEwRKsTbmot7xKyDSLwKUA2DBJJDNzxxJ97A6t6tb3gGF6rtfffwybhUYiM1fRkJ8RKLnvIN850ic2cWt8suMau81bzQGgoo4yTrNw9bQD99m9S+I9pu5qXokVBaaald5owyyib4xwt6tK862mc1YGhhhHWtb333vhKtHoSmld85EGEVhHOSDCOuJESSrtJ5f3TicWW0SNg6bm6vW+0eM+3O9ib5om9R4rNIIITjjPWVhhppLcJMVyPmKmKGKomlITU4.aG1ywgNggzQRgG5GQ6PWbB74HSab0zXxTFLWXDqqavJUpf1pqfwTS8qxgGhsWGGG51sK6t6t7se62x29se6Kky5DwA1ryNKW5RWhb4xQmNcnVsZb3ANzrWeN8A6RqlMYhlMPseWjdJBbFE3CVCwuQcbOXezlYZRM6rwy7sfgCwqVMBZ0FjkQYhxjd00H0Lyfe+g3Us5Hw77b.YEjSqiZkoPctEPcpoPMedjzd6eKlQ9ADXZSjmGx55nXjAkLFiDs6sr6+ddHlsgIjveT47rnS+dutedde0yieu1thhhHX7LxyHcZxmw.aOejb8FGUzPXXzn4fjznyOKIcl4a6nU1ytl+quePDQysrLZZpTHiNEMzIcJUTeG9ZWIjv6KHb19jSNIevG7AimYfFzqWORmVmolZZ1byMG6ttWbxJkPBIjPBI7pxa+pojPBulHJXsmmWrfcuMDbRH7U+984jSN4EVTYgPACFLfCN3.1au8nYylXYY86pXiOofcINrKgeOPLSaDyAgLYxvryNKqrxJr3hKRkJUhm2Ah3PxzzLVbtVsZQsZ0nZ0pbxImvQGcDGd3gzsa2Ga10c1B8Hx4dwLuob4xjISl3XETWWGWWWpWudrH5UqVEXjf7Yyl8kNZLCBBv11NdFNnoogttNc5zgu4a9F1au8vwwIdFNL0TSwVasEW7hW7EF0MmEw49ZznAe+2+8wK6Nc57bcfV5zooRkJb4KeY9m+m+m4y+7OmYmc134VwEtvEHe97boKcI95u9q4N24Nb3gGxCe3Cwxxhc2cW9pu5qnPgBr+96iqqKkJUhEVXA1byMYpol5WLeifQMet3WO41wYcom134HQutc412917sey2vst4MY+82GSSyW39EowyotLJJLidJ1vPmqkMKePFcVUWmhppHKEQJI3JEKxAQQ3pqytQfksEsMsn1vg3KqPw.XACCNobY5jKKTrHJiOF508AyOqPq6ryN7ce22w+8+8+M25V2hd858Be8555LyLyv0t103e5e5ehhEKxMu4M4m9wejFMZf4vgb7d6yIsyRFeORE3AgAHQzunw+iBCHxwD+50vudcBcbHJHjPGW761Em82G+F0QJSVRsvhXb4qfRg738C+.AcZOZl8kMODDfbghjZkUI8ZqQpJSgR1rH+1NZfBCIJvmHGmQyzhRkPsPQTxW.4zoQ5czYMRhPcIjPBI76Gh62LslFKLyzzwK.01co6fg353fqiK9ttDDFRX3HWuEIIyHg4FemMR+rHdRRPjPztwyArwuSuRNvSRBjUTQIUJzSmFcMMTRDqKgD9ckzoSyzSOM4ymikVZI777QQQlzoGM2NEO+TBIjPBIjvaZRDrKgysHDbpWudTqVMZznQbQx+8DgiZLMM4zSOkZ0pg83YkySqyPEBLd5omxidzi3fCNf986+6tXiB2IJlic+VI34a5tiUTv6yJLSBmePLmCJTn.SLwDzqWOTUUiE5ZvfAXaaSXXH111zsaWpUqF0qWm50qSiFMnd85TqVs3e0rYSbbbhmSASLwDjOedxkKGYxjI1QeFFFTnPg3YSmllV7LkSLKJAhm8b23F2.CCCVbwEoPgBwNH64gHhJa0pU7.ZOUpTzsaWN7vC4niNJdHkqnnvxKuLW3BWfkVZoW5YJg38oYylr6t6xMtwM3N24NTud8mYyBHbu1zSOMW8pWku7K+R9jO4SXiM1HdVvLZXtOZ9wTrXw3XWbmc1gCO7PZ1rI23F2fnnHz004vCODWWWlXhIXs0VCWWWVe80oRkJjKWtGORvjF0o3ROiXyTL65PRhFMZvt6tK+3O7CbiabCN7vCoWudOWgLjjjPBFOq5TXtzo4CxnyUxZvUyZvp5FLY5zjRSCWYErxKyVSqP9TovNcZZXZyQmbDGZ6xo9A3F3RFIIZe7ILHUZLkjHTQAWeeVas0hEk7U87OBGgevAGv28ceW7Lqqd85O2WmX.2O+7yyUu5U4q9puhu3K9BjkkoZ0pjZbjt553vvtcXXjO9pLpHhOs8ah+MeeBMMIzzD7CFOy2rvuUa7N5HBZ2Bor4PYxJnUoBRppDZYSfo4nkspJgggHoogR4II0TUPNeVjSk5sajSFEQTXH36MxEfggHmNMxF5HmRajXcuCesinnnDW1kPBIjvuCHzUKugAaL6TnkNEyzsOsFLfACMY3PKFLzDSaGr87vyO.+wymvvfwMJV33lhQRhHIoGe12M92kdLw6d9Hl2pJppjJkFFozPWKIJLSHgeuQ7bhYylkJUl5s8pSBIjPBI7GHRDrKgys366S+98oVsZr6t6xAGb.VVV+tudH5LSKKqXADDB1A+RAqrss4jSNgG9vGxCdvC3niN5s55sqq6uYNT7M5Ll3Lhzkv4WDyDfomdZVbwEoa2tztca1Ymc3F23F355RgBEv22m50qy96uO26d2i82eepWuN850CGGm34PmjjDYylkomd5GyoWB25UrXQLLLHUpTnnnDOzyUG6jKwbxwxxhlMaR4xkoQiFwum555r5pqRwhEYiM13EJXmX10cvAGfuuOoRkJVLrBEJP4xkiERLc5zboKcIVd4kYxIm7Ux0V862ms2da9we7G4t28tb3gG9bOOhX+9FarA+u+e++l+t+t+Nlc1YiEqSfXexjSNIW+5Wm0VaMZ2tM28t2k+xe4uv8u+84+6+2+uXYYgooYbrhtzRKQylM45W+57QezGEOKBEB1IVtxxx+BgRDttLa1rLXv.1d6s46+9umu9a9F1d6soW+9O+u2OV3LUYYlPSiOvHMeXVC9p7YXC8TTPVlrxflhBXjknBSPtRk4hUlh4KMAtYxvd0af829szzwC0gCwZvf3lvne+9zrYSZ1rIc61krYyRgBEhOF5UAKKKN93i4F23F7W9K+E9a+s+FsZ0ZzLw44rMlISFVZok3ZW6Z7m+y+Yt10tFKrvBbxImP2tcoUqV333PpnHHJZbIAkFGeWgw+Yfwh0M5mivHjkkFG6WRDE3OJNLa2B+ZmRP2NnkOOxoSSjuOQddD4XAtNPPHQd9DYNjHiLHqohhQlQNq6sbQEiBCIxyiPOuQqy99PP.DDNZ8NLLda9cMdZGGjbcuDR3O17rdlhD90irjDoTTnRtLnqMKqUoL1ddLzwkdV1zbfIm1sG06MfVCMoyPS5NzjglVXaZgmqKAAgDFERX3X21EJ9bZ7L2S9mExSR5majoQ7jNu6m+rVQQlzozHa5TXj3vtDRHgDRHgDR3OLjHXWBmaw22mACFPiFM3vCOjpUq9RMei9s.wLIpc61wtrqc61jOe9ewLoRTv1G8nGwwGeLsZ0BWW22Zq2BmMIb0zaZ9sn3BIEu77KJJJjMaVlZpoX80WmlMaxidziX2c2kb4xQ0pUIe97DDDP8504vCOj6e+6yImbB850ivvPz0GECIkJUhJUpvzSOMUpTgxkKyBKr.arwFrvBKD6jNg.cOObccoRkJ333v8t28nUqV7nG8HN7vCY2c2kkVZIlat4nToRO2iocbbnVsZzoSGz00iEgSRRhxkKissM999jNcZ1XiM3RW5RL8zSSlLYdo1+EDDDGEl26d2i6bm6vwGe7yLNEEw9YkJUXiM1fO+y+b9rO6y3C9fO.CCim51hjjDFFFXXXvjSNICFL.OOOtwMtA999r2d6QqVsdrWi3yFGGm3eWL6+DyBPgizjjjhcOjXFQnoogkkEGc7w78+s+Fe628c7vG8HZ0t8y87RR.x.YjjXRUEVKcJtdVCtVtLb0rYXV8zfhJRYJ.SNEASMMJUpP9ollzSOMlYyPuvH5fDx55DMdcKLLLNRVGLX.VVVXaaSlLY3i+3OlkVZoeV.xWgO2Z1rIau81bqacK1Ymc33iOlfffGK9VE6qD6axkaTL77QezGwm+4eNe5m9or95qS5zoiceXud8hiB0PIHjn3t9WRHh23N1ej.mJHIIiRlbnL4TnVdRjSoQjuOACLIraOBGziHWajjG84mem1D43PPmtDZZQjq6n31LJDYEEjylC474PR8saz.EwXA6FKRmjhxHG0EEAgAPza9qykPBOIhFL5rm+5rMIxq6xTD8yuIVduqgXeVPP.ttt355huuOxxxjISFzzz9EMYx6SHlYudddwyTWEEkQy10Todg2Gy6JDFF9Xyc3nnHRkJU71gx6XwQrXt2lIkLYRoAjE.7BBXnq2nnxt+.ZLvj1llzZnIs6Oj18GRmd8YfoElNNX64iqmO99ADD3O18ci99ZXv3mGJRlHowymtXM8d7llJJZz0vTTGMygymQmBFoISpDA6N2QDPz364U7Oc1+RBIjPBIjPBI7L37wc9mPBOEDB10pUKN8zSiiEu21qO0pUi6e+6SkJUXs0V6oJX2QGcD6s2dil4PlluUmcbhhR666+FWvNQQURDsKAAhYI2zSOMW7hWjFMZv96uO6u+9zoSGLLLPUUMVDbKKKFLX.tttHKKSwhEY1YmkkVZI1XiMXs0Vi0VaMlZpovvvfLYxPtb4hcUmpp5KUwgTUUIe97wQNX61sod85XZZxwGeLGczQb4KeYBCCetEHUbd.OOu3YCmnfUyN6r344wN6rC555r1ZqwktzknPgBuz6+777nc61b3gGxcu6c4AO3ALXvfm4OuHVK2Zqs3O+m+y74e9myJqrBFFFuT6WDNYVDauOqs6986yctychm0fMa1j+9+9+dRkJUrS6drHjTLyXRmlIlXBbcc4gO7g7299um+5e8ux8t28X3vgnpphmm2yzAZR.ZQQLkrDendJtVdctddCV0Pm7ZZDXjC4YlCokWC4MuHpKr.omnHQYyhe5TvPSN8vCoU61zpUK51s6ScF.JNu896uOMpWmACFDGopuL344Q2tcY+82me3G9At0stECFLH9yffffGa6SDgoSN4jr4lax0t103O8m9Sr0VawryNKoSmFYY4XAEGLXvnHBVVFOIIbCCIjPPNBBFKVGimsixpHoogblbntvBnewKRpMVG4r4Hx2mPyADNrOQddiD5SVlHaabN3.B62G+5mRX+dD54BQgnjNMJEKf1jShRwIP5Mzr7308b7BA6B88GEoXYFMO8hPhvf27h08q8ZQ+h4836ohQ7GIDhNEDDfuueb7cKb48qinSmUHKgH+BwbdeQDKw13vgCoUqVzoSG52uOoSmlEWbQJUpzKUC3bdkff.rrrna2tznQCbccQWWmBEJPkJUHa1QBI8t9m0h6CpSmNTudcBBBnXwhLwDSP4xkekh+62lnHKS1TZnonPQCcVtrOtdA336gsmOcLsnVuATu+.ZNXHMGXR6glzcvvwM5iMtNdDD3SPTDQQgDFFfvt6h4emzXWtKlAdvnqgIKoRtrFToPdJkICY0SiZhfcmeHBhBkHLJ9u9y+WQLxMlIjPBIjPBIjvyf2OehmD9CAAAA333vvgidvHSSy2pqOhYSzomdJ26d2iJUpvTSMEkJUB3m6bVgnd0pUKtv9uMQ3vNSSy3BA8lriseWuvBI76KBWIIhXxlMaxd6sGlllwBv655FKLlnfjkJUhxkKy7yOOW3BWf0WecVas0XkUVgkVZoXmb85d7lHVFKVrHKu7xrvBKfggAMa1jSO8TN4jSnSmNXYYgtt9unfghyG0ue+XwSlbxIwvvfiN5n33wTSSKV.p4laNVbwEeoKdUXXHCFLfCN3.1d6s492+9b7wG+TiBSYYYTUUYxImjs1ZK9hu3K3K9hufKe4KSwhEegCHceeerrrhOe1Mu4M43iO9YNuMcbbhipzff.LLL3BW3BLyLyPpTo9EMtfvYHZZZnqqiooI6u+9b26dWd3t6xomdJoRk5YdtHwLmImrDyHKyEMRwml2fOLeVVOWdlHWdBKLA9yNGZqtNr5Z3u5ZDTtDtJJ3EEhskMmVuN2+gOjG9vGRylMwxx5o1.EBgKqWuNGdzQTsZ03BGGM1wKmsXLmccNLLj1sayidzi31291r81aS0pUicK5S9dJb33ryNKat4lb8qect90uNexm7IL+7yillFgggXZZR2tciOtTVVlLExSwkWg7YyfxvdHYahjqMRggHonhT5LnTnHJkLmMNyA..f.PRDEDUlD0JSg15qORvt4mCYCc761AuF0InYSv2GYUMjylETUvuQcBZ0hfNcHzbHQdNHmJEpUlhTKuBZyLMp4y+qRvNgChDWu7kRLLgyAGWHynvPv1lv9cASaHLDTT.jHRQl.F0s6RmsAUNy6yS6cTrdDu9blOuex0wm057y5bSBgrkkjdrs4jqbd9EWW23Fcne+9DDDP5zoIa1rTpTIxjIyqz0qDNVpe+9b5omhkkEZZZjKWNlZpoN2HjyKBgXcmbxIwQ8bmNcnb4xnnnDes22GErKJJBaaaN8zSY+82mc1YGLMMob4xr7xKiggQ7myuqikkEGd3g7nG8HdvCd.QQQr5pqxZqsFYxj4bifcxRRHqnflhBYS8yWWKJJhvnHF55QiAlzbnIsLsF47tgVzpeeZ1oKcFLjgV1Lz1EaOuwtuyCe+.BCBHbrHdQgRibCurDRgil+pA9dHmNEUxmk4KUjxYyPlToRbX24MFqAajzOGK4QxLNoCdqtlkPBIjPBIjv63792S7jveXHJJBee+3tW9sMhNisVsZbyadSJWtLW8pW8W7+KlGRc5z4stXcvO2Ir850CSSSbbbHc5zuyEYMI79EYxjgkWdYbccwxxhImbRN3fC3zSOkNc5fqqKpppXXXPwhEYt4liM1XCt3EuHW9xWl4medxlMKYylM1sXuIJVoXVuID0xwwg50qywGeL0pUiEWbwXWRbVbbbnQiFwBwqnnDKXWsZ0hKf6vgCQRRhLYxvDSLAEJT3EJdF7yErsc61b6aea9we7G4QO5QzrYymZj5JFP5qt5p7m+y+Y9pu5qXiM13kRrNXTA2N4jS3F23F7+4+y+G9oe5m3fCNfVsZ8bmUdtttznQCN4jSnVsZzqWOxmOOoSm9miCywtMIc5ziDxKJh986yd6sG6u+9LbbyW77NutDfFvTxx7Y4L35ExvGkOKymKOpEKi47KgxEuDoVaUjmadBxWfAxJzpaWp2qKMa0lNMaxIGdHOX6sY+wNd9EIRzfACX2c2kEWXAJVrHoSmd77qI3WHXmrrLQgg356y9Gb.e8W+07S+zOwQGcDNNNnqqGOGQEeFJ1GUtbYt90uNewW9k74e1mwFarASLwDnoogjjT7wkUqVkVsZgssMoSmloWZYtve++.qTtD41aO3nCPt5wnD3AEJg1BKg1GbQRuxpjZ1YQqxTnVtDJYyhbpTDNzB2C1G+SNFoPejxjC0JSiZgh3UuF9saSnkIg1VHYODIsII0E1jLe70H0BKfR97ilgculHb7sqqKNNNibRzK5EEEAxxHooMxccddP+dPiFH6XihpFJ5FHmMKx5owSVBYwmyiZy8GaY83cAeTrfrgh4n5YEn8LyU03eWrNcVNajmE+O8ytrPVVFUMsXGFId8m2Ef4OpHDrPbNMGGGJWtLKt3hbwKdw3Ya5K68YIt+wiN5H91u8aoQiFjKWNVd4k4ZW6ZjISl2KNVwwwglMaxctyc3e8e8ekae6aSud8XyM2jYlYFlYlYdoiO5ySHZTgd85w8u+8469tui+q+q+KFLX.qu957Ye1mwRKsDyLyLuy+4bTTDc5zgadyaFeMOUUU9xu7KQSSiYlYl3FY77JRRRHCXnowLExQoL53DDfqW.t99LvwYjHdCFRqglwNuqyPSZ0a.CGZhkkEtNt346Sv3lTILX70PBBIv0E0rYX9B4YsxkXxrYFOC6d29y+DNCR.JQfVDRZfjrDPDRZRi96RQIclSBIjPBIjPBOSRDrKgysHJrmmm2ajnbTHN.LpnABg.eYECTHf3fAC3zSOkSO8TFLX.999nnnD2czMZzf50qS61s+UM65DtSAFI51qarZ566Sud8nUqVzrYS50q2iM2odWiWkOSR3cWRkJEkJUh0VaM788oRkJbvAGvQGcDmbxIXZZRpTonPgBL8zSyBKr.qs1Zr95qy5qu9uYE7Q3zNMMs3HGTDqSMa1j986+TivRaaapVsJmd5o344EKPE73maHHHfYlYlXWAJlwcuHDm+3jSNg6bm6v8t28nd85wws4ShggAKszRb4KeY9jO4SXqs1JVfomGhyq1nQCt0stEey27M78e+2y1auM862+4dNKIIo3yilISlX2P7jy4MQgpSO10cMZ1jiN7vQh01sabzaJ9t9Sa6SWQgI00Yy7Y4ZSNAeXwBrP1rXTrDVyNOdqsNot7Uf4lCaccbihnuoI0Z0hGc3AT83SnUsZzoYSFLXP75tpp5ysfn111bxImvQGeLa9Ae.EJT.aKK777dLgdDyNPaaapUqF28t2kac6ayt6tK850ifffXmjIlIUQQQicTZJpL0Tb4qdU9jqectzVawTSMUr3PQQQLXvfX2KHhNsbEJPwomlo2bSpr3hnVpLAkJQjQVh7cQY14Pc00H8VWlzqr7nHrzXTwu8ihHx2G698vo5I32oIgpZnju.QYMHfH76zlftsILHfHYoQqOZZvzyByMOg4KfuhBQAAfu+uTzpWB788imopBA6fmRMsNq3XicWmjpJDDPj4PX3.j52C4vPT0kQQBTTUQVQknf.jrsimwcDF93Kuy7mecDr6kkmTvNMMMXrK67dxHp9c7hzmviiooIGbvAbyadSt6cuKNNNr3hKRXXHKrvBToRkWIWhIDrqZ0p7C+vOvgGdHSN4j366ylat4ugaI+9hHxmO3fC31291bqacqX2p6559d689IDryzzjpUqxCdvC3N24NXYYQ5zo4BW3BuSzfeuHDWeZ3vgwIAvcu6cIWtbboKco2XOu16BHIIglhDZJxOl66.v0OfdNNz0xl1VVzwzlNl1zd3PZzc.s62mdCFReSK5a6foiKNtidd1.eeB77PNTkr5oY5B4Y57YIW5Tnoj3ttySHmBTm.TmUhTsTPNsBQQPp4kQsBHmGjd27QsSHgDRHgDR3c.RDrKgysDFFhiiSb748qECCClat4PVVNVrsW5H45Lb14LhkkE111nqqiqqKMa1jpUqxwGe7yzYLurnooQwhEAfd85EWz2WUbccoSmNTsZUN5nihinOcc8W60seq3raeuuV3l+nfHxFKUpDW9xWlUVYEFNbH0qWmG9vGR+98QWWmRkJwBKr.SN4jwNp62xXg5ryzQgPa862m1saSmNchEg+IQ3nhpUqhppJoRkh1saillV77gbvfAnppxUtxU3C+vOjIlXhW50KgvOO7gOj6d26xidziv11FYY4m528mXhI3i9nOhO6y9LVd4keocVmXVq8vG9P9O+O+O4q+5ulCO7vW3r1THBWwhE4hW7h7QezGwFarAyLyLjNc5GS3MgXV555zqeedv8uO29N2gNc5DKZkrrb79smlnc40SykldJ9zElmqsxxr7zSQPthLnREBVXQXtYQdlYYnhBs5zggCFfusCsp2fiezdb5QGQuNcHklFW5hWDKKKtyctSbTf9rN2rmmG851k1sayvwQw7vwyXw3nLTRhToSirjDsa2le7G9A9oabC16QOhtc69XhtIhEYwqUUUkb4xwzSOCquwFrxJqLxQIQQ3GFNRrnvPZ0pE25V2hadyaRiFMvKH.MccLJTfzEKh1ryhb97DN6LDM+7fe.JSOMxSMMRyLEgEJfi5HwqB88Iz2mHeeb5zEmFMIvzhnb4gIl.mnPnaWBN8zQwgohLQYyAggDlIGNFFHoohWTDJddD55NRvtf.jNqi0dAhNI99l0XmdKhW0myKXzxTHxZTDXYA85.dtflFRo0Q1HExoSgrp5nY4mkMD3Sns8netvnGORLOi.b+B2y8jQm4S65POgK8hQR5Y1L8BQ6DQ.qHRPi++e16ER3cPrrr3fCNf6bm6vMtwMv22GOOOpToxyrIKddDDDfooI0pUi6cu6wt6tKyM2bL4jShiiyazXL+sItttzsaWZ0pUbiTL0TSwBKrviEknuug34FbbbXvfALb3v3l8Ka1rjKWtWXyj7t.hygKhG7gCGRTTDFFFL4jSR4xkeoaRoyynpHSgzoQWSkxYMv0ODO+.r87vz0kdV1wNuq4vgzbvPZMvjtCFPudCv11FeOeJOQAJkKK4RR8jyknX.oWTB7UPqfA9cF8rCpUzIylxjpBH+9+WGRHgDRHgDR30jDA6R3bKBA6bbbdiHXW9744RW5RnppFWzdaa6W4ksX8Z3vgztca51sKJJJwQl2ImbRrScdZE9+EgPnihEKxBKrP75piiyq7xB94Hwrc61znQC5zoCyM2buVKqDR3UAYYYLLLvvvfolZJhhhnWudL0TSwvgCIc5zwNr62iY2hnXSCGNLtfYhuOaYYEKjySdNAwOS+98wyyiIlXBxlMKc61MtPqhB1lISFt3EuHas0VjOe9Wp0off.52uO6u+9r6t6xImbRrvOhYhmn39ZZZjMaVVZok3pW8pr0VaQkJUdgEISzjAMZzfc2cWt4MuI6s2dwyTvWTgBEQv47yOOW8pWkqd0qx7yOO4xkKV.hvvvQhYMNFLcccoQ85b26dWt28tGMZ17wNet307juOF55rv7ywGs0V7garAyuzBXTYJ5Wn.9Em.oJUHxHCCkjo+fAbZiFzsYSr62mFGeLO592GqwNkblYlg0Vec5MNRNeQ366Su98oa2til6miuFj33BgS8DmyeP+9TqVMpONpTccbveraYFNbH111ih8QYYjUTH+DSvJquNWXqsXoUWkhkKSfjDCccQVRBOWWF1uOGr+9bu6dW1c2coautnpoQkYlgoVXALJWF4xkwuXQ7JVjfhSLZl3LwDDjOO9YLvCIL60m98Gct+HeOJZXfdyFHMX.xQgDjOGAExSXTHLrOQcZA86BFFfrLQFF3Wr.g4xQfVJT87PZv.Bss.WuQhi8JJXWv3h8dVQyeF+vi9cg6Mih.GGjF1Go1sF4NtxkQROEjJMxxJHE3CVgPPHQ9dfiMQd9+x0Sd63jaQbnJJLqPr520KReB+RDMBUsZ03zSOEIIIrrrhOGwqh.aQQQ3337XKulMaRgBEhE6+8kiQDMHSud8hcW1JqrBW3BWfJUpDG+0uuwYazugCGF2fLBGqaXXbtXt8IddDw02DhImISFJUpzKciCcdGYIIRopPJd7iUCihHHLBSOO5ZZSGKKZaYQ6wy+tV8FPyNcYnkMdAALaoIXtREofgdh65NGhrNjZFIjU0PsTVBLGcdZkbYH0bJnNgDRodAKjDRHgDRHgD9CKu6e2+Ijvy.Q2nJJ34uVJWtLe4W9kib8QudzqWu3Yj2qBhB92pUq343T1rYwwwgZ0pQ0pUoa2tOVbe8pfppJ4ymmYmcVt3EuXbDB0saWfWcmmEFFhssMCGNjAicLxqiPhIjvuVDy1skVZI788iiIteO5HaQA5sssoUqVwBU8jt57IcylX1xEDDfjjT7bERVVliO9X51sa7bJCfBEJv5quNqs1ZuThPJNOWylMYmc1gG7fGP+98i22nnnPPPP74RxlMKqrxJr0VaE6bwWlY9iqqKsa2ls2da9K+k+BO3AOfvvPld5oi29N66yShttNSO8zbgKbA9jO4S3xW9xTrXwGat0IJrrgtN9ttbZylr6t6xct6cYmc1g9mwwYOqFkvPWm4maNtzU+P97++9evVW7hnlKKVYxfutAnNJJScLMoc85ztYS52oCMqWiiO7HN7fC3nCNfxkKym+keIat4ljISF1c2cw119Y5fRAhFbne+9XON5jEDEEgrrb7L.011FKKKTTThK5Zutcoa2twwKpvE2JppjJSFlY4k3S+S++xm9+yeGSO+BDooQaKa.HuQZLGLf81cWtyctCO3AOfpUOAaaGlZtxr9lax5W5RjuxT3ajg99d3nHSjtNQ.tozvUSC8Towteept+9r6N2mad26hbTHWayKvZCGRk.ezz0woPA7yYfTX.RlCQc3PTF1CrGRTZCBJVB+RkIZhh3lNMR11fuOQCGLRHLIoW4nbTT35WniwG6ntHIIjjkG4nOG6QNry0EIUUhTTIRKMRpoHJLhngCIxebDXJhAymga3da3faw6o36Xm0wlIb9Aw0IDm2LJJhToRwDSLAkKWFcc8W5YtpXYYYYwomdJ0pUCGGGzzzXhIl38NAPBBBhaXFWW23nT7JW4JL8zSGuu68QNqXWhmqIc5zw+5IiV52E4rM3jooYb7fmOedJVrXrSA+iJRRRnHCYzzPKmLELRybA4w0O.W+.F33PGSSF53fie.YSmlUJOASj0fTumdb+6yHoApEjPNkBpkxPn+nOCk0xfbFYTL.4jOVSHgDRHgDR3Yvebuq4DN2hnvuhYcyaJG1IJzsPLr81auXGP7pfXViztcaN4jS3zSOkYlYFLMM4zSOkpUqF6dmWGDBZr4laxG7Ae.c61kacqaEWT7WUNqC8rrrdis+LgDdcPSS6sRAHEEZpc61r+96yQGcDlllwmuQDQcOoPBdddzueeFLX.vnyiL0TSQXXHGd3gweW211FMMMJTn.UpT4kdF7IhnxSO8T1e+8icqQlLYdLAzFM6yzXpolhqbkqvG+weLqt5pL4jS9bE7LHH.OOOpUqFau81biabCdvCd.c61kolZJzzznUqVOyWurrLJJJLwDSvlatIW4JWgM2bSlat4PWW+mmSWheMVDGqwyBtGs2db334WmiiC1mwsZmc+rppJoSml4laNt5UuJe7m9or5G8wTZokXHQ3JKCpZPP.tCFxvNcnWsZztVMZznAGdzQr6t6RmNcPUUk4med15RWhkVdYZ1nQb7TZYY8bajhyd7vSd91y5bFg.nMa1jff.jkkIX7wAlllXYYM50KIghpJ4ymiYlYFtzZqwmr4Fr4zSgtsM1GeBCGNDIhPMiAsZ1jsuwM3125Vb3AGvft8HUTHSoqy5EJvRoRgV2NXSDVtN3LVHYowwwXjhBxoRQu1s4vs2lct0M4V+zOgdDrruOKnpfjiCRxxDIAA99P+dnzsKgt1n36B9.xJDZXPPoRDlICAxxD43.11fo0n4Dmr7usydswGKEgDRAgiDrarSyiTTAEMhjUGIJWX.Q1NH46STTHDwn0Owx4cDdRm8kHV24KDBN644gqqabyGHZzp74yGKn+Kqfc999zsaW1c2c4QO5QXZZR5zooToRTpToQNV98DDM7lnwIxlMKyM2brvBK7dsXOBAdEQhoooIgggnooQlLYN23rvfff3F.b3vgOlfcYylEcc8yEBO9aEh6ARd7ruKCO9855EDv.WOrb8vMH.UYYxqmBCMMT9C79syqHIARpfbZYhjjQNbz2gkTkQNkDHSRdWmPBIjPBIjvyj2OexmDdulyFcLBA6dS3vNEEEz00IWtbwQ2RylMekEBS3Xstc6xwGeLUqVk0WecFLX.UqVMtCoecYhIlfO9i+XtxUtByLyLr+96+qtfMmsHSO2XHKgDdOEgvXGczQb26dWdvCd.CGNDfXw5DNt8re+vwwgSO8TpWuNgggXXXPtb4HJJhLYxfrrbrPPYxjghEK9JUzQaaapVsJGbvAb5omhssMEKVDEEEZ1rYbjnIlokqrxJ7ke4Wxm8YeFyN6ruvNyW3P2c1YG9292923gO7gHKKy7yOOKrvBzpUKt6cu6yTHKg6wlat435W+5b8qeclYlY9ENgXTQpTfnHrsrnYqVr2d6wAGb.c61cTDZYZF65rmTPrzoSORPqs1h+g+G+O3C+nOh7yNK1xJXYNjff.RopRfsMcZ1jtc5fokE8GLf8O7P1c2c4gO7gjKWN9pu5q3q9puhKs0VHAbqadSd3t6R61segMrfhhBF55jISFRkJU71nHJCkFO6851qG6s+9T8jSh2tZ2oCs6zAGGmXgYTTUQ2vfYldZ9zs1hO8C1jqlKKy1sKNmTESWWB87PUVBWccZTqF29a+VtystM0qUiHOOlLcJVUSkKXaw7GeDgc6vPYY7ssIx2mHYYTjjPCITzTIzPGygCo9idDMd3tDbxwnCjIeVLLLP11jPYYX3vQtqy1AoFMPZbSlHEF.DQX9BDUrHnLRnTbcAWuQ+L+VJV2XgNijUPRRdja478Px1YjC+RmlnLYIRUEhBAm.hBCPJLDj.Ij+4hjkHHVBuA4rM.kooYbrpKNOYlLYPSS6kVzBgCqqWuN23F2f6bm6vvgCob4xw+58IG1Ibv7YmgaB2IedPvpWWhmemVVwNvNJJJVrqyKhU9jI1gmmG555jOedLLLdkN1+OhnHKStTZnqpRXTDxRfprLJumLiJ+iFggPncDAlA3a5Qn2nj1PIsFjOD0rPjBHk7UhDRHgDRHgDdJ7t+c+mPBOAmUbIQzw7qwQXmctwnppRlLYXpolhJUpvQGczq7xSTn4986yQic0wryNKlllb7wGGG0duNqmBmr7AevGvUtxUHa1rLXvfeUB1c1X3x008oNitdWh2FyVn+HivMQBhcqy6YEOPTTzCN3.1au8nZ0pXaaGer1yxgctttzpUK5zoCvHGmI5rbQjH1tca.XgEVf4medLLLdgqOhyyMb3PpVsJUqVM1weJJJwQgoXN6YXXvBKr.evG7Ar0VawZqsFEJT3YVjSQgkaznA26d2ie3G9A1d6swwwgqd0qRkJUvyyKta+eZmWPRRJNJLWe80icW2DSLwur3hRRnHKSXXH862mF0qGGYvhYciX1kcVDQ+4TSMEW9xWlqe8qyku7kY9EVfPEUb87FUUDOObFNjg8GPmFMnautXZYQiVs3fiNhFMaRZccVZ4k4ZW6Z7ge3GxTSME0G6.uSO8TFNb3Kr4OzF6TlB4ySJMs3F5PLa9BBBny3l03QO7giNNxwgFMaRmNchKDsvcc5FFL87yyEVaM9j0WmOrXQlsdMRe3AX0rM91VjRRlPYIppHyt0av8u0s4fCNDyACHmDbA8zrkLrTiZTLL.mnH777Q10AsvPPRBYIIz.BUUXntNc77nWqVH0nAKZaybRRLcsSIigAgg9DkJEQCGhjkExCFhRuNH66.LJFJCUSQXwRDUrDRZpPP.Qddfu+Hsv9MTrtnnHjjkQRUYzLra7m+XYBNV.5iDpKJBovPhBBGIVGQPzugqa+FQx07N+vYEr6rMTlngvDyhrW1qgFEEgmmG850iCO7PN93iimEpkKWlIlXh2qbXmvgVh48mhhBoRkhToR8KD547Rjw9xrdd1TCoa2tLb3v3XOclYlgImbxyEeNKRXjAmIdqKUpDEJT3UVr5+Hh73FaR68Wso+iEQPT.D5EQncHgtit+RonPhzGcqKIeTmPBIjPBIjvyhDA6R3bGm0gcmcVO75hjjDZZZwEXVD6ZyM2br81aG+P1uJELKJJBSSSN5niHSlLnnnfmmGGczQuvYjzyBQAeJUpDqrxJr95qippJGe7wuwbXmnn4uIbr3uEjTzxe+QT.xvvPjkkQVVNtfiuOgkkEGczQr2d6QsZ0ne+9whGc1XP7IEsRDIlhBr466yCdvCXvfAbxImPiFMnVsZTpTIVd4k4BW3BjKWtW35i36iBm51rYSTTTHc5zwQvosscrC6xmOOW7hWjqd0qxhKt3Kb1FIVuevCd.+6+6+6bm6bGrssYs0Vi+w+w+Qjjj3e4e4egabiaPqVshmESBDw+XgBEhiByM1XiX208jHMdVi446S61soVsZzrUK51qGV113+DKeAhXDcs0Vi+w+g+At10tFyL8zPXHVC6BQPFCcbkkoV2tzrYK5OnOc60iNc6xImbBGc3gDFEw0t103y9zOkqe8qyRKtHR.8F+y0+k77xZoR8KhhNw2MxlMabiZr81ayCt+84zSOkAimooc5z4mmOei2ejehIXyKeYt1Et.e7rSyZVlH+S+MbpUEEKaTihvHUZZFFx8Ls3u0sG61nEcFZhTX.ynqy0ykgqKExTGc.ZUOZjHtAgHGEhDQnfDxRiLUlMPMjnFR3BTIJhUxlgkjfkbFR1.abTSgujDLXHJgAH2uOxl8Q1yYjfYJpDju.gUp.klfHUMjBGKJVTHisw1adNybPDYYPSaj3atNfu6Hw5FL.bbGE4kYxRjVJPBhjGEalQQQ+1Jn3aXhaXfDQ6NWfPfMw8RIZzAw8u8pL+5DKOwxT3T6ToRQ1rYiEB48IG1Il2qhqqIteimbe1YajH42PtO52BA.eYi3Vw8faYYQmNcvxxhb4xwbyMGqt5prvBK7R0nO+dxSa+kHRS60qW7y5jISlXA6dclEemWDlMgDdpL9vVIYIjjG+Wj+M5djRHgDRHgDR38JRDrKgycH5DUWW23YAzuFAlDQtiX1JXXXvRKsT77rS3jkW0hk433PsZ0PRRJtHsmbxIXZZ9ZIXW5zooRkJL+7yyryNKSO8z.P974QUU8Wcw7DEJ4MkC6dezEV+QBQAwFNbXbbOVpTIxlM66UQSkvstMZzfc1YGt+8uOsZ05WDasOsuec1Xrxyyib4xguuOmbxITudcZ0pEMa1jgCGxTSMU7r34kovaBWUznQCpWuNc61E3mcvW+98wwwAYYYz00Y1YmkKcoKwEu3Eetysty5rtc2cW9ge3G3V25VzsaWVe804hW7hL6ryRiFM33iOl82eeFNb3u3bBBwCqToBW5RWhKe4KybyM2yTLRw66vwhWUuQCZ0pE852OV3wy9db1Yi2ZqsFW8JWgqbkqvZqsFpppD36SpwN1KJH.KSSpWuN0pWOtnmmN18bJJJL6TSw093OlO4S9DVZokHWtbLzxZTTbNb3K00Qjjjh2lmbxIQarC6xjIS79DGGGZznAUqVkFMaRilMoc61ww9o38PMUJLxkiYWbQ15JWksVcEl22ir0OEqi2mvV0QKBhjjvTRlSr831s6xs60mSs8HTRhYzSyGjQmqjQm0TjHi8fQsyse.xiENSQRhTRiLVlSTD8774XaWZDFgrVJpjNMaZXvhJRX36QXfDQgQDFIAggHGFfrsIx9icxnrLAFYHr7jDUoBTn.HKSje.Qgic01HEwdgGi+JwYEqSUEzzPRQgHGanQcjpdBxUOAb8HZhRPA.owtvS31SeeHXbzX96LupWK745sZZY...H.jDQAQEKxuXFPlv61HZzBQyjcVgmDB18pDsgmU.Paa6XAPxkKGkKWlRkJ8bErSHXjqqa744DNYVbesRRRnppRpTohis4zoS+JcL6Yajtm78I5Le2UUUEMMMz00Ia1rjNc530ew0G50qGVVVnooQ1rYernkV33aw9BQC2IDERD6hOq6QQbeM111zueerrrv00M1o5hjrHUpTwNhzvvH1geOq8IhquIhCRaa633cNX7bDUrsmJUp3nyVreVLC6DOWSPP.4ymmomdZlYlYHSlLitl1omFu9BitNo3ys74y+LED9rGGHt2AwLxqPgBOy4p3Sd7iXaRLSFexWmHZw6zoS7b36I+r44IXmvkgVVVXZZFK5cTTzicri36.mGbcXBILZX1wYhh62lqLIjPBIjPBIbdgDA6R3bGm0MXhGb+WifcpppjMa13YDQ1rYYs0Vi50qyDSLAZZZuVBXIdvUOOO5zoCRRRwcH8qy5alLYX0UWk0WecJUpznYMz3h.IKK+qN1rDEb3McjXlHZ24SDGOTudc9ge3GHLLjO5i9nGq.auOfXFts+96yMtwM3t28tzue+ewO2SFEnhyC466G6DOCCCLMMoc61bzQGQqVshiwxb4xQkJUdLmY8rHJJJNhNO8zSi63dw6Y+98oWud366GO+3tvEt.as0Vr5pqR1rYetauc61kG7fGv+w+w+A27l2j1saybyMG+o+zeh0Wec52uOau81b7wGGeNrmDUUUxkKGyO+77ge3GxVasE4ym+Y99566S+98ocqVzrUKZ0pEc6zgAiEr6ImMfJJJjISFVbgEFMS99zOkYlYFRKJHY5zXjICVVVzpUKpd5ob73H1z11lFMax96uOAAAihqyKeYt10tFqt5pnqqi23Bo5MtHyOofgOqO+MLLXlYlgomd53nIsxTSQTXHc6zgNi2lDQ51SNSlDXXXvryOOa9AWjO7i9H1nTITu2cvtUK7sLQIJhTppLHD12wiaNzhebfEOv1i9QgLoVZ9nbY4yxmkUSkhhxxDDDhaH3iDQRJnHKipjDZxR3FFwffPpG3yA1NLLvmoB7XF7YR4.LzzvOB7PlnHWjCCAOYjHBBFO65jkIPSmfRSQ3ryCSVAxL9Xs.+QyVteKPbssnHhTTPRWGIUMfHnaGjt6cPYuGhRqVDkMKAklDorEHJSFjxjARqOJ5RccAOWhbbhmGei+v8M5p6Yul2qiC8eZKuWEWYkvaODtjRH1fPHnyNK1dUbXjX4ItuQQDAKtdR4xketWOQbMitc6xCe3C4vCOjZ0pQ2tciSSAQTvO4jSxxKuLW4JWgomd5WImqItm7FMZvCe3C4niNh50qGecJQTNmISFJUpDyN6rrxJqvLyLCEKVD.51s6nltXbLImMa13qYJKKyImbBUqVkG8nGQylMiaXkrYyx7yOOas0VrzRKEOiWeZDFFFes0s2daN7vCiapFee+3l1SDEkKrvBrzRKEOq.eVKWQC1HV+N4jSnc61wMnm3y+BEJPoRkXgEVfKbgKPkJUPSSKt4e777vyyCYYYJVrHSN4jjOedbbb3N24Nr2d6QiFMhECSWWmxkKyhKtHW5RWhYmc1mpnvhiCDyq1Z0pgqqKkJUhKdwKN5ZqoS+Tec999zoSG1au8n93FhoXwhr4laF+5D6Wbccoc61zpUKrrrhankb4xEud87Nlx11djq3O5HN7vCiaVoff.LLLnXwhL8zSyxKuLat4lTtb4WpiOSHgDRHgDRHgDR37FIB1kv4NDNAyzzjd85Q+98esbrl.gHcYylMt6MykKWb70UsZUN93iepEw+4gXdWI5nUwCo9zhUuWFDBItwFaDG2chtqMc5zjNc53tl90AQgLDcParaFdGCgvjIy0meaQHry96uOe+2+8nnnvhKtHyN6ruWreWzo8c5zgs2datwMtA26d2iiO9XrrrdpulyJXmH5mDw9jhhBYylMt35hBXFEEQoRkX5omlBEJftt9y86UhYkmHRMO4jShmsZh+OwrQBfb4xwJqrBat4lrxJqvTSM0S0cchWaqVs392+9729a+M9oe5mnd85L8zSyUtxU3pW8pjISF91u8a4m9oeJV7qm19fLYxvbyMGqs1Zr95q+bmMegggXYYQiFM3niOliO9XN8zSoc61wcs+SNa.ykKGqt5p7wiiwxKekqPkJUHUpT364QDfhpJd99bZsZr+AGLZl3c5ozevf++Yuyyuaiqrr8+PgbNCvbVhTjTYIKY0utmdMg+imu8dq27l1x1iUNPJRJlS.DAhbNUuOPctFjhTQ6dZ4o1qEW1cafBUU3h68Vm8Yu2T4cpBL56TV20t10XpolhvgCillFsdWgQa9tt4WTbvEA46UWtbQjHQHRjHmrlgMaX0pUZTuNkKW9DB6d20j795291La1LVsZkHQhvryNGW8pKxkldZFvpEz2YKzemp3vDzPGR2oGKUqIurZc1tYKJpqiaKVXbG14ZdbwUb4jvVLiESlnMlnmIMzLqgISfUSZX0zI1vTaS8nptIJpoQYLgtlYBXyNQraGGVsAlMS6t83cIPGlz6go24tkXxD8rYmdV7POeAn2Hig9PCiI+9.q1fdcPuSGL8tb46yg.rK72B8OGiXAluinVb5B5zFxlESauEVVYYrlJIZls.97idvfnEKFlBF7jWqTjcylQ2lUvhEL0s6u9Y7a85buSQbevquOBNqB6b3zIl+CnUD+GMH4NZ4xkUY+ojukhSN74nP8Nc5PsZ0TptRTpkCGNvue+WnkX1eyBjMaV1YmcXokVhs2daRkJkhvNgLQgvtYlYF51sKW9xWlXwh8Aa9C3j8ITqVMJTn.Yxjgc1YGVc0UUj6HVKsnPJmNcRvfAYxImjVsZoZ5L.RmNMGd3gmXivUpfGOdvrYypbVcmc1Q8W+D14xkKFczQUVE8LyLCQiF8Tp4RlCtb4xjLYRVe804YO6Yr0VactD1Ijpc4KeYrXwB1saW43FBjFqob4xmr11gGxN6rihHPQkY8eb84yGgBEh4medBDH.ABD.ylMepF.RVKTSSiVsZQhDIHc5z7e8e8ew5quNYylUo5c4bcpolRorygFZHU90JW+8ST4qe8qYyM2j50qyniNpxhmunwQsZ0hrYyxKe4KYmc1gVsZwHiLBwhEinQidp4pjFyoToRJhGc4xk54qtHRfaznA4ymmDIRv5quNas0VryN6PpTonToRzsaWUj.HtIfb7jisALfALfALfALfALvejfAgcF3aNHO3oTHh74yqJN5WBjhUHOzmTLjgFZH99u+6oc61729a+MpToxmMQExqueRz9RIZxiGOL8zSyzSOs5gwE6.xmOe30qW0C19k.49pXiSc618qtq9MrEyucQiFMHQhDr5pqxyd1yvsa27fG7f+PPVG7qi2SjHA+3O9i7i+3Oxt6t6GLiI6erbylM43iOlb4xQmNcvtc6ptHOd73JUwYxjIlbxIYhIl.Wtb8QyiEwttDU+kLYR5zoCVrX48TBljgbyLyLb4KeYhDIBNc57bKHb2tcoVsZr+96y+4+4+Iu3EufjISR3vg4AO3Abm6bGFarw3fCNfm8rmwie7iIWtbm68.wpJEqvTrrqy6yUJbb4xk4fCNfs1ZKkBLx0mBDNKAEgCGl+ze5OwCdvC3ZW8pL3fChMa1NoAHJUhlsZgEKVHc5zrwFavlatIG+t7BLUpTX2gCtzktDW6pWk69ceGSO0TmznC1rgISlnUe1WV0OAkZKMGga2tIXnPDIRDkRNpToB4xkizua8nZuif09ysJgjUKVrPv.AXxIlf6e26xsu4sXjAhi2VsnU3vzMXXzb3gp0qQpVc3M0ZxOWoJutdCxzqG1MalIc5hq40CWysKlzgcrhNM6cBYalLaFaZZXyjIzLchGL0wDT2TOJq2kFVrhEmtwgUKDKXPB30CcsYiZc5RmJkQuSmSH3xjIvrFfIzMA5NcgdrAna7An2.Cg9PCCtbiISfd2dmX0jm7k2uMD1c1WmMaXxiGvgCLY0B8RkB82tJVdwyvwFqfsNcvzXSg4QGCqSMCVlbRL8NBj0qV8DB5rYEcM6fGOmPtn72uCqQ8a1Q7cqgJVomwZp+iMjrAMe97TpTIZ1roRcUtc69ylvNg.PgPIY9WqVs9AI.TZnjc2cWdxSdhx5iSjHgxtFEhg52RL2ZqsHSlLbu6cO9y+4+Ltb45CNdSVS4su8s7xW9RVas0X6s2lLYxbJEFB+5ZG1rYijIShMa1TJETWWm82ee1ZqsHUpTTsZU73wCEKVje5m9I50qGarwFbzQGQkJUTjMJGy81aORjHAGczQJBREq8D9006O5ni3QO5Q7jm7Dd9yeNGbvAJKlTVCRdl.+98S1rYITnPDHP.ra2tRMix93KVrHqrxJp+1Zqs3fCNP8bI8am98a0lkKWVYwyx+89aDMQYk6s2d7e9e9eR0pU4YO6Yu24qbLERLO93i4d26dp8aHD1IGujISxyd1y3ku7kTudcVXgE3pW8pL4jSdtMbizfPIRjfe4W9EdyadCVsZklMax28ce26Q.m75k0SE6qzkKWeP00kOedd9yeNu7kujkVZI1YmcHa1rToREEgu8qRwToRorj5ImbRBDHvG9GRFv.Fv.Fv.Fv.Fv.eiACB6Lv2bPTtRkJUnPgBJK24KEmUgclMaFKVrPnPg3ZW6ZTnPAVd4k4vCOToxkOG70pDLo6diDIBiN5nLzPCcphnXylMBEJDgBE5TJu4yERmz1e9l74XIRF3OVnd85b3gGprQqHQh7UQL9+HAcccpToBIRjfkWdYd1ydFqrxJb7wG+dWilLYBMMMrXwh5OMMMkUZVrXQUdtIpoRrJQcccra2NwiGmAGbPkRB9Pn+42xkKmpveMa17TJJVl2Jd73L8zSyjSNI986+ByGIo3su5Uuhm9zmxAGb.gBEh4laNt90uNyLyLXylMxkKmp61OOkF1uUXN+7yybyMmxtvNOHEJsPgBr+96yt6tqRAEl0zvoCGftNsd2q0tc6Ja55V25VbiqecFd3gwqWup4QsZyFMd28izoSyQGcDISljrYyRg74oV85DLTHla1Y4l27lL6ryRrnQ+UkO8NROZ2t8I1M26Hr6CM2tUqVIPf.p7qKv6xyQ45SrCtjuK65DqDUxIH61sqxknolZJt5hKx0u5hb4olB+d7f4JU.+AnWjHzKPXJUtDaTsHutRcVqdSR2sGlsZkgb6lqEILWOP.F2mGBZyFs00oKlvplFZZZX2hYLoCc6zkFc5PE8NjSuGE6oClsv.NbRP2dX.+9IfaWna0BcKTD1ZCnZELYyAZVsBR9uYwB3O.5CNLZwG.8XQgXQPymOvgcLoogtLt6hVq6cqiX5L+u+jrQSMMvlMz739DUx0pEsykiduccrr4FXoTIL6zIVBFAaiLJNFHN1BE5jy6NuS8ec6B1rcx+eBgj+NmkcesqbpyuRnoLmhw5w+iM5WgchxnkL7RrDPwlA+X6KTWWWYwxx7I8StlzfYm8yuUqVjKWN1e+840u907i+3OxadyaHYxjzpUK750qpoujLxSxVzZ0po9bD6U77TFtj8qoSmlW8pWoHAZu81S4FERlpIV1t7dDmbP9mh8ae7wGSlLYT4TW0pUU1iYud8nXwhnqqSf.ATGypUqR1rYY+82mJUpfllFiN5nDHP.k6S.+pRESlLIu7kujW7hWvgGdHsZ0B+98qt9j0e6+dYmNcdubrtYyljOed1XiM3QO5Q7xW9Rk5250qmZcRY+BRiqztca5zoiR88BA7x8.Ybg7cnllFEJTPsNibLEB3jFWTHz0rYyL7vCS3vgUiQjqe40t+96yN6rCc5zg3wiqNWNOHOWPgBEXmc1gs1ZKBDHfpAFk4j5OpBju+jmgP9d37HVVbfjM2bSd7ieLO4IOgM2bSJUpjREoVsZkNc5PwhEUjgCP73wIPf.DMZTCB6LfALfALfALfALve3fAgcF3aNHJPoRkJphh70PXmXkcR.vKO.pnnsiN5HhDIBNb3PkKQ+8DRA+EKnQd.VAhhdFXfAHWtbe1V2of9yPCo.EWTw+Mve7gz47GbvAznQCzdGY.eqWvXovRYylkG8nGwO8S+Dqs1ZjNc5ykraIyfDam0lMaJB6JVrH0pUSohpJUpPoRkTEXsPgBDLXP73wipC8+XJjQJfpnltlMaR0pUIe97jLYRkUf4vgChEKFiO93LyLyvHiLxEZIk.jKWN9ke4W3gO7gr1ZqgKWt3N24N78e+2yLyLCNb3fb4xQhDIHe97WXVa5vgCFXfAXlYlgqcsqwku7kwiGOW3mqTnzb4xwAGb.Gd3gTpTILa1LwhGGu97ox5nVsZQf.A35W+5b+6eeVXgEX32ccY5cJ2xgSmD4cE9KSlLJaWqXwhjHQBZ0pEgBEhKcoKwMu0sX9EVffAChkyPnnTb1VsZorDyOjB6b5zICMzPL1XiQznQwqWumL+ntNlCFjiykiiO9X1c2cYu81i74yiISlT1glMa1nc61DMZTt8ctCO36+dt7LyP3PAQ2jIZpqSCOtoYrXzYjQ4vhE44oNlWVpLoa2AMqVYDe93ZwiwClXBVHVbB3wClc37jLPxlMvtcvpULYwB0a2lhkKStJU33FUoXmNT2rFdBGkqboKS7vQHfISXyDzwDzXysnUlLzqYSL40Gl73AS1riI2tvhWeXxiWvsaz86Gc+Avr+.XMfer3zI5saiotelqK9wlGQJfrl1uZGll0PuVM5jOGM2aOZr8FPtLnCn6IHVFYLbL7n33ce2XxjoSHRzqWkR5Loo86hh598FmMCMMv+XhNc5P850oZ0pp0MCFLHgCGF61sqHi4iYq28qfqzoSqZlDYtDa1rcgDfjKWNd6aeK+3O9i77m+bVc0UoXwh31saUVmN3fChSmNU4S1N6rCu3EufzoSy1auM1rYi3wiillFW4JW48xzNIal2byM4u829a7jm7DN5ninWudDIRDFarwXt4li3wiiMa1T1hrb831saUdyY0pUkprDkYI12X0pUwqWuJaadngFhnQidRNj1tM6ryN7vG9P1c2cIe97r6t6xadyaHTnPmzXEuiHGY85CO7PVYkU3vCODe97wniNJKt3hLv.CfYylUV2b0pUQWWmQFYDFbvAUDkInXwhrzRKwie7i4G9gef0WecJTn.d73gYmcVlXhIHd73JKKUx3tBEJvwGeLSLwDpwDZZZJkoIq6VudcRjHAUpTgHQhvvCOL2+92mXwhgq2kcqIRjfM2bSVd4kIe97ryN6nV+brwFCud8p1Sfnx8hEKRiFMPWWWYSq1rY6BU+l7bAx5jRVxIjwJpbSN+k8.0uhPkFc57N9kKWl0VaMd7ieL+zO8SrxJqPsZ0HZznbqacKUiHUtbYVd4kYyM2jCN3.xlMKqt5ppwEFv.Fv.Fv.Fv.Fv.+QCFUi2.eyA4g4qWutx9F+ZUvlGOdvqWuphfHVpSnPgHVrXDIRD74yGc5z4qhbvuDHYWmjKGm054rYylJSkNurq5SEx8UIuTD6a6yw9lLvebPylMIc5zjISF51sqR8oeqSZmTPtUWcUkUgkHQBpVs5495sXwB974ivgCS3vgUD0zpUKkhVc5zIMZzfRkJQt2QbSwhEIe97JB95uY.tHHj0IpGV9qb4xJ62TxFFud8x.CL.iM1XLzPCQnPgT10E7qYVmPV1qd0q3wO9wr4lahCGNXlYlgabiavBKr.QiFkZ0pwgGdH6t6tJ0bzOzzzvrYyJU4csqcMld5oIVrXWn55jqmhEKRlLY3niNRU3YQgfVrXghEKpFW4ymOtxUtBW8pWkgGdX74ym53YBN00zgGdH6+trqSTGhWudY1YmkabiavLyLCwiGWoxg9Q2tc+0LmqRkOpB6DB6jhLK1SX61soUe483VaskZ7jTjRI6o750KCMzPrvBKnrRT2tbQiVsnsEKzykap5K.48Efsb3j05zi8a2k1VrRnPg4JSMI2bpIY9ollwhECat8fEmNQypMzbXGSNbftYKzgSHbuV1Lj+3iIaw7zFcbGHHCN5nL0bySjvgwR2Nn2tCsZ2BpUitua7iIKVvjMGXxgCL6vElc4FSVsBsZioFMQiSV2wtCmXwsanS2OMkx8k.Ms2QxFPudzsbIZlJM5Gd.cxmitc6fIWdQafgw5XiisAFDKNcgEfdsaCs6bRd2YxzIDPZ9aWR6Lv+3CI+QqToxorDwJUpv1au8I4Q36rwxylam8CgvtzoSyxKuL6u+9TqVsSYytmcNM3DqrNUpT7129Vd1ydFKu7xTrXQ07hKrvBbsqcMFd3gwoSmzsaWJTn.qrxJp7DMc5zr2d6wRKsjJyvDUTKqeUoRE1XiM3Eu3E75W+Z1c2cwhEKDOdbVbwEUYh5.CLvIMTftN0qWmBEJPpTovjISL7vCq12pjodhh6DqtziGOL3fCpZPjolZJhEKlhvtkWdYN3fCHWtbJEoK4fW+MfS+qCkJUJZznwIVl70tF2+92mwFaLzzznQiFjMaVU16EHP.FbvAUqUIpDLSlLr7xKqHDMWtb3ymOlZpo3t28tJRQOKgc4xkiLYxnHTT1ecqVsnXwhp0dEU662ueFbvAY1Ymkae6ayXiMFtb4hZ0pwd6sGd85UkErRV5IMRT+MfhXUqkKWVcewgCG31sara294tFoLdVHRTbe.mNchKWtT6sQdc0eWNtJJgq+lUo+7DDPoxvDIRnTn4FarAUpTgAGbPVbwE4AO3AL6ryhe+943iOVceTHx8niN5BazJCX.CX.CX.CX.CXfu0gAgcF3aNHVCyYyGhuTzOgcR2t1eQ0sa2NQiFkXwhQ0pUOWah62S3ymOle94YwEWjHQh7dO3qPr3EEZ7epPrLGonAUpT4TY1gA9eVPrAoRkJglllxNu9VlrN.JTn.u3Eufe5m9Id5SeJas0VWHYcvupnrwGebFczQIZznX2tcpUqlhLlZ0pQkJUHYxjmjgY0poTZmCGNTp25CMWktttREBYylkDIRn9qb4xJ6vTJnobdMzPCoxpm9IWWJf1t6tKO5QOhG8nGwie7iQSSi6cu6w8t28XgEVfXwhgc61Ic5zr4laxlat44d+PxOlgGdX99u+64d26dDOd7SUD2yd8nqqSiFMNIe2RmVQplz088akVRwqc61MSM0TL0TSctJ2S5H+2912xlatIqu95r95qS974wtc6L8zSye4u7W369tuSQV24c9IJ33niNRk0TeLE1MxHi7dJYrd85bvAGvZqsFqrxJphNJ1VJbxZVh8kN4jSxzSOsR4fl0zvgMan6vA0c4h51swl.uoSO1uWOpXwBN86mImdZ9t+xel6t3UYjgFBeAChYa1Qy1IVWoIyVvjEyzsaOZ2nIcxmiZMaPspUoZUq3zsaFetqvXiONgiFEGNcgltN8Z0BspUnilYZnC851AZ1DpWCz0QWuGcemE4YpUKzBEBKA7is1cvNfYyVvjl4ONgceMyaHuWMcZ1rM5INftISfd2tfCOXd3Iv5kmC6iONViDFM61oWmNzsbY5VoBcKWFSZlO4+lGOnY2NlLZDEC76.DhQjFqPrJ227l2P4xkIPf.mxFA+XqITsZUxjICoSmlxkKiSmNU+c1loRrPyc2cWVe80Y6s2lhEKpxaz+5e8ux0u90UMcP+Vhoa2tIWtbJxYpVsJas0VL3fCx0u90oUqVpF1AfiO9X9oe5m3gO7gr+96iEKVX5omlqcsqwCdvCXt4liXwhgGOdT1Wor2cQ8ZR1l4vgCkkPJqu4xkKkJ8t8suMyO+7L93iqH3SH7rYylL4jSRhDITJ.q+L+StuH6mIe97zrYSb4xESM0TL+7yyLyLCCMzPp0yGczQUNMgUqVwue+p62BwZGd3gr5pqx5quNEKVDe97wcu6c4t28tpLjysa2pF6PtOKpPypUqDJTnSsGhToRox9Oud8xbyMGKt3hb8qeclc1YUV8oYyloYylDIRDzzzTpKTT3X2tceu8aH6uW1CglllJ6tEB6Nu0I6+8IVtoPXW+i+jLSTtGWtbYkKc3vgi2a7ZylMUDK+nG8Hd8qeMkJUhAFX.9W9W9WTJrWH70ue+ToREN93iY0UWUccHOGnALfALfALfALfALvezfAgcF3aJH1yhnBreKdPMKVrnJbfPFV+O3pSmNYvAGjAFX.N5ninPgBe0eleJP5v1HQhvzSOMSLwD30q22SkNVsZUQ33WKgchRdjtzse0sXf+mEjBe0nQCUNJ9sZFJ0qWOpUqlpXO+xu7K7zm9T1d6sIWtbevhlJVN6vCOLQiFUQhjL2S+EbKSlLb7wGqJNmUqVUEWUZFfKBBwURg6N3fCTcPtzn.Ma1DSlLgKWtHRjHL4jSx3iON9746TjC0oSGxmOOGbvA7pW8Jd3CeHqu95zqWOFe7w4t28tbm6bGFd3gwsa2mRAHau81mKgcRFtM7vCybyMGyLyL3ymuK7ZRHLLa1rr81ayVaskZ9Soi6a0pE0pUSo3N+98yniNJiN5nDOd7Sk4eMa1jxkKyN6rCKu7xr5pqxt6tqRcE1rYiKe4Kyctyc3F23FL0TSga2tO2yu9IFMa1rp0R9PiCjF23rJYtRkJr4laxJqrB6s2djMaV0wRxCUo3rW8pWkabiavniNJtc6VoxuhEKpTdw1arAuZ+8YiRknocGDdjQXhIlfac8qy0t62wzyMGABFDGtbgIIO1zzncmNTsVMp0pFUa1jr0pQ1Z0nbutXwsa7GMFCLxnDavgv46HeWF+RyFmP7lEK.lPuYCz0AslMnWUqflYLgNl5zFSniViFXQWGyXBKefwz+l.ccPWmt0pQm74o0VaRqM2hNoRgd2dXxkGLO3vXczwvZjnX1k6Sd8UpP6iRQmREQuYSzb6Fy98wuymsF3+gCwx1EqcTbtfiO9XpWu9o1i1mRylIyQJy+K1b3YI.Qr22rYyxVasEarwFjNcZ50qGCLv.prJc94mWkYa8iFMZvLyLCIR.J3V6B...B.IQTPTkfc2cWRmNsJePqToBsa2F61sSqVsNUdnt1ZqQiFMHd73J0pcyadSFczQwoSmu2dRk0mj7aS1usb9K49ozfDKrvBbm6bGlc1YIb3vumsOGIRDhEKFgBEhDIRbJKk9rJltWudmRUih5u73wC986+T6sQVOF3T66oQiFjHQB1ZqsXqs1hb4xga2tY5oml6bm6v8t28TjUdd6WRTnGfR4gx59Yylk74yittNgCGlEVXA9tu66NkEW1el741saN93iIVrX3ymO0dOjqw9GeIeFUqVUkQgNc5TQp3YOW6ugaxlM6orjUQgmmc7W+MpT0pUOEofm80KVt9ae6a4su8sJaRclYlQs+jAGbP750KvIMFS+ue44itnrwy.Fv.Fv.Fv.Fv.F3acXPXmA9lA82gtkJUR0AyesPd.TmNcdt1BS+JqXs0V6q9y6SE1samvgCyPCMDCMzPpBEe1B.z+CP+gHD3iAoCjkhzb7wGS73w+ZuLLv2nnWudzpUKkRg5mvtukHsS537ToRwO+y+LO9wOlm8rmoTevGSkCBgch8V0ucXZxjIrZ0J850SoVgtc6p5L+gGd3STS0vCSvfA+fpUUZFgJUpvgGdH6s2djJUJxmOu56gtc6hKWtHVrXL0TSwBKr.yLyLmRIZBw6au817vG9PdxSdBKszRnoowMu4M4t28tpBp5xkK07pUpTQk+Z0pU6TmahMtEKVLFd3gO2rz7rPTVxVasEu3EufW8pWw96uOEJTPMOqXojUqVk.ABv7yOO23F2fgFZHb618oJDW4xkYkUVgkWdYd8qeMarwFp7vCfIlXB929292392+9J0MbdExSJXb850UVnljoTeHzuRr6WUgkJUh27l2nxQHgrNYrfCGNHb3vbkqbE9W+W+W4t28tDOdbkUzs6t6dpqmjIRPhCOj1sai+fAY5Ylgu+6+dt90tFyL0TDLRDrZyFlLa9TV6nXQZoSmlJkKS974Ic5zXRSiAF7DkXFHP.bdlBmJDhoawL3xE5Vshdi5nWuJ8LY9jiuIvjIMzrXAS9Bfd2dmXwj+8XZ.cc50oCsSmgpO8oT+0ufFq9F5bbF50qGVb6EqwhgsXQQyiKvDzqdcZmIK02Xc5VqFVBD.y97glMancAJB0.F32BH+tWlGPx.UgblNc57AsByydrZ0pEMa1TsWWoAyNKgcsZ0R0jFqt5pJkiGLXPlXhI3RW5RL3fCdgya2eVH6wiGxjICMZzfpUqpTerz3Kau81rxJqnVC0iGOLyLyvCdvC3t28tDKVryUAf.J0U2+0nbeoeKwziGOLxHivjSNIiLxHDNb3yc8SwZkEKq77rrd4yzqWuJKsVl6c2c2kEWbQ50q2oZVOwRNk+cAkKWl0WecdyadCISlD.lYlY3N24NJhE6WEkmEx3A4eWFqTudckxzrZ0JCLv.b0qdUt90uNCO7vuWC4I66ueBwj8+ed4co7YTudcEgc1saWkgcmGgcx9QRjHAISlTQZ1487F8SXWgBEnd853vgC762O97468TjmznKqs1ZjJUJzzzNI2Yu4MY1YmUkwhBpVsppghjbC97ZfFCX.CX.CX.CX.CXf+n.CB6Lv2LPJDRylMoXwh+lQXmEKVTcrrXKL8+fqh07LwDSnJX+uEVw4GChk2M5nip5f1yqPK8+.z8aybet3rcHqXAN+iDjh67688dCvo5TaIKC+VpP2BQcEKVjjISxRKsDO7gOjW9xWxN6rC4xkS0o+mGDqbJZznLwDSn5vc.kkaAm76TQsXNb3PYiY1rYiomdZVXgETcJd+Ep77NeE0CmOedxkKGkKWVYyWhZAjBqN93iy3iONwiGG61sqrTrb4xwN6rCO+4Ome4W9EVe80oSmNmnRqacKt6cuKiO9332ue.TM.wQGcDGczQjKWNUV0.nTAga2tY3gGlQFYDBDHvGsHYMZzfjISxlatop.xRg7DKRSt2a1rYhFMJW8pWkEWbQksiJVPV0pUYmc1gm9zmxqd0qX6s2lDIRPtb4vgCGL0TSoJX5byMGtc69BISTJbYoRkTYM3mx5HlMaVoDaylMqTDxwGeLas0Vr6t6pxXp9sZNMMMb5zI974ifACprvrxkKSlLYXyM2jW7hWvlatIoRkRUTz3wiyBKr.27l2ju669Nld5oOWkwztcapUqFGczQr4laxgGdn5ZxhEKDIRDFZvgXvAF.Ouqn1mGLYRCrZCcMKn2qI5cZiIycQuGn2syIVHoSWnaxDX0JlrXEL86u555VuNcxmi5atA0d8Ko4Jug1YSQuVMwjU6XxkKL62Ol85EMqVoWylzJcZZc3gzNaV.PKVbz73EMauyJL+FZdLC7sAj8m1nQCpUqlJSLc4xEiO93DMZTEIGeJD1IGuBEJv96uO4ymW0HHx7P8+a41saS974IYxjr2d6QlLYPSSivgCyDSLAiO93DLXv2a9CAhBpCFLHNc5DMMMUiozOIiUpTg0WecVc0UUJ3KVrXLyLyvku7kYrwFSQ.z4gyiHIwpHEUD1qWOrZ0JACFjnQiprjxOEnoogEKVdOKdzpUq30qWBDH.974iLYxPhDIXkUVgIlXB0ZPd734TMTxYgnvNo4Sra2NyLyLb0qdUlZpoHZznePqCueh.gekXr50qywGeLkJUBKVrP3vgU1vsOe9tv0a6mbtOz9yNqB6j7AziGOprn67TXn3b.YylUoD9ySgmhkXVpTIpVspp4hBDHfRUnx5hxdjN3fCX+82mRkJgMa1HXvfDHP.50qmR04xXvUWcUVZokX2c2klMaR3vgYlYlgomdZb618EOfv.Fv.Fv.Fv.Fv.F3aTXPXmA9lA8aGl4ym+StPqeHHcdqzgtmWdL41salbxI4vCOjvgCiCGNTEw32SHDEN4jSRnPgdOKkQP+D1Y0pUUwj+bI0RHnoc61TudckkN80f96V4uVb1qGCR698ExuMDx59ZTu4+c.oXSas0V7+9+8+adxSdBarwFJRQ9XieDBymYlYXwEWjomdZ73wCsa2V0v.hR.BEJD1rYic2cWUwUiDIByO+7Jqc5h98q.Y9MwNuNOK8p+yqgGdXBGNrRYAR1Is81aye6u823wO9wr7xKC.KrvBb26dW9tu66dOE4Ijgs0VaoTaV+ethsg42ueFe7wYrwFCWtb8Qu+WqVMN3fCXiM1fc1YGxjIih729UUgc61ITnPLwDSvUu5UYt4l6TJTPxRom9zmxO7C+.u4MugRkJoHxTTV2e5O8mT1f4GhXz1saqHq6ykvNGNbnHRTFGjJUJN7vCIa1rJqbykKWzsaWk5+feUQAYxjg82eeN5niHa1rJEMWnPAZznAABDfKcoKwMtwM392+9L2byw.CLvE1vFhx5D0JbvAGPgBEvue+biabClc1YUJT4bKVuIS+5eZZfYsSr.SqlvjM6PudP8pflFlr67jLfysKL4vwIu1euftN585QmhEn5aVgZu7kzXi0oS1zzqYySNerYGMmtPygiSryyd5zsTQpu4FzNQRza2FKgBi0AF.qQihImN90qUCXfeCgzH.kKWlb4xolWIb3v78e+2yUu5UIRjH3zoyOolNRH+aiM1f+i+i+CUtcIVf9YUPr3PBhsL2pUKBDH.iN5nLwDSvPCMzGjzq9ylLI20D0hKVIIbhhhkLDsZ0p30qWlbxIYpolh.ABnH+4SEhqYH1buLud+Vd3G53Ip.q+bC87rrQQgcgCGl3wiShDIHUpT7rm8Lz00Ic5zbu6cOlbxIwqWuWnZ3k48KVrHsZ0hfACxTSMEyLyL32u+O6b9U1ysjUg4ymGMMsSQt34MuubeS1qtXknen6SUqVUYuolMaF+98SvfAOWm6neGMQ1uSmNcT1n4YIL9rYjmYylUMohWudUeeHDAJVRsLV0pUqJBpWYkUX+82mFMZnHgdqs1hkVZIRkJE850i3wiyctyc3V25VDLXvO462Fv.Fv.Fv.Fv.Fv.eq.CB6Lv2Lnexj5+AH+Rglllpn.RAPNuB8ZylMBEJDCN3fL3fCR3vgISlL+tSXmCGNXngFhQFYD74y2EVHDof5Bgcepcv84AQUH8+f2hUA8khukTkkA9UHEvygCGmxpp9GcEN1e2pu+96yyd1y3gO7gr7xKqJhpYylUVY4Yg7eKRjHL2bywhKtHSM0TpLUqb4xpBDJppSHzTJxZoRkHPf.DOdbFczQ+npqCdeKkRJrlb+VrRK+98yHiLBiN5n32uerYylpi02Ymc30u907jm7DVc0UoZ0pLxHivhKtH25V2RQ9e++lTH7Ymc1gxkK+dj8KyuDHP.UG++gHrSr1rzoSy5qutJS7b5zoRUeRW32tcab5zISLwDL+7yyktzkXngFRQ3UylMIQhD7hW7Bd7ieLu4Mugc2cW51sKNc5jXwhwbyMG2912lEWbQ08iODjBtlISFxjICEJT3TJJ7rPrCVOd7fKWtTEPVrdzBEJPgBEnZ0pX1rYrYyF1rYiNc5ndcUqVkjISxKdwKTJrKUpTTpTIZ0pkJOghFMJiO93bqacKt4MuI23F2fgGd3yMmdjL86fCNf27l2vlatI6u+9TtbYLa1LACFjQGcTFarwTD6dgyEqocRV3Y1BlzLitlI.yXxpMPuG5sZfIMynY2wuRPlUKm7998.55zqQC5TpHM1dGps7RzXsUnSlinWy5fEaX1merN7nXepYvbvfn2sKMSljNEJPq8Ofd0qgkHQwZ7XXIbPL60CZFpqy.+NAIm5RlLoh.dcccBEJjxp+D6lD93MbjnbVylMyKdwKTpV6hTXW+JnpVsZnqqSvfAY3gGlgGd3Op0AJJoteauteUacdVjXqVsHTnPLzPCwfCN3EZCweHHyyWudcpUqlRgcZZZeRD1IMphPXmCGNNk0WJPrz33wiyktzkHa1r7129V1e+8UDSIMhw3iONgBER0.bvupXeQc10pUSQrV73wU1.5m6dk6uQDKTn.kKWVoxQwtJOu4skyEQs+hhNuHEFJiOpUqFsa2FOd7v.CL.CLv.3zoyykvtNc5PiFMnXwhp8FzuB6NqkXJY2nPbpOe9HTnP3ymuSovN443pToBUqVUsmgLYxv5quNoSmFylMS850oPgBjLYRxkKG0qWm.ABPznQ4F23FbkqbEFYjQLrDSCX.CX.CX.CX.C7GRXPXmA9lA8aIl8+.5eoPJHfa2twqWuWXwFjBk6ymOFe7wYmc1QUTjeOgjYTwiGGWtbcgVziTPca1r8AsxmOUHEzVT7gnxtu0TXkA95fPRia2tUDj+oj0W+2MpWuNGd3grzRKwO9i+Hu7kujM2bSJTnfxVCsZ0Jsa2VkKb8CgTrIlXBt28tGe228cJ0IHpWUx1mFMZPylMwjISjJUJRkJEGe7wTtbYkkD9op3.QgDoRkhjISR1rYoYylm57xmOeLv.CvTSMEiN5nJ0ZzsaWN93i44O+47y+7OypqtJkJUhXwhw7yOOW6ZWSoPvyN2P850Y+82m82eeUgdOKgc1samfACxjSN4GUgcMa1jToRwlatIu5Uuhc1YGb4xECMzPL1XiQmNc3su8sb3gGpTAx0u904V25VL7vCqrjr50qS5zoY0UWke3G9AdxSdBoRkRoFtfACxsu8sUYV2GKS8DHVGW5zoIc5zjOe9OnB6ra2NQiFk3wiqTdgXWbRQlEhU6OW9DkozoSGxlMK0pUiDIRnTMnL2pWudY3gGlImbRlYlY3RW5RboKcIkp3tnBV2el98xW9RRjHAsZ0hvgCy7yOOKrvBL8zSeprO8bWWvjIvjFZVshlcaXRtG1SGzLgIcyXRyLXwJlra+j+LaESl+5Vm4Bgn9xxkn1ZukZu9Uz3Uuh1GrK8pUErXEy9Ch8KcY7b+GfswGGMyloS4xTe0UoywGidi5XNPPbL1XXe7wwhWeFj0YfeWQ8504fCNfM2bS1c2cIWtbmxlIE0RI122GacTYsVQ4QRtiY0pUUizz+7BhhnjFtvlMaDIRDFXfAHRjHJ6b+hfzPbsZ0Rslnr9k79Z1rox1CqUqF850CGNbPvfA+nYz5G5yUr8vFMZnZLnypn4KBRiSHMvmrV0YOejr+a3gGl6d26pHHRTEe61soYyljKWN9y+4+rRAZxmc+JnrXwhzrYSkkO5wimOJwhWDj0uEqeVHN77roxydcWsZUJTn.EKVjpUqdRld9tFL4r66n+Lrqa2t31saksZKMyw4kgcMZzfxkKS0pUUiGki+Y+dQTho75762OgBEB+98+dVIszDXx30xkKyZqsF6u+9JmNoSmNp0Yc61MiM1XLyLyvUtxUXwEWjwFarO53CCX.CX.CX.CX.CXfuUgAgcF3aFzeVOHc74WikXJEDn+Pa+7dvOIyI74yGSN4jr2d6w96uOYeW937aMra2Nd85UotNI6StnGbWHrytc6JB69Zfzo3oRkhb4xQ0pUwsa2+CCgc+itBu9iBDhJBGNLGbvATqVMZ0p0GL229uCHEpT5P8CN3.Vas03Eu3E7y+7OylatIkKWVYWg8miJ8CofUtc6lQFYDlat43pW8pboKcIBDHv6UrSoi0aznAoSmVkcP4ymG.UwF+T9Mott9orzr9U9kbdJJ8UH9ZfAF.GNbnrVp0VaMd9yeNKszRjLYRU1IM+7yyjSNIwhE6bsDwFMZnxut50q+d2SjBfFOdbhGOtR4AWz0Q+Vg41auM4xkigFZHBFLH974i50qqraUQEXW4JWgKcoKoN1850ib4xwRKsDO4IO4TYWiTD7YlYFtyctCW+5WmXwh8I2k8sZ0hb4xQlLYnXwheT6QUrD4YlYFBEJjpvrhxNNKQ1RAnk2qc61wue+X2tcz00wjISpwS1rYivgCqrTNICnFXfAvqWumqUzVudcxmOOarwF7nG8HkpCa2tMwhEiwFaLle94Y1YmkXwhoZ1iKDZZXxpUzb4DyABhlGuzqbQza2D81s.NISTMcx.h2Ycll98I+5TJqqD02dapszqowxKQ6D6QuxmnXIMKVPypMzb6FKQhfEe9oStioUxjzX0UnWsZXIZLrDLDViO.ViDAM61MHqy.+thlMaR1rYU4.pjyVRFdI6w7SkTKoA.D0eIyoXylsy0RBk4cDqQTTTle+9UDJ8wx3r9a.A3j8.HN2.fJq4DKXzjISXylM750qpQK9bgbdKjIIJNtehgtn4u5+YBjFfPVeHPf.mZcJYexgCGl4laNpUqFoSmFMMMk0Lt7xKqTucmNcNUCOH2e5WUXBgctc69y1JP6+5WTXnntP499mBQkhBukrO0kKW3zoy2i.QQEeBgcx96j8Eb1wFRylznQCpToBMZz.SlLgCGNTi+5+7SH7UZdEY7mntNgDNgrNgbVY+jRzD3wiG05dxuArXwhRM8xeiN5nDJTnunwbFv.Fv.Fv.Fv.Fv.eK.ic5ZfuYvu0VhoX4eRQU+XAEuWudYlYlgCN3.d1yd1W7m6GCd85kYmcVt10tFSLwDeTqLpeqC52BE1IEveu81iDIRvfCNHVrX4SR8J8iyZoR+Vf9Kr9+HQZzeDgSmNY3gGlAGbPdyadipK3a0p0GLKb96MjBdkLYRd1ydFu7kujkVZI1d6sIUpTTtbY07D8WnQofTBjhDFJTHVXgE3F23FL8zSSznQO0u+Dh9Ma1L0pUiCO7PN5ni3fCNPo9V2tcS3vgwoSmezLso+rhoPgBjMaVxkKm57V5Xco.am0hyRmNMu3Eufe5m9Id9yeN6ryNTqVMFXfA3JW4JrvBKnrqqyq.fBA8Ge7wzrYS0uqje6Jpia3gGFud8dt47Y+WGRN5s4laR974U1iU2tcIYxjJRI000UjKM0TSoHfTtWbvAGv+u+e++3G+wej82eeUwL862OKrvBb+6eet6cuKW9xWFud89IOdQHr63iOlFMZ7Qa..+98yUu5U4F23FJ6CSrNs74yeJhU61sqZbkKWtHd73L4jSxhKtHQhDg1sailllZcGud8hOe9HPf.32ueUw062lUOKxmOOO4IOgG+3Gyu7K+BISlDKVrvXiMF25V2hqcsqwku7kUmqerhHqooA1sehESNzPz9njzIcJz6TApUAcLAc6.ZZmPhWm1mjqc+VO+qjYckJR0UWi5u90T64Ok16uK8pU4juiz0QuaW5UuFcONGsN3.5UsJsRkhV6sGs1cGL4vANlcVrMxvXwuOzraGS+CRylXf+3htc6dpLBSrDv.ABnHW6yMayDhrDE4Z0pUb3vA97468HHqWudJxzDqQTbdgOk8DJD.UtbYZznA.pFZSNFc5zQ8mtttRIXhh+9RT5jbdKjI0oSGkU0aylsO35MxZN8eNY0p0y0RLATqmMxHinZFkwFaL9u9u9uXmc1g74yyRKsDsZ0hiO9XZ2tMW4JWgvgCCvoNOk0h762uZc9uDB65W4ax0tjkfeHxnjuuj0fZzngx1oOOBD62xTEqsziGOWHQqBYnsZ0RYUox4le+9eu6uhyCzrYSUFDJVmY+i8k02k8hIJrKZzn7+5+0+Kld5oUD7IOaijEdgCGVoXO441LfALfALfALfALfA9iJLHry.eyf9IrqToRe0VhoXYKACFTYSdenG31oSmJUuIOj6Yy6oeKfKWtXhIlfYlYFhGO9GsykkGpU5DZICR9RgTP6iN5HRkJEEJTfPgB8Ee7Lv2lPxPQwNHqToBqu95pLfIRjHnoo82ckWJEpqUqVpBVI4k1ie7iYokVhs1ZKxmOuRIWhULI+0+woek0EMZTlat43l27lrvBKv.CLfxByfSa4SRgmJUpDIRjfCO7PxmOO1rYiXwhwPCMjpnVeND1kOedpVsphDnylgbSN4jDMZTrZ0JEKVjs1ZKd7ieLO8oOkc2cWZ0pECLv.L2byoHCyue+u2bHBAS8mQMmk.SylMiWudUVmkWuduvuukqg74yyd6sGGd3gJ0qIEyt+b5Qx1oEVXAFYjQTVZYkJUXu81iW9xWxye9y4su8sJ63Rrzrae6aycu6cUJf3SY9NwV4JVrHGczQjISlSQP4YgjoS8e86ymuSo1Dw5fEUszoSGEYvd73QMV5l27lDKVrykvNQ0Mx3zy69qnfziO9XVYkU3m+4elm9zmxae6awjISL6ryxBKr.W+5Wm4laNhEK14Z+oWvEJlrXAydbis3wocznzzlMz60EZeRFOpqqCc6RuFMnWsZm7Oa2F8yICH+hftNcq2fNkJPis1l5u5UzXoWeBYckxqHq6jaFcoWi5zISZZrxJXxkK5lOGcKUBzAyABh0gFFaCNHlc6FSF1klA96.DhWDkdcVB69bUfkreWgbCwtGc3vw4RzR+DW0qWO072epMvU61sUq+Hpf1qWu32ueEYbhERKqAJquZ0p0OaBIEHJjSVenc61Ja+ztc6W39x6+9iL+qzLMBglmWSlIVKsruYWtboTj3ae6aIe977l27FLa1LCO7vDNbX0wpSmNJUjAmn.QgboO28cK6+nQiFb7wGStb4nUqVnoogCGNdOKO8rPT3sj2sxZNhh+NqUQJq02pUK08oySId8e9I1Won7Qa1rgKWtNEgwx0g7rYhB9DEje1w8xwUFKIuee97wUtxU3129130qW04k78oPB4uEOiiALfALfALfALfALv2BvfvNC7MCjGJr+tb8r4O0mC5Oah74y2GMCJDKoSxCDGNbnJjxukvgCGLv.CnJ3+E0gwBjtQ1gCG+lnvtNc5PkJUnPgBjKWNJVr3Wk0iZfuMgLNb3gGF+98yt6tK+e++9+kZ0porkKwJk96UwSDxs50qG4ymm0WecdyadCu3Euf0WecRjHA4xkiZ0pgEKVTDlIyaTsZUkkM0uRxrXwBQhDgacqaw8t283d26dLyLybJkaIEDs+7Wo26HrPH2wrYy3wiGFe7wOUtp8wJTqP1knbX4bDPoXfgGdXVXgEX1YmEud8RkJUXiM1fm9zmxu7K+BKszRpbq6AO3A7fG7.VbwEYvAG7bUDY+YwmXsm8Oepn3Pw9Imd5oOE4kmEsa2lRkJQlLYHQhDb7wGCbR1AIJ+33iOlZ0pQ2tcITnPprVKRjHXylMLYxDoSml+i+i+C9ge3GTJVTTrVrXwX1Ymku+6+dt8suMACF7Sd7mTPZQMjoSmVojjyC8mwoR9S0eAfEB6JVrnJKdDkEX0pUhGON2+92m6e+6yniNJ9746TER2hEKmhjtK55PF2czQGwO8S+DO5QOhm9zmxAGbfx119q+0+J26d2iImbRhDIxGzBkeOXxDl.zr6DKQig4vQOwBI4LpXtWG5UuN8JVjNkJQup0PO3W95uJnqSutcoSw7TakUo1qeE0d9yo8g6gdspmlrN.8tcgl0nSlina0JXxrYza2Fyd8gsolFmKrHNm4RXKVLzNGKf0.F32CzeFv0qWuS0PXeIYblre29UgjrWOOd77dVR3EcL9T+rj7aSxaSylMSvfAIRjHJ0dI1x44guz8.HMyQoRknb4xzpUK73wiZ+EWDQf8agmRiW3vgCkpk+PM5lISlvoSmDOdb05bd85UkupkJUhCN3.1au8XrwFigFZH0b+8eOUV2+KYOPBwUUpTgCO7PRjHAMZz3TNlwGyRLKUpjxRlkL2KTnPu23MYeSRS.4xkqSkGqeHEyK6cRbVAmNcpr3UgvN40H1EZ2tcOUyRc1i+4opc61sSrXwX7wGWYgzmcsRoAwLHqy.Fv.Fv.Fv.Fv.+OAXPXmA9lARgKkhh70lkVxCHJ4EzGqCnMa1Ltc6lXwhwLyLCISlj82eeJVr3W74P+PJ3uXmdgBE5i1ksvuVX8eq59z9shoyqP9+2MLxvt+9fyRPcqVsXs0VCSlLQ73woSmNDMZTBDHvoxHmeqHvS9dV9tVrlIoqx2au8XokVhkVZId8qeMISljlMapT3lzk1c5zg74yqHm4rj04vgCkZut6cuK24N24bUtkPplzr.vI1kXjHQHSlLpeq1Og6Rm4+g9Mb+15U+cnt.ovuCLv.L8zSyPCMD555jLYRd0qdEO+4OmM1XCJWtLAMZpYXB..f.PRDEDUCFjYmcVt28tG24N2gQFYjKztH6m7y961cARlxDIRDlXhIXjQFAWtbcgWGBgcRNNIJbzlMaJhNKUpD.DMZTld5oY1YmUobOQYuqrxJ7jm7Dd8qeMYylUYgoABDf4medt0stEyN6rL3fC9YU.bwlyD0PlNcZZ1r4E95kF5XvAGjvgCqZdh9Q+i0kwUZZZJhNkruKXvfma9A9gfTrzRkJQpToXokVhG9vGxKe4KYu81CSlLwDSLA25V2hae6ay7yOuRMLe1vjIzraCqgBhsAhikXwoSgbmPXVmSZVC8t8flMnakJzsXQ5TsB159UzrJuyBL6VuNcxki5asE0d4Kn9aVl1GrK8JWP85du2W2tnWuJznFlrZCMmtQKPPbb4Yw07yisAhiYOdLxsNC72EHjuzeibH6kSTQ6mRiazOj8gIGOg7h9yvt9IzQl2QH1PZHCQcTc618bI6PV2Ia1rbvAGvQGcDMZz.Od7nxVSQg1BgI8SDjL2d+MvxmCjySYul55531sa762+GTYhhUZ1et24xkK762uRkYx8myRxFfxRHk6asZ0hc2cWxkKG6t6tTpTIxmOupAZNK4Q.p8I2OopepPFyTqVMRkJkZ8n9sRxODgcmMyAsXwhhvt9UnV+2ujyw9avuKZuZm89qnBQQgmBgc867IkKWlZ0pQmNcNU1Ze1u+jm0o+++kqaI2EOulLRt+1+92LfALfALfALfALfA9iJLHry.eyf9sREwRd9ZfTX8AGbPUwX+PETQB+73wiy2+8euh.gRkJ8aBARRfw6ymOUVF8oDn5mmhM9ZeP19yGjujhv76ELHp6uePHro+7JoToRr1Zqw+9+9+Nas0VL+7yyku7kYxImjvgCiYylUEh4qwpL6ermXAWEJTf82ee1byMYs0Vi0Wec1Zqs3niNhxkKS2tcU4s10t10vmOeTrXQN7vCISlLpBI0ewdzzzvue+L2bywcu6c4d26dL+7yiOe9N2BaVoREJUpD0qWGa1rwTSMEd85khEKR1rYIYxjnoooxaEonaeJ+dTtVOag+DB6hGOtx5HKVrHu8sukG+3Gyqe8qoToRDHP.twMtA2+92m6bm6vktzkviGOW3mmLe1EMmwY+biGO9GLyXjN9Oa1rjNcZJVrHtb458JXmOe9XwEWjacqawTSMEgCGFqVsRpTo3YO6Y7S+zOwZqslRAbRm5Ov.Cve8u9W4O+m+yDKVrO6wWMa1jLYxvgGdHGd3gpL66hfGOdXlYlg4laNhGO9oJ.L7qDZGJTHk5.6mvNo3ieJJg47fPV2FarAO7gOjm9zmxxKuLYxjASlLwTSME+q+q+qbu6cOt7kurRMmeovjUqXwuerMxHXe1qPuFMo0Nahdk20PJ58PucKzqWktEKRuRkTj48YCgzsNcnclLT80uhZudIZ9lkn8QIPuQU0q6hd+7NxR0b4F6ScYbb0qg6abCbL4jFj0Yf+tg9a3hlMapxvKQkT8SV2m59x5m.Pogo5mvNWtb8dD5zuMGJYrYgBE33iOlpUqRylMeOUaoqqS850IUpTr81ayFarAGd3gzpUKhDIB27l2jacqaQ3vgOWEAKmihJs+XM104QzR+YZljgaABDP0jDWjRy5mPRwpg850KACFTkwY8aYihEdd1Oe61sS3vgYrwFiYmcVRmNMYylUQF4YU2njWe.TpTIxkKGUpTglMadgMzx4ccKeGWudcxkKG4ymmVsZga2tOWBYOKNur6q+6amWlBdVaLUV2+7FWJ62Qhd.Y+BhpykyOYLPsZ0NkB6jwim87PVezlMamZrjP72E0HlmsAtjikAocFv.Fv.Fv.Fv.F3OpvfvNC7MADaWob4xuWVK8kBa1r8dEV+CAofIRA9ylMKKu7xjLYRUGL+0d9DJTHhEK1EpniK57RdXZoXBkKW9q5bA90N7VxGDC7+rfzgzd85kgFZHhEKFkKWVMtW9snXKfCLv.3wiGUtnHEjQrHvOj0KI+SoHYRGaWsZUUw.EE.r4laxJqrB6ryNbzQGQmNcHPf.DJTHhFMJCO7vL0TSgttNEJTPoHNwNnjeu3zoS762uRYc28t2kKcoKQznQO26GRgojBx1uxV0zzTEtU5z8.ABnTc3m58ag389eORl6DJTH74yG555r2d6wadyaX0UWkiN5HrYyFiO93pBrN4jS9QycRovcRN93zoSkxkEkwIVhVvfA+f1gI7qVDoXitUqVUUPPQUz55530qWld5oU2q0zz33iOVkAgO+4OmCO7PpToh50Ov.CvUu5U45W+5boKcoO54R+P9doZ0pbzQGoxZvZ0pcg2WLYxD974ScdFNb32qvwhBsiGONtb4RMFPJ.bznQ+jrZ4ydtJi8ylMKau817xW9Rd3CeHqs1ZjOedb3vASN4jb6aeat+8uOKt3hDNb3uLk00GzLaFb5DqgCiiYlltEKPmroQudkSxpNccPuK8Z1fdEKbhsX1pkh7rOxEFnC558Puca5VuNcKWl14xQis1hZu7kzZ82R6D6SuZeBqcYxDlrXCMOdv5nSbBYcW6Z3X7wwpQdqZf+NBYMKgzolMaRud8Nk0F94ptN3WIru+861OoImU4Yh5tk4oZ0pEoSmlCN3.N7vCIZznJWa.900yRlLIKszR77m+b1d6sod85DOdbt7kuLyN6rL5niplu0lMa3vgCUiXH1fXhDIHQhDDOdb750qZNz9Iy7rDeIMilP7lPXmXk0err+qeElIJrysa23ymOUlTKYDW4xkUj5IDdJVMutt94RDk7cqr+DQAXhkaZ2tcJVrHYxjgjISRlLYT64o+0ukwFx8Ognr9IkU9dVrRUWtb8IQXW+JaTTLnWudwoSmp8QbVGEPx+W4dtXmlxqSNmN7vCY4kWl2912RkJUNEgwRtqpooorH7pUqpTXmnlSgfW4doLNUHxVxtUSlLoTXe1rYO02Ox6sc61Jhm60qG1sa+KWQ4Fv.Fv.Fv.Fv.Fv.eC.CB6Lv+vC4g9qUqFGczQezrG5SEhkEIch6mBjruXfAFfQGcThGONABDf74y+USXmn3uQGcThFMpRUSepPxgCud8RgBE9pNWfSWHkuzqs+dluYF32G30qWlc1Y4niNRkuM0pUiDIRPqVsHQhDrxJqvfCNHCN3fmxlLc5zoJuTjBIJEMBNcWSKpKqVsZpBgcvAGPhDI3niNhBEJnJtUlLYnQiFXwhEUVnc4KeYlZpovoSmjKWN1XiMTD6Ij+HELzpUqDIRDle944N24N7O8O8OwbyMGACF7CduPHtVSSi1saS5zoIQhDjJUJJTn.c5zQQv1m5ueEBDsZ0ppfgx6SHETT4nllF4ymmkWdYd4KeIGd3gzsaWFarw3pW8pJ6h7hrAy9gTPMWtborf29sWL61seJEj8wPqVsHe97jKWNk0vUrXQJWt7oJ7lWudYvAGj3wiiMa1nXwhr7xKyidzi3W9kegUVYEJTnfpPpCN3f7W9K+E9S+o+DiO93umR29XPTvgnPyDIRnrzzyCBQl986momdZld5oIPf.uWVh5xkKFYjQXzQGEOd7nJ5oa2t+ryvP4dijoQISljkWdY9ge3G3Uu5Ur6t6R850U+V7e9e9elacqawzSOMgCG9S56mOJzzPCvrWuXezwoS1io45ukd4OF5z5jriCfNcnaohzsPA50rE585gIMsKlzt2kAc5c6gdm1zoTIZk5nSHpa42Pqc1lNoRRuREQu0E+8hBu6yQysGrO8kw4UuNtuycv4jSh4Ogw8Fv.+VBg3DQsWmkvNQgQep6ERVmpQiFjMaVxlMKMa17TMl04oJ59sfPKVrnHcYs0Vi27l2nTMtzHGRSvrzRKw+m+O+e34O+4r2d6gWud412917fG7.FZngNUyr4vgC74yGgCGVof874yyJqrBACFjQFYDBDHvoHKpYylTtbYZz3+O6cd9bajcm09oQnQNmCDjDLSQEnj7XM1d85s1s1p1+c2Zq8ya8Z6w1STYIlyDfHmyg2On4dGPIQIpzHNiuOUwRyHABzcCvta96bOmSGFMZD1samPgBcNA6lLJnEN62oSmu0NrS3pKQTZZ2tcYxTHDRsRkJr2d6Q0pUkt2SzKuFLXP99mXeQHP5K2YZheeAud8RvfAwoSmjKWNxlMKas0VxtCcxHyb73wzrYSoi8DwUoMa1Nm3XMa1T96znqqKW3cWz04DeuSd+4huuIc0+j2qEfbwyH1lD6uvK98GD8IXwhE492+97+9+9+x2+8eO4xk6U9r2jNiS3vNgfchHbU7yGh6sSrnjD2W3jtOsUqVbvAGvt6tKNc5TJlm385JUpvwGerzIhABDfUVYEkfcJTnPgBEJTn3WsnDrSwUdD+h2Ma1jb4x8V6dnKKhUK5aq65dYDCPOb3vDOdbBEJjr+MdePLHF2tcyryNKyM2bDJTnKcTpI99sZ0JgBEhPgBQtb4du1VljWdf.SFoPJ9mGDhDjKWNd5SeJ4xkSNfRgCL60qmbEhWnPA4mGEqTdgKVEwb4K+kHZmDqF8FMZP4xkIa1rjISFxjIibvRhyGH50sXwhwRKsDIRj.2tcSiFMjNw63iOlhEKBbdGCFNbXVXgE3t28tx9+JZznuwiCSJpnXvWUqVkiO9X41mttNd73QtJ+eWhzVqVsJENSbNIQL452uera2tbnhO9wOls2daZ0pEd85kkWdYt4MuIyO+7DMZz2XzUNIFLX.GNbvTSMEISljxkKKWM855531sab618kZ+PL3NgCDEeIvgCGxd3alYlAe97IE986+9umu8a+V1d6sIWtbxA6FIRDVas0329a+sbqacKBEJz6brOJblctb43fCNfSN4DYWAM41tXvlBGxIDcKd733vgiW4ZD555DLXPhEKFQiFE+98SkJUNmSGtn3b6kOtIF9b4xk43iOlM1XCt+8uO+8+9emiN5HFMZD986mkWdYt6cuK26d2SJL6k885KEFLfQa1PORX5mLIlimfgUJyvJEge78xw86wfhEo2ImPuSNESNcfA6NvfPzPg.ciFAiFwnACXbudLrUKFTqNCxmitGcHc2YG5twyYP9yXbu1L9R5ZdMiFQypcLEKNVW65X+F2.aomEyAB9w63fBEWRd4HATH7jvIYuNWW81PHXW974Ie97zsa2y4XOgXRShXghDJTHhFMpLpnO5ni392+9nooQ850ITnPLd7X40td7ieLe+2+8b3gGx3wiIVrXbyadSVas0HXvfmagJX1rY74yGKu7xjKWNoC62e+8kwmcwhEkc2pHVEymOO850C61sSrXwjNHC9otRSbelSd9y2jfchyqWqVMYzIKb+lvccCGNTFezGd3gLb3P48YKDXSrHI1YmcXqs1RF4vh6cQH.nP7tIWvIGe7wToREd5SeJFMZjlMaRhDIvlMax6QnRkJb5omhttNKt3hL0TSISdfACFPmNcnVsZxEUzqyoeu7mMDhL1rYyy84M61siCGNN26Yh+TbOFh956ryNiG7fGfQiFITnPnqqS61soRkJb1YmwSdxS3oO8ob5omR2tck882jh0M41i358hqk1oSGN6ry3niNRJNpa2tktLzoSmx62oRkJzrYS1XiMvhEKzqWORjHgTLNQbVuyN6P0pUwjISjNcZRkJ0ElHBJTb0gw+3W+zefpcGTnPgBEJTbIPIXmhq7H51fFMZvYmclbEG+gf3W178oCDDtgwsa2jJUJN3fCHe97TsZ02qsEwfXBDH.Ku7xr7xKSvfAuTC6UfllFNc5jToRwTSME6t6tuWaKSxK2sHphd+eNwkKWr3hKRgBEHTnPr6t6Rud8vlMaL+7yy0t10Xt4lCCFLvAGb.6u+9xn0xmOexAHZwhE4.M61sqrKJ62uOc5zQF8pBWkIFxoHJEMXvfbvktc6lDIRv0t10HVrXX0pUpUqFe8W+0r6t6xgGdnrG0DHbf5LyLC28t2k0WectwMtAyLyL30q225wgIifJQrRUnPAN4jSHSlLzpUK74yGwhE6cJJDEB14zoShGOtbflhA95xkKY+ws+96yt6tKO4IOgrYyhMa1Hc5zb26dWt0stk7w8t3.MgfrYxjg82eeoX+hAmdYcfrX+3hFNsOe9X80WWJ1jSmN4niNhe3G9A9pu5q3QO5QTrXQoKFCDH.ewW7E769c+NVe80Y5om9B6Hn2D850ihEKJEwUzQShU1uHtsDKJA2tcypqtJ27l2jomdZo65dYDNAIb3vL+7yKcbpX.9hnJ6sgvUCmd5o7zm9TdvCd.e629sryN6PoRkvnQiDKVLVas03O8m9SbyadSRkJ0kNxjeWQ1kcwSf0EWhQMaP2NsYX2WrfTF2qCCNKCc00oUf.vnQXIYRL4wEfFiGMhwCGv398YT29LpUSFTsF8ycFcO5P5exILHSFFToHia1fw869St26stwogltMLGMAVWdUbbq0w9RKhQmJm0o3yCBGhIDuZxN+R33s2kEDlP.Dgfch62Ub9lKxgwhH5Mc5zr5pqR850YyM2jhEKx+3e7O3zSOkM1XC762OiFMhxkKyd6sGYxjgxkKK6IzUVYEVc0UY1YmEmNc9JNCLb3v7G9C+ALXv.4xkSdsnlMaxwGeLwiGm3wiic61oa2tTpTIN5nivnQiLyLyvctycHQhDRgVd4ncTrnZDWC8htdhPLrxkKSmNcjtmyue+RA6DNrayM2je3G9A4hIR756ymOFMZD4xkiSN4DN7vCoQiFnqqSrXwdsc2pc61IUpTL6ryxd6sGGczQ7vG9PN93i4QO5QDNbX762OFMZjFMZPgBE3zSOkPgBw+w+w+gTrJa1rQ+98oUqVToREYO7pqq+Futq33k3ybhOuI9cRdcKvlIW.Nd73gxkKyomdJ+2+2+2b+6eelc1YQWWm74ySwhEkNuqSmN3vgC4Bu4086KIbdm3y5BwBqToBO7gOTd80tc6J6rViFMhKWtHUpTL8zSSwhEoXwh7vG9PxlMKat4lDIRDb61M.ToREY+yJDU1rYyWXrVqPwUJ9wEwj7qI+6TJ2oPgBEJTn3MfRvNEW4QLT+lMaJKm8986+d+7IFrrYylesQKzaiIErS3Lkm+7m+du8XylMhDIByM2brzRKwLyLyk1UKvOE6jhHZKYxjuWC19kYRA6DCz9c8Xkhe4iEKVHXvfjLYRlc1YkwJnnWZDq5bcccJWtL555RWxYylM4fkpToBYxjQFsk862WNTMgnvhWOwJL2lMaxAeJD0xtc6xsmToRgUqVIWtbryN6v8u+8Yu81iRkJQmNcjcUmv8ZISljUWcUY2eM6rydoDqC9IGmJb+WwhEkC3pd85XvfARkJkLlBeSQZ0Killlzgrh9B7zSOkgCGJcovomdJ0pUic2cWN8zSY73wjLYRt10tFqt5puym2PfSmNkBN8se62xwGerb.cB26dY9Y9Ii5pIECaRmqEJTH4.6JUpDO9wOlu669Nd9yeNmd5ozue+yEGk24N2gae6aSpToviGOuS6Wv4cpxImbBmc1YzpUKYjaAuX06WsZU49rHRKmat4HXvfWnSGDetLXvfbsqcMJTnfz0IhOezpUKFLXv4Nu4j85jHFQO5niXyM2jG9vGxie7i4YO6YTsZUb4xEISlj0VaMtyctC28t2kzoSKOF+o.MiFQynQL62KVRkhA4xQ+iNjg0q7iQa4PncCFbVF57jGynVsnWlLXzi6WDWkiFx3d8Yb+ALpWWF0pECqUiAExS+SOgAExwnZUXbuK4htQ3TDilPS2BlBGEKKuJ1W65XclYTNqSwmUDBRHtdlvIShXc7xzOxuNFLXfre1rXwBd85kYlYlK796DI+f37EhTe3niNRJpU850wgCGLd7XZznA4xki986ia2tIYxjrxJqvctycjBqnqqety8KVXXyM2bzrYS1YmcnWudxWiZ0pwImbBQiFU1Ip0qWm74yKcr1KuPFDWiP3JemNcJi.52T5WH53Ogivc4xkrm9DBrM44ba2ts77+4ymGOd7fGOdXznQTpTIpWuNc61EWtbQ5zokNVORjHmK1Ec3vAyLyLxEAhv8WhiAtc6Fud8Ji4wFMZP0pUkWKZR2bKbllHBUsYyFd85Ee97cgQps3dlD8Mq39u74ymLxMecWaPHz3LyLC0qWmyN6L1e+8k2Gi392DtUzlMajHQB52uOGd3gXznQ762Od858bQvr359d85kHQhP3vgkQ7Y1rYwtc63ymO74ymzI5hNhcokVh50qS61sYqs1hhEKxQGcD0qWmCN3.b4xEiGOl50qKcSnGOdPWW+cpJCTn3yKF.LBiM.nMwe2j++JTnPgBEJT7pntaWEW4QLPj1saK6DoODA6DNWwpUqxUD56xJfdRGwHDrylMau2aOtc6l0VaMt6cuKKrvBuxJ58xfACFvtc6jHQBYj77ghvoHsa2VJZ26xwI3mFXxGSQ9lr2ylreNT7oCMMM750Kqs1ZTrXQpUqlLZFEqt6ToRQf.AX0UWUF6RQhDQ1iWkJUhJUpPsZ0NWDSMd7X4mWm7mMmrG2rXwhrq0BDH.gBEBKVrPmNcXqs1hu669N1c2coRkJzpUKovOlMaFud8RrXwXwEWjae6aypqtJoSmlHQhfCGNtzGCDwVXgBE3fCNfLYxPwhEoYylLXv.BDH.qs1ZbyadShDIx67fZ000wmOejHQBRmNsrC+xkKGO7gOjs2daJWtLkKWllMaRznQY80Wmeyu42HiXx2GQbDCfLSlLDKVL1au8nVsZRgTurcXoHtz762ubeW3ZMwwuNc5Hc1Q4xk4O+m+yb+6ee4fiGMZDtb4h4medt0stE2912lEVXAb5z4679kPXLwfZO6rynYylXwhEo.fCFLfxkKKOOG7SNUIb3vR2r7lNumOe93N24NzpUKd5SepbPt6u+9Rgim7yyhEBgP32M2bS9a+s+FO9wOV98zueehFMJoSmlabiavu6286X4kWlHQhboiJ4OTLXwJlBGFSQhfAGNQyjYFOnOLZDiAF0nNc27Yz+3Coscmft4WHt13QP+AuHhKGOBFNhQC5y3d8Xb2NuvQcCd2t9slQinYyNlBFFKKsBt9x6gskWFSWRw1Un3SMBGvI5A0fAChWudeuEV3ki57HQhvcu6c45W+5u1Euf3ZmgBEhadyaJijQqVsJ6dVg6oDKBCmNche+9ktx61291RQptHwxDBzLyLyv+4+4+I986m+e++9+wt6tqbg2b1YmIOGkPLsjISx7yOOSM0TRAGEwrtISljh9HhPaQzVdQHVHKBQ1DtaOXvfRgFMZznbweH59rrYyJcXnvA9BmsELXPlat43d26dbiabClat4Hb3vm69wEWuT3LZKVrvyd1yHWtbLb3PpUqFsZ0R1eblMalHQhvryNKoRkhvgCeNA.mLdHc4xkLl8un8ewBXb73wnqqKWvQSO8zDNb3KbQ63wiGoPtMa1jwiGSqVsX73wTnPAYpFDIRDRkJkTbsxkKKiuyzoSyTSM0498KDBEGOdbVZoknZ0px3vbvfAxEqk3dJD30qWt4MuItb4BGNbPf.AjGG62uOEKVjJUpH+cGDcGd5zokoivkcwVoPwmOz.MSflNnYFz58i+0lYrlY.inDsSgBEJTnPwEgRvNEW4YxhY+08K98thXfCNb3P1oCuqBJIVApgCGVFcKVrXQNz42kmGGNbPpToHc5zxgD+9fEKVvue+xNv5kKb92UDwxjHBC62uu7Wp+cAki790Atc6lqcsqQoRkjw0Wtb4jqL7pUqRf.AjCoR3dUQbHIhtIw.5lz8VhOmJ5UxI69GwykSmNkNdRzebmc1Yr81ayidziHa1rRmpIF3mSmNIZznL+7yyJqrhLBL84y26kn1ZZZLb3PpWuNEKVjyN6L4Pk74yGyLyLLyLyfGOddmGRqXeLVrXb8qecpUql704fCNP1AQFMZjfACxpqtJqu95rxJqPnPgN2P.eWPHp4TSMEW6ZWihEKx1ausbvqGe7wTnPA4fFun8KQr9lHQBRlLI4ymmxkKS61skNb3jSNAcccN6ryjQf0gGdHsa29b8o2ctyc327a9MRmd79bNDw0MJUpDGbvAb7wGK6QovgCiWudkqbewmEE8.jvQ.Wl3rS3bgEVXAlc1Y4ryNS1cTat4lxXZypUqRADqUqlTP1m+7myW+0eMGbvAzpUKrZ0JIRjfYmcVVc0U45W+5r95qS73wescW0mJLXwB5AC7htrK0zLpcKFVtDi61lwiFx39cYX0tLrVYzLX7Eh0oow3widQe28gtXJzzdgPc5VPytqW3rt4lGaW6ZXcwkPOVbL7yfvkJT7lXRQ0VYkUvtc6zrYSoHMuqKjBQhI3zoSlc1YkKbhHQhv5quNoSm90dOhhqqJhpcwBVHTnPjISFJUpjbwkXxjI444hGONyN6rrvBKvxKuLgCG9MddFwqie+9Ys0VSJlUrXwjKXld8dwPoMa1LNb3PtMs1Zq8JQarUqVId73rxJqH6ttIc32Eg35MyM2b3xkK762OKrvBxEyiX6zqWur3hKB7h3eV3TcwB6QbOChNwcgEVfae6aS5zowmOeux0UEWub5omlVsZgMa1vue+b5omJiQRQO2JhgxfACxxKurL9sEQ1oPf0abiaPf.AjtcOd73xty60c7WDojoSmFSlLQ2tcIVrXjJUpKTnOGNbvbyMm79wBFLnTbsQiFgUqVkKtIwBZxoSmTtbYrZ0J862mEVXAle94O2BnQDo+ACFjUVYEo3mYxjg986KWDRhqAJtmOqVsRznQwjISLd7Xb4xEABDfiO93yscIDy0ue+jLYRRmNMqrxJjJUp2qExiBE+rhlNZl7gA8nL1ZSvXUPCLnGDClCglQmuPPOEJTnPgBEJdMntKAEW4QHbjHpwpUq1GjC6dckZ+6yPPEqrTQwo6xkKYr5bYPLjXQbGIbhz6KBgHsYylTPDf2aQ6DNhYxNGS4ns+4E2tcyJqrB0qWm6e+6S1rYkwbY61s44O+43wiGYb8I97mH1mDeAHEyahMGyGv...H.jDQAQ03Vb73wx3gZxgYIFbkvQdYxjgM2bS4.xpVsJkKWVNHKe97wxKuLoRkhPgBwLyLCqt5pjLYR750K1sa+MNHvKBwOuKhjIwpHWrBz850qrWbde94Xw4BhEKF26d2iQiFwImbBUpTgJUpHO1DOdbtyctC26d2S1mYeLh.2PgBw+5+5+JlLYh986y96uOas0VX2tcVZokHPf.xg385XxNT5l27lztcadxSdBc57htOqZ0p7vG9P1YmcvhEKzsaWJVrHsa2lgCGhSmNIYxjbiabC929292X80W+8VrN3ENvnVsZjISF1XiM3vCOjQiFga2tkwslHhSEwVoc61k8mzk0IahHvKRjHbyadSpVsJO3AOfSO8T9K+k+B0pUizoSiKWtjNLLSlLbvAGvVask78XMMMBFLnzAAqt5pL2byQ73wwqWu+rJVG.Z55X1e.rMaZFdmpXPWmNO8wLHeVnWOFO7mVzLiG8iNvTS6CWnNwquQinYwNl7G.yyjFKKrDNt90w5LovjW+uPrN0hAQwmYDtbZgEVf.ABPylMY3vgXylMBFLHtc69cZwTHtNVjHQ3O8m9Sb6aeaFOdrLJnEKNrKBw0oDQ565quNEJTfRkJQ0pUoe+9RgjhDIhL9EEm2ax6c7sse62ueVc0UIRjHjOedxkKG0pUSdOv1rY6b2irGOdj8ylHgD73wC25V2hYmcVZ1rIlMaVtfJdSKpFe97ISkhd85gUqVIb3v3wiGrZ054tefUVYERlLI+leyuQtPiDamhEJhOe9Hb3vRmQ5zoy230wc4xEqrxJDKVLt4MuIkJU5UhAYw9enPgHXvfRQ4lTjpkVZIb61MsZ0R99RnPgtvq+HddENUT3RNwm2tnsaw0nDNILWtbTpTIZ2tsTf3Xwhge+9kQFsllFc61kkVZIfW3ROQO38xH590PgBwhKtHUpTQt.YRjHg7X6K+4KwwfHQhvZqsFEJTfBEJHcAnnSC84yGACFDe97Iu976ZRjnPwO2XvfCvxzfAyXPOBiG1..zL4ACVlFMygPS68aw1oPgBEJTn3W+nDrSwUdDBGIhxk1sa+N4hsWFwfYc5zIVrX4ROfhWFgveQiFkkVZIJTn.au81zqWuKkvVhA85wiG762+6U+SMIhUTrnCvrYylTns2GDG2E8QwK28HeNPEEle9PHfV5zo4V25VTudc1XiM3ryNiLYxvYmcFNb3.GNbH6eEgv5BWxYvfAYTUJh4RgKlDNBPr5+c61MNb3.CFLPiFMjBGmISFd7ieLYxjQNXPQbR5wiGRmNMewW7ExAnFOdb4pk+CAw4Mra2NlLYhgCGJijqIGz2GRDnYznQb61MyN6rTqVMd9yeNsZ0hyN6L51sKNb3fEVXAt6cu6GT2t85vkKWr7xKS2tc4ryNC.xkKGkKWliO9XN8zSkCb80gISljQe1st0sjqje.oyCxkKGvKNVZxjI44P000Id73b8qecY+BN0TS8AIPkvccmd5ob3gGRtb4jGiEcx4jCwV3RfXwhctAq913kcbRkJUHa1rjOed1c2cYvfATpTIb3vAMa1jxkKyYmcFYylkSN4D46qwhEikVZIVc0UkwwVznQ+r4hfWDCk1vb3PXekUeg64FN.My5LnXdF0rAiG9hHxTxGx4k0zdgS8LXDMSFwfCWXLXXzmZZrtzxXcoEw97yi4.A9v24Tn3iDBG1IR3.3mbI2ks+OeYDwHoMa1j8alvAvusmOwB+Pr8jHQBpWuN0qWWlNElMaV5nI61s+dscN4BDKTnPL8zSK6Btd85IcQkPrkWVzRw8vYylMhGONQiFUtuJtWg2z1jMa1HYxjDOdb4wlWN9hEaCBGPJhARQuy1qWOYbxK5XuKq3phiw974ijISRqVsnRkJxEfxjcY3E87ZvfAoHTh+ew98EsuK5Paud8ha2tk8+m364h99DWq0pUq3ymOld5ooZ0pzsaWofcgBEBGNbflllrmUGOdLoRk5s94Ow8G51saBGNrT3Rg.xhXx9kul9jGGSjHgLpnENyWzWchEY46yhsRghOaXvxKbRmAaL1bXFO9EtOVSyJZF8flQWJG1oPgBEJTn3BQcWBJtxinyeD8iwjk196ChAMHDK3xLDj2zySxjI42+6+8LZzHpVsJUpT4RsMJVgxhg8+15riKCh99RDoaEKV7CRvt1saSqVsnc61e1Er6kOdpDs6yCgBEh+ze5OIW86862mRkJIis1tc6RsZ0vrYynqqK6IGMMMYegI5VFwJ1dRG2IFxmQiFoWudRG0kOed50qGMa1Tt53EQ4jHZulat43l27l7ke4WxLyLC555x3u8CECFLHiqyIc6jttNgBEhnQihKWtdm6DyWFgvWSO8z7G+i+Qb5zIO3AOfVsZIE05K9hufkVZIb4x0G79k.QDiszRKQmNcHXvf7vG9PFMZDEKVjSN4DlYlYtvuewfDCEJDqu95X0pUoSI2ZqsjcSiXHpBgcENvX4kWl+3e7OxZqsFQhD48dX2vKN2P2tcIe97jISFJTn.MZz.GNbH+LU+984jSNgRkJQud8HPf.L8zSybyMGQhDQJ57kEOd7v0t10nc61r+96K67v81aOJUpDFLXf50qKOW53wiwqWuxgmtxJqv5qutLxVECW8yMFraGKSkDMccL3vNsCDhNO4wz+jiXT8pLdzkyQ4uMzLXDMcczrZGitbioXIv5Jqh04mGKolF8PAw3GwOuqPwGClrmde4N68CINvEKD.QOu8lDi4Mg35IhqSNonXhEKyGZrkKtuSQTTOZzHofklMa90deshWSw08m794DW+7MscIdtm746sseH1NEKtFw8yJV7HuuNiWzCcVrXQ1aqh8+2zy6KKp6k8yMSdrS7ZcY99DeOhjEwgCGm6XfHJQEOWSd8uK6m+DhAa2tc41lHJ8eaueJbXnUqVkowf3Xn3KEJ9EEZl.CNeg.ci8vXdwOuogwerW6L9huTnPgBEJTn30f5teUbkmACFP61soc61eThkQwunpXfnuuCXW7Kz5ymOVZokHe977C+vOvomdJsa29sFamhUj5aqj4eW1dD8IVjHQHRjHRGI99fXfy0pUiFMZH6li2ksGU+08qODQXzvgCkQQoPPFQDpBu3myD+7kn65DB.KFBSmNcna2txUjOfzIciFMh50qyomdJau81jKWN4yiX.Y1sam.ABPpToXt4liEWbQVc0UY0UWkvgC+QeeWDamc61ktc6xvgCkCDULno22E.f.wfqBEJDW+5WWFqVsa2lXwhw7yOurie9XhvAgQiFkwiGiCGNviGOznQC74yGNb33MFQjB2q4vgCYbZ0qWOrXwBVsZk82eepWuNFLX.+98SvfAITnPxuDcGTxjI+fNFJhf0Z0pwgGdHGbvAToRE51sK1rYi986S4xkoSmNRGFHNO9byMGyO+7DLXPoi.trH5jmkWdYt28tGtc6VFkohAPJNFK9S+98SrXwX5omV1yhgBE5m0nu7sgAylwfGOnYxDZ5lwfEqnYzHFrYi9Gc.CqThw86x320dqyfFZFMAFMilISXvlCL5wGF86GSgifkTov5RKg0oRhI+Av3GgXeUghOE7wPftW2y4GimOw0S9T6LoIcb2kkOjiahq27txGageDaGh928846+8c+ex+7c46SbL3MsfPde2tDN77ckIONph5RE+5AC+nvbu3bCpeiXEJTnPgBEuKnDrSwUZDwxRylMoYylu2tEaRDCXWDSKS12VuOHhmlHQhPrXw3niNhyN6r2pfchn.JUpTDNb3OJQhonL5md5o4fCNfrYyR4xkeud952uO0pUixkKSkJUjc8jh+4FwJndt4lC.BFLHNb3PFSkBQ0GMZD850i50qKcjlPzcw+cwhEoYylzqWO51sqLFkzzzX73wRw5qWut74UWWGOd7P3vgYpolh4medVas0Hc5zDKVLBFL3GsXhbRDQDasZ0nXwhToRE52uuTTRwpH+ikXKhdpQzORhdQxoSm30q2OJuFWzqarXwvsa2jNcZYrVI54m2FBGGDIRD9s+1eKgCGlPgBI6cPSlLwLyLCSO8zxdFTrO4ymuO3igBGYWrXQ1XiMXqs1hFMZH+LoHNLeYAWEhssvBKH6gv2ksCgPxISlj+q+q+Kt6cuKkJUhACFHcxP0pUkc5mCGNjcdnvsgtb45JkXcShAKVPOTHLnqiIe9nSr3z5G9N5ty1LHWFF2t46TG1oYzDFr6DiN8fAudwT3HnmLI5ImB8jIwbnPXxkKLXyFFTCvUgBEJTnPgBEJTnPgBE+SBJA6TbkEw.V61sKUqVkZ0p8VEA6xfnKGDwDzjwa2GxyWvfAIYxjbvAGP0pUoYylu1GuXk352uelc1YkQflUqV+f1NDNrytc6DKVLhFM5GTjpIhDyFMZP850oUqVuSNr6SQWyo5vtO+HVA0ACFTtx8GMZDNb3fM1XCN8zSkNxre+9ztcaY2rzqWOFNbnLFnxmOOFMZjtc6R61skh2IhoIgHzBQwsYyF974iXwhQpToX94mm4medVbwEId733xkqOYqNawOeIhawIcb5mB2jJDAzsa2DOdb4qymZDBXIDwB9o3m8x75OoS6b3vg7brQhDgrYyhQiFYpolR1+Pd73QFMwenHduoToRb7wGy1auMmbxILb3PYWJY1rYovviGOFa1rQznQIc5zL2bywTSMENc57cd6Q7Y.QTuN0TSQ0pUYznQXylMFOdrryCAjQTmMa1txJR2jnYxDFMYBMKVvnKWXvpMfwnY0FcsZgAExy3tcfA8Y7nw.+34n0zPyfIvfAzLZ.LX.zLhQGNvTfPXLb3WHVWzXnGOF5whidjvX7yT28oPgBEJTnPgBEJTnPgBEeNQIXmhqrHhetVsZQoRknToReTDrSDGYhNmvjISevQXmEKVvqWuL0TSQhDI3niN5Be75553ymOlZpoX4kWl4medb618GbWhLYjXFHP.BDHvGTLHMd7X52uOc5zgFMZHGx8maDhGnDs6yKBwjle94wiGOL+7yy28ceGO8oOkc1YGxjIiLJBaznAZZZmqaG60qGsZ0R92Ob3vy0QkFLXPFyV974iHQhPhDIX5omlzoSyzSOMSM0TDJTHo36enc.4aBQT5JhFxI+b3fACXvfALb3vOI873m6nk8C402kKWrvBKPhDInSmNnoogc61kwm1GZm+IPHjeylM4niNhs2daN3fCnb4xX0pUYG0AvAGb.MZzPt8s3hKxZqsFyLyLDHPfOJh9Z1rYoSOEedwhEKxOeHDh9WBh0MIFLZDrYCKwigAqVvTjHXJbX5s+dLHeNFUuFi51EDhYaVGC1cflMqXvhEzrXEMKVvj+.nOUJLGKJ5ACgIOtega5rZECWA5tOEJTnPgBEJTnPgBEJTn3yAJA6TbkEgfcsa2l74ySgBEjtS3CAQoqO4vh+PErSzoVQiFkHQh7Fc1lUqVId73jNcZRmNMwiGG61s+QquRDN9ygCGePQroX.3c5zgxkKK68oIcH0k843igy3DBi7oRTDEuaHDpVWWGud8hGOdvpUq32ueBDH.6u+9jMaVoyXEhwI9ZxmGQmpHDOWHXmEKVviGODMZTlZpojQo3TSMEQiFk.ABf8el51JgP+d73Aud8J6bxI6HnOT259qQz00kKffOkHh6xRkJwFarAO+4Om74yilllzQlISlTJnmHZVc4xEoRkRJV2GqOOI5imI4ScOR8yBZZXvjIL31MFb3.iNriAKVvbffzKaFFVtLiZ0jw+3h6vfUqXziWL5xIZ+nfcFrZESd8gdrXXNT.L41iJ1KUnPgBEJTnPgBEJTnPgBTB1o3JLBA6Z1rIYylkb4xI6+mODDCXWz4TenBk8xNayue+uwAy5zoSRmNMKu7xjLYR7506GUmAIhevOF6a.zoSGN6ryHSlLTudc52uu7X2aCQrl9wHFKEchln6oTQi4UCDQfnOe93F23Fx3E7niNhiO9XxmOO0pUilMaRmNcnWudRw6zzzPWWW1gWNc5DSlLwfACvnQi3zoSBDHfL9DiFMpLFAsZ05mr3u70gPvNgSsN3fC33iOFiFMhGOdjcQltttRztOCHbiclLY36+9umG+3GSqVsHPf.bsqcMlc1YwoSmbzQGIipUSlLga2tIRjHDJTnOnHD9e5PSCCFMhI2dv9BKfdrXLpVcFznNiZzfQ858hGiUaXNfeLZ2AXxHZFMflAinoq+B2zYwBF9D5LVEJTnPgBEJTnPgBEJTn3WRnDrSwUVDBxnoogYylwgCGDNbXb9AzsMB2VDLXPoCY9XflllrWuhGONIRjfZ0p8ZETRz8VyLyL32u+O5CIVDifd73QFifeHDHP.oHJBmRcYbtmPHG61sSnPgtTaGur.iSd7yiGODJTH73wiTTjO2QEnhWflllLhCc4xEd85k3wiyryNKkJUhZ0pI60ttc6R2tckB1YwhEb61sr2zlTvN61siWudIb3vDHP.Yem84.gP3d85kzoSyomdJ6s2dxN5S3bPkHx+7ivIv4xkiCN3.1ZqsHa1rnqqSxjIYkUVgXwhQoRknYylztcaFOdLNb3f.ABPjHQ9fiP3+oDMMYDVZxqWF2uOi5zggsaw398AzdQrY5x8Kh4R04qUnPgBEJTnPgBEJTnPgh2HJA6TbkEgfOtc6lYmcV51sKUqV80FKluIgdl7wnooQxjIY94mmvgC+Qc3+VrXg.ABP5zo412913wiGoSvDaeZZZjHQBVZokHVrXeRbzgv0HISljabiafKWtdkGyKe74Mc7yoSmDNbX750KFMZTtO81vfACX0pUBGNLW6ZW6MNL7IO97xaGhub4xEIRjfzoSiGOd9n4fPEebQ7yANc5j3wiSud8ne+9xu50qG850igCGdNG1I5SRg3WZZZXxjILa1LVrXAKVr7Isi5tr3zoSVbwEoZ0pr6t6xImbBMa1j74yS850oa2tRw8T7oGgKdqWuN6u+9r0VawYmcFCFLfolZJVXgEXokVBylMySe5SYu81ilMaJipSQLF6ymOkfce.nYv.X1LFLZDCVrHuFglACnY1rRrNEJTnPgBEJTnPgBEJTn3RfRvNEWYQzsU974ikWdY73wCsa2lA+X237xHDu4MIljllFABDf4latO5NpvrYy3wiGRkJE28t2kolZpyItkPvP+98ybyM2GcACmb6vkKWL0TSwcu6cY5om9b+6WzwmK53mvciQhDAmNcdoc1lnq.iFMJ29129s5vNwwmWdaU7kMa1vue+jHQB73wiruyTb0Bgy3d4t.SDwsBmZNonbVrX4REwpWEvpUqDIRDVXgE3V25V31safW74Ww9mpiE+4CQ20UtbY1XiMXiM1fhEKxfACPWWGK+n3Q0pUiCO7PN93ioe+931saRkJEyN6rRma+gz4m+SOZZnYzHZFMBWADVWgBEJTnPgBEJTnPgBEJ9kHpoSo3JKhnvLXvfbqacKVd4kY3vgW3vvurB1oqqiSmNwlMaeTErSDEkIRj.mNcRmNcdsNYS3nHa1r8IQvNSlLgKWtX5omFe978JNR7cUvNgagrZ0JNc5DqVsdobOjPvt3wiic61eq8O3EI9lX6wnQinqqiMa1vgCGXznQkKl9EDBGyJDoS795uzbilPPxolZJ9C+g+.SO8zb1YmIiXWkXc+7xnQijwg4Ce3C4wO9wTsZULZzHMZzfLYxvSdxSnQiFr4laR974AfPgBwJqrBqrxJDJTHrYy1uXDMVgBEJTnPgBEJTnPgBEJT7qSTB1o3JKZZZLd7Xoiwb5zI555xXySfvgEBw7LXvv6jicFNbH862G3Ehc89D0hh9qZ3vgXwhEhGO9qHBgH51DCzWSS6MJTwjNRpWudLXv.FLXfb+SWWGylM+JOGFLX.cccz00wsa2Lb3P50qGiGOFiFMJ+R78I1tEG+DhJN4wOw1rXapUqVxHNT77JDSSDagBgYDcS1EwfACnc61xtMavfAx22sYyFVsZ8WTNvRwEiPzteIiPfQe97whKtH986mSO8TLZznJpV+YlwiGSqVsHSlLr6t6xN6rC4ymWtnLLa1L0pUim7jmP0pU4zSOktc6RvfAYpolhkVZIRmNMd85U4tNEJTnPgBEJTnPgBEJTnPwmcTSnRwUVDBI0rYSJUpDiGOF+98iCGNNmnc862m50qS61soWudxtI5kijuKh986SkJUX73w31saoCxtrCceznQRQ05zoCFLXPJt3K+3DBRMZzHLYxDVsZ8BGT7vgCoSmNTudcpToB0pUiVsZIccne+9wiGOWnK8DBD1tcaJWtLCFLPFUg1rYSd7SH.WmNcnSmNxXH0lMaxiAhdEaznQzrYSJVrHUpTg50qyvgCwpUq32ueRlL46bOi0tcaxjICmc1YTnPAZznAiFMRFqmQiF8c58SEJ94.ylMiWudwlMaDJTH.jtl8W5hR9KADmeqRkJ7jm7DdzidD4xkS1SnABD.a1rQud83YO6YTnPApVsJ1sam3wiybyMGKrvBL0TSgMa19bu6nPgBEJTnPgBEJTnPgBEJTnDrSwUWFMZD850iBEJvyd1yX3vgrvBKPrXwNmfXc5zgrYyRgBEnYylRQ2trB7zrYS1c2cYvfAjJUJBFL3aTHsWlgCGR61soRkJTnPALa1LSO8zuhfc850iRkJQqVsX3vgX2tcBEJzE95HDR7zSOk82eeN6rynQiFXxjIBEJDIRjfzoSS3vgwpUquhPYhiekJUhs1ZK51sKQhDQ9ZJd7850ihEKR974ob4xX2tcVXgEvrYyuhS7DOeat4lbzQGQwhEoWudXwhEhDIBKszRjLYRo.aWjCBGOdrTHwiO9X1XiM33iOVd7QHX2QGcDoRkhYlYFhFMJd734RGImJT7oDgSUsZ0Jd73A3mbhp5yme5Qr.HJTn.O9wOlm+7mS61sITnPbqacKBEJDMZzPddpBEJfEKVHZznrxJqvpqtJISlDud8pDXUgBEJTnPgBEJTnPgBEJTbk.kfcJtxhPHriO9X9+9+9+nWudLZzHYbOJDDqQiFr81ayN6rCkKWl3wiKck0kYv4kJUhu9q+ZZ0pE26d2CiFMRf.AtzB10ueepVsJGczQ7rm8Lra2Nd85UNDeAsZ0hiO9XxmOOCGNj.ABfCGNtPgEEBQ9zm9T9lu4aX+82mlMaB.1sam4med9i+w+Hqs1ZDOd7WQvNgy4N8zS4q+5ulFMZvxKuLKszR3xkK4qaqVs3vCOjM2bSN3fCvue+31sab61MVrX4bNwS3Ftu4a9FdxSdB4ymWtMI5DpacqawW9keIoRkB3UEuPDql4ymme3G9A99u+646+9umrYyhlllLJTMYxDVrXgDIRv0u904F23Fr1ZqQznQekXQUghqBn9L4OeLXv.Z1rIYxjgG8nGwN6rC555r7xKy+9+9+NACFjm8rmQ850kmKQrnB9s+1eKqu95DHP.UDlpPgBEJTnPgBEJTnPgBEJtxfRvNEWYY73wzueeJWtLau81zsaWt90uNsa2lgCGJebhGyomdJYxjQJTk343hFFa+98oYylbzQGwidzinb4xXznQFNbHqs1ZRwpdaCyUL33rYyxyd1yvkKWb8qechGO94FFb61s4jSNgiN5HYusM8zSegOu862mZ0pwomdJO6YOiSO8Tb61MlLYhlMaJEVzhEKxdhaxsUQ29UoRE1e+8oRkJ3wiGhDIB850S93Dtl6jSNgc1YGpWuN0pUiACFbNWBJbXm346fCN3b8wW0pU4gO7gLZzHlZpovmOeuRzfNd7X5zoCUpTgc1YG9tu663wO9wToRkWIJQ60qG0qWmiN5HLa1LVsZUF0chdDSgBE+yIhEpwSe5S4fCNfd85wpqtJ27l2j4laNLZzHCFLPds.Od7vbyMGqs1Zr5pqxzSOMNb3PIVmBEJTnPgBEJTnPgBEJTn3JCJA6TbkkwiGy3wikha0qWOFOd7qUnFCFLvvgCoQiFznQCFLXva84uYylbvAGvyd1yXqs1hSN4DpVsJ0qWG+98iOe9jwB4aBg.gEJTf81aOb4xEkJUhtc6hEKVjN0S3Xt81aOFLX.FLXfNc57F2+E66kKWFCFLv5quN986mrYyRqVsXyM2DSlLQ5zoIVrX.btAPKD8rQiFTudcZ0pkzohBDB60oSGZ0pEsa2lACFv3wiesaOc61kFMZfttNKt3hDKVLb3vA4ymmu9q+Z1XiMXu81ivgCiISljBvI5bpZ0pwlatozccsZ0h6bm6PpTovoSmXwhEzzznb4xr6t6RwhEkNooZ0pzoSm24dxSgBE+5h74yye9O+m4u7W9KTtbYhFMJ+K+K+Kr95qiQiF4vCOjG8nGw1auMCGNjXwhwMtwM3l27ljLYRb4xk57HJTnPgBEJTnPgBEJTnPghqTnDrSwUdFMZjTnnVsZIEeRPsZ0nYylzoSG50qGCGN7UDa50QiFMXqs1hs1ZKpUqFUqVkM1XC73wCe4W9kLyLyfKWtdiB1MZzH5zoCkJUhrYyxomdJ1samc1YGhFMJIRj.61set9n6fCNfACFfMa1nb4xztcaz00uvWmgCGRmNcvhEKr3hKRhDIvpUqb3gGRtb4nPgBzsa2WwMgBAOEQPY+98oe+9u1iOS93FMZDiFMR92M4iQ7dQ+98wpUqrvBKvJqrB974iM1XC95u9qoPgBjOedpVsJgCGVtcId9qToBas0VryN6PqVsvue+bqacKt10tF1saGylMillFUpTgnQixImbB4ymW1sfJm0oPw+7R2tcod85r2d6wCdvCX6s2FMMMhEKFKu7xDIRD1e+84AO3Ar0VaQ974QWWG+98yryNKyN6r3ymOrXwxm6cEEJTnPgBEJTnPgBEJTnPghygRvNEWYQzmYh3Ore+9TnPAN93iY73w3xkKFOdLGe7wjMaVpVsJ.X1r4KknN0pUim7jmvN6rCVrXAud8RkJUHWtbjMaVJUpDVrX4bQ53jHDupd85b7wGyQGcDkKWlpUqx29seK1saWJ.U0LIlpH..rgsIQTPT0pUIWtbmKRLc4xEYylkjIShe+9wlMaux9uQiFkwpoMa1HQhDL8zSSoRknRkJRmt851em73mISltvdeS75HbC2ape3DB3YvfAb3vAIRjf4med74yGMa1DmNcR4xkoSmNuRzkNYDct81aStb4XpolhkVZIt10tFyO+7XznQ4qcvfAIVrXxH5Tzmc1sa+R2ufJTn3WWznQC1byM4QO5Qr6t6RsZ0HVrXL0TSQnPgnSmN7O9G+C9a+s+FGd3gzoSGra2Ntc6l.ABHcNsBEJTnPgBEJTnPgBEJTnPwUMTS8VwUZDNFSDkhau81Ld7XN5nivtc6Ld7XxkKGarwFTrXQLZznr64tn9qSDyj4ymmiO9XZznAyLyLDMZT1d6swnQiTtbYxmOO9746B64nQiFQ2tcoRkJr2d6wAGb.Ma1D.1ZqsHd73byadS74yGUpTg74yS974oPgBLb3PJTn.YylkhEKhSmNeEA6fWHLlPLsd85QlLYX73wb5omRkJU.9IAJuntXZRQOEh38xOVwqyjBDdQOWh+s986S0pUIe97zoSGJVrHiFMBKVrfMa1dkN.TDol0qWmSO8TpUqFyM2br3hKR73wwue+xdxqYylxXP0fAC31saovoCFL3bB6oPghe8yvgCoWudjMaVdvCd.O7gOjhEKhttNISljnQiRud8nXwh7zm9T1byMoZ0pXylM750KgBEhfACphBSEJTnPgBEJTnPgBEJTnPwUVTB1o3JMhnTrWudb1Ymw29seKas0V3vgCLYxDiGOllMaRgBEPWWmomdZrYy1aTLm1sayomdJGczQToREb4xE+1e6uEcccBDH.850iVsZwYmcFISlDe978ZEDSDUk4ymmM2bS1e+8Y3vgXxjIxmOOYxjQFSmUpTghEKJcEmllFMa1jb4xQ974IZznu18cg62z00Ie977+7+7+fttNYylEMMMhGOtLNMecBwcYOFeQB48xONgve.TnPA9a+s+Fau81nqqSwhEoZ0pDIRDRjHAQiF8bhPJDrqSmNTtbY52uOgCGljIShMa1jNVrb4xr2d6wImbhTbSmNcRf.AHd73DNbXBDHfxkcJT7OQzqWOYuV9Ue0WwCdvCXvfADKVLVbwEIPf.r2d6wt6tKGczQTsZUFLX.1sam3wiSpToHPf.3vgi2ZujpPgBEJTnPgBEJTnPgBEJT74.0DuU7KBlLdGENNyrYyLd7XLYxzq0UXWTO10pUKN7vCY+82mpUqhUqVwiGO30qWRlLI4xkiLYxfCGNXgEVfHQhH6UsIQDwiMZzfb4xQ850wqWuX0pUzzznVsZbxIm..Gd3gxH1zmOeLZzHLZzHUqVkxkKSud8di66hHAsToRX0pU.jttqd85Rw.c3vwqDgmS1EcuIQ4lry6dcG6lTvNiFMRiFM3YO6YRWIZwhEBEJDqt5pL0TSge+9O21xj8jWud8XznQX2tcb5zoT70gCGRiFM3jSNgm+7my96uOc5zAWtbQhDInUqV.fSmNwtc6W3wLEJT7qKZ1rI6ryN7nG8H1XiMnZ0pL8zSypqtJKszRnqqySdxS3AO3AjOedFNbH1samnQixJqrBKszRxyI89rvFTnPgBEJTnPgBEJTnPgBEJ9TiRvNEWoQDqk555DKVLt6cuKKszRDKVLb5zICGNjrYyx8u+84ryNCMMMY2ocQCksYylr6t6xN6rCUqVkgCGRlLYne+9XvfAFLX.6t6tzoSG9M+leyaLBFGMZDCGNj986iEKVX1YmE2tcSsZ0X3vg7jm7DN3fC3ryNiJUpPpTovue+TudcrYyF850ipUqR+98uviABmmY2tcVYkUXpolBylMS4xkY6s2lCN3.d1ydF1sam4lat2nfcSFMlu7+tPvrQiFcgh1IdNz00YznQjMaV52uOlLYhEWbQ9xu7K4d26dL6ry9JNY4k6TOCFLH22l70ua2tTsZUxlMK6t6tTnPA.HYxjR21EOd7K73kBEJ90GkJUhu9q+Z95u9qIe9730qWt28tG2912lomdZN93iYqs1hm7jmHWHFQhDgkVZI9hu3KjwS76qSjUnPgBEJTnPgBEJTnPgBEJ9TiRvNEWoQHXmISlvqWuL+7yy5quNSO8z3wiGFMZDGbvAzpUKFMZDkJUR5dqWFQ20c1Ymw96uOGe7wRGas6t6R4xkkcw1wGeLCGNjM2bSBEJDIRj.WtbctA8JDWpSmNLXv.rZ0JoRkhnQiRkJUnc61r4laJEzygCGL6ryx3wi4vCOjVsZQiFMnb4xztcaovfS14aSJjkc61Ic5zbiabCb5zIGe7wjKWNZznA6s2d32uehFMJ974StMJDHSSSS14dc61kgCGdtiMBgGEB185Fp8K6TOa1rgMa1jBrYvfABDH.gCGVFYoS9bLY7d5xkKoiAykKGwhECWtbgACFvpUq32ueBGNL4ymmFMZvYmclTjxVsZ8Ja+JTn3WmzpUKYuzc+6ee1byMoSmNjLYRRmNMoRkBMMMJUpDGe7wjMaVFLX.974ivgCSpToX1Ymk3wi+ZcJsBEJTnPgBEJTnPgBEJTnPwUETB1o3WDHb0kGOdHPf.DHP.73wCvKbLme+9woSmTtbYFNb3q0gXhtqau81iCO7PxmOO850S5DNKVr..0pUiJUpfllFe0W8UXznQ9i+w+HNb33btSavfAznQCZznACFL.a1rQhDIXwEWjtc6xd6sG+0+5ek74yiOe9XokVh4laNLYxDMZzflMaR0pUoXwhTudc51sKVrX4U5lMw9hUqVkO+974CmNcxye9yYu81irYyxgGdH27l2T98MYDhZznQFNbHkKWVJp4jO+CGNjACFHO1IDW60Mbagq3BEJD24N2gwiGy27MeClLYhRkJQ1rYIXvf31sa41g3OMYxDNc5jHQhPqVsXu81C2tcS5zoIRjHXwhEhDIB2912lHQhvzSOMO7gOj+9e+uKEySMzcEJ9mGJVrHe0W8U7W+q+Ud7ieLEJT.KVrfWudwsa2LXv.1au83IO4ITtbYoicsXwBABDfPgBgCGNTm2PgBEJTnPgBEJTnPgBEJTbkGkfcJtxxjhtIb8kYylwpUqXylMYGlYylMz00kwunHRGeYDQg41auMkKWFKVrP73wwtc6mSbq50qillF850is1ZK73wCKu7xDMZTofZiGOl986SsZ0nd85x9XSHxzfACnd85TudcxkKG1saGa1rQ73wQWWmM1XCFOd74DrqSmNX1r423wfd85QylMwfACTsZUZ0pECFL.fWQfMwwK61siOe9nPgBjKWN1c2cYgEVP1kSmbxIb7wGSoRkvfACX2tcrZ0pL1JecuuHbT3BKr.Nb3ftc6RgBEHSlL7rm8L762u78HQDcZvfALa1Ld73gzoSSylM4ryNiG+3GS73woWudx9rSSSCKVrfYylwhEK3xkKrXwBQiFkfACJEWUgBEe5QHReud8X73wnqqKO+vmJQv5zoC0pUi81aOd1ydF6s2dzpUK44OlYlYnQiFrwFavie7i4oO8oTqVMrZ0Jtc6lYmcVVd4kkwT7q6bYJTnPgBEJTnPgBEJTnPgBEWkPIXmhq7LZzH52uOc61kd85IcPwj+6CFLP92eQCPtZ0p73G+Xd9yeNCGNj4laN98+9eOyLyLma.zYxjge3G9Ad5SeJ6u+9r81aSlLYXlYlAe97gQiFY73wzsaWJWtL0qWG.b5zozQGc5zQ5pCylMiCGNviGOxueqVsx3wikQhYsZ0nc61RQHgex4aBwJaznAO+4OmNc5HEZ6AO3AXxjIt90uNyM2b3vgC42u30wmOeL8zSS974Yqs1h50qiGOdHe97X1rYN93i4a9lug74ySf.AHRjH3xkKz00uPA652uOCGNDCFLP3vg4K9hufM2bS9lu4aHWtb30qWrZ0JISlTJXmvgcACFjabiaP61sYu81ie3G9AZznAO9wOlEVXA74yGCFLfSN4D9ge3G3jSNgQiFQhDIX4kWl4laNb5z4GkOaoPgh2Lhyu1rYSJTn.iFMR5vWKVrbtdp7iIhyW+jm7DxlMK.DMZThEKF+K+K+KX2tcd5SeJas0VbvAGPtb4nc61DLXPVd4k41291769c+NVYkUjtwVgBEJTnPgBEJTnPgBEJTn3pLJA6TbkEgq2La1Ltb4BSlLgEKVdEQjDOFqVshSmNwtc6mq+zDCbtd85b1YmQiFMvmOer3hKx5quNKt3hxAOqooQ1rYkhLUnPA50qGUqVkZ0pIGRsPLMQzR50qWBGNrLpNMa1L974ijIShQiFY1YmkDIRfa2tY73w3xkKb5zozQchHobxt2SreY2tc750KEJTfiN5HpUqlLNNGO9+e6cu0TadetFG9VBgXqD6L1rIXL3MTGRBAa2l1oMyzCyWf9MreI5A8zLMstostS7XGOlZriwfIrWH1KsNXMRS7jrxZ0zjpl0bcMy6YFCuuLnCzO877uYt7kubtwMtQlc1Yeifcs95GYjQxMu4Myt6tad8qecN7vCa+lfWpTor2d60dMyM+7ymacqakgFZnu1p4r0ZxrU.xKt3hTtb4L7vCmgGd3znQi7W+q+0r6t6lW9xWlomd5L1Xi09roq0WekJUxbyMW1au8xSdxSxie7iypqtZ6eNFd3gau9Ne9yedZ1rYlc1YyhKtXt10tVFarw9Z+rA7CilMalFMZjCO7vr1Zq0dJ2tzktT6ydxuO+dc5oml50qm0VasrxJqjUWc0r81amRkJkacqakabiajexO4mjc1Ymr5pql+1e6uks1ZqznQiL7vCm4me97y9Y+rbu6cu71u8amImbRSjK.....7iBdWu4+X0ZhrpVsZt5UuZN8zSyXiMV6fbszc2c2NXVylMyXiM1a7Fz1JVWsZ0RiFMdi0k1DSLQpToxarNIGYjQxsu8saulGO6ryxYmcV1au8x3iOdRR6I4q0OeW6ZWKSN4jYzQGM82e+oQiF4xW9x4t28t4fCNHyN6r4F23FoZ0p43iONiM1XYxImLGbvAYzQGs85o7qNcfsNu2Fe7wyryNaZ1rY1c2cy1aucRRpVsZVbwEy67NuSdu268xLyLS5qu9dimec0UWYjQFIKt3hsiX9nG8n7hW7h7vG9vzrYyze+82dpT9vO7Cysu8syniN5W62GEKVLkJUJUpTISM0T47yOOCLv.o+96OCMzP4jSNI2912Nu5UuJGczQYyM2LGczQsmPvV2a8zSOY7wGOKt3h4hKtHSO8z4u7W9KY80Wu88Vq0tWqy2tO3C9fr3hKlqbkq7+3p5D3GFMa1L0qWOu7kuLqs1ZIIse8luuB105CAwAGbPVc0UyJqrR1XiMxd6sW6Wm7d26dYt4lKc0UW40u90Ys0VKat4l4ryNKCO7vYt4lK24N2Ie3G9gYwEWLCMzPeieHO......9OQB1w+wpqt5J8zSO4xW9xY4kWNmc1YYlYlIUqV8MB105rgqYyl4JW4JYzQGMUpT4qE.afAFHyO+7YhIlHyO+7Yt4lKiLxHesouXfAFHSN4j4jSNo8ppbhIlH81ausW+aEJTH81au4xW9x4zSOMCO7vYrwFqcrvKt3hbkqbkr7xKmSO8zboKcoL93im96u+TrXwLyLyjyO+7TsZ0L3fClKe4Kmd6s223MVtb4xYzQGMyM2bod854JW4JYu81KmbxIoXwhYrwFKKrvBYgEVHW8pWMCMzPes2X5BEJj95quL4jSlBEJjFMZjJUpjG8nGkW+5W2d81c8qe8r3hKlae6am25sdquwIXqXwhsis8tu66lKt3hLwDSjpUqlgFZnL8zSmkWd41OqpVs5W6L4K4+NDYoRkxTSMU5pqtR+82e5pqtxyd1yxgGdXN6ryRRRkJUxa8VuUVXgExRKsTt5UuZ6me.+6QqIct0Txt+9629Lur0q6zWe88M925+eQiFMRiFMR850y1aucd0qdUVc0UyKdwKxlatYN93iS+82epVsZ5omdR850ySe5SyCdvCx5qudN6ryx.CLPlYlYxRKsTt6cuaVXgExTSM0OXmud......+PnPyu5gAF7ePZMwEGd3gY6s2NMa1LCMzPo+96OkKWtc7rSO8zbvAGjiN5nb1YmkxkKmQFYj1mGbsVIl0pUKau814hKtHCLv.suZs9KaoQiFuw22u5+996u+zc2c2d0sUqVsTud8b5omlxkKmwFarzau8lKt3hbxImjCO7vznQizSO8z9pQiF4fCNHGd3god85oToRYjQFo8YdWq6qyO+71+er2d60996hKtHEJTHkKWNUpTIUpTo8al8+SOGaznQN93iy96ueN3fCx96ueN4jSZOIaCN3foZ0pYjQFI80WeeiQwZ8bod85Ymc14M98Q2c2cN8zSyVasUN93iSwhESe80W6yxtuo237V2eGbvAY6s2NGd3guw4SXoRkZOAOs98YWc0kfcv+F0rYyzrYy7ke4WlO+y+77Iexmje2u62kxkKmeyu42jO3C9fL8zS+cZR6Z8ZymbxI4ku7k4AO3A44O+4oVsZY2c2Me4W9koPgBY7wGOCLv.oYylYqs1Je9m+4Y0UWMarwFoToR4pW8p4t28t4i9nOJu+6+9euupNA.....92AA6..3a0AGbPVas0xG+web9s+1ea1e+8yu9W+qyu3W7Kx8t28xzSOc6ov6aSqO.Amd5o4niNJ6ryNY80WOO+4OOO4IOo84QWqOvFsV0kGczQ4S+zOMO7gOLqrxJY2c2MEJTHSN4jYokVJ+pe0uJezG8QYgEV3M9.c......7iEVIl..7sp6t6NCMzP4RW5R4JW4JY+82Oe5m9ooYylYpolJW5RWJ8zSO+uFJqUrtc2c27pW8p73G+3b+6e+r4la1dhmac1fNwDSjImbxL4jSlm9zmlM1XirxJqjZ0pkBEJjt6t6TsZ0L6rylYmc1L7vCmxkKaJbA....feTRvN..9VUpToLv.CjIlXhb6ae6Tud87rm8r7Ye1mkacqakd6s27Vu0akpUqlt5pqTnPg1q21VSKWqUM7VasUVe80ypqtZd5SeZ9hu3KxwGeb5qu9ZeM93imqcsqkJUpj50qmW8pWk0We8ryN6jhEKld6s21mclW6ZWKSO8zYfAFvj0A.....+nkfc..7spqt5J80WeY5omN+xe4uLEKVLe4W9k4Eu3E42+6+8sWQlW+5Wu8j10Z8W9UOSOe0qdUdzidTd1ydVd0qdUN6ryxTSMU6yNyAGbvL93imwGe7L5nils1Zq7we7Gm+ze5OkM1XiTrXwTpToLzPCk4me9rvBKj4me9LwDSjd6s2N8iI.....fuyDrC.fuUEJTHkJUJiLxH4V25V4vCOLqrxJ4gO7g4YO6YoQiFou95K6u+9YjQFI81ausmrtyN6rbzQGk82e+r1Zqkm7jmjM1XibzQGkAGbvL1XikpUqlyN6rTpTozUWckZ0pkCN3f7O9G+i7G9C+g7nG8nTqVs1A8lat4x69tuadu268x7yOeFczQS4xk6zOl......9NqPyV6rJ..3awEWbQN8zSyKdwKx8u+8ye7O9Gym7IeRN3fCxzSOclc1Yy0u90yvCObt3hKx4me9aDrqVsZ4vCOrc7ugFZnToRk1Sk2YmcVN7vCy5qudd7iebd9yedd8qecpWudJVrXlbxIyxKubtyctSt28tWlat4xvCOb5qu9R2c2syuN.....3GsLgc..7+IsVMlSLwDYokVJMZzH6ryN4QO5Q4ku7kYqs1JarwFYvAGLMZzn84XWqIsqYyloXwhYfAFncLuZ0pkSN4jTrXwTqVsr1Zqkm9zmlO6y9rr4lalt5pqTsZ0LwDSj29se67AevGj6bm6jae6amwGe7N7SD.....fueHXG..+Sou95KyLyLoPgBoqt5JSLwD4O+m+y4K9huH+8+9eOWbwEoYylob4xYfAFn8U4xkSwhEyd6sW1YmcRO8zSFZngR2c2cN+7yy1aucVYkUxFarQ1au8ZGHbpolJ+ze5OM26d2q8j0UsZ0N8iA.....fu2HXG..+So6t6Nc2c2YlYlocTshEKl96u+7rm8rr0VakiO93TqVsTqVsze+8mpUqld5omTnPgb94mmiN5n1SOWoRkxYmcV1YmcxKe4KygGdX5omdxniN5aLYcu+6+94F23FYzQGsS+H......36UNC6..36jVg21c2cy5quddxSdRt+8uedxSdRd8qec1Zqsx96ueN8zSSwhESgBERRRylMyEWbQJTnP5t6tSgBERiFMZed20c2cmwGe7L2bykkVZorzRKkkWd4b0qd0L3fClxkK2guyA.....99kIrC.fuSJUpTpToR5u+9yktzkxniNZ5s2dyku7kypqtZ6qM2bybzQGkSO8zzrYy1WeUEJTHEKVLkKWNiO934l27l4cdm2I26d2Ku8a+14ZW6ZY3gGtCcmB.....7CKSXG..+Ko0DyczQGkc1Ymr95qmm+7mmO+y+77fG7frxJqjM2bybvAGjKt3hb94m29btqPgBsu5s2dSkJUx0u90yO+m+yy6+9ueVXgExTSMUpTohIqC.....9+sLgc..7ujBEJjRkJkAFXfzWe8kpUqlgGd3LzPCkJUpjYlYlr4lalZ0p0NX24medZ1rY6Uk4WMX2ryNaVd4kyMu4MyjSNYpVsZJVrXm91D.....3GLlvN..9dSylMy4medN93iS850yAGbPpWudN4jSZGoqQiFuwJwr0YaWWc0UJUpT5u+9yHiLRFbvASu81a6y4N.....f++JA6........fNH6WJ........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nCRvN........nC5+Bs28CUPhg3uB....PRE4DQtJDXBB" ],
									"embed" : 1,
									"forceaspect" : 1,
									"id" : "obj-16",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 668.8642578125, 111.5, 463.104725081835113, 102.970237969663103 ],
									"pic" : "Macintosh HD:/Users/r/Documents/_____submissions/zurich/materials/Screen Shot 2021-03-17 at 22.21.18.png"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 387.0, 681.1666259765625, 153.5, 33.0 ],
									"text" : "n.b. Drawsocket works best in Safari or Chrome"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-27",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 291.0, 298.5, 87.0, 20.0 ],
									"text" : "Wildcard URL"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-26",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 102.5, 55.0, 268.0, 20.0 ],
									"text" : "Here the URLs are /violin and /anotherURL"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 10,
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-12",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 482.0, 35.0 ],
													"text" : ";\rmax launch_browser https://github.com/CNMAT/CNMAT-odot/releases"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-15",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 955.3447265625, 305.0, 19.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
									"fontface" : 3,
									"fontlink" : 1,
									"id" : "obj-42",
									"maxclass" : "textbutton",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 661.8447265625, 290.5, 309.8125, 21.40625 ],
									"text" : "The CNMAT Odot libaray can be downloaded here...",
									"texton" : "The CNMAT Odot libaray can be downloaded here...",
									"textoncolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
									"textovercolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
									"usetextovercolor" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 13.0,
									"id" : "obj-40",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 668.8642578125, 250.5, 419.0, 36.0 ],
									"text" : "drawsocket is an abstraction that uses the CNMAT odot library and a set of JS scripts, loaded by the node.script object."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-39",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 674.8642578125, 616.0, 221.0, 22.0 ],
									"text" : "Optional arguments / attributes:"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-34",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 674.8642578125, 698.33331298828125, 61.0, 22.0 ],
									"text" : "Inlet:"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-33",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 674.8642578125, 763.33331298828125, 61.0, 22.0 ],
									"text" : "Outlets:"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-29",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 402.0, 111.5, 35.0, 20.0 ],
									"text" : "/new"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"id" : "obj-28",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 415.0, 167.33331298828125, 22.0, 20.0 ],
									"text" : "/id"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "obj-17",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 674.8642578125, 470.0, 386.0, 85.0 ],
									"text" : "install: the first time only, run \"script npm install\"\n1. start the script\n2. open a webpage URL as a suffix to the indicated URL:Port\n    e.g. http://localhost:3002/foo\n3. send messages to the URL that you are logged into"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 14.0,
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 674.8642578125, 453.0, 60.0, 22.0 ],
									"text" : "To run: "
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 447.0, 326.5, 135.0, 60.0 ],
									"text" : "The * (asterisk) is used from OSC syntax, as a wildcard symbol, which means \"match all\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 437.0, 98.0, 200.0, 47.0 ],
									"text" : "The /new attribute, tells drawsocket what kind of element to create in the context of the SVG */key* type."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-3",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 438.0, 157.703125, 198.0, 47.0 ],
									"text" : "Each object should be assigned a unique ID that can be used to manipulate it later."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 90.0, 257.5, 238.0, 33.0 ],
									"text" : "If /new is not in the value object, the object will not be created, but can be updated"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-61",
									"linecount" : 7,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 102.5, 295.0, 136.0, 108.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 116, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, 64, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 48, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 98, 111, 98, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 1, 44 ],
									"saved_bundle_length" : 136,
									"text" : "/* : {\n  /key : \"svg\",\n  /val : {\n    /id : \"bob\",\n    /cx : 300\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 157.5, 558.0, 100.0, 22.0 ],
									"text" : "r to_drawsocket"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 148.0, 750.0, 77.0, 22.0 ],
									"text" : "o.select /port"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 273.3857421875, 642.83331298828125, 184.0, 22.0 ],
									"text" : "http://localhost:3002/anotherURL"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 10,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 489.0, 79.0, 886.0, 898.0 ],
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"hidden" : 1,
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 956.0, 798.0, 104.0, 22.0 ],
													"text" : "r client-msg-patch"
												}

											}
, 											{
												"box" : 												{
													"hidden" : 1,
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 956.0, 835.0, 67.0, 22.0 ],
													"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
													"text" : "thispatcher"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial Bold",
													"fontsize" : 14.0,
													"id" : "obj-17",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 31.0, 29.0, 118.0, 22.0 ],
													"text" : "Client Messages"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 355.5, 777.0, 211.0, 33.0 ],
													"text" : "<< move your mouse around in here! \nalso two finger scrooling is pretty cool."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-43",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 26.0, 569.0, 150.0, 20.0 ],
													"text" : "click to load page in jweb"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 26.0, 594.0, 143.0, 22.0 ],
													"text" : "url http://localhost:3002/1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "jweb",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 26.0, 640.0, 320.0, 240.0 ],
													"rendermode" : 1,
													"url" : "http://localhost:3002/1"
												}

											}
, 											{
												"box" : 												{
													"angle" : 270.0,
													"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
													"border" : 2,
													"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"id" : "obj-41",
													"maxclass" : "panel",
													"mode" : 0,
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 24.0, 635.0, 325.0, 247.0 ],
													"proportion" : 0.5
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 31.0, 53.0, 255.0, 60.0 ],
													"text" : "Standard drawsocket messages coming from the browser use the /event OSC address. you can also define your own messages, see the JS API tab for more information."
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-2",
													"linecount" : 7,
													"maxclass" : "o.display",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 26.0, 160.0, 356.0, 116.0 ],
													"text" : "/event : {\n\t/key : \"sync\",\n\t/val : {\n\t\t/syncOffset : 0.3\n\t},\n\t/url : \"/1\"\n}"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-23",
													"linecount" : 5,
													"maxclass" : "o.display",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 632.0, 170.0, 234.0, 88.0 ],
													"text" : "/key : \"sync\",\n/val : {\n\t/syncOffset : 0.3\n},\n/url : \"/1\""
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-22",
													"linecount" : 6,
													"maxclass" : "o.display",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 538.5, 264.0, 284.0, 102.0 ],
													"text" : "/key : \"status\",\n/val : {\n\t/screensize : [320, 240],\n\t/connected : 1\n},\n/url : \"/1\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "FullPacket" ],
													"patching_rect" : [ 443.0, 91.0, 82.0, 22.0 ],
													"text" : "o.route /event"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "FullPacket", "FullPacket", "FullPacket" ],
													"patching_rect" : [ 443.0, 133.0, 208.0, 22.0 ],
													"text" : "o.cond /key == mouse\\, /key == status"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-5",
													"linecount" : 22,
													"maxclass" : "o.display",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 444.0, 368.0, 356.0, 306.0 ],
													"text" : "/key : \"mouse\",\n/val : {\n\t/target : {\n\t\t/xmlns:xlink : \"http://www.w3.org/1999/xlink\",\n\t\t/baseProfile : \"full\",\n\t\t/version : \"1.1\",\n\t\t/id : \"svg\",\n\t\t/type : \"svg\",\n\t\t/xmlns : \"http://www.w3.org/2000/svg\"\n\t},\n\t/action : \"mousemove\",\n\t/button : 0,\n\t/xy : [222, 2],\n\t/mods : {\n\t\t/shift : 0,\n\t\t/meta : 0,\n\t\t/alt : 0,\n\t\t/ctrl : 0\n\t}\n},\n/url : \"/1\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 601.0, 91.0, 101.0, 22.0 ],
													"text" : "s client_message"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-56",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 443.0, 38.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"hidden" : 1,
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"order" : 0,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"order" : 2,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"order" : 1,
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-6", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-6", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "black on white",
												"number" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"umenu" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "caption text",
												"default" : 												{
													"fontsize" : [ 11.0 ],
													"fontface" : [ 2 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section dividers",
												"default" : 												{
													"fontsize" : [ 15.0 ],
													"fontname" : [ "Arial" ],
													"fontface" : [ 3 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section info reg",
												"default" : 												{
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "titles",
												"default" : 												{
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
									"patching_rect" : [ 56.0, 750.0, 83.0, 35.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p client messages"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 247.8857421875, 612.83331298828125, 147.0, 22.0 ],
									"text" : "http://localhost:3002/violin"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"bubblepoint" : 0.8,
									"id" : "obj-49",
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 409.0, 534.83331298828125, 220.0, 104.0 ],
									"text" : "Launch a browser window at the opened port, either by remote IP address or localhost.\n\nThe /URL following the address:port value will be used as the client's OSC receive address."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 247.8857421875, 677.83331298828125, 136.0, 35.0 ],
									"text" : ";\rmax launch_browser $1"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"id" : "obj-36",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 49.5, 27.5, 449.0, 20.0 ],
									"text" : "OSC packets or Max Dictionaries can be used to send messages to a specific URL"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"id" : "obj-35",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 160.5, 506.83331298828125, 457.0, 20.0 ],
									"text" : "Note: only one hfmt-drawsocket server can be running at a given time per port"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontface" : 1,
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 145.5, 480.83331298828125, 265.0, 24.0 ],
									"text" : "Send the start message to start the server",
									"textcolor" : [ 0.0, 0.556862745098039, 0.847058823529412, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-13",
									"linecount" : 11,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 235.0, 77.0, 165.0, 164.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -52, 47, 97, 110, 111, 116, 104, 101, 114, 85, 82, 76, 0, 44, 46, 0, 0, 0, 0, 0, -72, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -112, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 98, 111, 98, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 50, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 112, 105, 110, 107, 0, 0, 0, 0 ],
									"saved_bundle_length" : 224,
									"text" : "/anotherURL : {\n  /key : \"svg\",\n  /val : {\n    /new : \"circle\",\n    /id : \"bob\",\n    /cx : 100,\n    /cy : 100,\n    /r : 50,\n    /fill : \"pink\"\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-11",
									"linecount" : 4,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 291.0, 320.5, 143.0, 66.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0, 0, 0, 0, 16, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 0, 0, 42, 0, 0, 0 ],
									"saved_bundle_length" : 92,
									"text" : "/* : {\n  /key : \"clear\",\n  /val : \"*\"\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-5",
									"linecount" : 11,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 56.0, 77.0, 165.0, 164.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -56, 47, 118, 105, 111, 108, 105, 110, 0, 44, 46, 0, 0, 0, 0, 0, -72, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -112, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 98, 111, 98, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 112, 117, 114, 112, 108, 101, 0, 0 ],
									"saved_bundle_length" : 220,
									"text" : "/violin : {\n  /key : \"svg\",\n  /val : {\n    /new : \"circle\",\n    /id : \"bob\",\n    /cx : 100,\n    /cy : 100,\n    /r : 20,\n    /fill : \"purple\"\n  }\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 674.8642578125, 719.33331298828125, 350.0, 33.0 ],
									"text" : "- OSC FullPacket or dictionary is sent to client URLs.\n- Max messages for other actions, see online docs for more info."
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "obj-23",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 674.8642578125, 780.83331298828125, 264.0, 50.0 ],
									"text" : "left: update messages from client and server\nmiddle: errors\nright: server status"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 162.5, 728.0, 41.0, 20.0 ],
									"text" : "status"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 10,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 84.0, 129.0, 658.0, 683.0 ],
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 48.0, 56.0, 54.0, 22.0 ],
													"text" : "o.accum"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-13",
													"linecount" : 23,
													"maxclass" : "o.display",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 48.0, 95.0, 392.0, 333.0 ],
													"text" : "/stop/success : {\n\t/id : \"u79950460339\",\n\t/time : 2019-07-16T19:02:36.015954Z\n},\n/terminated/success : {\n\t/willRestart : 0,\n\t/id : \"u79950460339\",\n\t/time : 2019-07-16T19:02:36.015878Z\n},\n/start/success : {\n\t/debugPort,\n\t/cwd : \"/Volumes/Macintosh HD/Users/r/Documents/Max 8/Packages/drawsocket/code/node\",\n\t/filename : \"drawsocket-server.js\",\n\t/pid : 73300,\n\t/watch : 1,\n\t/debugEnabled : 0,\n\t/socketDescription : {\n\t\t/control : \"/tmp/u79950460339_ctrl.sock\"\n\t},\n\t/id : \"u79950460339\",\n\t/time : 2019-07-16T19:02:34.117101Z\n}"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-14",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "FullPacket" ],
													"patching_rect" : [ 48.0, 20.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-17", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "black on white",
												"number" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"umenu" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "caption text",
												"default" : 												{
													"fontsize" : [ 11.0 ],
													"fontface" : [ 2 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section dividers",
												"default" : 												{
													"fontsize" : [ 15.0 ],
													"fontname" : [ "Arial" ],
													"fontface" : [ 3 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section info reg",
												"default" : 												{
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "titles",
												"default" : 												{
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
									"patching_rect" : [ 206.0, 781.5, 140.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p other-status messages"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 10,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 374.0, 141.0, 1267.0, 484.0 ],
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-13",
													"maxclass" : "o.display",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 1033.0, 34.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-14",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 86.0, 687.5, 34.0, 35.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p view"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 80.0, 722.5, 40.0, 20.0 ],
									"text" : "errors"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "obj-25",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 674.8642578125, 642.0, 388.0, 36.0 ],
									"text" : "arg 1 or @html_root : relative path to HTML root folder for assets\narg 2 or @port : port number to use (default 3002)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 734.3642578125, 89.5, 212.0, 20.0 ],
									"text" : "rama gottfried, 2018 -- HfMT Hamburg"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "obj-21",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 668.8642578125, 66.5, 334.0, 21.0 ],
									"text" : "a node.script based server for drawing to client browsers"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Arial",
									"fontsize" : 30.0,
									"id" : "obj-19",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 668.8642578125, 24.5, 174.0, 40.0 ],
									"text" : "drawsocket"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 482.83331298828125, 64.0, 22.0 ],
									"text" : "script start"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-45",
									"maxclass" : "o.display",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 148.0, 808.66668701171875, 407.0, 34.0 ]
								}

							}
, 							{
								"box" : 								{
									"color" : [ 0.588235294117647, 0.811764705882353, 0.996078431372549, 1.0 ],
									"fontsize" : 14.0,
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "FullPacket", "", "" ],
									"patching_rect" : [ 56.0, 648.0, 79.0, 24.0 ],
									"text" : "drawsocket"
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"id" : "obj-7",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 175.0, 427.83331298828125, 375.0, 37.0 ],
									"text" : "When running the first time you will need to be online. \nRun \"script npm install\" to download the required node packages."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 70.5, 446.5, 98.0, 22.0 ],
									"text" : "script npm install"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 510.83331298828125, 63.0, 22.0 ],
									"text" : "script stop"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"border" : 2,
									"bordercolor" : [ 0.588235294117647, 0.811764705882353, 0.996078431372549, 1.0 ],
									"id" : "obj-53",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 668.8642578125, 445.5, 398.0, 121.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"fontsize" : 13.0,
									"id" : "obj-9",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 668.8642578125, 344.0, 424.0, 79.0 ],
									"text" : "This help patch shows only some of the features of Drawsocket, please see the Max Extras menu for more examples.\n\nSee also the reference page and Drawsocket API guide for complete documentation. "
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"midpoints" : [ 300.5, 415.416656494140625, 65.5, 415.416656494140625 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"midpoints" : [ 244.5, 247.666656494140625, 65.5, 247.666656494140625 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-38", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-38", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"hidden" : 1,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"midpoints" : [ 65.5, 419.666656494140625, 65.5, 419.666656494140625 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-59", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"hidden" : 1,
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"midpoints" : [ 112.0, 416.666656494140625, 65.5, 416.666656494140625 ],
									"source" : [ "obj-61", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ],
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
					"patching_rect" : [ 276.5, 15.0, 47.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p basic"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 84.0, 129.0, 640.0, 480.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 127.0, 160.0, 22.0 ],
									"text" : "html_template /lib/basic.html"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 223.0, 22.0 ],
									"text" : "html_template /lib/drawsocket-page.html"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-24",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 44.0, 209.000000011718726, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 192.0, 541.83331298828125, 65.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p template"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 79.0, 1612.0, 937.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-9",
									"linecount" : 9,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1335.0, 21.5, 165.0, 133.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -84, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0, 0, 0, 0, 116, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 100, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 118, 105, 100, 101, 111, 0, 0, 0, 0, 0, 0, 0, 56, 47, 99, 97, 108, 108, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 109, 101, 116, 104, 111, 100, 0, 44, 115, 0, 0, 112, 97, 117, 115, 101, 0, 0, 0 ],
									"saved_bundle_length" : 192,
									"text" : "/* : {\n\t/key : \"html\",\n\t/val : {\n\t\t/id : \"foovideo\",\n\t\t/call : {\n\t\t\t/method : \"pause\"\n\t\t}\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-20",
									"linecount" : 4,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 231.5, 765.0, 150.0, 65.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0, 0, 0, 0, 20, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0 ],
									"saved_bundle_length" : 96,
									"text" : "/* : {\n\t/key : \"clear\",\n\t/val : \"tween\"\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-12",
									"linecount" : 8,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 254.5, 563.0, 150.0, 106.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -120, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 80, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 111, 112, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0 ],
									"saved_bundle_length" : 156,
									"text" : "/* : {\n\t/key : \"tween\",\n\t/val : {\n\t\t/cmd : \"stop\",\n\t\t/id : \"fooTween\"\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-13",
									"linecount" : 12,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 496.5, 575.0, 150.0, 146.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -52, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, -108, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 114, 101, 115, 101, 116, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 95, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 97, 114, 116, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0 ],
									"saved_bundle_length" : 224,
									"text" : "/* : {\n\t/key : \"tween\",\n\t/val : [{\n\t\t/cmd : \"reset\",\n\t\t/id : \"foo_line\"\n\t}, {\n\t\t/cmd : \"start\",\n\t\t/id : \"fooTween\"\n\t}]\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-37",
									"linecount" : 8,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 454.0, 769.0, 143.0, 119.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 47, 42, 47, 116, 105, 109, 101, 108, 105, 110, 101, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 97, 114, 116, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 95, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 84, 47, 42, 47, 116, 119, 101, 101, 110, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 114, 101, 115, 101, 116, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0 ],
									"saved_bundle_length" : 192,
									"text" : "/*/timeline : {\n\t/cmd : \"start\",\n\t/id : \"foo_line\"\n},\n/*/tween : {\n\t/cmd : \"reset\",\n\t/id : \"fooTween\"\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-36",
									"linecount" : 12,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 496.5, 424.0, 150.0, 146.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -52, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, -108, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 97, 114, 116, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 95, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 114, 101, 115, 101, 116, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0 ],
									"saved_bundle_length" : 224,
									"text" : "/* : {\n\t/key : \"tween\",\n\t/val : [{\n\t\t/cmd : \"start\",\n\t\t/id : \"foo_line\"\n\t}, {\n\t\t/cmd : \"reset\",\n\t\t/id : \"fooTween\"\n\t}]\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 16.5, 477.0, 211.0, 20.0 ],
									"text" : "start tween or timelilne from beginning"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-27",
									"linecount" : 8,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 235.5, 444.0, 150.0, 106.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -120, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 80, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 97, 114, 116, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0 ],
									"saved_bundle_length" : 156,
									"text" : "/* : {\n\t/key : \"tween\",\n\t/val : {\n\t\t/cmd : \"start\",\n\t\t/id : \"fooTween\"\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 613.5, 930.0, 153.0, 33.0 ],
									"text" : "pause and return to starting point"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 613.5, 898.0, 153.0, 20.0 ],
									"text" : "reverse direction"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 126.0, 125.0, 87.0, 20.0 ],
									"text" : "object to move"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-24",
									"linecount" : 11,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 70.5, 213.0, 157.0, 146.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -76, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -88, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -128, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 112, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 98, 97, 114, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 116, 101, 120, 116, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 20, 47, 99, 104, 105, 108, 100, 0, 0, 44, 115, 0, 0, 104, 101, 108, 108, 111, 33, 0, 0 ],
									"saved_bundle_length" : 200,
									"text" : "/* : {\n\t/key : \"svg\",\n\t/val : {\n\t\t/id : \"bar\",\n\t\t/new : \"text\",\n\t\t/x : 100,\n\t\t/y : 100,\n\t\t/child : \"hello!\"\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 613.5, 822.0, 124.0, 20.0 ],
									"text" : "stop (same as pause)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 613.5, 859.0, 153.0, 20.0 ],
									"text" : "start from current position"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 613.5, 792.0, 47.0, 20.0 ],
									"text" : "pause"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 613.5, 762.0, 211.0, 20.0 ],
									"text" : "start tween or timelilne from beginning"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-1",
									"linecount" : 60,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 662.5, 31.0, 293.0, 826.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 116, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 4, 104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 4, 60, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 4, 44, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 95, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 100, 47, 105, 110, 105, 116, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 117, 115, 101, 100, 0, 44, 115, 0, 0, 116, 114, 117, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 121, 111, 121, 111, 0, 0, 0, 44, 115, 0, 0, 116, 114, 117, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 101, 112, 101, 97, 116, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 3, -104, 47, 116, 119, 101, 101, 110, 115, 0, 44, 46, 46, 0, 0, 0, 1, -64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 97, 114, 103, 101, 116, 0, 44, 115, 0, 0, 35, 98, 97, 114, 0, 0, 0, 0, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 1, -128, 47, 118, 97, 114, 115, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, 112, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 115, 99, 97, 108, 101, 88, 0, 44, 115, 0, 0, 53, 48, 37, 0, 0, 0, 0, 20, 47, 111, 112, 97, 99, 105, 116, 121, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 20, 47, 101, 97, 115, 101, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 97, 114, 0, 0, 0, 0, 0, -8, 47, 111, 110, 83, 116, 97, 114, 116, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -28, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -48, 47, 102, 117, 110, 99, 116, 105, 111, 110, 0, 0, 0, 44, 115, 0, 0, 10, 32, 32, 32, 32, 32, 32, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 105, 110, 112, 117, 116, 40, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 107, 101, 121, 58, 32, 39, 115, 118, 103, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 118, 97, 108, 58, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 101, 119, 58, 32, 39, 116, 101, 120, 116, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 58, 32, 39, 115, 101, 103, 109, 101, 110, 116, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 120, 58, 32, 49, 48, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 121, 58, 32, 52, 48, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 101, 120, 116, 58, 32, 39, 49, 115, 116, 39, 10, 32, 32, 32, 32, 32, 32, 32, 32, 125, 10, 32, 32, 32, 32, 32, 32, 125, 41, 10, 32, 32, 32, 32, 32, 0, 0, 0, 0, 0, 1, -60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 97, 114, 103, 101, 116, 0, 44, 115, 0, 0, 35, 98, 97, 114, 0, 0, 0, 0, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2, 0, 0, 1, -124, 47, 118, 97, 114, 115, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, 116, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 99, 97, 108, 101, 0, 0, 44, 115, 0, 0, 49, 48, 48, 37, 0, 0, 0, 0, 0, 0, 0, 20, 47, 111, 112, 97, 99, 105, 116, 121, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 20, 47, 101, 97, 115, 101, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 97, 114, 0, 0, 0, 0, 0, -8, 47, 111, 110, 83, 116, 97, 114, 116, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -28, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -48, 47, 102, 117, 110, 99, 116, 105, 111, 110, 0, 0, 0, 44, 115, 0, 0, 10, 32, 32, 32, 32, 32, 32, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 105, 110, 112, 117, 116, 40, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 107, 101, 121, 58, 32, 39, 115, 118, 103, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 118, 97, 108, 58, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 101, 119, 58, 32, 39, 116, 101, 120, 116, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 58, 32, 39, 115, 101, 103, 109, 101, 110, 116, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 120, 58, 32, 49, 48, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 121, 58, 32, 52, 48, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 101, 120, 116, 58, 32, 39, 50, 110, 100, 39, 10, 32, 32, 32, 32, 32, 32, 32, 32, 125, 10, 32, 32, 32, 32, 32, 32, 125, 41, 10, 32, 32, 32, 32, 32, 0, 0, 0 ],
									"saved_bundle_length" : 1160,
									"text" : "/* : {\n\t/key : \"tween\",\n\t/val : {\n\t\t/id : \"foo_line\",\n\t\t/init : {\n\t\t\t/paused : \"true\",\n\t\t\t/yoyo : \"true\",\n\t\t\t/repeat : 20\n\t\t},\n\t\t/tweens : [{\n\t\t\t/target : \"#bar\",\n\t\t\t/dur : 1,\n\t\t\t/vars : {\n\t\t\t\t/y : 0,\n\t\t\t\t/x : 0,\n\t\t\t\t/scaleX : \"50%\",\n\t\t\t\t/opacity : 1,\n\t\t\t\t/ease : \"linear\",\n\t\t\t\t/onStart : {\n\t\t\t\t\t/function : \"\n      drawsocket.input({\n        key: 'svg',\n        val: {\n          new: 'text',\n          id: 'segment',\n          x: 10,\n          y: 40,\n          text: '1st'\n        }\n      })\n     \"\n\t\t\t\t}\n\t\t\t}\n\t\t}, {\n\t\t\t/target : \"#bar\",\n\t\t\t/dur : 2,\n\t\t\t/vars : {\n\t\t\t\t/y : 10,\n\t\t\t\t/x : 0,\n\t\t\t\t/scale : \"100%\",\n\t\t\t\t/opacity : 1,\n\t\t\t\t/ease : \"linear\",\n\t\t\t\t/onStart : {\n\t\t\t\t\t/function : \"\n      drawsocket.input({\n        key: 'svg',\n        val: {\n          new: 'text',\n          id: 'segment',\n          x: 10,\n          y: 40,\n          text: '2nd'\n        }\n      })\n     \"\n\t\t\t\t}\n\t\t\t}\n\t\t}]\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-8",
									"linecount" : 28,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 231.5, 51.0, 301.0, 391.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 12, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 2, 0, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 1, -44, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, -60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 97, 114, 103, 101, 116, 0, 44, 115, 0, 0, 35, 98, 97, 114, 0, 0, 0, 0, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 1, 108, 47, 118, 97, 114, 115, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, 92, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 1, 114, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 20, 47, 112, 97, 117, 115, 101, 100, 0, 44, 115, 0, 0, 116, 114, 117, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 101, 97, 115, 101, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 97, 114, 0, 0, 0, 0, 0, -8, 47, 111, 110, 85, 112, 100, 97, 116, 101, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -28, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -48, 47, 102, 117, 110, 99, 116, 105, 111, 110, 0, 0, 0, 44, 115, 0, 0, 10, 32, 32, 32, 32, 32, 32, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 105, 110, 112, 117, 116, 40, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 107, 101, 121, 58, 32, 39, 115, 118, 103, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 118, 97, 108, 58, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 110, 101, 119, 58, 32, 39, 116, 101, 120, 116, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 58, 32, 39, 116, 105, 109, 101, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 120, 58, 32, 49, 48, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 121, 58, 32, 50, 48, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 101, 120, 116, 58, 32, 116, 104, 105, 115, 46, 116, 105, 109, 101, 40, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 125, 10, 32, 32, 32, 32, 32, 32, 125, 41, 10, 32, 32, 32, 32, 0 ],
									"saved_bundle_length" : 544,
									"text" : "/* : {\n\t/key : \"tween\",\n\t/val : {\n\t\t/id : \"fooTween\",\n\t\t/target : \"#bar\",\n\t\t/dur : 10,\n\t\t/vars : {\n\t\t\t/y : 370,\n\t\t\t/x : 100,\n\t\t\t/paused : \"true\",\n\t\t\t/ease : \"linear\",\n\t\t\t/onUpdate : {\n\t\t\t\t/function : \"\n      drawsocket.input({\n        key: 'svg',\n        val: {\n          new: 'text',\n          id: 'time',\n          x: 10,\n          y: 20,\n          text: this.time()\n        }\n      })\n    \"\n\t\t\t}\n\t\t}\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-17",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 75.0, 872.0, 36.0, 36.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ],
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
					"patching_rect" : [ 83.0, 311.328150959919185, 143.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p animation-with-callback"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 395.0, 606.0, 43.0, 22.0 ],
					"text" : "ping /*"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 760.0, 834.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 44.0, 686.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 100.0, 628.0, 209.0, 20.0 ],
									"text" : "The order of the objects is maintained"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 49.0, 85.0, 382.0, 20.0 ],
									"text" : "each prefix expects one or more objects with key and value addresses"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-14",
									"linecount" : 35,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 49.0, 120.0, 193.0, 473.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, -92, 47, 42, 0, 0, 44, 46, 46, 0, 0, 0, 1, 88, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 115, 115, 0, 0, 0, 1, 48, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -100, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 46, 111, 112, 101, 110, 0, 0, 0, 0, 0, 0, 108, 47, 112, 114, 111, 112, 115, 0, 0, 44, 46, 0, 0, 0, 0, 0, 92, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 116, 114, 111, 107, 101, 0, 44, 115, 0, 0, 98, 108, 97, 99, 107, 0, 0, 0, 0, 0, 0, 24, 47, 115, 116, 114, 111, 107, 101, 45, 119, 105, 100, 116, 104, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 110, 111, 110, 101, 0, 0, 0, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 46, 99, 108, 111, 115, 101, 100, 0, 0, 0, 0, 80, 47, 112, 114, 111, 112, 115, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 116, 114, 111, 107, 101, 0, 44, 115, 0, 0, 110, 111, 110, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 98, 108, 97, 99, 107, 0, 0, 0, 0, 0, 1, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 1, 20, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 20, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 111, 112, 101, 110, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 15, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 20, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 99, 108, 111, 115, 101, 100, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 98, 97, 114, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 45, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10 ],
									"saved_bundle_length" : 696,
									"text" : "/* : [{\n\t/key : \"css\",\n\t/val : [{\n\t\t/selector : \".open\",\n\t\t/props : {\n\t\t\t/stroke : \"black\",\n\t\t\t/stroke-width : 2,\n\t\t\t/fill : \"none\"\n\t\t}\n\t}, {\n\t\t/selector : \".closed\",\n\t\t/props : {\n\t\t\t/stroke : \"none\",\n\t\t\t/fill : \"black\"\n\t\t}\n\t}]\n}, {\n\t/key : \"svg\",\n\t/val : [{\n\t\t/new : \"circle\",\n\t\t/class : \"open\",\n\t\t/id : \"foo\",\n\t\t/cx : 15,\n\t\t/cy : 100,\n\t\t/r : 10\n\t}, {\n\t\t/new : \"circle\",\n\t\t/class : \"closed\",\n\t\t/id : \"bar\",\n\t\t/cx : 45,\n\t\t/cy : 100,\n\t\t/r : 10\n\t}]\n}]"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ],
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
					"patching_rect" : [ 83.0, 165.736614559976914, 107.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p svg/css example"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 371.0, 79.0, 1275.0, 937.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-9",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 135.0, 365.5, 397.0, 47.0 ],
									"text" : "note: the play method seems to not always work, in chrome the user has to click on the screen first before this works, in safari, it might require being in the top level \"forms\" layer"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-7",
									"linecount" : 9,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 363.0, 436.5, 165.0, 133.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -84, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0, 0, 0, 0, 116, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 100, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 118, 105, 100, 101, 111, 0, 0, 0, 0, 0, 0, 0, 56, 47, 99, 97, 108, 108, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 109, 101, 116, 104, 111, 100, 0, 44, 115, 0, 0, 112, 97, 117, 115, 101, 0, 0, 0 ],
									"saved_bundle_length" : 192,
									"text" : "/* : {\n\t/key : \"html\",\n\t/val : {\n\t\t/id : \"foovideo\",\n\t\t/call : {\n\t\t\t/method : \"pause\"\n\t\t}\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-6",
									"linecount" : 11,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 132.5, 429.5, 157.0, 133.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -84, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0, 0, 0, 0, 116, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 100, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 118, 105, 100, 101, 111, 0, 0, 0, 0, 0, 0, 0, 56, 47, 99, 97, 108, 108, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 109, 101, 116, 104, 111, 100, 0, 44, 115, 0, 0, 112, 108, 97, 121, 0, 0, 0, 0 ],
									"saved_bundle_length" : 192,
									"text" : "/* : {\n\t/key : \"html\",\n\t/val : {\n\t\t/id : \"foovideo\",\n\t\t/call : {\n\t\t\t/method : \"play\"\n\t\t}\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-3",
									"linecount" : 2,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 155.5, 568.5, 150.0, 24.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 42, 47, 114, 101, 109, 111, 118, 101, 0, 0, 0, 44, 115, 0, 0, 35, 102, 111, 111, 0, 0, 0, 0 ],
									"saved_bundle_length" : 44,
									"text" : "/*/remove : \"#foo\""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 89.0, 642.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-1",
									"linecount" : 18,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 87.0, 108.0, 690.0, 242.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -80, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, -92, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0, 0, 0, 1, 120, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, 104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 102, 111, 114, 109, 115, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 118, 105, 100, 101, 111, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 118, 105, 100, 101, 111, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 111, 110, 116, 114, 111, 108, 115, 0, 0, 0, 44, 115, 0, 0, 0, 0, 0, 0, 0, 0, 0, -72, 47, 99, 104, 105, 108, 100, 0, 0, 44, 46, 0, 0, 0, 0, 0, -88, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 115, 111, 117, 114, 99, 101, 0, 0, 0, 0, 0, 24, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 118, 105, 100, 101, 111, 47, 109, 112, 52, 0, 0, 0, 0, 0, 0, 96, 47, 115, 114, 99, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 116, 112, 58, 47, 47, 99, 111, 109, 109, 111, 110, 100, 97, 116, 97, 115, 116, 111, 114, 97, 103, 101, 46, 103, 111, 111, 103, 108, 101, 97, 112, 105, 115, 46, 99, 111, 109, 47, 103, 116, 118, 45, 118, 105, 100, 101, 111, 115, 45, 98, 117, 99, 107, 101, 116, 47, 115, 97, 109, 112, 108, 101, 47, 84, 101, 97, 114, 115, 79, 102, 83, 116, 101, 101, 108, 46, 109, 112, 52, 0, 0, 0, 0, 0, 0, 56, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 122, 45, 105, 110, 100, 101, 120, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100 ],
									"saved_bundle_length" : 452,
									"text" : "/* : {\n\t/key : \"html\",\n\t/val : {\n\t\t/parent : \"forms\",\n\t\t/new : \"video\",\n\t\t/id : \"foovideo\",\n\t\t/controls : \"\",\n\t\t/child : {\n\t\t\t/new : \"source\",\n\t\t\t/type : \"video/mp4\",\n\t\t\t/src : \"http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4\"\n\t\t},\n\t\t/style : {\n\t\t\t/z-index : 100\n\t\t}\n\t}\n}"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ],
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
					"patching_rect" : [ 149.0, 397.683072799884485, 41.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p html"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 183.0, 163.0, 1703.0, 735.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 19.754718780517578, 190.5, 589.0, 20.0 ],
									"text" : "https://quintetnet.hfmt-hamburg.de/tunnel_webviewer/webview.html?fetch=scores/rama/echoic.json&prefix=/2"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-2",
									"linecount" : 7,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 63.754718780517578, 279.5, 265.0, 106.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -120, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 102, 105, 108, 101, 0, 0, 0, 0, 0, 0, 0, 80, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 102, 101, 116, 99, 104, 0, 0, 44, 115, 0, 0, 98, 108, 117, 101, 115, 46, 106, 115, 111, 110, 0, 0, 0, 0, 0, 16, 47, 112, 114, 101, 102, 105, 120, 0, 44, 115, 0, 0, 49, 52, 52, 0 ],
									"saved_bundle_length" : 156,
									"text" : "/* : {\n\t/key : \"file\",\n\t/val : {\n\t\t/fetch : \"blues.json\",\n\t\t/prefix : \"144\"\n\t}\n}"
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
									"patching_rect" : [ 662.0, 398.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ],
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
					"patching_rect" : [ 244.0, 439.153589630205033, 34.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p file"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 305.0, 79.0, 961.0, 937.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-20",
									"linecount" : 4,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 236.5, 689.0, 150.0, 65.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0, 0, 0, 0, 20, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0 ],
									"saved_bundle_length" : 96,
									"text" : "/* : {\n\t/key : \"clear\",\n\t/val : \"tween\"\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-12",
									"linecount" : 8,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 240.5, 482.0, 150.0, 106.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -120, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 80, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 111, 112, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0 ],
									"saved_bundle_length" : 156,
									"text" : "/* : {\n\t/key : \"tween\",\n\t/val : {\n\t\t/cmd : \"stop\",\n\t\t/id : \"fooTween\"\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-13",
									"linecount" : 12,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 501.5, 499.0, 150.0, 146.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -52, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, -108, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 114, 101, 115, 101, 116, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 95, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 97, 114, 116, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0 ],
									"saved_bundle_length" : 224,
									"text" : "/* : {\n\t/key : \"tween\",\n\t/val : [{\n\t\t/cmd : \"reset\",\n\t\t/id : \"foo_line\"\n\t}, {\n\t\t/cmd : \"start\",\n\t\t/id : \"fooTween\"\n\t}]\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-38",
									"linecount" : 21,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 986.5, 267.0, 150.0, 255.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 84, 47, 42, 47, 116, 119, 101, 101, 110, 47, 116, 111, 0, 44, 46, 0, 0, 0, 0, 1, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 97, 114, 103, 101, 116, 0, 44, 115, 0, 0, 35, 98, 97, 114, 0, 0, 0, 0, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, -24, 47, 118, 97, 114, 115, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -84, 47, 98, 101, 122, 105, 101, 114, 0, 44, 46, 46, 46, 0, 0, 0, 0, 0, 0, 0, 48, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, -6, 0, 0, 0, 48, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 1, 44, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 1, -12, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 1, -112, 0, 0, 0, 20, 47, 101, 97, 115, 101, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 97, 114, 0, 0 ],
									"saved_bundle_length" : 360,
									"text" : "/*/tween/to : {\n\t/id : \"fooTween\",\n\t/target : \"#bar\",\n\t/dur : 10,\n\t/vars : {\n\t\t/bezier : [{\n\t\t\t/x : 100,\n\t\t\t/y : 250\n\t\t}, {\n\t\t\t/x : 300,\n\t\t\t/y : 0\n\t\t}, {\n\t\t\t/x : 500,\n\t\t\t/y : 400\n\t\t}],\n\t\t/ease : \"linear\"\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-37",
									"linecount" : 8,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 459.0, 693.0, 143.0, 119.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 47, 42, 47, 116, 105, 109, 101, 108, 105, 110, 101, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 97, 114, 116, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 95, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 84, 47, 42, 47, 116, 119, 101, 101, 110, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 114, 101, 115, 101, 116, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0 ],
									"saved_bundle_length" : 192,
									"text" : "/*/timeline : {\n\t/cmd : \"start\",\n\t/id : \"foo_line\"\n},\n/*/tween : {\n\t/cmd : \"reset\",\n\t/id : \"fooTween\"\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-36",
									"linecount" : 12,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 501.5, 348.0, 150.0, 146.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -52, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, -108, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 97, 114, 116, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 95, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 114, 101, 115, 101, 116, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0 ],
									"saved_bundle_length" : 224,
									"text" : "/* : {\n\t/key : \"tween\",\n\t/val : [{\n\t\t/cmd : \"start\",\n\t\t/id : \"foo_line\"\n\t}, {\n\t\t/cmd : \"reset\",\n\t\t/id : \"fooTween\"\n\t}]\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 21.5, 401.0, 211.0, 20.0 ],
									"text" : "start tween or timelilne from beginning"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-27",
									"linecount" : 8,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 240.5, 368.0, 150.0, 106.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -120, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 80, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 97, 114, 116, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0 ],
									"saved_bundle_length" : 156,
									"text" : "/* : {\n\t/key : \"tween\",\n\t/val : {\n\t\t/cmd : \"start\",\n\t\t/id : \"fooTween\"\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 618.5, 854.0, 153.0, 33.0 ],
									"text" : "pause and return to starting point"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 618.5, 822.0, 153.0, 20.0 ],
									"text" : "reverse direction"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 131.0, 49.0, 87.0, 20.0 ],
									"text" : "object to move"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-24",
									"linecount" : 11,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 75.5, 137.0, 157.0, 146.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -76, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -88, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -128, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 112, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 98, 97, 114, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 116, 101, 120, 116, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 20, 47, 99, 104, 105, 108, 100, 0, 0, 44, 115, 0, 0, 104, 101, 108, 108, 111, 33, 0, 0 ],
									"saved_bundle_length" : 200,
									"text" : "/* : {\n\t/key : \"svg\",\n\t/val : {\n\t\t/id : \"bar\",\n\t\t/new : \"text\",\n\t\t/x : 100,\n\t\t/y : 100,\n\t\t/child : \"hello!\"\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 618.5, 746.0, 124.0, 20.0 ],
									"text" : "stop (same as pause)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 618.5, 783.0, 153.0, 20.0 ],
									"text" : "start from current position"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 618.5, 716.0, 47.0, 20.0 ],
									"text" : "pause"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 618.5, 686.0, 211.0, 20.0 ],
									"text" : "start tween or timelilne from beginning"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-1",
									"linecount" : 32,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 658.5, 208.0, 293.0, 445.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 124, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 2, 112, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 2, 68, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 2, 52, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 95, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 100, 47, 105, 110, 105, 116, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 117, 115, 101, 100, 0, 44, 115, 0, 0, 116, 114, 117, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 121, 111, 121, 111, 0, 0, 0, 44, 115, 0, 0, 116, 114, 117, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 114, 101, 112, 101, 97, 116, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 1, -96, 47, 116, 119, 101, 101, 110, 115, 0, 44, 46, 46, 0, 0, 0, 0, -60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 97, 114, 103, 101, 116, 0, 44, 115, 0, 0, 35, 98, 97, 114, 0, 0, 0, 0, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, -124, 47, 118, 97, 114, 115, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 116, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 115, 99, 97, 108, 101, 88, 0, 44, 115, 0, 0, 53, 48, 37, 0, 0, 0, 0, 20, 47, 111, 112, 97, 99, 105, 116, 121, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 20, 47, 101, 97, 115, 101, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 97, 114, 0, 0, 0, 0, 0, -56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 97, 114, 103, 101, 116, 0, 44, 115, 0, 0, 35, 98, 97, 114, 0, 0, 0, 0, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2, 0, 0, 0, -120, 47, 118, 97, 114, 115, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 99, 97, 108, 101, 0, 0, 44, 115, 0, 0, 49, 48, 48, 37, 0, 0, 0, 0, 0, 0, 0, 20, 47, 111, 112, 97, 99, 105, 116, 121, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 20, 47, 101, 97, 115, 101, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 97, 114, 0, 0 ],
									"saved_bundle_length" : 656,
									"text" : "/* : {\n\t/key : \"tween\",\n\t/val : {\n\t\t/id : \"foo_line\",\n\t\t/init : {\n\t\t\t/paused : \"true\",\n\t\t\t/yoyo : \"true\",\n\t\t\t/repeat : 20\n\t\t},\n\t\t/tweens : [{\n\t\t\t/target : \"#bar\",\n\t\t\t/dur : 1,\n\t\t\t/vars : {\n\t\t\t\t/y : 0,\n\t\t\t\t/x : 0,\n\t\t\t\t/scaleX : \"50%\",\n\t\t\t\t/opacity : 1,\n\t\t\t\t/ease : \"linear\"\n\t\t\t}\n\t\t}, {\n\t\t\t/target : \"#bar\",\n\t\t\t/dur : 2,\n\t\t\t/vars : {\n\t\t\t\t/y : 10,\n\t\t\t\t/x : 0,\n\t\t\t\t/scale : \"100%\",\n\t\t\t\t/opacity : 1,\n\t\t\t\t/ease : \"linear\"\n\t\t\t}\n\t\t}]\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-8",
									"linecount" : 14,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 240.5, 137.0, 301.0, 201.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 16, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, 4, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, -40, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 97, 114, 103, 101, 116, 0, 44, 115, 0, 0, 35, 98, 97, 114, 0, 0, 0, 0, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 112, 47, 118, 97, 114, 115, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 1, 114, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 20, 47, 112, 97, 117, 115, 101, 100, 0, 44, 115, 0, 0, 116, 114, 117, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 101, 97, 115, 101, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 97, 114, 0, 0 ],
									"saved_bundle_length" : 292,
									"text" : "/* : {\n\t/key : \"tween\",\n\t/val : {\n\t\t/id : \"fooTween\",\n\t\t/target : \"#bar\",\n\t\t/dur : 1,\n\t\t/vars : {\n\t\t\t/y : 370,\n\t\t\t/x : 100,\n\t\t\t/paused : \"true\",\n\t\t\t/ease : \"linear\"\n\t\t}\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-17",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 80.0, 796.0, 36.0, 36.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ],
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
					"patching_rect" : [ 83.0, 282.209843679930714, 71.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p animation"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 424.0, 79.0, 782.0, 887.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-15",
									"linecount" : 7,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 679.5, 448.0, 179.0, 106.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -124, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 111, 117, 110, 100, 0, 0, 0, 0, 0, 0, 76, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 107, 105, 99, 107, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 97, 114, 116, 0, 0, 0 ],
									"saved_bundle_length" : 152,
									"text" : "/* : {\n\t/key : \"sound\",\n\t/val : {\n\t\t/id : \"kick\",\n\t\t/cmd : \"start\"\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "kslider",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 285.5, 26.0, 336.0, 53.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 301.5, 189.0, 32.0, 22.0 ],
									"text" : "mtof"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 10,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 644.0, 79.0, 1002.0, 872.0 ],
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-3",
													"linecount" : 7,
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 563.5, 448.0, 179.0, 106.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -124, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 111, 117, 110, 100, 0, 0, 0, 0, 0, 0, 76, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 107, 105, 99, 107, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 97, 114, 116, 0, 0, 0 ],
													"saved_bundle_length" : 152,
													"text" : "/* : {\n\t/key : \"sound\",\n\t/val : {\n\t\t/id : \"kick\",\n\t\t/cmd : \"start\"\n\t}\n}"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-6",
													"linecount" : 15,
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 560.0, 230.0, 309.0, 214.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 72, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 111, 117, 110, 100, 0, 0, 0, 0, 0, 1, 16, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, 0, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 80, 108, 97, 121, 101, 114, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 107, 105, 99, 107, 0, 0, 0, 0, 0, 0, 0, -128, 47, 118, 97, 114, 115, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 112, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 47, 117, 114, 108, 0, 0, 0, 0, 44, 115, 0, 0, 47, 109, 101, 100, 105, 97, 47, 56, 48, 56, 95, 109, 112, 51, 47, 99, 114, 97, 115, 104, 99, 121, 109, 46, 109, 112, 51, 0, 0, 0, 0, 24, 47, 97, 117, 116, 111, 115, 116, 97, 114, 116, 0, 0, 44, 115, 0, 0, 102, 97, 108, 115, 101, 0, 0, 0, 0, 0, 0, 20, 47, 108, 111, 111, 112, 0, 0, 0, 44, 115, 0, 0, 102, 97, 108, 115, 101, 0, 0, 0, 0, 0, 0, 60, 47, 99, 97, 108, 108, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 44, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 109, 101, 116, 104, 111, 100, 0, 44, 115, 0, 0, 116, 111, 77, 97, 115, 116, 101, 114, 0, 0, 0, 0 ],
													"saved_bundle_length" : 348,
													"text" : "/* : {\n\t/key : \"sound\",\n\t/val : {\n\t\t/new : \"Player\",\n\t\t/id : \"kick\",\n\t\t/vars : {\n\t\t\t/url : \"/media/808_mp3/crashcym.mp3\",\n\t\t\t/autostart : \"false\",\n\t\t\t/loop : \"false\"\n\t\t},\n\t\t/call : {\n\t\t\t/method : \"toMaster\"\n\t\t}\n\t}\n}"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 104.0, 644.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-1",
													"linecount" : 39,
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 104.0, 65.0, 395.0, 513.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, -100, 47, 42, 0, 0, 44, 46, 46, 0, 0, 0, 0, -56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 115, 115, 0, 0, 0, 0, -96, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -112, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 46, 114, 101, 97, 100, 121, 0, 0, 0, 0, 0, 96, 47, 112, 114, 111, 112, 115, 0, 0, 44, 46, 0, 0, 0, 0, 0, 80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 98, 97, 99, 107, 103, 114, 111, 117, 110, 100, 45, 99, 111, 108, 111, 114, 0, 0, 0, 44, 115, 0, 0, 108, 105, 103, 104, 116, 98, 108, 117, 101, 0, 0, 0, 0, 0, 0, 20, 47, 99, 111, 108, 111, 114, 0, 0, 44, 115, 0, 0, 98, 108, 97, 99, 107, 0, 0, 0, 0, 0, 2, -60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0, 0, 0, 2, -104, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 2, -120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 102, 111, 114, 109, 115, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 114, 101, 97, 100, 121, 98, 117, 116, 116, 111, 110, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 98, 117, 116, 116, 111, 110, 0, 0, 0, 0, 0, 20, 47, 116, 101, 120, 116, 0, 0, 0, 44, 115, 0, 0, 114, 101, 97, 100, 121, 0, 0, 0, 0, 0, 0, 20, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 98, 117, 116, 116, 111, 110, 0, 0, 0, 0, 0, -128, 47, 111, 110, 108, 111, 97, 100, 0, 44, 115, 0, 0, 108, 101, 116, 32, 109, 115, 103, 32, 61, 32, 123, 125, 59, 10, 32, 32, 32, 32, 32, 108, 101, 116, 32, 97, 100, 100, 114, 32, 61, 32, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 111, 115, 99, 112, 114, 101, 102, 105, 120, 43, 39, 47, 114, 101, 97, 100, 121, 98, 117, 116, 116, 111, 110, 39, 59, 10, 32, 32, 32, 32, 32, 109, 115, 103, 91, 97, 100, 100, 114, 93, 32, 61, 32, 48, 59, 10, 32, 32, 32, 32, 32, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 115, 101, 110, 100, 40, 109, 115, 103, 41, 59, 0, 0, 0, 0, 0, 1, 120, 47, 111, 110, 99, 108, 105, 99, 107, 0, 0, 0, 0, 44, 115, 0, 0, 10, 32, 32, 32, 32, 32, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 115, 116, 97, 114, 116, 65, 117, 100, 105, 111, 40, 41, 59, 10, 32, 32, 32, 32, 32, 108, 101, 116, 32, 109, 115, 103, 32, 61, 32, 123, 125, 59, 10, 32, 32, 32, 32, 32, 108, 101, 116, 32, 97, 100, 100, 114, 32, 61, 32, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 111, 115, 99, 112, 114, 101, 102, 105, 120, 43, 39, 47, 114, 101, 97, 100, 121, 98, 117, 116, 116, 111, 110, 39, 59, 10, 32, 32, 32, 32, 32, 105, 102, 40, 32, 33, 116, 104, 105, 115, 46, 99, 108, 97, 115, 115, 76, 105, 115, 116, 46, 99, 111, 110, 116, 97, 105, 110, 115, 40, 39, 114, 101, 97, 100, 121, 39, 41, 32, 41, 10, 32, 32, 32, 32, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 116, 104, 105, 115, 46, 99, 108, 97, 115, 115, 76, 105, 115, 116, 46, 97, 100, 100, 40, 39, 114, 101, 97, 100, 121, 39, 41, 59, 10, 32, 32, 32, 32, 32, 32, 32, 32, 109, 115, 103, 91, 97, 100, 100, 114, 93, 32, 61, 32, 49, 59, 10, 32, 32, 32, 32, 32, 32, 32, 32, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 115, 101, 110, 100, 40, 109, 115, 103, 41, 59, 10, 32, 32, 32, 32, 32, 125, 32, 101, 108, 115, 101, 32, 123, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 116, 104, 105, 115, 46, 99, 108, 97, 115, 115, 76, 105, 115, 116, 46, 114, 101, 109, 111, 118, 101, 40, 39, 114, 101, 97, 100, 121, 39, 41, 59, 10, 32, 32, 32, 32, 32, 32, 32, 32, 109, 115, 103, 91, 97, 100, 100, 114, 93, 32, 61, 32, 48, 59, 10, 32, 32, 32, 32, 32, 32, 32, 32, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 115, 101, 110, 100, 40, 109, 115, 103, 41, 59, 10, 32, 32, 32, 32, 32, 125, 0 ],
													"saved_bundle_length" : 944,
													"text" : "/* : [{\n\t/key : \"css\",\n\t/val : {\n\t\t/selector : \".ready\",\n\t\t/props : {\n\t\t\t/background-color : \"lightblue\",\n\t\t\t/color : \"black\"\n\t\t}\n\t}\n}, {\n\t/key : \"html\",\n\t/val : {\n\t\t/parent : \"forms\",\n\t\t/id : \"readybutton\",\n\t\t/new : \"button\",\n\t\t/text : \"ready\",\n\t\t/class : \"button\",\n\t\t/onload : \"let msg = {};\n     let addr = drawsocket.oscprefix+'/readybutton';\n     msg[addr] = 0;\n     drawsocket.send(msg);\",\n\t\t/onclick : \"\n     drawsocket.startAudio();\n     let msg = {};\n     let addr = drawsocket.oscprefix+'/readybutton';\n     if( !this.classList.contains('ready') )\n     {\n        this.classList.add('ready');\n        msg[addr] = 1;\n        drawsocket.send(msg);\n     } else { \n        this.classList.remove('ready');\n        msg[addr] = 0;\n        drawsocket.send(msg);\n     }\"\n\t}\n}]"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 883.0, 219.0, 140.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p enable button example"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-3",
									"linecount" : 7,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 679.5, 331.0, 179.0, 106.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -124, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 111, 117, 110, 100, 0, 0, 0, 0, 0, 0, 76, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 107, 105, 99, 107, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 97, 114, 116, 0, 0, 0 ],
									"saved_bundle_length" : 152,
									"text" : "/* : {\n\t/key : \"sound\",\n\t/val : {\n\t\t/id : \"kick\",\n\t\t/cmd : \"start\"\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 10,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 855.0, 79.0, 791.0, 873.0 ],
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
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-7",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 414.5, 597.0, 153.0, 33.0 ],
													"text" : "how to call functions in the script without using eval?"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-6",
													"linecount" : 9,
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 157.0, 543.0, 229.0, 119.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -88, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -100, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0, 0, 0, 0, 112, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 115, 99, 114, 105, 112, 116, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 109, 121, 76, 105, 98, 0, 0, 0, 0, 0, 0, 32, 47, 115, 99, 114, 0, 0, 0, 0, 44, 115, 0, 0, 101, 120, 116, 101, 114, 110, 97, 108, 45, 115, 99, 114, 105, 112, 116, 46, 106, 115, 0, 0 ],
													"saved_bundle_length" : 188,
													"text" : "/* : {\n\t/key : \"html\",\n\t/val : {\n\t\t/new : \"script\",\n\t\t/id : \"myLib\",\n\t\t/scr : \"external-script.js\"\n\t}\n}"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-5",
													"linecount" : 14,
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 351.0, 312.0, 287.0, 201.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 40, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, 28, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 111, 117, 110, 100, 0, 0, 0, 0, 0, 0, -16, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -32, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 112, 115, 121, 110, 116, 104, 0, 0, 0, 0, 0, -72, 47, 99, 97, 108, 108, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -88, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 109, 101, 116, 104, 111, 100, 0, 44, 115, 0, 0, 116, 114, 105, 103, 103, 101, 114, 65, 116, 116, 97, 99, 107, 82, 101, 108, 101, 97, 115, 101, 0, 0, 0, 0, 0, 0, 0, 108, 47, 97, 114, 103, 115, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, 48, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 115, 115, 0, 0, 0, 0, 69, 98, 52, 0, 71, 51, 0, 0, 67, 53, 0, 0, 0, 0, 0, 40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 118, 97, 108, 0, 0, 0, 0, 44, 100, 0, 0, 63, -71, -103, -103, -103, -103, -103, -102 ],
													"saved_bundle_length" : 316,
													"text" : "/* : {\n\t/key : \"sound\",\n\t/val : {\n\t\t/id : \"psynth\",\n\t\t/call : {\n\t\t\t/method : \"triggerAttackRelease\",\n\t\t\t/args : [{\n\t\t\t\t/val : [\"Eb4\", \"G3\", \"C5\"]\n\t\t\t}, {\n\t\t\t\t/val : 0.1\n\t\t\t}]\n\t\t}\n\t}\n}"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-2",
													"linecount" : 14,
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 346.0, 91.0, 287.0, 201.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 40, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, 28, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 111, 117, 110, 100, 0, 0, 0, 0, 0, 0, -16, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -32, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 112, 115, 121, 110, 116, 104, 0, 0, 0, 0, 0, -72, 47, 99, 97, 108, 108, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -88, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 109, 101, 116, 104, 111, 100, 0, 44, 115, 0, 0, 116, 114, 105, 103, 103, 101, 114, 65, 116, 116, 97, 99, 107, 82, 101, 108, 101, 97, 115, 101, 0, 0, 0, 0, 0, 0, 0, 108, 47, 97, 114, 103, 115, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, 48, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 115, 115, 0, 0, 0, 0, 69, 98, 51, 0, 71, 52, 0, 0, 67, 52, 0, 0, 0, 0, 0, 40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 118, 97, 108, 0, 0, 0, 0, 44, 100, 0, 0, 63, -71, -103, -103, -103, -103, -103, -102 ],
													"saved_bundle_length" : 316,
													"text" : "/* : {\n\t/key : \"sound\",\n\t/val : {\n\t\t/id : \"psynth\",\n\t\t/call : {\n\t\t\t/method : \"triggerAttackRelease\",\n\t\t\t/args : [{\n\t\t\t\t/val : [\"Eb3\", \"G4\", \"C4\"]\n\t\t\t}, {\n\t\t\t\t/val : 0.1\n\t\t\t}]\n\t\t}\n\t}\n}"
												}

											}
, 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-3",
													"linecount" : 19,
													"maxclass" : "o.compose",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 45.0, 23.0, 287.0, 269.0 ],
													"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -128, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, 116, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 111, 117, 110, 100, 0, 0, 0, 0, 0, 1, 72, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, 56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 80, 111, 108, 121, 83, 121, 110, 116, 104, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 112, 115, 121, 110, 116, 104, 0, 0, 0, 0, 0, -76, 47, 118, 97, 114, 115, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -92, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 111, 108, 121, 112, 104, 111, 110, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 4, 0, 0, 0, 16, 47, 118, 111, 108, 117, 109, 101, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 100, 101, 116, 117, 110, 101, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 80, 47, 118, 111, 105, 99, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 111, 98, 106, 0, 0, 0, 0, 44, 115, 0, 0, 84, 111, 110, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 103, 101, 116, 0, 0, 0, 0, 44, 115, 0, 0, 83, 121, 110, 116, 104, 0, 0, 0, 0, 0, 0, 60, 47, 99, 97, 108, 108, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 44, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 109, 101, 116, 104, 111, 100, 0, 44, 115, 0, 0, 116, 111, 77, 97, 115, 116, 101, 114, 0, 0, 0, 0 ],
													"saved_bundle_length" : 404,
													"text" : "/* : {\n\t/key : \"sound\",\n\t/val : {\n\t\t/new : \"PolySynth\",\n\t\t/id : \"psynth\",\n\t\t/vars : {\n\t\t\t/polyphony : 4,\n\t\t\t/volume : 0,\n\t\t\t/detune : 0,\n\t\t\t/voice : {\n\t\t\t\t/obj : \"Tone\",\n\t\t\t\t/get : \"Synth\"\n\t\t\t}\n\t\t},\n\t\t/call : {\n\t\t\t/method : \"toMaster\"\n\t\t}\n\t}\n}"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-4",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 45.0, 449.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "black on white",
												"number" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"umenu" : 												{
													"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "caption text",
												"default" : 												{
													"fontsize" : [ 11.0 ],
													"fontface" : [ 2 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section dividers",
												"default" : 												{
													"fontsize" : [ 15.0 ],
													"fontname" : [ "Arial" ],
													"fontface" : [ 3 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "section info reg",
												"default" : 												{
													"fontsize" : [ 12.0 ],
													"fontname" : [ "Arial" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "titles",
												"default" : 												{
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
									"patching_rect" : [ 819.5, 100.0, 73.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p poly synth"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-22",
									"linecount" : 10,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 16.5, 592.0, 244.0, 146.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -60, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -72, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 111, 117, 110, 100, 0, 0, 0, 0, 0, 0, -116, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 115, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 84, 47, 115, 101, 116, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 68, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 109, 101, 109, 98, 101, 114, 0, 44, 115, 0, 0, 102, 114, 101, 113, 117, 101, 110, 99, 121, 46, 118, 97, 108, 117, 101, 0, 0, 0, 0, 16, 47, 118, 97, 108, 117, 101, 0, 0, 44, 105, 0, 0, 0, 0, 3, 120 ],
									"saved_bundle_length" : 216,
									"text" : "/* : {\n\t/key : \"sound\",\n\t/val : {\n\t\t/id : \"sine\",\n\t\t/set : {\n\t\t\t/member : \"frequency.value\",\n\t\t\t/value : 888\n\t\t}\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-10",
									"linecount" : 10,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 285.5, 592.0, 244.0, 146.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -60, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -72, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 111, 117, 110, 100, 0, 0, 0, 0, 0, 0, -116, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 115, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 84, 47, 115, 101, 116, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 68, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 109, 101, 109, 98, 101, 114, 0, 44, 115, 0, 0, 102, 114, 101, 113, 117, 101, 110, 99, 121, 46, 118, 97, 108, 117, 101, 0, 0, 0, 0, 16, 47, 118, 97, 108, 117, 101, 0, 0, 44, 105, 0, 0, 0, 0, 3, -24 ],
									"saved_bundle_length" : 216,
									"text" : "/* : {\n\t/key : \"sound\",\n\t/val : {\n\t\t/id : \"sine\",\n\t\t/set : {\n\t\t\t/member : \"frequency.value\",\n\t\t\t/value : 1000\n\t\t}\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-1",
									"linecount" : 19,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 8.5, 19.0, 237.0, 269.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -128, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, 116, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 111, 117, 110, 100, 0, 0, 0, 0, 0, 1, 72, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, 56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 79, 115, 99, 105, 108, 108, 97, 116, 111, 114, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 115, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 120, 47, 118, 97, 114, 115, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 115, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 102, 114, 101, 113, 117, 101, 110, 99, 121, 0, 0, 44, 105, 0, 0, 0, 0, 1, -72, 0, 0, 0, 16, 47, 115, 112, 114, 101, 97, 100, 0, 44, 105, 0, 0, 0, 0, 0, 40, 0, 0, 0, 16, 47, 118, 111, 108, 117, 109, 101, 0, 44, 105, 0, 0, -1, -1, -1, -12, 0, 0, 0, 120, 47, 99, 97, 108, 108, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 109, 101, 116, 104, 111, 100, 0, 44, 115, 0, 0, 116, 111, 77, 97, 115, 116, 101, 114, 0, 0, 0, 0, 0, 0, 0, 56, 47, 116, 104, 101, 110, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 109, 101, 116, 104, 111, 100, 0, 44, 115, 0, 0, 115, 116, 97, 114, 116, 0, 0, 0 ],
									"saved_bundle_length" : 404,
									"text" : "/* : {\n\t/key : \"sound\",\n\t/val : {\n\t\t/new : \"Oscillator\",\n\t\t/id : \"sine\",\n\t\t/vars : {\n\t\t\t/type : \"sine\",\n\t\t\t/frequency : 440,\n\t\t\t/spread : 40,\n\t\t\t/volume : -12\n\t\t},\n\t\t/call : {\n\t\t\t/method : \"toMaster\",\n\t\t\t/then : {\n\t\t\t\t/method : \"start\"\n\t\t\t}\n\t\t}\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 209.0, 461.5, 55.0, 22.0 ],
									"text" : "o.pack /*"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 209.0, 426.0, 127.0, 22.0 ],
									"text" : "o.pack /val /key sound"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 209.0, 392.5, 108.0, 22.0 ],
									"text" : "o.pack /set /id sine"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-16",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 209.0, 324.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 209.0, 360.0, 217.0, 22.0 ],
									"text" : "o.pack /value /member frequency.value"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-13",
									"linecount" : 9,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 8.5, 301.0, 165.0, 133.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -88, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -100, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 111, 117, 110, 100, 0, 0, 0, 0, 0, 0, 112, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 115, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 56, 47, 99, 97, 108, 108, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 109, 101, 116, 104, 111, 100, 0, 44, 115, 0, 0, 115, 116, 97, 114, 116, 0, 0, 0 ],
									"saved_bundle_length" : 188,
									"text" : "/* : {\n\t/key : \"sound\",\n\t/val : {\n\t\t/id : \"sine\",\n\t\t/call : {\n\t\t\t/method : \"start\"\n\t\t}\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-12",
									"linecount" : 9,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 8.5, 448.0, 165.0, 133.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -88, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -100, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 111, 117, 110, 100, 0, 0, 0, 0, 0, 0, 112, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 115, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 56, 47, 99, 97, 108, 108, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 109, 101, 116, 104, 111, 100, 0, 44, 115, 0, 0, 115, 116, 111, 112, 0, 0, 0, 0 ],
									"saved_bundle_length" : 188,
									"text" : "/* : {\n\t/key : \"sound\",\n\t/val : {\n\t\t/id : \"sine\",\n\t\t/call : {\n\t\t\t/method : \"stop\"\n\t\t}\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-9",
									"linecount" : 9,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 446.5, 321.0, 179.0, 133.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -88, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -100, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 111, 117, 110, 100, 0, 0, 0, 0, 0, 0, 112, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 107, 105, 99, 107, 0, 0, 0, 0, 0, 0, 0, 56, 47, 99, 97, 108, 108, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 109, 101, 116, 104, 111, 100, 0, 44, 115, 0, 0, 114, 101, 115, 116, 97, 114, 116, 0 ],
									"saved_bundle_length" : 188,
									"text" : "/* : {\n\t/key : \"sound\",\n\t/val : {\n\t\t/id : \"kick\",\n\t\t/call : {\n\t\t\t/method : \"restart\"\n\t\t}\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-6",
									"linecount" : 15,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 441.0, 88.0, 330.0, 214.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 72, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 111, 117, 110, 100, 0, 0, 0, 0, 0, 1, 16, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, 0, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 80, 108, 97, 121, 101, 114, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 107, 105, 99, 107, 0, 0, 0, 0, 0, 0, 0, -128, 47, 118, 97, 114, 115, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 112, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 47, 117, 114, 108, 0, 0, 0, 0, 44, 115, 0, 0, 47, 109, 101, 100, 105, 97, 47, 56, 48, 56, 95, 109, 112, 51, 47, 107, 105, 99, 107, 49, 46, 109, 112, 51, 0, 0, 0, 0, 0, 0, 0, 24, 47, 97, 117, 116, 111, 115, 116, 97, 114, 116, 0, 0, 44, 115, 0, 0, 102, 97, 108, 115, 101, 0, 0, 0, 0, 0, 0, 20, 47, 108, 111, 111, 112, 0, 0, 0, 44, 115, 0, 0, 102, 97, 108, 115, 101, 0, 0, 0, 0, 0, 0, 60, 47, 99, 97, 108, 108, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 44, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 109, 101, 116, 104, 111, 100, 0, 44, 115, 0, 0, 116, 111, 77, 97, 115, 116, 101, 114, 0, 0, 0, 0 ],
									"saved_bundle_length" : 348,
									"text" : "/* : {\n\t/key : \"sound\",\n\t/val : {\n\t\t/new : \"Player\",\n\t\t/id : \"kick\",\n\t\t/vars : {\n\t\t\t/url : \"/media/808_mp3/kick1.mp3\",\n\t\t\t/autostart : \"false\",\n\t\t\t/loop : \"false\"\n\t\t},\n\t\t/call : {\n\t\t\t/method : \"toMaster\"\n\t\t}\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-5",
									"linecount" : 21,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 581.0, 599.0, 395.0, 282.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -128, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, 116, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 1, 76, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 112, 97, 116, 104, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 119, 111, 119, 0, 0, 0, 0, 52, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 36, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 114, 101, 100, 0, 0, 0, 0, 52, 47, 100, 0, 0, 44, 115, 0, 0, 77, 49, 48, 48, 44, 49, 48, 48, 97, 51, 48, 44, 51, 48, 44, 48, 44, 48, 44, 48, 44, 48, 45, 54, 48, 97, 51, 48, 44, 51, 48, 44, 48, 44, 48, 44, 48, 44, 48, 44, 54, 48, 0, 0, 0, 0, 0, -112, 47, 111, 110, 99, 108, 105, 99, 107, 0, 0, 0, 0, 44, 115, 0, 0, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 105, 110, 112, 117, 116, 40, 123, 10, 32, 32, 32, 32, 107, 101, 121, 58, 32, 39, 115, 111, 117, 110, 100, 39, 44, 10, 32, 32, 32, 32, 118, 97, 108, 58, 32, 123, 10, 32, 32, 32, 32, 32, 32, 105, 100, 58, 32, 39, 107, 105, 99, 107, 39, 44, 10, 32, 32, 32, 32, 32, 32, 99, 97, 108, 108, 58, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 109, 101, 116, 104, 111, 100, 32, 58, 32, 39, 114, 101, 115, 116, 97, 114, 116, 39, 32, 10, 32, 32, 32, 32, 32, 32, 125, 10, 32, 32, 32, 32, 125, 10, 125, 41, 0, 0, 0, 0 ],
									"saved_bundle_length" : 404,
									"text" : "/* : {\n\t/key : \"svg\",\n\t/val : {\n\t\t/new : \"path\",\n\t\t/id : \"wow\",\n\t\t/style : {\n\t\t\t/fill : \"red\"\n\t\t},\n\t\t/d : \"M100,100a30,30,0,0,0,0-60a30,30,0,0,0,0,60\",\n\t\t/onclick : \"drawsocket.input({\n    key: 'sound',\n    val: {\n      id: 'kick',\n      call: {\n        method : 'restart' \n      }\n    }\n})\"\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 8.5, 817.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 83.0, 369.564765519896014, 51.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p sound"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 920.0, 80.0, 726.0, 772.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-1",
									"linecount" : 35,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 333.0, 59.0, 496.0, 473.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 4, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 2, -8, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0, 0, 0, 2, -52, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 46, 0, 0, 0, 0, 0, 0, 0, -60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 102, 111, 114, 109, 115, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 100, 105, 118, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 99, 104, 97, 116, 0, 0, 0, 0, 0, 0, 0, 112, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 112, 111, 115, 105, 116, 105, 111, 110, 0, 0, 0, 44, 115, 0, 0, 97, 98, 115, 111, 108, 117, 116, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 111, 112, 0, 0, 0, 0, 44, 115, 0, 0, 50, 48, 48, 112, 120, 0, 0, 0, 0, 0, 0, 20, 47, 108, 101, 102, 116, 0, 0, 0, 44, 115, 0, 0, 49, 48, 48, 112, 120, 0, 0, 0, 0, 0, 1, 76, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 99, 104, 97, 116, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 105, 110, 112, 117, 116, 0, 0, 0, 0, 0, 0, 20, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 116, 101, 120, 116, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 117, 115, 101, 114, 105, 110, 112, 117, 116, 0, 0, 0, 0, 0, 0, 24, 47, 110, 97, 109, 101, 0, 0, 0, 44, 115, 0, 0, 117, 115, 101, 114, 105, 110, 112, 117, 116, 0, 0, 0, 0, 0, 0, 16, 47, 115, 105, 122, 101, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, -88, 47, 111, 110, 107, 101, 121, 100, 111, 119, 110, 0, 0, 44, 115, 0, 0, 32, 105, 102, 40, 32, 101, 118, 101, 110, 116, 46, 107, 101, 121, 32, 61, 61, 32, 39, 69, 110, 116, 101, 114, 39, 32, 41, 123, 10, 32, 32, 32, 32, 32, 32, 108, 101, 116, 32, 111, 98, 106, 32, 61, 32, 123, 125, 59, 10, 32, 32, 32, 32, 32, 32, 111, 98, 106, 91, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 111, 115, 99, 112, 114, 101, 102, 105, 120, 43, 39, 47, 39, 43, 116, 104, 105, 115, 46, 105, 100, 43, 39, 47, 105, 110, 112, 117, 116, 39, 93, 32, 61, 32, 116, 104, 105, 115, 46, 118, 97, 108, 117, 101, 59, 10, 32, 32, 32, 32, 32, 32, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 115, 101, 110, 100, 40, 32, 111, 98, 106, 32, 41, 59, 10, 10, 125, 10, 0, 0, 0, 0, 0, 0, -96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 99, 104, 97, 116, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 97, 98, 101, 108, 0, 0, 0, 0, 0, 0, 24, 47, 102, 111, 114, 0, 0, 0, 0, 44, 115, 0, 0, 117, 115, 101, 114, 105, 110, 112, 117, 116, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 112, 114, 111, 109, 112, 116, 0, 0, 0, 0, 0, 20, 47, 110, 97, 109, 101, 0, 0, 0, 44, 115, 0, 0, 112, 114, 111, 109, 112, 116, 0, 0, 0, 0, 0, 20, 47, 116, 101, 120, 116, 0, 0, 0, 44, 115, 0, 0, 104, 101, 108, 108, 111, 33, 0, 0 ],
									"saved_bundle_length" : 792,
									"text" : "/* : {\n\t/key : \"html\",\n\t/val : [{\n\t\t/parent : \"forms\",\n\t\t/new : \"div\",\n\t\t/id : \"chat\",\n\t\t/style : {\n\t\t\t/position : \"absolute\",\n\t\t\t/top : \"200px\",\n\t\t\t/left : \"100px\"\n\t\t}\n\t}, {\n\t\t/parent : \"chat\",\n\t\t/new : \"input\",\n\t\t/type : \"text\",\n\t\t/id : \"userinput\",\n\t\t/name : \"userinput\",\n\t\t/size : 10,\n\t\t/onkeydown : \" if( event.key == 'Enter' ){\n      let obj = {};\n      obj[drawsocket.oscprefix+'/'+this.id+'/input'] = this.value;\n      drawsocket.send( obj );\n\n}\n\"\n\t}, {\n\t\t/parent : \"chat\",\n\t\t/new : \"label\",\n\t\t/for : \"userinput\",\n\t\t/id : \"prompt\",\n\t\t/name : \"prompt\",\n\t\t/text : \"hello!\"\n\t}]\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-4",
									"linecount" : 7,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 25.0, 480.0, 186.0, 106.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -124, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0, 0, 0, 0, 76, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 112, 114, 111, 109, 112, 116, 0, 0, 0, 0, 0, 20, 47, 116, 101, 120, 116, 0, 0, 0, 44, 115, 0, 0, 103, 114, 101, 97, 116, 0, 0, 0 ],
									"saved_bundle_length" : 152,
									"text" : "/* : {\n\t/key : \"html\",\n\t/val : {\n\t\t/id : \"prompt\",\n\t\t/text : \"great\"\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-3",
									"linecount" : 29,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ -88.0, 43.0, 381.0, 391.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, -112, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 2, -124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0, 0, 0, 2, 88, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 46, 0, 0, 0, 0, 0, 0, 0, -60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 102, 111, 114, 109, 115, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 100, 105, 118, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 99, 104, 97, 116, 0, 0, 0, 0, 0, 0, 0, 112, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 112, 111, 115, 105, 116, 105, 111, 110, 0, 0, 0, 44, 115, 0, 0, 97, 98, 115, 111, 108, 117, 116, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 111, 112, 0, 0, 0, 0, 44, 115, 0, 0, 50, 48, 48, 112, 120, 0, 0, 0, 0, 0, 0, 20, 47, 108, 101, 102, 116, 0, 0, 0, 44, 115, 0, 0, 49, 48, 48, 112, 120, 0, 0, 0, 0, 0, 0, -40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 99, 104, 97, 116, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 105, 110, 112, 117, 116, 0, 0, 0, 0, 0, 0, 20, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 116, 101, 120, 116, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 117, 115, 101, 114, 105, 110, 112, 117, 116, 0, 0, 0, 0, 0, 0, 24, 47, 110, 97, 109, 101, 0, 0, 0, 44, 115, 0, 0, 117, 115, 101, 114, 105, 110, 112, 117, 116, 0, 0, 0, 0, 0, 0, 16, 47, 115, 105, 122, 101, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 52, 47, 111, 110, 107, 101, 121, 100, 111, 119, 110, 0, 0, 44, 115, 0, 0, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 115, 117, 98, 109, 105, 116, 79, 110, 69, 110, 116, 101, 114, 75, 101, 121, 40, 116, 104, 105, 115, 41, 0, 0, 0, 0, 0, 0, -96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 99, 104, 97, 116, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 97, 98, 101, 108, 0, 0, 0, 0, 0, 0, 24, 47, 102, 111, 114, 0, 0, 0, 0, 44, 115, 0, 0, 117, 115, 101, 114, 105, 110, 112, 117, 116, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 112, 114, 111, 109, 112, 116, 0, 0, 0, 0, 0, 20, 47, 110, 97, 109, 101, 0, 0, 0, 44, 115, 0, 0, 112, 114, 111, 109, 112, 116, 0, 0, 0, 0, 0, 20, 47, 116, 101, 120, 116, 0, 0, 0, 44, 115, 0, 0, 104, 101, 108, 108, 111, 33, 0, 0 ],
									"saved_bundle_length" : 676,
									"text" : "/* : {\n\t/key : \"html\",\n\t/val : [{\n\t\t/parent : \"forms\",\n\t\t/new : \"div\",\n\t\t/id : \"chat\",\n\t\t/style : {\n\t\t\t/position : \"absolute\",\n\t\t\t/top : \"200px\",\n\t\t\t/left : \"100px\"\n\t\t}\n\t}, {\n\t\t/parent : \"chat\",\n\t\t/new : \"input\",\n\t\t/type : \"text\",\n\t\t/id : \"userinput\",\n\t\t/name : \"userinput\",\n\t\t/size : 10,\n\t\t/onkeydown : \"drawsocket.submitOnEnterKey(this)\"\n\t}, {\n\t\t/parent : \"chat\",\n\t\t/new : \"label\",\n\t\t/for : \"userinput\",\n\t\t/id : \"prompt\",\n\t\t/name : \"prompt\",\n\t\t/text : \"hello!\"\n\t}]\n}"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ -1.0, 634.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 83.0, 340.446458239907543, 49.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p forms"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 887.0, 79.0, 610.0, 746.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 272.0, 406.0, 55.0, 22.0 ],
									"text" : "o.pack /*"
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
									"patching_rect" : [ 354.0, 642.0, 136.0, 24.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 42, 47, 99, 108, 101, 97, 114, 0, 0, 0, 0, 44, 115, 0, 0, 112, 100, 102, 0 ],
									"saved_bundle_length" : 40,
									"text" : "/*/clear : \"pdf\""
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-9",
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 354.0, 583.0, 136.0, 24.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 42, 47, 112, 100, 102, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0 ],
									"saved_bundle_length" : 40,
									"text" : "/*/pdf : \"clear\""
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-8",
									"linecount" : 7,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 333.0, 462.0, 136.0, 106.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 124, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 112, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 112, 97, 103, 101, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 7, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 110, 101, 119, 112, 100, 102, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 112, 100, 102, 0 ],
									"saved_bundle_length" : 144,
									"text" : "/* : {\n\t/val : {\n\t\t/page : 7,\n\t\t/id : \"newpdf\"\n\t},\n\t/key : \"pdf\"\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 272.0, 374.0, 111.0, 22.0 ],
									"text" : "o.pack /val /key pdf"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 272.0, 301.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 272.0, 336.0, 135.0, 22.0 ],
									"text" : "o.pack /page /id newpdf"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-7",
									"linecount" : 4,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 178.0, 505.0, 136.0, 65.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 47, 42, 47, 112, 100, 102, 0, 0, 44, 46, 0, 0, 0, 0, 0, 56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 110, 101, 119, 112, 100, 102, 0, 0, 0, 0, 0, 16, 47, 112, 97, 103, 101, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 3 ],
									"saved_bundle_length" : 92,
									"text" : "/*/pdf : {\n\t/id : \"newpdf\",\n\t/page : 3\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-5",
									"linecount" : 12,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 63.5, 144.0, 345.0, 160.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -24, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -36, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 112, 100, 102, 0, 0, 0, 0, -76, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -92, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 110, 101, 119, 112, 100, 102, 0, 0, 0, 0, 0, 48, 47, 104, 114, 101, 102, 0, 0, 0, 44, 115, 0, 0, 47, 109, 101, 100, 105, 97, 47, 102, 108, 105, 110, 116, 95, 112, 105, 99, 99, 111, 108, 111, 95, 101, 120, 99, 101, 114, 112, 116, 46, 112, 100, 102, 0, 0, 0, 0, 0, 0, 0, 16, 47, 119, 105, 100, 116, 104, 0, 0, 44, 105, 0, 0, 0, 0, 1, -112, 0, 0, 0, 16, 47, 104, 101, 105, 103, 104, 116, 0, 44, 105, 0, 0, 0, 0, 3, 32, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 112, 97, 103, 101, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2 ],
									"saved_bundle_length" : 252,
									"text" : "/* : {\n\t/key : \"pdf\",\n\t/val : {\n\t\t/id : \"newpdf\",\n\t\t/href : \"/media/flint_piccolo_excerpt.pdf\",\n\t\t/width : 400,\n\t\t/height : 800,\n\t\t/x : 100,\n\t\t/page : 2\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 74.0, 441.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 1,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 1 ],
									"order" : 0,
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
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 83.0, 253.091536399942271, 35.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p pdf"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 453.0, 79.0, 1180.0, 937.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-3",
									"linecount" : 43,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 746.0, 63.912622690200806, 222.0, 581.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 64, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 3, 52, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 3, 12, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 2, -4, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 103, 114, 111, 117, 112, 105, 101, 0, 0, 0, 2, -64, 47, 99, 104, 105, 108, 100, 0, 0, 44, 46, 46, 46, 0, 0, 0, 0, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 114, 101, 99, 116, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 114, 101, 99, 116, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 16, 47, 119, 105, 100, 116, 104, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 104, 101, 105, 103, 104, 116, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 114, 101, 100, 0, 0, 0, 0, -108, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 99, 108, 101, 102, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 116, 101, 120, 116, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 101, 120, 116, 0, 0, 0, 44, 115, 0, 0, 38, 35, 120, 69, 48, 53, 48, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 98, 114, 97, 118, 117, 114, 97, 95, 116, 101, 120, 116, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 40, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 50, 0, 0, 1, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 103, 103, 0, 0, 0, 0, 1, 64, 47, 99, 104, 105, 108, 100, 0, 0, 44, 46, 46, 0, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 114, 101, 99, 116, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 114, 101, 99, 50, 116, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 119, 105, 100, 116, 104, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 104, 101, 105, 103, 104, 116, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 114, 101, 100, 0, 0, 0, 0, -108, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 99, 108, 101, 50, 102, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 116, 101, 120, 116, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 101, 120, 116, 0, 0, 0, 44, 115, 0, 0, 38, 35, 120, 69, 48, 53, 48, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 98, 114, 97, 118, 117, 114, 97, 95, 116, 101, 120, 116, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 40, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 2, 88 ],
									"saved_bundle_length" : 852,
									"text" : "/* : {\n\t/key : \"svg\",\n\t/val : {\n\t\t/new : \"g\",\n\t\t/id : \"groupie\",\n\t\t/child : [{\n\t\t\t/new : \"rect\",\n\t\t\t/id : \"rect\",\n\t\t\t/x : 5,\n\t\t\t/y : 5,\n\t\t\t/width : 100,\n\t\t\t/height : 100,\n\t\t\t/fill : \"red\"\n\t\t}, {\n\t\t\t/id : \"clef\",\n\t\t\t/new : \"text\",\n\t\t\t/text : \"&#xE050\",\n\t\t\t/class : \"bravura_text\",\n\t\t\t/x : 40,\n\t\t\t/y : 50\n\t\t}, {\n\t\t\t/new : \"g\",\n\t\t\t/id : \"gg\",\n\t\t\t/child : [{\n\t\t\t\t/new : \"rect\",\n\t\t\t\t/id : \"rec2t\",\n\t\t\t\t/x : 5,\n\t\t\t\t/y : 100,\n\t\t\t\t/width : 100,\n\t\t\t\t/height : 100,\n\t\t\t\t/fill : \"red\"\n\t\t\t}, {\n\t\t\t\t/id : \"cle2f\",\n\t\t\t\t/new : \"text\",\n\t\t\t\t/text : \"&#xE050\",\n\t\t\t\t/class : \"bravura_text\",\n\t\t\t\t/x : 40,\n\t\t\t\t/y : 600\n\t\t\t}]\n\t\t}]\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-4",
									"linecount" : 4,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 172.980582058429718, 821.912622690200806, 136.0, 65.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0, 0, 0, 0, 16, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 0, 0, 42, 0, 0, 0 ],
									"saved_bundle_length" : 92,
									"text" : "/* : {\n\t/key : \"clear\",\n\t/val : \"*\"\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-1",
									"linecount" : 5,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 168.980582058429718, 742.291262269020081, 215.0, 65.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 84, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 72, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0, 0, 0, 0, 28, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 115, 0, 111, 118, 101, 114, 108, 97, 121, 0, 98, 97, 99, 107, 0, 0, 0, 0 ],
									"saved_bundle_length" : 104,
									"text" : "/* : {\n\t/key : \"clear\",\n\t/val : [\"overlay\", \"back\"]\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 317.0, 830.912622690200806, 159.0, 47.0 ],
									"text" : "note: if you clear everything it also clears dynamically created group layers"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 589.480582058429718, 510.912622690200806, 156.0, 47.0 ],
									"text" : "after an object is created in a group it can be edited as with other svg objects"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-24",
									"linecount" : 10,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 434.0, 490.912622690200806, 143.0, 146.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -84, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, 120, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, 48, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 99, 0, 0, 0, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 52, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 99, 108, 101, 102, 0, 0, 0, 0, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 70 ],
									"saved_bundle_length" : 192,
									"text" : "/* : {\n\t/key : \"svg\",\n\t/val : [{\n\t\t/id : \"c\",\n\t\t/r : 10\n\t}, {\n\t\t/id : \"clef\",\n\t\t/y : 70\n\t}]\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 282.0, 19.0, 247.0, 20.0 ],
									"text" : "2) add elements to a layer via the /parent attr"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-22",
									"linecount" : 28,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 274.0, 54.912622690200806, 179.0, 391.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 28, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 2, 16, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 1, -24, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 46, 0, 0, 0, 0, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 98, 97, 99, 107, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 114, 101, 99, 116, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 114, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 119, 105, 100, 116, 104, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 104, 101, 105, 103, 104, 116, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 109, 97, 105, 110, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 99, 0, 0, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, -106, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, -106, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 25, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 112, 105, 110, 107, 0, 0, 0, 0, 0, 0, 0, -100, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 111, 118, 101, 114, 108, 97, 121, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 100, 111, 116, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, -106, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, -106, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 24, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 108, 105, 103, 104, 116, 103, 114, 97, 121, 0, 0, 0 ],
									"saved_bundle_length" : 560,
									"text" : "/* : {\n\t/key : \"svg\",\n\t/val : [{\n\t\t/parent : \"back\",\n\t\t/new : \"rect\",\n\t\t/id : \"r\",\n\t\t/x : 100,\n\t\t/y : 100,\n\t\t/width : 100,\n\t\t/height : 100\n\t}, {\n\t\t/parent : \"main\",\n\t\t/new : \"circle\",\n\t\t/id : \"c\",\n\t\t/cx : 150,\n\t\t/cy : 150,\n\t\t/r : 25,\n\t\t/fill : \"pink\"\n\t}, {\n\t\t/parent : \"overlay\",\n\t\t/new : \"circle\",\n\t\t/id : \"dot\",\n\t\t/cx : 150,\n\t\t/cy : 150,\n\t\t/r : 5,\n\t\t/fill : \"lightgray\"\n\t}]\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 27.5, 19.0, 150.0, 20.0 ],
									"text" : "1) create some layers"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-17",
									"linecount" : 16,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 31.5, 48.912622690200806, 222.0, 228.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 76, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 1, 24, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 46, 0, 0, 0, 0, 0, 0, 0, 84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 109, 97, 105, 110, 45, 115, 118, 103, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 98, 97, 99, 107, 0, 0, 0, 0, 0, 0, 0, 84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 109, 97, 105, 110, 45, 115, 118, 103, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 109, 97, 105, 110, 0, 0, 0, 0, 0, 0, 0, 84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 109, 97, 105, 110, 45, 115, 118, 103, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 111, 118, 101, 114, 108, 97, 121, 0 ],
									"saved_bundle_length" : 352,
									"text" : "/* : {\n\t/key : \"svg\",\n\t/val : [{\n\t\t/parent : \"main-svg\",\n\t\t/new : \"g\",\n\t\t/id : \"back\"\n\t}, {\n\t\t/parent : \"main-svg\",\n\t\t/new : \"g\",\n\t\t/id : \"main\"\n\t}, {\n\t\t/parent : \"main-svg\",\n\t\t/new : \"g\",\n\t\t/id : \"overlay\"\n\t}]\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-2",
									"linecount" : 5,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 597.0, 581.5, 121.0, 65.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 68, 47, 42, 47, 115, 118, 103, 0, 0, 44, 46, 0, 0, 0, 0, 0, 52, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 99, 108, 101, 102, 0, 0, 0, 0, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 70 ],
									"saved_bundle_length" : 88,
									"text" : "/*/svg : {\n\t/id : \"clef\",\n\t/y : 70\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-5",
									"linecount" : 4,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 168.980582058429718, 668.912622690200806, 136.0, 65.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0, 0, 0, 0, 20, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 0, 0, 109, 97, 105, 110, 0, 0, 0, 0 ],
									"saved_bundle_length" : 96,
									"text" : "/* : {\n\t/key : \"clear\",\n\t/val : \"main\"\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-6",
									"linecount" : 29,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 473.0, 54.912622690200806, 215.0, 405.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 72, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 2, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 2, 20, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 46, 0, 0, 0, 0, 0, 0, 0, -84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 109, 97, 105, 110, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 99, 108, 101, 102, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 116, 101, 120, 116, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 101, 120, 116, 0, 0, 0, 44, 115, 0, 0, 38, 35, 120, 69, 48, 53, 48, 0, 0, 0, 0, 28, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 98, 114, 97, 118, 117, 114, 97, 95, 116, 101, 120, 116, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 40, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 50, 0, 0, 0, -80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 98, 97, 99, 107, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 114, 101, 99, 116, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 114, 101, 99, 116, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 16, 47, 119, 105, 100, 116, 104, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 104, 101, 105, 103, 104, 116, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 114, 101, 100, 0, 0, 0, 0, -100, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 111, 118, 101, 114, 108, 97, 121, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 50, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 50, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 98, 108, 117, 101, 0, 0, 0, 0 ],
									"saved_bundle_length" : 604,
									"text" : "/* : {\n\t/key : \"svg\",\n\t/val : [{\n\t\t/parent : \"main\",\n\t\t/id : \"clef\",\n\t\t/new : \"text\",\n\t\t/text : \"&#xE050\",\n\t\t/class : \"bravura_text\",\n\t\t/x : 40,\n\t\t/y : 50\n\t}, {\n\t\t/parent : \"back\",\n\t\t/new : \"rect\",\n\t\t/id : \"rect\",\n\t\t/x : 5,\n\t\t/y : 5,\n\t\t/width : 100,\n\t\t/height : 100,\n\t\t/fill : \"red\"\n\t}, {\n\t\t/parent : \"overlay\",\n\t\t/new : \"circle\",\n\t\t/id : \"circle\",\n\t\t/cx : 50,\n\t\t/cy : 50,\n\t\t/r : 10,\n\t\t/fill : \"blue\"\n\t}]\n}"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-41",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 31.5, 599.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ],
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
					"patching_rect" : [ 83.0, 136.618307279988471, 51.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p layers"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 426.0, 79.0, 861.0, 937.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-60",
									"linecount" : 4,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 165.0, 550.0, 136.0, 65.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0, 0, 0, 0, 16, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 0, 0, 42, 0, 0, 0 ],
									"saved_bundle_length" : 92,
									"text" : "/* : {\n\t/key : \"clear\",\n\t/val : \"*\"\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-21",
									"linecount" : 9,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 56.0, 766.0, 417.0, 119.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -72, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -124, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 116, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 112, 97, 116, 104, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 56, 47, 100, 0, 0, 44, 115, 0, 0, 77, 49, 48, 32, 56, 48, 32, 67, 32, 52, 48, 32, 49, 48, 44, 32, 54, 53, 32, 49, 48, 44, 32, 57, 53, 32, 56, 48, 32, 83, 32, 49, 53, 48, 32, 49, 53, 48, 44, 32, 49, 56, 48, 32, 56, 48, 0, 0 ],
									"saved_bundle_length" : 204,
									"text" : "/* : {\n\t/key : \"svg\",\n\t/val : {\n\t\t/new : \"path\",\n\t\t/id : \"foo\",\n\t\t/d : \"M10 80 C 40 10, 65 10, 95 80 S 150 150, 180 80\"\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-14",
									"linecount" : 4,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 91.0, 437.0, 143.0, 65.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 114, 101, 109, 111, 118, 101, 0, 0, 0, 0, 0, 16, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 0, 0, 102, 111, 111, 0 ],
									"saved_bundle_length" : 92,
									"text" : "/* : {\n\t/key : \"remove\",\n\t/val : \"foo\"\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-12",
									"linecount" : 18,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 687.0, 664.5, 208.0, 255.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 80, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, 68, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 1, 28, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 20, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 111, 112, 101, 110, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 50, 0, 0, 0, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 105, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, -124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 20, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 99, 108, 111, 115, 101, 100, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 98, 97, 114, 50, 0, 0, 0, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 120, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10 ],
									"saved_bundle_length" : 356,
									"text" : "/* : {\n\t/key : \"svg\",\n\t/val : [{\n\t\t/new : \"circle\",\n\t\t/class : \"open\",\n\t\t/id : \"foo2\",\n\t\t/cx : 105,\n\t\t/cy : 100,\n\t\t/r : 10\n\t}, {\n\t\t/new : \"circle\",\n\t\t/class : \"closed\",\n\t\t/id : \"bar2\",\n\t\t/cx : 120,\n\t\t/cy : 100,\n\t\t/r : 10\n\t}]\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-8",
									"linecount" : 18,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 912.0, 664.5, 208.0, 255.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 72, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 1, 20, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 20, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 111, 112, 101, 110, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 15, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 20, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 99, 108, 111, 115, 101, 100, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 98, 97, 114, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 45, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10 ],
									"saved_bundle_length" : 348,
									"text" : "/* : {\n\t/key : \"svg\",\n\t/val : [{\n\t\t/new : \"circle\",\n\t\t/class : \"open\",\n\t\t/id : \"foo\",\n\t\t/cx : 15,\n\t\t/cy : 100,\n\t\t/r : 10\n\t}, {\n\t\t/new : \"circle\",\n\t\t/class : \"closed\",\n\t\t/id : \"bar\",\n\t\t/cx : 45,\n\t\t/cy : 100,\n\t\t/r : 10\n\t}]\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "FullPacket" ],
									"patching_rect" : [ 1029.0, 575.0, 69.0, 22.0 ],
									"text" : "o.route /out"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-20",
									"linecount" : 11,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 25.0, 59.0, 136.0, 160.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -68, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -120, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 12, 47, 120, 49, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 12, 47, 120, 50, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 12, 47, 121, 49, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 12, 47, 121, 50, 0, 44, 105, 0, 0, 0, 0, 0, 10 ],
									"saved_bundle_length" : 208,
									"text" : "/* : {\n\t/key : \"svg\",\n\t/val : {\n\t\t/new : \"line\",\n\t\t/id : \"foo\",\n\t\t/x1 : 10,\n\t\t/x2 : 20,\n\t\t/y1 : 10,\n\t\t/y2 : 10\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-19",
									"linecount" : 18,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 183.0, 59.0, 136.0, 255.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 56, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, 44, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 1, 4, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 12, 47, 120, 49, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 12, 47, 120, 50, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 12, 47, 121, 49, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 12, 47, 121, 50, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 98, 97, 114, 0, 0, 0, 0, 12, 47, 120, 49, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 12, 47, 120, 50, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 12, 47, 121, 49, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 12, 47, 121, 50, 0, 44, 105, 0, 0, 0, 0, 0, 20 ],
									"saved_bundle_length" : 332,
									"text" : "/* : {\n\t/key : \"svg\",\n\t/val : [{\n\t\t/new : \"line\",\n\t\t/id : \"foo\",\n\t\t/x1 : 10,\n\t\t/x2 : 20,\n\t\t/y1 : 10,\n\t\t/y2 : 10\n\t}, {\n\t\t/new : \"line\",\n\t\t/id : \"bar\",\n\t\t/x1 : 10,\n\t\t/x2 : 20,\n\t\t/y1 : 20,\n\t\t/y2 : 20\n\t}]\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 835.0, 625.0, 48.0, 22.0 ],
									"text" : "o.union"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 941.0, 905.0, 150.0, 20.0 ],
									"text" : "l"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-16",
									"linecount" : 4,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 457.0, 716.5, 208.0, 65.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 115, 115, 0, 0, 0, 0, 20, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0 ],
									"saved_bundle_length" : 92,
									"text" : "/* : {\n\t/key : \"css\",\n\t/val : \"clear\"\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-41",
									"linecount" : 11,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 941.0, 14.0, 309.0, 160.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -48, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -100, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -116, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 105, 109, 97, 103, 101, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 105, 105, 105, 0, 0, 0, 0, 28, 47, 104, 114, 101, 102, 0, 0, 0, 44, 115, 0, 0, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 112, 110, 103, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 104, 101, 105, 103, 104, 116, 0, 44, 105, 0, 0, 0, 0, 0, -56 ],
									"saved_bundle_length" : 228,
									"text" : "/* : {\n\t/key : \"svg\",\n\t/val : {\n\t\t/new : \"image\",\n\t\t/id : \"iii\",\n\t\t/href : \"media/test.png\",\n\t\t/x : 100,\n\t\t/y : 0,\n\t\t/height : 200\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-15",
									"linecount" : 17,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 804.0, 302.0, 208.0, 242.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 100, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, 88, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 115, 115, 0, 0, 0, 1, 48, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -100, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 46, 111, 112, 101, 110, 0, 0, 0, 0, 0, 0, 108, 47, 112, 114, 111, 112, 115, 0, 0, 44, 46, 0, 0, 0, 0, 0, 92, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 116, 114, 111, 107, 101, 0, 44, 115, 0, 0, 98, 108, 97, 99, 107, 0, 0, 0, 0, 0, 0, 24, 47, 115, 116, 114, 111, 107, 101, 45, 119, 105, 100, 116, 104, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 110, 111, 110, 101, 0, 0, 0, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 46, 99, 108, 111, 115, 101, 100, 0, 0, 0, 0, 80, 47, 112, 114, 111, 112, 115, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 116, 114, 111, 107, 101, 0, 44, 115, 0, 0, 110, 111, 110, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 98, 108, 97, 99, 107, 0, 0, 0 ],
									"saved_bundle_length" : 376,
									"text" : "/* : {\n\t/key : \"css\",\n\t/val : [{\n\t\t/selector : \".open\",\n\t\t/props : {\n\t\t\t/stroke : \"black\",\n\t\t\t/stroke-width : 2,\n\t\t\t/fill : \"none\"\n\t\t}\n\t}, {\n\t\t/selector : \".closed\",\n\t\t/props : {\n\t\t\t/stroke : \"none\",\n\t\t\t/fill : \"black\"\n\t\t}\n\t}]\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-13",
									"linecount" : 22,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 1029.0, 231.0, 385.0, 331.0 ],
									"text" : "/y = 100,\n\n/new1./new = \"circle\",\n/new1./class = \"open\",\n/new1./id = \"foo\",\n/new1./cx = 15,\n/new1./cy = /y,\n/new1./r = 10,\n\n/new2./new = \"circle\",\n/new2./class = \"closed\",\n/new2./id = \"bar\",\n/new2./cx = 45,\n/new2./cy = /y,\n/new2./r = 10,\n\n/svg./key = \"svg\",\n/svg./val = [/new1, /new2],\n\nassign(\"/out/*\", /svg ),\n\ndelete(/new1), delete(/new2), delete(/svg)\n"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 858.0, 565.0, 37.0, 22.0 ],
									"text" : "o.dict"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "dictionary", "", "", "" ],
									"patching_rect" : [ 855.0, 600.0, 50.5, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"parameter_enable" : 0,
										"parameter_mappable" : 0
									}
,
									"text" : "dict"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 974.0, 176.0, 341.0, 20.0 ],
									"text" : "note any booleans must be written as \"true\" \"false\" with quotes"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-3",
									"linecount" : 4,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 56.0, 346.0, 136.0, 65.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0, 0, 0, 0, 16, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0 ],
									"saved_bundle_length" : 92,
									"text" : "/* : {\n\t/key : \"clear\",\n\t/val : \"svg\"\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-7",
									"linecount" : 24,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 651.0, 323.0, 136.0, 337.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -84, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, -96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 1, 120, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 46, 0, 0, 0, 0, 0, 0, 0, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 12, 47, 120, 49, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 12, 47, 120, 50, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 12, 47, 121, 49, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 12, 47, 121, 50, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 98, 97, 114, 0, 0, 0, 0, 12, 47, 120, 49, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 12, 47, 120, 50, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 12, 47, 121, 49, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 12, 47, 121, 50, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 108, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 116, 101, 120, 116, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 116, 101, 120, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, -56, 0, 0, 0, 16, 47, 99, 104, 105, 108, 100, 0, 0, 44, 115, 0, 0, 121, 111, 33, 0 ],
									"saved_bundle_length" : 448,
									"text" : "/* : {\n\t/key : \"svg\",\n\t/val : [{\n\t\t/new : \"line\",\n\t\t/id : \"foo\",\n\t\t/x1 : 10,\n\t\t/x2 : 20,\n\t\t/y1 : 10,\n\t\t/y2 : 10\n\t}, {\n\t\t/new : \"line\",\n\t\t/id : \"bar\",\n\t\t/x1 : 10,\n\t\t/x2 : 20,\n\t\t/y1 : 20,\n\t\t/y2 : 20\n\t}, {\n\t\t/new : \"text\",\n\t\t/id : \"tex\",\n\t\t/x : 100,\n\t\t/y : 200,\n\t\t/child : \"yo!\"\n\t}]\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-6",
									"linecount" : 16,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 453.0, 443.0, 172.0, 228.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 76, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 115, 115, 0, 0, 0, 1, 24, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 80, 47, 112, 114, 111, 112, 115, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 115, 116, 114, 111, 107, 101, 0, 44, 115, 0, 0, 114, 101, 100, 0, 0, 0, 0, 24, 47, 115, 116, 114, 111, 107, 101, 45, 119, 105, 100, 116, 104, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, -124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 35, 98, 97, 114, 0, 0, 0, 0, 0, 0, 0, 84, 47, 112, 114, 111, 112, 115, 0, 0, 44, 46, 0, 0, 0, 0, 0, 68, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 116, 114, 111, 107, 101, 0, 44, 115, 0, 0, 98, 108, 97, 99, 107, 0, 0, 0, 0, 0, 0, 24, 47, 115, 116, 114, 111, 107, 101, 45, 119, 105, 100, 116, 104, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10 ],
									"saved_bundle_length" : 352,
									"text" : "/* : {\n\t/key : \"css\",\n\t/val : [{\n\t\t/selector : \"line\",\n\t\t/props : {\n\t\t\t/stroke : \"red\",\n\t\t\t/stroke-width : 5\n\t\t}\n\t}, {\n\t\t/selector : \"#bar\",\n\t\t/props : {\n\t\t\t/stroke : \"black\",\n\t\t\t/stroke-width : 10\n\t\t}\n\t}]\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-5",
									"linecount" : 17,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 712.0, 41.0, 165.0, 242.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 68, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, 56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 1, 16, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 12, 47, 120, 49, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 84, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 68, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 116, 114, 111, 107, 101, 0, 44, 115, 0, 0, 98, 108, 117, 101, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 116, 114, 111, 107, 101, 45, 119, 105, 100, 116, 104, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 116, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 98, 97, 114, 0, 0, 0, 0, 80, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 115, 116, 114, 111, 107, 101, 0, 44, 115, 0, 0, 114, 101, 100, 0, 0, 0, 0, 24, 47, 115, 116, 114, 111, 107, 101, 45, 119, 105, 100, 116, 104, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 8 ],
									"saved_bundle_length" : 344,
									"text" : "/* : {\n\t/key : \"svg\",\n\t/val : [{\n\t\t/id : \"foo\",\n\t\t/x1 : 100,\n\t\t/style : {\n\t\t\t/stroke : \"blue\",\n\t\t\t/stroke-width : 1\n\t\t}\n\t}, {\n\t\t/id : \"bar\",\n\t\t/style : {\n\t\t\t/stroke : \"red\",\n\t\t\t/stroke-width : 8\n\t\t}\n\t}]\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-4",
									"linecount" : 17,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 530.0, 41.0, 172.0, 242.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 68, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, 56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 1, 16, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 12, 47, 120, 49, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 80, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 115, 116, 114, 111, 107, 101, 0, 44, 115, 0, 0, 114, 101, 100, 0, 0, 0, 0, 24, 47, 115, 116, 114, 111, 107, 101, 45, 119, 105, 100, 116, 104, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 98, 97, 114, 0, 0, 0, 0, 84, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 68, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 116, 114, 111, 107, 101, 0, 44, 115, 0, 0, 98, 108, 97, 99, 107, 0, 0, 0, 0, 0, 0, 24, 47, 115, 116, 114, 111, 107, 101, 45, 119, 105, 100, 116, 104, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1 ],
									"saved_bundle_length" : 344,
									"text" : "/* : {\n\t/key : \"svg\",\n\t/val : [{\n\t\t/id : \"foo\",\n\t\t/x1 : 10,\n\t\t/style : {\n\t\t\t/stroke : \"red\",\n\t\t\t/stroke-width : 5\n\t\t}\n\t}, {\n\t\t/id : \"bar\",\n\t\t/style : {\n\t\t\t/stroke : \"black\",\n\t\t\t/stroke-width : 1\n\t\t}\n\t}]\n}"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 68.0, 677.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-1",
									"linecount" : 25,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 329.0, 59.0, 172.0, 350.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -52, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 1, -64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 1, -104, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -76, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 12, 47, 120, 49, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 12, 47, 120, 50, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 12, 47, 121, 49, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 12, 47, 121, 50, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 56, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 116, 114, 111, 107, 101, 0, 44, 115, 0, 0, 98, 108, 97, 99, 107, 0, 0, 0, 0, 0, 0, -48, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 98, 97, 114, 0, 0, 0, 0, 12, 47, 120, 49, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 12, 47, 120, 50, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 12, 47, 121, 49, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 12, 47, 121, 50, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 84, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 68, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 116, 114, 111, 107, 101, 0, 44, 115, 0, 0, 98, 108, 97, 99, 107, 0, 0, 0, 0, 0, 0, 24, 47, 115, 116, 114, 111, 107, 101, 45, 119, 105, 100, 116, 104, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5 ],
									"saved_bundle_length" : 480,
									"text" : "/* : {\n\t/key : \"svg\",\n\t/val : [{\n\t\t/new : \"line\",\n\t\t/id : \"foo\",\n\t\t/x1 : 10,\n\t\t/x2 : 20,\n\t\t/y1 : 10,\n\t\t/y2 : 10,\n\t\t/style : {\n\t\t\t/stroke : \"black\"\n\t\t}\n\t}, {\n\t\t/new : \"line\",\n\t\t/id : \"bar\",\n\t\t/x1 : 10,\n\t\t/x2 : 20,\n\t\t/y1 : 20,\n\t\t/y2 : 20,\n\t\t/style : {\n\t\t\t/stroke : \"black\",\n\t\t\t/stroke-width : 5\n\t\t}\n\t}]\n}"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 0,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 1,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 1,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 1 ],
									"order" : 0,
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ],
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
					"patching_rect" : [ 83.0, 107.5, 37.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p svg"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 732.0, 79.0, 914.0, 770.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-27",
									"linecount" : 8,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 6.666666865348816, 844.000019311904907, 150.0, 106.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -120, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 80, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 109, 100, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 97, 114, 116, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0 ],
									"saved_bundle_length" : 156,
									"text" : "/* : {\n\t/key : \"tween\",\n\t/val : {\n\t\t/cmd : \"start\",\n\t\t/id : \"fooTween\"\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-8",
									"linecount" : 12,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 164.666666865348816, 648.000019311904907, 301.0, 174.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -24, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -36, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, -80, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 84, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 97, 114, 103, 101, 116, 0, 44, 115, 0, 0, 35, 115, 99, 111, 114, 101, 0, 0, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 72, 47, 118, 97, 114, 115, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, -1, -1, -4, 24, 0, 0, 0, 20, 47, 101, 97, 115, 101, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 97, 114, 0, 0 ],
									"saved_bundle_length" : 252,
									"text" : "/* : {\n\t/key : \"tween\",\n\t/val : {\n\t\t/id : \"fooTween\",\n\t\t/target : \"#score\",\n\t\t/dur : 10,\n\t\t/vars : {\n\t\t\t/x : -1000,\n\t\t\t/ease : \"linear\"\n\t\t}\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 196.0, 563.0, 191.0, 22.0 ],
									"text" : "FullPacket 180 140732729007568"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-2",
									"linecount" : 94,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 421.754718780517578, 488.75469970703125, 395.0, 1288.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, -116, 47, 105, 0, 0, 44, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 0, 0, 0, 47, 49, 0, 0, 47, 50, 0, 0, 47, 51, 0, 0, 47, 52, 0, 0, 47, 53, 0, 0, 47, 54, 0, 0, 47, 55, 0, 0, 47, 56, 0, 0, 47, 57, 0, 0, 47, 49, 48, 0, 47, 49, 49, 0, 47, 49, 50, 0, 47, 49, 51, 0, 47, 49, 52, 0, 47, 49, 53, 0, 47, 49, 54, 0, 47, 49, 55, 0, 47, 49, 56, 0, 47, 49, 57, 0, 47, 50, 48, 0, 47, 50, 49, 0, 47, 50, 50, 0, 47, 50, 51, 0, 47, 50, 52, 0, 47, 50, 53, 0, 47, 50, 54, 0, 47, 50, 55, 0, 47, 50, 56, 0, 47, 50, 57, 0, 47, 51, 48, 0, 47, 51, 49, 0, 47, 51, 50, 0, 47, 51, 51, 0, 47, 51, 52, 0, 47, 51, 53, 0, 47, 51, 54, 0, 47, 51, 55, 0, 47, 51, 56, 0, 47, 51, 57, 0, 47, 52, 48, 0, 47, 52, 49, 0, 47, 52, 50, 0, 47, 52, 51, 0, 47, 52, 52, 0, 47, 52, 53, 0, 47, 52, 54, 0, 47, 52, 55, 0, 47, 52, 56, 0, 47, 52, 57, 0, 47, 53, 48, 0, 47, 53, 49, 0, 47, 53, 50, 0, 47, 53, 51, 0, 47, 53, 52, 0, 47, 53, 53, 0, 47, 53, 54, 0, 47, 53, 55, 0, 47, 53, 56, 0, 47, 53, 57, 0, 47, 54, 48, 0, 47, 54, 49, 0, 47, 54, 50, 0, 47, 54, 51, 0, 47, 54, 52, 0, 47, 54, 53, 0, 47, 54, 54, 0, 47, 54, 55, 0, 47, 54, 56, 0, 47, 54, 57, 0, 47, 55, 48, 0, 47, 55, 49, 0, 47, 55, 50, 0, 47, 55, 51, 0, 47, 55, 52, 0, 47, 55, 53, 0, 47, 55, 54, 0, 47, 55, 55, 0, 47, 55, 56, 0, 47, 55, 57, 0, 47, 56, 48, 0, 47, 56, 49, 0, 47, 56, 50, 0, 47, 56, 51, 0, 47, 56, 52, 0, 47, 56, 53, 0, 47, 56, 54, 0, 47, 56, 55, 0, 47, 56, 56, 0, 47, 56, 57, 0, 47, 57, 48, 0, 47, 57, 49, 0, 47, 57, 50, 0, 47, 57, 51, 0, 47, 57, 52, 0, 47, 57, 53, 0, 47, 57, 54, 0, 47, 57, 55, 0, 47, 57, 56, 0, 47, 57, 57, 0, 47, 49, 48, 48, 0, 0, 0, 0, 47, 49, 48, 49, 0, 0, 0, 0, 47, 49, 48, 50, 0, 0, 0, 0, 47, 49, 48, 51, 0, 0, 0, 0, 47, 49, 48, 52, 0, 0, 0, 0, 47, 49, 48, 53, 0, 0, 0, 0, 47, 49, 48, 54, 0, 0, 0, 0, 47, 49, 48, 55, 0, 0, 0, 0, 47, 49, 48, 56, 0, 0, 0, 0, 47, 49, 48, 57, 0, 0, 0, 0, 47, 49, 49, 48, 0, 0, 0, 0, 47, 49, 49, 49, 0, 0, 0, 0, 47, 49, 49, 50, 0, 0, 0, 0, 47, 49, 49, 51, 0, 0, 0, 0, 47, 49, 49, 52, 0, 0, 0, 0, 47, 49, 49, 53, 0, 0, 0, 0, 47, 49, 49, 54, 0, 0, 0, 0, 47, 49, 49, 55, 0, 0, 0, 0, 47, 49, 49, 56, 0, 0, 0, 0, 47, 49, 49, 57, 0, 0, 0, 0, 47, 49, 50, 48, 0, 0, 0, 0, 47, 49, 50, 49, 0, 0, 0, 0, 47, 49, 50, 50, 0, 0, 0, 0, 47, 49, 50, 51, 0, 0, 0, 0, 47, 49, 50, 52, 0, 0, 0, 0, 47, 49, 50, 53, 0, 0, 0, 0, 47, 49, 50, 54, 0, 0, 0, 0, 47, 49, 50, 55, 0, 0, 0, 0, 47, 49, 50, 56, 0, 0, 0, 0, 47, 49, 50, 57, 0, 0, 0, 0, 47, 49, 51, 48, 0, 0, 0, 0, 47, 49, 51, 49, 0, 0, 0, 0, 47, 49, 51, 50, 0, 0, 0, 0, 47, 49, 51, 51, 0, 0, 0, 0, 47, 49, 51, 52, 0, 0, 0, 0, 47, 49, 51, 53, 0, 0, 0, 0, 47, 49, 51, 54, 0, 0, 0, 0, 47, 49, 51, 55, 0, 0, 0, 0, 47, 49, 51, 56, 0, 0, 0, 0, 47, 49, 51, 57, 0, 0, 0, 0, 47, 49, 52, 48, 0, 0, 0, 0, 47, 49, 52, 49, 0, 0, 0, 0, 47, 49, 52, 50, 0, 0, 0, 0, 47, 49, 52, 51, 0, 0, 0, 0, 47, 49, 52, 52, 0, 0, 0, 0, 0, 0, 12, -112, 47, 117, 114, 108, 0, 0, 0, 0, 44, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 115, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 50, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 51, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 52, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 53, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 54, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 55, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 56, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 57, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 48, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 49, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 50, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 51, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 52, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 53, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 54, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 55, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 56, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 57, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 50, 48, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 50, 49, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 50, 50, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 50, 51, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 50, 52, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 50, 53, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 50, 54, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 50, 55, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 50, 56, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 50, 57, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 51, 48, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 51, 49, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 51, 50, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 51, 51, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 51, 52, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 51, 53, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 51, 54, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 51, 55, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 51, 56, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 51, 57, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 52, 48, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 52, 49, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 52, 50, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 52, 51, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 52, 52, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 52, 53, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 52, 54, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 52, 55, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 52, 56, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 52, 57, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 53, 48, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 53, 49, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 53, 50, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 53, 51, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 53, 52, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 53, 53, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 53, 54, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 53, 55, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 53, 56, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 53, 57, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 54, 48, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 54, 49, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 54, 50, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 54, 51, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 54, 52, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 54, 53, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 54, 54, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 54, 55, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 54, 56, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 54, 57, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 55, 48, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 55, 49, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 55, 50, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 55, 51, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 55, 52, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 55, 53, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 55, 54, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 55, 55, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 55, 56, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 55, 57, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 56, 48, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 56, 49, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 56, 50, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 56, 51, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 56, 52, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 56, 53, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 56, 54, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 56, 55, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 56, 56, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 56, 57, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 57, 48, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 57, 49, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 57, 50, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 57, 51, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 57, 52, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 57, 53, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 57, 54, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 57, 55, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 57, 56, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 57, 57, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 48, 48, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 48, 49, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 48, 50, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 48, 51, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 48, 52, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 48, 53, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 48, 54, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 48, 55, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 48, 56, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 48, 57, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 49, 48, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 49, 49, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 49, 50, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 49, 51, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 49, 52, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 49, 53, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 49, 54, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 49, 55, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 49, 56, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 49, 57, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 50, 48, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 50, 49, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 50, 50, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 50, 51, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 50, 52, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 50, 53, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 50, 54, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 50, 55, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 50, 56, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 50, 57, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 51, 48, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 51, 49, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 51, 50, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 51, 51, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 51, 52, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 51, 53, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 51, 54, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 51, 55, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 51, 56, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 51, 57, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 52, 48, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 52, 49, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 52, 50, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 52, 51, 0, 0, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 47, 49, 52, 52, 0, 0, 0, 0 ],
									"saved_bundle_length" : 4148,
									"text" : "/i : [\"/1\", \"/2\", \"/3\", \"/4\", \"/5\", \"/6\", \"/7\", \"/8\", \"/9\", \"/10\", \"/11\", \"/12\", \"/13\", \"/14\", \"/15\", \"/16\", \"/17\", \"/18\", \"/19\", \"/20\", \"/21\", \"/22\", \"/23\", \"/24\", \"/25\", \"/26\", \"/27\", \"/28\", \"/29\", \"/30\", \"/31\", \"/32\", \"/33\", \"/34\", \"/35\", \"/36\", \"/37\", \"/38\", \"/39\", \"/40\", \"/41\", \"/42\", \"/43\", \"/44\", \"/45\", \"/46\", \"/47\", \"/48\", \"/49\", \"/50\", \"/51\", \"/52\", \"/53\", \"/54\", \"/55\", \"/56\", \"/57\", \"/58\", \"/59\", \"/60\", \"/61\", \"/62\", \"/63\", \"/64\", \"/65\", \"/66\", \"/67\", \"/68\", \"/69\", \"/70\", \"/71\", \"/72\", \"/73\", \"/74\", \"/75\", \"/76\", \"/77\", \"/78\", \"/79\", \"/80\", \"/81\", \"/82\", \"/83\", \"/84\", \"/85\", \"/86\", \"/87\", \"/88\", \"/89\", \"/90\", \"/91\", \"/92\", \"/93\", \"/94\", \"/95\", \"/96\", \"/97\", \"/98\", \"/99\", \"/100\", \"/101\", \"/102\", \"/103\", \"/104\", \"/105\", \"/106\", \"/107\", \"/108\", \"/109\", \"/110\", \"/111\", \"/112\", \"/113\", \"/114\", \"/115\", \"/116\", \"/117\", \"/118\", \"/119\", \"/120\", \"/121\", \"/122\", \"/123\", \"/124\", \"/125\", \"/126\", \"/127\", \"/128\", \"/129\", \"/130\", \"/131\", \"/132\", \"/133\", \"/134\", \"/135\", \"/136\", \"/137\", \"/138\", \"/139\", \"/140\", \"/141\", \"/142\", \"/143\", \"/144\"],\n/url : [\"/media/test.svg#/1\", \"/media/test.svg#/2\", \"/media/test.svg#/3\", \"/media/test.svg#/4\", \"/media/test.svg#/5\", \"/media/test.svg#/6\", \"/media/test.svg#/7\", \"/media/test.svg#/8\", \"/media/test.svg#/9\", \"/media/test.svg#/10\", \"/media/test.svg#/11\", \"/media/test.svg#/12\", \"/media/test.svg#/13\", \"/media/test.svg#/14\", \"/media/test.svg#/15\", \"/media/test.svg#/16\", \"/media/test.svg#/17\", \"/media/test.svg#/18\", \"/media/test.svg#/19\", \"/media/test.svg#/20\", \"/media/test.svg#/21\", \"/media/test.svg#/22\", \"/media/test.svg#/23\", \"/media/test.svg#/24\", \"/media/test.svg#/25\", \"/media/test.svg#/26\", \"/media/test.svg#/27\", \"/media/test.svg#/28\", \"/media/test.svg#/29\", \"/media/test.svg#/30\", \"/media/test.svg#/31\", \"/media/test.svg#/32\", \"/media/test.svg#/33\", \"/media/test.svg#/34\", \"/media/test.svg#/35\", \"/media/test.svg#/36\", \"/media/test.svg#/37\", \"/media/test.svg#/38\", \"/media/test.svg#/39\", \"/media/test.svg#/40\", \"/media/test.svg#/41\", \"/media/test.svg#/42\", \"/media/test.svg#/43\", \"/media/test.svg#/44\", \"/media/test.svg#/45\", \"/media/test.svg#/46\", \"/media/test.svg#/47\", \"/media/test.svg#/48\", \"/media/test.svg#/49\", \"/media/test.svg#/50\", \"/media/test.svg#/51\", \"/media/test.svg#/52\", \"/media/test.svg#/53\", \"/media/test.svg#/54\", \"/media/test.svg#/55\", \"/media/test.svg#/56\", \"/media/test.svg#/57\", \"/media/test.svg#/58\", \"/media/test.svg#/59\", \"/media/test.svg#/60\", \"/media/test.svg#/61\", \"/media/test.svg#/62\", \"/media/test.svg#/63\", \"/media/test.svg#/64\", \"/media/test.svg#/65\", \"/media/test.svg#/66\", \"/media/test.svg#/67\", \"/media/test.svg#/68\", \"/media/test.svg#/69\", \"/media/test.svg#/70\", \"/media/test.svg#/71\", \"/media/test.svg#/72\", \"/media/test.svg#/73\", \"/media/test.svg#/74\", \"/media/test.svg#/75\", \"/media/test.svg#/76\", \"/media/test.svg#/77\", \"/media/test.svg#/78\", \"/media/test.svg#/79\", \"/media/test.svg#/80\", \"/media/test.svg#/81\", \"/media/test.svg#/82\", \"/media/test.svg#/83\", \"/media/test.svg#/84\", \"/media/test.svg#/85\", \"/media/test.svg#/86\", \"/media/test.svg#/87\", \"/media/test.svg#/88\", \"/media/test.svg#/89\", \"/media/test.svg#/90\", \"/media/test.svg#/91\", \"/media/test.svg#/92\", \"/media/test.svg#/93\", \"/media/test.svg#/94\", \"/media/test.svg#/95\", \"/media/test.svg#/96\", \"/media/test.svg#/97\", \"/media/test.svg#/98\", \"/media/test.svg#/99\", \"/media/test.svg#/100\", \"/media/test.svg#/101\", \"/media/test.svg#/102\", \"/media/test.svg#/103\", \"/media/test.svg#/104\", \"/media/test.svg#/105\", \"/media/test.svg#/106\", \"/media/test.svg#/107\", \"/media/test.svg#/108\", \"/media/test.svg#/109\", \"/media/test.svg#/110\", \"/media/test.svg#/111\", \"/media/test.svg#/112\", \"/media/test.svg#/113\", \"/media/test.svg#/114\", \"/media/test.svg#/115\", \"/media/test.svg#/116\", \"/media/test.svg#/117\", \"/media/test.svg#/118\", \"/media/test.svg#/119\", \"/media/test.svg#/120\", \"/media/test.svg#/121\", \"/media/test.svg#/122\", \"/media/test.svg#/123\", \"/media/test.svg#/124\", \"/media/test.svg#/125\", \"/media/test.svg#/126\", \"/media/test.svg#/127\", \"/media/test.svg#/128\", \"/media/test.svg#/129\", \"/media/test.svg#/130\", \"/media/test.svg#/131\", \"/media/test.svg#/132\", \"/media/test.svg#/133\", \"/media/test.svg#/134\", \"/media/test.svg#/135\", \"/media/test.svg#/136\", \"/media/test.svg#/137\", \"/media/test.svg#/138\", \"/media/test.svg#/139\", \"/media/test.svg#/140\", \"/media/test.svg#/141\", \"/media/test.svg#/142\", \"/media/test.svg#/143\", \"/media/test.svg#/144\"]"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-1",
									"linecount" : 3,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 555.754688262939453, 408.75469970703125, 212.0, 46.0 ],
									"text" : "/i = \"/\"+aseq(1,144),\n/url = \"/media/test.svg#\"+/i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 396.254718780517578, 654.24530029296875, 168.0, 47.0 ],
									"text" : "note that firefox doesn't correctly load CSS sytle infromation from linked file"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 520.754688262939453, 339.75469970703125, 258.0, 60.0 ],
									"text" : "or, you can use this approach, but it requires an internal callback function to get the binding box after loading the external object, and so has a slight delay."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 405.754718780517578, 160.335845947265625, 305.0, 74.0 ],
									"text" : "note that the original object's xy location is offset by the <use> xy. \n\nfor an object library, you might want to set all objects at the origin xy 0,0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 58.754718780517578, 113.166046142578125, 405.0, 20.0 ],
									"text" : "href can load a file as external source reference, with an addition of the #id"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-20",
									"linecount" : 9,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 58.754718780517578, 139.731964111328125, 229.0, 119.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -96, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -108, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, 108, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 92, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 115, 99, 111, 114, 101, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 117, 115, 101, 0, 0, 0, 0, 32, 47, 104, 114, 101, 102, 0, 0, 0, 44, 115, 0, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 49, 0, 0, 0 ],
									"saved_bundle_length" : 180,
									"text" : "/* : {\n\t/key : \"svg\",\n\t/val : {\n\t\t/id : \"score\",\n\t\t/new : \"use\",\n\t\t/href : \"/media/test.svg#1\"\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 123.754718780517578, 300.6943359375, 363.0, 20.0 ],
									"text" : "optional second arg to href is to offset the element to origin on load"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-12",
									"linecount" : 10,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 114.754718780517578, 322.6943359375, 395.0, 146.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -60, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -72, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -112, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 115, 99, 111, 114, 101, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 117, 115, 101, 0, 0, 0, 0, 36, 47, 104, 114, 101, 102, 0, 0, 0, 44, 115, 105, 0, 47, 109, 101, 100, 105, 97, 47, 116, 101, 115, 116, 46, 115, 118, 103, 35, 49, 0, 0, 0, 0, 0, 0, 1 ],
									"saved_bundle_length" : 216,
									"text" : "/* : {\n\t/key : \"svg\",\n\t/val : {\n\t\t/id : \"score\",\n\t\t/x : 100,\n\t\t/y : 100,\n\t\t/new : \"use\",\n\t\t/href : [\"/media/test.svg#1\", 1]\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-28",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 58.754718780517578, 630.0377197265625, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"order" : 1,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"order" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ],
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
					"patching_rect" : [ 83.0, 194.854921839965357, 135.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p load from another svg"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 649.0, 112.0, 902.0, 902.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 309.5, 289.0, 150.0, 20.0 ],
									"text" : "use group def by href id"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 286.5, 104.0, 173.0, 20.0 ],
									"text" : "create a group object definition"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-1",
									"linecount" : 28,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 100.0, 81.0, 186.0, 391.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 32, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 2, 20, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 1, -20, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, -36, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 100, 101, 102, 115, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 1, -124, 47, 99, 104, 105, 108, 100, 0, 0, 44, 46, 46, 0, 0, 0, 0, -88, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 49, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 12, 47, 121, 49, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 12, 47, 120, 50, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 121, 50, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 60, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 44, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 116, 114, 111, 107, 101, 45, 119, 105, 100, 116, 104, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, -56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, 108, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 92, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 116, 114, 111, 107, 101, 45, 119, 105, 100, 116, 104, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 110, 111, 110, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 116, 114, 111, 107, 101, 0, 44, 115, 0, 0, 98, 108, 97, 99, 107, 0, 0, 0 ],
									"saved_bundle_length" : 564,
									"text" : "/* : {\n\t/key : \"svg\",\n\t/val : {\n\t\t/parent : \"defs\",\n\t\t/new : \"g\",\n\t\t/id : \"noteline\",\n\t\t/child : [{\n\t\t\t/new : \"line\",\n\t\t\t/x1 : 10,\n\t\t\t/y1 : 5,\n\t\t\t/x2 : 100,\n\t\t\t/y2 : 5,\n\t\t\t/style : {\n\t\t\t\t/stroke-width : 1\n\t\t\t}\n\t\t}, {\n\t\t\t/new : \"circle\",\n\t\t\t/cx : 5,\n\t\t\t/cy : 5,\n\t\t\t/r : 5,\n\t\t\t/style : {\n\t\t\t\t/stroke-width : 2,\n\t\t\t\t/fill : \"none\",\n\t\t\t\t/stroke : \"black\"\n\t\t\t}\n\t\t}]\n\t}\n}"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-12",
									"linecount" : 19,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.5, 315.0, 215.0, 269.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 104, 47, 42, 0, 0, 44, 46, 46, 0, 0, 0, 0, -88, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, -128, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 112, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 117, 115, 101, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 24, 47, 104, 114, 101, 102, 0, 0, 0, 44, 115, 0, 0, 35, 110, 111, 116, 101, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, -80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 116, 119, 101, 101, 110, 0, 0, 0, 0, 0, 0, -124, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 116, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 97, 114, 103, 101, 116, 0, 44, 115, 0, 0, 35, 102, 111, 111, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 116, 101, 115, 116, 0, 0, 0, 0, 0, 0, 0, 52, 47, 118, 97, 114, 115, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 36, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 115, 99, 97, 108, 101, 89, 0, 44, 105, 0, 0, 0, 0, 0, 2 ],
									"saved_bundle_length" : 380,
									"text" : "/* : [{\n\t/key : \"svg\",\n\t/val : {\n\t\t/new : \"use\",\n\t\t/id : \"foo\",\n\t\t/href : \"#noteline\",\n\t\t/x : 100,\n\t\t/y : 100\n\t}\n}, {\n\t/key : \"tween\",\n\t/val : {\n\t\t/target : \"#foo\",\n\t\t/id : \"test\",\n\t\t/vars : {\n\t\t\t/scaleY : 2\n\t\t}\n\t}\n}]"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 100.0, 554.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
									"fontsize" : [ 12.0 ],
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
					"patching_rect" : [ 83.0, 223.973229119953828, 113.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p group/symbol/use"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"id" : "obj-27",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 706.064453125, 179.5, 93.0, 60.0 ],
					"text" : "html_root\n\n\nhtml_template"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 706.064453125, 138.0, 404.0, 20.0 ],
					"text" : "OSC FullPacket or dictionary input is sent to client indicated by OSC prefix"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 706.064453125, 302.446458239907543, 395.0, 60.0 ],
					"text" : "Outlets:\nleft: update messages from client and server\nmiddle: errors\nright: server status"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 706.064453125, 165.5, 413.0, 74.0 ],
					"text" : "Configuration Messages:\n                  (string) -- sets the HTML root server public folder and restarts the server\n\n                           (string) -- sets the served HTML page"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 706.064453125, 97.0, 326.0, 33.0 ],
					"text" : "optional argument: \nrelative path to HTML root folder for web accessable assets"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 802.064453125, 66.0, 212.0, 20.0 ],
					"text" : "rama gottfried, 2019 -- HfMT Hamburg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 706.064453125, 45.0, 309.0, 20.0 ],
					"text" : "a node.script based server for drawing to client browsers"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Arial",
					"fontsize" : 24.0,
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 706.064453125, 14.0, 199.0, 33.0 ],
					"text" : "drawsocket"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 10,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-12",
									"linecount" : 4,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 213.0, 62.0 ],
									"presentation" : 1,
									"presentation_linecount" : 4,
									"presentation_rect" : [ 830.0, 291.0, 213.0, 62.0 ],
									"text" : ";\rmax launch_browser https://github.com/ramagottfried/hfmt-drawsocket/blob/master/readme.md"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-15",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 931.064453125, 385.279771228188793, 19.0, 22.0 ],
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
					"bgcolor" : [ 0.290196, 0.309804, 0.301961, 0.0 ],
					"fontface" : 3,
					"fontlink" : 1,
					"id" : "obj-37",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 700.7646484375, 368.779771228188793, 209.599609375, 21.40625 ],
					"text" : "Click here to read the API online...",
					"texton" : "Click here to read the API online...",
					"textoncolor" : [ 0.011765, 0.396078, 0.752941, 1.0 ],
					"textovercolor" : [ 0.317647, 0.654902, 0.976471, 1.0 ],
					"usetextovercolor" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 96.0, 649.0, 100.0, 22.0 ],
					"text" : "s to_drawsocket"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "drawsocket.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/drawsocket/patchers",
				"patcherrelativepath" : "../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "drawsocket-server.js",
				"bootpath" : "~/Documents/Max 8/Packages/drawsocket/code/node",
				"patcherrelativepath" : "../code/node",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "startscript.js",
				"bootpath" : "~/Documents/___hfmt/drawsocket-min/code",
				"patcherrelativepath" : "../../../../___hfmt/drawsocket-min/code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "Screen Shot 2021-03-17 at 22.21.18.png",
				"bootpath" : "~/Documents/_____submissions/zurich/materials",
				"patcherrelativepath" : "../../../../_____submissions/zurich/materials",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "o.accum.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/odot/patchers/namespace",
				"patcherrelativepath" : "../../odot/patchers/namespace",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.compose.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.expr.codebox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.dict.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.union.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
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
				"name" : "o.select.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.display.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.cond.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "black on white",
				"number" : 				{
					"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ],
					"fontsize" : [ 12.0 ],
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
