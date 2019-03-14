Version 11 of Flexible Windows (for Glulx only) by Jon Ingold begins here.

"An extension for constructing multiple-window interfaces. Windows can be created and destroyed during play. Facilities for per-window character input and hyperlinks are provided."

"with contributions by Erik Temple"


Include Glulx Entry Points by Emily Short.

Before starting the virtual machine:
	do nothing. [Hack that, for complicated reasons, prevents character streams going to the wrong place at game startup under some conditions.]

[ Code to make compatible with status line extensions. -- Aaron Reed. ]

Use no status line translates as (- Constant USE_NO_STATUS_LINE 1; -).
Include (-
#ifndef USE_NO_STATUS_LINE;
Constant USE_NO_STATUS_LINE 0;
#endif;
-).

Chapter 1 - Initialisations, windows and values

Section - Definitions of properties and values

A g-window is a kind of thing.

Include (-

Attribute g_present;

-) after "Definitions.i6t".


A g-window can be g-present or g-unpresent. A g-window can be g-required or g-unrequired.

The g-present property translates into I6 as "g_present".

A g-window is g-unpresent. A g-window is g-unrequired.

A g-window-position is a kind of value. The g-window-positions are g-placenull, g-placeleft, g-placeright, g-placeabove and g-placebelow.

A g-window-type is a kind of value. The g-window-types are g-proportional, g-using-minimum and g-fixed-size.

A g-window-kind is a kind of value. The g-window-kinds are g-text-buffer, g-text-grid and g-graphics.

Section - Assigning properties to g-windows

A g-window has a g-window-position called position.
A g-window has a g-window-kind called type.
A g-window has a g-window-type called scale method.
A g-window has a number called measurement.
A g-window has a number called minimum size.

A g-window has a g-window called direct parent. The direct parent is usually the main-window.

The minimum size of a g-window is usually 0.
The measurement of a g-window is usually 40.

A g-window has a number called rock-value. The rock-value is usually 0.
A g-window has a number called ref-number. The ref-number is usually 0.
Rock-value property translates into I6 as "rock_value".
Ref-number property translates into I6 as "ref_number".

direct parent property translates into I6 as "direct_parent".

A graphics g-window is a kind of g-window. The type of a graphics g-window is g-graphics.
A text-buffer g-window is a kind of g-window. The type of a text-buffer g-window is g-text-buffer.
A text-grid g-window is a kind of g-window. The type of a text-grid g-window is g-text-grid.

The window-drawing rules are an object-based rulebook.


When play begins (this is the allocate rocks rule):
	let cnt be 200;
	repeat with item running through g-windows:
		if the rock-value of item is 0:
			set item rock to cnt;
			increase cnt by 10;
		now the direct parent of item is the direct-parent of item;
	set main-window ref.

To set main-window ref:
(- MainWinRef(); -).

Include
(-
[ MainWinRef;
     (+main-window+).rock_value = GG_MAINWIN_ROCK;
     (+main-window+).ref_number = gg_mainwin;
     give (+main-window+) g_present;
];
 -).

To set (g - a g-window) rock to (n - a number):
(-   {g}.rock_value = {n}; -)


Section - Validating rock numbers (not for release)

When play begins (this is the rock validation rule):
	repeat with item running through g-windows:
		let L be the list of g-windows;
		remove item from L;
		repeat with compared running through L:
			if the rock-value of item is the rock-value of compared:
				say "***Warning: There appears to be a conflict in the rock numbers of the g-windows '[item]' and '[compared]'. Assign all rock-values for custom windows manually to remedy this problem. Avoid using 201 or 202, as these are reserved.";
				stop.


Section - The main-window object, to spawn windows from

The main-window is a text-buffer g-window.
The main-window is g-present. The main-window is g-required.
The position of the main-window is g-placebelow.

The rock-value of the main-window is 100.

To decide if rocks are currently unassigned:
	if rock-value of main-window is 100, yes; no.

Section - Spawning relations

Spawning relates various g-windows to various g-windows.

The verb to spawn (he spawns, they spawn, he spawned, it is spawned, he is spawning) implies the spawning relation.

The verb to be the spawner of implies the spawning relation.

Ancestry relates a g-window (called X) to a g-window (called Y) when the number of steps via the spawning relation from X to Y is at least 0. The verb to be ancestral to implies the ancestry relation.

Descendency relates a g-window (called X) to a g-window (called Y) when the number of steps via the spawning relation from Y to X is at least zero. The verb to be descended from implies the descendency relation.

Definition: a g-window is paternal if it spawns something g-present.
Definition: a g-window is childless if it is not paternal.

To decide which g-window is the direct-parent of (g - a g-window):
	repeat with item running through g-windows
	begin;
		if item spawns g, decide on item;
	end repeat.

Section - Test spawning relations (not for release)

Peeping is an action applying to one visible thing.

Understand "peep through [any g-window]" as peeping.

Carry out peeping (this is the peep rule):
	say "[noun]: spawns [a list of g-windows spawned by the noun].";
	say "ancestors: [a list of g-windows ancestral to noun].";
	say "descendants: [a list of g-windows descended from noun].";
	if noun is paternal, say "(currently paternal) ";
	else say "(currently childless) ";
	if noun is g-present, say "(present) "; else say "(missing) ";
	if noun is g-required, say "(required)."; else say "(unneeded).";

tracking it to is an action applying to two visible things.

Understand "track [any g-window] to [any g-window]" as tracking it to.

Carry out tracking it to:
	say "no. =>: [number of steps via the spawning relation from noun to second noun].";
	say "no. <=: [number of steps via the spawning relation from second noun to noun].";

Throwing open is an action applying to one visible thing.
Slamming shut is an action applying to one visible thing.

Understand "slam shut [any g-window]" as slamming shut.
Understand "throw open [any g-window]" as throwing open.

Carry out slamming shut:
	shut down the noun;

Carry out throwing open:
	open up the noun;


Chapter 2 - Opening, closing and calibrating

Section - Opening window chains
[ set opening flags for necessary parents, then call open window safely routine ]
[ which then calls back to the construct window routine given here ]

To open up (g - a g-window):
	if g is g-unpresent and the main-window is ancestral to g
	begin;
		now every g-window ancestral to g is g-required;
		calibrate windows;
	end if.

Section - Closing window chains
[ so set deletion flags for children too, then call delete window safely routine ]

