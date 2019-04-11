{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 210.0, 79.0, 1372.0, 787.0 ],
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
		"subpatcher_template" : "Default Max 7",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 932.5, 423.0, 35.0, 22.0 ],
					"presentation_rect" : [ 932.5, 423.0, 35.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1095.0, 461.0, 24.0, 24.0 ],
					"presentation_rect" : [ 1095.0, 461.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 992.5, 456.0, 54.0, 22.0 ],
					"presentation_rect" : [ 992.5, 456.0, 54.0, 22.0 ],
					"text" : "o.accum"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 992.5, 415.0, 128.0, 22.0 ],
					"presentation_rect" : [ 992.5, 415.0, 128.0, 22.0 ],
					"text" : "o.cond !emptybundle()"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-45",
					"linecount" : 34,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 938.5, 541.0, 337.0, 473.0 ],
					"presentation_linecount" : 34,
					"presentation_rect" : [ 938.5, 541.0, 337.0, 473.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, -33, 67, 89, 19, 113, -87, -4, 0, 0, 0, 0, 48, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 100, 114, 97, 119, 105, 110, 103, 47, 102, 105, 110, 103, 101, 114, 47, 48, 47, 101, 110, 100, 47, 120, 121, 0, 0, 44, 102, 102, 0, 68, 62, -64, 0, 68, 51, -128, 0, 0, 0, 0, 48, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 100, 114, 97, 119, 105, 110, 103, 47, 102, 105, 110, 103, 101, 114, 47, 48, 47, 101, 110, 100, 47, 120, 121, 0, 0, 44, 102, 102, 0, 67, 36, 0, 0, 68, 19, 64, 0, 0, 0, 0, 48, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 100, 114, 97, 119, 105, 110, 103, 47, 102, 105, 110, 103, 101, 114, 47, 45, 49, 47, 101, 110, 100, 47, 120, 121, 0, 44, 102, 102, 0, 67, -117, 0, 0, 67, -57, 0, 0, 0, 0, 0, 48, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 100, 114, 97, 119, 105, 110, 103, 47, 102, 105, 110, 103, 101, 114, 47, 49, 47, 109, 111, 118, 101, 47, 120, 121, 0, 44, 102, 102, 0, 67, 36, 0, 0, 68, 19, 64, 0, 0, 0, 0, 48, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 100, 114, 97, 119, 105, 110, 103, 47, 102, 105, 110, 103, 101, 114, 47, 48, 47, 109, 111, 118, 101, 47, 120, 121, 0, 44, 102, 102, 0, 68, 62, -64, 0, 68, 51, -128, 0, 0, 0, 0, 48, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 100, 114, 97, 119, 105, 110, 103, 47, 102, 105, 110, 103, 101, 114, 47, 50, 47, 109, 111, 118, 101, 47, 120, 121, 0, 44, 102, 102, 0, 67, -117, 0, 0, 67, -57, 0, 0, 0, 0, 0, 48, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 100, 114, 97, 119, 105, 110, 103, 47, 102, 105, 110, 103, 101, 114, 47, 49, 47, 101, 110, 100, 47, 120, 121, 0, 0, 44, 102, 102, 0, 68, 16, 0, 0, 67, -41, -128, 0, 0, 0, 0, 48, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 100, 114, 97, 119, 105, 110, 103, 47, 102, 105, 110, 103, 101, 114, 47, 52, 47, 109, 111, 118, 101, 47, 120, 121, 0, 44, 102, 102, 0, 67, -117, 0, 0, 67, -57, -128, 0, 0, 0, 0, 48, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 100, 114, 97, 119, 105, 110, 103, 47, 102, 105, 110, 103, 101, 114, 47, 51, 47, 109, 111, 118, 101, 47, 120, 121, 0, 44, 102, 102, 0, 67, 36, 0, 0, 68, 19, -64, 0, 0, 0, 0, 52, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 100, 114, 97, 119, 105, 110, 103, 47, 102, 105, 110, 103, 101, 114, 47, 45, 49, 47, 109, 111, 118, 101, 47, 120, 121, 0, 0, 0, 0, 44, 102, 102, 0, 67, -53, -128, 0, 67, -88, -128, 0, 0, 0, 0, 52, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 100, 114, 97, 119, 105, 110, 103, 47, 102, 105, 110, 103, 101, 114, 47, 52, 47, 115, 116, 97, 114, 116, 47, 120, 121, 0, 0, 0, 0, 44, 102, 102, 0, 67, -55, -128, 0, 67, -63, -128, 0, 0, 0, 0, 52, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 100, 114, 97, 119, 105, 110, 103, 47, 102, 105, 110, 103, 101, 114, 47, 51, 47, 115, 116, 97, 114, 116, 47, 120, 121, 0, 0, 0, 0, 44, 102, 102, 0, 68, 49, 0, 0, 67, -30, -128, 0, 0, 0, 0, 48, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 100, 114, 97, 119, 105, 110, 103, 47, 102, 105, 110, 103, 101, 114, 47, 51, 47, 101, 110, 100, 47, 120, 121, 0, 0, 44, 102, 102, 0, 68, 19, -64, 0, 68, 15, 0, 0, 0, 0, 0, 48, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 100, 114, 97, 119, 105, 110, 103, 47, 102, 105, 110, 103, 101, 114, 47, 50, 47, 101, 110, 100, 47, 120, 121, 0, 0, 44, 102, 102, 0, 67, -35, -128, 0, 67, -19, -128, 0, 0, 0, 0, 52, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 100, 114, 97, 119, 105, 110, 103, 47, 102, 105, 110, 103, 101, 114, 47, 50, 47, 115, 116, 97, 114, 116, 47, 120, 121, 0, 0, 0, 0, 44, 102, 102, 0, 67, -51, 0, 0, 67, -48, 0, 0, 0, 0, 0, 52, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 100, 114, 97, 119, 105, 110, 103, 47, 102, 105, 110, 103, 101, 114, 47, 48, 47, 115, 116, 97, 114, 116, 47, 120, 121, 0, 0, 0, 0, 44, 102, 102, 0, 68, 10, -64, 0, 67, -20, -128, 0, 0, 0, 0, 52, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 100, 114, 97, 119, 105, 110, 103, 47, 102, 105, 110, 103, 101, 114, 47, 49, 47, 115, 116, 97, 114, 116, 47, 120, 121, 0, 0, 0, 0, 44, 102, 102, 0, 68, 56, -128, 0, 68, 35, -128, 0 ],
					"saved_bundle_length" : 924,
					"text" : "/svgdraw/1/drawing/finger/0/end/xy : [763., 718.],\n/svgdraw/1/drawing/finger/0/end/xy : [164., 589.],\n/svgdraw/1/drawing/finger/-1/end/xy : [278., 398.],\n/svgdraw/1/drawing/finger/1/move/xy : [164., 589.],\n/svgdraw/1/drawing/finger/0/move/xy : [763., 718.],\n/svgdraw/1/drawing/finger/2/move/xy : [278., 398.],\n/svgdraw/1/drawing/finger/1/end/xy : [576., 431.],\n/svgdraw/1/drawing/finger/4/move/xy : [278., 399.],\n/svgdraw/1/drawing/finger/3/move/xy : [164., 591.],\n/svgdraw/1/drawing/finger/-1/move/xy : [407., 337.],\n/svgdraw/1/drawing/finger/4/start/xy : [403., 387.],\n/svgdraw/1/drawing/finger/3/start/xy : [708., 453.],\n/svgdraw/1/drawing/finger/3/end/xy : [591., 572.],\n/svgdraw/1/drawing/finger/2/end/xy : [443., 475.],\n/svgdraw/1/drawing/finger/2/start/xy : [410., 416.],\n/svgdraw/1/drawing/finger/0/start/xy : [555., 473.],\n/svgdraw/1/drawing/finger/1/start/xy : [738., 654.]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-44",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.5, 58.0, 345.0, 38.0 ],
					"presentation_linecount" : 2,
					"presentation_rect" : [ 30.5, 58.0, 345.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 100, 114, 97, 119, 0, 44, 115, 0, 0, 112, 105, 97, 110, 111, 45, 102, 108, 105, 110, 116, 95, 114, 101, 100, 117, 99, 101, 100, 46, 112, 100, 102, 0 ],
					"saved_bundle_length" : 68,
					"text" : "/svgdraw/1/foo/draw : \"piano-flint_reduced.pdf\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 992.5, 373.0, 133.0, 22.0 ],
					"presentation_rect" : [ 992.5, 373.0, 133.0, 22.0 ],
					"text" : "udpreceive 4002 cnmat"
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
					"patching_rect" : [ 148.5, 203.0, 359.0, 24.0 ],
					"presentation_rect" : [ 148.5, 203.0, 359.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 114, 111, 116, 97, 116, 101, 0, 44, 105, 0, 0, -1, -1, -1, -5 ],
					"saved_bundle_length" : 60,
					"text" : "/svgdraw/1/foo/transform/rotate : -5"
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
					"patching_rect" : [ 5.5, 384.0, 345.0, 38.0 ],
					"presentation_linecount" : 2,
					"presentation_rect" : [ 5.5, 384.0, 345.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 115, 99, 111, 114, 101, 47, 112, 100, 102, 0, 0, 0, 0, 44, 115, 0, 0, 112, 105, 97, 110, 111, 45, 102, 108, 105, 110, 116, 95, 114, 101, 100, 117, 99, 101, 100, 46, 112, 100, 102, 0 ],
					"saved_bundle_length" : 72,
					"text" : "/svgdraw/1/score/pdf : \"piano-flint_reduced.pdf\""
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
					"patching_rect" : [ 10.5, 429.0, 345.0, 24.0 ],
					"presentation_rect" : [ 10.5, 429.0, 345.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 99, 108, 101, 97, 114, 0, 0, 0, 0, 44, 0, 0, 0 ],
					"saved_bundle_length" : 44,
					"text" : "/svgdraw/1/clear"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-7",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 139.5, 500.0, 359.0, 24.0 ],
					"presentation_rect" : [ 139.5, 500.0, 359.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 116, 114, 97, 110, 115, 108, 97, 116, 101, 0, 0, 44, 105, 105, 0, 0, 0, 0, 100, 0, 0, 0, 100 ],
					"saved_bundle_length" : 68,
					"text" : "/svgdraw/1/foo/transform/translate : [100, 100]"
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
					"patching_rect" : [ 17.5, 460.0, 345.0, 24.0 ],
					"presentation_rect" : [ 17.5, 460.0, 345.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 100, 114, 97, 119, 47, 105, 109, 103, 0, 44, 115, 0, 0, 102, 101, 114, 110, 46, 106, 112, 103, 0, 0, 0, 0 ],
					"saved_bundle_length" : 60,
					"text" : "/svgdraw/1/foo/draw/img : \"fern.jpg\""
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-27",
					"linecount" : 3,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 267.5, 604.20001220703125, 280.0, 51.0 ],
					"presentation_linecount" : 3,
					"presentation_rect" : [ 267.5, 604.20001220703125, 280.0, 51.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 115, 116, 121, 108, 101, 47, 115, 116, 114, 111, 107, 101, 0, 44, 115, 0, 0, 98, 108, 97, 99, 107, 0, 0, 0, 0, 0, 0, 36, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 115, 116, 121, 108, 101, 47, 102, 105, 108, 108, 0, 0, 0, 44, 115, 0, 0, 114, 101, 100, 0 ],
					"saved_bundle_length" : 100,
					"text" : "/svgdraw/1/foo/style/stroke : \"black\",\n/svgdraw/1/foo/style/fill : \"red\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 497.0, 554.5, 171.0, 47.0 ],
					"presentation_linecount" : 3,
					"presentation_rect" : [ 497.0, 554.5, 171.0, 47.0 ],
					"text" : "and/or when an object is drawn, it should remove the transform attr"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 497.0, 500.0, 171.0, 33.0 ],
					"presentation_linecount" : 2,
					"presentation_rect" : [ 497.0, 500.0, 171.0, 33.0 ],
					"text" : "maybe all objects should use translate instead of x/y"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 329.0, 650.0, 280.0, 24.0 ],
					"presentation_rect" : [ 329.0, 650.0, 280.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 112, 111, 115, 105, 116, 105, 111, 110, 0, 44, 105, 105, 0, 0, 0, 0, 0, 0, 0, 0, 0 ],
					"saved_bundle_length" : 56,
					"text" : "/svgdraw/1/foo/position : [0, 0]"
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
					"patching_rect" : [ 329.0, 689.0, 280.0, 24.0 ],
					"presentation_rect" : [ 329.0, 689.0, 280.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 112, 111, 115, 105, 116, 105, 111, 110, 0, 44, 105, 105, 0, 0, 0, 0, 100, 0, 0, 0, 100 ],
					"saved_bundle_length" : 56,
					"text" : "/svgdraw/1/foo/position : [100, 100]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 512.0, 411.0, 171.0, 87.0 ],
					"presentation_linecount" : 6,
					"presentation_rect" : [ 512.0, 411.0, 171.0, 87.0 ],
					"text" : "problem, the order is important for the server state saving .. also there are similar information between position and draw, since the draw has position also"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 307.0, 657.0, 24.0, 24.0 ],
					"presentation_rect" : [ 307.0, 657.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 154.5, 379.0, 370.0, 20.0 ],
					"presentation_rect" : [ 154.5, 379.0, 370.0, 20.0 ],
					"text" : "name is now part of the address, so this is for the object name \"text\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 889.0, 560.0, 34.0, 22.0 ],
					"presentation_rect" : [ 889.0, 560.0, 34.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 743.75, 438.0, 124.0, 22.0 ],
					"presentation_rect" : [ 743.75, 438.0, 124.0, 22.0 ],
					"text" : "sel startRenderDump"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 702.0, 171.0, 150.0, 47.0 ],
					"presentation_linecount" : 2,
					"presentation_rect" : [ 702.0, 171.0, 150.0, 47.0 ],
					"text" : "print: tempoqtrequals 20. 21. 0.5 Measure 0.\r"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 847.0, 327.5, 34.0, 22.0 ],
					"presentation_rect" : [ 847.0, 327.5, 34.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 937.0, 754.0 ],
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
						"subpatcher_template" : "Default Max 7",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 30.0, 297.5, 29.5, 22.0 ],
									"presentation_rect" : [ 30.0, 297.5, 29.5, 22.0 ],
									"text" : "int"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "", "bang" ],
									"patching_rect" : [ 140.0, 93.5, 40.0, 22.0 ],
									"presentation_rect" : [ 140.0, 93.5, 40.0, 22.0 ],
									"text" : "t b l b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 397.5, 655.5, 77.0, 22.0 ],
									"presentation_rect" : [ 397.5, 655.5, 77.0, 22.0 ],
									"text" : "print replace"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 428.0, 487.5, 74.0, 22.0 ],
									"presentation_rect" : [ 428.0, 487.5, 74.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 503.5, 523.700012000000015, 74.0, 22.0 ],
									"presentation_rect" : [ 503.5, 523.700012000000015, 74.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 73.0, 460.700012000000015, 74.0, 22.0 ],
									"presentation_rect" : [ 73.0, 460.700012000000015, 74.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 379.0, 460.700012000000015, 74.0, 22.0 ],
									"presentation_rect" : [ 379.0, 460.700012000000015, 74.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 379.0, 426.700012000000015, 59.0, 22.0 ],
									"presentation_rect" : [ 379.0, 426.700012000000015, 59.0, 22.0 ],
									"text" : "tosymbol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "", "", "bang" ],
									"patching_rect" : [ 455.25, 126.5, 50.5, 22.0 ],
									"presentation_rect" : [ 455.25, 126.5, 50.5, 22.0 ],
									"text" : "t b l l b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 418.5, 268.5, 29.5, 22.0 ],
									"presentation_rect" : [ 418.5, 268.5, 29.5, 22.0 ],
									"text" : "int"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 532.0, 415.5, 40.0, 22.0 ],
									"presentation_rect" : [ 532.0, 415.5, 40.0, 22.0 ],
									"text" : "atoi"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 507.0, 352.5, 44.0, 22.0 ],
									"presentation_rect" : [ 507.0, 352.5, 44.0, 22.0 ],
									"text" : "gate 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 553.5, 268.5, 162.0, 22.0 ],
									"presentation_rect" : [ 553.5, 268.5, 162.0, 22.0 ],
									"text" : "if $i1< 128 then 1 else 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "text" ],
									"patching_rect" : [ 324.0, 370.5, 37.0, 22.0 ],
									"presentation_rect" : [ 324.0, 370.5, 37.0, 22.0 ],
									"text" : "t text"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "music" ],
									"patching_rect" : [ 272.0, 370.5, 49.0, 22.0 ],
									"presentation_rect" : [ 272.0, 370.5, 49.0, 22.0 ],
									"text" : "t music"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 272.0, 335.5, 71.0, 22.0 ],
									"presentation_rect" : [ 272.0, 335.5, 71.0, 22.0 ],
									"text" : "sel Bravura"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 272.0, 304.5, 29.5, 22.0 ],
									"presentation_rect" : [ 272.0, 304.5, 29.5, 22.0 ],
									"text" : "$1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 272.0, 426.700012000000015, 95.0, 22.0 ],
									"presentation_rect" : [ 272.0, 426.700012000000015, 95.0, 22.0 ],
									"text" : "join @triggers 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "" ],
									"patching_rect" : [ 532.0, 447.5, 83.0, 22.0 ],
									"presentation_rect" : [ 532.0, 447.5, 83.0, 22.0 ],
									"text" : "utf-82unicode"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 553.5, 212.5, 40.0, 22.0 ],
									"presentation_rect" : [ 553.5, 212.5, 40.0, 22.0 ],
									"text" : "atoi"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 213.0, 519.5, 213.0, 22.0 ],
									"presentation_rect" : [ 213.0, 519.5, 213.0, 22.0 ],
									"text" : "sprintf symout /svgdraw/1/draw/%s/%i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 371.0, 576.5, 114.0, 22.0 ],
									"presentation_rect" : [ 371.0, 576.5, 114.0, 22.0 ],
									"text" : "pak replace s s f f s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 56.5, 367.5, 59.0, 22.0 ],
									"presentation_rect" : [ 56.5, 367.5, 59.0, 22.0 ],
									"text" : "tosymbol"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 426.700012000000015, 219.0, 22.0 ],
									"presentation_rect" : [ 30.0, 426.700012000000015, 219.0, 22.0 ],
									"text" : "sprintf symout /svgdraw/1/draw/path/%i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 30.0, 229.5, 61.0, 22.0 ],
									"presentation_rect" : [ 30.0, 229.5, 61.0, 22.0 ],
									"text" : "counter"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 150.5, 185.5, 74.0, 22.0 ],
									"presentation_rect" : [ 150.5, 185.5, 74.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 30.0, 506.5, 101.0, 22.0 ],
									"presentation_rect" : [ 30.0, 506.5, 101.0, 22.0 ],
									"text" : "pak replace s s s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 150.5, 148.5, 178.0, 22.0 ],
									"presentation_rect" : [ 150.5, 148.5, 178.0, 22.0 ],
									"text" : "sprintf symout M%f\\, %f L%f\\, %f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 140.0, 55.5, 423.0, 22.0 ],
									"presentation_rect" : [ 140.0, 55.5, 423.0, 22.0 ],
									"text" : "route linesegment font moveto write"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-75",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 203.0, 12.0, 30.0, 30.0 ],
									"presentation_rect" : [ 203.0, 12.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-76",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 140.0, 7.0, 30.0, 30.0 ],
									"presentation_rect" : [ 140.0, 7.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-77",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 147.5, 683.0, 30.0, 30.0 ],
									"presentation_rect" : [ 147.5, 683.0, 30.0, 30.0 ]
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
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-1", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-1", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 1 ],
									"source" : [ "obj-1", 1 ]
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
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-17", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-17", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"order" : 1,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"order" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"order" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 1 ],
									"order" : 1,
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
									"destination" : [ "obj-55", 2 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-40", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-40", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-40", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 3 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 1 ],
									"order" : 1,
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"order" : 0,
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 2 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 1 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"order" : 0,
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"order" : 1,
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 1 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-63", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-68", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 5 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"source" : [ "obj-73", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 2 ],
									"midpoints" : [ 212.5, 86.25, 60.5, 86.25 ],
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 3 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 707.75, 528.0, 55.0, 22.0 ],
					"presentation_rect" : [ 707.75, 528.0, 55.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p format"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-62",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 27.0, 573.0, 377.0, 24.0 ],
					"presentation_rect" : [ 27.0, 573.0, 377.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 49, 47, 100, 114, 97, 119, 47, 99, 105, 114, 99, 108, 101, 0, 0, 0, 0, 44, 105, 105, 105, 0, 0, 0, 0, 0, 0, 0, 80, 0, 0, 0, 20, 0, 0, 0, 10 ],
					"saved_bundle_length" : 68,
					"text" : "/svgdraw/1/1/draw/circle : [80, 20, 10]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 707.75, 629.200012000000015, 55.0, 22.0 ],
					"presentation_rect" : [ 707.75, 629.200012000000015, 55.0, 22.0 ],
					"text" : "o.collect"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 783.25, 495.0, 37.0, 22.0 ],
					"presentation_rect" : [ 783.25, 495.0, 37.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 743.75, 495.0, 29.5, 22.0 ],
					"presentation_rect" : [ 743.75, 495.0, 29.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 707.75, 586.0, 50.5, 22.0 ],
					"presentation_rect" : [ 707.75, 586.0, 50.5, 22.0 ],
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
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "bang" ],
					"patching_rect" : [ 706.0, 384.0, 145.0, 22.0 ],
					"presentation_rect" : [ 706.0, 384.0, 145.0, 22.0 ],
					"text" : "maxscore.render2canvas",
					"varname" : "maxscore.render2simplecanvas"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-37",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1127.5, 118.0, 127.0, 23.0 ],
					"presentation_rect" : [ 1127.5, 118.0, 127.0, 23.0 ],
					"text" : "setRenderAllowed 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 959.5, 95.0, 69.0, 21.0 ],
					"presentation_rect" : [ 959.5, 95.0, 69.0, 21.0 ],
					"text" : "navigate:"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-32",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 950.5, 243.0, 356.0, 36.0 ],
					"presentation_linecount" : 2,
					"presentation_rect" : [ 950.5, 243.0, 356.0, 36.0 ],
					"text" : "click into bpatcher to activate key strokes, necessary if several bcanvas are present in the same patcher window."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-33",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 959.5, 118.0, 91.0, 23.0 ],
					"presentation_rect" : [ 959.5, 118.0, 91.0, 23.0 ],
					"text" : "previousPage"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1054.5, 118.0, 63.0, 23.0 ],
					"presentation_rect" : [ 1054.5, 118.0, 63.0, 23.0 ],
					"text" : "nextPage"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 932.5, 32.0, 130.0, 23.0 ],
					"presentation_rect" : [ 932.5, 32.0, 130.0, 23.0 ],
					"text" : "newScore 2 320 220"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.611765, 0.701961, 1.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 932.5, 216.0, 235.0, 23.0 ],
					"presentation_rect" : [ 932.5, 216.0, 235.0, 23.0 ],
					"text" : "mxj com.algomusic.max.MaxScore"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-35",
					"lockeddragscroll" : 1,
					"maxclass" : "bpatcher",
					"name" : "bcanvas.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 1225.5, 274.0, 320.0, 220.0 ],
					"presentation_rect" : [ 1225.5, 274.0, 320.0, 220.0 ],
					"prototypename" : "bcanvas",
					"varname" : "bcanvas",
					"viewvisibility" : 1
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
					"patching_rect" : [ 544.0, 126.0, 24.0, 24.0 ],
					"presentation_rect" : [ 544.0, 126.0, 24.0, 24.0 ]
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
					"patching_rect" : [ 504.0, 100.0, 361.0, 24.0 ],
					"presentation_rect" : [ 504.0, 100.0, 361.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 100, 114, 97, 119, 47, 98, 114, 97, 118, 0, 0, 0, 0, 44, 115, 105, 105, 115, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 80, 0, 0, 0, 20, 69, 48, 53, 48, 0, 0, 0, 0 ],
					"saved_bundle_length" : 72,
					"text" : "/svgdraw/1/draw/brav : [\"1\", 80, 20, \"E050\"]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 504.0, 171.0, 55.0, 22.0 ],
					"presentation_rect" : [ 504.0, 171.0, 55.0, 22.0 ],
					"text" : "o.collect"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 323.5, 74.0, 44.0, 22.0 ],
					"presentation_rect" : [ 323.5, 74.0, 44.0, 22.0 ],
					"text" : "o.print"
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
					"patching_rect" : [ 375.5, 18.0, 361.0, 24.0 ],
					"presentation_rect" : [ 375.5, 18.0, 361.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 100, 114, 97, 119, 47, 98, 114, 97, 118, 0, 0, 0, 0, 44, 115, 105, 105, 115, 0, 0, 0, 50, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 20, 69, 48, 53, 49, 0, 0, 0, 0 ],
					"saved_bundle_length" : 72,
					"text" : "/svgdraw/1/draw/brav : [\"2\", 100, 20, \"E051\"]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-2",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 23.0, 528.0, 381.0, 38.0 ],
					"presentation_linecount" : 2,
					"presentation_rect" : [ 23.0, 528.0, 381.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 49, 47, 100, 114, 97, 119, 47, 109, 117, 115, 105, 99, 0, 44, 115, 0, 0, 101, 48, 53, 48, 0, 0, 0, 0, 0, 0, 0, 48, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 50, 47, 100, 114, 97, 119, 47, 109, 117, 115, 105, 99, 0, 44, 105, 105, 115, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 20, 101, 48, 53, 49, 0, 0, 0, 0 ],
					"saved_bundle_length" : 108,
					"text" : "/svgdraw/1/1/draw/music : \"e050\",\n/svgdraw/1/2/draw/music : [100, 20, \"e051\"]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-6",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.5, 261.0, 359.0, 24.0 ],
					"presentation_rect" : [ 10.5, 261.0, 359.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 115, 99, 111, 114, 101, 47, 116, 114, 97, 110, 115, 102, 111, 114, 109, 47, 115, 99, 97, 108, 101, 0, 0, 0, 0, 44, 105, 0, 0, 0, 0, 0, 1 ],
					"saved_bundle_length" : 64,
					"text" : "/svgdraw/1/score/transform/scale : 1"
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
					"patching_rect" : [ 30.5, 611.20001220703125, 210.0, 24.0 ],
					"presentation_rect" : [ 30.5, 611.20001220703125, 210.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 49, 47, 114, 101, 109, 111, 118, 101, 0, 44, 0, 0, 0 ],
					"saved_bundle_length" : 44,
					"text" : "/svgdraw/1/1/remove"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-4",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 162.5, 411.0, 345.0, 24.0 ],
					"presentation_rect" : [ 162.5, 411.0, 345.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 100, 114, 97, 119, 47, 109, 117, 115, 105, 99, 0, 0, 0, 44, 105, 105, 115, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 20, 69, 48, 53, 49, 0, 0, 0, 0 ],
					"saved_bundle_length" : 72,
					"text" : "/svgdraw/1/foo/draw/music : [20, 20, \"E051\"]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 94.0, 197.0, 54.0, 22.0 ],
					"presentation_rect" : [ 94.0, 197.0, 54.0, 22.0 ],
					"text" : "o.accum"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 214.0, 135.0, 117.0, 22.0 ],
					"presentation_rect" : [ 214.0, 135.0, 117.0, 22.0 ],
					"text" : "cnmat.o.io.keyboard"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 94.0, 140.0, 103.0, 22.0 ],
					"presentation_rect" : [ 94.0, 140.0, 103.0, 22.0 ],
					"text" : "cnmat.o.io.mouse"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-12",
					"linecount" : 6,
					"maxclass" : "o.expr.codebox",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "FullPacket", "FullPacket" ],
					"patching_rect" : [ 94.0, 268.0, 637.0, 100.0 ],
					"presentation_linecount" : 6,
					"presentation_rect" : [ 94.0, 268.0, 637.0, 100.0 ],
					"text" : "if( /keystate == \"down\",\n  progn(\n    /pathstr = \"M\"+ /horizontal +\",\"+ /vertical + \"a30,30,0,0,0,0-60a30,30,0,0,0,0,60\",\n    /svgdraw/1/draw/path = [ /ascii, /pathstr ]\n  )\n)"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-11",
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 27.0, 685.0, 201.0, 24.0 ],
					"presentation_rect" : [ 27.0, 685.0, 201.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 114, 101, 109, 111, 118, 101, 0, 0, 0, 44, 0, 0, 0 ],
					"saved_bundle_length" : 48,
					"text" : "/svgdraw/1/foo/remove"
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
					"patching_rect" : [ 27.0, 721.20001220703125, 582.0, 24.0 ],
					"presentation_rect" : [ 27.0, 721.20001220703125, 582.0, 24.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 47, 115, 118, 103, 100, 114, 97, 119, 47, 49, 47, 102, 111, 111, 47, 100, 114, 97, 119, 47, 112, 97, 116, 104, 0, 0, 0, 0, 44, 115, 0, 0, 77, 51, 53, 44, 54, 53, 97, 51, 48, 44, 51, 48, 44, 48, 44, 48, 44, 48, 44, 48, 45, 54, 48, 97, 51, 48, 44, 51, 48, 44, 48, 44, 48, 44, 48, 44, 48, 44, 54, 48, 0, 0, 0, 0 ],
					"saved_bundle_length" : 96,
					"text" : "/svgdraw/1/foo/draw/path : \"M35,65a30,30,0,0,0,0-60a30,30,0,0,0,0,60\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 707.75, 673.200012000000015, 144.0, 22.0 ],
					"presentation_rect" : [ 707.75, 673.200012000000015, 144.0, 22.0 ],
					"text" : "udpsend localhost 4001"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
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
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"order" : 2,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"order" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"order" : 1,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
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
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-46", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 1 ],
					"source" : [ "obj-47", 0 ]
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
					"destination" : [ "obj-78", 1 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-57", 0 ]
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
					"source" : [ "obj-62", 0 ]
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
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-78", 0 ]
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
					"destination" : [ "obj-52", 0 ],
					"order" : 1,
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"order" : 0,
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-84", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-35::obj-9::obj-11.20::obj-81" : [ "toggle[19]", "toggle[3]", 0 ],
			"obj-35::obj-9::obj-11.9::obj-81" : [ "toggle[8]", "toggle[3]", 0 ],
			"obj-35::obj-9::obj-11.14::obj-81" : [ "toggle[13]", "toggle[3]", 0 ],
			"obj-35::obj-9::obj-11.4::obj-81" : [ "toggle[3]", "toggle[3]", 0 ],
			"obj-35::obj-9::obj-11.19::obj-81" : [ "toggle[18]", "toggle[3]", 0 ],
			"obj-35::obj-9::obj-11.8::obj-81" : [ "toggle[7]", "toggle[3]", 0 ],
			"obj-35::obj-9::obj-11.13::obj-81" : [ "toggle[12]", "toggle[3]", 0 ],
			"obj-35::obj-9::obj-11.18::obj-81" : [ "toggle[17]", "toggle[3]", 0 ],
			"obj-35::obj-9::obj-11.7::obj-81" : [ "toggle[6]", "toggle[3]", 0 ],
			"obj-35::obj-9::obj-11.12::obj-81" : [ "toggle[11]", "toggle[3]", 0 ],
			"obj-35::obj-9::obj-11.17::obj-81" : [ "toggle[16]", "toggle[3]", 0 ],
			"obj-35::obj-9::obj-11.3::obj-81" : [ "toggle[2]", "toggle[3]", 0 ],
			"obj-35::obj-9::obj-11.6::obj-81" : [ "toggle[5]", "toggle[3]", 0 ],
			"obj-35::obj-9::obj-11.11::obj-81" : [ "toggle[10]", "toggle[3]", 0 ],
			"obj-35::obj-9::obj-11.16::obj-81" : [ "toggle[15]", "toggle[3]", 0 ],
			"obj-35::obj-9::obj-11.2::obj-81" : [ "toggle[1]", "toggle[3]", 0 ],
			"obj-35::obj-9::obj-11.1::obj-81" : [ "toggle[77]", "toggle[3]", 0 ],
			"obj-35::obj-9::obj-11.5::obj-81" : [ "toggle[4]", "toggle[3]", 0 ],
			"obj-35::obj-9::obj-11.10::obj-81" : [ "toggle[9]", "toggle[3]", 0 ],
			"obj-35::obj-9::obj-11.15::obj-81" : [ "toggle[14]", "toggle[3]", 0 ],
			"parameterbanks" : 			{

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "cnmat.o.io.mouse.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Music-and-Computing/patchers/io",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/Music-and-Computing/patchers/io",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cnmat.loadbang.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Music-and-Computing/patchers/internal",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/Music-and-Computing/patchers/internal",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cnmat.o.io.keyboard.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Music-and-Computing/patchers/io",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/Music-and-Computing/patchers/io",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "o.accum.maxpat",
				"bootpath" : "~/Documents/dev-lib/CNMAT-odot/patchers/namespace",
				"patcherrelativepath" : "../../../../../CNMAT-odot/patchers/namespace",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bcanvas.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/abstractions",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maxscore.lcd.js",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/jsui",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/jsui",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "maxscore.render2canvas.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/extensions",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/extensions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "decodeURI.js",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/javascript",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "MaxScoreKeyMap.txt",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/maps",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/maps",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "packback.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/abstractions",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "text_measure.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/extensions",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/extensions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maxscore.sax.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/extensions",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/extensions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "font-mapping.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/extensions",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/extensions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "MaxScoreOpusMap.txt",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/maps/Font Mappings",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/maps/Font Mappings",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "MaxScoreMaestroMap.txt",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/maps/Font Mappings",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/maps/Font Mappings",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "MaxScoreJazzWindowsMap.txt",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/maps/Font Mappings",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/maps/Font Mappings",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "MaxScoreJazzMap.txt",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/maps/Font Mappings",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/maps/Font Mappings",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "MaxScoreAloisenNewMap.txt",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/maps/Font Mappings",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/maps/Font Mappings",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "MaxScoreFontExtrasMap.txt",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/maps",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/maps",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "MaxScoreBravuraMap.txt",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/maps/Font Mappings",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/maps/Font Mappings",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "platform.js",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/javascript",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "micromaps.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/extensions",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/extensions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mM-SIMS.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/maps/microMaps",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/maps/microMaps",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "nTET.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/maps/microMaps/resources",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/maps/microMaps/resources",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "SIMSz.txt",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/maps/microMaps/resources",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/maps/microMaps/resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "filter-repeated-accidentals.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/extensions",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/extensions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mM-sagittal.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/maps/microMaps",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/maps/microMaps",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "96TETz.txt",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/maps/microMaps/resources",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/maps/microMaps/resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "mM-none.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/maps/microMaps",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/maps/microMaps",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mM-JI.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/maps/microMaps",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/maps/microMaps",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "ratio-finder.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/extensions",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/extensions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cent2ratio-8.txt",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/maps/microMaps/resources",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/maps/microMaps/resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "mM-eighth-tones.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/maps/microMaps",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/maps/microMaps",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "48TETz.txt",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/maps/microMaps/resources",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/maps/microMaps/resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "mM-BP.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/maps/microMaps",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/maps/microMaps",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mM-72TET.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/maps/microMaps",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/maps/microMaps",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "72TETz.txt",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/maps/microMaps/resources",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/maps/microMaps/resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "maxfolder.js",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/javascript",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "scriptMaps.js",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/javascript",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "utf-82unicode.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/extensions",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/extensions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "unicode2utf-8.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/extensions",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/extensions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "strlen.js",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/javascript",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "svg-pie.js",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/Picster",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/Picster",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "first-int.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/extensions",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/extensions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "my-ltocoll.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/extensions",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/extensions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "divmod.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/extensions",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/extensions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "maxscore.cursors.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/extensions",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/extensions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "polycursors.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/extensions",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/extensions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "my-LtoColl.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/extensions",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/extensions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "gh.split@.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/abstractions",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "selectInterval.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MaxScore/patchers/extensions",
				"patcherrelativepath" : "../../../../../../Max 8/Packages/MaxScore/patchers/extensions",
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
				"name" : "o.pack.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.union.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.var.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.cond.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.timetag.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.change.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.route.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.print.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "o.collect.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "sadam.rapidXML.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "sadam.split.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "sadam.empty.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "sadam.base64.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "sadam.lzo.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "list-interpolate.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"bgfillcolor_type" : "gradient",
		"bgfillcolor_color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
		"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
		"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ]
	}

}
