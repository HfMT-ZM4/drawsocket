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
		"rect" : [ 569.0, 79.0, 1077.0, 891.0 ],
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
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 428.0, 447.0, 133.0, 22.0 ],
					"text" : "o.cond /key == textmsg"
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
							"minor" : 0,
							"revision" : 7,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 79.0, 1122.0, 837.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"bubble" : 1,
									"fontface" : 3,
									"fontsize" : 11.0,
									"id" : "obj-8",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 348.89776611328125, 447.0, 374.0, 47.0 ],
									"text" : "\"forms\" is special HTML div layer, that is located *above* all the other layers, which is used for HTML interaction elements (forms, buttons, etc.)",
									"textcolor" : [ 0.0, 0.423529411764706, 0.886274509803922, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontface" : 3,
									"fontsize" : 11.0,
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 348.89776611328125, 378.5, 302.0, 23.0 ],
									"text" : "\"main-svg\" where SVG objects are placed by default.",
									"textcolor" : [ 0.0, 0.423529411764706, 0.886274509803922, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontface" : 3,
									"fontsize" : 11.0,
									"id" : "obj-6",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 348.89776611328125, 347.5, 490.0, 23.0 ],
									"text" : "\"defs\" is a special SVG parent node that contains definitions of objects to be used later.",
									"textcolor" : [ 0.0, 0.423529411764706, 0.886274509803922, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontface" : 3,
									"fontsize" : 11.0,
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 348.89776611328125, 316.5, 246.0, 23.0 ],
									"text" : "\"svg\" is the top-level SVG parent element.",
									"textcolor" : [ 0.0, 0.423529411764706, 0.886274509803922, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"fontface" : 3,
									"fontsize" : 11.0,
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 348.89776611328125, 292.0, 352.0, 23.0 ],
									"text" : "\"main-html\" is where the HTML objects are placed by default.",
									"textcolor" : [ 0.0, 0.423529411764706, 0.886274509803922, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial Bold",
									"fontsize" : 13.0,
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 125.0, 143.0, 597.0, 21.0 ],
									"text" : "Here is the HTML layout for the default Drawsocket page ( as defined in drawsocket-page.html )"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.396078431372549, 0.396078431372549, 0.396078431372549, 1.0 ],
									"fontname" : "Monaco",
									"fontsize" : 11.0,
									"id" : "obj-2",
									"linecount" : 25,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 125.0, 171.0, 313.0, 350.0 ],
									"text" : "<html>\n <head>\n    <style type=\"text/css\"></style>\n </head>\n\n <body>\n\n    <div id=\"main-div\">\n\n      <div id=\"main-html\"></div>\n\n      <svg id=\"svg\">\n\n          <defs id=\"defs\"></defs>\n\n          <g id=\"main-svg\"></g>\n\n      </svg>\n\n    </div>\n\n    <div id=\"forms\"></div>\n\n </body>\n</html>",
									"textcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
								}

							}
 ],
						"lines" : [  ],
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
									"fontface" : [ 2 ],
									"fontsize" : [ 11.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "section dividers",
								"default" : 								{
									"fontface" : [ 3 ],
									"fontsize" : [ 15.0 ],
									"fontname" : [ "Arial" ]
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
,
					"patching_rect" : [ 813.5, 549.8549218399653, 148.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p more about page layers"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-21",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 574.0, 394.0, 451.0, 36.0 ],
					"text" : "When you type something into the input field and then hit the Enter button, the value will be sent out of the left hfmt.drawsocket outlet."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-19",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 574.0, 324.5, 451.0, 36.0 ],
					"text" : "processes one or more Drawsocket JSON messages. For example, using this function allows you to create new objects as a result of user interactions."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-18",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 574.0, 295.5, 442.0, 21.0 ],
					"text" : "sends a JS object back to the server (which passes the object back to Max)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 574.0, 266.5, 170.0, 21.0 ],
					"text" : "returns the URL of the client"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontsize" : 13.0,
					"id" : "obj-16",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 421.0, 266.5, 151.0, 79.0 ],
					"text" : "drawsocket.oscprefix\n\ndrawsocket.send( obj )\n\ndrawsocket.input( obj )"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-15",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 421.0, 176.0, 506.0, 79.0 ],
					"text" : "In order to receive the input value from the input object, we use the \"onkeydown\" attribute to define a function to be called when the user types letters in the input field. Since we only want the messages when they are completed, we check to see if the key was the 'Enter' key, and if so then we create a new JS object and send it back to the server with one of the special functions exported by Drawsocket."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 522.0, 659.0, 195.0, 33.0 ],
					"text" : "You can still access the text element of the inner HTML node."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 85.0, 614.0, 452.0, 33.0 ],
					"text" : "Since both are nested in the parent HTML div, they can be treated as one object. If you change the position for the parent object, the child objects are effected as well."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-11",
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 428.0, 482.0, 219.0, 34.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 428.0, 416.0, 82.0, 22.0 ],
					"text" : "o.route /event"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-9",
					"linecount" : 9,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 93.0, 653.0, 186.0, 133.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -88, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -100, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0, 0, 0, 0, 112, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 99, 104, 97, 116, 0, 0, 0, 0, 0, 0, 0, 56, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 108, 101, 102, 116, 0, 0, 0, 44, 115, 0, 0, 53, 48, 112, 120, 0, 0, 0, 0 ],
					"saved_bundle_length" : 188,
					"text" : "/* : {\n\t/key : \"html\",\n\t/val : {\n\t\t/id : \"chat\",\n\t\t/style : {\n\t\t\t/left : \"50px\"\n\t\t}\n\t}\n}"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-8",
					"linecount" : 9,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 293.0, 653.0, 186.0, 133.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -88, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -100, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0, 0, 0, 0, 112, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 99, 104, 97, 116, 0, 0, 0, 0, 0, 0, 0, 56, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 108, 101, 102, 116, 0, 0, 0, 44, 115, 0, 0, 50, 48, 48, 112, 120, 0, 0, 0 ],
					"saved_bundle_length" : 188,
					"text" : "/* : {\n\t/key : \"html\",\n\t/val : {\n\t\t/id : \"chat\",\n\t\t/style : {\n\t\t\t/left : \"200px\"\n\t\t}\n\t}\n}"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "obj-7",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 421.0, 64.0, 506.0, 94.0 ],
					"text" : "In this example, we create a set of new HTML elements in the top-level \"forms\" layer (see the \"page layout\" tab above) for handling user interaction, since for user interaction you want to make sure that the user can click on your object.\n\nFirst we create a new HTML div named \"chat\", and then add two child elements via the /parent keyword: an HTML input field, and then a HTML input field \"label\"."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 428.0, 383.0, 100.0, 22.0 ],
					"text" : "r client_message"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-4",
					"linecount" : 7,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 522.0, 704.5, 186.0, 106.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -124, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0, 0, 0, 0, 76, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 112, 114, 111, 109, 112, 116, 0, 0, 0, 0, 0, 20, 47, 116, 101, 120, 116, 0, 0, 0, 44, 115, 0, 0, 103, 114, 101, 97, 116, 0, 0, 0 ],
					"saved_bundle_length" : 152,
					"text" : "/* : {\n\t/key : \"html\",\n\t/val : {\n\t\t/id : \"prompt\",\n\t\t/text : \"great\"\n\t}\n}"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-3",
					"linecount" : 43,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 60.0, 11.8549218399653, 345.0, 595.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, -28, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 3, -40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0, 0, 0, 3, -84, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 46, 0, 0, 0, 0, 0, 0, 0, -60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 102, 111, 114, 109, 115, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 100, 105, 118, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 99, 104, 97, 116, 0, 0, 0, 0, 0, 0, 0, 112, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 112, 111, 115, 105, 116, 105, 111, 110, 0, 0, 0, 44, 115, 0, 0, 97, 98, 115, 111, 108, 117, 116, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 116, 111, 112, 0, 0, 0, 0, 44, 115, 0, 0, 50, 48, 48, 112, 120, 0, 0, 0, 0, 0, 0, 20, 47, 108, 101, 102, 116, 0, 0, 0, 44, 115, 0, 0, 49, 48, 48, 112, 120, 0, 0, 0, 0, 0, 2, 24, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 99, 104, 97, 116, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 105, 110, 112, 117, 116, 0, 0, 0, 0, 0, 0, 20, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 116, 101, 120, 116, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 117, 115, 101, 114, 105, 110, 112, 117, 116, 0, 0, 0, 0, 0, 0, 24, 47, 110, 97, 109, 101, 0, 0, 0, 44, 115, 0, 0, 117, 115, 101, 114, 105, 110, 112, 117, 116, 0, 0, 0, 0, 0, 0, 48, 47, 112, 108, 97, 99, 101, 104, 111, 108, 100, 101, 114, 0, 0, 0, 0, 44, 115, 0, 0, 116, 121, 112, 101, 32, 109, 101, 115, 115, 97, 103, 101, 115, 32, 116, 111, 32, 77, 97, 120, 32, 104, 101, 114, 101, 0, 0, 0, 0, 0, 0, 16, 47, 115, 105, 122, 101, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 1, 4, 47, 111, 110, 107, 101, 121, 100, 111, 119, 110, 0, 0, 44, 115, 0, 0, 32, 105, 102, 40, 32, 101, 118, 101, 110, 116, 46, 107, 101, 121, 32, 61, 61, 32, 39, 69, 110, 116, 101, 114, 39, 32, 41, 123, 10, 32, 32, 32, 32, 32, 32, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 115, 101, 110, 100, 40, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 101, 118, 101, 110, 116, 58, 32, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 117, 114, 108, 58, 32, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 111, 115, 99, 112, 114, 101, 102, 105, 120, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 107, 101, 121, 58, 32, 39, 116, 101, 120, 116, 109, 115, 103, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 97, 108, 58, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 101, 120, 116, 58, 32, 116, 104, 105, 115, 46, 118, 97, 108, 117, 101, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 58, 32, 32, 116, 104, 105, 115, 46, 105, 100, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 10, 32, 32, 32, 32, 32, 32, 32, 32, 125, 10, 32, 32, 32, 32, 32, 32, 125, 41, 59, 10, 32, 32, 125, 0, 0, 0, 0, 0, 56, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 119, 105, 100, 116, 104, 0, 0, 44, 115, 0, 0, 51, 48, 48, 112, 120, 0, 0, 0, 0, 0, 0, -76, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 99, 104, 97, 116, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 97, 98, 101, 108, 0, 0, 0, 0, 0, 0, 24, 47, 102, 111, 114, 0, 0, 0, 0, 44, 115, 0, 0, 117, 115, 101, 114, 105, 110, 112, 117, 116, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 112, 114, 111, 109, 112, 116, 0, 0, 0, 0, 0, 20, 47, 110, 97, 109, 101, 0, 0, 0, 44, 115, 0, 0, 112, 114, 111, 109, 112, 116, 0, 0, 0, 0, 0, 40, 47, 116, 101, 120, 116, 0, 0, 0, 44, 115, 0, 0, 116, 104, 105, 115, 32, 105, 115, 32, 97, 32, 109, 101, 115, 115, 97, 103, 101, 32, 102, 114, 111, 109, 32, 77, 97, 120, 33, 0 ],
					"saved_bundle_length" : 1016,
					"text" : "/* : {\n\t/key : \"html\",\n\t/val : [{\n\t\t/parent : \"forms\",\n\t\t/new : \"div\",\n\t\t/id : \"chat\",\n\t\t/style : {\n\t\t\t/position : \"absolute\",\n\t\t\t/top : \"200px\",\n\t\t\t/left : \"100px\"\n\t\t}\n\t}, {\n\t\t/parent : \"chat\",\n\t\t/new : \"input\",\n\t\t/type : \"text\",\n\t\t/id : \"userinput\",\n\t\t/name : \"userinput\",\n\t\t/placeholder : \"type messages to Max here\",\n\t\t/size : 10,\n\t\t/onkeydown : \" if( event.key == 'Enter' ){\n      drawsocket.send( {\n        event:  {\n          url: drawsocket.oscprefix,\n          key: 'textmsg',\n          val: {\n            text: this.value,\n            id:  this.id\n          }\n        }\n      });\n  }\",\n\t\t/style : {\n\t\t\t/width : \"300px\"\n\t\t}\n\t}, {\n\t\t/parent : \"chat\",\n\t\t/new : \"label\",\n\t\t/for : \"userinput\",\n\t\t/id : \"prompt\",\n\t\t/name : \"prompt\",\n\t\t/text : \"this is a message from Max!\"\n\t}]\n}"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 60.0, 804.0, 100.0, 22.0 ],
					"text" : "s to_drawsocket"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "o.compose.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
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
