{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 4,
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
		"boxes" : [ 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-32",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 43.0, 756.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 117.0, 748.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 38.842108011245728, 696.526338338851929, 61.0, 22.0 ],
					"text" : "bench out"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "list" ],
					"patching_rect" : [ 76.842108011245728, 630.526338338851929, 54.0, 22.0 ],
					"text" : "bench in"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-24",
					"linecount" : 21,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 24.0, 797.0, 179.0, 296.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -72, 47, 42, 47, 104, 116, 109, 108, 0, 44, 46, 46, 46, 46, 46, 0, 0, 0, 0, 0, 84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 108, 97, 121, 101, 114, 49, 0, 0, 0, 0, 0, 24, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 109, 97, 105, 110, 45, 115, 118, 103, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 108, 97, 121, 101, 114, 50, 0, 0, 0, 0, 0, 24, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 109, 97, 105, 110, 45, 115, 118, 103, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 108, 97, 121, 101, 114, 51, 0, 0, 0, 0, 0, 24, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 109, 97, 105, 110, 45, 115, 118, 103, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 76, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 120, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 108, 97, 121, 101, 114, 51, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 120, 0, 0, 0, 0, 0, 0, 76, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 122, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 108, 97, 121, 101, 114, 51, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 122, 0, 0, 0 ],
					"saved_bundle_length" : 460,
					"text" : "/*/html : [{\n\t/id : \"layer1\",\n\t/parent : \"main-svg\",\n\t/new : \"g\"\n}, {\n\t/id : \"layer2\",\n\t/parent : \"main-svg\",\n\t/new : \"g\"\n}, {\n\t/id : \"layer3\",\n\t/parent : \"main-svg\",\n\t/new : \"g\"\n}, {\n\t/id : \"x\",\n\t/parent : \"layer3\",\n\t/new : \"x\"\n}, {\n\t/id : \"z\",\n\t/parent : \"layer3\",\n\t/new : \"z\"\n}]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 112.0, 411.0, 50.5, 22.0 ],
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
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 184.0, 630.526338338851929, 37.0, 22.0 ],
					"text" : "o.dict"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 178.0, 763.0, 163.0, 22.0 ],
					"text" : "dictionary u257008236"
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
					"patching_rect" : [ 129.0, 665.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 139.0, 712.0, 141.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "flattenAPI.js",
						"parameter_enable" : 0
					}
