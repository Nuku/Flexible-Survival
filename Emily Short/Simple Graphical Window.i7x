Version 8 of Simple Graphical Window (for Glulx only) by Emily Short begins here.

"Provides a graphics window in one part of the screen, in which the author can place images; with provision for scaling, tiling, or centering images automatically, as well as setting a background color. Glulx only."

Include Version 7 of Glulx Entry Points by Emily Short.

Section 1 - Creating Rocks and Building the Window Itself

Include(-

Constant GG_PICWIN_ROCK = 200;
Global gg_picwin = 0;

-) before "Glulx.i6t".

Before starting the virtual machine:
	do nothing. [Hack that, for complicated reasons, prevents character streams going to the wrong place at game startup under some conditions.]

Section 2 - Items to slot into HandleGlkEvent and IdentifyGlkObject

[These rules belong to rulebooks defined in Glulx Entry Points.]

A glulx zeroing-reference rule (this is the default removing reference to picwin rule):
	zero picwin.

To zero picwin:
	(- gg_picwin = 0; -)

A glulx resetting-windows rule (this is the default choosing picwin rule):
	identify glulx rocks.

To identify glulx rocks:
	(- RockSwitchingSGW(); -)

Include (-

[ RockSwitchingSGW;
	switch( (+current glulx rock+) )
	{
		GG_PICWIN_ROCK: gg_picwin = (+ current glulx rock-ref +);
	}
];

-)

A glulx arranging rule (this is the default arranging behavior rule):
	follow the current graphics drawing rule.

A glulx redrawing rule (this is the default redrawing behavior rule):
	follow the current graphics drawing rule.

A glulx object-updating rule (this is the automatic redrawing window rule):
	follow the current graphics drawing rule.

Section 3 - Inform 6 Routines for Drawing In Window

Include (-

[ FindHeight  result graph_height;
	if (gg_picwin)
	{	result = glk_window_get_size(gg_picwin, gg_arguments, gg_arguments+WORDSIZE);
             		graph_height  = gg_arguments-->1;
	}
	return graph_height;
];

[ FindWidth  result graph_width;
	if (gg_picwin)
	{	result = glk_window_get_size(gg_picwin, gg_arguments, gg_arguments+WORDSIZE);
             		graph_width  = gg_arguments-->0;
	}
	return graph_width;
];

 [ MyRedrawGraphicsWindows cur_pic result graph_width graph_height
		img_width img_height w_offset h_offset w_total h_total;

	if (FollowRulebook( (+glulx picture selection rules+) ) ) { cur_pic = ResourceIDsOfFigures-->(+ internally selected picture +); }
	if (cur_pic == 0) rtrue;

      if (gg_picwin) {

	result = glk_window_get_size(gg_picwin, gg_arguments, gg_arguments+WORDSIZE);
             	graph_width  = gg_arguments-->0;
             	graph_height = gg_arguments-->1;

	result = glk_image_get_info( cur_pic, gg_arguments,  gg_arguments+WORDSIZE);
	img_width  = gg_arguments-->0;
	img_height = gg_arguments-->1;

	w_total = img_width;
	h_total = img_height;

	if (graph_height - h_total < 0) !	if the image won't fit, find the scaling factor
	{
		w_total = (graph_height * w_total)/h_total;
		h_total = graph_height;

	}

	if (graph_width - w_total < 0)
	{
		h_total = (graph_width * h_total)/w_total;
		w_total = graph_width;
	}

	w_offset = (graph_width - w_total)/2; if (w_offset < 0) w_offset = 0;
	h_offset = (graph_height - h_total)/2; if (h_offset < 0) h_offset = 0;

	glk_image_draw_scaled(gg_picwin, cur_pic, w_offset, h_offset, w_total, h_total);
	}
 ];

[ BlankWindowToColor color result graph_width graph_height;

	! color = (+ assigned number of graphics background color +);
	if (color == 0) color = $000000;

      if (gg_picwin) {

	result = glk_window_get_size(gg_picwin, gg_arguments, gg_arguments+WORDSIZE);
             	graph_width  = gg_arguments-->0;
             	graph_height = gg_arguments-->1;

	glk_window_fill_rect(gg_picwin, color , 0, 0, graph_width, graph_height);
	}
];

 [ TileFillGraphicsWindows cur_pic result graph_width graph_height
		img_width img_height w_total h_total color;

	if (FollowRulebook( (+glulx picture selection rules+) ) ) { cur_pic = ResourceIDsOfFigures-->(+ internally selected picture +); }
	if (cur_pic == 0) rtrue;

	color = (+ assigned number of graphics background color +);
	if (color == 0) color = $000000;

      if (gg_picwin) {

	result = glk_window_get_size(gg_picwin, gg_arguments, gg_arguments+WORDSIZE);
             	graph_width  = gg_arguments-->0;
             	graph_height = gg_arguments-->1;

	result = glk_image_get_info( cur_pic, gg_arguments,  gg_arguments+WORDSIZE);
	img_width  = gg_arguments-->0;
	img_height = gg_arguments-->1;

	while (w_total < graph_width)
	{
		while (h_total < graph_height)
		{
			glk_image_draw(gg_picwin, cur_pic, w_total, h_total);
			h_total = h_total + img_height;
		}
		h_total = 0;
		w_total = w_total + img_width;
	}
	}
 ];

[ TotalFillGraphicsWindows cur_pic result graph_width graph_height
		img_width img_height;

	if (FollowRulebook( (+glulx picture selection rules+) ) ) { cur_pic =  ResourceIDsOfFigures-->(+ internally selected picture +); }
	if (cur_pic == 0) rtrue;

      if (gg_picwin) {

	result = glk_window_get_size(gg_picwin, gg_arguments, gg_arguments+WORDSIZE);
             	graph_width  = gg_arguments-->0;
             	graph_height = gg_arguments-->1;

	glk_image_draw_scaled(gg_picwin, cur_pic, 0, 0, graph_width, graph_height);
	}
 ];

!Array gg_arguments --> 0 0;

[ MakeGraphicsWindow depth prop pos;
	if (gg_picwin) rtrue;
	depth = (+ Graphics window pixel count +);
	prop = (+ Graphics window proportion +);
	pos = (+ Graphics window position +);
	switch(pos)
	{
		(+g-null+): pos = winmethod_Above;
		(+g-above+): pos = winmethod_Above;
		(+g-below+): pos = winmethod_Below;
		(+g-left+): pos = winmethod_Left;
		(+g-right+): pos = winmethod_Right;
	}
	if (prop > 0 && prop < 100)
	{
		gg_picwin = glk_window_open(gg_mainwin, (pos+winmethod_Proportional), prop, wintype_Graphics, GG_PICWIN_ROCK);
	}
	else
	{
		if (depth == 0) depth = 240;
		gg_picwin = glk_window_open(gg_mainwin, (pos+winmethod_Fixed), depth, wintype_Graphics, GG_PICWIN_ROCK);
	}
];
-).

