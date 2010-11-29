# RassKey: R(uby) ASCII library

RassKey provides a few simple ASCII helpers for Ruby. Since this is the first release, the current functionality is fairly limited:

 * RassKey::Box
 * String#to\_box helper

## RassKey::Box

RassKey::Box is a pretty basic ASCII box creator. It was designed to draw a box around a string. The primary use case was simple ASCII Visio-style charts.

Currently RassKey accepts two options describing the box:

 * padding
 * glyph

These can either be set via an options hash passed to the _draw_ method or as setters:

	>> require 'rasskey'
	=> true
	>> mybox = RassKey::Box.new :padding => 10, :glyph => "#"
	=> #<RassKey::Box:0x7eff41e181f0 @padding=10, @glyph="#">
	>> puts mybox.draw("This is a sample text")
	###########################################
	#                                         #
	#                                         #
	#                                         #
	#                                         #
	#                                         #
	#          This is a sample text          #
	#                                         #
	#                                         #
	#                                         #
	#                                         #
	#                                         #
	###########################################
	>> mybox.padding = 5
	=> 5
	>> mybox.glyph = "*"
	=> "*"
	>> puts mybox.draw("This is a sample text again")
	***************************************
	*                                     *
	*                                     *
	*     This is a sample text again     *
	*                                     *
	*                                     *
	***************************************

## String#to\_box

You can also use it as a String method:

	>> require 'rasskey'
	=> true
	>> mystr = "foobarbaz"
	=> "foobarbaz"
	>> puts mystr.to_box
	*************
	* foobarbaz *
	*************
	=> nil
	>> puts mystr.to_box :padding => 12, :glyph => "%"
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
