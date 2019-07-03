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
		"rect" : [ 401.0, 79.0, 1183.0, 740.0 ],
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
					"id" : "obj-44",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 309.5, 245.29432700000001, 252.0, 20.0 ],
					"text" : "<< elements that change based on the piece"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 291.5, 187.0, 211.0, 20.0 ],
					"text" : "<< elements that are always the same"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-5",
									"linecount" : 172,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 364.0, 49.0, 453.0, 2349.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, -120, 47, 117, 105, 47, 99, 115, 115, 0, 44, 46, 0, 0, 0, 0, 2, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 115, 115, 0, 0, 0, 2, 80, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 46, 46, 0, 0, 0, 0, 0, 0, -112, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 46, 114, 101, 97, 100, 121, 0, 0, 0, 0, 0, 96, 47, 112, 114, 111, 112, 115, 0, 0, 44, 46, 0, 0, 0, 0, 0, 80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 98, 97, 99, 107, 103, 114, 111, 117, 110, 100, 45, 99, 111, 108, 111, 114, 0, 0, 0, 44, 115, 0, 0, 108, 105, 103, 104, 116, 98, 108, 117, 101, 0, 0, 0, 0, 0, 0, 20, 47, 99, 111, 108, 111, 114, 0, 0, 44, 115, 0, 0, 98, 108, 97, 99, 107, 0, 0, 0, 0, 0, 0, -108, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 46, 110, 111, 99, 108, 105, 99, 107, 0, 0, 0, 0, 0, 0, 0, 96, 47, 112, 114, 111, 112, 115, 0, 0, 44, 46, 0, 0, 0, 0, 0, 80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 117, 115, 101, 114, 45, 115, 101, 108, 101, 99, 116, 0, 0, 0, 0, 44, 115, 0, 0, 110, 111, 110, 101, 0, 0, 0, 0, 0, 0, 0, 28, 47, 112, 111, 105, 110, 116, 101, 114, 45, 101, 118, 101, 110, 116, 115, 0, 44, 115, 0, 0, 110, 111, 110, 101, 0, 0, 0, 0, 0, 0, 0, -124, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 112, 111, 108, 121, 103, 111, 110, 0, 0, 0, 0, 84, 47, 112, 114, 111, 112, 115, 0, 0, 44, 46, 0, 0, 0, 0, 0, 68, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 116, 114, 111, 107, 101, 45, 119, 105, 100, 116, 104, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 110, 111, 110, 101, 0, 0, 0, 0, 0, 0, 0, -120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 112, 111, 108, 121, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 84, 47, 112, 114, 111, 112, 115, 0, 0, 44, 46, 0, 0, 0, 0, 0, 68, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 116, 114, 111, 107, 101, 45, 119, 105, 100, 116, 104, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 110, 111, 110, 101, 0, 0, 0, 0, 0, 0, 9, 28, 47, 117, 105, 47, 104, 116, 109, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 9, 8, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0, 0, 0, 8, -36, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 46, 46, 0, 0, 0, 0, 0, 0, -64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 102, 111, 114, 109, 115, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 85, 73, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 100, 105, 118, 0, 0, 0, 0, 112, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 112, 111, 115, 105, 116, 105, 111, 110, 0, 0, 0, 44, 115, 0, 0, 97, 98, 115, 111, 108, 117, 116, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 102, 108, 111, 97, 116, 0, 0, 44, 115, 0, 0, 108, 101, 102, 116, 0, 0, 0, 0, 0, 0, 0, 20, 47, 119, 105, 100, 116, 104, 0, 0, 44, 115, 0, 0, 49, 48, 48, 118, 119, 0, 0, 0, 0, 0, 3, -44, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 85, 73, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 112, 108, 97, 121, 98, 117, 116, 116, 111, 110, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 98, 117, 116, 116, 111, 110, 0, 0, 0, 0, 0, 20, 47, 116, 101, 120, 116, 0, 0, 0, 44, 115, 0, 0, 112, 108, 97, 121, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 98, 117, 116, 116, 111, 110, 0, 0, 0, 0, 0, 56, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 102, 108, 111, 97, 116, 0, 0, 44, 115, 0, 0, 108, 101, 102, 116, 0, 0, 0, 0, 0, 0, 3, 16, 47, 111, 110, 99, 108, 105, 99, 107, 0, 0, 0, 0, 44, 115, 0, 0, 10, 32, 32, 32, 32, 32, 105, 102, 40, 32, 33, 116, 104, 105, 115, 46, 99, 108, 97, 115, 115, 76, 105, 115, 116, 46, 99, 111, 110, 116, 97, 105, 110, 115, 40, 39, 114, 101, 97, 100, 121, 39, 41, 32, 41, 10, 32, 32, 32, 32, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 116, 104, 105, 115, 46, 99, 108, 97, 115, 115, 76, 105, 115, 116, 46, 97, 100, 100, 40, 39, 114, 101, 97, 100, 121, 39, 41, 59, 10, 32, 32, 32, 32, 32, 32, 32, 32, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 105, 110, 112, 117, 116, 40, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 107, 101, 121, 58, 32, 39, 116, 119, 101, 101, 110, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 97, 108, 58, 32, 91, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 58, 32, 39, 115, 99, 111, 114, 101, 45, 97, 110, 105, 109, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 9, 9, 32, 32, 32, 99, 109, 100, 32, 58, 32, 39, 112, 108, 97, 121, 39, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 58, 32, 39, 109, 105, 110, 105, 115, 99, 111, 114, 101, 45, 97, 110, 105, 109, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 9, 9, 32, 32, 32, 99, 109, 100, 32, 58, 32, 39, 112, 108, 97, 121, 39, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 32, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 109, 101, 116, 97, 103, 58, 32, 68, 97, 116, 101, 46, 110, 111, 119, 40, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 125, 41, 59, 10, 32, 32, 32, 32, 32, 125, 32, 101, 108, 115, 101, 32, 123, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 116, 104, 105, 115, 46, 99, 108, 97, 115, 115, 76, 105, 115, 116, 46, 114, 101, 109, 111, 118, 101, 40, 39, 114, 101, 97, 100, 121, 39, 41, 59, 10, 10, 32, 32, 32, 32, 32, 32, 32, 108, 101, 116, 32, 115, 116, 97, 114, 116, 116, 105, 109, 101, 32, 61, 32, 100, 111, 99, 117, 109, 101, 110, 116, 46, 103, 101, 116, 69, 108, 101, 109, 101, 110, 116, 66, 121, 73, 100, 40, 39, 117, 115, 101, 114, 105, 110, 112, 117, 116, 39, 41, 59, 10, 10, 32, 32, 32, 32, 32, 32, 32, 32, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 105, 110, 112, 117, 116, 40, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 107, 101, 121, 58, 32, 39, 116, 119, 101, 101, 110, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 97, 108, 58, 32, 91, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 58, 32, 39, 115, 99, 111, 114, 101, 45, 97, 110, 105, 109, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 9, 9, 32, 32, 32, 99, 109, 100, 58, 32, 39, 112, 97, 117, 115, 101, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 109, 101, 58, 32, 115, 116, 97, 114, 116, 116, 105, 109, 101, 46, 118, 97, 108, 117, 101, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 58, 32, 39, 109, 105, 110, 105, 115, 99, 111, 114, 101, 45, 97, 110, 105, 109, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 9, 9, 32, 32, 32, 99, 109, 100, 32, 58, 32, 39, 112, 97, 117, 115, 101, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 109, 101, 58, 32, 115, 116, 97, 114, 116, 116, 105, 109, 101, 46, 118, 97, 108, 117, 101, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 93, 10, 32, 32, 32, 32, 32, 32, 32, 32, 125, 41, 59, 10, 32, 32, 32, 32, 32, 125, 0, 0, 0, 0, 0, 0, 1, 28, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 85, 73, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 97, 98, 101, 108, 0, 0, 0, 0, 0, 0, 24, 47, 102, 111, 114, 0, 0, 0, 0, 44, 115, 0, 0, 117, 115, 101, 114, 105, 110, 112, 117, 116, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 115, 101, 110, 116, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 97, 109, 101, 0, 0, 0, 44, 115, 0, 0, 115, 101, 110, 116, 0, 0, 0, 0, 0, 0, 0, 32, 47, 116, 101, 120, 116, 0, 0, 0, 44, 115, 0, 0, 115, 116, 97, 114, 116, 32, 97, 116, 32, 116, 105, 109, 101, 60, 98, 114, 62, 0, 0, 0, 0, 0, 0, 112, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 102, 111, 110, 116, 45, 115, 105, 122, 101, 0, 0, 44, 115, 0, 0, 54, 48, 37, 0, 0, 0, 0, 20, 47, 99, 111, 108, 111, 114, 0, 0, 44, 115, 0, 0, 103, 114, 97, 121, 0, 0, 0, 0, 0, 0, 0, 28, 47, 109, 97, 114, 103, 105, 110, 45, 108, 101, 102, 116, 0, 0, 0, 0, 44, 115, 0, 0, 50, 48, 112, 120, 0, 0, 0, 0, 0, 0, 3, 12, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 85, 73, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 105, 110, 112, 117, 116, 0, 0, 0, 0, 0, 0, 20, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 116, 101, 120, 116, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 117, 115, 101, 114, 105, 110, 112, 117, 116, 0, 0, 0, 0, 0, 0, 24, 47, 110, 97, 109, 101, 0, 0, 0, 44, 115, 0, 0, 117, 115, 101, 114, 105, 110, 112, 117, 116, 0, 0, 0, 0, 0, 0, 24, 47, 112, 108, 97, 99, 101, 104, 111, 108, 100, 101, 114, 0, 0, 0, 0, 44, 115, 0, 0, 48, 0, 0, 0, 0, 0, 0, 16, 47, 115, 105, 122, 101, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 1, -16, 47, 111, 110, 107, 101, 121, 100, 111, 119, 110, 0, 0, 44, 115, 0, 0, 10, 32, 32, 32, 32, 32, 105, 102, 40, 32, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 115, 117, 98, 109, 105, 116, 79, 110, 69, 110, 116, 101, 114, 75, 101, 121, 40, 116, 104, 105, 115, 41, 32, 41, 32, 123, 32, 10, 32, 32, 32, 32, 32, 32, 32, 108, 101, 116, 32, 98, 117, 116, 116, 111, 110, 32, 61, 32, 100, 111, 99, 117, 109, 101, 110, 116, 46, 103, 101, 116, 69, 108, 101, 109, 101, 110, 116, 66, 121, 73, 100, 40, 39, 112, 108, 97, 121, 98, 117, 116, 116, 111, 110, 39, 41, 59, 10, 32, 32, 32, 32, 32, 32, 32, 105, 102, 40, 32, 98, 117, 116, 116, 111, 110, 46, 99, 108, 97, 115, 115, 76, 105, 115, 116, 46, 99, 111, 110, 116, 97, 105, 110, 115, 40, 39, 114, 101, 97, 100, 121, 39, 41, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 98, 117, 116, 116, 111, 110, 46, 99, 108, 97, 115, 115, 76, 105, 115, 116, 46, 114, 101, 109, 111, 118, 101, 40, 39, 114, 101, 97, 100, 121, 39, 41, 59, 10, 10, 32, 32, 32, 32, 32, 32, 32, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 105, 110, 112, 117, 116, 40, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 107, 101, 121, 58, 32, 39, 116, 119, 101, 101, 110, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 97, 108, 58, 32, 91, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 58, 32, 39, 115, 99, 111, 114, 101, 45, 97, 110, 105, 109, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 109, 100, 58, 32, 39, 112, 97, 117, 115, 101, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 109, 101, 58, 32, 116, 104, 105, 115, 46, 118, 97, 108, 117, 101, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 58, 32, 39, 109, 105, 110, 105, 115, 99, 111, 114, 101, 45, 97, 110, 105, 109, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 9, 9, 32, 99, 109, 100, 32, 58, 32, 39, 112, 97, 117, 115, 101, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 109, 101, 58, 32, 116, 104, 105, 115, 46, 118, 97, 108, 117, 101, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 93, 10, 32, 32, 32, 32, 32, 32, 32, 125, 41, 59, 10, 32, 32, 32, 32, 32, 125, 0, 0, 0, 0, 92, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 76, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 109, 97, 114, 103, 105, 110, 45, 108, 101, 102, 116, 0, 0, 0, 0, 44, 115, 0, 0, 51, 53, 112, 120, 0, 0, 0, 0, 0, 0, 0, 24, 47, 116, 101, 120, 116, 45, 97, 108, 105, 103, 110, 0, 44, 115, 0, 0, 99, 101, 110, 116, 101, 114, 0, 0, 0, 0, 3, -64, 47, 117, 105, 47, 115, 118, 103, 0, 44, 46, 0, 0, 0, 0, 3, -80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 115, 118, 103, 0, 0, 0, 3, -120, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 46, 46, 46, 46, 0, 0, 0, 0, 84, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 100, 101, 102, 115, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 100, 101, 102, 115, 99, 111, 114, 101, 0, 0, 0, 0, 0, 0, 0, 60, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 115, 99, 111, 114, 101, 71, 114, 111, 117, 112, 0, 0, 0, 0, 0, 56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 103, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 111, 118, 101, 114, 108, 97, 121, 0, 0, 0, 1, 12, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 111, 118, 101, 114, 108, 97, 121, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 112, 108, 97, 121, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 49, 0, 44, 105, 0, 0, 0, 0, 0, -6, 0, 0, 0, 12, 47, 120, 50, 0, 44, 105, 0, 0, 0, 0, 0, -6, 0, 0, 0, 12, 47, 121, 49, 0, 44, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 47, 121, 50, 0, 44, 105, 0, 0, 0, 0, 1, -112, 0, 0, 0, 112, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 115, 116, 114, 111, 107, 101, 0, 44, 115, 0, 0, 114, 101, 100, 0, 0, 0, 0, 24, 47, 115, 116, 114, 111, 107, 101, 45, 119, 105, 100, 116, 104, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 3, 0, 0, 0, 28, 47, 115, 116, 114, 111, 107, 101, 45, 111, 112, 97, 99, 105, 116, 121, 0, 44, 100, 0, 0, 63, -32, 0, 0, 0, 0, 0, 0, 0, 0, 1, 20, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 111, 118, 101, 114, 108, 97, 121, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 105, 110, 101, 0, 0, 0, 0, 0, 0, 0, 24, 47, 105, 100, 0, 44, 115, 0, 0, 109, 105, 110, 105, 112, 108, 97, 121, 104, 101, 97, 100, 0, 0, 0, 0, 0, 0, 0, 12, 47, 120, 49, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 12, 47, 120, 50, 0, 44, 105, 0, 0, 0, 0, 0, 20, 0, 0, 0, 12, 47, 121, 49, 0, 44, 105, 0, 0, 0, 0, 1, -112, 0, 0, 0, 12, 47, 121, 50, 0, 44, 105, 0, 0, 0, 0, 1, -12, 0, 0, 0, 116, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 100, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 115, 116, 114, 111, 107, 101, 0, 44, 115, 0, 0, 98, 108, 117, 101, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 116, 114, 111, 107, 101, 45, 119, 105, 100, 116, 104, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 3, 0, 0, 0, 28, 47, 115, 116, 114, 111, 107, 101, 45, 111, 112, 97, 99, 105, 116, 121, 0, 44, 100, 0, 0, 63, -32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 111, 118, 101, 114, 108, 97, 121, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 116, 101, 120, 116, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 116, 105, 109, 101, 99, 111, 117, 110, 116, 0, 0, 0, 0, 0, 0, 12, 47, 120, 0, 0, 44, 105, 0, 0, 0, 0, 0, -61, 0, 0, 0, 12, 47, 121, 0, 0, 44, 105, 0, 0, 0, 0, 0, 35 ],
									"saved_bundle_length" : 3968,
									"text" : "/ui/css : {\n\t/key : \"css\",\n\t/val : [{\n\t\t/selector : \".ready\",\n\t\t/props : {\n\t\t\t/background-color : \"lightblue\",\n\t\t\t/color : \"black\"\n\t\t}\n\t}, {\n\t\t/selector : \".noclick\",\n\t\t/props : {\n\t\t\t/user-select : \"none\",\n\t\t\t/pointer-events : \"none\"\n\t\t}\n\t}, {\n\t\t/selector : \"polygon\",\n\t\t/props : {\n\t\t\t/stroke-width : 0,\n\t\t\t/fill : \"none\"\n\t\t}\n\t}, {\n\t\t/selector : \"polyline\",\n\t\t/props : {\n\t\t\t/stroke-width : 0,\n\t\t\t/fill : \"none\"\n\t\t}\n\t}]\n},\n/ui/html : {\n\t/key : \"html\",\n\t/val : [{\n\t\t/parent : \"forms\",\n\t\t/id : \"UI\",\n\t\t/new : \"div\",\n\t\t/style : {\n\t\t\t/position : \"absolute\",\n\t\t\t/float : \"left\",\n\t\t\t/width : \"100vw\"\n\t\t}\n\t}, {\n\t\t/parent : \"UI\",\n\t\t/id : \"playbutton\",\n\t\t/new : \"button\",\n\t\t/text : \"play\",\n\t\t/class : \"button\",\n\t\t/style : {\n\t\t\t/float : \"left\"\n\t\t},\n\t\t/onclick : \"\n     if( !this.classList.contains('ready') )\n     {\n        this.classList.add('ready');\n        drawsocket.input({\n          key: 'tween',\n          val: [ {\n            id: 'score-anim',\n       \t\t   cmd : 'play'\n          }, {\n            id: 'miniscore-anim',\n       \t\t   cmd : 'play'\n          } ],\n          timetag: Date.now()\n        });\n     } else { \n        this.classList.remove('ready');\n\n       let starttime = document.getElementById('userinput');\n\n        drawsocket.input({\n          key: 'tween',\n          val: [{\n            id: 'score-anim',\n       \t\t   cmd: 'pause',\n            time: starttime.value\n          }, {\n            id: 'miniscore-anim',\n       \t\t   cmd : 'pause',\n            time: starttime.value\n          }]\n        });\n     }\"\n\t}, {\n\t\t/parent : \"UI\",\n\t\t/new : \"label\",\n\t\t/for : \"userinput\",\n\t\t/id : \"sent\",\n\t\t/name : \"sent\",\n\t\t/text : \"start at time<br>\",\n\t\t/style : {\n\t\t\t/font-size : \"60%\",\n\t\t\t/color : \"gray\",\n\t\t\t/margin-left : \"20px\"\n\t\t}\n\t}, {\n\t\t/parent : \"UI\",\n\t\t/new : \"input\",\n\t\t/type : \"text\",\n\t\t/id : \"userinput\",\n\t\t/name : \"userinput\",\n\t\t/placeholder : \"0\",\n\t\t/size : 5,\n\t\t/onkeydown : \"\n     if( drawsocket.submitOnEnterKey(this) ) { \n       let button = document.getElementById('playbutton');\n       if( button.classList.contains('ready') )\n            button.classList.remove('ready');\n\n       drawsocket.input({\n         key: 'tween',\n         val: [{\n           id: 'score-anim',\n           cmd: 'pause',\n           time: this.value\n         }, {\n          id: 'miniscore-anim',\n       \t\t cmd : 'pause',\n          time: this.value\n          }]\n       });\n     }\",\n\t\t/style : {\n\t\t\t/margin-left : \"35px\",\n\t\t\t/text-align : \"center\"\n\t\t}\n\t}]\n},\n/ui/svg : {\n\t/key : \"svg\",\n\t/val : [{\n\t\t/new : \"g\",\n\t\t/parent : \"defs\",\n\t\t/id : \"defscore\"\n\t}, {\n\t\t/new : \"g\",\n\t\t/id : \"scoreGroup\"\n\t}, {\n\t\t/new : \"g\",\n\t\t/id : \"overlay\"\n\t}, {\n\t\t/parent : \"overlay\",\n\t\t/new : \"line\",\n\t\t/id : \"playhead\",\n\t\t/x1 : 250,\n\t\t/x2 : 250,\n\t\t/y1 : 0,\n\t\t/y2 : 400,\n\t\t/style : {\n\t\t\t/stroke : \"red\",\n\t\t\t/stroke-width : 3,\n\t\t\t/stroke-opacity : 0.5\n\t\t}\n\t}, {\n\t\t/parent : \"overlay\",\n\t\t/new : \"line\",\n\t\t/id : \"miniplayhead\",\n\t\t/x1 : 20,\n\t\t/x2 : 20,\n\t\t/y1 : 400,\n\t\t/y2 : 500,\n\t\t/style : {\n\t\t\t/stroke : \"blue\",\n\t\t\t/stroke-width : 3,\n\t\t\t/stroke-opacity : 0.5\n\t\t}\n\t}, {\n\t\t/parent : \"overlay\",\n\t\t/new : \"text\",\n\t\t/id : \"timecount\",\n\t\t/x : 195,\n\t\t/y : 35\n\t}]\n}"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-13",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 364.0, 3.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-16",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 2318.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 246.0, 187.0, 31.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p UI"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
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
						"rect" : [ 34.0, 79.0, 1151.0, 937.0 ],
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
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 119.0, 2633.0, 19.0, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "",
										"parameter_enable" : 0
									}