Section 4 - Inform 7 Wrappers for Defining Window and Colors

Include Glulx Text Effects by Emily Short. [This makes colors available to us.]

Currently shown picture is a figure-name that varies. [This the author may set during the course of the source.]

Internally selected picture is a figure-name that varies. [This is the picture selected by the picture selection rules, which might be the 'currently shown picture' (by default) or might be, say, the current frame of an animation in progress. The author should not set this directly, but instead write additional picture selection rules if he wants to change it.]

Graphics window pixel count is a number that varies. Graphics window proportion is a number that varies.

Graphics background color is a glulx color value that varies.

Glulx window position is a kind of value. The Glulx window positions are g-null, g-above, g-below, g-left, and g-right.

Graphics window position is Glulx window position that varies.


Section 4a - More Wrappers (for use without Collage Tools by Emily Short)

To decide what number is the current graphics window width:
	(- FindWidth() -)

To decide what number is the current graphics window height:
	(- FindHeight() -)

To color the/-- graphics window (gcv - a glulx color value) from (x - a number) by (y - a number) to (xx - a number) by (yy - a number):
	let numerical gcv be the assigned number of gcv;
	color graphics window numerical gcv from x by y to xx by yy.

To color the/-- graphics window (gcv - a number) from (x - a number) by (y - a number) to (xx - a number) by (yy - a number):
	 (- glk_window_fill_rect(gg_picwin, {gcv} , {X}, {Y}, {XX}, {YY}); -)

To draw (fig - a figure-name) from (x - a number) by (y - a number) to (xx - a number) by (yy - a number):
	(- glk_image_draw_scaled(gg_picwin, ResourceIDsOfFigures-->{fig}, {x}, {y}, {xx}, {yy}); -)


Section 5 - Inform 7 Wrapper Rulebook for Picture Selection

The glulx picture selection rules are a rulebook.

A glulx picture selection rule (this is the default picture selection rule):
	now the internally selected picture is the currently shown picture;
	rule succeeds.