,
					"text" : "js flattenAPI.js @watch 1"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-13",
					"linecount" : 18,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 1350.5, 761.5, 371.0, 277.0 ],
					"text" : "if( bound(/svg./appendTo),\n  progn(\n    /out/svg = [],\n    map(\n      lambda(a,\n        /out/svg = [/out/svg, \n          map(\n            lambda(l, \n               /b = l,\n               /b./parent = a,\n               /b\n            ), getbundlemember(/svg./appendTo, a )\n          )\n        ]\n      ), getaddresses(/svg./appendTo)\n    )\n  )\n)\n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 723.5, 364.0, 69.0, 22.0 ],
					"text" : "o.route /out"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-11",
					"linecount" : 9,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 705.5, 417.5, 179.0, 133.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -68, 47, 102, 111, 111, 0, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, 84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 108, 97, 121, 101, 114, 49, 0, 0, 0, 0, 0, 24, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 47, 109, 97, 105, 110, 45, 115, 118, 103, 0, 0, 0, 0, 0, 0, 84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 108, 97, 121, 101, 114, 50, 0, 0, 0, 0, 0, 24, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 47, 109, 97, 105, 110, 45, 115, 118, 103, 0, 0, 0 ],
					"saved_bundle_length" : 208,
					"text" : "/foo : [{\n\t/new : \"g\",\n\t/id : \"layer1\",\n\t/parent : \"/main-svg\"\n}, {\n\t/new : \"g\",\n\t/id : \"layer2\",\n\t/parent : \"/main-svg\"\n}]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-9",
					"linecount" : 53,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 904.5, 16.5, 534.0, 753.0 ],
					"text" : "/~/getNodesWithIDs = quote(lambda([arr, parentID],\n  /ret./with = [],\n  /ret./without = [],\n  map(\n    lambda([a],\n      /a = a,\n      if( bound(/a./id),\n        progn(\n          /a./parent = parentID,\n          /ret./with = [/ret./with, /a]\n        ),\n       /ret./without = [/ret./without, /a]\n      )\n    ), arr\n  ),\n  prog1(\n    /ret,\n    delete(/ret)\n  )\n)),\n\n/~/flattenOuter = quote(lambda([arr],\n  /out/svg = [],\n    map(\n      lambda(a,\n        /out/svg = [/out/svg, \n          map(\n            lambda(l, \n               /b = l,\n               /b./parent = a,\n               if( bound(/b./child),\n                 progn(\n                   /ids = /~/getNodesWithIDs( /b./child, a ),\n                   /b./child = /ids./without,\n                   /b = [/b, /ids./with ]\n                 )\n               ),\n               /b\n            ), getbundlemember(arr, a )\n          )\n        ]\n      ), getaddresses(arr)\n    ),\n  prog1(\n    /out/svg,\n    delete(/out/svg), \n    if( bound(/b), delete(/b) )\n  )\n)),\n\nif( bound(/svg./appendTo),\n  /out/foo = /~/getNodesWithIDs(/svg./appendTo, \"foo\")\n)\n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 395.5, 889.0, 69.0, 22.0 ],
					"text" : "o.route /out"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-8",
					"linecount" : 34,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 195.5, 59.5, 157.0, 473.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 120, 47, 42, 47, 115, 118, 103, 0, 0, 44, 46, 0, 0, 0, 0, 2, 104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 84, 47, 97, 112, 112, 101, 110, 100, 84, 111, 0, 0, 0, 44, 46, 0, 0, 0, 0, 2, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 20, 47, 108, 97, 121, 101, 114, 49, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 114, 101, 99, 116, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 114, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 119, 105, 100, 116, 104, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 104, 101, 105, 103, 104, 116, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 99, 0, 0, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, -106, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, -106, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 25, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 119, 104, 105, 116, 101, 0, 0, 0, 0, 0, 1, 20, 47, 108, 97, 121, 101, 114, 50, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 114, 101, 99, 116, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 114, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 119, 105, 100, 116, 104, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 16, 47, 104, 101, 105, 103, 104, 116, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 99, 0, 0, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, -106, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, -106, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 25, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 119, 104, 105, 116, 101, 0, 0, 0 ],
					"saved_bundle_length" : 652,
					"text" : "/*/svg : {\n\t/appendTo : {\n\t\t/layer1 : [{\n\t\t\t/new : \"rect\",\n\t\t\t/id : \"r\",\n\t\t\t/x : 100,\n\t\t\t/y : 100,\n\t\t\t/width : 100,\n\t\t\t/height : 100\n\t\t}, {\n\t\t\t/new : \"circle\",\n\t\t\t/id : \"c\",\n\t\t\t/cx : 150,\n\t\t\t/cy : 150,\n\t\t\t/r : 25,\n\t\t\t/fill : \"white\"\n\t\t}],\n\t\t/layer2 : [{\n\t\t\t/new : \"rect\",\n\t\t\t/id : \"r\",\n\t\t\t/x : 100,\n\t\t\t/y : 100,\n\t\t\t/width : 100,\n\t\t\t/height : 100\n\t\t}, {\n\t\t\t/new : \"circle\",\n\t\t\t/id : \"c\",\n\t\t\t/cx : 150,\n\t\t\t/cy : 150,\n\t\t\t/r : 25,\n\t\t\t/fill : \"white\"\n\t\t}]\n\t}\n}"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-6",
					"linecount" : 23,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 659.5, 25.5, 157.0, 323.0 ],
					"presentation_linecount" : 23,
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -64, 47, 42, 47, 104, 116, 109, 108, 0, 44, 46, 0, 0, 0, 0, 1, -80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -100, 47, 97, 112, 112, 101, 110, 100, 84, 111, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, -120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 116, 47, 109, 97, 105, 110, 45, 115, 118, 103, 0, 0, 0, 44, 46, 46, 46, 0, 0, 0, 0, 0, 0, 0, 56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 108, 97, 121, 101, 114, 49, 0, 0, 0, 0, 0, 56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 108, 97, 121, 101, 114, 50, 0, 0, 0, 0, 0, -28, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 108, 97, 121, 101, 114, 51, 0, 0, 0, 0, 0, -88, 47, 99, 104, 105, 108, 100, 0, 0, 44, 46, 46, 46, 0, 0, 0, 0, 0, 0, 0, 52, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 120, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 120, 0, 0, 0, 0, 0, 0, 36, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 121, 0, 0, 0, 0, 0, 0, 52, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 122, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 122, 0, 0, 0 ],
					"saved_bundle_length" : 468,
					"text" : "/*/html : {\n\t/appendTo : {\n\t\t/main-svg : [{\n\t\t\t/new : \"g\",\n\t\t\t/id : \"layer1\"\n\t\t}, {\n\t\t\t/new : \"g\",\n\t\t\t/id : \"layer2\"\n\t\t}, {\n\t\t\t/new : \"g\",\n\t\t\t/id : \"layer3\",\n\t\t\t/child : [{\n\t\t\t\t/new : \"x\",\n\t\t\t\t/id : \"x\"\n\t\t\t}, {\n\t\t\t\t/new : \"y\"\n\t\t\t}, {\n\t\t\t\t/new : \"z\",\n\t\t\t\t/id : \"z\"\n\t\t\t}]\n\t\t}]\n\t}\n}"
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
					"patching_rect" : [ 56.5, 572.0, 186.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 115, 118, 103, 0, 0, 0, 0, 44, 0, 0, 0 ],
					"saved_bundle_length" : 32,
					"text" : "/svg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 400.5, 369.0, 57.0, 22.0 ],
					"text" : "o.route /*"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-3",
					"linecount" : 22,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 400.5, 39.0, 165.0, 310.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -104, 47, 42, 47, 115, 118, 103, 0, 0, 44, 46, 46, 0, 0, 0, 0, -76, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 12, 47, 120, 49, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 12, 47, 120, 50, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 12, 47, 121, 49, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 12, 47, 121, 50, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 56, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 116, 114, 111, 107, 101, 0, 44, 115, 0, 0, 98, 108, 97, 99, 107, 0, 0, 0, 0, 0, 0, -48, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 98, 97, 114, 0, 0, 0, 0, 12, 47, 120, 49, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 12, 47, 120, 50, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 12, 47, 121, 49, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 12, 47, 121, 50, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 84, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 68, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 116, 114, 111, 107, 101, 0, 44, 115, 0, 0, 98, 108, 97, 99, 107, 0, 0, 0, 0, 0, 0, 24, 47, 115, 116, 114, 111, 107, 101, 45, 119, 105, 100, 116, 104, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5 ],
					"saved_bundle_length" : 428,
					"text" : "/*/svg : [{\n\t/new : \"line\",\n\t/id : \"foo\",\n\t/x1 : 10,\n\t/x2 : 20,\n\t/y1 : 10,\n\t/y2 : 10,\n\t/style : {\n\t\t/stroke : \"black\"\n\t}\n}, {\n\t/new : \"line\",\n\t/id : \"bar\",\n\t/x1 : 10,\n\t/x2 : 20,\n\t/y1 : 20,\n\t/y2 : 20,\n\t/style : {\n\t\t/stroke : \"black\",\n\t\t/stroke-width : 5\n\t}\n}]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-1",
					"linecount" : 33,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 354.5, 405.0, 450.0, 467.0 ],
					"text" : "/~/flatten = quote(lambda([objarr],\n   /newar = [],\n   map(\n            lambda(l, \n               /b = l,\n               /b./parent = a,\n               if( bound(/b./child),\n                  /newar = [/newar, /~/flatten( /b./child) ]\n               ),\n               /b\n            ), objarr\n          ),\n\n            /newar\n\n)),\n\n/~/flattenOuter = quote(lambda([objarr],\n    /arr = objarr,\n    /newar = [],\n    map(\n      lambda(a,\n        /newar = [/newar, \n          /~/flatten( getbundlemember(/arr, a ) )\n        ]\n      ), getaddresses( /arr )\n    ),\n\n      /newar,\n\n)),\n\n/out/svg = /~/flattenOuter(/svg./appendTo)"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 1 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 1 ],
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 1 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "flattenAPI.js",
				"bootpath" : "~/Documents/Max 8/Packages/hfmt-drawsocket/code",
				"patcherrelativepath" : "../code",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "o.expr.codebox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.compose.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.dict.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bench.mxo",
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