,
									"text" : "js"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 0,
											"revision" : 7,
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
										"boxes" : [ 											{
												"box" : 												{
													"fontface" : 0,
													"fontsize" : 12.0,
													"id" : "obj-5",
													"linecount" : 185,
													"maxclass" : "o.expr.codebox",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "FullPacket", "FullPacket" ],
													"patching_rect" : [ 50.0, 100.0, 1537.0, 2547.0 ],
													"text" : "\n/npages = 20,\n/secPerPage ??= 36,\n\n/x = 200,\n/y = 100,\n\n#/numbersY = 350,\n/numbersY = 80,\n\n/scale = 10,\n\n/stafflength = 731.441 * /scale,\n/leadin = 200 + /x,\n\n/scoreWidth = /stafflength * /npages ,\n\n/pixWidth = /scoreWidth + /leadin,\n\n/secPerPix = /secPerPage / float32(/stafflength) ,\n\n/totalduration = /pixWidth * /secPerPix,\n\n/miniscaleX = 1080. / /pixWidth,\n\n/ministartX = 20,\n/ministartY = 700,\n\n/pages = aseq(1,/npages),\n\n\n/tween./id = \"score-anim\",\n/tween./target = \"#score\",\n/tween./dur = /totalduration,\n/tvars./x = -/pixWidth,\n/tvars./ease = \"linear\",\n/tvars./paused = \"true\",\n\n/tvars./onUpdate = \" \n  if( this.time() % 1\t< 0.05){\n    let text = document.getElementById('timecount');\n    text.innerHTML = Math.floor( this.time() );\n  }\n\",\n\n/tween./vars = /tvars,\n\n\n/tween2./id = \"miniscore-anim\",\n/tween2./target = \"#miniplayhead\",\n/tween2./dur = /totalduration,\n/tvars2./x = \"+= 1080\",\n/tvars2./ease = \"linear\",\n/tvars2./paused = \"true\",\n\n/tween2./vars = /tvars2,\n\n/newtween./key = \"tween\",\n/newtween./val = [/tween, /tween2],\n\n#/out/all = /newtween,\n\n/instr = [\"vln\", \"vln\", \"fl\", \"fl\", \"cl\", \"asax\", \"trb\", \"vc\", \"perc\", \"sopr\", \"egtr\", \"accord\", \"vln\", \"vla\", \"fl\", \"srec\", \"cl\", \"trp\", \"tuba\", \"vc\", \"perc\", \"sopr\", \"egtr\", \"accord\", \"vln\", \"vln\", \"fl\", \"ob\", \"cl\", \"tsax\", \"trb\", \"vc\", \"perc\", \"sopr\", \"egtr\", \"accord\", \"vln\", \"vla\", \"fl\", \"brec\", \"cl\", \"asax\", \"bsn\", \"db\", \"perc\", \"baritone\", \"egtr\", \"accord\", \"vln\", \"vln\", \"fl\", \"trec\", \"cl\", \"trp\", \"trb\", \"vc\", \"perc\", \"sopr\", \"egtr\", \"accord\", \"vln\", \"vla\", \"fl\", \"ob\", \"cl\", \"tsax\", \"btuba\", \"vc\", \"perc\", \"sopr\", \"egtr\", \"accord\"],\n\n/instrB = [ \"subrec\", #40 + 72 = 112\n            \"arec\", #64 + 72 = 136\n            \"hrn\" ], #67 + 72 = 139\n            \n\n/players = aseq(1,72),\n\n\n\nmap(\n  lambda([i],\n    /prefix = \"/\"+i,\n\n    /pid./new = \"text\",\n    /pid./id = \"playerID\",\n    /pid./x = 10,\n    /pid./y = 80,\n    /pid./text = i+\" \"+/instr[[i-1]],\n\n    /svg = /pid,\n\n    /n./parent = \"defscore\",\n    /n./new = \"use\",\n\n\n        map(\n          lambda([page],\n            /n./id = \"p\" + page,\n            /n./x = /leadin + ((page - 1) * /stafflength),\n            /n./y = /y,\n\n            /layername = \"Layer_\" +i+ \"_\" +/instr[[i-1]],\n            /pageZeroPadded = (page < 10 ? \"0\" : \"\")+page,\n            /n./href = [\"scores/rama/\" +/layername+ \".svg#\"+ /layername +\"-\"+ /pageZeroPadded , 1], \n\n            /n./transform = \"scale(\"+/scale+\")\",\n            /svg = [/svg, /n],\n\n            /n./id = \"n\"+page,\n            /n./y = /numbersY,\n            /n./href = [\"scores/rama/\" +/layername+ \".svg#count-\"+ (page < 10 ? \"0\" : \"\")+page , 1]#, \n\n          #  /svg = [/svg, /n]\n\n          ), /pages\n        ),\n\n  /new./key = \"svg\",\n  /new./val = /svg,\n\n  assign(\"/out\"+/prefix, /new )\n\n\n  ),  /players \n),\n\n/miniscore./id = \"mini\",\n/miniscore./new = \"use\",\n/miniscore./href = \"#defscore\",\n/miniscore./y = 720,\n/miniscore./x = /ministartX / /miniscaleX,\n/miniscore./transform = \"scale(\"+/miniscaleX+\", 0.5)\",\n/miniscore./class = \"noclick\",\n\n/scrollbar./parent = \"overlay\",\n/scrollbar./id = \"scrollbar\",\n/scrollbar./new = \"rect\",\n/scrollbar./x = /ministartX,\n/scrollbar./y = 400,\n/scrollbar./height = 15,\n/scrollbar./width = 1080,\n/scrollbar./fill = \"rgba(0,0,255,0.5)\",\n\n/scrollbar./onmousemove = \"    \n    event.preventDefault();\n    let x = event.clientX;\n    if(event.buttons == 1){\n      let r = ((x-20) / 1080) * \"+ /totalduration +\";\n\n      drawsocket.input({\n        key: 'tween',\n        val: [{\n          id: 'score-anim',\n          cmd: 'pause',\n          time: r \n        }, {\n          id: 'miniscore-anim',\n          cmd: 'pause',\n          time: r\n        }]\n      });\n      let uiTxt = document.getElementById('userinput');\n      uiTxt.value = r;\n    }\",\n/scrollbar./ontouchmove = \"\n    event.preventDefault();\n    let x = event.pageX;\n\n      let r = ((x-20) / 1080) * \"+ /totalduration +\";\n\n      drawsocket.input({\n        key: 'tween',\n        val: [{\n          id: 'score-anim',\n          cmd: 'pause',\n          time: r \n        }, {\n          id: 'miniscore-anim',\n          cmd: 'pause',\n          time: r\n        }]\n       });\n    let uiTxt = document.getElementById('userinput');\n    uiTxt.value = r;\n    \",\n\n/minisvg./key = \"svg\",\n/minisvg./val = [/miniscore, /scrollbar],\nassign(\"/out2/*\", [/newtween, /minisvg])\n"
												}

											}
 ],
										"lines" : [  ]
									}