Section 6 - Inform 7 Wrapper Phrases and Rules for Drawing

To build graphics window:
	(- MakeGraphicsWindow(); -)

Current graphics drawing rule is a rule that varies. The current graphics drawing rule is the standard placement rule.

[By default we want to clear the screen to the established background color, then draw our image centered in the window, scaling it down to fit if necessary.]

This is the standard placement rule:
	blank window to graphics background color;
	follow the centered scaled drawing rule.

This is the bland graphics drawing rule:
	blank window to graphics background color;

To blank the/-- graphics/-- window to (bc - a glulx color value):
	blank the graphics window to the assigned number of bc;

To blank the/-- graphics/-- window to (bc - a number):
	(- BlankWindowToColor({bc}); -)

[We can also use the centered scaled drawing rule on its own, without blanking out the background, if we want. This might be useful if, for instance, we want to fill the background with a tiled texture and then place a centered image over the top of it.]

This is the centered scaled drawing rule:
	draw centered scaled image in graphics window.

To draw centered scaled image in graphics window:
	(- MyRedrawGraphicsWindows(); -)

[And here's the rule for tiling an image:]

This is the tiled drawing rule:
	draw tiled image in graphics window.

To draw tiled image in graphics window:
	(- TileFillGraphicsWindows(); -)

[And for scaling the image to fit the graphics window, without preserving aspect ratio but simply filling all the available space:]

This is the fully scaled drawing rule:
	draw fully scaled image in graphics window.

To draw fully scaled image in graphics window:
	(- TotalFillGraphicsWindows(); -)

[The purpose of this design is to allow authors to add their own rules for drawing graphics should the provided ones be thought insufficient, without needing to replace the entire extension. To do this, create a rule with a different name, a To... phrase to call an I6 function, and the I6 function itself, emulating the format used here.]

Simple Graphical Window ends here.

---- Documentation ----

Simple Graphical Window creates one graphics window, and provides some different methods of drawing images in that window. The window may be placed above, below, or beside the main text window (left or right), and may be sized or proportioned as we like, but there may be only one; this extension does not allow for drawing multiple graphics windows or creating a more complex window layout.

**** Rules for drawing in windows ****

Whenever Inform needs to re-fill the window -- at the start of the game, or when a saved game is restored, or when the player resizes the window manually -- Simple Graphical Window will follow a rule that varies, the "current graphics drawing rule". The author may set this to any of the following:

	(1) (The default.) The standard placement rule. The standard placement rule fills the window with a background color, then draws the currently shown picture (a figure-name that varies, and which the author can reset during the game). The picture is centered in the available screen space, unless it is too large, in which case it is scaled down proportionally to fit. A picture is never scaled up, on the grounds that upscaling images usually produces unattractively fuzzy results. Note that this and rules 2-4 will all behave incorrectly if we don't have at least one figure defined in our game source. In that case, see rule 5.

	(2) The fully scaled image rule. Fills the window completely with the currently shown picture, regardless of proportion. This is unlikely to look good with images of any complexity, but is included for completeness.

	(3) The tiled drawing rule. Tiles the currently shown picture to fill the available space horizontally and vertically.

	(4) The centered scaled drawing rule. Same as the standard placement rule, except that it does not fill the window with a background color first. This means that if there is something previously printed in the graphics window, this may overlap it.

	(5) The bland graphics drawing rule. Blanks the window to the background color and does nothing else.

To set this rule at the outset of play, we would write, for instance

	Rule for starting the virtual machine:
		now the current graphics drawing rule is the bland graphics drawing rule.

It is important to use the "starting the virtual machine" activity because this occurs before the first window-drawing happens; where as "when play begins" happens after the windows have already been set in place, when it is too late to give instructions about constructing them.


If we need to redraw the image in the window, we write

	follow the current graphics drawing rule.

For instance if we were adding an image to the screen every time the player moved, we might write something like

	Carry out looking:
		change currently shown picture to the room illustration of the location;
		follow the current graphics drawing rule.

...where the room illustration is defined for each room in the game. (The extension "Location Images" implements this idea in full.)

The author may also create other drawing rules of his own devising and make any of these the current graphics drawing rule, as needed. It will probably be necessary to specify graphics drawing rules in Inform 6 unless the author intends a fairly simple combination of the rules already provided here; for more information about graphics drawing in Glulx, see

	http://adamcadre.ac/gull/
	http://members.aol.com/doepage/glkdunces.htm

In writing these rules, it's worth bearing in mind that the rule should be able to reconstruct the entire contents of the graphics window every time it is called, rather than relying on things drawn there during previous moves; otherwise, the graphics window will not redraw properly when the game is reloaded or a turn is undone.

**** Window alignment ****

By default, the graphics window is drawn above the main text window and below the status line. There are three other options, however: left of the main text window, right of the main text window, and below the main text window. The alignment depends on "graphics window position", which can have any of the values g-left, g-above, g-right, and g-below. So for instance we might write

	Graphics window position is g-right.

to produce a window along the right side of the screen.

Note that window alignment and dimensions should be set at the outset; changing them after the start of play will not redraw the window in a new size.

**** Window dimensions ****

Graphics windows in Glulx can be of two kinds: fixed and proportional. A fixed window has a height (or width, if drawn left/right rather than above/below) of a set number of pixels regardless of the total screen area devoted to the game; a proportional window has a height (or width) relative to that of the main window, which may be between 1 and 99 percent.

If we prefer a proportional window, we set the "graphics window proportion" to some number between 1 and 99, thus:

	The graphics window proportion is 25.

If we prefer a fixed window, we set "graphics window pixel count", which should be a number reflecting the desired height of our graphics window in pixels. We can set this by adding a line to our source such as

	The graphics window pixel count is 150.

If both a graphics window pixel count and a graphics window proportion are given and the graphics window proportion is a valid number between 1 and 99, the proportion is obeyed and graphics window pixel count is simply ignored.

If no information is provided, the graphics window defaults to a fixed-count window of 240 pixels.

**** Glulx colors ****

The background color used by the standard placement rule depends on the "graphics background color". The graphics background color can be set to any value of the kind "glulx color value". This extension, relying on Glulx Text Effects, provides a table of glulx color values to start from, as follows:

	Table of Common Color Values
	glulx color value	assigned number
	g-black	0		[== $000000]
	g-dark-grey	4473924	[== $444444]
	g-medium-grey	8947848	[== $888888]
	g-light-grey	14540253	[== $DDDDDD]
	g-white	16777215		[== $FFFFFF]

where the assigned number of each value is the decimal representation of a hex color code. To use any of the preset values, we might write

	The graphics background color is g-black.

Moreover, the phrase "blank window to..." allows us to fill the graphics window with one of these preset colors, as in

	blank window to g-white;
	blank window to g-black;
	blank window to graphics background color;

It is likely that we'll want to use other colors besides those provided by this extension. We may do this by continuing the table thus:

	Table of Common Color Values (continued)
	glulx color value	assigned number
	g-yellow-orange	39423		[== $0099FF]
	g-ice-blue	15645627		[== $EEBBBB]

These numbers are conversions of hex color numbers. The principle is that the hex number represents the amount of blue in the first two digits (from 00 to FF); the amount of green in the next two digits; and the amount of red in the last two digits. Thus $0000FF has no blue or green in it, but the maximum possible amount of red. Where each pair of digits is equal (as in $444444 or $A0A0A0), we will have equal components of each color and the result will be some shade of grey. The number for g-ice-blue was selected by formulating a hex color number with a large amount of blue and a moderate amount of red and green ($EEBBBB). Similarly, the number for g-yellow-orange is the conversion of ($0099FF), with the maximum amount of red, a fair amount of green, and no blue.

Converting a hex number to a decimal one can be performed with a scientific calculator or with a hexadecimal conversion application found online; if we're at a loss, googling "hexadecimal conversion calculator" will likely turn up an appropriate application.

Example: * Mondrian - A strip of randomly varying color along the left edge of the screen


	*: "Mondrian"

	Include Simple Graphical Window by Emily Short.

	Stark Room is a room.

	The graphics window proportion is 10. The graphics window position is g-left.

	Rule for starting the virtual machine:
		now the current graphics drawing rule is the bland graphics drawing rule.

	Table of Common Color Values (continued)
	glulx color value	assigned number
	g-pure-red	255		[== $0000FF]
	g-pure-green	65280		[== $00FF00]
	g-pure-yellow	65535		[== $00FFFF]
	g-pure-cyan	16776960		[== $FFFF00]
	g-pure-magenta	16711935		[== $FF00FF]
	g-pure-blue	16711680		[== $FF0000]
	g-royal-blue	11141120		[== $AA0000]

	Every turn:
		change graphics background color to a random glulx color value;
		follow the current graphics drawing rule.

	Test me with "z / z / z / z / z / z".