To shut down (g - a g-window):
	carry out the window-shutting activity with g.
	[if g is g-present and g is not the main-window
	begin;
		now every g-window descended from g is g-unrequired;
		calibrate windows;
	end if;]

Window-shutting something is an activity.

For window-shutting a g-window (called g):
	if g is g-present and g is not the main-window
	begin;
		now every g-window descended from g is g-unrequired;
		calibrate windows;
	end if;


Section - Calibrating the window set to match expectations

Definition: a g-window is a next-step if it is spawned by something g-present.

To calibrate windows:
[ open g-required ung-present windows. start with directly spawned windows.
  close g-unrequired g-present windows. start with childless! ]
	let h be a random g-unrequired g-present childless g-window;
	while h is a g-window
	begin;
		g-destroy h;
		let h be a random g-unrequired g-present childless g-window;
	end while;
	let g be a random next-step g-required g-unpresent g-window;
	while g is a g-window
	begin;
		g-make g;
		let g be a random next-step g-required g-unpresent g-window;
	end while;


Chapter 3 - I6 and Glulx Calls

Section - I6 for making a window

Constructing something is an activity.

The pending g-window is a g-window that varies.[@Tag:NotSaved]

To g-make (g - a g-window):
	now g is g-present;
	now the pending g-window is g;
	begin the constructing activity with the pending g-window;
	let p1 be the pos-val for g of the position of g + method-val of the scale method of g;
	let p2 be 0;
	if the scale method of g is g-using-minimum, now p2 is the minimum size of g;
	else now p2 is the measurement of g;
	let p3 be the kind-val of the type of g;
	let p0 be the ref-number of the direct parent of g;
	now the ref-number of g is the reference created from p0 with p1 and p2 and p3 and rock value rock-value of g;
	end the constructing activity with the pending g-window;

To decide which number is the reference created from (p0 - a number) with (p1 - a number) and (p2 - a number) and (p3 - a number) and rock value (rock - a number):
(- (glk_window_open({p0},{p1}, {p2}, {p3}, {rock}))
-)

To decide which number is the pos-val for (g - a g-window) of (N - a g-window-position): (- (GetPos({N}, {g})) -).
To decide which number is the method-val of (N - a g-window-type): (- (GetMethod({N})) -).
To decide which number is the kind-val of (N - a g-window-kind): (- (GetKind({N})) -).

Include (-

[ GetKind kind;
	switch(kind)
	{
		(+g-text-buffer+):	return wintype_textbuffer;
		(+g-text-grid+):		return wintype_textgrid;
		(+g-graphics+):		return wintype_graphics;
	}
];

[ GetMethod type;
	switch(type)
	{
		(+g-proportional+): 	return winmethod_Proportional;
		default:		  	return winmethod_Fixed;
	}
];

[ GetPos pos win;
	switch(pos)
	{
		(+g-placeabove+): return winmethod_Above;
		(+g-placebelow+): return winmethod_Below;
		(+g-placeleft+): return winmethod_Left;
		(+g-placeright+): return winmethod_Right;
	}

];

-)

Section - I6 for destroying a window

To g-destroy (g - a g-window):
	now g is g-unpresent;
	delete ref-number of g;

To delete (N - a number):	(- glk_window_close({N}, 0); 	-)

section - Identify glx rubbish

A glulx zeroing-reference rule (this is the default removing references rule):
	doll-up properties; 	[ rebuild I7 properties, if we need to. ]
	if rocks are currently unassigned, follow the allocate rocks rule;
	repeat with g running through g-windows begin;
		if g is not main-window
		begin;
			now the ref-number of g is 0;
			now g is g-unpresent;
		end if;
	end repeat;

To doll-up properties: (- CreatePropertyOffsets(); -)

Definition: a g-window is on-call if the rock-value of it is the current glulx rock.