,
									"patching_rect" : [ 307.0, 12.0, 57.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p backup"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "dictionary", "", "", "" ],
									"patching_rect" : [ 71.0, 1666.0, 50.5, 22.0 ],
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
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 85.0, 1600.0, 37.0, 22.0 ],
									"text" : "o.dict"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-8",
									"linecount" : 296,
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 370.0, 48.0, 826.0, 4056.0 ],
									"text" : "#---- Layout\n\n/npages = 20,\n/secPerPage ??= 36,\n\n/x = 250,\n/y = 100,\n\n#/numbersY = 350,\n/numbersY = 80,\n\n/scale = 10,\n\n/stafflength = 731.441 * /scale,\n/leadin = 200 + /x,\n\n/scoreWidth = /stafflength * /npages ,\n\n/pixWidth = /scoreWidth + /leadin,\n\n/secPerPix = /secPerPage / float32(/stafflength) ,\n\n/totalduration = /pixWidth * /secPerPix,\n\n/miniscaleX = 1080. / /pixWidth,\n\n/ministartX = 20,\n/ministartY = 700,\n\n#---- UI and Tween Setup\n/miniscore./id = \"mini\",\n/miniscore./parent = \"scoreGroup\",\n/miniscore./new = \"use\",\n/miniscore./href = \"#defscore\",\n/miniscore./y = 720,\n/miniscore./x = /ministartX / /miniscaleX,\n/miniscore./transform = \"scale(\"+/miniscaleX+\", 0.5)\",\n/miniscore./class = \"noclick\",\n\n/scrollbar./parent = \"overlay\",\n/scrollbar./id = \"scrollbar\",\n/scrollbar./new = \"rect\",\n/scrollbar./x = /ministartX,\n/scrollbar./y = 400,\n/scrollbar./height = 15,\n/scrollbar./width = 1080,\n/scrollbar./fill = \"rgba(0,0,255,0.5)\",\n\n/scrollbar./onmousemove = \"    \n    event.preventDefault();\n    let x = event.clientX;\n    if(event.buttons == 1){\n      let r = ((x-20) / 1080) * \"+ /totalduration +\";\n\n      drawsocket.input({\n        key: 'tween',\n        val: [{\n          id: 'score-anim',\n          cmd: 'pause',\n          time: r \n        }, {\n          id: 'miniscore-anim',\n          cmd: 'pause',\n          time: r\n        }]\n      });\n      let uiTxt = document.getElementById('userinput');\n      uiTxt.value = r;\n    }\",\n/scrollbar./ontouchmove = \"\n    event.preventDefault();\n    let x = event.pageX;\n\n      let r = ((x-20) / 1080) * \"+ /totalduration +\";\n\n      drawsocket.input({\n        key: 'tween',\n        val: [{\n          id: 'score-anim',\n          cmd: 'pause',\n          time: r \n        }, {\n          id: 'miniscore-anim',\n          cmd: 'pause',\n          time: r\n        }]\n       });\n    let uiTxt = document.getElementById('userinput');\n    uiTxt.value = r;\n    \",\n\n\n\n/ui/svg./val = [/ui/svg./val, /miniscore, /scrollbar],\n\n/pages = aseq(1,/npages),\n\n/tween./id = \"score-anim\",\n/tween./target = \"#score\",\n/tween./dur = /totalduration,\n/tvars./x = -/pixWidth,\n/tvars./ease = \"linear\",\n/tvars./paused = \"true\",\n\n/onUpdate./function = \" \n  if( this.time() % 1\t< 0.05){\n    let text = document.getElementById('timecount');\n    text.innerHTML = Math.floor( this.time() );\n  }\n\",\n\n/tvars./onUpdate = /onUpdate,\n\n/tween./vars = /tvars,\n\n\n/tween2./id = \"miniscore-anim\",\n/tween2./target = \"#miniplayhead\",\n/tween2./dur = /totalduration,\n/tvars2./x = \"+= 1080\",\n/tvars2./ease = \"linear\",\n/tvars2./paused = \"true\",\n\n/tween2./vars = /tvars2,\n\n/newtween./key = \"tween\",\n/newtween./val = [/tween, /tween2],\n\n\n#---- Score Setup\n\n/instr = [\"vln\", \"vln\", \"fl\", \"fl\", \"cl\", \"asax\", \"trb\", \"vc\", \"perc\", \"sopr\", \"egtr\", \"accord\", \"vln\", \"vla\", \"fl\", \"srec\", \"cl\", \"trp\", \"tuba\", \"vc\", \"perc\", \"sopr\", \"egtr\", \"accord\", \"vln\", \"vln\", \"fl\", \"ob\", \"cl\", \"tsax\", \"trb\", \"vc\", \"perc\", \"sopr\", \"egtr\", \"accord\", \"vln\", \"vla\", \"fl\", \"brec\", \"cl\", \"asax\", \"bsn\", \"db\", \"perc\", \"baritone\", \"egtr\", \"accord\", \"vln\", \"vln\", \"fl\", \"trec\", \"cl\", \"trp\", \"trb\", \"vc\", \"perc\", \"sopr\", \"egtr\", \"accord\", \"vln\", \"vla\", \"fl\", \"ob\", \"cl\", \"tsax\", \"btuba\", \"vc\", \"perc\", \"sopr\", \"egtr\", \"accord\"],\n\n/instrB = [ \"subrec\", #40 + 72 = 112\n            \"arec\", #64 + 72 = 136\n            \"hrn\" ], #67 + 72 = 139\n\n\n\n/instrNameList = [\"violin\", \"violin\", \"flute\", \"flute\", \"clarinet in Bb\", \"alto sax in Eb\", \"trombone\", \"violoncello\", \"percussion\", \"soprano\", \"e.guitar\", \"accordion\", \"violin\", \"viola\", \"flute\", \"soprano recorder\", \"clarinet in Bb\", \"trumpet in Bb\", \"tuba\", \"violoncello\", \"percussion\", \"soprano\", \"e.guitar\", \"accordion\", \"violin\", \"violin\", \"flute\", \"oboe\", \"clarinet in Bb\", \"tenor sax in Bb\", \"trombone\", \"violoncello\", \"percussion\", \"soprano\", \"e.guitar\", \"accordion\", \"violin\", \"viola\", \"flute\", \"bass recorder\", \"clarinet in Bb\", \"alto sax in Eb\", \"bassoon\", \"double bass\", \"percussion\", \"baritone\", \"e.guitar\", \"accordion\", \"violin\", \"violin\", \"flute\", \"tenor recorder\", \"clarinet in Bb\", \"trumpet in Bb\", \"trombone\", \"violoncello\", \"percussion\", \"soprano\", \"e.guitar\", \"accordion\", \"violin\", \"viola\", \"flute\", \"oboe\", \"clarinet in Bb\", \"tenor sax in Bb\", \"bass tuba\", \"violoncello\", \"percussion\", \"soprano\", \"e.guitar\", \"accordion\"],\n\n/getName = quote(lambda([i],\n          if(i == 111, \"sub recorder\",\n             if( i == 135, \"alto recorder\",\n              if( i == 138, \"horn in F\",\n                /instrNameList[[ i % 72 ]]\n          )))\n)),\n\n\n/gclef = [\"vln\", \"fl\", \"ob\",\"arec\", \"trec\", \"cl\", \"trp\",  \"asax\", \"tsax\", \"sopr\", \"hrn\"],\n/fclef = [\"trb\", \"tuba\", \"btuba\", \"vc\", \"db\", \"subrec\", \"bsn\", \"baritone\" ],\n\n/getClef = quote(lambda([instr],\n  if( max( instr == /gclef ) > 0, [\"clef-1-vln\", 64],\n    if( max( instr == /fclef ) > 0, [\"clef-7-trb\", 80],\n      if( instr == \"accord\", [\"clef-12-accord\", 56],\n        if( instr == \"egtr\", [\"clef-11-egtr\", 56],\n          if( instr == \"srec\", [\"clef-16-srec\", 64],\n            if( instr == \"brec\", [\"clef-40-brec\", 64],\n              if( instr == \"vla\", [\"clef-14-vla\", 80]\n  )))))))\n)),\n\n\n/players = aseq(1,72),\n\n/n./parent = \"defscore\",\n/n./new = \"use\",\n/pid./new = \"text\",\n/pid./id = \"playerID\",\n/pid./x = 10,\n/pid./y = 80,\n\n/score./id = \"score\",\n/score./parent = \"scoreGroup\",\n/score./new = \"use\",\n/score./href = \"#defscore\",\n\n/new./key = \"svg\",\n\n/clefbackground./id = \"whiteout\",\n/clefbackground./parent = \"scoreGroup\",\n/clefbackground./new = \"rect\",\n/clefbackground./x = 0,\n/clefbackground./y = 75,\n/clefbackground./width = 100,\n/clefbackground./height = 250,\n/clefbackground./fill = \"white\",\n\n\nmap(\n  lambda([i],\n\n    /pid./text = i+\" \"+/getName(i-1),\n    /svg = /pid,\n\n    /prefix = \"/\"+i,\n\n    map(\n      lambda([page],\n        /n./id = \"p\" + page,\n        /n./x = /leadin + ((page - 1) * /stafflength),\n        /n./y = /y,\n\n        /layername = \"Layer_\" +i+ \"_\" +/instr[[i-1]],\n        /pageZeroPadded = (page < 10 ? \"0\" : \"\")+page,\n        /n./href = [\"scores/rama/\" +/layername+ \".svg#\"+ /layername +\"-\"+ /pageZeroPadded , 1], \n        /n./transform = \"scale(\"+/scale+\")\",\n\n        /svg = [/svg, /n]\n\n      ), /pages\n    ),\n\n    /svg = [/ui/svg./val, /svg, /score],\n\n    if( /instr[[i-1]] != \"perc\",\n      progn(\n        /lookupClef = /getClef( /instr[[i-1]] ),\n        /clef./parent = \"scoreGroup\",\n        /clef./id = \"clef\",\n        /clef./new = \"use\",\n        /clef./href = [ \"scores/rama/clefs.svg#\"+  /lookupClef[[0]]  , 1],\n        /clef./y = /y + /lookupClef[[1]] ,\n        /clef./x = 0,\n        /clef./transform = \"scale(\"+/scale+\")\",\n\n        /svg = [/svg, /clefbackground, /clef]\n      )\n    ),\n    \n    /new./val = /svg,\n    assign(\"/out\"+/prefix, [/ui/css, /ui/html, /new, /newtween] ),\n\n  #---- Add extra instruments if necessary\n    if( i == 40 || i == 64 || i == 67, \n      progn(\n        /instrName = if( i == 40, /instrB[[0]],\n                       if( i == 64, /instrB[[1]],\n                         if( i == 67, /instrB[[2]]))),\n\n        /pid./text = i+\" \"+/instrName,\n        /svg = /pid,\n\n        /prefix = \"/\" +i+ \"b\",\n\n        map(\n          lambda([page],\n            /n./id = \"p\" + page,\n            /n./x = /leadin + ((page - 1) * /stafflength),\n            /n./y = /y,\n\n            /layername = \"Layer_\" +i+ \"b_\" +/instrName,\n            /pageZeroPadded = (page < 10 ? \"0\" : \"\")+page,\n            /n./href = [\"scores/rama/\" +/layername+ \".svg#\"+ /layername +\"-\"+ /pageZeroPadded , 1], \n            /n./transform = \"scale(\"+/scale+\")\",\n\n            /svg = [/svg, /n]\n\n          ), /pages\n        ),\n\n        /svg = [/ui/svg./val, /svg, /score],\n\n        /lookupClef = /getClef( /instrName ),\n        /clef./parent = \"scoreGroup\",\n        /clef./id = \"clef\",\n        /clef./new = \"use\",\n        /clef./href = [ \"scores/rama/clefs.svg#\"+  /lookupClef[[0]]  , 1],\n        /clef./y = /y + /lookupClef[[1]] ,\n        /clef./x = 0,\n        /clef./transform = \"scale(\"+/scale+\")\",\n\n        /svg = [/svg, /clefbackground, /clef],    \n        /new./val = /svg,\n\n        assign(\"/out\"+/prefix, [/ui/css, /ui/html, /new, /newtween] )\n\n      )\n    )\n\n  ),  /players \n)\n"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-12",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 39.999999999999936, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-13",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 88.5, 1951.705672999999933, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-12", 0 ]
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
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "black on white",
								"number" : 								{
									"fontname" : [ "Arial" ],
									"fontsize" : [ 12.0 ],
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ]
								}
