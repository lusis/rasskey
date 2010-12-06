# RassKey: R(uby) ASCII library

RassKey provides a few simple ASCII helpers for Ruby. The current functionality is fairly limited:

 * RassKey::Box
 * String#to\_box helper

## RassKey::Box

RassKey::Box is a pretty basic ASCII box creator. It was designed to draw a box around a string. The primary use case was simple ASCII Visio-style charts.

Currently RassKey accepts two options describing the box:

 * padding
 * glyph

These can either be set via an options hash passed at initialization or as setters:

	>> require 'rasskey'
	=> true
	>> mybox = RassKey::Box.new "This is sample text", :padding => 10, :glyph => "*"
	>> mybox.draw
	*****************************************
	*                                       *
	*                                       *
	*                                       *
	*                                       *
	*                                       *
	*          This is sample text          *
	*                                       *
	*                                       *
	*                                       *
	*                                       *
	*                                       *
	*****************************************
	>> mybox.padding = 5
	>> mybox.glyph = "*"
	>> mybox.text = "This is sample text again"
	>> mybox.draw
	*************************************
	*                                   *
	*                                   *
	*     This is sample text again     *
	*                                   *
	*                                   *
	*************************************

Additionally, you can get some information about the box:

	>> mybox = RassKey::Box.new
	>> mybox.padding = 5
	>> mybox.glyph = "*"
	>> mybox.text = "This is sample text again"
	>> mybox.draw
	*************************************
	*                                   *
	*                                   *
	*     This is sample text again     *
	*                                   *
	*                                   *
	*************************************
	>> mybox.area
	=> 259
	>> mybox.width
	=> 37
	>> mybox.height
	=> 7
	>> mybox.data
	=> ["*************************************", "*                                   *", "*                                   *", "*     This is sample text again     *", "*                                   *", "*

RassKey::Box#data contains an array consisting of each line of the box. RassKey::Box#draw simply calls Array#join("\n") on this data and puts it to stdout.

## String#to\_box

You can also use it as a String method:

	>> require 'rasskey'
	>> mystr = "foobarbaz"
	>> puts mystr.to_box
	*************
	* foobarbaz *
	*************
	>> mystr.to_box :padding => 12, :glyph => "%"
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	%                                 %
	%                                 %
	%                                 %
	%                                 %
	%                                 %
	%                                 %
	%            foobarbaz            %
	%                                 %
	%                                 %
	%                                 %
	%                                 %
	%                                 %
	%                                 %
	%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# TODO

 * Tests
 * Get attr\_accessors working for String helper
 * Get LICENSE headers and rdoc in place
 * Work on allowing multi-char glyphs
 * Word-wrapping for text
 * Other "shapes"
 * Custom elements (like say captions)
 * Draw links between shapes
 * Some type of canvas and auto-positioning