A glulx resetting-windows rule (this is the default reobtaining references rule):
	let g be a random on-call g-window; [ get the particular window we're looking to build]
	if g is a g-window and the current glulx rock is not zero begin;
		now the ref-number of g is the current glulx rock-ref;
		now g is g-present; [ the window is RIGHT HERE ]
	end if;

	[ by the end of this, all the windows which are actually present are marked thus, and have ref numbers. All those which aren't present are also marked. We then match this up to requirements. ]

The first glulx object-updating rule:
	set main-window ref;
	follow the delete-unrequired rule;
	follow the create-required rule.

This is the delete-unrequired rule:
	while the number of g-unrequired g-present g-windows is not zero
	begin;
		shut down a random g-unrequired g-present g-window;
	end while.

This is the create-required rule:
	while the number of g-required g-unpresent g-windows is not zero
	begin;
		open up a random g-required g-unpresent g-window;
	end while.

Section - Updating the contents of the windows

A glulx arranging rule (this is the arranging all rule):
	follow the refresh windows rule.

A glulx redrawing rule (this is the redrawing all rule):
	follow the refresh windows rule.

A glulx object-updating rule (this is the updating-after-undo all rule):
	follow the refresh windows rule.

This is the refresh windows rule:
	let old current be the current g-window;
	repeat with item running through g-present g-windows begin;
		now current g-window is the item;
		follow the window-drawing rules for the item;
	end repeat;
	if the old current is g-present
	begin;
		now current g-window is the old current;
		set focus to the current g-window;
	end if.

To refresh windows:
	follow the refresh windows rule.


Section - Some useful little functions

To decide which number is the measure of (g - a g-window):
	if the position of g is at least g-placeabove, decide on the height of g;
	decide on the width of g.

To decide which number is the width of (g - a g-window):
(-  	WindowSize({g}, 0) 	-).

To decide which number is the height of (g - a g-window):
(-  	WindowSize({g}, 1) 	-).

Include (-

[ WindowSize g index result;
	if (g hasnt g_present) return 0;
	result = glk_window_get_size(g.ref_number, gg_arguments, gg_arguments+WORDSIZE);
            return gg_arguments-->index;
];

-)

Chapter 4 - The constructing activity

Section - Fixing problems with window scaling

Before constructing a g-window when the scale method of the pending g-window is g-using-minimum (this is the reset minimum rule):
	now the scale method of the pending g-window is g-proportional;

The reset minimum rule is listed before the use minimum size instead rule in the Before constructing rulebook.

Before constructing a g-window when the scale method of the pending g-window is g-proportional (this is the fix broken proportions rule):
	if the measurement of the pending g-window > 100 or the measurement of the pending g-window < 0,
	now the scale method of the pending g-window is g-fixed-size;

Before constructing a g-window when the position of the pending g-window is g-placenull (this is the tile automatically windows rule):
	if the position of the direct parent of the pending g-window is at least g-placeabove, now the position of the pending g-window is g-placeright;
	else now the position of the pending g-window is g-placeabove.

Before constructing a g-window when the scale method of the pending g-window is g-proportional (this is the use minimum size instead rule):
	let p1 be 100 multiplied by the minimum size of the pending g-window;
[actually, this should be the size of the direct parent, shouldn't it? ]
	let p2 be the measurement of the pending g-window multiplied by width of the direct parent of the pending g-window;
	if p1 > p2, now the scale method of the pending g-window is g-using-minimum.

The first after constructing a g-window:
	if the ref-number of the pending g-window is zero, now the pending g-window is g-unpresent instead.

The last after constructing a g-window (this is the draw window after construction rule):
	if the pending g-window is g-present, follow the window-drawing rules for the pending g-window.


Section - Gargoyle Workaround

[Added by Erik Temple 22 May 2010]

[Workaround provided by Ben Cressey, with this explanation:

"Gargoyle has a bit of an issue with multiple text buffers. The
background color for the most recently created text buffer is used as
the color of the padding between the application borders and the
boundaries of the Glk window model. This padding is not part of Glk's
model and at best its behavior is undefined. At worst, the very
existence of such padding is disallowed by the spec. (I don't
actually know for sure.)

Gargoyle uses these hints to "guess" the appropriate color of the
padding. The above example would set it back to white, once you're
done opening all of your text buffers. Per the Glk spec, this will
have no effect on any Glk windows until the next time you open a text
buffer, so as a practical matter it should do nothing in other Glk
implementations."

( from https://groups.google.com/forum/#!msg/rec.arts.int-fiction/t2cYg_A5FMw/a7vx3OIWg7gJ )

(The workaround as incorporated here accepts a glulx color value (see Glulx Text Effects) rather than defaulting to white as in the originally posted code.)

After each text-buffer window is opened, the "Gargoyle text-buffer workaround rule" resets the text-buffer background color stylehint to the background color of the main-window.

The phrase used to accomplish this could also be used to set the Gargoyle border color to a *different* color from that of any of the windows. After all of your text-buffers have been opened, set the background color as desired, e.g.:

	set the Gargoyle background color to the color g-Lavender.

]

After constructing a g-window when the type of the pending g-window is g-text-buffer (this is the Gargoyle text-buffer workaround rule):
	if the back-color of the main-window is g-placenullcol:
		set the text-buffer background color to g-white;
	else:
		reset the text-buffer background color to the back-color of the main-window.

To set/reset the/-- Gargoyle/-- text/text-buffer/-- window/-- background color/-- to the/-- color/-- (color_value - a glulx color value):
	(- HintGargoyleBorder ({color_value});-)

Include (-

[ HintGargoyleBorder color_value col ;
	col = ColVal(color_value);
	glk_stylehint_set(wintype_textbuffer, 0, stylehint_backcolor, col);
];

-).


Chapter 5 - Writing to different windows

Section - Shifting and knowing where we are

[ Updated code by Erik Temple. ]

The current g-window is a g-window that varies.[@Tag:NotSaved] The current g-window is the main-window.

To set/move/shift the/-- focus to (g - a g-window), clearing the window:
    if g is g-present
    begin;
        now the current g-window is g;
        set cursor to ref-number of g;
        if clearing the window, clear the current g-window;
    end if.

To set cursor to the/-- (N - a number):
(-       glk_set_window({n}); -)

To clear the/-- (win - a g-window):
	if the type of win is g-graphics:
		graphics-clear win;
	else:
		text-clear win.

To text-clear the/-- (g - a g-window):
(-    if ({g} has g_present) glk_window_clear({g}.ref_number); -).

To graphics-clear the/-- (g - a g-window):
(-    if ({g} has g_present) FWBlankWindowToColor({g}); -).


Include (-

[ FWBlankWindowToColor g result graph_width graph_height col;
    col = ColVal(g.back_color);
    result = glk_window_get_size(g.ref_number, gg_arguments, gg_arguments+WORDSIZE);
                 graph_width = gg_arguments-->0;
                 graph_height = gg_arguments-->1;

    glk_window_fill_rect(g.ref_number, col, 0, 0, graph_width, graph_height);
];


-).


Section - Returning to the main screen

To return to main screen/window: set focus to main-window.


Section - Setting the cursor

To position the cursor in (g - a g-window) at row (y - a number) column (x - a number):
(-	SetCursorTo({g}, {x}, {y}); 		-).

Include (-

[ SetCursorTo win row col;
	if (win has g_present)
		glk($002B, win.ref_number, row-1, col-1); ! window_move_cursor
];

-).

Section - Background colors

Include Glulx Text Effects by Emily Short.

Table of Common Color Values (continued)
glulx color value		assigned number
g-placenullcol		0
g-darkgreen	25600
g-green		32768
g-lime		65280
g-midnightblue	1644912
g-steelblue	4620980
g-terracotta	11674146
g-navy		128
g-mediumblue	205
g-blue		255
g-indigo		4915330
g-cornflowerblue	6591981
g-mediumslateblue	8087790
g-maroon	8388608
g-red		16711680
g-deeppink	16716947
g-brown		9127187
g-darkviolet	9699539
g-khaki		12433259
g-silver		12632256
g-crimson	14423100
g-orangered	16729344
g-gold		16766720
g-darkorange	16747520
g-lavender	16773365
g-yellow		16776960
g-pink		16761035

A g-window has a glulx color value called back-color. The back-color of a g-window is usually g-placenullcol. The back-color property translates into I6 as "back_color".

Before constructing when the type of the pending g-window is g-text-buffer (this is the set text-colors rule):
	set the background text-color of the pending g-window;

After constructing when the type of the pending g-window is g-text-buffer (this is the reset text-colors rule):
	reset the background text-color of the pending g-window;

After constructing when the type of the pending g-window is g-graphics (this is the color-graphics rule):
	set the background color of the pending g-window;

To set the background text-color of (g - a g-window):
(-	SetBTcol({g}); -).

To reset the background text-color of (g - a g-window):
(-	if ({g} has g_present) glk_window_clear({g}.ref_number);
	ResetBTCol();
-)

To set the background color of (g - a g-window):
(-	if ({g} has g_present) SetBCol({g}.ref_number, {g}.back_color);
-).

Include
(-

Constant glulx_color_table = (+Table of Common color Values+);

[ ColVal c i max;
	max=TableRows(glulx_color_table);
	for ( i=1:i<=max:i++ ) {
		if (TableLookUpEntry(glulx_color_table, 1, i) ==  c)
			return TableLookUpEntry(glulx_color_table, 2, i);
	}
];

[ ResetBTCol i;
  for (i = 0: i < style_NUMSTYLES : i++)
	glk_stylehint_clear(wintype_textbuffer, i, stylehint_backcolor);
];


[ SetBTCol gwin col i;
  col = gwin.back_color;
  if (col == (+g-placenullcol+)) rfalse;
  col = ColVal(col);
  for (i = 0: i < style_NUMSTYLES : i++)
 	 glk_stylehint_set(wintype_Textbuffer, i, stylehint_BackColor, col);
];

[ SetBCol win col result;
	if (col ~= (+g-placenullcol+)) glk_window_set_background_color(win, ColVal(col));
	glk_window_clear(win);
];

-)


Include
(-
	[ InitGlkWindow winrock i col;
		switch(winrock){
			GG_MAINWIN_ROCK:
				if ((+main-window+).back_color ~=  (+g-placenullcol+))
				{ 	col = ColVal((+main-window+).back_color);
					for (i = 0: i < style_NUMSTYLES : i++)
					glk_stylehint_set(wintype_TextBuffer, i, stylehint_BackColor, col);
					glk_window_clear((+main-window+).ref_number);
  glk_stylehint_set(wintype_TextBuffer, style_Emphasized, stylehint_Oblique, 1);
  glk_stylehint_set(wintype_TextBuffer, style_Emphasized, stylehint_weight, 0);

					rfalse;
				}
			GG_STATUSWIN_ROCK:
				if (USE_NO_STATUS_LINE == 1) rtrue; ! - Aaron Reed
		}

		rfalse;

	];

-) after "Definitions.i6t".


Section - Reverse-coloring windows

To set-reverse: 	(-	SetReverse(1); -);
To unset-reverse: 	(-	SetReverse(0); -);

Include (-

[ SetReverse flag i;
   for (i = 0: i < style_NUMSTYLES : i++)
       if (flag)
	glk_stylehint_set(wintype_textgrid, i, stylehint_ReverseColor, 0);
      else
	glk_stylehint_clear(wintype_textgrid, i, stylehint_ReverseColor);

];

-).


Section - Bordered g-windows

A bordered g-window is a kind of g-window. A bordered g-window has a glulx color value called border-color.
A bordered g-window has a number called border-measure. The border-measure of a bordered g-window is usually 3.

A g-border is a kind of g-window.
The type of a g-border is always g-graphics. The scale method of a g-border is always g-fixed-size.

Every bordered g-window spawns four g-borders.

After constructing a bordered g-window (called the main-panel) (this is the place-borders rule):
	apply borders to main-panel;

To apply borders to (main-panel - a g-window):
	let border piece be g-placeleft;
	repeat with item running through g-borders spawned by the main-panel
	begin;
		now the back-color of the item is the border-color of the main-panel;
		now the measurement of the item is the border-measure of the main-panel;
		now the position of the item is border piece;
		let the border piece be the g-window-position after border piece;
		now the item is g-required;
	end repeat.

When play begins when the main-window is a bordered g-window:
	apply borders to main-window.


Chapter 6 - Echo streams

To set the/-- echo stream of (win1 - a g-window) to the/-- stream of (win2 - a g-window):
	(- glk_window_set_echo_stream({win1}.ref_number, glk_window_get_stream({win2}.ref_number)); -)

To set the/-- echo stream of (win1 - a g-window) to the/-- echo stream of (win2 - a g-window):
	(- if (glk_window_get_echo_stream({win2}.ref_number)) {glk_window_set_echo_stream({win1}.ref_number, glk_window_get_echo_stream({win2}.ref_number)); } -)

To echo the/-- stream of (win2 - a g-window) to the/-- stream of (win1 - a g-window):
	(- glk_window_set_echo_stream({win1}.ref_number, glk_window_get_stream({win2}.ref_number)); -)

To shut down the/-- echo stream of (win - a g-window):
	(- if (glk_window_get_echo_stream({win}.ref_number)) { glk_window_set_echo_stream({win}.ref_number, GLK_NULL); } -)

To decide whether (win - a g-window) has an/-- echo stream:
	(- (glk_window_get_echo_stream({win}.ref_number)) -)


[The following phrase allows us to print text directly to the echo stream of a window, bypassing the window itself. We can, for example, use it to print text directly to the transcript, without showing the written text during play at all. For example, if the SCRIPT ON command is active, the echo stream of the main window is almost certain to be the transcript. If we want to write one block of text to the transcript alone, and a second block of text to both the screen and the transcript, we could do this:

	say "[echo stream of main-window]This text goes only to the transcript. [stream of main-window]This text goes to both the main-window and the transcript."
]

To say echo stream of (win - a g-window):
	(- if (glk_window_get_echo_stream({win}.ref_number)) { glk_stream_set_current( glk_window_get_echo_stream({win}.ref_number) ); } -)

To say stream of (win - a g-window):
	(- glk_set_window({win}.ref_number); -)


Section - Echo streams and the transcript

To decide whether we are writing to/-- the/a/-- transcript:
	(- gg_scriptstr -)

To echo the/-- text/-- stream of (win - a g-window) to the/-- transcript:
	(- if (gg_scriptstr) glk_window_set_echo_stream({win}.ref_number, gg_scriptstr); -)


Chapter 7 - Glk event handling phrases

[Added by Erik Temple 22 May 2010]

[These phrases only work within the Glk event-handling rulebooks defined in the Glulx Entry Points extension. These are:

The glulx line input rules	command line input
The glulx character input rules	keystroke input
The glulx hyperlink rules	text hyperlink
The glulx mouse input rules	mouse input in a graphics window
The glulx redrawing rules	graphic window needs redrawing
The glulx arranging rules	windows may need redrawing
The glulx sound notification rules	sound has finished playing
The glulx timed activity rules	timer event
]

[The following phrase will only work within the rules defined in the Glulx Entry Points extension. Specifically, it will only work with the following rulebooks:

The glulx redrawing rules
The glulx arranging rules
The glulx mouse input rules
The glulx character input rules
The glulx line input rules
The glulx hyperlink rules

The phrase will return 0 for the timed activity and sound notification rules, which are not associated with any window.

The phrase can be used with Flexible Windows like so:

	if the ref-number of the current window is the reference of the window in which the event was requested:
		...do something with this information...
]

To decide which number is the reference of the/-- window in/of/-- which/-- the/-- event was/-- requested/occurred/--:
	(- (gg_event-->1) -)

[The following phrase can only be used within the glulx hyperlink rulebook.]

To decide which number is the link/-- number of the/-- selected/clicked hyperlink:
	(- (gg_event-->2) -)


Chapter 8 - Basic keystroke input

[Added by Erik Temple 22 May 2010]

[These phrases simply recast the keystroke commands from Basic Screen Effects in a way that allows them to be called from any compatible window (that is, from a text-buffer or text-grid window; char input cannot be called from a graphics window).]

To request character input in (win - a g-window):
	(- glk_request_char_event({win}.ref_number); -)

To cancel line input in (win - a g-window):
	(- glk_cancel_line_event({win}.ref_number, GLK_NULL); -)

To cancel character input in (win - a g-window):
	(- glk_cancel_char_event({win}.ref_number); -)

To wait for any key in (win - a g-window):
	(- WinKeyPause({win}.ref_number); -)

To wait for the/-- SPACE key in (win - a g-window):
	(- WinSPACEPause({win}.ref_number); -)

To decide what number is the character code entered in (win - a g-window):
	(- WinGetKey({win}.ref_number) -)

Include (-

[ WinKeyPause win i ;
	i = VM_KeyChar(win);
	rfalse;
];

[ WinSPACEPause win i;
	while (i ~= 13 or 31 or 32)
	{
		i = VM_KeyChar(win);
	}
];

[ WinGetKey win i;
	i = VM_KeyChar(win);
	return i;
];

-)


Chapter 9 - Text hyperlinks (for use without Basic Hyperlinks by Emily Short)

[Added by Erik Temple 22 May 2010 -- Heavily based on Basic Hyperlinks by Emily Short]

Section - Initiating hyperlink handling

The current hyperlink window is a g-window variable.

When play begins (this is the initial hyperlink request rule):
	request glulx hyperlink event in the main-window;
	request glulx hyperlink event in the status window.

After constructing a g-window when the type of the pending g-window is not g-graphics (this is the look for links on opening rule):
	request glulx hyperlink event in the pending g-window.

The look for links on opening rule is listed after the draw window after construction rule in after constructing.


Section - Hyperlink event handling

A glulx hyperlink rule (this is the default hyperlink handling rule):
	unless the status window is the hyperlink source:
		now the current hyperlink window is the window with the reference of the window in which the event occurred;
	now the current hyperlink ID is the link number of the selected hyperlink;
	unless the current hyperlink ID is 0:
		cancel glulx hyperlink request in the current hyperlink window; [just to be safe]
		follow the hyperlink processing rules;
	if the status window is the hyperlink source:
		request glulx hyperlink event in status window;
	else:
		request glulx hyperlink event in the current hyperlink window.

To request glulx hyperlink event in (win - a g-window):
	(-  if (glk_gestalt(gestalt_Hyperlinks, 0)) glk_request_hyperlink_event({win}.ref_number); -)

To cancel glulx hyperlink request in (win - a g-window):
	(-  if (glk_gestalt(gestalt_Hyperlinks, 0)) glk_cancel_hyperlink_event({win}.ref_number); -)

To request glulx hyperlink event in the/-- status window:
	(-  if (glk_gestalt(gestalt_Hyperlinks, 0) && gg_statuswin) glk_request_hyperlink_event(gg_statuswin); -)

To cancel glulx hyperlink event in the/-- status window:
	(-  if (glk_gestalt(gestalt_Hyperlinks, 0) && gg_statuswin) glk_cancel_hyperlink_event(gg_statuswin); -)

To decide whether the status window is the hyperlink source:
	(- (gg_event-->1==gg_statuswin) -)

To decide which g-window is the window with (N - a number):
	repeat with item running through g-windows:
		if N is the ref-number of item:
			decide on item;
	decide on main-window.


Section - Placing hyperlinks

To say link (N - a number):
	(-  if (glk_gestalt(gestalt_Hyperlinks, 0)) glk_set_hyperlink({N}); -)

To say end link:
	(-  if (glk_gestalt(gestalt_Hyperlinks, 0)) glk_set_hyperlink(0); -)


Section - Processing hyperlinks

The hyperlink processing rules are a rulebook.

The current hyperlink ID is a number that varies.[@Tag:NotSaved]


Section - Selecting the replacement command

The last hyperlink processing rule (this is the default command replacement by hyperlink rule):
	repeat through the Table of Glulx Hyperlink Replacement Commands:
		if the current hyperlink ID is link ID entry:
			now the glulx replacement command is replacement entry;
			rule succeeds;
	now glulx replacement command is "".


Table of Glulx Hyperlink Replacement Commands
link ID	replacement
a number	some text


Flexible Windows ends here.


---- DOCUMENTATION ----

	Chapter: Introduction

	Section: Overview

Flexible Windows allows the Glulx author to construct and fill a series of multiple windows, which can be created and destroyed safely during the course of play. Restarts and restores are all handled properly. Windows can be graphical, text-buffers (like the main window is) or text-grids (in which case, glk calls can be used to place characters anywhere within them).

Although Flexible Windows does not supply any rules for using graphical windows beyond the most basic, several can be found in Emily Short's Simple Graphical Window extension. The examples below demonstrate some ideas. However, Flexible Windows is not compatible with Simple Graphical Window. The Glimmr family of extensions provides extensive support for graphics in Flexible Windows.

Flexible Windows requires Glulx Entry Points by Emily Short.

Note that as of version 9, the method of specifying drawing rules for windows has changed. See the Window Rules section below.

	Chapter: Constructing a Layout

	Section: Concepts

All games start, by default, with a status bar along the top of the screen, and the main window below. Glulx windows are formed from the main window by carving off segments using either horizontal or vertical strokes, with each stroke creating one new window, from which further windows can be cut. This automatically creates a tree-structure for windows, with each new window being sliced from one that came before. The extension refers to this process as "spawning", and you set up your layout of windows by telling the game which window spawns which.

These relationships - which window spawns which - must be inflexible throughout the game: although they may be multiple structures which the game can chop and change between, altering which window spawns which will likely cause UNDO and RESTORE commands to fail in strange ways. However, in practice this isn't too much of a restriction, as two windows with different names can easily be made to do the same things (see the section on Using the Windows, below).

One g-window object is created by default, though its properties are unimportant. It is called main-window, and its purpose is to spawn other windows.

	Section: Positioning windows

Each window is a thing of the kind g-window, which has several properties relating to its layout.

The position of each new window is specified using one of four positions, g-placeabove, g-placebelow, g-placeleft and g-placeright. Note, these indicate where the new window will be, rather than the direction of the slice taken.

So for example, to creating a banner between the main screen and the status, we would write

	The banner-window is a g-window. The main-window spawns the banner-window. The position of the banner-window is g-placeabove.

For a more complicated layout, akin to a standard email client, with folder list, contacts, preview and files windows, we would write

	The contacts-pane, folder-list and preview-window are g-windows. The main-window spawns the preview-window and the contacts-pane. The contacts-pane spawns the folder-list.

	The position of the preview-window is g-placebelow. The position of the contacts-pane is g-placeleft. The position of the folder-list is g-placeabove.

(Try sketching it out on a piece of paper.)

	Section: Sizing Windows

Once the rough positions of the windows has been decided, the next thing to allocate is their size. This can be done two ways, either by taking a proportional of the window being spawned from (so a 40% slice or a 15% slice), or taking a window of fixed size (in pixels for graphics windows, and in columns/rows for text windows). The proportion to take, or the width of a fixed size side-window (equivalently, the height of a top or bottom window) is set using the "measurement" property of the g-window. So we could write

	The scale method of the side-window is g-proportional. The measurement of the side-window is 25.

	The scale method of the banner-window is g-fixed-size. The measure of the banner-window is 30.

Finally, if we are using proportional windows, we can optionally set a "minimum size", which if the window gets below, it will take, rather than using the proportional scale.

	Section: Specifying Window Type

As mentioned above there are three types of Glulx window, text-buffer, text-grid and graphics. A text-buffer is a teletype-style stream of text (akin to the main window), a graphics screen cannot accept text but can render images, and a text-grid allows for flexible positioning of text characters using cursor-movement functions.

There are two potential ways to define a window's type. One is to declare it to be of the appropriate kind:

	The side-window is a text-buffer g-window
	The side-window is a text-grid g-window
	The side-window is a graphics g-window

The other way is to set the "type" property to one of g-text-buffer, g-text-grid, or g-graphics. This is useful when we can't use one of the kinds given above. For example, the "bordered g-window" kind described below can potentially be any of the three types, so it is best to simply specify it by using the property. The following statements are true (although they don't actually appear anywhere in the extension):

	The type of the main-window is g-text-buffer.
	The type of the status-window is g-text-grid.

Window type can be changed during the game, however, it will only take effect when the window is opened.


	Section: Defaults and Corrections

Opening a new window is an activity that gets called for the pending window. This activity is the "constructing something" activity, and it's used to set background colors, neatly arranged unpositioned new windows, and apply the minimum width rules. New rules can be written before and after this activity. These rules may refer to "the pending g-window"; note that before, this window will not yet be in existence on the screen but its properties can be changed, and after it should be present on the screen.

Should you want to make changes to the styles for the windows, this is also the place to do it (see the Glk spec for more information on this). During the before phase, set the stylehint you want. During the after phase, remove it again, so that it doesn't affect other newly created windows. (See background color rules for an example of this).


	Section: Rock values

Internally, Glulx windows are dynamic objects, created as they are opened and destroyed as they are closed. Our g-windows, on the other hand, are static objects. When Flexible Windows opens a window, it gives the window a number, called the "rock" value. This value serves as a way for the dynamic Glk/Glulx window object to identify itself as the current instantiation of the static g-window object that shares the same rock.

Normally, Flexible Windows will set the rock values for all g-windows automatically, and the whole process occurs behind the scenes. There may be times, however, when we want to set a g-window's rock to a particular value. For example, Quixe, the javascript Glulx interpreter, uses rock values to identify windows for styling with CSS. In that system, the CSS for a window with rock value 210 might look like this:

	.WindowRock_210 { background-color: blue; }

Rocks should be numbered 200 and above. It is customary, though not necessary, to skip 10 when adding a new window; that is, for three windows, we'd have 205, 215, and 225. This is how Flexible Windows will assign them if we don't intervene. To ensure that a g-window gets a particular rock value, we can set it like so:

	The rock-value of the graphics-window is 245.

If we set numbers ending in 5 for our manual rocks, we will never conflict with the automated numbering.


	Chapter: Using Windows

	Section: Overview

This extension provides little in the way of support for graphics windows or text-grid windows, both of which can display images and draw shapes in a full range of colors. Text-grids can also locate the cursor (so, say, could be used to make a pac-man game). A few useful phrases for text-buffer windows are supplied.

	Section: Opening Windows

	open up side-window
	open up banner-window

The only point to note is that the "open up" command will, if necessary, also open any sub-windows required to reach the window you've asked for. So if the side-window is a spawn of the banner-window, and the banner-window is currently not open, the "open up side-window" command will open both. As mentioned above, spawning order is not editable once the game has started, so if you need flexibility on this, you'll need to make multiple, identical-acting windows (see Window Rules, below).

We set the cursor using

	set the cursor to the main-window;

When writing and drawing to windows we should be careful they exist, otherwise the game will crash strangely. You can check the existence of a window at any time by testing for the g-present property.

	if side-window is g-present...
	if side-window is g-unpresent...

Since a lot of I6 code comes along with Glulx windows, these attributes exist cleanly in I6 too, (note the underscore replacing the hyphen).

	if ((+side-window+) has g_present)...
	if ((+banner-window+) hasnt g_present)...

	Section: Closing Windows

	shut down side-window

The point above applies here, in reverse: shutting a window will also shut all sub-windows contained by it.

	Section: Window Rules

When a window is opened or redrawn, the window-drawing rules for that window are consulted. The window-drawing rule should (ideally) be able to reconstruct entirely the contents of the window (otherwise, after an UNDO or a RESTORE, information will be lost). Rules for graphical drawing will want to use glk calls to place images--see Simple Graphical Window for examples.

Text windows are supplied with three important phrases: one to move the focus to a different window, one to clear that window (if required), and one to shift the focus back. A drawing rule for a window designed to display the player's inventory would use all three, and take the following form:

	A window-drawing rule for the side-window (this is the display inventory in side-window rule):
		move focus to side-window, clearing the window;
		try taking inventory;
		return to main screen;

Any text window can be cleared at any time using

	clear main-window;
	clear side-window;

Note that Version 9's handling of drawing rules is different from earlier versions, and will require some changes to existing source code:

	1) The "drawing rule" property for windows no longer exists. References to this property should be removed.

	2) The rule preamble for drawing rules should be changed to the form:

		A window-drawing rule for the side-window

	3) Specific invocations of drawing rules should be changed to read as follows:

		follow the window-drawing rules for the side-window


	Section: Locating the current window

