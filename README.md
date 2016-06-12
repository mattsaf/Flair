# Flair
by Matt Safian http://mattsafian.com

Helpful animation functions for Framer.js

## Setup
- [Download](https://github.com/mattsaf/flair/raw/master/flair.coffee) the latest version of Flair
- Add **flair.coffee** to the modules folder of your Framer project
- Require **flair.coffee** in your Framer document
```coffeescript
flair = require "flair"
```

## Using Flair
Flair allows you to quickly apply animations to any layer in your document. In the example below, we call the ```fade()``` function to animate the opacity of ```layerA``` to zero over 0.4 seconds.
```coffeescript
flair.fade(layerA, 0, 0.4)
```

Flair lets you animate a handful of layer properties:
- Opacity ```fade()```, ```fadeThenHide()```, ```fadeThenDestroy()```
- X position ```moveX()```, ```moveXDirect()```
- Y position ```moveY()```, ```moveYDirect()```
- Scale ```scale()```
- Visibility ```hideInstant()```, ```showInstant()```

To see the parameters for each function, open **flair.coffee** in a text editor.
