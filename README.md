# Drawsocket

A Max/node.js based server/client system for drawing to web-browsers.

## Installation

Requires Max 8, and is designed for use with [CNMAT's Odot library](https://github.com/CNMAT/CNMAT-odot/releases) and [MaxScore](http://www.computermusicnotation.com/?page_id=22).

The `hfmt.drawsocket` abstraction is a wrapper around the Node For Max's `node.script` object, and relies on a set of scripts found in the package's `code` folder. Once the package is installed in the Packages folder, the main server and client scripts will be automatically handled by the abstraction.

To install:
1. Place the `hfmt-drawsocket` repository in the `/Documents/Max 8/Packages` folder.
2. When running the `hfmt.drawsocket` server for the first time: click on the `script npm install` message to download the required packages and libraries (note that you will need to be connected to the internet for the download to work).

## Basic Usage

See the `hfmt.drawsocket.maxhelp` file for examples.

1. Start the server by sending the `script start` message.
2. On successful startup, an IP address and port number will be printed to the Max console, and the same information will be sent out of the left-most outlet of the abstraction.
3. Open a browser and type in the IP address and port specified in the Max patch, followed by a URL of your choosing. This address will be how you address the client browser from the Max server patch. 
    * For example, if the IP:Port is `192.168.1.1:3002`, and you wanted to use the address `/foo` for your OSC style messaging to the browser, you could type the following address into your browser: `192.168.1.1:3002/foo`. Note that if you are testing on the same computer, you can also use `localhost` instead of the IP address.


## About Assets

If you wish to serve file assets to your client browsers (e.g. images, pdfs, sound files, html files, etc.), the files must be in a known folder to the server, commonly referred to as a root "public" folder. The public folder path is set relative to the location of the Max patch containing the `hfmt.drawsocket` abstraction, and therefore you need to save your patch before any assets can be found (so that the patch has a folder location).

By default, the public folder is set to be the same folder that contains the Max patch. 
```
    someFolder
    |-- yourPatch.maxpatch
    |-- image.png
    |-- score.pdf

```

Alternatively, to keep the folders a little neater, the `hfmt.drawsocket` abstraction can be initialized with an argument of the folder path relative to the Max patch location. For example, if you initialize `hfmt.drawsocket` with the relative path `public`, it will expect the folder `public` to be at the same folder level:
```
    someFolder
    |-- yourPatch.maxpatch
    |-- public
        |-- image.png
        |-- score.pdf

```

# Default HTML and CSS files

By default the `drawsocket` server responds to all URL requests with the template HTML page, `drawsocket-page.html` which loads the required Javascript files, sets up the basic HTML objects, layers, and imports the `drawsocket-default.css` which sets up some default display properties.

If desired, a different template HTML page may be used by sending the `hfmt.drawsocket` object the `html_template` message followed by a relative path to the template HTML file to use.

# Message Format

All messages in the `drawsocket` API are formatted as an object, enclosed by curly braces `{ }`. Messages can be encoded as Odot nested sub-bundles, or nested JSON objects. In the examples below we will be using OSC (odot) formatting, however you may also use a Max Dictionary, which will be exactly the same, except that address names will not have the leading `/` character.

Odot:
```
/bundle : {
    /subbundle : {
        /foo : 1
    }
}
```
Max Dictionary (JSON):
```
"bundle" : {
    "subbundle" : {
        "foo" : 1
    }
}
```

## Addressing the Client Browser

The URL used by the client to log into the server IP address and port is used by the Max patch as an OSC address to route messages to all clients logged into a given URL. For example, any users logged into the example above, `192.168.1.1:3002/foo`, will receive OSC messages with the address `/foo`.

## `key` and `val`

Messages to the client are formatted as objects with `key` and `val` addresses
* The `key` value is a switch key which tells the client how it should interpret the messages in the `val` field. For example, valid `key` values include `svg`, `html`, `tween`, and so on. See below for more details on these options.
* The `val` value, stores one or more objects to be handled by the client. 
 
For example, with a `svg` key, the `val` object might create a new SVG object. In this example, we ask all clients logged into `/foo` to create a new SVG `rect`, using the drawsocket-SVG `new` keyword:

``` 
/foo : {
    /key : "svg",
    /val : {
        /new : "rect",
        /id : "rectangular",
        /x : 100,
        /y : 100,
        /width : 25,
        /height : 25
    }
}
```

The wildcard `*` will match all URL clients, so for example if you replace `/foo` above with the address `/*` the above example would be sent to all clients.

## Unique ID Reference
Each drawn object needs to have a unique name to identify the object. The name can be any combination of numbers and letters, but needs to be unique. This id can be used to identify the object in situations where you want to change the color, position or other attributes.

For example, in the above example, we we set the `id` to be the name "rectangular". If we have already created the object (in this case using the drawsocket-SVG `new` keyword), we can alter attributes of the rectangle, by referring to the `id`. Here we change the width of the rectangle:

``` 
/foo : {
    /key : "svg",
    /val : {
        /id : "rectangular",
        /width : 50
    }
}
```

# Drawsocket API
Each `key` type has a slightly different API based on the needs of the objects created in the browser.

## __svg__
The `svg` key specifies that the `val` objects will be used to create or modify SVG elements, which will be placed by default in the webpage's main SVG element.

The object(s) set to the client via the `val` field predominantly consist of *attributes* that configure the created object, as specified by the SVG specification, available online in many places. See the [Mozilla SVG documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial/Basic_Shapes) for information about the basic SVG object types.

Object attributes may be set as members of the `val` object, as demonstrated above.

In addition there are several keywords used by `drawsocket` to handle special cases.
* `new`: tells the SVG creation routine to create a new object of a given SVG type. See the [SVG documentation](https://developer.mozilla.org/en-US/docs/Web/SVG/Tutorial/Basic_Shapes) for information on object types and their associated attribute options.
* `parent`: SVG nodes may be inserted as child objects of another element, (most often an SVG group `g` element).
* `child`: SVG nodes may also be created as dependents of a newly created group node. Mainly this is useful for cases where you *don't want* to have an `id` for a child node, for example when setting objects in the special SVG `defs` group (described below).
* `text`: sets the inner text of a `text` node.
* `href`: sets the address for linked assets, used by the `image` and `use` SVG elements.
  

### `style`
A sub-bundle labeled `style` may optionally be included which will set inline CSS style properties for the created node, which will be applied by the browser, depending on the SVG specification, and the browser's implementation.

For example:

``` 
/* : {
    /key : "svg",
    /val : {
        /new : "path",
        /id : "bar",
        /d : "M10 80 C 40 10, 65 10, 95 80 S 150 150, 180 80",
        /style : {
            /stroke : "red",
            /stroke-width : 2
        }
    }
}
```

#### A note on CSS styles and inheritance
There are three levels of inheritance with SVG CSS styling: 
1. *presentation attributes*, set within the element, as demonstrated above in the context of SVG object attributes.
2. *stylesheet* definitions, set in an attached CSS stylesheet, or within an `<style>` element in the HTML page (settable via the "css" key detailed below).
3. *inline styling*, a set of CSS rules included as part of an elements's `style` attribute. In `drawsocket` we set these values via the `/style` sub-bundle.
   
Each is overridden by the next: *stylesheets* override *presentation attributes*, and *inline styles* override all the others.

See the [online CSS documentation](https://developer.mozilla.org/en-US/docs/Web/CSS) for more informaiton.


### SVG Layers
SVG elements are drawn in the order they are created via the `new` keyword (and remain in layer order if updated after creation).

Sometimes it is useful to separate groups of objects in specific drawing layer order to maintain background, mid, and foreground layers. The can be achived using the SVG group element. 

For example, we can first create three layers that we will name "back", "main", and "overlay", using an array of objects.

```
/* : {
   /key : "svg",
   /val : [{
      /new : "g",
      /id : "back"
   }, {
      /new : "g",
      /id : "main"
   }, {
      /new : "g",
      /id : "overlay"
   }]
}
```

Note that the array specifies the order of the objects in the message, so "back" will be drawn first, then "main", then "overlay".

When objects are added to any of these groups, they will be appended to the end of the stack of child nodes within the group, however, all objects in the "back" group will appear *behind* the "main" and "overlay" layers; while objects added to the "overlay" layer will always be *above* the other layers, and so on.

### Referencing SVG Elements

Preexisting object maybe reused with the `use` SVG element, which uses the `id` of another SVG object by reference, set by the `href` attribute. 

There are two approaches recommended for reusing SVG elements:

#### `defs`
The SVG specification provides a special storage element within the SVG object called `defs` ([see the online documentation for more details](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/defs)). Objects stored in the `defs` are not drawn to the screen, but are stored as prototypes of objects that can be drawn with the `use` tag. The `defs` can be used in this way for storing a library of objects. To add an object to the `defs` group, you can use the `parent` keyword to tell the client to add a new object (or group of objects) to the `defs`, for example:

```
/* : {
    /key : "svg",
    /val : {
        /parent : "defs",
        /new : "rect",
        /id : "squarePrototype",
        /x : 50,
        /y : 50,
        /width : 20,
        /height : 20
    }
}
```
#### `use`

To use our new `defs` object, we refer to it by `id` in the `use` element's `href` attribute, prefixed by the id selector `#`:

```
/* : {
    /key : "svg",
    /val : {
        /new : "use",
        /id : "sq",
        /href : "#squarePrototype",
        /x : 0,
        /y : 0
    }
}
```
Note that the `x` `y` coordinates of the `use` object set the top left corner of the original object. That means that in this case, the top left corder of the drawn rectangle will be at `{50,50}` not `{0,0}`. So, for best results, set `defs` object positions relative to `{0,0}`.

The `use` element's `href` attribute can also be used to import an object by reference to an `id` present in an SVG file asset. For example, if there is a file called "demo.svg" stored in the public folder, you could reference an element with the id `foo` by using the `#` id selector:
  
```
/* : {
    /key : "svg",
    /val : {
        /new : "use",
        /id : "importedObject",
        /href : "demo.svg#foo",
        /x : 0,
        /y : 0
    }
}
```

An additional utility provided by `drawsocket` provides an offset to the imported object, offsetting its origin (top-left corner) to be `{0,0}`, helpful for placing objects intuitively in a new context. To enable this offsetting, send an extra `1` value for the `href` attribute. For example:

```
/* : {
    /key : "svg",
    /val : {
        /new : "use",
        /id : "importedObject",
        /href : ["demo.svg#foo", 1],
        /x : 0,
        /y : 0
    }
}
```


## __clear__ and __remove__

The `clear` and `remove` keys have similar, but slightly different behaviours.

* `remove`: removes the objects matching each of the `ids` set in the `val` field.
* `clear`: removes the *children* of the object, or key type, specified in the `val` field.

For example, to clear all SVG elements, you can send the messages:
  
```
/* : {
    /key : "clear",
    /val : "svg"
}
```

To clear the elements of `g` layer, use the `clear` message. For example, using the layers we created above, we might want to clear the "main" and "overlay" layers while leaving the "back" layer:

 ```
/* : {
    /key : "clear",
    /val : ["main", "overlay"]
}
```

To remove a specific object, use the `remove` message. For example:

 ```
/* : {
    /key : "remove",
    /val : "main"
}
```

Note that removing a `g` object, will remove all of its children *and* the `g` object. This means that you will not be able to add objects to the `g` group "main" until you recreate it with the `new` keyword.


## __css__
The `css` key allows the user to to add new CSS rules to the webpage's `<style>` tag. See the [online documentation](https://developer.mozilla.org/en-US/docs/Web/CSS) for more information.

There are two keywords used by the `drawsocket` API: `selector`, and `props`.

### `selector`
The `selector` sets the CSS rule's selector, which could be one of three types:
* *type* selector, which applies to all objects of a given type (e.g. `line`)
* *class* selector, prefixed by the `.` character (e.g. `.example`), which applies the rule to all objects with the matching `class` attribute.
* *id* selector, prefixed by the `#` character (e.g. `#example`), which is a *unique id*, and only applies the rule to one object.
  
### `props`
The `props` nested object, contains the properties for the CSS rule.

For example, here we create two rules, one for `line` objects, and one specifically for objects with the `id` "bar":

```
/* : {
    /key : "css",
    /val : [{
        /selector : "line",
        /props : {
            /stroke : "red",
            /stroke-width : 5
        }
    }, {
        /selector : "#bar",
        /props : {
            /stroke : "black",
            /stroke-width : 10
        }
    }]
}
```

## __html__

The `html` key uses the same keywords as the `svg` key type:

* `new`: tells the HTML creation routine to create a new object of a given HTML type. See the [HTML documentation](https://developer.mozilla.org/en-US/docs/Web/HTML) for information on object types and their associated attribute options.
* `parent`: HTML nodes may be inserted as child objects of another element (most often an HTML `div` element).
* `child`: HTML nodes may also be created as dependents of a newly created group node.
* `text`: sets the inner text of an HTML node (e.g. `div` or `p`).
* `href`: sets the address for linked assets.

### `call`
Some HTML objects also can be manipulated with JS object methods, via the `call` keyword:
* `call`: an object or array of objects contains calls to HTML object `method` with optional `args`, for example HTMLMediaElement methods, [see online documentation](https://developer.mozilla.org/en-US/docs/Web/API/HTMLMediaElement) for more information.
  * `method`: element method to call.
  * `args`: optional arguments to method call (see note below for methods requiring separated arguments).
  * `then`: optional next method to call on the returned value from the previous call.

Note: if a method requires separated arguments, rather than a single object, you can use an array of objects for `args`, each containing the key `val` to set the value of that argument.


This is still in beta, but hypothetically the example below should work for a video player, you may need to click on the browser window first before the browser will let you call this though due to privacy restrictions.

```
/* : {
  /key : "html",
  /val : {
    /id : "foovideo",
    /call : {
    	/method : "play"
    }
  }
}
```

### HTML layers
By default HTML objects will be added to an HTML `div` object, one layer below the SVG content (see the `drawsocket-page.html` file for details). However, HTML content requiring user interaction, for example `input` forms, or media players, will not be clickable if located behind the SVG layer. Therefore a special-purpose, top-layer `div` is set in the HTML file, called `forms` which will should always be reachable by user interaction. Set objects in the `forms` layer just as you would for other parent objects, using the `parent` keyword.

Additionaly, HTML layers may be created with a new `div` tag, just as discussed above via the `g` SVG tag.

## __tween__
`drawsocket` provides access to the GreenSock Animation Platform [TweenMax](https://greensock.com/docs/TweenMax) and [TimelineMax](https://greensock.com/docs/TimelineMax) libraries via the `tween` key. The object types are identified by the keywords used.

[TweenMax](https://greensock.com/docs/TweenMax) objects use the keywords:
* `id`: a unique identifier for the TweenMax object.
* `target`: a CSS selector to choose which objects are animated (e.g. `#foo`).
* `dur`: the duration of the animation in seconds.
* `vars`: an object containing the variables to animate, and their destination values, and any other TweenMax special properties (see the [TweenMax vars documentation](https://greensock.com/docs/TweenMax/vars) for more information).
* `cmd`: an action command to a new or preexisting `tween`. Understood commands are:
  * `start`: start playing the `tween`, from the beginning, using the message's timestamp to determine an offset start time to be synchronized with the server clock. If the duration is already past, sets the object to its final position.
  * `play`: start playing the `tween` from whatever its current position is, synchronised to the server clock.
  * `playfrom` : if a `time` parameter is also found in the command object, start playing the `tween` from the time specified by the `time` parameter.
    * `time` (requried), sets the time to start from in seconds.
  * `stop`: stops the `tween` at the current position.
  * `pause`: stops the `tween` at the current position.
    * optionally, if the parameter `time` is found, pause, and move the playhead to that time.
  * `reset`: resets the object to its original position.
  * `reverse`: reverses `tween` direction.
  * `kill`: kills the `tween` but doesn't delete it (not sure how useful this is).
  
[TimelineMax](https://greensock.com/docs/TweenMax) objects use the keywords: 
* `id`: a unique identifier for the TimelineMax object.
* `init`: an object of [TimelineMax initialization variables](https://greensock.com/docs/TimelineMax/TimelineMax()).
* `tweens`: an `tween` object, or *sequential* array of `tween` objects containing the keywords:
  * `target`: a CSS selector to choose which objects are animated (e.g. `#foo`).
  * `dur`: the duration of the tween animation in seconds, note that within the timeline, the tweens are sequential, so each `dur` is the duration for that section within the timeline.
  * `vars`: an object containing the variables to animate, and their destination values, and any other TweenMax special properties (see the [TweenMax vars documentation](https://greensock.com/docs/TweenMax/vars) for more information).
* `cmd`: same as the `tween` commands, but applied to the timeline.

One special `var` parameter has been added to handle the `onUpdate` callback.
* `var`:`onUpdate` : an inline string function to be called when a new frame is processed by the `tween`.

## __pdf__
PDF files may be imported into `drawsocket` by reference, the settable attributes are as follows:

* `href`: the path location of the .pdf file, relative to the Max patch.
* `page`: the page to open in the .pdf file.
* size and position attributes: `x`, `y`, `width`, and `height`


```
  /* : {
    /key : "pdf",
    /val : {
      /id : "newpdf",
      /href : "/media/flint_piccolo_excerpt.pdf",
      /width : 600,
      /x : 100,
      /page : 2
    }
  }
```

## __sound__
`drawsocket` includes the [tone.js](https://tonejs.github.io) library, note: __currently in beta__.

Keywords:
* `new`: creates a new instace of a Tone type (e.g Tone.Oscillator, would be `/new : "Oscillator"`).
* `id`: unique identifier to use for this sound object.
* `vars`: an object of variables used on initialization of a Tone.js object, refer to the Tone.js API for for informaiton.
* `call`: an object or array of objects contains calls to HTML object `method` with optional `args`, see the Tone.js API for more informaiton on object methods.
  * `method`: element method to call.
  * `args`: optional arguments to method call (see note below for methods requiring separated arguments).
  * `then`: optional next method to call on the returned value from the previous call.

Note: if a method requires separated arguments, rather than a single object, you can use an array of objects for `args`, each containing the key `val` to set the value of that argument.


Some examples:

```
/* : {
  /key : "sound",
  /val : {
    /new : "Player",
    /id : "kick",
    /vars : {
      /url : "/media/808_mp3/kick1.mp3",
      /autostart : "false",
      /loop : "false"
    },
    /call : {
        /method : "toMaster"
    }
  }
}
```

Replay a sound via the `restart` object method:
```
/* : {
  /key : "sound",
  /val : {
    /id : "kick",
    /call : {
        /method : "restart"
    }
  }
}
```

Play a chord on a PolySynth via the `triggerAttackRelease` function:

```
/* : {
  /key : "sound",
  /val : {
    /id : "psynth",
    /call : {
    	/method : "triggerAttackRelease",
    	/args : [{
    		/val : ["Eb3", "G4", "C4"]
    	}, {
    		/val : 0.1
    	}]
    }
  }
}
```

### __set__
To set the value of a Tone.js Signal object, for example the frequency of an Oscillator, we need to use a the `set` operator, which functions a bit like the `call` operator, but sets a member value rather than calling a function.

The `set` keyword should contain an object or array of objects, with member keywords:
* `member`: the name of the property to set.
* `value`: the value to assign to the property.
  
For example:

```
/* : {
  /key : "sound",
  /val : {
    /id : "sine",
    /set : {
    	/member : "frequency.value",
    	/value : 1000
    }
  }
}
```

### __obj:get__
In some cases we need to refer to an object from a library or one that we have created, which needs to be passed to a function that makes connections between things.

For this (currently only in the Tone.js interface) you can use the `obj` and `get` message to get an element from an object.

For example, the Tone.js PolySynth needs a member of the Tone libarary to set as the `voice` type. To do this we can use an object argument with the `obj` and `get` keywords, here to to ge the Synth member of the Tone library.

```
/* : {
	/key : "sound",
	/val : {
		/new : "PolySynth",
		/id : "psynth",
		/vars : {
			/polyphony : 4,
			/volume : 0,
			/detune : 0,
			/voice : {
				/obj : "Tone",
				/get : "Synth"
			}
		},
		/call : {
			/method : "toMaster"
		}
	}
}
```


## `drawsocket` JS Methods
The drawsocket object itself maybe referred to in JS scripts, for example in an object event watcher. The `drawsocket` object, exposes the following methods for general usage:
* `drawsocket.input`: the main entry point to the client script
* `drawsocket.send`: the WebSocket interface to send a JS object back to the server.
* `drawsocket.oscprefix`: the URL/OSC-prefix of the client, useful for self identifying when sending messages back to the server.

For example, the following message creates a new HTML input field, where users can type. When the user hits the Enter key, the script will send the value of the HTML form to the server prefixed by the client's OSC-prefix, and the `id` of this object:

```
/* : {
  /key : "html",
  /val : {
    /parent : "forms",
    /new : "input",
    /type : "text",
    /id : "userinput",
    /name : "userinput",
    /size : 10,
    /onkeydown : "if( event.key == 'Enter' ){
      let obj = {};
      obj[ drawsocket.oscprefix+'/'+this.id+'/input' ] = this.value;
      drawsocket.send( obj );
    }"
  }
}

```


## __file__
Clients can load JSON of stored messages, formatted in the `drawsocket` API detailed here.

Keywords:
* `fetch`: (required) URL of file to fetch relative to the `hfmt.drawsocket` root html folder (by default this is the same as the folder that the patch containg the `hfmt.drawsocket` is saved in.,
* `prefix`: (optional) the URL prefix to load into the page. If no prefix is specified `fetch` will load only the prefix matching the client URL.
  
For example, here we tell clients logged into the URL `/foo` to load the messages for URL `/bar` from the file "savedState.json".

```
/foo : {
    /key : "file",
    /val : {
        /fetch : "savedState.json",
        /prefix : "/bar"
    }
}

```

# __event__
The `event` keyword provides a mechanism for scheduling future object sent to the `drawsocket.input` function.

* `id`: the id of the event
* `del`: the delay time in milliseconds
* `obj`: an object to be sent to `drawsocket.input`, containing `key` and `val` values.

For example, the following example, an event is created and set with a delay (`del`) of 1000ms (1s). After this delay, the object stored at the the `obj` address, is sent to `drawsocket.input` and is executed, resulting in a short diagonal line, with the `id`  "foo1".

```
/* : {
	/key : "event",
	/val : {
		/id : "event1",
		/del : 1000,
		/obj : {
			/key : "svg",
			/val : {
				/new : "line",
				/id : "foo2",
				/x1 : 10,
				/x2 : 20,
				/y1 : 30,
				/y2 : 10
			}
		}
	}
}
```

# Storing the Sever State
The `hfmt.drawsocket` object in Max accepts the `writecache` message,to write the current cached messages to a file on disk.

The folder path is relative to the folder path of the patch in which the `hfmt.drawsocket` object is in.

Message syntax:

`writecache <relative folder path>/<filename>.json`

or, to write only one URL prefix:

`writecache <relative folder path>/<filename>.json /myURLPrefix`


# Importing Server Cache from File
The `hfmt.drawsocket` object in Max accepts the `importcache` message, to read a file from disk and import one or all `prefix` objects in the file.

The folder path is relative to the folder path of the patch in which the `hfmt.drawsocket` object is in.

Message syntax:

`importcache <relative folder path>/<filename>.json`

or, to read only one URL prefix:

`importcache <relative folder path>/<filename>.json /myURLPrefix`


## Using stored JSON files on other servers
A stored server/client state, saved in JSON format, may also be for online viewing, without the realtime WebSocket system, by serving the `drawsocket-default.html` file (with the associated scripts, and CSS files), and specifying a file name and prefix to load as discussed above via the `file` key.

For example, on a website called `www.foo.com` and a stored JSON file named `stored-cache.json`, we could load the `/1` OSC-URL prefix by using the following URL arguments (using the standard `?`,`&`, `=` special characters):

`http://www.foo.com/drawsocket-default.html?fetch=stored-cache.json&prefix=/1`

(Of course you could also save the HTML file under a differnt name of your choosing for your server)

# ping
The `hfmt.drawsocket` object accepts the `ping` Max message to querry the connection status of one or more clients.

# do_sync
`do_sync` (in dev), triggers the client clock time sychronization routine.

# statereq
The `hfmt.drawsocket` object accepts the `statereq` Max message to trigger a client update request for one or more clients.

For example, the message `statereq /*` triggers a state request for all clients.