Side windows taking inventories and such-like might want to be able to tell the usual game rules that they're the ones doing so. Throughout the game, the variable "current g-window" tells the game where the output is going. So

	Rule for printing the name of the old book while taking inventory and the current g-window is side-window:
		say "The Meteor, the Stone (etc.)" instead.

	Section: Placing the cursor (text-grids only)

We can position the cursor in text-grid windows using the following phrase

	... position the cursor in side-window at row 2 column 1;

where row and column start from (1,1) in the top left.

	Section: Redrawing windows

We can redraw a specific window by saying

	follow the window-drawing rules for the side-window

though this should really be more careful that the side-window exists at present. Better yet is

	if side-window is g-present, follow the window-drawing rules for the side window

If we want to update all the sub-windows quickly, we can invoke the refresh window rule

	follow the refresh windows rule
	refresh windows

which does just that, carefully, and without bothering windows that aren't there.


	Chapter: Debugging verbs

This may or may not be helpful!

	Throw open any window - force open the window
	Slam shut any window - force close the window

	Track window to window - counts the number of spawn steps from noun to second (and back again, so you don't need to get the order right)

	Peep through window - Debug info on the window: what does it spawn, what spawns from it, and what Flexible Window attributes does it carry.

	Chapter: Special features

	Section: Overview

Note: these don't render well across the spectrum of Glulx interpreters.

	Section: Background color

Windows can have a back-color, specified as one from the (reasonably large) Table of Common Color Values (based on but extended from Glulx Text Effects, by Emily Short). The possible colors are:

	g-darkgreen, g-green, g-lime, g-midnightblue, g-steelblue, g-terracotta, g-navy, g-mediumblue, g-blue, g-indigo, g-cornflowerblue, g-mediumslateblue, g-maroon, g-red, g-deeppink, g-brown, g-darkviolet, g-khaki, g-silver, g-crimson, g-orangered, g-gold, g-darkorange, g-lavender, g-yellow, g-pink.

and they are assigned by including a line like so:

	The side-window has back-color g-red.
	The main-window has back-color g-darkgreen.

At present, colors in graphics windows are reasonably well-supported (and if not, are unlikely to do any harm). Background colors in text windows can cause a series of ugly effects; such as the color only appearing behind printed characters, or the background color copying itself into all other text windows.

The main-window can be supplied a background color in the same way.

	Section: Borders

A window can be defined as a "bordered g-window", and it will then be produced with a border of "border-measure" thickness and "border-color" color. (This is wastefully done; it actually places four thin windows around the window constructed, but harmlessly so).

The main-window can be bordered too, by declaring that "the main-window is a bordered g-window".

    Section: Status Line

By default, Glulx games will incorporate a status line. To turn this off quickly, a use option is provided:

	Use no status line.


	Chapter: Alternative input

	Section: Character input (single keystroke)

The built-in extension Basic Screen Effects already handles single keystroke input (also known as "char input" or "character input"), but it can do so only in the main window. Even in a multiple window layout, this if often sufficient, since in nearly all games the main window will always be open, and thus always available for input. However, there may be some situations in which we want to accept character input in other windows, such as when another window has been opened "in front" of the main-window for some special purpose. For these situations we offer the following phrases. Note that most of them are simply extensions of the Basic Screen Effects phrases to allow specification of the window:

	wait for any key in the side-window
	wait for the SPACE key in the side-window

	...the character code entered in the side-window

The latter phrase both checks for a keypress and return a representation of the input as a numerical code. For example, the following would check for a keypress on startup, and print something if the key pressed was the spacebar:

	When play begins:
		if the character code entered in the main-window is 32:
			say "You pressed the space bar. Good work."


	Section: Hyperlinked text

Flexible Windows also offers the ability to place hyperlinks in text windows. The hyperlink functionality in Flexible Windows is based on that in Emily Short's Basic Hyperlinks extension. In fact, if you are moving an existing project to Flexible Windows, you may simply include Basic Hyperlinks to avoid making any changes to your existing hyperlink code. If you are starting a new project, though, it is recommended that you simply use the Flexible Windows commands (Though the functionality is similar, Flexible Windows uses a different namespace from Basic Hyperlinks.)

By default, Flexible Windows's response to a clicked hyperlink is to enter a replacement command at the prompt on behalf of the player. To set a hyperlink, enclose the text to be linked between "set link <number>" and "end link" phrases:

	say "To the [set link 1]north[end link] a wide field opens, while to the [set link 2]south[end link] a narrow path winds into dark woods."

Hyperlink replacement commands are defined by the Table of Glulx Hyperlink Replacement Commands. Hyperlinks are numbered, starting from 1:

	Table of Glulx Hyperlink Replacement Commands (continued)
	link ID	replacement
	1	"GO NORTH"
	2	"GO SOUTH"

If a link ID number has no corresponding text command in the table of replacement commands, nothing will happen when the link is clicked.

To define custom behavior for a particular link, we write a new rule for the hyperlink processing rulebook. For example, to have a hyperlink simply clear the screen immediately, without pasting any text to the command line:

	Hyperlink processing rule when the current hyperlink ID is 1:
		clear the main-window;
		silently try looking;
		say "[command prompt][run paragraph on]";
		rule succeeds.

When we use this type of rule, we need not put anything in the Table of Glulx Hyperlink Replacement Commands. This table is only consulted when the default hyperlink processing rule is run.

Note that Flexible Windows will also register hyperlinks in the status line. We define these like we do any other hyperlink, e.g.:

	When play begins:
		change the right hand status line to "[set link 1]clear screen[end link]"


	Chapter: Echo streams and the transcript

With multiwindowed layouts, we may run into questions about what should be written to the transcript--if we have three windows, all of them displaying text, which of these should go to the transcript. The Inform library provides for only the main window to write to the transcript, but by using "echo streams" we can exercise much more control over what gets written.

Glulx allows each window to specify a maximum of one echo stream. An echo stream is another window or more often, a file on the hard disk, to which the output of the stream is "echoed". The most common use for this functionality is to allow for the main window to be echoed to the transcript file (the standard behavior of Inform after the player has entered the SCRIPT ON command). Flexible Windows provides a number of phrases that allow for the testing, assignment, and specification of echo streams.

First, we can test whether a given window has an echo stream like so:

	if the side-window has an echo stream

This will be true whether the side-window is echoing to the transcript or to another window.

We can also find out whether the transcript is currently be written to an external file (in other words, whether the transcript stream itself currently exists or not):

	if we are writing to the transcript

And we can directly set any window to write to the transcript:

	echo the stream of the side-window to the transcript

Any number of windows can be simultaneously echoed to the transcript.

We can also direct windows to echo to other windows--essentially, both windows will display the same text at the same time. This probably has no real use apart from brief special effects, but is available nonetheless. These two phrases set the echo stream of the side window so that it will echo the main window's content:

	set the echo stream of the side-window to the stream of the main-window
	echo the stream of the main-window to the stream of the side-window

We can also set a window's echo stream to be the same as the echo stream of another window:

	set the echo stream of the side-window to the echo-stream of the main-window

A window stops echoing when either the window itself, or the stream to which it was echoing, is closed. We can also manually cease echoing a window's ouput:

	shut down the echo stream of the side-window

Finally, it is possible to write directly to the echo stream of a window, bypassing the window itself. This is likely to be most useful for selectively streaming information to the transcript:

	say "[echo stream of main-window]This text goes only to the transcript. [stream of main-window]This text goes to both the main-window and the transcript."


	Chapter: Change log

Version 11 - 30/10/10

	Updated for 6F95. Now uses no deprecated features.

	To make it easier to assign rock values to windows manually (necessary for CSS styling in Quixe), a slight change was made to FW's automatic rock allocation routine - the author can now set a rock value manually (like this: "The rock-value of the graphics-window is 245"). Flexible Windows now checks for conflicts between manually assigned and automatically assigned rock values, and will throw a warning if it finds any (this code will not run in release versions of the software).

Version 10 - 23/9/10

	Minor bug-fix to allow compatibility with Emily Short's Simple Graphical Window, as required by the Inventory Window extension. An I6 routine in Flexible Windows has been renamed "FWBlankWindowToColor" from "BlankWindowToColor". This should have no impact on your source code unless you have called this routine directly from an I6 inclusion (which you shouldn't need to do anyway.)

