{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 2,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 613.0, 79.0, 1140.0, 937.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-11",
					"linecount" : 9,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 759.799999713897705, 7.00000011920929, 208.0, 133.0 ],
					"presentation_linecount" : 10,
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -80, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -92, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 115, 115, 0, 0, 0, 0, 124, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 108, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 46, 115, 116, 101, 109, 0, 0, 0, 0, 0, 0, 60, 47, 112, 114, 111, 112, 115, 0, 0, 44, 46, 0, 0, 0, 0, 0, 44, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 118, 105, 115, 105, 98, 105, 108, 105, 116, 121, 0, 44, 115, 0, 0, 118, 105, 115, 105, 98, 108, 101, 0 ],
					"saved_bundle_length" : 196,
					"text" : "/* : {\n\t/key : \"css\",\n\t/val : {\n\t\t/selector : \".stem\",\n\t\t/props : {\n\t\t\t/visibility : \"visible\"\n\t\t}\n\t}\n}"
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
					"patching_rect" : [ 553.799999713897705, 7.00000011920929, 201.0, 133.0 ],
					"presentation_linecount" : 9,
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -80, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -92, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 115, 115, 0, 0, 0, 0, 124, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 108, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 46, 115, 116, 101, 109, 0, 0, 0, 0, 0, 0, 60, 47, 112, 114, 111, 112, 115, 0, 0, 44, 46, 0, 0, 0, 0, 0, 44, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 118, 105, 115, 105, 98, 105, 108, 105, 116, 121, 0, 44, 115, 0, 0, 104, 105, 100, 100, 101, 110, 0, 0 ],
					"saved_bundle_length" : 196,
					"text" : "/* : {\n\t/key : \"css\",\n\t/val : {\n\t\t/selector : \".stem\",\n\t\t/props : {\n\t\t\t/visibility : \"hidden\"\n\t\t}\n\t}\n}"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-8",
					"linecount" : 47,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 872.5, 208.200000107288361, 337.0, 649.0 ],
					"presentation_linecount" : 47,
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, -88, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 3, -100, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 3, 116, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 46, 46, 0, 0, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 10, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 8, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 98, 108, 117, 101, 0, 0, 0, 0, 0, 0, 0, -104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 98, 97, 114, 0, 0, 0, 0, 24, 47, 114, 101, 108, 97, 116, 105, 118, 101, 84, 111, 0, 44, 115, 0, 0, 35, 102, 111, 111, 0, 0, 0, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 3, 0, 0, 0, 16, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 114, 101, 100, 0, 0, 0, 0, -96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 98, 97, 114, 50, 0, 0, 0, 0, 0, 0, 0, 24, 47, 114, 101, 108, 97, 116, 105, 118, 101, 84, 111, 0, 44, 115, 0, 0, 35, 102, 111, 111, 0, 0, 0, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 3, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 111, 114, 97, 110, 103, 101, 0, 0, 0, 0, 1, -100, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 99, 111, 110, 110, 101, 99, 116, 111, 114, 0, 0, 0, 0, 0, 0, 80, 47, 120, 49, 0, 44, 46, 0, 0, 0, 0, 0, 68, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 35, 102, 111, 111, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 111, 111, 114, 100, 0, 0, 44, 115, 0, 0, 114, 105, 103, 104, 116, 0, 0, 0, 0, 0, 0, 76, 47, 121, 49, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 35, 102, 111, 111, 0, 0, 0, 0, 0, 0, 0, 16, 47, 99, 111, 111, 114, 100, 0, 0, 44, 115, 0, 0, 99, 121, 0, 0, 0, 0, 0, 76, 47, 120, 50, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 35, 98, 97, 114, 50, 0, 0, 0, 0, 0, 0, 16, 47, 99, 111, 111, 114, 100, 0, 0, 44, 115, 0, 0, 99, 120, 0, 0, 0, 0, 0, 76, 47, 121, 50, 0, 44, 46, 0, 0, 0, 0, 0, 64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 35, 98, 97, 114, 50, 0, 0, 0, 0, 0, 0, 16, 47, 99, 111, 111, 114, 100, 0, 0, 44, 115, 0, 0, 99, 121, 0, 0, 0, 0, 0, 20, 47, 115, 116, 114, 111, 107, 101, 0, 44, 115, 0, 0, 103, 114, 101, 101, 110, 0, 0, 0 ],
					"saved_bundle_length" : 956,
					"text" : "/* : {\n\t/key : \"svg\",\n\t/val : [{\n\t\t/new : \"circle\",\n\t\t/id : \"foo\",\n\t\t/cx : 10,\n\t\t/cy : 10,\n\t\t/r : 8,\n\t\t/fill : \"blue\"\n\t}, {\n\t\t/new : \"circle\",\n\t\t/id : \"bar\",\n\t\t/relativeTo : \"#foo\",\n\t\t/cx : 0,\n\t\t/cy : 0,\n\t\t/r : 3,\n\t\t/fill : \"red\"\n\t}, {\n\t\t/new : \"circle\",\n\t\t/id : \"bar2\",\n\t\t/relativeTo : \"#foo\",\n\t\t/cx : 100,\n\t\t/cy : 100,\n\t\t/r : 3,\n\t\t/fill : \"orange\"\n\t}, {\n\t\t/new : \"line\",\n\t\t/id : \"connector\",\n\t\t/x1 : {\n\t\t\t/selector : \"#foo\",\n\t\t\t/coord : \"right\"\n\t\t},\n\t\t/y1 : {\n\t\t\t/selector : \"#foo\",\n\t\t\t/coord : \"cy\"\n\t\t},\n\t\t/x2 : {\n\t\t\t/selector : \"#bar2\",\n\t\t\t/coord : \"cx\"\n\t\t},\n\t\t/y2 : {\n\t\t\t/selector : \"#bar2\",\n\t\t\t/coord : \"cy\"\n\t\t},\n\t\t/stroke : \"green\"\n\t}]\n}"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-4",
					"linecount" : 44,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 114.5, 337.0, 337.0, 609.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, -52, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 3, -64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 3, -104, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 46, 0, 0, 0, 0, 0, 0, 0, -88, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 36, 47, 114, 101, 108, 97, 116, 105, 118, 101, 84, 111, 0, 44, 115, 0, 0, 35, 104, 101, 108, 108, 111, 32, 62, 32, 46, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 98, 108, 117, 101, 0, 0, 0, 0, 0, 0, 1, 0, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, -128, 47, 114, 101, 108, 97, 116, 105, 118, 101, 84, 111, 0, 44, 46, 0, 0, 0, 0, 0, 108, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 35, 104, 101, 108, 108, 111, 50, 32, 62, 32, 46, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 24, 47, 97, 110, 99, 104, 111, 114, 95, 120, 0, 0, 0, 44, 115, 0, 0, 114, 105, 103, 104, 116, 0, 0, 0, 0, 0, 0, 20, 47, 97, 110, 99, 104, 111, 114, 95, 121, 0, 0, 0, 44, 115, 0, 0, 99, 121, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 98, 97, 114, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 16, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 114, 101, 100, 0, 0, 0, 1, -44, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 98, 97, 114, 108, 105, 110, 101, 0, 0, 0, 0, 88, 47, 120, 49, 0, 44, 46, 0, 0, 0, 0, 0, 76, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 35, 104, 101, 108, 108, 111, 32, 62, 32, 46, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 16, 47, 99, 111, 111, 114, 100, 0, 0, 44, 115, 0, 0, 99, 120, 0, 0, 0, 0, 0, 88, 47, 121, 49, 0, 44, 46, 0, 0, 0, 0, 0, 76, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 35, 104, 101, 108, 108, 111, 32, 62, 32, 46, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 16, 47, 99, 111, 111, 114, 100, 0, 0, 44, 115, 0, 0, 99, 121, 0, 0, 0, 0, 0, 96, 47, 120, 50, 0, 44, 46, 0, 0, 0, 0, 0, 84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 35, 104, 101, 108, 108, 111, 32, 126, 32, 46, 110, 111, 116, 101, 32, 62, 32, 46, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 16, 47, 99, 111, 111, 114, 100, 0, 0, 44, 115, 0, 0, 99, 120, 0, 0, 0, 0, 0, 96, 47, 121, 50, 0, 44, 46, 0, 0, 0, 0, 0, 84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 35, 104, 101, 108, 108, 111, 32, 126, 32, 46, 110, 111, 116, 101, 32, 62, 32, 46, 110, 111, 116, 101, 104, 101, 97, 100, 0, 0, 0, 0, 0, 16, 47, 99, 111, 111, 114, 100, 0, 0, 44, 115, 0, 0, 99, 121, 0, 0, 0, 0, 0, 20, 47, 115, 116, 114, 111, 107, 101, 0, 44, 115, 0, 0, 103, 114, 101, 101, 110, 0, 0, 0 ],
					"saved_bundle_length" : 992,
					"text" : "/* : {\n\t/key : \"svg\",\n\t/val : [{\n\t\t/new : \"circle\",\n\t\t/relativeTo : \"#hello > .notehead\",\n\t\t/id : \"foo\",\n\t\t/cx : 0,\n\t\t/cy : 0,\n\t\t/r : 2,\n\t\t/fill : \"blue\"\n\t}, {\n\t\t/new : \"circle\",\n\t\t/relativeTo : {\n\t\t\t/selector : \"#hello2 > .notehead\",\n\t\t\t/anchor_x : \"right\",\n\t\t\t/anchor_y : \"cy\"\n\t\t},\n\t\t/id : \"bar\",\n\t\t/cx : 0,\n\t\t/cy : 0,\n\t\t/r : 1,\n\t\t/fill : \"red\"\n\t}, {\n\t\t/new : \"line\",\n\t\t/id : \"barline\",\n\t\t/x1 : {\n\t\t\t/selector : \"#hello > .notehead\",\n\t\t\t/coord : \"cx\"\n\t\t},\n\t\t/y1 : {\n\t\t\t/selector : \"#hello > .notehead\",\n\t\t\t/coord : \"cy\"\n\t\t},\n\t\t/x2 : {\n\t\t\t/selector : \"#hello ~ .note > .notehead\",\n\t\t\t/coord : \"cx\"\n\t\t},\n\t\t/y2 : {\n\t\t\t/selector : \"#hello ~ .note > .notehead\",\n\t\t\t/coord : \"cy\"\n\t\t},\n\t\t/stroke : \"green\"\n\t}]\n}"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-10",
					"linecount" : 10,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 31.39999908208847, 26.200000107288361, 186.0, 146.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -84, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, -96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 0, 120, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, 104, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 102, 111, 111, 0, 0, 0, 0, 12, 47, 99, 120, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 99, 121, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 114, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2 ],
					"saved_bundle_length" : 192,
					"text" : "/* : {\n\t/key : \"svg\",\n\t/val : {\n\t\t/new : \"circle\",\n\t\t/id : \"foo\",\n\t\t/cx : 100,\n\t\t/cy : 100,\n\t\t/r : 2\n\t}\n}"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-2",
					"linecount" : 87,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 553.799999713897705, 160.200000703334808, 373.0, 1193.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 36, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 7, 24, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 109, 101, 105, 0, 0, 0, 6, -16, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 6, -32, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 115, 99, 111, 114, 101, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 110, 101, 119, 83, 99, 111, 114, 101, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 100, 0, 0, 6, 124, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 1, -64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 115, 99, 111, 114, 101, 68, 101, 102, 0, 0, 0, 0, 0, 0, 1, -112, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, 124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 97, 102, 102, 71, 114, 112, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 121, 109, 98, 111, 108, 0, 44, 115, 0, 0, 98, 114, 97, 99, 101, 0, 0, 0, 0, 0, 0, 24, 47, 98, 97, 114, 116, 104, 114, 117, 0, 0, 0, 0, 44, 115, 0, 0, 116, 114, 117, 101, 0, 0, 0, 0, 0, 0, 1, 24, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 97, 102, 102, 68, 101, 102, 0, 0, 0, 0, 0, 0, 0, 12, 47, 110, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 0, 20, 47, 99, 108, 101, 102, 45, 115, 104, 97, 112, 101, 0, 44, 115, 0, 0, 71, 0, 0, 0, 0, 0, 0, 20, 47, 99, 108, 101, 102, 45, 108, 105, 110, 101, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2, 0, 0, 0, 16, 47, 108, 105, 110, 101, 115, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 0, -128, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 97, 102, 102, 68, 101, 102, 0, 0, 0, 0, 0, 0, 0, 12, 47, 110, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2, 0, 0, 0, 20, 47, 99, 108, 101, 102, 45, 115, 104, 97, 112, 101, 0, 44, 115, 0, 0, 70, 0, 0, 0, 0, 0, 0, 20, 47, 99, 108, 101, 102, 45, 108, 105, 110, 101, 0, 0, 44, 105, 0, 0, 0, 0, 0, 4, 0, 0, 0, 16, 47, 108, 105, 110, 101, 115, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 4, -92, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 115, 101, 99, 116, 105, 111, 110, 0, 0, 0, 4, 120, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 0, 0, 0, 0, 4, 100, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 109, 101, 97, 115, 117, 114, 101, 0, 0, 0, 4, 56, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 0, 0, 0, 2, 28, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 97, 102, 102, 0, 0, 0, 0, 0, 0, 12, 47, 110, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1, 0, 0, 1, -32, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, -52, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 97, 121, 101, 114, 0, 0, 0, 0, 0, 1, -96, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 46, 0, 0, 0, 0, 0, 0, 0, -112, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 104, 101, 108, 108, 111, 0, 0, 0, 0, 0, 0, 16, 47, 112, 110, 97, 109, 101, 0, 0, 44, 115, 0, 0, 99, 0, 0, 0, 0, 0, 0, 20, 47, 114, 97, 116, 105, 111, 0, 0, 44, 100, 0, 0, 63, -14, 102, 102, 102, 102, 102, 102, 0, 0, 0, 16, 47, 111, 99, 116, 0, 0, 0, 0, 44, 115, 0, 0, 52, 0, 0, 0, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 115, 0, 0, 51, 50, 0, 0, 0, 0, 0, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 104, 101, 108, 108, 111, 50, 0, 0, 0, 0, 0, 16, 47, 112, 110, 97, 109, 101, 0, 0, 44, 115, 0, 0, 100, 0, 0, 0, 0, 0, 0, 16, 47, 111, 99, 116, 0, 0, 0, 0, 44, 115, 0, 0, 52, 0, 0, 0, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 115, 0, 0, 56, 0, 0, 0, 0, 0, 0, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 104, 101, 108, 108, 111, 51, 0, 0, 0, 0, 0, 16, 47, 112, 110, 97, 109, 101, 0, 0, 44, 115, 0, 0, 101, 0, 0, 0, 0, 0, 0, 16, 47, 111, 99, 116, 0, 0, 0, 0, 44, 115, 0, 0, 52, 0, 0, 0, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 115, 0, 0, 49, 54, 0, 0, 0, 0, 2, 4, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 115, 116, 97, 102, 102, 0, 0, 0, 0, 0, 0, 12, 47, 110, 0, 0, 44, 105, 0, 0, 0, 0, 0, 2, 0, 0, 1, -56, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 0, 0, 0, 0, 1, -76, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 97, 121, 101, 114, 0, 0, 0, 0, 0, 1, -120, 47, 99, 104, 105, 108, 100, 114, 101, 110, 0, 0, 0, 44, 46, 46, 46, 0, 0, 0, 0, 0, 0, 0, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 104, 101, 108, 108, 111, 52, 0, 0, 0, 0, 0, 16, 47, 112, 110, 97, 109, 101, 0, 0, 44, 115, 0, 0, 101, 0, 0, 0, 0, 0, 0, 16, 47, 111, 99, 116, 0, 0, 0, 0, 44, 115, 0, 0, 51, 0, 0, 0, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 115, 0, 0, 52, 0, 0, 0, 0, 0, 0, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 104, 101, 108, 108, 111, 53, 0, 0, 0, 0, 0, 16, 47, 112, 110, 97, 109, 101, 0, 0, 44, 115, 0, 0, 102, 0, 0, 0, 0, 0, 0, 16, 47, 111, 99, 116, 0, 0, 0, 0, 44, 115, 0, 0, 51, 0, 0, 0, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 115, 0, 0, 56, 0, 0, 0, 0, 0, 0, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 110, 111, 116, 101, 0, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 104, 101, 108, 108, 111, 54, 0, 0, 0, 0, 0, 16, 47, 112, 110, 97, 109, 101, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 16, 47, 111, 99, 116, 0, 0, 0, 0, 44, 115, 0, 0, 51, 0, 0, 0, 0, 0, 0, 16, 47, 100, 117, 114, 0, 0, 0, 0, 44, 115, 0, 0, 49, 54, 0, 0 ],
					"saved_bundle_length" : 1848,
					"text" : "/* : {\n\t/key : \"mei\",\n\t/val : {\n\t\t/new : \"score\",\n\t\t/id : \"newScore\",\n\t\t/x : 100,\n\t\t/y : 100,\n\t\t/children : [{\n\t\t\t/new : \"scoreDef\",\n\t\t\t/children : {\n\t\t\t\t/new : \"staffGrp\",\n\t\t\t\t/symbol : \"brace\",\n\t\t\t\t/barthru : \"true\",\n\t\t\t\t/children : [{\n\t\t\t\t\t/new : \"staffDef\",\n\t\t\t\t\t/n : 1,\n\t\t\t\t\t/clef-shape : \"G\",\n\t\t\t\t\t/clef-line : 2,\n\t\t\t\t\t/lines : 5\n\t\t\t\t}, {\n\t\t\t\t\t/new : \"staffDef\",\n\t\t\t\t\t/n : 2,\n\t\t\t\t\t/clef-shape : \"F\",\n\t\t\t\t\t/clef-line : 4,\n\t\t\t\t\t/lines : 5\n\t\t\t\t}]\n\t\t\t}\n\t\t}, {\n\t\t\t/new : \"section\",\n\t\t\t/children : {\n\t\t\t\t/new : \"measure\",\n\t\t\t\t/children : [{\n\t\t\t\t\t/new : \"staff\",\n\t\t\t\t\t/n : 1,\n\t\t\t\t\t/children : {\n\t\t\t\t\t\t/new : \"layer\",\n\t\t\t\t\t\t/children : [{\n\t\t\t\t\t\t\t/new : \"note\",\n\t\t\t\t\t\t\t/id : \"hello\",\n\t\t\t\t\t\t\t/pname : \"c\",\n\t\t\t\t\t\t\t/ratio : 1.15,\n\t\t\t\t\t\t\t/oct : \"4\",\n\t\t\t\t\t\t\t/dur : \"32\"\n\t\t\t\t\t\t}, {\n\t\t\t\t\t\t\t/new : \"note\",\n\t\t\t\t\t\t\t/id : \"hello2\",\n\t\t\t\t\t\t\t/pname : \"d\",\n\t\t\t\t\t\t\t/oct : \"4\",\n\t\t\t\t\t\t\t/dur : \"8\"\n\t\t\t\t\t\t}, {\n\t\t\t\t\t\t\t/new : \"note\",\n\t\t\t\t\t\t\t/id : \"hello3\",\n\t\t\t\t\t\t\t/pname : \"e\",\n\t\t\t\t\t\t\t/oct : \"4\",\n\t\t\t\t\t\t\t/dur : \"16\"\n\t\t\t\t\t\t}]\n\t\t\t\t\t}\n\t\t\t\t}, {\n\t\t\t\t\t/new : \"staff\",\n\t\t\t\t\t/n : 2,\n\t\t\t\t\t/children : {\n\t\t\t\t\t\t/new : \"layer\",\n\t\t\t\t\t\t/children : [{\n\t\t\t\t\t\t\t/new : \"note\",\n\t\t\t\t\t\t\t/id : \"hello4\",\n\t\t\t\t\t\t\t/pname : \"e\",\n\t\t\t\t\t\t\t/oct : \"3\",\n\t\t\t\t\t\t\t/dur : \"4\"\n\t\t\t\t\t\t}, {\n\t\t\t\t\t\t\t/new : \"note\",\n\t\t\t\t\t\t\t/id : \"hello5\",\n\t\t\t\t\t\t\t/pname : \"f\",\n\t\t\t\t\t\t\t/oct : \"3\",\n\t\t\t\t\t\t\t/dur : \"8\"\n\t\t\t\t\t\t}, {\n\t\t\t\t\t\t\t/new : \"note\",\n\t\t\t\t\t\t\t/id : \"hello6\",\n\t\t\t\t\t\t\t/pname : \"g\",\n\t\t\t\t\t\t\t/oct : \"3\",\n\t\t\t\t\t\t\t/dur : \"16\"\n\t\t\t\t\t\t}]\n\t\t\t\t\t}\n\t\t\t\t}]\n\t\t\t}\n\t\t}]\n\t}\n}"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-13",
					"linecount" : 4,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 339.0, 50.800000250339508, 136.0, 65.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 47, 42, 0, 0, 44, 46, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 108, 101, 97, 114, 0, 0, 0, 0, 0, 0, 16, 47, 118, 97, 108, 0, 0, 0, 0, 44, 115, 0, 0, 42, 0, 0, 0 ],
					"saved_bundle_length" : 92,
					"text" : "/* : {\n\t/key : \"clear\",\n\t/val : \"*\"\n}"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-7",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 273.999999761581421, 460.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 47, 115, 116, 100, 111, 117, 116, 0, 44, 115, 0, 0, 114, 101, 99, 101, 105, 118, 101, 100, 32, 115, 111, 99, 107, 101, 116, 32, 99, 108, 111, 115, 101, 32, 47, 102, 111, 111, 32, 52, 47, 79, 49, 121, 76, 67, 104, 88, 118, 66, 89, 78, 48, 87, 98, 110, 48, 72, 77, 67, 81, 61, 61, 0 ],
					"saved_bundle_length" : 84,
					"text" : "/stdout : \"received socket close /foo 4/O1yLChXvBYN0Wbn0HMCQ==\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 247.799999952316284, 118.00000011920929, 64.0, 22.0 ],
					"text" : "script stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 339.0, 152.0, 175.0, 22.0 ],
					"text" : "html_template verovio-test.html"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 233.0, 88.200000107288361, 64.0, 22.0 ],
					"text" : "script start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "FullPacket", "", "FullPacket" ],
					"patching_rect" : [ 233.0, 205.0, 100.0, 22.0 ],
					"text" : "hfmt.drawsocket"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
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
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 563.299999713897705, 1284.200000703334808, 488.900001525878906, 1284.200000703334808, 488.900001525878906, 194.0, 242.5, 194.0 ],
					"source" : [ "obj-2", 0 ]
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
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 124.0, 956.0, 91.25, 956.0, 91.25, 194.0, 242.5, 194.0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
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
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "hfmt.drawsocket.maxpat",
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