,
								"umenu" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color" : [ 1.0, 1.0, 1.0, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ]
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
									"fontname" : [ "Arial" ],
									"fontface" : [ 3 ],
									"fontsize" : [ 15.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "section info reg",
								"default" : 								{
									"fontname" : [ "Arial" ],
									"fontsize" : [ 12.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "titles",
								"default" : 								{
									"fontname" : [ "Arial" ],
									"fontface" : [ 1 ],
									"fontsize" : [ 20.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 246.0, 245.29432700000001, 64.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p codebox"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"rect" : [ 204.0, 79.0, 1120.0, 859.0 ],
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
									"id" : "obj-10",
									"linecount" : 107,
									"maxclass" : "o.compose",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 726.0, 1465.0 ],
									"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, -32, 47, 42, 0, 0, 44, 46, 46, 0, 0, 0, 0, -56, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 99, 115, 115, 0, 0, 0, 0, -96, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 0, 0, 0, 0, 0, -112, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 101, 108, 101, 99, 116, 111, 114, 0, 0, 0, 44, 115, 0, 0, 46, 114, 101, 97, 100, 121, 0, 0, 0, 0, 0, 96, 47, 112, 114, 111, 112, 115, 0, 0, 44, 46, 0, 0, 0, 0, 0, 80, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 98, 97, 99, 107, 103, 114, 111, 117, 110, 100, 45, 99, 111, 108, 111, 114, 0, 0, 0, 44, 115, 0, 0, 108, 105, 103, 104, 116, 98, 108, 117, 101, 0, 0, 0, 0, 0, 0, 20, 47, 99, 111, 108, 111, 114, 0, 0, 44, 115, 0, 0, 98, 108, 97, 99, 107, 0, 0, 0, 0, 0, 9, 8, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 107, 101, 121, 0, 0, 0, 0, 44, 115, 0, 0, 104, 116, 109, 108, 0, 0, 0, 0, 0, 0, 8, -36, 47, 118, 97, 108, 0, 0, 0, 0, 44, 46, 46, 46, 46, 0, 0, 0, 0, 0, 0, -64, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 102, 111, 114, 109, 115, 0, 0, 0, 0, 0, 0, 12, 47, 105, 100, 0, 44, 115, 0, 0, 85, 73, 0, 0, 0, 0, 0, 16, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 100, 105, 118, 0, 0, 0, 0, 112, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 112, 111, 115, 105, 116, 105, 111, 110, 0, 0, 0, 44, 115, 0, 0, 97, 98, 115, 111, 108, 117, 116, 101, 0, 0, 0, 0, 0, 0, 0, 20, 47, 102, 108, 111, 97, 116, 0, 0, 44, 115, 0, 0, 108, 101, 102, 116, 0, 0, 0, 0, 0, 0, 0, 20, 47, 119, 105, 100, 116, 104, 0, 0, 44, 115, 0, 0, 49, 48, 48, 118, 119, 0, 0, 0, 0, 0, 3, -44, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 85, 73, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 112, 108, 97, 121, 98, 117, 116, 116, 111, 110, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 98, 117, 116, 116, 111, 110, 0, 0, 0, 0, 0, 20, 47, 116, 101, 120, 116, 0, 0, 0, 44, 115, 0, 0, 112, 108, 97, 121, 0, 0, 0, 0, 0, 0, 0, 20, 47, 99, 108, 97, 115, 115, 0, 0, 44, 115, 0, 0, 98, 117, 116, 116, 111, 110, 0, 0, 0, 0, 0, 56, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 40, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 102, 108, 111, 97, 116, 0, 0, 44, 115, 0, 0, 108, 101, 102, 116, 0, 0, 0, 0, 0, 0, 3, 16, 47, 111, 110, 99, 108, 105, 99, 107, 0, 0, 0, 0, 44, 115, 0, 0, 10, 32, 32, 32, 32, 32, 105, 102, 40, 32, 33, 116, 104, 105, 115, 46, 99, 108, 97, 115, 115, 76, 105, 115, 116, 46, 99, 111, 110, 116, 97, 105, 110, 115, 40, 39, 114, 101, 97, 100, 121, 39, 41, 32, 41, 10, 32, 32, 32, 32, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 116, 104, 105, 115, 46, 99, 108, 97, 115, 115, 76, 105, 115, 116, 46, 97, 100, 100, 40, 39, 114, 101, 97, 100, 121, 39, 41, 59, 10, 32, 32, 32, 32, 32, 32, 32, 32, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 105, 110, 112, 117, 116, 40, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 107, 101, 121, 58, 32, 39, 116, 119, 101, 101, 110, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 97, 108, 58, 32, 91, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 58, 32, 39, 115, 99, 111, 114, 101, 45, 97, 110, 105, 109, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 9, 9, 32, 32, 32, 99, 109, 100, 32, 58, 32, 39, 112, 108, 97, 121, 39, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 58, 32, 39, 109, 105, 110, 105, 115, 99, 111, 114, 101, 45, 97, 110, 105, 109, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 9, 9, 32, 32, 32, 99, 109, 100, 32, 58, 32, 39, 112, 108, 97, 121, 39, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 32, 93, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 109, 101, 116, 97, 103, 58, 32, 68, 97, 116, 101, 46, 110, 111, 119, 40, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 125, 41, 59, 10, 32, 32, 32, 32, 32, 125, 32, 101, 108, 115, 101, 32, 123, 32, 10, 32, 32, 32, 32, 32, 32, 32, 32, 116, 104, 105, 115, 46, 99, 108, 97, 115, 115, 76, 105, 115, 116, 46, 114, 101, 109, 111, 118, 101, 40, 39, 114, 101, 97, 100, 121, 39, 41, 59, 10, 10, 32, 32, 32, 32, 32, 32, 32, 108, 101, 116, 32, 115, 116, 97, 114, 116, 116, 105, 109, 101, 32, 61, 32, 100, 111, 99, 117, 109, 101, 110, 116, 46, 103, 101, 116, 69, 108, 101, 109, 101, 110, 116, 66, 121, 73, 100, 40, 39, 117, 115, 101, 114, 105, 110, 112, 117, 116, 39, 41, 59, 10, 10, 32, 32, 32, 32, 32, 32, 32, 32, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 105, 110, 112, 117, 116, 40, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 107, 101, 121, 58, 32, 39, 116, 119, 101, 101, 110, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 97, 108, 58, 32, 91, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 58, 32, 39, 115, 99, 111, 114, 101, 45, 97, 110, 105, 109, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 9, 9, 32, 32, 32, 99, 109, 100, 58, 32, 39, 112, 97, 117, 115, 101, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 109, 101, 58, 32, 115, 116, 97, 114, 116, 116, 105, 109, 101, 46, 118, 97, 108, 117, 101, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 58, 32, 39, 109, 105, 110, 105, 115, 99, 111, 114, 101, 45, 97, 110, 105, 109, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 9, 9, 32, 32, 32, 99, 109, 100, 32, 58, 32, 39, 112, 97, 117, 115, 101, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 109, 101, 58, 32, 115, 116, 97, 114, 116, 116, 105, 109, 101, 46, 118, 97, 108, 117, 101, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 93, 10, 32, 32, 32, 32, 32, 32, 32, 32, 125, 41, 59, 10, 32, 32, 32, 32, 32, 125, 0, 0, 0, 0, 0, 0, 1, 28, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 85, 73, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 108, 97, 98, 101, 108, 0, 0, 0, 0, 0, 0, 24, 47, 102, 111, 114, 0, 0, 0, 0, 44, 115, 0, 0, 117, 115, 101, 114, 105, 110, 112, 117, 116, 0, 0, 0, 0, 0, 0, 16, 47, 105, 100, 0, 44, 115, 0, 0, 115, 101, 110, 116, 0, 0, 0, 0, 0, 0, 0, 20, 47, 110, 97, 109, 101, 0, 0, 0, 44, 115, 0, 0, 115, 101, 110, 116, 0, 0, 0, 0, 0, 0, 0, 32, 47, 116, 101, 120, 116, 0, 0, 0, 44, 115, 0, 0, 115, 116, 97, 114, 116, 32, 97, 116, 32, 116, 105, 109, 101, 60, 98, 114, 62, 0, 0, 0, 0, 0, 0, 112, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 96, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 47, 102, 111, 110, 116, 45, 115, 105, 122, 101, 0, 0, 44, 115, 0, 0, 54, 48, 37, 0, 0, 0, 0, 20, 47, 99, 111, 108, 111, 114, 0, 0, 44, 115, 0, 0, 103, 114, 97, 121, 0, 0, 0, 0, 0, 0, 0, 28, 47, 109, 97, 114, 103, 105, 110, 45, 108, 101, 102, 116, 0, 0, 0, 0, 44, 115, 0, 0, 50, 48, 112, 120, 0, 0, 0, 0, 0, 0, 3, 12, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 47, 112, 97, 114, 101, 110, 116, 0, 44, 115, 0, 0, 85, 73, 0, 0, 0, 0, 0, 20, 47, 110, 101, 119, 0, 0, 0, 0, 44, 115, 0, 0, 105, 110, 112, 117, 116, 0, 0, 0, 0, 0, 0, 20, 47, 116, 121, 112, 101, 0, 0, 0, 44, 115, 0, 0, 116, 101, 120, 116, 0, 0, 0, 0, 0, 0, 0, 20, 47, 105, 100, 0, 44, 115, 0, 0, 117, 115, 101, 114, 105, 110, 112, 117, 116, 0, 0, 0, 0, 0, 0, 24, 47, 110, 97, 109, 101, 0, 0, 0, 44, 115, 0, 0, 117, 115, 101, 114, 105, 110, 112, 117, 116, 0, 0, 0, 0, 0, 0, 24, 47, 112, 108, 97, 99, 101, 104, 111, 108, 100, 101, 114, 0, 0, 0, 0, 44, 115, 0, 0, 48, 0, 0, 0, 0, 0, 0, 16, 47, 115, 105, 122, 101, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 5, 0, 0, 1, -16, 47, 111, 110, 107, 101, 121, 100, 111, 119, 110, 0, 0, 44, 115, 0, 0, 10, 32, 32, 32, 32, 32, 105, 102, 40, 32, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 115, 117, 98, 109, 105, 116, 79, 110, 69, 110, 116, 101, 114, 75, 101, 121, 40, 116, 104, 105, 115, 41, 32, 41, 32, 123, 32, 10, 32, 32, 32, 32, 32, 32, 32, 108, 101, 116, 32, 98, 117, 116, 116, 111, 110, 32, 61, 32, 100, 111, 99, 117, 109, 101, 110, 116, 46, 103, 101, 116, 69, 108, 101, 109, 101, 110, 116, 66, 121, 73, 100, 40, 39, 112, 108, 97, 121, 98, 117, 116, 116, 111, 110, 39, 41, 59, 10, 32, 32, 32, 32, 32, 32, 32, 105, 102, 40, 32, 98, 117, 116, 116, 111, 110, 46, 99, 108, 97, 115, 115, 76, 105, 115, 116, 46, 99, 111, 110, 116, 97, 105, 110, 115, 40, 39, 114, 101, 97, 100, 121, 39, 41, 32, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 98, 117, 116, 116, 111, 110, 46, 99, 108, 97, 115, 115, 76, 105, 115, 116, 46, 114, 101, 109, 111, 118, 101, 40, 39, 114, 101, 97, 100, 121, 39, 41, 59, 10, 10, 32, 32, 32, 32, 32, 32, 32, 100, 114, 97, 119, 115, 111, 99, 107, 101, 116, 46, 105, 110, 112, 117, 116, 40, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 107, 101, 121, 58, 32, 39, 116, 119, 101, 101, 110, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 118, 97, 108, 58, 32, 91, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 58, 32, 39, 115, 99, 111, 114, 101, 45, 97, 110, 105, 109, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 109, 100, 58, 32, 39, 112, 97, 117, 115, 101, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 109, 101, 58, 32, 116, 104, 105, 115, 46, 118, 97, 108, 117, 101, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 44, 32, 123, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 100, 58, 32, 39, 109, 105, 110, 105, 115, 99, 111, 114, 101, 45, 97, 110, 105, 109, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 9, 9, 32, 99, 109, 100, 32, 58, 32, 39, 112, 97, 117, 115, 101, 39, 44, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 116, 105, 109, 101, 58, 32, 116, 104, 105, 115, 46, 118, 97, 108, 117, 101, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 125, 93, 10, 32, 32, 32, 32, 32, 32, 32, 125, 41, 59, 10, 32, 32, 32, 32, 32, 125, 0, 0, 0, 0, 92, 47, 115, 116, 121, 108, 101, 0, 0, 44, 46, 0, 0, 0, 0, 0, 76, 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 109, 97, 114, 103, 105, 110, 45, 108, 101, 102, 116, 0, 0, 0, 0, 44, 115, 0, 0, 51, 53, 112, 120, 0, 0, 0, 0, 0, 0, 0, 24, 47, 116, 101, 120, 116, 45, 97, 108, 105, 103, 110, 0, 44, 115, 0, 0, 99, 101, 110, 116, 101, 114, 0, 0 ],
									"saved_bundle_length" : 2548,
									"text" : "/* : [{\n\t/key : \"css\",\n\t/val : {\n\t\t/selector : \".ready\",\n\t\t/props : {\n\t\t\t/background-color : \"lightblue\",\n\t\t\t/color : \"black\"\n\t\t}\n\t}\n}, {\n\t/key : \"html\",\n\t/val : [{\n\t\t/parent : \"forms\",\n\t\t/id : \"UI\",\n\t\t/new : \"div\",\n\t\t/style : {\n\t\t\t/position : \"absolute\",\n\t\t\t/float : \"left\",\n\t\t\t/width : \"100vw\"\n\t\t}\n\t}, {\n\t\t/parent : \"UI\",\n\t\t/id : \"playbutton\",\n\t\t/new : \"button\",\n\t\t/text : \"play\",\n\t\t/class : \"button\",\n\t\t/style : {\n\t\t\t/float : \"left\"\n\t\t},\n\t\t/onclick : \"\n     if( !this.classList.contains('ready') )\n     {\n        this.classList.add('ready');\n        drawsocket.input({\n          key: 'tween',\n          val: [ {\n            id: 'score-anim',\n       \t\t   cmd : 'play'\n          }, {\n            id: 'miniscore-anim',\n       \t\t   cmd : 'play'\n          } ],\n          timetag: Date.now()\n        });\n     } else { \n        this.classList.remove('ready');\n\n       let starttime = document.getElementById('userinput');\n\n        drawsocket.input({\n          key: 'tween',\n          val: [{\n            id: 'score-anim',\n       \t\t   cmd: 'pause',\n            time: starttime.value\n          }, {\n            id: 'miniscore-anim',\n       \t\t   cmd : 'pause',\n            time: starttime.value\n          }]\n        });\n     }\"\n\t}, {\n\t\t/parent : \"UI\",\n\t\t/new : \"label\",\n\t\t/for : \"userinput\",\n\t\t/id : \"sent\",\n\t\t/name : \"sent\",\n\t\t/text : \"start at time<br>\",\n\t\t/style : {\n\t\t\t/font-size : \"60%\",\n\t\t\t/color : \"gray\",\n\t\t\t/margin-left : \"20px\"\n\t\t}\n\t}, {\n\t\t/parent : \"UI\",\n\t\t/new : \"input\",\n\t\t/type : \"text\",\n\t\t/id : \"userinput\",\n\t\t/name : \"userinput\",\n\t\t/placeholder : \"0\",\n\t\t/size : 5,\n\t\t/onkeydown : \"\n     if( drawsocket.submitOnEnterKey(this) ) { \n       let button = document.getElementById('playbutton');\n       if( button.classList.contains('ready') )\n            button.classList.remove('ready');\n\n       drawsocket.input({\n         key: 'tween',\n         val: [{\n           id: 'score-anim',\n           cmd: 'pause',\n           time: this.value\n         }, {\n          id: 'miniscore-anim',\n       \t\t cmd : 'pause',\n          time: this.value\n          }]\n       });\n     }\",\n\t\t/style : {\n\t\t\t/margin-left : \"35px\",\n\t\t\t/text-align : \"center\"\n\t\t}\n\t}]\n}]"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-14",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-15",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 1625.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 38.0, 175.0, 85.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p make button"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 38.0, 141.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 246.0, 402.0, 116.0, 22.0 ],
					"text" : "import echoic-1.json"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 246.0, 437.0, 50.5, 22.0 ],
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
					"fontsize" : 14.0,
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 89.0, 149.0, 22.0 ],
					"text" : "Part 2: user interaction"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 51.0, 149.0, 22.0 ],
					"text" : "Part 2: user interaction"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 593.5, 447.0, 129.0, 35.0 ],
					"text" : ";\rmax launchbrowser $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 593.5, 413.0, 355.0, 22.0 ],
					"text" : "http://localhost:3002/webview.html?fetch=echoic-1.json&prefix=/1"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 210.0, 568.33331298828125, 208.0, 22.0 ],
					"text" : "webserver is the root html folder"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-8",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 88.0, 507.0, 330.0, 53.0 ],
					"text" : "Note: we are not sending any messages to the server after startup, which means these views are purely run in the browser."
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 14.0,
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 17.0, 546.0, 22.0 ],
					"text" : "Using the Drawsocket client-side functionality on a standard webserver outside of Max."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-6",
					"linecount" : 2,
					"maxclass" : "o.display",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.0, 633.0, 313.0, 48.0 ],
					"text" : "/port/localhost : \"http://localhost:3002\",\n/port/ip : \"http://192.168.178.177:3002\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 20.0, 607.0, 77.0, 22.0 ],
					"text" : "o.select /port"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.0, 512.83331298828125, 64.0, 22.0 ],
					"text" : "script start"
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
					"patching_rect" : [ 20.0, 566.33331298828125, 179.0, 24.0 ],
					"text" : "hfmt.drawsocket webserver"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.0, 538.0, 63.0, 22.0 ],
					"text" : "script stop"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 189.5, 601.666656494140625, 29.5, 601.666656494140625 ],
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
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "hfmt.drawsocket.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/drawsocket/patchers",
				"patcherrelativepath" : "../../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "drawsocket-server.js",
				"bootpath" : "~/Documents/Max 8/Packages/drawsocket/code/node",
				"patcherrelativepath" : "../../code/node",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "startscript.js",
				"bootpath" : "~/Documents/Max 8/Packages/drawsocket/code",
				"patcherrelativepath" : "../../code",
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
					"fontname" : [ "Arial" ],
					"fontsize" : [ 12.0 ],
					"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ]
				}
,
				"umenu" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color" : [ 1.0, 1.0, 1.0, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 0.239216, 0.254902, 0.278431, 1.0 ]
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
					"fontname" : [ "Arial" ],
					"fontface" : [ 3 ],
					"fontsize" : [ 15.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "section info reg",
				"default" : 				{
					"fontname" : [ "Arial" ],
					"fontsize" : [ 12.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "titles",
				"default" : 				{
					"fontname" : [ "Arial" ],
					"fontface" : [ 1 ],
					"fontsize" : [ 20.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