Version 9 - 27/5/10

	Updated for use with Inform build 6Exx.

	Implemented a new object-based rulebook for window-drawing. This requires minor changes to existing source code.

	Added support for character input and textual hyperlinks, as well as limited support for echo streams. Improved behavior of window background colors under Gargoyle.

Version 8 - 26/6/09

	Changed code for clearing graphics windows to make it faster under Zoom for Mac (thanks to Erik Temple for this.) Note this clears the window by repainting it in its background color, so this will have to be set for this to work correctly.

	Added use option for no status line (thanks to Aaron Reed for this.)




Example: * Inventory Window - A simple example showing how to place a side window displaying the player's inventory.

	*: "Inventory Window"

	The Study is a room. In the study is an old oak desk. On the desk is a Parker pen, a letter, an envelope and twenty dollars.

	Include Flexible Windows by Jon Ingold.

	The side-window is a text-buffer g-window spawned by the main-window.

The default setting for position - on the right - will do here, but the window could be smaller.

	*: The measurement of the side-window is 30.

	Window-drawing rule for the side-window (this is the construct inventory rule):
		move focus to side-window, clearing the window;
		try taking inventory;
		return to main screen.

Finally, two rules: one to make the window appear, and the other to keep it up-to-date.

	*: When play begins:
	open up the side-window.

	Every turn when the side-window is g-present: follow the window-drawing rules for the side-window.

	Test me with "take pen/take letter/i/take all".


Example: ** Inventory Window and Picture - A more complex example, that also provides an image panel above the inventory.

	*: "Inventory Window and Picture"

	The Study is a room. In the study is an old oak desk. On the desk is a Parker pen, a letter, an envelope and twenty dollars.

	Include Flexible Windows by Jon Ingold.

	The side-window is a text-buffer g-window spawned by the main-window.

	The measurement of the side-window is 30.

	A window-drawing rule for the side-window (this is the construct inventory rule):
		move focus to side-window, clearing the window;
		try taking inventory;
		return to main screen.

	Every turn when the side-window is g-present: follow the window-drawing rules for the side-window.

Now we set up and open the graphics-window. Note that we don't need to open the inventory window, since it will be called into being by the graphics window that it has spawned.

	*: The graphics-window is a graphics g-window spawned by the side-window.

	When play begins:
		open up the graphics-window.

This is enough to set up the graphics panel. Now let's give it some images.

	*: The current image is a figure-name that varies.[@Tag:NotSaved]

	Figure 1 is the file "letter.jpg". Figure 2 is the file "scraps.jpg".

	Carry out examining the letter:
		depict Figure 1;

	Instead of attacking the letter:
		remove the letter from play;
		depict Figure 2;
		say "You tear the letter to shreds." instead.

	To depict (f - a figure-name):
		change the current image to f;
		follow the window-drawing rules for the graphics-window.

Finally, here's the rule and routines to actually get the picture to display.

	*: Window-drawing rule for the graphics-window (this is the draw scaled image rule):
		if graphics-window is g-unpresent, rule fails;
		clear the graphics-window;
		draw scaled copy of current image in graphics-window.

	To draw scaled copy of (f - a figure-name) in (g - a g-window):
		(- DrawScaled({f}, {g}); -).

What follows is some I6 code for handling the glulx imagery. Note that you may need to copy and paste the I6 code directly from this page rather than use the paste button.

	*: Include (-

		! Doing scaling calculations in I6 lets us handle bigger numbers

		[ GetImageSize curimg index result;
			result = glk_image_get_info( ResourceIDsOfFigures-->curimg, gg_arguments, gg_arguments+WORDSIZE);
			return gg_arguments-->index;
		];

		[ DrawScaled figure g w_total h_total graph_height graph_width w_offset h_offset;
		graph_height = WindowSize(g, 1);
		graph_width = gg_arguments-->0;
		w_total = GetImageSize(figure, 0);
		h_total = gg_arguments-->1;

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

		glk_image_draw_scaled(g.ref_number, ResourceIDsOfFigures-->figure, w_offset, h_offset, w_total, h_total);
		];

	-).

	Test me with "examine letter/z/attack letter".
