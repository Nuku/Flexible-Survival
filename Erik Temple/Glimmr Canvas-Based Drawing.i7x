Version 2/101030 of Glimmr Canvas-Based Drawing (for Glulx only) by Erik Temple begins here.

"A framework for drawing graphics of various types--from sprite images to painted text--to a Glulx graphics window. Takes an object-oriented approach, with graphic elements represented as individual objects."

[Add intro texts for compiled versions of examples.]


Part - Preliminaries

Chapter - Inclusions

Include version 9 of Flexible Windows by Jon Ingold.
[Include version 3 of Fixed Point Maths by Michael Callaghan.]
Include Glimmr Drawing Commands by Erik Temple.


Chapter - Use options

Use asymmetrical scaling translates as (- Constant ASYM_SCALING; -).

Use MAX_STATIC_DATA of 1000000.


Chapter - New kinds of value

A g-activity is a kind of value. The g-activities are g-active and g-inactive.

The specification of g-activity is "The g-activity is a simple binary value that is used to define whether a property of a g-element is active or inactive. A g-element can have an active display status, or an active graphlink status."


Chapter - Console settings
[This is a "macro" that allows the extension to identify itself in the Glimmr console window with fewer keystrokes on my part.]

To say CBD:
	say "[bracket]Glimmr CBD[close bracket]: ".


Part - The canvas

A g-canvas is a kind of thing.

The specification of g-canvas is "A canvas (spelled g-canvas is I7 to avoid namespace clashes) is a construct that represents a surface on which images, graphic primitives, and other graphic elements can be displayed. The canvas is displayed in (framed by) a graphics window. At heart, it represents the coordinate system of a series of elements, which will be translated to the associated graphics window (g-window). The author can either specify the dimensions of a canvas directly, using the canvas-width and canvas-height properties, or can declare a 'background image' for the canvas. The dimensions of the background image will define the size of the canvas. (If we like, we can set the canvas-width and canvas-height properties after declaring the background image; this will cause the background image to be stretched to fit the new dimensions.) The precise display of a canvas is largely controlled by the window that frames it. By default, a canvas will be centered in the window and, if necessary, will be scaled down to fit in the window frame. However, it is possible to scale the canvas at an arbitrary ratio, as well as to change the framing by changing the origin point (in canvas coordinates) of the window frame."

A g-canvas has a number called the canvas-width. The canvas-width of a g-canvas is usually 0.
A g-canvas has a number called the canvas-height. The canvas-height of a g-canvas is usually 0.

A g-canvas has a figure name called the background image. The background image property translates into I6 as "background_img". The background image of a g-canvas is usually Figure of Null.


Chapter - Canvas properties related to the window
[The scaled width and scaled height refer to the window coordinates of the canvas; that is, they represent the scaled dimensions. These values are supplied by the extension and will be overwritten if the author attempts to set them directly.]

A g-canvas has a number called the scaled width. The scaled width property translates into I6 as "scaled_width". The scaled width of a g-canvas is usually 0.
A g-canvas has a number called the scaled height. The scaled height property translates into I6 as "scaled_height". The scaled height of a g-canvas is usually 0.


Chapter - The null canvas
[The null canvas has no purpose except to prevent a compiler error that results when there is no canvas in the world.]

g-null-canvas is a g-canvas.


Chapter - Concealing canvas objects
[Replace this section if the player needs to be able to see and refer to canvases in-game.]

A g-canvas is usually privately-named.
A g-canvas is usually scenery.


Part - Element Definition

A g-element is a kind of thing.

The specification of g-element is "A g-element is an extensible class of things that represent particular instructions for drawing something to a graphics window (or, more precisely, to a canvas object that is then drawn to a window). Default classes of element include sprites (displays and image file), primitives (draw simple shapes, such as rectangles, boxes, lines, and points), bitmaps (the author specifies a grid of colored bits to be drawn to the screen), image maps, and rendered strings (arbitrary text 'painted' to the screen). It is also possible to create new classes of g-elements using commands from the Glimmr Drawing Commands extension. See the specifications for specific element types for more information. Elements need to be explicitly associated with a canvas, e.g. 'the associated canvas of Element A is the graphics-canvas.' (Elements are automatically associated with the graphics-canvas when Glimmr Simple Graphics Window is used.) All g-elements have a property called the origin, written as a list of numbers, e.g. {12, 21}, describing the x, y coordinate of (usually) the upper-left corner of the element. Elements are marked active or inactive, which determines whether they are displayed or not; this is done by setting the display status property to either g-active or g-inactive. If the extension Glimmr Graphic Hyperlinks is included, g-elements can also be hyperlinked. Usually a linked replacement-command is provided, which will paste a command to the input prompt on behalf of the player. However, there are other options available as well (see the Glimmr Graphic Hyperlinks extension)."


Chapter - Display status

A g-element has a g-activity called the display status. The display status of a g-element is usually g-active.

Definition: A g-element (called the item) is display-active if the display status of the item is g-active.

Definition: A g-element (called the item) is display-inactive if the display status of the item is g-inactive.

To mark (element - a g-element) for display:
	now the display status of the element is g-active.

To activate (element - a g-element):
	now the display status of the element is g-active.

To element/-- (element - a g-element) is no/not longer/-- marked for display:
	now the display status of the element is g-inactive.

To unmark element/-- (element - a g-element) for display:
	now the display status of the element is g-inactive.

To deactivate (element - a g-element):
	now the display status of the element is g-inactive.


Chapter - Concealing elements
[Replace this section if the player needs to be able to refer to elements in-game.]

A g-element is usually privately-named.
A g-element is usually scenery.


Section - Revealing elements for debugging (not for release)

A g-element is publically-named.
A g-element is scenery.


Chapter - Null element
[Inform requires that there always be at least one g-element in the world. We therefore provide this object, which is not associated with any canvas and is display-inactive, and so will never be shown; it can also serve as a null element if we need it.]

g-null-element is a g-element. The display status is g-inactive.


Chapter - Element properties related to the canvas

A g-element has a g-canvas called the associated canvas.

[We can say that a given element "is displayed on" a canvas, or that a canvas "displays" an element.]

Displayedness relates a g-element (called A) to a g-canvas (called B) when B is the associated canvas of A. The verb to be displayed on implies the displayedness relation.

The verb to display (he displays, they display, he displayed) implies the reversed displayedness relation.

[The origin, layer, alignment, and scaling factors are specified by the author and represent the positioning of the element in relation to the canvas.]
A g-element has a list of numbers called the origin. The origin of a g-element is usually {0, 0}.

A g-element has a number called the display-layer. The display-layer of a g-element is usually 1.

A g-element has a real number called the scaling factor. The scaling factor of a g-element is usually 1.0000. The scaling factor property translates into I6 as "scaling_factor".

[These are used only if asymmetrical scaling is enabled.]
A g-element has a real number called the x-scaling factor. The x-scaling factor of a g-element is usually 1.0000. The x-scaling factor property translates into I6 as "x_factor".

A g-element has a real number called the y-scaling factor. The y-scaling factor of a g-element is usually 1.0000. The y-scaling factor property translates into I6 as "y_factor".

A g-element can be left-aligned, center-aligned, or right-aligned (this is its alignment property). A g-element is usually left-aligned.


Chapter - Element properties related to the window

[The win-x and win-y refer to the window coordinate system; that is, they represent the scaled coordinates of the element. These values are supplied by the extension and will be overwritten (how rude!) if the author attempts to set them directly.]

A g-element has a number called the win-x. The win-x is usually 0.
A g-element has a number called the win-y. The win-y is usually 0.


Chapter - Element properties related to mouse input

A g-element has a g-activity called the graphlink status. The graphlink status of a g-element is usually g-inactive.

Definition: A g-element (called the item) is graphlinked if the graphlink status of the item is g-active.

A g-element has some text called the linked replacement-command. The linked replacement-command is usually "".

To attach/add/activate graphlink to/for/of (element - a g-element):
	now the graphlink status of the element is g-active.

To remove/deactivate graphlink of/from/for (element - a g-element):
	now the graphlink status of the element is g-inactive.


Part - Extensions to g-windows

The specification of a graphics g-window is "Glimmr Canvas-Based Drawing extends graphics g-windows to enable them to work well with canvases. The associated canvas property links a canvas to the window. An origin can be specified for the window, e.g. {100, 100}, and this will place the upper left corner of the window at that canvas coordinate. (Note, however, that this placement will be changed by the centering calculations unless these are altered.) By default, Glimmr Canvas-Based Drawing will automatically scale a canvas to fit into the window dimensions available. However, if we don't want to relinquish scaling control, we can set the arbitrary scaling factor property to a ratio with four decimal places; for example, setting the arbitrary scaling factor to 1.0000 will always result in the canvas being displayed at full size, even if this would result in it's not being fully framed within the window."

A graphics g-window has a list of numbers called the origin. The origin is usually {0, 0}.

A graphics g-window has a real number called the arbitrary scaling factor. The arbitrary scaling factor is usually 0.0000.

A graphics g-window has a real number called the x-scaling factor.
A graphics g-window has a real number called the y-scaling factor.
The x-scaling factor of a graphics g-window is usually 0.0000.
The y-scaling factor of a graphics g-window is usually 0.0000.

A graphics g-window has a real number called the scaling factor. The scaling factor of a graphics g-window is usually 1.0000. [The scaling factor property translates into I6 as "scaling_factor". --Already included with the g-element kind.]

A graphics g-window has a number called the x-offset. A graphics g-window has a number called the y-offset. The x-offset of a graphics g-window is usually 0. The y-offset of a graphics g-window is usually 0. The x-offset property translates into I6 as "x_offset". The y-offset property translates into I6 as "y_offset".


Chapter - Graphics g-window properties related to the canvas

A graphics g-window has a g-canvas called the associated canvas.

[We can say that a g-window "frames" a canvas, or that a canvas "is shown in" a g-window.]

Showedness relates a g-canvas (called B) to a g-window (called A) when B is the associated canvas of A. The verb to be shown in implies the showedness relation.

The verb to frame (he frames, they frame, he framed, it is framed, he is framed) implies the reversed showedness relation.

A g-window has a truth state called oversize scaling. The oversize scaling of a g-window is usually false.


Chapter - Private naming
[Replace this section if the player needs to be able to see and refer to g-windows in-game.]

A g-window is usually privately-named.
A g-window is usually scenery.


Chapter - Relating elements directly to windows

Assignedness relates a g-element (called A) to a g-window (called B) when the associated canvas of B is the associated canvas of A. The verb to be assigned to implies the assignedness relation.

To assign (element - a g-element) to (win - a g-window):
	now the associated canvas of the element is the associated canvas of win.

To decide which g-window is the assigned window of (element - a g-element):
	repeat with win running through graphics g-windows:
		if element is assigned to win, decide on win.


Part - Default canvas-based drawing rule

A window-drawing rule for a graphics g-window (called the window) (this is the default canvas-based drawing rule):
	if the window is g-present:
		#if utilizing Glimmr debugging;
		say "[>console][paragraph break][CBD]Following the default canvas-based drawing rule for the window [i][window][/i].[<]";
		#end if;
		carry out the scaling activity with the window;
		carry out the offset calculation activity with the window;
		carry out the window-framing adjustment activity with the window;
		clear the window;
		carry out the drawing the canvas background activity with the window;
		carry out the drawing the active elements activity with the window.

The default canvas-based drawing rule is listed last in the window-drawing rules.

The window-drawing rules have default success.


Chapter - Calculating the scaling factors

Scaling something is an activity.

Last for scaling a graphics g-window (called the window) (this is the default window-scaling rule):
	#if utilizing Glimmr debugging;
	say "[>console][CBD]Window [i][window][/i] is [width of the window] by [height of the window] pixels.[<]";
	#end if;
	let panel be the associated canvas of the window;
	if panel is nothing:
		say "*** Scaling error: No canvas defined for [italic type][window][roman type].";
		rule fails;
	if the canvas-width of panel is 0 or the canvas-height of panel is 0:
		if the background image of panel is Figure of Null:
			#if utilizing Glimmr debugging;
			say "[>console][CBD]*** Scaling error: Dimensions of canvas [i][panel][/i] not specified. Either define the canvas using a background image, or assign numerical dimensions.[<]";
			#end if;
			rule fails;
		[doubling up of variables necessary due to an apparent bug in Inform]
		let canvas-x be the image-width of the background image of panel;
		let canvas-y be the image-height of the background image of panel;
		now the canvas-width of panel is canvas-x;
		now the canvas-height of panel is canvas-y;
		#if utilizing Glimmr debugging;
		say "[>console][CBD]Canvas [i][panel][/i] is [canvas-width of panel] by [canvas-height of panel] pixels.[<]";
		#end if;
	if the arbitrary scaling factor of the window > 0.0000:
		now the scaling factor of the window is the arbitrary scaling factor of the window;
		#if utilizing Glimmr debugging;
		say "[>console][CBD]Scaling factor of [i][window][/i] set to [scaling factor of the window] based on arbitrary scaling factor.[<]";
		#end if;
	else:
		let x-win be the width of the window;
		let y-win be the height of the window;
		now the x-scaling factor of the window is x-win divided by the canvas-width of panel;
		now the y-scaling factor of the window is y-win divided by the canvas-height of panel;
		if the x-scaling factor of the window > the y-scaling factor of the window:
			now the scaling factor of the window is the y-scaling factor of the window;
			#if utilizing Glimmr debugging;
			say "[>console][CBD][i][window][/i] scaling factor set to the vertical scaling factor: [y-scaling factor of the window].[<]";
			#end if;
		else:
			now the scaling factor of the window is the x-scaling factor of the window;
			#if utilizing Glimmr debugging;
			say "[>console][CBD][i][window][/i] scaling factor set to the horizontal scaling factor: [i][x-scaling factor of the window][/i].[<]";
			#end if;
		if the scaling factor of the window > 1.0000:
			unless the oversize scaling of the window is true:
				now the scaling factor of the window is 1.0000;
				#if utilizing Glimmr debugging;
				say "[>console][CBD][i][window][/i] scaling factor set to [scaling factor of the window]. To allow for a higher scaling factor, set the window's oversize scaling property to true.[<]";
				#end if;
	now the scaled width of panel is the scaling factor of the window times the canvas-width of panel to the nearest whole number;
	now the scaled height of panel is the scaling factor of the window times the canvas-height of panel to the nearest whole number;
	#if utilizing Glimmr debugging;
	say "[>console][CBD]Scaled size for canvas [i][panel][/i] is [scaled width of panel] by [scaled height of panel].[<]";
	#end if;


Chapter - Offset calculation

Offset calculation of something is an activity.

Last for offset calculation of a graphics g-window (called the window) (this is the default offset calculation rule):
	let panel be the associated canvas of the window;
	now the x-offset of the window is (the width of the window minus the scaled width of panel) divided by 2;
	now the y-offset of the window is (the height of the window minus the scaled height of panel) divided by 2;
	#if utilizing Glimmr debugging;
	say "[>console][CBD][i][window][/i] x offset set at [x-offset of the window]; y offset set at [y-offset of the window].[<]";
	#end if;


Chapter - Window-framing adjustment

Window-framing adjustment of something is an activity.

Last for window-framing adjustment of a graphics g-window (called the window) when the origin of the window is not {0, 0} (this is the default window-framing adjustment rule):
		let xx be entry 1 of the origin of the window times the scaling factor of the window to the nearest whole number ;
		let yy be entry 2 of the origin of the window times the scaling factor of the window to the nearest whole number ;
		now the x-offset of the window is (0 - xx) + x-offset of the window;
		now the y-offset of the window is (0 - yy) + y-offset of the window;
		#if utilizing Glimmr debugging;
		say "[>console][CBD]Offsets of [i][window][/i] adjusted using non-zero origin ([xx], [yy]): x offset set at [x-offset of the window]; y offset set at [y-offset of the window].[<]";
		#end if.


Section - Command for resizing the canvas to the window

[This phrase should be used in a before scaling rule, e.g.:

	A before scaling rule for the graphics-window:
		resize the canvas of the graphics-window to the window;

The main use of such a rule is if we want to procedurally place our g-elements, e.g. we want to distribute a number of images at even intervals across the window, regardless of what size the window is.]

To resize the/-- canvas of (win - a g-window) to the/-- window:
	now the canvas-width of the associated canvas of win is the width of win;
	now the canvas-height of the associated canvas of win is the height of win;


Section - Commands for centering the window frame on specific points
[The window centering phrases will only work properly when used after the scaling and offset factors are determined. Usually these phrases will be used in the window-framing adjustment activity. Coordinates passed into the centering phrases should be in canvas coordinates, not screen coordinates.]

To center the/-- frame/framing/-- of/-- (win - a g-window) on canvas/-- coordinates/-- (coord - a list of numbers):
	let x be entry 1 of coord;
	let y be entry 2 of coord;
	now entry 1 of the origin of win is x - (canvas-width of the associated canvas of win / 2);
	now entry 2 of the origin of win is y - (canvas-height of the associated canvas of win / 2);
	#if utilizing Glimmr debugging;
	say "[>console][CBD]Window [i][win][/i] recentered on canvas coordinates [coord in brace notation]; origin changed to ([entry 1 of origin of win], [entry 2 of origin of win]).[<]";
	#end if;

To decide what list of numbers is the center-point of (panel - a g-canvas):
	let x be the canvas-width of panel divided by 2;
	let y be the canvas-height of panel divided by 2;
	let coord be {0, 0};
	now entry 1 of coord is x;
	now entry 2 of coord is y;
	decide on coord.

To center the/-- frame/framing/-- of/-- (win - a g-window) on its g-canvas/canvas:
	let panel be the associated canvas of win;
	center win on the center-point of panel.

To center the/-- frame/framing/-- of/-- (win - a g-window) on (item - a g-element):
	#if utilizing Glimmr debugging;
	say "[>console][CBD]Centering the window frame of [i][win][/i] on [i][item][/i].[<]";
	#end if;
	center win on the center-point of item.


Chapter - Drawing the canvas background

Drawing the canvas background of something is an activity.

Last for drawing the canvas background of a graphics g-window (called the window) (this is the default canvas background drawing rule):
	let panel be the associated canvas of the window;
	if panel is not nothing:
		if the background image of panel is not Figure of Null:
			draw the background-image of panel in the window;
			#if utilizing Glimmr debugging;
			say "[>console][CBD]Drawing canvas background [i][background image of panel][/i] in [i][window][/i].[<]";
			#end if;
		else:
			do nothing;
			#if utilizing Glimmr debugging;
			say "[>console][CBD]Canvas [i][panel][/i] has no background image.[<]";
			#end if;
	else:
		say "*** Glimmr Error: No canvas defined for [i][window][/i]."

To draw the background-image of (panel - a g-canvas) in (win - a g-window):
	(- DrawCanvas({panel}, {win}); -)


Include (-

[ DrawCanvas c g;
	if (g.ref_number) {
		if (g.scaling_factor~= (+ Divisor +) ) {!internal representation of 1.0000
			glk_image_draw_scaled(g.ref_number, ResourceIDsOfFigures-->c.background_img, g.x_offset, g.y_offset, c.scaled_width, c.scaled_height);
		}
		else {
			glk_image_draw(g.ref_number, ResourceIDsOfFigures-->c.background_img, g.x_offset, g.y_offset);
		}
	}
];

-)


Chapter - Element Drawing

Drawing the active elements of something is an activity.

[These are global variables that are set by the drawing the active elements of something activity. In most cases, authors should not set these directly.]
The current element is a g-element variable.
The current window is a g-window variable.

Last for drawing the active elements of a graphics g-window (called win) (this is the default active element drawing rule):
	now the current window is win;
	let L be the list of display-active g-elements displayed on the associated canvas of the current window;
	prune the link-table of win links;
	sort L in display-layer order;
	repeat with current-element running through L:
		follow the element scaling rules for current-element;
		follow the element display rules for current-element;


Section - Element scaling rules

The element scaling rules are an object-based rulebook.

The element scaling rules have outcomes exit (success) and continue (no outcome - the default).

An element scaling rule for a g-element (called the current-element) (this is the element origin scaling rule):
	let x-temp be entry 1 of the origin of the current-element scaled by the scaling factor of the current window to the nearest whole number;
	let y-temp be entry 2 of the origin of the current-element scaled by the scaling factor of the current window to the nearest whole number;
	now the win-x of current-element is x-temp plus the x-offset of the current window to the nearest whole number ;
	now the win-y of current-element is y-temp plus the y-offset of the current window to the nearest whole number ;
	continue;

The element origin scaling rule is listed first in the element scaling rules.


Section - Element display rules

The element display rules are an object-based rulebook.

The element display rules have outcomes exit (success - the default) and continue (no outcome).


Part - Useful phrases

Chapter - Scaling phrases

To decide which number is (N - a number) scaled by (R - a number):
	Let temp be N as a fixed point number;
	let temp be temp times R;
	decide on temp.

To decide which number is (N - a number) scaled by (R - a number):
	Let temp be N times R;
	decide on temp.


Chapter - Coordinate Manipulation

To decide which list of numbers is the (warp - a list of numbers) offset by (weft - a list of numbers):
	#if utilizing Glimmr debugging;
	if the number of entries of warp is not 2:
		say "[>console][CBD] ***Warning: Offsetting coordinates: [warp] is not a coordinate pair.[<]";
	if the number of entries of weft is not 2:
		say "[>console][CBD] ***Warning: Offsetting coordinates: [weft] is not a coordinate pair.[<]";
	#end if;
	let result1 be entry 1 of warp + entry 1 of weft;
	let result2 be entry	2 of warp + entry 2 of weft;
	let L be a list of numbers;
	Add result1 to L;
	Add result2 to L;
	decide on L.

To decide which list of numbers is the canvas equivalent of the screen coordinates (X - a number) by (Y - a number) of (win - a g-window):
	let x-fixe be X + 0.0;
	let y-fixe be Y + 0.0;
	let x-fixe be (x-fixe minus x-offset of win) divided by the scaling factor of win;
	let y-fixe be (y-fixe minus y-offset of win) divided by the scaling factor of win;
	let L be a list of numbers;
	let L be {0, 0};
	now entry 1 of L is x-fixe to the nearest whole number;
	now entry 2 of L is y-fixe to the nearest whole number;
	decide on L;


Part - Graphic Hyperlinks

Chapter - Graphlink management (for use with Glimmr Graphic Hyperlinks by Erik Temple)

To prune the/-- link-table of the/-- (g - a g-window) links:
	repeat through the Table of Graphlink Glulx Replacement Commands:
		if g is the g-win entry:
			blank out the whole row.


Chapter - Graphlink management (for use without Glimmr Graphic Hyperlinks by Erik Temple)

To zero the/-- link-table:
	do nothing.

To prune the/-- link-table of the/-- (g - a g-window) links:
	do nothing.


Part - Sprites

[A sprite is an image (defined by a PNG or other image file) that has the capacity to be placed independently of other elements.]

A sprite is a kind of g-element.

The specification of a sprite is "A sprite, per general computing terminology, is an independent image that is integrated into a larger composition. To use an image file as a sprite element, we must first declare the external image file (can be in PNG or JPEG format) as a figure in I7. The figure must then be assigned to the sprite by setting the 'image-ID' property of the sprite object to the figure name. Like other g-elements, sprites have a coordinate pair, the origin property, that determines where in the canvas coordinate system the upper-left corner of the sprite will be displayed. Sprites can be scaled if desired, using the 'scaling factor' property. This scaling factor is calculated before the canvas is scaled to fit the window; in other words, the scaling factor property of the sprite scales it in relation to the rest of the canvas. If the asymmetrical scaling use option is set, it will be necessary to set both the 'x-scaling factor' and the 'y-scaling factor' of the sprite; these can, of course, be set to different values to allow the sprite to be 'stretched' to an aspect ratio other than the original aspect ratio."

A sprite has a figure name called image-ID. The image-ID property translates into I6 as "image_ID". The image-ID of a sprite is usually Figure of Null.

[The sprite-x and sprite-y refer to the scaled dimensions of the image. Authors should not need to set them directly.]
A sprite has a number called the sprite-x. The sprite-x is usually 0.
A sprite has a number called the sprite-y. The sprite-y is usually 0.

To display/draw the/-- sprite --/element (ID - a g-element) in (g - a g-window) at coordinates (off_x - a number) by/x/and (off_y - a number) with dimensions (image_x - a number) by/x/and (image_y - a number):
	(- DrawSprite({ID}, {g}, {off_x}, {off_y}, {image_x}, {image_y}); -)


Include (-

[DrawSprite ID g off_x off_y image_x image_y ;
	if (g.ref_number) {
	#ifdef ASYM_SCALING;
		if (g.scaling_factor~= (+ Divisor +) || ID.x_factor~= (+ Divisor +) || ID.y_factor~= (+ Divisor +) ) {!internal representation of 1.0000
	#ifnot;
		if (g.scaling_factor~= (+ Divisor +) || ID.scaling_factor~= (+ Divisor +) ) {!internal representation of 1.0000
	#endif;
			glk_image_draw_scaled(g.ref_number, ResourceIDsOfFigures-->ID.image_ID, off_x, off_y, image_x, image_y);
		}
		else {
			glk_image_draw(g.ref_number, ResourceIDsOfFigures-->ID.image_ID, off_x, off_y);
		}
	}
];

-).


Chapter - Sprite scaling rule

An element scaling rule for a sprite (called the current-sprite) (this is the sprite scaling rule):
	unless the image-ID of current-sprite is Figure of Null:
		let sprite-ID be image-ID of current-sprite;
		let x-temp be the image-width of sprite-ID + 0.0;
		let y-temp be the image-height of sprite-ID + 0.0;
		unless the asymmetrical scaling option is active:
			now sprite-x is x-temp times the scaling factor of current window times the scaling factor of the current-sprite to the nearest whole number ;
			now sprite-y is y-temp times the scaling factor of current window times the scaling factor of the current-sprite to the nearest whole number ;
		else:
			now sprite-x is x-temp times the scaling factor of current window times the x-scaling factor of the current-sprite to the nearest whole number ;
			now sprite-y is y-temp times the scaling factor of current window times the y-scaling factor of the current-sprite to the nearest whole number ;
		if current-sprite is center-aligned:
			now the win-x of current-sprite is win-x - (sprite-x) / 2;
			now the win-y of current-sprite is win-y - (sprite-y) / 2;
		if current-sprite is right-aligned:
			now the win-x of current-sprite is win-x - sprite-x;
			now the win-y of current-sprite is win-y - sprite-y;
	continue;


Chapter - Sprite element display rule

An element display rule for a sprite (called the current-sprite) (this is the sprite display rule):
	unless the image-ID of current-sprite is Figure of Null:
		display sprite current-sprite in the current window at coordinates win-x of current-sprite and win-y of current-sprite with dimensions sprite-x of current-sprite and sprite-y of current-sprite;
		if graphlink status of current-sprite is g-active:
			set a graphlink in the current window identified as current-sprite from win-x of current-sprite by win-y of current-sprite to (win-x of current-sprite + sprite-x of current-sprite) by (win-y of current-sprite + sprite-y of current-sprite) as the linked replacement-command of current-sprite;
		#if utilizing Glimmr debugging;
		say "[>console][CBD]Drawing sprite element [i][current-sprite][/i] ([image-ID of current-sprite]) in [i][current window][/i] at origin ([win-x of current-sprite], [win-y of current-sprite]), dimensions [sprite-x of current-sprite] x [sprite-y of current-sprite] pixels.[line break][if current-sprite is graphlinked][CBD]Graphlink corresponding to [i][current-sprite][/i] set from ([win-x of current-sprite], [win-y of current-sprite]) to ([win-x of current-sprite + sprite-x of current-sprite], [win-y of current-sprite + sprite-y of current-sprite]): [quotation mark][linked replacement-command of current-sprite][quotation mark].[end if][<]";
		#end if;
	if the image-ID of current-sprite is Figure of Null:
		do nothing;
		#if utilizing Glimmr debugging;
		say "[>console][CBD]Sprite element [i][current-sprite][/i] is undefined (the image-ID property is not set or is set to [quotation mark]Figure of Null[quotation mark]).[<]";
		#end if;


Section - Centering algorithm for sprites

[When you create a new class of g-element, it is good practice to define a centering phrase that will be able to find the center point, in canvas coordinates, of any object of that class. This should not use the win-x/win-y properties, or any other property that is set by the element scaling rules. For this reason, the algorithm should assume that the origin is the upper-left hand corner (center and right alignment are calculated by the element scaling rules).]

To decide what list of numbers is the center-point of (current-sprite - a sprite):
	let dx be a number;
	let dy be a number;
	let x be entry 1 of the origin of current-sprite;
	let y be entry 2 of the origin of current-sprite;
	let x-temp be the image-width of the image-ID of current-sprite as a fixed point number;
	let y-temp be the image-height of the image-ID of current-sprite as a fixed point number;
	unless the asymmetrical scaling option is active:
		let dx be x-temp times the scaling factor of the current-sprite to the nearest whole number;
		let dy be y-temp times the scaling factor of the current-sprite to the nearest whole number;
	else:
		let dx be x-temp times the x-scaling factor of the current-sprite to the nearest whole number;
		let dy be y-temp times the y-scaling factor of the current-sprite to the nearest whole number;
	let x be x + (dx / 2);
	let y be y + (dy / 2);
	let coord be {0, 0};
	now entry 1 of coord is x;
	now entry 2 of coord is y;
	decide on coord.


Chapter - The primitive base class

A primitive is a kind of g-element.

The specification of a primitive is "A primitive element is a simple shape that is generally intended to be used in concert with other shapes and images to build up a composition; for example, rectangles and lines. The meaning of a graphics primitive is somewhat stretched here, since the only primitive actually provided by Glulx is a simple rectangle, whereas all of the other 'primitives' provided by Glimmr Canvas-Based Drawing are in fact built up out of rectangles. The most intensive of these, the line primitive, can be made up of many, many rectangles and may be quite slow to draw. Primitives have an origin, as do all g-elements, and they also have a second coordinate pair, the endpoint. For most primitives, the origin describes the upper left corner, while the endpoint describes the lower right corner. The line primitive, however, is freer--the two points can have any relationship. It is also necessary to specify the color of a primitive, using the 'tint' property. This is a glulx color value (see the Glulx Text Effects extension). Some primitives (the stroked rectangle) also have a 'background tint' property that controls a second color value."

[The endpoint of a primitive are provided in the canvas' coordinate system.]
A primitive has a list of numbers called the endpoint. The endpoint of a primitive is {0, 0}.
A primitive has a glulx color value called the tint. The tint of a primitive is g-White.


[The end-x and end-y are scaled values, presented in the coordinate system of the window rather than of the canvas. They are recalculated every time the window is redrawn and under most circumstances should not be specified by the author.]
A primitive has a number called the end-x. The end-x of a primitive is 0. A primitive has a number called the end-y. The end-y of a primitive is 0.


Section - Scaling rule for primitives

[The line-weight of the lines used in primitives are scaled according to the scaling factor (or, if we are using asymmetrical scaling, the x scaling factor). If we need to prevent line-weight from changing with the window scaling, we need to place a rule applying to the appropriate primitive or class before the primitive scaling rule. This rule should now the scaling factor is the inverse of the scaling factor; i.e. if the scaling factor were 0.2500, our rule would set the scaling factor to 4.0000, thereby canceling the effect of the window-scaling on the line line-weight.]

An element scaling rule for a primitive (called the subject) (this is the primitive scaling rule):
	let x-temp be entry 1 of the endpoint of the subject scaled by the scaling factor of the current window to the nearest whole number;
	let y-temp be entry 2 of the endpoint of the subject scaled by the scaling factor of the current window to the nearest whole number;
	now the end-x of the subject is x-temp plus the x-offset of the current window to the nearest whole number ;
	now the end-y of the subject is y-temp plus the y-offset of the current window to the nearest whole number ;
	if the subject provides the property line-weight:
		let weight-temp be the line-weight of the subject + 0.0;
		unless the asymmetrical scaling option is active:
			now the stroke of the subject is the weight-temp times the scaling factor of the current window times the scaling factor of the subject to the nearest whole number ;
		else:
			now the stroke of the subject is the weight-temp times the scaling factor of the current window times the x-scaling factor of the subject to the nearest whole number ;
		if the stroke of the subject < 1, now the stroke of the subject is 1;
	if the subject is center-aligned:
		let dx be (end-x of the subject - win-x) / 2;
		let dy be (end-y of the subject - win-y) / 2;
		now the win-x is win-x - dx;
		now the win-y is win-y - dy;
		now the end-x is end-x - dx;
		now the end-y is end-y - dy;
	if the subject is right-aligned:
		let dx be (end-x of the subject - win-x);
		let dy be (end-y of the subject - win-y);
		now the win-x is win-x - dx;
		now the win-y is win-y - dy;
		now the end-x is end-x - dx;
		now the end-y is end-y - dy;
	continue.


Section - Centering algorithm for primitives
[This could be done much more concisely using the win-x/win-y and end-x/end-y properties, but these are not set until the element scaling rulebook is followed, which doesn't grant as much flexiblity. This phrase may be used anytime after the determining offsets activity.]

To decide what list of numbers is the center-point of (item - a primitive):
	let xx be a number;
	let yy be a number;
	let x be entry 1 of the origin of item;
	let y be entry 2 of the origin of item;
	unless the item is a point primitive:
		let xx be entry 1 of the endpoint of the item;
		let yy be entry 2 of the endpoint of the item;
	else:
		let x be x - (line-weight of the item / 2);
		let y be y - (line-weight of the item / 2);
		let xx be x + line-weight of item;
		let yy be y + line-weight of item;
	let x be (xx - x) / 2 + x;
	let y be (yy - y) / 2 + y;
	let coord be {0, 0};
	now entry 1 of coord is x;
	now entry 2 of coord is y;
	decide on coord.


Section - Rectangle Primitive

A rectangle primitive is a kind of primitive.

The specification of rectangle primitive is "A rectangle primitive is a type of g-element, a simple rectangle of color. The rectangle is specified from an origin coordinate in the upper left corner to an endpoint in the lower right corner. These coordinate pair properties are each specified using list formatting, e.g. {20, 10}. The color of the rectangle, as with all primitives, is specified using the 'tint' property. The tint is specified as a glulx color value (see the Glulx Text Effects extension)."

An element display rule for a rectangle primitive (called the rectangle):
	[if the rectangle is center-aligned:
		now the win-x of the rectangle is win-x - (end-x) / 2;
		now the win-y of the rectangle is win-y - (end-y) / 2;
	if the rectangle is right-aligned:
		now the win-x of the rectangle is win-x - end-x;
		now the win-y of the rectangle is win-y - end-y;]
	#if utilizing Glimmr debugging;
	say "[>console][CBD]Drawing rectangle primitive [i][rectangle][/i], color [color tint of rectangle], in [i][current window][/i] with upper left ([win-x], [win-y]) and lower right ([end-x], [end-y])[if the rectangle is graphlinked]. [line break][CBD]Graphlink corresponding to [i][rectangle][/i] set from ([win-x of rectangle], [win-y of rectangle]) to ([end-x], [end-y]): [quotation mark][linked replacement-command][quotation mark][end if].[<]";
	#end if;
	rectdraw (color tint of the rectangle) in (current window) from (win-x) by (win-y) to (end-x) by (end-y);
	if the rectangle is graphlinked:
		set a graphlink in the current window identified as the rectangle from win-x by win-y to end-x by end-y as the linked replacement-command of the rectangle.


Section - Box primitive
[Box primitives draw a simple box, with the line straddling (as much as possible) the given dimensions. In other words, a box drawn at 100% size with a line-weight of 4 will be drawn with two pixels of line inside the given dimensions and two pixels outside.]

A box primitive is a kind of primitive.

The specification of box primitive is "A box primitive is a type of g-element. It draws the outline of a rectangle, with an empty center. The rectangle is specified from an origin coordinate in the upper left corner to an endpoint in the lower right corner. These coordinate pair properties are each specified using list formatting, e.g. {20, 10}. The color of the outline is specified using the 'tint' property. The tint is supplied as a glulx color value (see the Glulx Text Effects extension). The width of the line used to draw the outline is specified using the 'line-weight' property. The line-weight will be scaled along with the canvas; that is, if the line-weight is specified as 4 pixels wide and the canvas must be scaled to 50% to fit in the window, the actual displayed width of the line will be 2 pixels."

A box primitive has a number called the line-weight. The line-weight of a box primitive is 1.

[The stroke is a scaled value, presented in the coordinate system of the window rather than of the canvas. They are recalculated every time the window is redrawn and under most circumstances should not be specified by the author.]

A box primitive has a number called the stroke. The stroke of a box primitive is 1.

An element display rule for a box primitive (called the box):
	#if utilizing Glimmr debugging;
	say "[>console][CBD]Drawing box primitive [i][box][/i], color [color tint of the box], in [i][current window][/i] with upper left ([win-x], [win-y]) and lower right ([end-x], [end-y]), scaled line-weight [stroke] px[if the box is graphlinked]. [line break][CBD]Graphlink corresponding to [i][box][/i] set from ([win-x of box], [win-y of box]) to ([end-x], [end-y]): [quotation mark][linked replacement-command][quotation mark][end if].[<]";
	#end if;
	boxdraw (color tint of the box) in (current window) from (win-x) by (win-y) to (end-x) by (end-y) with (stroke);
	if the box is graphlinked:
		set a graphlink in the current window identified as the box from win-x by win-y to end-x by end-y as the linked replacement-command of the box.


Section - Stroked rectangle primitive

A stroked rectangle primitive is a kind of primitive.

The specification of stroked rectangle primitive is "A stroked rectangle primitive is a type of g-element. It draws a rectangle of color, outlined by a second color. The rectangle is specified from an origin coordinate in the upper left corner to an endpoint in the lower right corner. These coordinate pair properties are each specified using list formatting, e.g. {20, 10}. The color of the inner area is specified using the 'tint' property, while the outline is specified by the 'background tint'. Both of these are glulx color values (see the Glulx Text Effects extension). The width of the line used to draw the outline is specified using the 'line-weight' property. The line-weight will be scaled along with the canvas; that is, if the line-weight is specified as 4 pixels wide and the canvas must be scaled to 50% to fit in the window, the actual displayed width of the line will be 2 pixels."

A stroked rectangle primitive has a glulx color value called the background tint. The background tint is usually g-White.

A stroked rectangle primitive has a number called the line-weight. The line-weight of a stroked rectangle primitive is 1.

[The stroke is a scaled value, presented in the coordinate system of the window rather than of the canvas. They are recalculated every time the window is redrawn and under most circumstances should not be specified by the author.]

A stroked rectangle primitive has a number called the stroke. The stroke of a stroked rectangle primitive is 1.

An element display rule for a stroked rectangle primitive (called the stroked rectangle):
	#if utilizing Glimmr debugging;
	say "[>console][CBD]Drawing stroked rectangle primitive [i][stroked rectangle][/i], color [color tint of the stroked rectangle], in [i][current window][/i] with upper left ([win-x], [win-y]) and lower right ([end-x], [end-y]), scaled line-weight [stroke] px[if the stroked rectangle is graphlinked]. [line break][CBD]Graphlink corresponding to [i][stroked rectangle][/i] set from ([win-x of stroked rectangle], [win-y of stroked rectangle]) to ([end-x], [end-y]): [quotation mark][linked replacement-command][quotation mark][end if].[<]";
	#end if;
	strectdraw (color tint of the stroked rectangle) in (current window) from (win-x) by (win-y) to (end-x) by (end-y) with (stroke) stroke of (color background tint);
	if the stroked rectangle is graphlinked:
		set a graphlink in the current window identified as the stroked rectangle from win-x by win-y to end-x by end-y as the linked replacement-command of the stroked rectangle.


Section - Line primitive

A line primitive is a kind of primitive.

The specification of line primitive is "A line primitive is a type of g-element. It draws a line between any two points using a specified color. The line is drawn between an origin coordinate and an endpoint. The color of the line is specified using the 'tint' property, a glulx color value (see the Glulx Text Effects extension). The width of the line is specified using the 'line-weight' property. The line-weight will be scaled along with the canvas; that is, if the line-weight is specified as 4 pixels wide and the canvas must be scaled to 50% to fit in the window, the actual displayed width of the line will be 2 pixels."

[Authors may mark a line primitive as graphlinked, but in most cases this should be done only for horizontal or vertical lines, as only a single rectangular entry will be placed in the graphlink lookup table.]

A line primitive has a number called the line-weight. The line-weight of a line primitive is 1.

[The stroke is a scaled value, presented in the coordinate system of the window rather than of the canvas. They are recalculated every time the window is redrawn and under most circumstances should not be specified by the author.]

A line primitive has a number called the stroke. The stroke of a line primitive is 1.


An element display rule for a line primitive (called the line):
	#if utilizing Glimmr debugging;
	say "[>console][CBD]Drawing line primitive [i][line][/i], color [color tint of the line], in [i][current window][/i] from ([win-x], [win-y]) to ([end-x], [end-y]), scaled line-weight [stroke] pixels[if the line is graphlinked]. [line break][CBD]Graphlink corresponding to [i][line][/i] set from ([min win-x or end-x], [min win-y or end-y]) to ([max win-x or end-x], [max win-y or end-y]): [quotation mark][linked replacement-command][quotation mark][end if].[<]";
	#end if;
	linedraw (color tint of the line) in (current window) from (win-x) by (win-y) to (end-x) by (end-y) with (stroke);
	if the line is graphlinked:
		set a graphlink in the current window identified as the line from (min win-x or end-x) by (min win-y or end-y) to (max win-x or end-x) by (max win-y or end-y) as the linked replacement-command of the line;


Section - Point primitive

A point primitive is a kind of primitive.

The specification of point primitive is "A point primitive is a type of g-element. It draws a square centered on a coordinate specified using the 'origin' property. The coordinate pair is supplied using list formatting, e.g. {20, 10}. The color of the point is specified with the 'tint' property, a glulx color value (see the Glulx Text Effects extension). The size of the square is given using the 'line-weight' property; line weight of 1 pixel for example, will result in a square of a single pixel. The line-weight will be scaled along with the canvas; that is, if the line-weight is specified as 4 pixels wide and the canvas must be scaled to 50% to fit in the window, the actual displayed width of the line will be 2 pixels."

A point primitive has a number called the line-weight. The line-weight of a point primitive is 1.

[The stroke is a scaled value, presented in the coordinate system of the window rather than of the canvas. They are recalculated every time the window is redrawn and under most circumstances should not be specified by the author.]

A point primitive has a number called the stroke. The stroke of a point primitive is 1.


An element display rule for a point primitive (called the point):
	unless the stroke of the point is 1:
		now win-x of the point is win-x of the point minus (stroke / 2);
		now win-y of the point is win-y of the point minus (stroke / 2);
	now end-x of the point is win-x plus stroke;
	now end-y of the point is win-y plus stroke;
	#if utilizing Glimmr debugging;
	say "[>console][CBD]Drawing point primitive [i][point][/i], color [color tint of point] in [i][current window][/i] with upper left ([win-x], [win-y]) and lower right ([end-x], [end-y]), scaled line-weight [stroke] pixels[if the point is graphlinked]. [line break][CBD]Graphlink corresponding to [i][point][/i] set from ([win-x of point], [win-y of point]) to ([end-x], [end-y]): [quotation mark][linked replacement-command][quotation mark][end if].[<]";
	#end if;
	rectdraw (color tint of the point) in (current window) from (win-x) by (win-y) to (end-x) by (end-y);
	if the point is graphlinked:
		set a graphlink in the current window identified as the point from win-x by win-y to end-x by end-y as the linked replacement-command of the point.


Chapter - Bitmap base class

A bitmap is a kind of g-element.

The specification of bitmap is "A bitmap element draws a rectangular image composed of individual 'bits' that are specified by the author in the form of a list of lists of numbers (the 'bitmap-array') defining the status of each bit. For example, a cross might be specified like so:

	{
	{ 0, 0, 1, 0, 0 },
 	{ 0, 0, 1, 0, 0 },
 	{ 1, 1, 1, 1, 1 },
 	{ 0, 0, 1, 0, 0 },
 	{ 0, 0, 1, 0, 0 }  }.

The ones represent bits that are turned on, while the zeros represent bits that are off. Note that each row is represented by its own list of numbers, and that we need to have the same number of entries in each row or errors will result.

When image files such as PNGs or JPEGs are scaled, pixels can be interpolated so that the image file can be presented at virtually any scaling factor. However, the pixels of a bitmap element are set directly, and so the individual pixel is the primary unit of measurement. Thus, a bitmap displayed with a bit-size of 2 will be twice as wide and twice as high as the same bitmap displayed with a bit-size of 1. Glimmr will attempt to scale bitmaps to the canvas, but they cannot be scaled with the accuracy that sprites can be.

There are two types of bitmaps: monochrome and polychrome bitmaps. In a monochrome bitmap, a maximum of two colors are allowed--all bits are either on or off. In a polychrome bitmap, the author can specify a full RGB color for each pixel. For both types, bits are rendered using the properties 'tint' (foreground color) and 'background tint' (background color)."

A bitmap has a list of lists of numbers called the bitmap-array. The bitmap-array of a bitmap is {}.
A bitmap has a glulx color value called the tint. The tint of a bitmap is g-White.
A bitmap has a glulx color value called the background tint. The background tint of a bitmap is g-PlaceNullCol.
A bitmap has a number called the bit-size. The bit-size of a bitmap is 1.
[A bitmap has a number called the vertical ratio. The vertical ratio of a bitmap is 1.]

[The dot-size is set automatically by the extension. Authors need not use it.]
A bitmap has a number called the dot-size. The dot-size of a bitmap is 1.

Section - Scaling rule for bitmaps

An element scaling rule for a bitmap (called the grid) (this is the bitmap scaling rule):
	let the bitsize-temp be the bit-size of the grid + 0.0;
	unless the asymmetrical scaling option is active:
		now the dot-size of the grid is the bitsize-temp times the scaling factor of the current window times the scaling factor of the grid to the nearest whole number ;
	else:
		now the dot-size of the grid is the bitsize-temp times the scaling factor of the current window times the x-scaling factor of the grid to the nearest whole number ;
	if the dot-size of the grid < 1, now the dot-size of the grid is 1;
	let the bitmap-width be the number of entries in entry 1 of the bitmap-array of the grid;
	let the bitmap-height be the number of entries of the bitmap-array of the grid;
	if the grid is center-aligned:
		now the win-x of the grid is win-x - (bitmap-width * dot-size) / 2;
		now the win-y of the grid is win-y - (bitmap-height * dot-size) / 2;
	if the grid is right-aligned:
		now the win-x of the grid is win-x - (bitmap-width * dot-size);
		now the win-y of the grid is win-y - (bitmap-height * dot-size);
	continue.


Section - Centering algorithm for bitmaps

To decide what list of numbers is the center-point of (item - a bitmap):
	let dx be a number;
	let dy be a number;
	let x be entry 1 of the origin of item;
	let y be entry 2 of the origin of item;
	let the bitmap-width be the number of entries in entry 1 of the bitmap-array of the item;
	let dot-scale be (bit-size of the item * bitmap-width) as a fixed point number;
	unless the asymmetrical scaling option is active:
		let dx be the dot-scale times the scaling factor of the item to the nearest whole number;
		let dy be the dot-scale times the scaling factor of the item to the nearest whole number;
	else:
		let dx be the dot-scale times the x-scaling factor of the item to the nearest whole number;
		let dy be the dot-scale times the y-scaling factor of the item to the nearest whole number;
	let x be x + (dx / 2);
	let y be y + (dy / 2);
	let coord be {0, 0};
	now entry 1 of coord is x;
	now entry 2 of coord is y;
	decide on coord.


Section - Monochrome bitmap

A monochrome bitmap is a kind of bitmap.

The specification of monochrome bitmap is "A monochrome bitmap has two possible colors. Where the bitmap-array provides a 1, the value of the 'tint' property (a glulx color value) will be used. Where a 0 is provided, the 'background tint' color (also a glulx color value) will be presented. If the background tint is specified as g-PlaceNullCol, the null value defined by Flexible Windows, there will be no background color."

An element display rule for a monochrome bitmap (called the grid):
	let bitmap-height be the number of entries in bitmap-array of the grid;
	if the background tint of the grid is g-PlaceNullCol:
		draw a monochrome bitmap (color tint of the grid) in (current window) at (win-x of the grid) by (win-y of the grid) using (bitmap-array) with dot size (dot-size) pixels;
	else:
		drmonobitmap (color tint of the grid) in (current window) at (win-x of the grid) by (win-y of the grid) using (bitmap-array) with dot size (dot-size) pixels and background (color background tint of the grid);
	if the grid is graphlinked:
		set a graphlink in the current window identified as grid from win-x by win-y to win-x + (bitmap-height * dot-size) by win-y + (bitmap-height * dot-size) as the linked replacement-command of the grid;
	#if utilizing Glimmr debugging;
	say "[>console][CBD]Drawing monochrome bitmap [i][grid][/i], foreground color [color tint of the grid], in [i][current window][/i] with upper left ([win-x of grid], [win-y]) and lower right ([win-x + (number of entries in entry 1 of the bitmap-array of the grid * dot-size)], [win-y + (bitmap-height * dot-size)])[unless background tint of grid is g-PlaceNullCol]; background color [color background tint of grid][end if][if grid is graphlinked]. [line break][CBD]Graphlink corresponding to [i][grid][/i] set from ([win-x of grid], [win-y of grid]) to ([win-x + (number of entries in entry 1 of the bitmap-array of the grid * dot-size)], [win-y + (bitmap-height * dot-size)]): [quotation mark][linked replacement-command of grid][quotation mark][end if].[<]";
	#end if.


Section - Polychrome bitmap

[In a polychrome bitmap, we can set a decimal version of any hex RGB-color we like in our bitmap array. To supply a null value (i.e., draw nothing to the screen for a given bit), use any negative number. If we have specified a background color, we will see that background color wherever the null bit is present in our bitmap array.]

A polychrome bitmap is a kind of bitmap.

The specification of polychrome bitmap is "With a polychrome bitmap, we can specify any color using a decimal version of the hexadecimal RGB specification (see Glulx Text Effects for more info). Where a polychrome's bitmap-array provides a negative number (e.g, -1), the background tint will be drawn. If the background tint is specified as g-PlaceNullCol (the null value defined by Flexible Windows) there will be no background color. The tint property has no effect when used with a polychrome bitmap."

An element display rule for a polychrome bitmap (called the grid):
	let bitmap-height be the number of entries in bitmap-array of the grid;
	if the background tint of the grid is g-PlaceNullCol:
		draw a polychrome bitmap in (current window) at (win-x of the grid) by (win-y of the grid) using (bitmap-array) with dot size (dot-size) pixels;
	else:
		draw a polychrome bitmap in (current window) at (win-x of the grid) by (win-y of the grid) using (bitmap-array) with dot size (dot-size) pixels and background (color background tint of the grid);
	if the grid is graphlinked:
		set a graphlink in the current window identified as grid from win-x by win-y to win-x + (bitmap-height * dot-size) by win-y + (bitmap-height * dot-size) as the linked replacement-command of the grid;
	#if utilizing Glimmr debugging;
	say "[>console][CBD]Drawing polychrome bitmap [i][grid][/i] in [i][current window][/i] with upper left ([win-x of grid], [win-y]) and lower right ([win-x + (number of entries in entry 1 of the bitmap-array of the grid * dot-size)], [win-y + (bitmap-height * dot-size)])[unless background tint of grid is g-PlaceNullCol]; background color [color background tint of grid][end if][if grid is graphlinked]. [line break][CBD]Graphlink corresponding to [i][grid][/i] set from ([win-x of grid], [win-y of grid]) to ([win-x + (number of entries in entry 1 of the bitmap-array of the grid * dot-size)], [win-y + (bitmap-height * dot-size)]): [quotation mark][linked replacement-command of grid][quotation mark][end if].[<]";
	#end if.


Chapter - Rendered strings


Section - Rendered string base class

A rendered string is a kind of g-element.

The specification of rendered string is "A rendered string is a graphic element that renders an indexed text string--the 'text string' property--graphically. A rendered string must have an 'associated font' specified in order to function. Rendered strings can be left-aligned (the default), center-aligned, or right-aligned; the alignment refers to whether the origin will be the upper left, the upper center point, or the upper right of the rendered text. A cursor position can be specified (the 'cursor' property); this is a number that represents the position after which the cursor will be placed."

A rendered string has a font called the associated font.

[A rendered string can also have a cursor, which allows us to use rendered strings with input. The cursor is initially set to -99; this or any other negative number will suppress display of the cursor. A cursor value of 0 or higher will place the cursor after that character in the string. In other words, a cursor value of 2 places the cursor after the second character in the string. A cursor value greater than the number of characters in the string will never be shown.]

A rendered string has a number called the cursor. The cursor is usually -99.

[Center and right alignment in rendered strings function differently from other g-elements; the vertical positioning does not change. This mimics the behavior of alignment in word processors, as is more appropriate for text.]
A rendered string is usually left-aligned.

[A rendered string is rendered either by providing a text string or a list of numbers, which represents a list of the characters of the string. The latter is faster, but more work for the author.]
A rendered string has an indexed text called the text-string. The text-string of a rendered string is "".

A rendered string has a glulx color value called the tint. The tint of a rendered string is g-White.
A rendered string has a glulx color value called the background tint. The background tint of a rendered string is g-PlaceNullCol.


Section - Private naming of rendered strings
[Replace this section if you need the player to be able to refer to rendered strings.]

A rendered string is usually privately-named.


Section - Calculate the length of a rendered string

To decide what number is the length of (stream - a rendered string):
	let len be 0;
	repeat with N running from 1 to the number of characters in the text-string of the stream:
		let V be the character code of position N of the text-string of the stream;
		if there is a char of V in the font table of the associated font of the stream:
			choose row with a char of V in the font table of the associated font of the stream;
		else:
			choose row with a char of 32 in the font table of the associated font of the stream;
		increase len by the advance entry;
	decide on len.


Section - Bitmap-rendered string class

A bitmap-rendered string is a kind of rendered string.

The specification of bitmap-rendered string is "A bitmap-rendered string is a rendered string in which each glyph is drawn as a bitmap; that is, with individual pixels or 'bits' drawn directly to the screen by Glimmr. It does not require any external image files, only that a valid bitmap font (such as that provided by the Glimmr Bitmap Font extension) be specified as the 'associated font'. As with bitmaps, we can set the 'bit-size' property to set the size of each bit, and the 'tint' and 'background tint' properties to define the colors. When a background tint is provided, a single rectangle is drawn encompassing the entire text area of the rendered string."

A bitmap-rendered string has a number called the bit-size. The bit-size of a bitmap-rendered string is 1.

[The dot-size is set automatically by the extension. Authors need not use it.]
A bitmap-rendered string has a number called the dot-size. The dot-size of a bitmap-rendered string is 1.


Section - Prefer the null typeface (for use without Glimmr Bitmap Font by Erik Temple)
[Here we make the dummy font, defined in Glimmr Drawing Commands, the preferred font for image-rendered strings, but only if the Glimmr Bitmap Font extension is not included. Authors may replace this section to prevent this preference being set when they include a font other than the one mentioned in the name of the section.]

The associated font of a bitmap-rendered string is Null-bitmap-typeface.


Section - Centering algorithm for bitmap-rendered strings

To decide what list of numbers is the center-point of (item - a bitmap-rendered string):
	let dx be a number;
	let dy be a number;
	let x be entry 1 of the origin of item;
	let y be entry 2 of the origin of item;
	let dot-width be (bit-size of the item * length of the item) as a fixed point number;
	unless the asymmetrical scaling option is active:
		let dx be the dot-width times the scaling factor of the item to the nearest whole number;
		let dy be the font-height of the associated font of the item times the scaling factor of the item to the nearest whole number;
	else:
		let dx be the dot-width times the x-scaling factor of the item to the nearest whole number;
		let dy be the font-height of the associated font of the item times the x-scaling factor of the item to the nearest whole number;
	let x be x + (dx / 2);
	let y be y + (dy / 2);
	let coord be {0, 0};
	now entry 1 of coord is x;
	now entry 2 of coord is y;
	decide on coord.


Section - Scaling rule for bitmap-rendered strings

An element scaling rule for a bitmap-rendered string (called the stream) (this is the bitmap-rendered string scaling rule):
	let the bitsize-temp be the bit-size of the stream + 0.0;
	unless the asymmetrical scaling option is active:
		now the dot-size of the stream is the bitsize-temp times the scaling factor of the current window times the scaling factor of the stream to the nearest whole number ;
	else:
		now the dot-size of the stream is the bitsize-temp times the scaling factor of the current window times the x-scaling factor of the stream to the nearest whole number ;
	if the dot-size of the stream < 1, now the dot-size of the stream is 1;
	continue.


Section - Bitmap-rendered string drawing rule

An element display rule for a bitmap-rendered string (called the stream):
	if the text-string of the stream is "" and the cursor of the stream is not 0:
		#if utilizing Glimmr debugging;
		say "[>console][CBD]Rendered bitmap string [i][stream][/i] specifies no text and has not been rendered. To display only a cursor, now the cursor property of the bitmap-rendered string is 0.[<]";
		#end if;
		exit;
	let foreground-color be the tint of the stream;
	let background-color be the background tint of the stream;
	let len be the length of the stream;
	if the stream is right-aligned:
		now the win-x of the stream is the win-x of the stream - (len * dot-size);
	if the stream is center-aligned:
		now the win-x of the stream is the win-x of the stream - (len * dot-size) / 2;
	let row be the win-y of the stream;
	let column be the win-x of the stream;
	let column-index be column;
	unless background-color is g-PlaceNullCol or the text-string of the stream is "":
		dimrectdraw (color background-color) in (current window) at (column - dot-size of the stream) by (row - dot-size) with size (dot-size * len) + dot-size by (dot-size * font-height of the associated font of the stream) + dot-size;
	if the cursor of the stream is 0:
		dimrectdraw (color foreground-color) in (current window) at (column) by (row - dot-size) with size dot-size by (dot-size * font-height of the associated font of the stream);
	if the text-string of the stream is "":
		#if utilizing Glimmr debugging;
		say "[>console][CBD]Rendered bitmap string [i][stream][/i] specifies no text. Displaying cursor at position 0.[<]";
		#end if;
		exit;
	repeat with N running from 1 to the number of characters in the text-string of the stream:
		let V be the character code of position N of the text-string of the stream;
		if there is a char of V in the font table of the associated font of the stream:
			choose row with a char of V in the font table of the associated font of the stream;
		else:
			choose row with a char of 32 in the font table of the associated font of the stream;
		let scan be 0;
		let bitmap-size be width entry * height entry;
		repeat with pointer running from (index entry + 1) to the (index entry + bitmap-size):
			increase scan by 1;
			if scan > width entry:
				increase row by dot-size of the stream;
				now column is column-index;
				let scan be 1;
			if entry pointer of the glyph map of the associated font of the stream is 1:
				dimrectdraw (color foreground-color) in (current window) at (column) by row + (yoffset entry * dot-size) with size dot-size of the stream by dot-size;
			increase column by the dot-size of the stream;
		if the cursor of the stream is N:
			dimrectdraw (color foreground-color) in (current window) at (column) by (win-y of the stream - dot-size) with size dot-size by (dot-size * font-height of the associated font of the stream);
		increase column-index by (advance entry * dot-size of the stream);
		now column is column-index;
		let row be the win-y of the stream;
	#if utilizing Glimmr debugging;
	say "[>console][CBD]Displaying rendered bitmap string [i][stream][/i], foreground color [color foreground-color], in [i][current window][/i] with upper left ([win-x of stream], [win-y]) and lower right ([column], [row + (font-height of the associated font of the stream * dot-size)])[unless background-color is g-PlaceNullCol]; background color [color background-color][end if][if stream is graphlinked]. [line break][CBD]Graphlink corresponding to [i][stream][/i] set from ([win-x of stream], [win-y of stream]) to ([column], [row + (font-height of the associated font of the stream * dot-size)]): [quotation mark][linked replacement-command of stream][quotation mark][end if].[<]";
	#end if;
	if the stream is graphlinked:
		set a graphlink in the current window identified as the stream from (win-x - dot-size) by (win-y - dot-size) to column by row + (font-height of the associated font of the stream * dot-size) as the linked replacement-command of the stream;


Chapter - Image-rendered string class

An image-rendered string is a kind of rendered string.

The specification of image-rendered string is "An image-rendered string is a rendered string in which each glyph is drawn using a separate external PNG file; these are assigned and managed via a separate font object, which must be supplied as the 'associated font' of the rendered string. Like sprites, the rendered string can be provided its own 'scaling factor' property to adjust the size of its glyphs relative to the canvas. If the 'background tint' property is supplied (a glulx color value), a rectangle of that color will be drawn behind the rendered string."

[The scaling factor is automatically calculated by the extension; authors need not utilize it.]
An image-rendered string has a number called the calculated scaling factor.


Section - Centering algorithm for image-rendered strings

To decide what list of numbers is the center-point of (item - a image-rendered string):
	let dx be a number;
	let dy be a number;
	let x be entry 1 of the origin of item;
	let y be entry 2 of the origin of item;
	let string-width be length of the item plus (2 * background-margin of the associated font of the item) as a fixed point number;
	let string-height be font-height of the associated font of the item plus (2 * background-margin of the associated font of the item) as a fixed point number;
	unless the asymmetrical scaling option is active:
		let dx be the string-width times the scaling factor of the item to the nearest whole number;
		let dy be the string-height times the scaling factor of the item to the nearest whole number;
	else:
		let dx be the string-width times the x-scaling factor of the item to the nearest whole number;
		let dy be the string-height times the x-scaling factor of the item to the nearest whole number;
	let x be x + (dx / 2);
	let y be y + (dy / 2);
	let coord be {0, 0};
	now entry 1 of coord is x;
	now entry 2 of coord is y;
	decide on coord.


Section - Prefer the null typeface (for use without Glimmr Image Font by Erik Temple)
[Here we make the dummy font, defined in Glimmr Drawing Commands, the preferred font for image-rendered strings, but only if the Glimmr Image Font extension is not included. Authors may replace this section to prevent this preference being set when they include a font other than the one mentioned in the name of the section.]

The associated font of an image-rendered string is Null-image-typeface.


Section - Image-rendered string scaling rule

An element scaling rule for an image-rendered string (called the stream) (this is the image-rendered string scaling rule):
	unless the asymmetrical scaling option is active:
		now the calculated scaling factor of the stream is ( the scaling factor of the current window times the scaling factor of the stream) to the nearest whole number;
	else:
		now the calculated scaling factor of the stream is ( the scaling factor of the current window times the x-scaling factor of the stream) to the nearest whole number;
	continue.


Section - Image-rendered string drawing rule

An element display rule for an image-rendered string (called the stream):
	if the text-string of the stream is "" and the cursor of the stream is not 0:
		#if utilizing Glimmr debugging;
		say "[>console][CBD]Rendered image string [i][stream][/i] specifies no text and has not been rendered. To display only a cursor, now the cursor property of the image-rendered string is 0.[<]";
		#end if;
		exit;
	[let foreground-color be the tint of the stream;
	let background-color be the background tint of the stream;]
	let len be the length of the stream times the calculated scaling factor of the stream to the nearest whole number;
	if the stream is right-aligned:
		now the win-x of the stream is the win-x of the stream - len;
	if the stream is center-aligned:
		now the win-x of the stream is the win-x of the stream - (len / 2);
	[let row be the win-y of the stream;]
	let column be the win-x of the stream;
	let cursor-weight be the cursor-width of the associated font of the stream times the calculated scaling factor to the nearest whole number;
	if cursor-weight < 1, now cursor-weight is 1;
	let margin be background-margin of the associated font of the stream times the calculated scaling factor to the nearest whole number;
	let vertical-size be font-height of the associated font of the stream times the calculated scaling factor to the nearest whole number;
	unless background tint of the stream is g-PlaceNullCol or the text-string of the stream is "":
		dimrectdraw (color background tint of the stream) in (current window) at (win-x of the stream - margin) by (win-y of the stream - margin) with size (len + margin + margin) by (vertical-size + margin + margin);
	if the cursor of the stream is 0:
		dimrectdraw (color tint of the stream) in (current window) at (column) by (win-y of the stream) with size cursor-weight by vertical-size;
	if the text-string of the stream is "":
		#if utilizing Glimmr debugging;
		say "[>console][CBD]Rendered image-based string [i][stream][/i] specifies no text. Displaying cursor at position 0.[<]";
		#end if;
		exit;
	repeat with N running from 1 to the number of characters in the text-string of the stream:
		let V be the character code of position N of the text-string of the stream;
		if there is a char of V in the font table of the associated font of the stream:
			choose row with a char of V in the font table of the associated font of the stream;
		else:
			choose row with a char of 32 in the font table of the associated font of the stream;
		let the chosen glyph be glyph-ref entry;
		let the yoffset be yoffset entry times the calculated scaling factor of the stream to the nearest whole number;
		let xx be the image-width of chosen glyph;
		let yy be the image-height of chosen glyph;
		now xx is xx times the calculated scaling factor of the stream to the nearest whole number;
		now yy is yy times the calculated scaling factor of the stream to the nearest whole number;
		drscimage (chosen glyph) in (current window) at (column) by (win-y of the stream + yoffset) with dimensions (xx) by (yy);
		if the cursor of the stream is N:
			dimrectdraw (color tint of the stream) in (current window) at (column + xx) by (win-y of the stream) with size cursor-weight by vertical-size;
		[if the text-animation delay of the stream > 0 and glulx timekeeping is supported:
			follow the text-painting animation rules for the stream;]
		increase column by the advance entry times the calculated scaling factor of the stream to the nearest whole number;
	#if utilizing Glimmr debugging;
	say "[>console][CBD]Displaying rendered image string [i][stream][/i], foreground color [color tint of the stream], in [i][current window][/i] with upper left ([win-x of stream], [win-y]) and lower right ([column + margin], [win-y of the stream + vertical-size + margin])[unless background tint of the stream is g-PlaceNullCol]; background color [color background tint of the stream][end if][if stream is graphlinked]. [line break][CBD]Graphlink corresponding to [i][stream][/i] set from ([win-x of stream], [win-y of stream]) to ([column + margin], [win-y of the stream + vertical-size + margin]): [quotation mark][linked replacement-command of stream][quotation mark][end if].[<]";
	#end if;
	if the stream is graphlinked:
		set a graphlink in the current window identified as the stream from (win-x - margin) by (win-y - margin) to (column + margin) by (win-y of the stream + vertical-size + margin) as the linked replacement-command of the stream.


Chapter - Image-map base class

An image-map is a kind of g-element.

The specification of an image-map is "An image-map element draws a rectangular image composed of individual images arranged in a strict grid. The author specifies the grid of images in the form of a list of lists (multi-dimensional array).

An image-map can be specified with 'background tint', a glulx color value (see Basic Screen Effects) that will appear wherever the array of the image-map has a null value, and/or it will show through transparent PNG images.

Like other g-elements, an image-map can have a graphic hyperlink specified using the 'linked replacement command'. However, the tiles of an image-map grid can also be individually hyperlinked. To do this, we must specify the 'tiled graphlink status' of an image-map to be 'g-active'. More critically, we must also specify a separate array (the 'linked command array,' a list of lists of texts), the same size as the array of images defining the image-map, that provides the command for each figure. The creation of these lists can be largely automated using conversion tables and special phrases--it is almost never necessary to specify them by hand.

There are two types of image-map, distinguished by the kind of data used to define the list array. In a 'tileset image-map', the array is called the 'tile-array' and consists of a list of numbers that are keyed to a tileset. The tileset is simply a translation table that specifies which numbers in the array correspond to which figure names. The arrays of tileset image-maps are concise and generally human-readable; that is, they can be arranged in a grid in source code and graphically resemble the final map.

In a direct image-map, the figure names of the images are specified directly; there is no tileset. Direct image-maps are more verbose and generally more difficult to create and read by hand; for anything larger than a few grid squares, most users will want to specify direct image-maps using an automated process rather than type them in by hand."

An image-map has a glulx color value called the background tint. The background tint of an image-map is g-PlaceNullCol.

An image-map has a list of lists of texts called the linked command array. The linked command array of an image-map is {}.

An image-map has a g-activity called tiled graphlink status. The tiled graphlink status of an image-map is g-inactive.

Definition: An image-map (called the item) is tile-graphlinked if the tiled graphlink status of the item is g-active.

To activate tiled graphlink/graphlinks to/for/of (element - an image-map):
	now the tiled graphlink status of the element is g-active.

To remove/deactivate tiled graphlink/graphlinks of/from/for (element - an image-map):
	now the tiled graphlink status of the element is g-inactive.

[The grid-tile-width and grid-tile-height are set automatically by the extension. Authors should not need to refer to them.]

An image-map has a number called the scaled tile-width. The scaled tile-width of an image-map is 0.

An image-map has a number called the scaled tile-height. The scaled tile-height of an image-map is 0.


Section - Direct image-maps

A direct image-map is a kind of image-map.

The specification of a direct image-map is "A direct image-map is specified using a list of lists of figure names called the 'figure-array'. Each row in the list is a list of figures within the list of lists. Authors may use the entry 'Figure of Null' to draw nothing for a given tile of a direct image-map.

An author must specify the dimensions in canvas units of each cell of the grid; if necessary, all images will be resized to fit into the provided dimensions. This is done by setting the 'tile-width' and 'tile-height' of the image-map.

In order to take advantage of automated construction of 'linked command arrays' using the provided phrase, authors must provide a translation table, with a 'figure' column containing a figure name, and a 'linked command' column specifying the text of the replacement command to be associated with the hyperlinked image."

A direct image-map has a list of lists of figure names called the figure-array. The figure-array is {}.

A direct image-map has a number called the tile-width. The tile-width is usually 1.
A direct image-map has a number called the tile-height. The tile-height is usually 1.


Section - Tileset image-maps

A tileset image-map is a kind of image-map.

The specification of a tileset image-map is "A tileset image-map is specified using a list of lists of numbers called the 'tile-array'. Each row in the list is a list of numbers within the larger list of lists. The numbers used in the tile-array are keyed to figures via a 'tileset' (basically a translation table). A tileset image-map must be explicitly associated with a given tileset using the 'associated tileset' property.

Authors should enter 0 in the tile-array to draw nothing in a given tile of the image map.

The tileset object provides the dimensions in pixels used for each grid cell; if necessary, all images will be resized to fit into the provided dimensions. However, if we want an image-map to use differently sized tiles, we can specify the dimensions (in canvas units) to be used with the 'tile-width-override' and 'tile-height-override' properties.

In order to take advantage of automated construction of 'linked command arrays' using the provided phrase, authors should include a 'linked command' column in the associated tileset of an image-map. This column specifies the text of the replacement command to be associated with the hyperlinked image."

A tileset image-map has a tileset called the associated tileset. The associated tileset of a tileset image-map is the null tileset.

A tileset image-map has a list of lists of numbers called the tile-array. The tile-array of a tileset image-map is {}.

A tileset image-map has a number called the tile-width override. The tile-width override is 0.

A tileset image-map has a number called the tile-height override. The tile-height override is 0.


Section - Fitting functions

[These functions don't also scale the opposite axis; in other words, they scale asymmetrically. To change both height and width, use both phrases in succession.]

To fit (grid - an image-map) to/into a/-- total/-- width of (X - a number) canvas/-- pixel/pixels/px/units wide/--:
	let image-map-width be a number;
	let width-token be a number;
	if the grid is a tileset image-map:
		let image-map-width be the number of entries in entry 1 of the tile-array of the grid;
		now the tile-width override of the grid is X divided by image-map-width;
		let width-token be the tile-width override of the grid;
	else if the grid is a direct image-map:
		let image-map-width be the number of entries in entry 1 of the tile-array of the grid;
		now the tile-width of the grid is X divided by image-map-width;
		let width-token be the tile-width of the grid;
	else:
		rule fails;
	#if utilizing Glimmr debugging;
	    say "[>console][CBD]Trying to fit [grid] to a width of [X] canvas units. Changed tile-width to [width-token]. [if width-token * image-map-width is not X]The width could not be set precisely to [X]. [end if]The overall width before scaling will be [width-token * image-map-width].[<]";
	#end if.


To fit (grid - an image-map) to/into a/-- total/-- height of (Y - a number) canvas/-- pixel/pixels/px/units/-- high/--:
	let height-token be a number;
	let calc-height be a number;
	if the grid is a tileset image-map:
		let the calc-height be the number of entries of the tile-array of the grid;
		now the tile-height override of the grid is Y divided by the calc-height;
		let height-token be the tile-height override of the grid;
	else if the grid is a direct image-map:
		let the calc-height be the number of entries of the figure-array of the grid;
		now the tile-height of the grid is Y divided by the calc-height;
		let height-token be the tile-height of the grid;
	else:
		rule fails;
	#if utilizing Glimmr debugging;
	    say "[>console][CBD]Trying to fit [grid] to a height of [Y] canvas units. Changed tile-height override to [height-token]. [if height-token * calc-height is not Y]The height could not be set to [Y]. [end if]The overall height before scaling will be [height-token * calc-height].[<]";
	#end if.


Section - Scaling rule for image-maps

An element scaling rule for an image-map (called the grid) (this is the image-map scaling rule):
	let imap-x be the desired tile-width of the grid;
	let imap-y be the desired tile-height of the grid;
	unless the asymmetrical scaling option is active:
		now the scaled tile-width of the grid is imap-x times the scaling factor of current window times the scaling factor of the grid to the nearest whole number ;
		now the scaled tile-height of the grid is imap-y times the scaling factor of current window times the scaling factor of the grid to the nearest whole number ;
	else:
		now the scaled tile-width of the grid is imap-x times the scaling factor of current window times the x-scaling factor of the grid to the nearest whole number ;
		now the scaled tile-height of the grid is imap-y times the scaling factor of current window times the y-scaling factor of the grid to the nearest whole number ;
	if grid is center-aligned:
		now the win-x of the grid is win-x - (imap-x * scaled tile-width) / 2;
		now the win-y of the grid is win-y - (imap-y * scaled tile-height) / 2;
	if grid is right-aligned:
		now the win-x of grid is win-x - (imap-x * scaled tile-width);
		now the win-y of grid is win-y - (imap-y * scaled tile-height);
	continue.

To decide which number is the desired tile-width of (grid - an image-map):
	if the grid is a tileset image-map:
		if the tile-width override of the grid > 0:
			decide on the tile-width override of the grid;
		else:
			decide on the tile-width of the associated tileset of the grid;
	if the grid is a direct image-map:
		decide on the tile-width of the grid.

To decide which number is the desired tile-height of (grid - an image-map):
	if the grid is a tileset image-map:
		if the tile-height override of the grid > 0:
			decide on the tile-height override of the grid;
		else:
			decide on the tile-height of the associated tileset of the grid;
	if the grid is a direct image-map:
		decide on the tile-height of the grid.


Section - Centering algorithm for image-maps

To decide what list of numbers is the center-point of (grid - an image-map):
	let dx be a number;
	let dy be a number;
	let x be entry 1 of the origin of grid;
	let y be entry 2 of the origin of grid;
	let imap-x be the desired tile-width of the grid;
	let imap-y be the desired tile-height of the grid;
	if the asymmetrical scaling option is not active:
		let dx be imap-x times the scaling factor of the grid to the nearest whole number;
		let dy be imap-y times the scaling factor of the grid to the nearest whole number;
	else:
		let dx be imap-x times the x-scaling factor of the grid to the nearest whole number;
		let dy be imap-y times the y-scaling factor of the grid to the nearest whole number;
	let the calc-height be the number of entries of the tile-array of the grid;
	let the calc-width be the number of entries in entry 1 of the tile-array of the grid;
	let dx be dx * calc-width;
	let dy be dy * calc-height;
	let x be x + (dx / 2);
	let y be y + (dy / 2);
	let coord be {0, 0};
	now entry 1 of coord is x;
	now entry 2 of coord is y;
	decide on coord.


Section - Tileset image-map display rule

[NOTE: The user must set the tiled graphlink status to active in order to use individually tiled graphlinks. One can set both a graphlink for the map and tiled graphlinks for individual tiles--the former will always underlie the latter.]

An element display rule for a tileset image-map (called the grid):
	let image-map-width be the number of entries of entry 1 of the tile-array of the grid;
	let image-map-height be the number of entries in the tile-array of the grid;
	unless the background tint of the grid is g-PlaceNullCol:
		rectdraw (color background tint of the grid) in (current window) from (win-x of the grid) by (win-y) to win-x + (image-map-width * scaled tile-width) by win-y + (image-map-height * scaled tile-height);
		#if utilizing Glimmr debugging;
		    say "[>console][CBD]Drawing background rectangle (glulx color-value [background tint of grid]) from ([win-x], [win-y]) to ([win-x + (image-map-width * scaled tile-width)], [win-y + (image-map-height * scaled tile-height)]) for tileset image-map [i][grid][/i] in [i][current window][/i].[<]";
		#end if;
	drimagemap in (current window) at (win-x of the grid) by (win-y of the grid) using (tile-array) rendered with (associated tileset of the grid) with tile-size (scaled tile-width) by (scaled tile-height) px;
	#if utilizing Glimmr debugging;
	    say "[>console][CBD]Drawing tileset image-map [i][grid][/i] in [i][current window][/i] at origin ([win-x of grid], [win-y of grid]). Map ([image-map-width] x [image-map-height] = [image-map-width * image-map-height] tiles) rendered using tileset [associated tileset]; tiles measure [scaled tile-width] x [scaled tile-height] pixels after scaling.[<]";
	#end if;
	if the grid is graphlinked:
		set a graphlink in the current window identified as (the grid) from win-x by win-y to win-x + (scaled tile-width * image-map-width) by win-y + (scaled tile-height * image-map-height) as the linked replacement-command of the grid;
		#if utilizing Glimmr debugging;
		    say "[>console][CBD]Graphlink corresponding to [i][grid][/i] set in [i][current window][/i] from ([win-x], [win-y]) to ([win-x + (scaled tile-width * image-map-width)], [win-y + (scaled tile-height * image-map-height)]): [quotation mark][linked replacement-command][quotation mark].[<]";
		#end if;
	if the grid is tile-graphlinked:
		follow the tiled graphlink setting rules for the grid.


Section - Direct image-map display rule

An element display rule for a direct image-map (called the grid):
	let image-map-width be the number of entries of entry 1 of the figure-array of the grid;
	let image-map-height be the number of entries in the figure-array of the grid;
	unless the background tint of the grid is g-PlaceNullCol:
		rectdraw (color background tint of the grid) in (current window) from (win-x of the grid) by (win-y) to win-x + (image-map-width * scaled tile-width) by win-y + (image-map-height * scaled tile-height);
		#if utilizing Glimmr debugging;
		    say "[>console][CBD]Drawing background rectangle (glulx color-value [background tint of grid]) from ([win-x], [win-y]) to ([win-x + (image-map-width * scaled tile-width)], [win-y + (image-map-height * scaled tile-height)]) for direct image-map [i][grid][/i] in [i][current window][/i][<].";
		#end if;
	drimagemap in (current window) at (win-x of the grid) by (win-y of the grid) using (figure-array) with tile-size (scaled tile-width) by (scaled tile-height) px;
	#if utilizing Glimmr debugging;
	    say "[>console][CBD]Drawing direct image-map [i][grid][/i] in [i][current window][/i] at origin ([win-x of grid], [win-y of grid]). Map ([image-map-width] x [image-map-height] = [image-map-width * image-map-height] tiles); tiles measure [scaled tile-width] x [scaled tile-height] pixels after scaling.[<]";
	#end if;
	if the grid is graphlinked:
		set a graphlink in the current window identified as (the grid) from win-x by win-y to win-x + (scaled tile-width * image-map-width) by win-y + (scaled tile-height * image-map-height) as the linked replacement-command of the grid;
		#if utilizing Glimmr debugging;
		    say "[>console][CBD]Graphlink corresponding to [i][grid][/i] set in [i][current window][/i] from ([win-x], [win-y]) to ([win-x + (scaled tile-width * image-map-width)], [win-y + (scaled tile-height * image-map-height)]): [quotation mark][linked replacement-command][quotation mark].[<]";
		#end if;
	if the grid is tile-graphlinked:
		follow the tiled graphlink setting rules for the grid.


Part - Converting between image-map, screen, and canvas coordinates

Chapter - Converting image-map to canvas coordinates

To decide what list of numbers is the canvas coordinate/coordinates/-- equivalent of (coord1 - a list of numbers) in the/-- coordinates/-- of/-- (grid - an image-map) image-map/--:
	let imap-x be the desired tile-width of the grid;
	let imap-y be the desired tile-height of the grid;
	let dx be (entry 1 of coord1 - 1) * imap-x;
	let dy be (entry 2 of coord1 - 1) * imap-y;
	let x1 be (entry 1 of the origin of grid) + dx;
	let y1 be (entry 2 of the origin of grid) + dy;
	let L be a list of numbers;
	add x1 to L;
	add y1 to L;
	decide on L.


Chapter - Converting image-map to screen coordinates

[This phrase can only be used after the element scaling rules for the image-map have been followed.]

To decide what list of numbers is the screen coordinate/coordinates/-- equivalent of (coord1 - a list of numbers) in the/-- internal/-- coordinates/-- of/-- (grid - an image-map) image-map/--:
	let dx be (entry 1 of coord1 - 1) * scaled tile-width of grid;
	let dy be (entry 2 of coord1 - 1) * scaled tile-height of grid;
	let x1 be (win-x of grid) + dx;
	let y1 be (win-y of grid) + dy;
	let L be a list of numbers;
	add x1 to L;
	add y1 to L;
	decide on L.


Chapter - Converting canvas to image-map coordinates

To decide what list of numbers is the equivalent of canvas coordinate/coordinates/-- (coord1 - a list of numbers) in the/-- internal/-- coordinates of (grid - an image-map) image-map/--:
	let imap-x be the desired tile-width of the grid;
	let imap-y be the desired tile-height of the grid;
	let x1 be entry 1 of the origin of the grid;
	let y1 be entry 2 of the origin of the grid;
	let x2 be entry 1 of coord1;
	let y2 be entry 2 of coord1;
	let dx be x2 - x1;
	let dy be y2 - y1;
	let dx be (dx / imap-x) + 1;
	let dy be (dy / imap-y) + 1;
	let L be a list of numbers;
	add dx to L;
	add dy to L;
	decide on L.

Chapter - Converting screen to image-map coordinates

[This phrase can only be used after the element scaling rules for the image-map have been followed.]

To decide what list of numbers is the equivalent of screen coordinate/coordinates/-- (coord1 - a list of numbers) in the/-- internal/-- coordinates of (grid - an image-map) image-map/--:
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	let dx be x1 - win-x of grid;
	let dy be y1 - win-y of grid;
	let dx be (dx / scaled tile-width of grid) + 1;
	let dy be (dy / scaled tile-height of grid) + 1;
	let L be a list of numbers;
	add dx to L;
	add dy to L;
	decide on L.


Part - Adding figures to an image-map array using internal coordinates

To place/add tile/-- (tile - a number) at internal/-- coordinate/coordinates/-- (internal-coordinates - a list of numbers) of/in (grid - a tileset image-map):
	let x be entry 1 of the internal-coordinates;
	let y be entry 2 of the internal-coordinates;
	now entry x of entry y of the tile-array of the grid is the tile.

To place/add figure/-- (tile - a figure name) at internal/-- coordinate/coordinates/-- (internal-coordinates - a list of numbers) of/in (grid - a direct image-map):
	let x be entry 1 of the internal-coordinates;
	let y be entry 2 of the internal-coordinates;
	now entry x of entry y of the figure-array of the grid is the tile.


Part - Graphic hyperlinking using tiled linked command arrays

The tiled graphlink setting rules are an object-based rulebook.
The tiled graphlink setting rules have outcomes exit (success - the default) and continue (no outcome).

A tiled graphlink setting rule for an image-map (called the grid):
	let row be win-y of the grid;
	let column be win-x of the grid;
	repeat with current-row running through the linked command array of the grid:
		repeat with index running through current-row:
			unless index is "":
				set a graphlink in current window identified as (the grid) from (column) by (row) to (column + scaled tile-width of grid) by (row + scaled tile-height) as (index), ignoring redundant links;
				#if utilizing the image-map graphlink preview option;
				if graphlink preview color is not g-PlaceNullCol:
					boxdraw (color graphlink preview color) in (current window) from (column) by (row) to (column + scaled tile-width of grid) by (row + scaled tile-height) with 1;
				#end if;
			increase column by scaled tile-width of grid;
		increase row by scaled tile-height of the grid;
		now column is win-x of the grid;
	#if utilizing Glimmr debugging;
	    say "[>console][CBD]Graphlinks set on [number of entries in the linked command array of the grid * number of entries in entry 1 of the linked command array of the grid] individual tiles for tileset image-map [i][grid][/i] in [i][current window][/i].[<]";
	#end if.


Part - Constructing graphic hyperlink sets for image maps

Chapter - Constructing a hyperlink set for a direct image-map

To construct/build graphic/-- hyperlinks/graphlinks array for (grid - a direct image-map) using (link-table - a table name):
	now the linked command array of the grid is {};
	let L be a list of texts;
	repeat with current-row running through the figure-array of the grid:
		let L be {};
		repeat with index running through current-row:
			if index is a figure listed in the link-table:
				if there is a linked command entry:
					add the linked command entry to L;
				else:
					add "" to L;
			else:
				add "" to L;
		add L to the linked command array of the grid;
	#if utilizing Glimmr debugging;
	    say "[>console][CBD]Constructed hyperlink command array for [grid] (a direct image-map) from the table [link-table].[<]";
	#end if.

[This table is required for the above routine to compile. It is best to make your own table rather than add to this one.]

Table of Figure Commands
figure	linked command
figure name	text
with 1 blank row.


Chapter - Constructing a hyperlink set for a tileset image-map

To construct/build graphic/-- hyperlinks/graphlinks array for (grid - a tileset image-map):
	now the linked command array of the grid is {};
	let L be a list of texts;
	repeat with current-row running through the tile-array of the grid:
		let L be {};
		repeat with index running through current-row:
			if index is a char listed in the translation-table of the associated tileset of the grid:
				if there is a linked command entry:
					add the linked command entry to L;
				else:
					add "" to L;
			else:
				add "" to L;
		add L to the linked command array of the grid;
	#if utilizing Glimmr debugging;
	    say "[>console][CBD]Constructed hyperlink command array for [grid] (a tileset image-map) from the translation-table of the tileset [associated tileset of the grid].[<]";
	#end if.


Part - Debugging commands for image-maps

Chapter - Dumping image-map data (not for release)

Dumping imap is an action out of world applying to one visible thing. Understand "image-map [any image-map]" or "[any image-map]" or "image map [any image-map]" as dumping imap.

Understand "image-map [text]" or "image map [text]" as a mistake ("That image-map could not be found. If this is not a typo, you may need to assign it the 'publically-named' property.").

Carry out dumping imap:
	let rules-altered be false;
	let image-map-width be a number;
	let image-map-height be a number;
	let total-length be a number;
	LineBreak;
	if intensive rules tracing is active:[we disable RULES ALL temporarily to avoid the enumeration of each iteration through the loops that build the data dump.]
		now rules-altered is true;
		suspend rules tracing;
	if the noun is a tileset image-map:
		now image-map-width is the number of entries of entry 1 of the tile-array of the noun;
		now image-map-height is the number of entries in the tile-array of the noun;
		now total-length is image-map-width * image-map-height;
		say "Showing data for [i][noun][/i], a tileset image-map assigned to [the associated canvas of the noun]. Map ([image-map-width] x [image-map-height] = [total-length] tiles) rendered using tileset [associated tileset]; tiles measure [desired tile-width of noun] x [desired tile-height of noun] canvas units[if the noun is graphlinked]. Graphlink [quotation mark][linked replacement-command of noun][quotation mark] applies to entire map[end if].[line break]Tile-array data:[paragraph break]";
	if the noun is a direct image-map:
		now image-map-height is the number of entries in the figure-array of the noun;
		now image-map-width is the number of entries in entry 1 of the figure-array of the noun;
		now total-length is image-map-width * image-map-height;
		say "[>console][CBD]Showing data for [i][noun][/i], a direct image-map assigned to [associated canvas of the noun]. Map ([image-map-width] x [image-map-height] = [total-length] tiles) rendered using tileset [associated tileset]; tiles measure [desired tile-width of noun] x [desired tile-height of noun] canvas units. [if the noun is graphlinked]Graphlink [quotation mark][linked replacement-command of noun][quotation mark] applies to entire map. [end if]Figure-array data:[paragraph break][<]";
	let scan be 0;
	let row-count be 1;
	say "[fixed letter spacing][run paragraph on]";
	if the noun is a tileset image-map:
		say "     ";
		repeat with count running from 1 to the image-map-width:
			say "[if count < 100] [end if][count][if count < 100] [end if][if count < 10] [end if]";
		repeat with current-row running through the tile-array of the noun:
			say "[line break][row-count][appropriate spacing for row-count]";
			repeat with item running through current-row:
				if item is 0:
					say "... ";
				else if item < 10:
					say " [item] ";
				else if item < 100:
					say " [item] ";
				else:
					say "[item] ";
			increment row-count;
	if the noun is a direct image-map:
		let row-count be 1;
		repeat with current-row running through the figure-array of the noun:
			say "[row-count]: ";
			repeat with item running through current-row:
				say "[item], ";
			LineBreak;
			increment row-count;
	say "[variable letter spacing]";
	LineBreak;
	if the noun is tile-graphlinked:
		let row-count be 1;
		repeat with current-row running through the linked command array of the noun:
			repeat with column-count running from 1 to the number of entries in current-row:
				unless entry (column-count) of current-row is "":
					say "[one of][line break][The noun] has individual graphlinks defined for the following tiles (given in the image-map's internal tile coordinates):[line break][or][stopping]([column-count], [row-count]) [quotation mark][entry column-count of current-row][quotation mark][line break]";
			increment row-count;
		LineBreak;
	if rules-altered is true:
		activate intensive rules tracing.

To say appropriate spacing for (N - a number):
	if N < 10:
		say "    ";
	else if N < 100:
		say "   ";
	else:
		say "  ".


Chapter - Graphlink preview
[This would be better implemented as a debugging command, perhaps, but is presented as a use option for performance reasons. With a use option, we can use an #ifdef block to define the debugging behavior; in other words, when the use option is not in use, no code at all related to it is compiled into the game, and thus no need to waste time checking a conditional.]

Use image-map graphlink preview translates as (- Constant Glimmr_GRAPHLINK_PREVIEW; -).

To #if utilizing the image-map graphlink preview option:
	(- #ifdef Glimmr_GRAPHLINK_PREVIEW; -)

The graphlink preview color is a glulx color value variable. The graphlink preview color is usually g-Light-Gray.


Glimmr Canvas-Based Drawing ends here.


---- DOCUMENTATION ----

Chapter: Concepts

Glimmr Canvas-Based Drawing (GCBD) takes an object-oriented approach to drawing in graphics windows. The central concept is the "canvas" (called the "g-canvas" to avoid namespace conflicts). A canvas is similar to the HTML5 <canvas> element: it is a defined area within which graphic elements of various sorts can be displayed. The canvas is basically nothing more than a coordinate system, a blank page which is given certain dimensions. To display a canvas, we assign it to a graphics window (created using the Flexible Windows extension). When the window is opened, the composition we have defined will be displayed, and the canvas--along with all of the graphic elements displayed in it--will automatically be scaled to fit in the window.

The graphic elements displayed in the canvas are called "g-elements" (again, to avoid namespace clashes with your code or with other extensions). These are declared as individual objects. GCBD provides four basic types of element:

	sprite - displays an image from a file (a "figure" in Inform's terminology).
	primitive - a simple shape such as a filled rectangle, an outlined box, or an arbitrary line.
	bitmap - a complex element declared by specifying a grid of on/off or colored "bits"; similar to programming an LED sign.
	image-map - a complex element declared by specifying a grid of image tiles.
	rendered string - a complex element in which either image files or bitmaps are used to render arbitrary text strings.

 The element types are discussed in more detail below. Authors can also create their own g-element types if desired; some examples are given in this documentation.

Elements are assigned to a canvas, and they can also be set either active or inactive; inactive elements will not be displayed. They can also be scaled relative to the canvas and given z-values (called "display-layer") to control the way in which objects overlap each other. If we include the Glimmr Graphic Hyperlinks extension, elements can also be made to respond in various ways to mouse input from the player.


Chapter: Including Glimmr Canvas-Based Drawing in a project

Inform remains fairly unsophisticated in its mechanisms for organizing included extensions. When we are dealing with a complex system of modular extensions such as Glimmr, it is very easy to trip it up, and the result is usually a list of unhelpful errors. For this reason, each Glimmr extension includes a section--such as this one--about how to include it, particularly in relation to other extensions.

GCBD should be included before any font or tileset extensions, e.g.:

	Include Glimmr Canvas-Based Drawing by Erik Temple.
	Include Glimmr Image Font by Erik Temple.

You should not include Flexible Windows, Fixed Point Maths, or Glimmr Drawing Commands in your project if you are using GCBD; GCBD includes these automatically.


Chapter: Basic Usage

Glimmr Canvas-Based Drawing is designed to be easy to use, but also both powerful and flexible. There are four basic steps to using it.

	1) Define a graphics window;
	2) Define a canvas to use with that window;
	3) Create elements and assign them to the canvas.
	4) Activate elements for display.


Section: Define a graphics window

Windows are managed by the Flexible Windows extension, and we can make use of any of the features available in that extension. It is important that the window be defined using the "graphics g-window" kind (or a descendant of this kind):

	The graphics-window is a graphics g-window spawned by the main-window.

You may find it useful to use the Glimmr Simple Graphics Window extension, which will do most of the configuration of the graphics window for you, including assigning a canvas (see the following section). See the Flexible Windows extension for more on creating windows.

We also need to be sure that we open the window at some point, using the "open up the <g-window>" phrase, and that we have provided an indication of when the window should be redrawn. For most cases, doing the latter in an every turn rule will suffice:

	Every turn: follow the refresh windows rule.


Section: Define the canvas

Defining the canvas is also quite easy. We simply declare the canvas object and associate it with a g-window:

	The graphics-canvas is a g-canvas. The associated canvas of the graphics-window is the graphics-canvas.

We should also specify the dimensions of the canvas. There are two ways to do this. We can set the width and height directly:

	The canvas-width of the graphics-canvas is 600. The canvas-height of the graphics-canvas is 300.

Or we can supply a background image for the canvas. The background image will be drawn underneath (that is, before) any of the elements associated with the canvas are drawn. If we have not explicitly set the canvas dimensions as described above, the background image will itself define the dimensions of the canvas. We declare the background image like this:

	The background image of the graphics-canvas is Figure of Background.

Again, the background image will only define the canvas dimensions for us if we have not specified dimensions, or if we have specified either the width or the height at 0. If, on the other hand, we have specified dimensions in advance, the background image will be resized to fit the previously defined dimensions. It will even be stretched to fit if need be.


Section: Create elements and assign them to the canvas

Finally, we need to create some elements (called g-elements in Inform to avoid namespace issues) and assign these to our canvas.

Elements are things, in Inform's sense of the term. The player cannot see or refer to them (they are given the "privately-named" and "scenery" properties by default), and we will generally create them off-stage, but authors can declare and manipulate them just like any other thing.

Each type of element (sprite/image, primitive, bitmap, image-map, or text) needs to be declared with its own set of properties that define its behavior. This is generally a simple process; in fact, the Glimmr Canvas Editor extension allows you to arrange elements visually using a GUI interface and will output appropriate element definitions in I7 source code for you. Here is an example of definitions for a few different types of element:

	The Player Avatar is a sprite. The image-ID is Figure of Player. The origin is {10, 10}.

	The Violet Border is a rectangle primitive. The origin is {100, 100}. The endpoint is {200, 200}. The tint is g-Lavender.

	The Title Text is a bitmap-rendered string. The origin is {120, 110}. The text-string is "My Great Game: An Interactive Pile of Awesome". The font is Glimmr C&C. The tint is g-Red. The bit-size is 2.

(Please see the guide below for an explanation of the properties of elements.)

By the far the best way to define a set of g-elements is with a table. This is much briefer and is legible at a glance. (The Glimmr Canvas Editor can also output its source code in a tabular format.) Here is an example of such a table (Inform unfortunately scrambles formatting in documentation, so not all formatted examples will look right):

	Table of Room Elements
	sprite	origin	image-ID	display-layer	scaling factor
	Orthogonal_Room_Horizontal_1	{63, 89}	Figure of Orthogonal Room Horizontal	3	1.0000
	Orthogonal_Room_Round_1	{87, 112}	Figure of Orthogonal Room Round	3	1.0000
	Stair_Circular_1	{95, 121}	Figure of Stair Circular	4	0.7000
	Orthogonal_Hall_Vertical_1	{68, 131}	Figure of Orthogonal Hall Vertical	3	1.0000

Each g-element must be assigned to a canvas. If we have only one canvas, we can simply assign all elements to that canvas at a stroke (this is what the Glimmr Simple Graphics Window extension does):

	The associated canvas of a g-element is the graphics-canvas.

If we have more than one canvas, we can assign each element individually:

	The Player Avatar is a sprite. The image-ID is Figure of Player. The origin is {10, 10}. The associated canvas is the graphics-canvas.

In general, however, the best way to organize elements--especially when we have a lot of them--is to organize them using sub-kinds. We can then assign any property, including the associated canvas, using the appropriate sub-kind. For example, if we are making a map where each room has its own sprite (image element), we could do something like this:

	A room-sprite is a kind of a sprite. The associated canvas of a room-sprite is the map-canvas. The display-layer of a room-sprite is 2.

	Some room-sprites are defined by the Table of Room Elements.

...and now we can proceed to declare all of the room elements in a single table, and they will automatically be assigned to the appropriate canvas and display-layer.


Section: Activate elements for display

Each time a graphics window is redrawn, Glimmr iterates through the elements that are associated with that window's current canvas. If the element is marked for display, the element is drawn to the screen according to the parameters we have specified. If it is not marked for display, it is ignored. We set the display status to either g-active (marked for display) or g-inactive to initialize it.

All elements are marked for display by default, so if we say nothing about the display status of an element when we define it, it will display as soon as the appropriate graphics window is opened.

Very often, however, we do not want all of our elements on all of the time; a more dynamic approach is desired. For example, If we have designed a map in which each room is represented by a sprite, we want only the rooms that a player has visited to be displayed. We might begin by defining all of these as of the sub-kind room-sprite, and then mark all of them as initially not for display:

	A room-sprite is a kind of a sprite. The associated canvas of a room-sprite is the map-canvas. A room-sprite has a room called the associated room. The display status of a room-sprite is g-inactive.

Now, none of our rooms will show up when the map window is first opened. If we add a rule to the rules for the looking action, which are carried out each time we enter a room, we can cause rooms to display as we enter them (note that we have added a property here to room-sprites, the "associated room," which represents the room that the sprite depicts):

	Carry out looking:
		Repeat with current-element running through room-sprites:
			if the associated room of the current-element is the location:
				if current-element is display-inactive:
					activate the current-element.

"Activate <a g-element>" is a shortened way of writing "change the display status of <g-element> to g-active." (We can also use "mark <g-element> for display".) To mark an element inactive, we use "deactivate <g-element>" or "unmark <g-element> for display". Finally, we can test whether an element is currently active or inactive by using one of the following phrases:

	if <g-element> is display-active
	if <g-element> is display-inactive

There are many appropriate ways to manage the display of elements. The examples below will provide more ideas.

And those are the basic steps in using Glimmr Canvas-Based Drawing. The remainder of this documentation explores the element types and other options in more detail, and also explores intermediate and advanced usage of the extension. Finally, the examples illustrate basic usage as well as a number of techniques that are likely to be of interest.


Chapter: Kinds of element

Section: Sprites

In common computer-graphics usage, a sprite is an independent image that comprises part of a larger scene, most commonly a two-dimensional image such as the moving characters in a video game. This definition also holds true for GCBD. (Experienced graphics folk should note that there is no "sprite sheet," however; each entity comes from a separate image file.) Sprites are likely to be the most common element used in GCBD games, being the most flexible elements and, at small to moderate sizes, also the fastest to draw.

The image files used with sprites can be in PNG or JPEG format. (PNG is recommended, since you can use alpha channels to create transparency, allowing for irregular shapes.) To use an image file as a sprite element, we must first declare the external image file (can be in PNG or JPEG format) as a figure in Inform:

	Figure of Scroll is the file "Scroll_background.png".

The figure must then be assigned to the sprite by setting the 'image-ID' property of the sprite object to the figure name, e.g. "The image-ID of the scroll is Figure of Scroll". If you have more than a handful of sprites, it can be much faster to declare them using tables; see Chapter5 of the Inform manual.

Like other g-elements, sprites have a coordinate pair, the "origin" property, that determines where in the canvas coordinate system the upper-left corner of the sprite will be displayed. Sprites can be scaled if desired, using the "scaling factor" property. This scaling factor is calculated before the canvas is scaled to fit the window; in other words, the scaling factor property of the sprite scales it in relation to the rest of the canvas. If the asymmetrical scaling use option is set, it will be necessary to set both the "x-scaling factor" and the "y-scaling factor" of the sprite; these can, of course, be set to different values to allow the sprite to be "stretched" to an aspect ratio other than the original aspect ratio.

Note: When sprites are intended to fit together tightly on screen, as for example image tiles, we will have more flexibility if we design the tiles so that they overlap one another. In other words, where they will abut one another, we should include an extra margin of 1-3 pixels in each image. This will ensure that, if the sprites are scaled, the inaccuracies inherent in scaling do not create visible seams between sprites.


Section: Primitives

A primitive element is a simple shape that is generally intended to be used in concert with other shapes and images to build up a composition; for example, rectangles and lines. The meaning of a graphics primitive is somewhat stretched here, since the only primitive actually provided by Glulx is a simple rectangle, whereas all of the other "primitives" provided by Glimmr Canvas-Based Drawing are in fact built up out of rectangles. The most intensive of these, the line primitive, can be made up of many, many rectangles and may be quite slow to draw. The primitives included with GCBD are:

	Rectangle primitive - A simple rectangle of color.

	Box primitive - An "empty" rectangle defined by a surrounding line of variable thickness.

	Stroked rectangle primitive - A rectangle of color surrounded by a line of another color. Basically, a rectangle primitive with a box primitive drawn around it. (Not ly a "primitive", then, but the algorithm used draws this faster than using the two primitives, so it makes sense to provide it.)

	Line primitive - A straight line drawn between any two points. Horizontal and vertical lines will be the fastest to draw. Diagonal lines, especially long lines or lines approaching a 45 degree angle, can be much slower.

	Point primitive - A rectangle whose size is defined by its line-weight.

Primitives have an origin, as do all g-elements, and they also have a second coordinate pair, the "endpoint". For most primitives, the origin describes the upper left corner, while the endpoint describes the lower right corner. The line primitive, however, is freer--the two points can in fact have any relationship. Because the size of primitive elements is defined by two points on the canvas, they cannot be scaled at the element level in the same way as sprite elements can (they will, of course, scale along with the canvas).

Four primitives--the box, line, and stroked rectangle primitives--have a "line-weight" property that defines the thickness of the lines that make them up. This is the only property of primitives that responds to scaling. The response is coarse, however, because line-weight is measured in pixels. Fractional pixel measurements are not possible, and are rounded to the nearest integer. For example, if you define a line-weight of 2 pixels, the line will appear as two pixels wide when the canvas is scaled down to 75% of full size, but will appear as 1 pixel when scaled to 74% or less.

The color of a primitive is specified using the "tint" property. This is a glulx color value (see the Glulx Text Effects extension). Some primitives (the stroked rectangle) also have a "background tint" property that supplies a second color value, in this case the color of the "stroke" that surrounds the central fill of the rectangle.


Section: Bitmaps

A bitmap element draws a rectangular image composed of individual "bits" that are specified by the author in the form of a list of lists (the "bitmap-array") that defines the status of each bit. For example, a cross might be specified like so:

	{
		{ 0, 0, 1, 0, 0 },
  		{ 0, 0, 1, 0, 0 },
 		{ 1, 1, 1, 1, 1 },
 		{ 0, 0, 1, 0, 0 },
 		{ 0, 0, 1, 0, 0 }
	}.

The ones represent bits that are turned on, while the zeros represent bits that are off. Each row is given as a list of numbers with its own set of braces.

Remember that the bitmap-array is a list of lists of numbers. We supply the standard set of list braces, and then we supply one list for each row within those braces, each row's list also having its own braces, e.g. here's a simple map with 4 rows:

	{ {1, 0, 1}, {0, 1, 0}, {1, 0, 1}, {0, 1, 0} }.

It is very important that all rows have the same number of entries (i.e., columns).

When image files such as PNGs or JPEGs are scaled, pixels can be interpolated so that the image file can be presented at virtually any scaling factor. However, the pixels of a bitmap element are set directly, and so the individual pixel is the primary unit of measurement (a bitmap displayed with a bit-size of 2 will be twice as wide and twice as high as the same bitmap displayed with a bit-size of 1). Fractional pixel measurements are not possible, and the bit-size is rounded to the nearest integer. So, if you define a bit-size of 2 pixels, the bit will be 2 pixels from 75% to 100% of full size, but will appear as 1 pixel when scaled to 74% or less. The screen size of the bitmap is determined by the bit-size and the dimensions of its grid: a 10 x 10 bitmap with a scaled bit-size of 2 will occupy 20 x 20 pixels on the screen.

The "on" bit of a bitmap is rendered using the color provided by the "tint" property (defaults to black). The "off" bit can be implemented in one of two ways. If the "background tint" property is specified, the "off" bit will be rendered using the background color. If the "background tint" property is not set, the "off" bit will do nothing (anything drawn beneath the bitmap will show through the off bits). Both the tint and background tint properties are specified using the glulx color value kind of value (see the Glulx Text Effects extension).

There are two types of bitmaps:

	Monochrome bitmap - Each bit is either on or off. The "on" bit is specified using 1, the "off" bit using 0.

	Polychrome bitmap - RGB color are provided directly in the bitmap-array. RGB colors must be specified using a decimal version of the hexadecimal representation of the color (see Glulx Text Effects for more information). In a polychrome bitmap, the "off" bit is specified using a negative number (rather than 0 as with a monochrome bitmap).

Polychrome bitmaps are not as human-readable as monochrome ones (white, for example, will be listed in the bitmap-array as 16777215), but they are a bit more flexible.


Section: Image-maps

An image-map is similar to a bitmap in that the author defines a regular grid for graphical display. However, rather than each cell of the grid displaying a rectangular area of color, it draws an image from a PNG or JPEG file. This could be used for drawing tile-based maps (as in RPG games), sliding-block puzzles, graphical user interfaces, or a number of other things.

There are two types of image-maps:

	Tileset image-map - Specified using a list of lists of numbers called the "tile-array", where each row is given as a list of numbers. These numbers are keyed to an "associated tileset", basically a translation-table that converts the digits to figure names. The tileset allows for one set of images to be changed out for another with a single line; for example, a map could change from day to night simply by changing the image-map's associated tileset. Tilesets also allow image-map lists to be relatively human-readable. For example, the following might represent a long hallway with a door on the left:

		{
			{ 11, 11, 11, 11, 11, 11, 11 },
			{ 05, 00, 00, 00, 00, 00, 00 },
			{ 05, 00, 00, 00, 00, 00, 00 },
			{ 11, 11, 11, 11, 11, 11, 11 }
		}

	Direct image-map - Specified using a list of lists of figure names called the "figure-array", where each row is given as a list of numbers. When typed out, the figure-array will be more difficult to read than a tileset-array, at least when there are more than a few cells in the grid. The figure-array of a simple six-cell grid might read like this:

		{
			{ Figure of Red, Figure of Blue },
			{ Figure of Blue, Figure of Red },
			{ Figure of Red, Figure of Blue }
		}

	When adding graphic hyperlinks to individual cells, we will need to include a separate tile that keys commands to figure names (in a tileset image-map, this is handled by the tileset's translation-table).

There are times when we may not want to include any graphic in a given cell. For a tileset image-map, we can simply provide 0 as the value for that cell, while for a direct image-map, we specify Figure of Null. If we specify a "background tint" (a glulx color value) for the image-map element, a rectangular zone of this color will be drawn behind the image-map, and will "show through" any empty cells, as well as through the transparent areas of PNG graphics included in the image-map.

Remember that the tile- or figure-array is a list of lists. We supply the standard set of list braces, and then we supply one list for each row within those braces, each row's list also having its own braces, e.g. here's a simple tile-array with 4 rows:

	{ {1, 0, 1}, {0, 1, 0}, {1, 0, 1}, {0, 1, 0} }.

We must also specify the width and height of the tiles in an image-map. For a direct image-map, we set the "tile-width" and "tile-height" properties to specify these dimensions. The associated tileset should define these for tileset image-maps, but we can also override the tileset settings by specifying the "tile-width-override" and "tile-height-override" properties of the image-map element.

If we know the total width or total height we want an image-map to fit into, we can also automate the specification of these properties using these phrases:

	fit my image-map to a total width of 120 canvas units;
	fit my image-map to a total height of 150 canvas units;

Be sure to invoke these before drawing the image-map for the first time. The extension will attempt to get as close as possible to these measurements, but may not be able to match exactly; for best results, make your final measurement evenly divisible by the number of tiles in the row or column (120 canvas units divided by 10 cells = 12 units each). Use Glimmr debugging (see below) to see the final dimension selected.

Like other graphic elements, image-maps can be "hyperlinked" to respond to mouse input. However, unlike other elements, there are two ways in which they can be so linked. As with other elements, the entire rectangular area of the image-map can be given a single link, by assigning the "linked replacement-command" property and changing the "graphlink status" to g-active.

But we can also link each tile individually. This is done by making the "tiled graphlink status" of the image-map g-active. We must also specify an array of commands the same size and shape as our image array, the "linked command array" (again, this is a list of lists, this time a list of lists of texts). Luckily, this can be done automatically if we first assign a command to each tile or figure used in the image-map. With a tileset image-map, we can do this by adding a text column called "linked command" to the tileset's translation-table, e.g.:

	Table of My Tileset
	Char	Tile	Linked Command
	number	figure-name	text

For direct image-maps, which do not have a translation table, we will need to supply a new table, with figure names in one column and commands in a second column. For example:

	Table of My Image Maps Commands
	Figure	Linked Command
	figure name	text

After we have set up these correspondences between image tiles and commands, we can use one of the following phrases to build the hyperlink list:

	For tileset image-maps:
		construct graphic hyperlinks array for my image-map.

	For direct image-maps:
		construct graphic hyperlinks array for my image-map using the Table of My Image Maps Commands.

These phrases should be deployed immediately after changing the image array of an image-map, but before drawing it. This will guarantee that the hyperlink zones applied to the screen correspond to the figures shown in the image-map. (We can also write our own routines to populate the linked command array.)

Individual links can work alongside the global hyperlink for the entire image-map: wherever an individual tile is not linked--that is, where no tile is drawn to the screen, or when the linked command specified is empty ("")--the image-map's global hyperlink will be triggered. Otherwise, the individual links override the global link.

We can refer to image-maps by their internal coordinates in limited ways. The internal coordinates are expressed using curly braces like canvas coordinates, but they refer to the column and row of a cell in the map. For example, refer back to our "hallway" map:

	{ 11, 11, 11, 11, 11, 11, 11,
	  05, 00, 00, 00, 00, 00, 00,
	  05, 00, 00, 00, 00, 00, 00,
	  11, 11, 11, 11, 11, 11, 11 }

If we want to refer to the 05 on the left side of the second row, we would point to {1, 2}. We can change the image array of an image-map using internal coordinates like so:

	place tile 17 at coordinate {1, 2} of my image-map;
	place Figure of Open Door at coordinate {1, 2} of my image-map;

(The former is for tileset image-maps, the latter for direct image-maps.) Changes, of course, are not visible until the next time we update the window.

We can also convert between the internal coordinates of an image-map and the coordinates of the canvas. This allows us to find out where on the canvas a given cell of an image-map is located (the coordinate returned represents the upper left corner of the tile). To get the canvas coordinates of an internal coordinate pair, we refer to:

	the canvas coordinate equivalent of {5, 5} in the internal coordinates of my image-map;

To get the internal coordinates corresponding to a given canvas coordinate:

	the equivalent of canvas coordinates {150, 200} in the internal coordinates of my image-map;

So, for example, we can place other graphic elements (e.g. sprites) as if they were part of the image-map:

	Element display rule for Mario:
		now the origin of the Mario is the canvas coordinate equivalent of {5, 5} in the internal coordinates of my image-map;
		continue.

We can also convert between the internal coordinates of an image-map and screen coordinates. This can only be done after the element scaling rules for the image-map have been followed (otherwise the extension will not know what the conversion factor should be). We use the following phrases:

	screen coordinate equivalent of {5, 5} in the internal coordinates of my image-map;
	equivalent of screen coordinates {150, 200} in the coordinates of my image-map;

There are a few special debugging capabilities available for image-maps. To see which tiles of an image-map have individual graphic hyperlinks, declare this use option:

	Use image-map graphlink preview.

Now any image-map tile that has an individual hyperlink (see above) will be outlined in gray. The preview color can be changed like so:

	The graphlink preview color is g-Blue.

If the graphlink preview color is set to null (that is, g-PlaceNullCol), no box will be visible.

We can "dump" the data in an image-map to the screen by typing "image-map <the name of the image-map to dump>" in-game. If we are running the game in the IDE, this will print the tile-array or figure-array of the image-map to the main window. Note that if the command indicates that there is no such thing as the image-map you're trying to dump, you will need to declare your image-map to be "publically-named". (GCD automatically tries to mark all g-elements as publically-named for a debugging build, but it is possible to evade this control.) Example:

	My image-map is a tileset image-map. The origin is {10, 10}. The tile-array is {1, 2, 1, 2}.

	Section - Debugging (not for release)

	My image-map is publically-named.

Note that image-maps may run particularly slowly in the IDE. Test them in an outside interpreter to gauge true performance.


Section: Rendered strings

A rendered string is a graphic element that renders an indexed text string graphically. The string is read character by character from the element's "text string" property, and each character is drawn to the screen using either an image file or a bitmap. Note that rendered strings are not accessible to screen readers.

Rendered strings need to have a font specified in their "associated font" property in order to function. A font in this sense is a special kind of object; its major task is to link letterforms (images or bitmaps), via a lookup table, with the characters they are meant to represent. Two fonts are available with Glimmr (Glimmr Image Font and Glimmr Bitmap Font), and authors are of course free to create their own fonts (see the documentation for Glimmr Drawing Commands).

Rendered strings can be left-aligned (the default), center-aligned, or right-aligned; the alignment determines whether the origin coordinate will represent the upper left, the upper center point, or the upper right of the rendered text.

Rendered strings can manage the display of a cursor, which is drawn as a simple vertical line whose color is determined by the "tint" property of the rendered string (see below). This functionality is not likely to be useful except when paired with something like the Glimmr Canvas Text Input Fields extension, which handles mouse and keyboard input to allow for input to be accepted and understood via a graphics window. To display a cursor, provide a number 0 or greater via a rendered string's "cursor" property. This represents the position after which the cursor will be placed; e.g. with a cursor value of 0, the cursor will appear immediately before the first character in the string. To suppress display of the cursor (the default), provide a negative number for the cursor property.

As has been alluded to, there are two types of rendered string:

	Bitmap-rendered string - Each glyph is drawn as a bitmap; that is, with individual pixels or 'bits' drawn directly to the screen by Glimmr.

	Image-rendered string - Each glyph is drawn using a separate, external image file, preferably in PNG format.

A bitmap-rendered string does not require any external image files, only that a valid bitmap font (such as that provided by the Glimmr Bitmap Font extension) be specified as the "associated font". As with bitmaps, we can set the "bit-size" property to set the size of each bit, and it has the same coarseness in scaling. And as with bitmaps, the "tint" and "background tint" properties define the colors of a bitmap-rendered string, with "tint" providing the color of the letterforms. When a background tint is provided, a single rectangle is drawn encompassing the entire text area of the rendered string.

A rendered string, like a sprite, can be provided its own "scaling factor" property to adjust the size of its glyphs relative to the canvas, and it scales with an accuracy comparable to that of sprite elements. If the "background tint" property is supplied (as always, a glulx color value), a rectangle of that color will be drawn behind the rendered string. The "tint" property of an image-rendered string controls only the color of the cursor; the color of the letterforms is set in the image files.


Chapter: Settings and options for scaling

Section: Asymmetrical scaling

Up to this point, we have talked about element scaling factors as if they were unitary; that is, as if both the x and y axes are always scaled by the same amount. And this is in fact true, unless we set the asymmetrical scaling use option:

	Use asymmetrical scaling

Now we can scale elements—most usefully, sprites—asymmetrically, meaning we can stretch or squeeze the element along one axis more than along the other. This will often be less than pleasing aesthetically, but in some cases it can be quite useful.

Note that when this option is set, we can no longer use the "scaling factor" property for elements. Instead, we must now specify the "x-scaling factor" and the "y-scaling factor" separately. We must do this for all elements:

	The gas mask is a sprite. The x-scaling factor is 0.9800. The y-scaling factor is 0.5000.

Note that by default, both scaling factors are set to 1.0000, so we ly only need to set the scaling factors if we wish to scale to some other factor.


Section: Oversize scaling

By default, Glimmr Canvas-Based Drawing will only scale a canvas up to its original size, so that 1 unit in the canvas coordinate system equates to 1 pixel on the screen (i.e., a window scaling factor of 1.0000). This ensures high-quality display of image files, which generally do not look good when enlarged. However, if we do want the canvas to be scaled beyond its original size, we can set the "oversize scaling" property of the window to true:

		The graphics-window is a graphics g-window spawned by the main-window. Oversize scaling is true.

This option can, of course, be changed during play if we want to temporarily upscale our canvas for some special effect.


Chapter: Elements and mouse input

When the Glimmr Graphic Hyperlinks extension is included, graphic elements can be hyperlinked to issue a command or try a stored action when the player clicks on the element onscreen. Glimmr will perform all of the required bookkeeping automatically; we need only define the behavior we want. In most cases, this is as simple as indicating what command should be entered at the command line when a given element is clicked.

Before a window can receive mouse input, it must be made capable of doing so. We can do this by setting the g-graphlinked property for the window:

	The graphics-window is a graphics g-window. It is g-graphlinked.

Alternatively, we can simply declare the window to be of the kind "graphlink g-window," which will set this property automatically. Note that while the property can be changed during play, this is not recommended--the window must be closed and reopened for the change to take effect.

Elements must also be set to receive graphlinks. We can do this when the element is declared by setting its "graphlink status" property to active:

	Mario is a sprite. The graphlink status is g-active.

To change the graphlink status during the course of the game, we can use these phrases:

	Activate graphlink for Mario.
	Deactivate graphlink for Mario.

And we can test whether an element is accepting mouse input by asking whether or not the element is graphlinked:

	if Mario is not graphlinked:
		activate graphlink for Mario.

We now know how to ensure that our element is accepting mouse input, but we haven't yet told it to do anything in response. The easiest way to program a response is simply to provide the text of the command in the "linked replacement-command" property (see Glimmr Graphic Hyperlinks for other approaches). This indexed text is simply the command we wish to fire when the sprite is clicked. (A linked replacement-command of "" (the default) will be perceived by the player as having had no effect.) Here's a complete definition for a hyperlinked element:

	Mario is a sprite. The image-ID is Figure of Mario. The origin is {58, 45}. The display-layer is 4. The graphlink status is g-active. The linked replacement-command is "JUMP".

And now, as long as the Mario sprite appears in the window, clicking on it with our mouse will result in the command "JUMP" being entered at the command prompt. All of the types of graphic element can be hyperlinked in this way. The entire area of the element, including transparent zones, is hyperlinked, and the hyperlink zone for any element is a single rectangle. This is most notable in the case of line primitives, because the hyperlink zone will be the smallest rectangular area that can completely enclose the line; a 45-degree line will therefore have a square hyperlinked area with the line running from one corner to its opposite.

A graphlink-active element that overlaps another in the display layering system will supercede the lower element. That is, if Mario, on display-layer 4, partially overlaps a hyperlinked mushroom sprite on display-layer 3, clicking within the boundaries of the rectangle that defines Mario will cause Mario's, rather than the mushroom's, linked replacement-command to be invoked.

The background of a canvas cannot be hyperlinked. We can, however, imitate a clickable background by including a fully transparent sprite image of the same dimensions as the background and placing it on the lowest display-layer (usually display-layer 1).

A final note: if we will need to have more than 120 hyperlinked elements active at a single moment, we need to extend the number of blank rows in the Table of Graphlink Glulx Replacement Commands. Graphic Window Sprites manages this table automatically, and we should not attempt to set entries in it directly--the table is rebuilt each time the sprite drawing rules are updated, so direct edits will be disregarded in any case.


Chapter: Intermediate and advanced topics

Section: The default canvas-based drawing rule

GCBD is constructed around a single, rather complex window-drawing rule. This drawing rule is automatically used for any g-window of the kind "graphics g-window" (defined by the Flexible Windows extension). Here are the basic steps in the processing of this rule, along with what happens at each stage. For more information on details, of course, please see the code.

	1. Calculate the scaling factor for the window: Check the canvas dimensions against the window dimensions and calculate the scaling factor needed to best fit the canvas in the window. This is handled by the "carry out scaling activity".

	2. Calculate window offsets: Unless the aspect ratio of the canvas is exactly the same as the window, the scaled canvas will fall short of the window dimension along one or both axes. In this stage, we calculate the offsets necessary to center the canvas in the window. This is handled by the "offset calculation activity".

	3. Window-framing adjustment: This phase only occurs if we have specified an origin other than {0, 0} for the window. If we have, the offsets are again adjusted to account for the fact that we have changed the window framing (see the "Framing the Window" section below). This is handled by the "window-framing adjustment activity".

	4. Clear the window to prepare for drawing.

	5. Draw the canvas background: If the canvas has a background image, we draw it now. This is handled by the "drawing the canvas background activity".

	6. Draw active graphic elements: Repeat through the display-active elements assigned to the window. For each element, we will first follow the element scaling rules for the element, and then follow the element display rules. This is handled by the "drawing the active elements activity".

These steps (except for the clearing of the window) are implemented as activities, so we can add before or after rules to any of them, making the whole system very accessible to modification. Some of the topics and examples which follow illustrate ways to "hack" the process.


Section: Using canvases to manage display

At first glance, the canvas may almost look unnecessary: elements will be displayed in a graphics window, so why not assign the element directly to the window? Why do we need the canvas to mediate?

There are ly two answers. First, canvases provide an easy way to change the display content of a graphics window at a stroke. We can, for example, set up two canvases with different elements. We first show Canvas A in our graphics window, and then, when we want to change the content of the window, we simply change the associated canvas of the window to Canvas B. The next time the window refreshes, it will display our second composition. Canvases can thus be used as discrete "pages" to be shown in a graphics window. See the "Two Canvases, One Window" example.

We can also display the same canvas in two or more windows at the same time, using different display parameters. So, if we have a detailed map that would benefit from being seen both in close-up and at long-range, we could show the map at one scale in one window, and at another in the other. See the "One Canvas, Two Windows" example.


Section: Framing the canvas

In normal usage, if the canvas is too large to fit in its associated graphics window, it will be scaled down to fit. Whether the canvas needs to be down-scaled or not, it will also be centered in the window, with offsets on two to four sides (two sides if the canvas has been scaled to fit, four if it is smaller than the window.) There are many ways that we can alter this behavior.

First, we can specify our own scaling factor for the window, the "arbitrary scaling factor." If we set this value, then the canvas will not be automatically scaled to fit the window. Instead it will simply be scaled to our specification:

	The arbitrary scaling factor of the graphics-window is 1.0000.

A ratio of 1.0000 will present the canvas without scaling it, so that one pixel onscreen will be equivalent to one coordinate unit of the canvas. The canvas may or may not fit within the window as the player has sized it, but it will still be centered within the window.

Second, a graphics window has an origin coordinate, similar to that of elements. Normally, the origin is {0, 0}, which means that the upper left corner of the canvas will be displayed in the upper left corner of the window. (In practice, this placement is usually modified by an offset that centers the canvas within the window, so that the canvas is actually displayed at the origin of the window plus the x and y, or top and left, offsets.) If we change the origin of the window, then the canvas will be framed differently. Setting the window's origin to {100, 100}, for example, will place the upper left corner of the window at canvas coordinates {100, 100}. Again, this does not account for the offsets, which we may prefer to suppress. Here is one way to suppress the calculation of offsets:

	For offset calculation of the graphics-window:
		change x-offset of the graphics-window to 0;
		change y-offset of the graphics-window to 0.

This will replace the standard behavior of the window offset calculation activity in the case of the graphics-window (only--other graphics windows would not be affected) and make sure that no offsets are used in the framing of the window. Note that origins (and any coordinates, ly) can be set to negative numbers, or to numbers larger than the canvas dimensions, and they will still display. The elements may not appear in the visible part of the window, but they are there "virtually".

Third, we can center the window frame on a specific point on the canvas. This must be done after the scaling and offset calculation phases of the canvas-based drawing rule; usually it will occur during the window-framing adjustment activity (step 3 of the default canvas-based drawing rule; see above). Here's how to do it:

	Before window-framing adjustment of the graphics-window:
		center the frame of the graphics-window on canvas coordinates {100, 100};
		continue the action.

This works by changing the origin coordinates of the window. In addition to specifying a coordinate (or a variable containing a coordinate pair), we can also use the special phrase "center-point" of an element, in this case the sprite "Mario":

	 Before window-framing adjustment of the graphics-window:
		center the frame of the graphics-window on the center-point of Mario;
		continue the action.

Or, more concisely, we can simply say "center the frame of the graphics-window on Mario," which will have the same effect.

One note: if we have changed the alignment of a graphic element from left-aligned to center-aligned (see the property reference), we will need to specify this differently. Since the origin coordinate of a center-aligned element actually refers to the center-point of the element, we need to say "center the frame of the graphics-window on the origin of Mario". Centering the window on a right-aligned element will not have the desired effect.


Section: Creating new kinds of elements

The types of element defined in Glimmr Canvas-Based Drawing are, in most cases, pretty simple. They draw just one entity. But elements need not be so simple. The bitmap and rendered string elements, for example, actually draw many rectangles or images to the screen each time the element is called upon.

We can write our own custom rules for drawing elements. The Glimmr Automap extension, for example, creates a new g-element called the map-renderer. This works similarly to a tileset grid: the map-renderer iterates through grid-based map data produced by Mark Tilford's Automap extension, and for each space in the grid, it selects an appropriate tile from a tileset (the tileset is basically a table that relates each bit of map data to a given image). We use the element display rules to write behavior for new elements and element-kinds:

	An element display rule for the map-renderer (this is the map-renderer display rule):
		...
		repeat with count running from 1 to (map height * map width):
		...

Element display rules also typically set a graphic hyperlink for the element being drawn. For all of the types of elements included in the extension, the shape of the hyperlinked area is a simple rectangle. Here, for example, is the element display rule for the rectangle primitive type:

	An element display rule for a rectangle primitive (called the rectangle):
		draw a rectangle (color tint of the rectangle) in (current window) from (win-x) by (win-y) to (end-x) by (end-y);
		if the rectangle is graphlinked:
			set a graphlink in the current window identified as the rectangle from win-x by win-y to end-x by end-y as the linked replacement-command of the rectangle.

The first line draws the rectangle (see Glimmr Drawing Commands for the syntax of direct drawing commands). If the rectangle has a graphic hyperlink attached, the final line sets a rectangular hyperlink using the same coordinates as the rectangle itself occupies (see Glimmr Graphic Hyperlinks for more on hyperlinks).

There is no limit on how many entities we can draw in a single element display rule. If we wanted, for example, to have an element that displayed a sprite with a box drawn around it, we could do so:

	An element display rule for an emphasized sprite (called the highlighted item):
		draw a sprite...
		draw a box...
		if the highlighted item is graphlinked:
			set a graphlink in the current window...

We can also set multiple hyperlinks in the same element display rule. If, for example, our g-element is L-shaped, we can set two rectangular hyperlink zones (graphic hyperlink zones are always rectangular) at right angles to one another.


Section: Customizing element display

We can also use the element display rules to specialize behavior for one element, or for a class of elements, by prefacing or replacing the standard element display rule with another. For example, if we want to create a debugging command to print the name and origin coordinates of each g-element to the main window as it is drawn to our graphics window, we could do something like this:

	First element display rule for a g-element (called the item):
		say "Element [item] drawn at [origin of the item in brace notation].";
		continue.

The "continue" is important, because by default the element display rulebook will terminate once a rule completes. The continue directive allows Inform to look for subsequent rules in the rulebook. (We can also use "continue the action," Inform's standard phrasing, but the element display rules provide "continue" as a shortened form; "exit" similarly serves as a shortened form of "rule succeeds.")


Section: Elements as objects in the world model

Since elements are objects, like any other entity of Inform's "thing" kind, we can use their location in space to manage display. If we want an image (or images) to display only when the player is in a certain room, we could put the element object in that room and indicate that elements should only be depicted when the element object is in scope (in most cases, this will be when the player is also in the room). For example, this rule would run before the default canvas-based drawing rule and activate the appropriate elements for display:

	First window-drawing rule for a graphics g-window (called the present window):
		repeat with item running through g-elements assigned to the present window:
			if the item can be seen by the player:
				activate item;
			else:
				deactivate item;
		continue the action.

We could also potentially use other aspects of g-elements--particularly their relationships with one another--as means of organizing their display. I leave users to think about whether this kind of thing might have advantages for them.

If for some reason we actually want players to be able to see, pick up, and refer to some elements as if they were objects in the game world, we can declare those elements to be "publically-named":

	Mario is publically-named.

If we want to elements to be publically-named by default, we can replace the section of the extension's code that conceals them from the player, like this:

	Section - Revealing elements (in place of Section - Concealing elements in Glimmr Canvas-Based Drawing by Erik Temple)

With the body of this section left blank, the privately-named and scenery properties are not set for g-elements, and we can now treat g-elements like any other kind of object: the player will be now able to see and interact with them. Note that g-elements, just like other objects, will be created "off-stage" unless we actively place them in specific rooms.


Chapter: Debugging

Like all Glimmr extensions, Glimmr Canvas-Based Drawing can utilize the Glimmr debugging log. To use the log, enable this use option:

	Use Glimmr debugging.

Now Glimmr functions will announce themselves, as well as the particular extension that generated them (e.g., Glimmr Canvas-Based Drawing, Glimmr Drawing Commands, etc.) in the main window as they fire. Be warned that, under normal usage, Glimmr generates a lot of debugging information, and can quite thoroughly gum up a game's output. There are a few things we can do to mitigate this:

	1) The Glimmr Debugging Console extension can be included to segregate Glimmr logging output into its own window.

	2) We can set up our own alternate text-buffer window and direct log output there by setting the "console output window" variable, e.g.:

		The console output window is my-text-window [a text-buffer g-window].

	3) We can also send console log output to the transcript, while not printing it anywhere else. To do this, we include this code in our story file:

		To say >console:
			say echo stream of main-window.

		To say <:
			say stream of main-window;
			say run paragraph on.

	This will only work when a transcript is actually being written. To ensure that we do not forget to initiate one, we can include this:

		When play begins:
			try switching the story transcript on.


Section: Console log comments

When we are sending the debugging info somewhere other than the main window, it can be useful to add notes to the console log to help us interpret it later. We can do this by typing "> " and any text we want to add to the log at the command prompt, e.g.:

	> Going west from the Kitchen


Section: Additional phrases for triggering debugging from source text

It can often be useful to control debugging commands from source text, rather than from the command line. For example, we may want to debug the startup sequence, which occurs before the command prompt appears, and thus before we can enter any debugging commands. Glimmr provides the following phrases for controlling the ACTIONS, RULES, RULES ALL, and GLKLIST commands:

	ACTIONS
		activate actions tracing
		suspend actions tracing

	RULES
		activate rules tracing
		suspend rules tracing
		if rules tracing is active

	RULES ALL
		activate intensive rules tracing
		suspend rules tracing
		if intensive rules tracing is active

	GLKLIST
		show glk list [the GLKLIST command]

The Extended Debugging extension provides further phrases, as well as other useful features. (Note: Extended Debugging is not part of Glimmr, but works well with it.) See the template layer (Appendix B of Writing with Inform: http://inform7.com/sources/src/i6template/Woven/index.html ) for more on these debugging commands.


Chapter: Troubleshooting

Runtime error "cannot divide by zero" (or similar):

	The canvas dimensions have probably not been defined. Be sure you define the canvas before the window-drawing rules are run.

Inform doesn't recognize the "image-ID" property, or a table in which it is used:

	Inform requires a figure to be defined in the source before it can be referred to. Be sure that your figures are defined in the source *above* the text in which you are attempting to define the associated sprites.

When I click on a hyperlinked element, the game prints a blank line at the command prompt, and then prints my replacement command:

	This is how Glk is designed; the line space is unavoidable on most interpreters. A new version of the Glk standard will change this, and Glimmr will be updated when this happens. As of this writing, all major Glulx interpreters will respond in this way except for Zoom, which does not insert the extra line. If the line break bothers you, you may want to recommend Zoom to your OS X and Linux players.

Performance issues:

	Be sure that your images are not too large. Images should be sized no larger than you want them to appear onscreen.

	Note that games played within the Inform IDE will be slower than games played in an external interpreter. The Mac IDE may sometimes show minor scaling artifacts that are not seen with external interpreters. Try pressing the Release button to produce a blorb file, and play that file in the latest version of a fast, modern interpreter.

	If you are using Glimmr debugging, the debugging statements in the routines will slow things down. Turn off Glimmr debugging whenever possible.


Testing:

Test your game in all the interpreters you can get your hands on, and recommend the best interpreter(s) to your players. At the time of this writing, Gargoyle and Zoom are both well optimized for graphics and other multimedia effects. Spatterlight on OS X is not, and also has a poor UI for mouse input. Windows Glulxe and Windows Git have a low-resolution timer, and neither is quite as fast with graphic display as Gargoyle, but they should be adequate for most purposes.


Chapter: Producing images for use with Glimmr

Full instructions for producing images are well beyond the scope of this documentation, but a few notes and links will be useful. For almost all purposes, you will want to produce your images in PNG (Portable Networks Graphics) format. PNG graphics (file extension .png) can contain an "alpha channel" that defines transparent areas of the image, allowing for shapes that are not rectangular. They can be produced with Photoshop, of course, but also with many other programs, including the free, cross-platform GIMP software (https://www.gimp.org/). Here are some sites that might be of use to you if you are unfamiliar with PNG graphics (Inform tends to mangle URL spacing in documentation, so you may need to edit these by hand or open the extension itself and copy the links from there into your browser):

	https://en.wikipedia.org/wiki/Portable_Network_Graphics
	http://www.libpng.org/pub/png/pngintro.html
	https://www.axialis.com/tutorials/tutorial-misc001.html (Photoshop tutorial)
	http://www.libpng.org/pub/png/book/chapter04.html#png.ch04.div.5 (GIMP tutorial)

Avoid making your images too large. Images should be sized no larger than you want them to appear onscreen.


Chapter: A reference to elements and their properties

Here is a list of properties common to all graphic elements (g-elements). Separate sections for each of the element types follows. Properties which the extension uses internally and should not be referred to by the author are also included. These are marked with a double asterisk (**).

	associated canvas - the g-canvas with which the element is currently associated. The element will be considered for drawing to the screen when this canvas is drawn.

	display status - indicates whether or not the element is marked for display (i.e., whether or not it will be drawn to the associated canvas of the element when the window displaying that canvas is updated). Can be g-active (marked for display) or g-inactive. Default value: g-active

	origin - the x and y coordinates where the element's drawing will be commenced. These coordinates refer to the coordinate system of the canvas and indicate where the upper-left corner of the element will be drawn (usually; see alignment properties below). The origin coordinates are expressed as a list of exactly two numbers in brace notation. Negative numbers are legal. Default value: {0, 0}

	display-layer - a number that defines the "layer" the element will be drawn to, comparable to the z-index in CSS/HTML. Elements with a display-layer of 1 are drawn first, then those with display-layer 2, etc. Lower numbers are thus lower in the stack order. Default value: 1

	scaling factor - a ratio for scaling the element in relation to its associated canvas. A decimal quantity with four-digit precision, e.g. 0.5000 would scale a sprite image to 50% of its original size (different element types are differentially affected by the scale property; see the discussion of element types above for more information). Actual size is expressed as 1.0000; ratios greater than 1.0000 are allowed (e.g., 2.0000 is equivalent to 200% of actual size). An element's actual displayed size is also subject to adjustment by the window-scaling factor. Default value: 1.0000

	x-scaling factor - only available when the asymmetrical scaling use option is in force (the scaling factor property is disabled by this same use option). Like the scaling factor property, a decimal quantity with four-digit precision. Scales only the x-axis of an element; most useful for sprites. Default value: 1.0000

	y-scaling factor - only available when the asymmetrical scaling use option is in force (the scaling factor property is disabled by this same use option). Like the scaling factor property, a decimal quantity with four-digit precision. Scales only the y-axis of an element; most useful for sprites. Default value: 1.0000

	alignment - defines how an element is drawn in relation to its origin property. When left-aligned, the origin will describe the upper left corner of the element. When center-aligned, the origin will describe the center of the x and y axes of the element. When right-aligned, the origin will describe the lower right corner. It is probably best to declare an element left-aligned whenever possible. Default value: left-aligned

	graphlink status - indicates whether or not the element is accepting mouse input. Can be g-active (accepting input) or g-inactive. Default value: g-inactive

	linked replacement-command - an indexed text containing a command that should be entered on the player's behalf when an element has received a mouse-click. The command will be automatically printed to the command line and parsed after clicking. Default value: "" (empty string, will have no visible effect)

	win-x** - represents the x-coordinate of the element's origin AFTER it has been scaled according to the window's scaling factor; i.e., it refers to the position of the element in the window's coordinate system, not the canvas's. Default value: 0

	win-y** - represents the y-coordinate of the element's origin AFTER it has been scaled according to the window's scaling factor; i.e., it refers to the position of the element in the window's coordinate system, not the canvas's. Default value: 0


Section: Summary of sprite properties

This section presents a list of the properties associated with sprites, including those that we should not try to set directly. Properties of the latter sort--those which the extension uses internally and should not be referred to by the author--are marked with a double asterisk (**). All sprites also inherit the properties common to the g-element kind (see above for those properties).

	image-ID: the figure name of the sprite's associated image file. The default value is null, which can be tested against the special value "Figure of Null".

	sprite-x**: A number that refers to the width of the sprite image after scaling calculations--the final size of the sprite as displayed on screen. Default value: 0

	sprite-y**: A number that refers to the height of the sprite image after scaling calculations--the final size of the sprite as displayed on screen. Default value: 0


Section: Summary of the primitive base class's properties

This section presents a list of the properties associated with all primitive elements, including rectangle, box, stroked rectangle, line, and point primitives. Properties which the extension uses internally, and should not be referred to by the author, are marked with a double asterisk (**). All primitives also inherit the properties common to the g-element kind (see above for those properties).

	origin - the x and y coordinates where the element's drawing will be completed. These coordinates refer to the coordinate system of the canvas and usually indicate where the lower right corner of the element will be drawn. In the case of line primitives, the origin and endpoint are more or less interchangeable, neither has priority. The endpoint coordinates are expressed as a list of exactly two numbers in brace notation. Default value: {0, 0}

	tint - a glulx color value (see the Glulx Text Effects extension) that defines the color of the primitive; in the case of the stroked rectangle primitive, this represents the color of the fill of the rectangle. Default value: g-White

	end-x** - represents the x-coordinate of the primitive's origin AFTER it has been scaled according to the window's scaling factor; i.e., it refers to the position of the endpoint in the window's coordinate system, not the canvas's. Default value: 0

	end-y** - represents the y-coordinate of the primitive's origin AFTER it has been scaled according to the window's scaling factor; i.e., it refers to the position of the endpoint in the window's coordinate system, not the canvas's. Default value: 0


Section: Summary of the properties of the box, stroked rectangle, line, and point primitives

This section presents a list of the properties associated with the box, stroked rectangle, line, and point primitives; i.e., those primitives that have a line of variable thickness. Properties which the extension uses internally, and should not be referred to by the author, are marked with a double asterisk (**). These primitives also inherit the properties common to the primitive kind, and to the g-element kind (see above for those properties).

	line-weight - the width, in pixels, of either (1) the outline of the box or stroked rectangle primitive; (2) the line of the line primitive; or (3) the square of the point primitive. Default value: 1

	stroke** - represents the line-weight of the primitive as scaled into the window's coordinate system (i.e., the final thickness of the line as displayed on the screen, in pixels. Default value: 1


Section: Summary of the properties of the stroked rectangle primitive

This section presents a list of the properties associated with the stroked rectangle primitive. Since the stroked rectangle is the only primitive that can incorporate two colors, we use the background tint property to supply the second color (the color of the line). Stroked rectangle primitives also inherit the properties common to the primitive and the g-element kinds (see above for those properties).

	background tint - a glulx color value (see the Glulx Text Effects extension) that defines the color of the outline surrounding the central rectangle of the stroked rectangle primitive; i.e., the color of the "stroke" as opposed to the "fill." Default value: g-White


Section: Summary of the properties of bitmaps

This section presents a list of the properties associated with both monochrome and polychrome bitmaps. Properties which the extension uses internally, and should not be referred to by the author, are marked with a double asterisk (**). All bitmap elements also inherit the properties common to the g-element kind (see above for those properties).

	bitmap-array - a list of lists of numbers, written in brace notation, that defines the on and off bits of a bitmap element. Monochrome bitmaps can include only 0 ("off") or 1 ("on"). Polychrome bitmaps may include any number from 0 to 16777215, defining a decimally packed 16-bit RGB number; in a polychrome bitmap, the "off" bit can be represented by any negative number. Default value: {}

	tint - a glulx color value (see the Glulx Text Effects extension) that defines the color of the "on" bit of a bitmap. (The "on" bit is given by a 1 in the bitmap-array for monochrome bitmaps; it has no effect for polychrome bitmaps.) Default value: g-White

	background tint - a glulx color value (see the Glulx Text Effects extension) that defines the color of the background of the bitmap. This color will appear wherever an "off" bit has been specified. (The "off" bit is given by 0 for monochrome bitmaps, and by any negative number for polychrome bitmaps.) Default value: g-PlaceNullCol (the null color value, meaning no background will be drawn)

	bit-size - the size, relative to the canvas, of each bit in the bitmap. A bit-size of 2 will be two units wide and two units high. The bit-size is subject to scaling both by the scaling factor (or x-scaling factor) of the bitmap element, and by the window scaling factor. Default value: 1

	dot-size** - the final display size of each bit in the bitmap, measured in pixels as output on-screen. Default value: 1


Section: Summary of the properties of image-maps

This section presents a list of the properties associated with both tileset and direct image-maps. Properties which the extension uses internally, and should not be referred to by the author, are marked with a double asterisk (**). All bitmap elements also inherit the properties common to the g-element kind (see above for those properties).

	background tint - a glulx color value (see the Glulx Text Effects extension) that defines the color of the background of the image-map. This color will appear wherever a tile is absent, and will also "show through" transparent PNG images. Default value: g-PlaceNullCol (the null color value, meaning no background will be drawn)

	tiled graphlink status - Whether or not some or all of an image-map's tiles have individual graphic hyperlinks (graphlinks). Can be g-active (accepting input) or g-inactive. Default value: g-inactive

	linked command array - A list of lists of texts describing the default commands associated with each of the cells in the image-map. Will not be consulted unless tiled graphlink status is g-active. The length and shape of the list should be the same as the length of the image-map's tile-array or figure-array. Default value: {}

	scaled tile-width** - The width of each tile in screen coordinates, as determined after scaling the canvas and the image-map. Default value: 0

	scaled tile-height** - The height of each tile in screen coordinates, as determined after scaling the canvas and the image-map. Default value: 0


Section: Summary of the properties of tileset image-maps

This section lists the properties of the tileset image-map that are not shared by other image-map kinds. Tileset image-maps also inherit the properties common to the image-map and the g-element kinds (see above for those properties).

	tile-array - A list of lists of numbers, written in brace notation, that defines, in the form of a matrix, the individual images to be used in the image-map. The numbers refer to the translation-table of the associated tileset object. Default value: {}

	associated tileset - The name of a tileset object. This tileset will be used to render the tile-array. Default value: null tileset

	tile-width-override - A number that will be used to determine the width (before scaling) of the tiles in the image-map. Overrides any value provided by the associated tileset object. Default value: 0

	tile-height-override - A number that will be used to determine the height (before scaling) of the tiles in the image-map. Overrides any value provided by the associated tileset object. Default value: 0


Section: Summary of the properties of direct image-maps

This section lists the properties of the direct image-map that are not shared by other image-map kinds. Direct image-maps also inherit the properties common to the image-map and the g-element kinds (see above for those properties).

	figure-array - A list of lists of figure names, written in brace notation, that defines, in the form of a matrix, the individual images to be used in the image-map. Default value: {}

	tile-width - A number defining the width (before scaling) of each tile in the image-map. Default value: 1

	tile-height - A number defining the height (before scaling) of each tile in the image-map. Default value: 1


Section: Summary of the properties of rendered strings

This section presents a list of the properties associated with rendered strings. Properties which the extension uses internally, and should not be referred to by the author, are marked with a double asterisk (**). All rendered strings also inherit the properties common to the g-element kind (see above for those properties).

Note that the alignment property functions differently for rendered strings than for other g-elements. For center-aligned and right-aligned rendered strings, the origin is always located along the upper edge of the element; not at the center or the bottom edge.

	associated font - a font object, which is the font that should be used to draw the rendered text element. A bitmap-rendered text must use a bitmap font, and an image-rendered font an image font.

	text-string - an indexed text containing the string to be rendered by the element. Default value: "" (empty string, no output)

	tint - a glulx color value (see the Glulx Text Effects extension) that defines the color of the letterforms and cursor of a bitmap-rendered string; defines only the cursor color of an image-rendered string. Default value: g-White

	background tint - a glulx color value (see the Glulx Text Effects extension) that defines the color of the background of the rendered string element. Will be drawn as a single block of color behind the letterforms. Default value: g-PlaceNullCol (null, no background will appear)

	text-animation delay - a number defining the number of milliseconds that will be delayed after the drawing of each character of the text-string. Default value: 0

	cursor - a number defining the position of the cursor in the display of the rendered string. The cursor is only displayed when this property is 0 or higher. The cursor wil placed immediately after the string position; i.e., when cursor is 1, the cursor will be positioned immediately after the first character in the string. Default value: -99 (no cursor displayed)


Section: Summary of the properties of bitmap-rendered strings

This section presents a list of the properties associated with bitmap-rendered strings. These are more or less equivalent to the properties of bitmap elements. Properties which the extension uses internally, and should not be referred to by the author, are marked with a double asterisk (**). All bitmap-rendered strings also inherit the properties common to the g-element and rendered string kinds (see above for those properties).

	bit-size - the size, relative to the canvas, of each bit in the bitmaps of the associated font's letterforms. For example, a bit-size of 2 will be two units wide and two units high. The bit-size is subject to scaling both by the scaling factor (or x-scaling factor) of the rendered-string, and by the window scaling factor. Default value: 1

	dot-size** - the final display size of each bit in the bitmaps of the associated font's letterforms, measured in pixels as output on-screen. Default value: 1


Section: Summary of the properties of image-rendered strings

This section presents a list of the properties associated with image-rendered strings. Properties which the extension uses internally, and should not be referred to by the author, are marked with a double asterisk (**). All image-rendered strings also inherit the properties common to the g-element and rendered string kinds (see above for those properties).

	calculated scaling factor** - a number (decimal with four-digit precision) that represents the scaling factor of both the window and the rendered string element.


Chapter: Contact info

If you have comments about the extension, please feel free to contact me directly at ek.temple@gmail.com.

Please report bugs on the Google Code project page, at https://code.google.com/archive/p/glimmr-i7x/issues.

For questions about Glimmr, please consider posting to either the rec.arts.int-fiction newsgroup or at the intfiction forum (https://www.intfiction.org/forum/). This allows questions to be public, where the answers can also benefit others. If you prefer not to use either of these forums, please contact me directly via email (ek.temple@gmail.com).


Chapter: Change Log

Version 2: Updated for 6F95 (thanks to Harold Gates!). Now uses no deprecated features.

Version 1: Initial release.


Chapter: Examples

A number of examples are included here, showcasing just some of the capabilities of Glimmr. Many of these require external resources (image files), which can be downloaded from https://code.google.com/archive/p/glimmr-i7x/downloads. Compiled versions of the examples can also be downloaded, if you prefer to see the final result without compiling yourself.


Example: * Simple Buttons - In this example, we show how to create a simple set of buttons that the player can press to issue commands. (We use the most important meta-commands: undo, save, restore, and transcript.) The example requires the Glimmr Image Font extension, and you will need to copy the images associated with that extension to your project's Materials folder before building this example. The example also requires Glimmr Graphic Hyperlinks, which enables the buttons to accept mouse input.

We make each button out of two g-elements: a stroked rectangle primitive creates the button's outline and color, while an image-rendered string provides the text of the button. This is convenient, since it doesn't require us to create our own images for each button. (Though using a single image for each button is in fact the most resource-efficient method.)

Before we get to the buttons, we need to set up the window and canvas. For an example like this, Glimmr Simple Graphics Window would be an even easier way to set things up, but it's better if we show everything here.

	*: "Simple Buttons"

	Include Glimmr Canvas-Based Drawing by Erik Temple.
	Include Glimmr Graphic Hyperlinks by Erik Temple.
	Include Glimmr Image Font by Erik Temple.

	Hello is a room.

	The graphics-window is a graphlink g-window spawned by the main-window. The position is g-placebelow. The scale method is g-fixed-size. The measurement is 35. The back-color is g-White.

	The back-color of the main-window is g-White.

	The graphics-canvas is a g-canvas. The canvas-width is 248. The canvas-height is 35.
	The associated canvas of the graphics-window is the graphics-canvas.
	The associated canvas of a g-element is the graphics-canvas.

	When play begins:
		open up the graphics-window.

	[After printing the banner text:
	say "[line break]This is one of two very similar examples for the Glimmr Canvas-Based Drawing extension. It demonstrates a simple set of UI buttons. The buttons are not sprites. In other words, they are created without the need to make external PNG or JPEG images. Instead, we use Glimmr's functions for easily drawing rectangles and more complex elements. An image-rendered string provides the button's text, and this is superimposed on a stroked rectangle primitive that creates the body of the button. A simple animation allows the button to change color briefly when pressed, to provide visual feedback.[paragraph break]".]


	Table of Common Color Values (continued)
	glulx color value	assigned number
	g-LightGray	15066597
	g-MidGray	12829635


Now we create the buttons. We begin by setting up most of properties using subclasses of the stroked rectangle primitive and image-based string kinds--these are the "button" and "label" kinds. The buttons are primed to accept mouse input by making them graphlink-active. The labels merely float over the button; it is the latter which does all the work.

Note that the image-based font is rather large, and we need to scale it down to a quarter of its actual size. Also note that the labels are center-aligned. This isn't necessary, but it does mean that if we change the text of the label slightly, we may be able to avoid changing the origin coordinate, since it will still attempt to center itself over the button background. Finally, we use display-layers to keep the label text, on layer 2, above the button background, on layer 1 (the default layer).

	*: A button is a kind of stroked rectangle primitive. The associated canvas of a button is the graphics-canvas. The tint of a button is g-LightGray. The background tint of a button is g-MidGray. The graphlink status of a button is g-active.

	A label is a kind of image-rendered string. The associated canvas of a label is the graphics-canvas. The scaling factor of a label is 0.2500. The display-layer of a label is 2. The alignment of a label is center-aligned.

	A button has a label called the associated label.

	Some labels are defined by the Table of Button Labels.

	Table of Button Labels
	label	origin	text-string
	Label_1	{30, 10}	"Undo"
	Label_2	{81, 10}	"Save"
	Label_3	{138, 10}	"Restore"
	Label_4	{204, 10}	"Transcript"


	Some buttons are defined by the Table of Glimmr Buttons.

	Table of Glimmr Buttons
	button	origin	endpoint	associated label	linked replacement-command
	Button_1	{10, 7}	{52, 28}	Label_1	"UNDO"
	Button_2	{61, 7}	{103, 28}	Label_2	"SAVE"
	Button_3	{111, 7}	{165, 28}	Label_3	"RESTORE"
	Button_4	{173, 7}	{238, 28}	Label_4	"TRANSCRIPT"


We can include a little optional code to change the color of the button momentarily when it is pressed, then reverting back to the original color. We do this using Glulx's -time capability: when the button is pressed, we change the button's color, and start a short timer (85 milliseconds). When the timer runs out, we stop the timer and change the button back to the original color. Note that the window must be redrawn after each of these to show the state change to the player.

	*: To revert the/-- button/-- after (T - a number) millisecond/milliseconds:
		(- glk_request_timer_events({T});  -)

	To stop the/-- timer:
		(- glk_request_timer_events(0); -)

	First graphlink processing rule for a button (called the depressed):
		change the tint of the depressed to g-MidGray;
		follow the window-drawing rules for the graphics-window;
		revert the button after 85 milliseconds.

	A glulx timed activity rule (this is the redraw button from timer rule):
		stop the timer;
		now the tint of the current graphlink is g-LightGray;
		follow the window-drawing rules for the graphics-window.

This last part is even more optional, but it will ensure that the button acts correctly after UNDO. We set the timer to revert immediately after undoing the state of the last turn, to be sure that the buttons end in their resting state. To act after undoing, we either have to directly hack the template layer, or use an extension such as Undo Output Control, which is how we handle it here.

	*: Include Undo Output Control by Erik Temple.

	After undoing an action:
		revert the button after 0 milliseconds.


Example: * Simpler Buttons - This example is a simple refinement of the previous example (Simple Buttons). In Simple Buttons, we had to supply what ly was redundant information: the text of the label was the same as the linked replacement-command of its button, while the origin coordinate of the label is easily deducible from the placement and size of the button outline (the label is centered on the button). This example lets us define the labels minimally and auto-generate their text-strings and origin coordinates from their associated buttons. (One could go even farther with this approach, ly.)

Simpler Buttons also uses a bitmap font for variety's sake. Note that if you make the window too narrow--unplayably narrow, ly--the labels will not fit within the button outlines. This is because bitmaps can't be scaled below 1 pixel per bit, while the canvas itself is scaled to much less than this. This is something to be wary of whenever you are using bitmaps.

The example starts out in essentially the same way as the previous:

	*: "Simpler Buttons"

	Include Glimmr Canvas-Based Drawing by Erik Temple.
	Include Glimmr Graphic Hyperlinks by Erik Temple.
	Include Glimmr Bitmap Font by Erik Temple.

	The graphics-window is a graphlink g-window spawned by the main-window. The position is g-placebelow. The scale method is g-fixed-size. The measurement is 35. The back-color is g-White.

	The graphics-canvas is a g-canvas. The canvas-width is 248. The canvas-height is 35.
	The associated canvas of the graphics-window is the graphics-canvas.
	The associated canvas of a g-element is the graphics-canvas.

	The back-color of the main-window is g-White.

	Hello is a room.


	Table of Common Color Values (continued)
	glulx color value	assigned number
	g-LightGray	15066597
	g-MidGray	12829635


Now we get to the new stuff. The short loop code that occurs before we open the graphics window sets origin coordinates of the labels by finding the center point of each button, then using that coordinate for the label's origin. We manually change the vertical coordinate for better fit (because the origin of the label is the top line rather than the center, we need to move it up, otherwise it will flow in from the center of the button down, filling up only the lower half of the button background).

The text-string is replaced with the linked replacement-command of the button. Note that Inform is very picky about the conversion of text (the linked replacement-command of the button) into indexed text (the text-string of the label). We use a replacement routine to handle this task.

Compare the Table of Button Labels here with the one for Simple Buttons--we've been able to reduce the work of label creation to simple naming. (We could avoid even this if we wanted to use Jesse McGrew's Dynamic Objects extension to actually create new label objects as needed to fit our buttons...)

	*: When play begins:
		repeat with item running through buttons:
			let the current-label be the associated label of item;
			now the origin of the current-label is the center-point of item;
			now entry 2 of the origin of the current-label is 12;
			replace the text "0" in text-string of the current-label with the linked replacement-command of item;
		open up the graphics-window.

	A button is a kind of stroked rectangle primitive. The associated canvas of a button is the graphics-canvas. The tint of a button is g-LightGray. The background tint of a button is g-MidGray. The graphlink status of a button is g-active.

	A label is a kind of bitmap-rendered string. The associated canvas of a label is the graphics-canvas. The scaling factor of a label is 0.2500. The display-layer of a label is 2. The alignment of a label is center-aligned. The tint is g-Dark-Gray. The text-string is "0".

	A button has a label called the associated label.

	Label_1, Label_2, Label_3, and Label_4 are labels.

	Some buttons are defined by the Table of Glimmr Buttons.

	Table of Glimmr Buttons
	button	origin	endpoint	associated label	linked replacement-command
	Button_1	{10, 7}	{52, 28}	Label_1	"Undo"
	Button_2	{61, 7}	{103, 28}	Label_2	"Save"
	Button_3	{111, 7}	{165, 28}	Label_3	"Restore"
	Button_4	{173, 7}	{238, 28}	Label_4	"Transcript"

	[After printing the banner text:
		say "[line break]This is one of two very similar examples for the Glimmr Canvas-Based Drawing extension. It demonstrates a simple set of UI buttons. The buttons are not sprites. In other words, they are created without the need to make an external PNG or JPEG image for each one. Instead, we use Glimmr's functions for easily drawing rectangles and more complex elements. A bit-rendered string provides the button's text, and this is superimposed on a stroked rectangle primitive that creates the body of the button. No image files at all are used. A simple animation allows the button to change color briefly when pressed, to provide visual feedback.[paragraph break]".]

And the (optional) button animations (see the previous example for explanation):

	*: To revert the/-- button/-- after (T - a number) millisecond/milliseconds:
		(- glk_request_timer_events({T});  -)

	To stop the/-- timer:
		(- glk_request_timer_events(0); -)

	A glulx timed activity rule (this is the redraw button from timer rule):
		stop the timer;
		now the tint of the current graphlink is g-LightGray;
		follow the window-drawing rules for the graphics-window.

	First graphlink processing rule for a button (called the depressed):
		change the tint of the depressed to g-MidGray;
		follow the window-drawing rules for the graphics-window;
		revert the button after 85 milliseconds.

	Include Undo Output Control by Erik Temple.

	After undoing an action:
		revert the button after 0 milliseconds.


Example: *** Basic Floorplan - Given IF's overwhelming focus on movement through physical space, one of the most likely uses for graphics is maps. At the same time, it is not often that we want to include a static map in the game, since getting the complete map all at once will usually spoil things for the player.

This example shows how to construct a floorplan for a multilevel space, in a dynamic way: The map only shows rooms that the player has visited. In other words, the map reveals itself as the player moves through the game.

Glimmr includes a set of images that can be used freely for constructing maps of this sort, and this example uses that set. The image files are rather generic, by design, to be useful in the widest number of situations. The predominant colors are white and dark gray, but because each tile is essentially monochromatic, the coloring is relatively easy to change using programs like Photoshop or GIMP (the latter is free).

The easiest way to use this set of map images is with the Glimmr Canvas Editor extension, which allows you to create a Glulx game file that contains a graphics editor. Place and scale the images as you like them, and the editor will output I7 source code for you. The source code for this example was generated using Glimmr Canvas Editor. (It's been cleaned up slightly, and the Scenario and Associated Rooms with Images sections were added, but otherwise it is fairly representative of the code produced by that resource. The canvas editor is highly recommended for most complex compositions.)

On to the code for the example. We begin by including the extension and defining the geography for the map. We have a couple of sprite elements that are asymmetrically scaled, so we use the asymmetrical scaling option. This will require us to provide separate x and y scaling factors for any object that is not scaled at a ratio of 1.0000.

The scenario definition is followed by the list of figures. The list of figures should be one of the first things we lay out in our story file, because Inform is very picky about them--they must be defined before they can be mentioned in any other context.


	*: "Basic Floorplan"

	Include Glimmr Canvas-Based Drawing by Erik Temple.
	Include Glimmr Bitmap Font by Erik Temple.

	Use asymmetrical scaling.

	Chapter - Scenario

	Entrance Chamber is a room. "A stair spirals upward, and there is a doorway in the south wall."

	The heavy door is an open door. "[if the heavy door is open]The heavy wooden door is open[else]The heavy wooden door is closed[end if].". It is south of Entrance Chamber and north of Hall.

	Guard Room is east of Hall. "An exit leads west."

	Up from Entrance Chamber is the Shaft. The description of the Shaft is "The stairs continue up and down, and there is an opening to the south."

	Watch Room is south of the Shaft. "You can return to the north."

	Up from Shaft is the Upper Chamber. The description of the Upper Chamber is "The stair spirals downward, and a curving passage leads south."

	Flanking Chamber is south of Upper Chamber. "The passage leads back to the west."

	North of Flanking Chamber is nowhere. West of Flanking Chamber is Upper Chamber. East of Upper Chamber is nowhere.

	[After printing the banner text:
		say "[paragraph break]This is an example of a dynamic map built using Glimmr Canvas-Based Drawing. It provides a floorplan that reveals itself as the player moves through it. Each room is revealed as the player enters it, and each floor is pictured in a separate pane. A spare icon acts as an avatar for the player, showing the present location in the developing map.[paragraph break]This example was built using the "Basic Floorplan Toolkit" distributed with Glimmr. The Basic Floorplan Toolkit is an instance of the Glimmr Canvas Editor, a GUI graphics editor that allows you to build a composition graphically and output I7 source code describing it. Basic Floorplan Toolkit includes a set of images designed for use in creating simple floorplans in the style of those used by Emily Short in her pdf map for [i]Bronze[/i] (chosen as a model because of the manifest popularity of the style).[paragraph break]".]


	Chapter - Figure Definitions

	Figure of Orthogonal Room Square is the file "Orthogonal Room Square.png".
	Figure of Orthogonal Room Horizontal is the file "Orthogonal Room Horizontal.png".
	Figure of Orthogonal Room Vertical is the file "Orthogonal Room Vertical.png".
	Figure of Orthogonal Room Round is the file "Orthogonal Room Round.png".
	Figure of Orthogonal Room Hexagonal is the file "Orthogonal Room Hexagonal.png".
	Figure of Orthogonal Hall Horizontal is the file "Orthogonal Hall Horizontal.png".
	Figure of Orthogonal Hall Vertical is the file "Orthogonal Hall Vertical.png".
	Figure of Orthogonal Hall NW to SE is the file "Orthogonal Hall NW to SE.png".
	Figure of Orthogonal Hall SW to NE is the file "Orthogonal Hall SW to NE.png".
	Figure of Orthogonal Long Hall NW to SE is the file "Orthogonal Long Hall NW to SE.png".
	Figure of Orthogonal Long Hall SW to NE is the file "Orthogonal Long Hall SW to NE.png".
	Figure of Orthogonal Curve N to E is the file "Orthogonal Curve N to E.png".
	Figure of Orthogonal Curve S to E is the file "Orthogonal Curve S to E.png".
	Figure of Orthogonal Curve W to N is the file "Orthogonal Curve W to N.png".
	Figure of Orthogonal Curve W to S is the file "Orthogonal Curve W to S.png".
	Figure of Rough Room Square 01 is the file "Rough Room Square 01.png".
	Figure of Rough Room Square 02 is the file "Rough Room Square 02.png".
	Figure of Rough Room Horizontal is the file "Rough Room Horizontal.png".
	Figure of Rough Room Vertical is the file "Rough Room Vertical.png".
	Figure of Rough Room Circular is the file "Rough Room Circular.png".
	Figure of Rough Hall Horizontal is the file "Rough Hall Horizontal.png".
	Figure of Rough Hall Vertical is the file "Rough Hall Vertical.png".
	Figure of Rough Hall NW to SE is the file "Rough Hall NW to SE.png".
	Figure of Rough Hall SW to NE is the file "Rough Hall SW to NE.png".
	Figure of Rough Long Hall Horizontal is the file "Rough Long Hall Horizontal.png".
	Figure of Rough Long Hall Vertical is the file "Rough Long Hall Vertical.png".
	Figure of Rough Long Hall NW to SE is the file "Rough Long Hall NW to SE.png".
	Figure of Rough Long Hall SW to NE is the file "Rough Long Hall SW to NE.png".
	Figure of Rough Curve N to E is the file "Rough Curve N to E.png".
	Figure of Rough Curve S to E is the file "Rough Curve S to E.png".
	Figure of Rough Curve W to N is the file "Rough Curve W to N.png".
	Figure of Rough Curve W to S is the file "Rough Curve W to S.png".
	Figure of Door Horizontal is the file "Door Horizontal.png".
	Figure of Door NE to SW is the file "Door NE to SW.png".
	Figure of Door NW to SE is the file "Door NW to SE.png".
	Figure of Door Vertical is the file "Door Vertical.png".
	Figure of Stair Circular is the file "Stair Circular.png".
	Figure of Stair Horizontal is the file "Stair Horizontal.png".
	Figure of Stair Vertical is the file "Stair Vertical.png".
	Figure of Occluder Square is the file "Occluder Square.png".
	Figure of Player Icon is the file "Player Icon.png".
	Figure of Player Icon Alternate is the file "Player Icon2.png".

Next we define our graphics window and its accompanying canvas. For other examples, we will simply use the Glimmr Simple Graphics Window extension, but here we want to illustrate each step completely.

	*: Chapter - Graphics window

	The graphics-window is a graphics g-window spawned by the main-window. The position of the graphics-window is g-placeabove. The measurement of the graphics-window is 50. The back-color of the graphics-window is g-black.

	The graphics-window canvas is a g-canvas. The canvas-width is 500. The canvas-height is 300. The associated canvas of the graphics-window is graphics-window canvas.

	When play begins:
		open up the graphics-window.


The next block of code is short but crucial--it controls the revelation of the map, and also places the PC's avatar in the proper position on screen.

Our set of sprites is designed so that multiple elements may be needed to make up a room; for example, our Entrance Chamber includes a squarish shape for the room outline, a short hallway, a spiral staircase, and a door. Each of these is a separate sprite, but we need them all to be "turned on" at the same time when the player enters that room for the first time.

The way we do this is by assigning a room to each sprite, its "associated room" property. Whenever we need to update the displayed map, we repeat through the inactive (undisplayed) elements and, if the location matches its associated room, we mark that element as active.

We then update the screen position of the player's avatar by looking up the location in the Table of Avatar Coordinates and using the x,y pair we find there.

	*: Chapter - Associating rooms with elements

	A g-element has a room called the associated room.

	The update map sprites rule is listed in the carry out looking rules.


	This is the update map sprites rule:
		repeat with current-element running through display-inactive g-elements:
			if the associated room of current-element is the location:
				activate current-element;
		if there is a locale of the location in the Table of Avatar Coordinates:
			choose row with a locale of the location in the Table of Avatar Coordinates;
			change the origin of the PC avatar to the coord entry;
			activate PC avatar;
		follow the window-drawing rules for graphics-window.

Next we divide the basic elements into sub-classes, such as rooms, movable objects, etc. This makes it easier to keep track of them. For ease of use, we define the elements using tables; this is less verbose than defining them in sentences.

	*: Section - Room-element sprites

	A room-element is a kind of sprite. The graphlink status of a room-element is g-inactive. The associated canvas of a room-element is graphics-window canvas.

	Some room-elements are defined by the Table of Room-element Elements.

	Table of Room-Element Elements
	room-element	origin	image-ID	display-layer	display status	x-scaling factor	y-scaling factor	associated room
	Orthogonal_Room_Horizontal_1	{63, 89}	Figure of Orthogonal Room Horizontal	3	g-active	1.0000	1.0000	Entrance Chamber
	Orthogonal_Room_Round_1	{87, 112}	Figure of Orthogonal Room Round	3	g-active	1.0000	1.0000	Entrance Chamber
	Stair_Circular_1	{95, 121}	Figure of Stair Circular	4	g-active	0.7000	0.7000	Entrance Chamber
	Orthogonal_Hall_Vertical_1	{68, 131}	Figure of Orthogonal Hall Vertical	3	g-active	1.0000	1.0000	Entrance Chamber
	Orthogonal_Room_Vertical_1	{65, 149}	Figure of Orthogonal Room Vertical	3	g-inactive	0.4167	0.9722	Hall
	Orthogonal_Room_Square_1	{96, 168}	Figure of Orthogonal Room Square	3	g-inactive	0.8000	0.8000	Guard Room
	Orthogonal_Hall_Horizontal_1	{80, 182}	Figure of Orthogonal Hall Horizontal	3	g-inactive	1.0000	1.0000	Hall
	Orthogonal_Room_Round_2	{232, 108}	Figure of Orthogonal Room Round	3	g-inactive	1.0000	1.0000	Shaft
	Stair_Circular_2	{239, 116}	Figure of Stair Circular	4	g-inactive	0.7000	0.7000	Shaft
	Orthogonal_Hall_Vertical_2	{250, 152}	Figure of Orthogonal Hall Vertical	3	g-inactive	1.0000	1.0000	Shaft
	Orthogonal_Room_Horizontal_2	{208, 167}	Figure of Orthogonal Room Horizontal	3	g-inactive	1.0000	1.0000	Watch Room
	Orthogonal_Room_Horizontal_1_copy	{363, 89}	Figure of Orthogonal Room Horizontal	3	g-inactive	1.0000	1.0000	Upper Chamber
	Orthogonal_Room_Round_1_copy	{387, 112}	Figure of Orthogonal Room Round	3	g-inactive	1.0000	1.0000	Upper Chamber
	Stair_Circular_1_copy	{395, 121}	Figure of Stair Circular	4	g-inactive	0.7000	0.7000	Upper Chamber
	Door_Horizontal_1	{68, 141}	Figure of Door Horizontal	4	g-active	1.0000	1.0000	Entrance Chamber
	Orthogonal_Curve_N_to_E_1	{362, 135}	Figure of Orthogonal Curve N to E	3	g-inactive	1.0556	1.3056	Upper Chamber
	Orthogonal_Room_Square_2	{394, 165}	Figure of Orthogonal Room Square	3	g-inactive	0.7917	1.1250	Flanking Chamber
	Orthogonal_Room_Square_3	{365, 188}	Figure of Orthogonal Room Square	3	g-inactive	0.6500	0.6500	Flanking Chamber

	Section - Movable-element sprites

	A movable-element is a kind of sprite. The graphlink status of a movable-element is g-inactive. The associated canvas of a movable-element is graphics-window canvas.

	Some movable-elements are defined by the Table of Movable-element Elements.

	Table of Movable-Element Elements
	movable-element	origin	image-ID	display-layer	display status	x-scaling factor	y-scaling factor	associated room
	PC Avatar	{69, 95}	Figure of Player Icon	5	g-active	0.4500	0.4500	Entrance Chamber

We have a couple of types of objects that are not sprites. Rectangle primitives are used as backdrops to each floor of the tower, and bitmap-rendered strings are used to label each level with a text legend. Because the map is simple, we can know which room to use to turn these features on, and we use the same system used for other shapes. With a more complex map, we would have to treat these regional entities separately.

	*: Section - Backcloth rectangle primitives

	A backcloth is a kind of rectangle primitive. The graphlink status of a backcloth is g-inactive. The associated canvas of a backcloth is graphics-window canvas.

	Some backcloths are defined by the Table of Backcloth Elements.

	Table of Backcloth Elements
	backcloth	origin	endpoint	tint	display status	associated room
	Ground_level	{32, 57}	{169, 245}	g-dark-gray	g-active	Entrance Chamber
	Shaft_level	{182, 57}	{319, 245}	g-dark-gray	g-inactive	Shaft
	Upper_level	{332, 57}	{469, 245}	g-dark-gray	g-inactive	Upper Chamber


	Section - Title-text bitmap-rendered strings

	A title-text is a kind of bitmap-rendered string. The graphlink status of a title-text is g-inactive. The associated canvas of a title-text is graphics-window canvas.

	Ground_level_1 is a title-text. The origin is {39, 63}. The text-string is "Ground level". The associated font is Glimmr C&C. Ground_level_1 is left-aligned. The tint is g-medium-gray. The background tint is g-placenullcol. The display-layer is 2. The associated room of Ground_level_1 is Entrance Chamber.

	Shaft_2 is a title-text. The origin is {189, 63}. The text-string is "Shaft". The associated font is Glimmr C&C. Shaft_2 is left-aligned. The tint is g-medium-gray. The background tint is g-placenullcol. The display-layer is 2. The display status of Shaft_2 is g-inactive. The associated room of Shaft_2 is Shaft.

	Upper_level_3 is a title-text. The origin is {341, 63}. The text-string is "Upper level". The associated font is Glimmr C&C. Upper_level_3 is left-aligned. The tint is g-medium-gray. The background tint is g-placenullcol. The display-layer is 2. The display status of Upper_level_3 is g-inactive. The associated room of Upper_level_3 is Upper Chamber.

Finally, the table that converts the location to the coordinates that the player's avatar should have onscreen. (These were mapped using Glimmr Canvas Editor's "instances" feature.)

	*: Chapter - The Avatar's destinations

	Table of Avatar Coordinates
	locale	coord
	Hall	{66, 173}
	Guard Room	{105, 176}
	Shaft	{238, 122}
	Watch Room	{233, 180}
	Upper Chamber	{373, 99}
	Flanking Chamber	{395, 186}
	Entrance Chamber	{71, 96}


Example: ** Wandering Rhodes - We want to show the player's location on a map, but the full map is so large that it leaves us unable to see details. This example explores one solution to this problem, displaying the full map in one graphics window, and showing a detail view, an inset, in a second window.

This example illustrates one way to do this, by displaying the same canvas in two different windows, with each window having different framing parameters. We have a larger graphics window on the left, displaying the full map, scaled to fit in the window. A smaller window on the right displays a close-up of the map, centered on the player's location.

 Because this by itself is too easy, we also provide the ability to "TOGGLE" between two means of showing the player's location: a placemarker, a la Google Maps, and a box on the full map that marks the area shown in the inset view. The latter will also serve to illustrate how we can dynamically resize elements based on the size of our windows.

	*: "Wandering Rhodes"

	Include Glimmr Canvas-Based Drawing by Erik Temple.

	Figure of Rhodes is the file "Rhodes.jpg".
	Figure of Placemark is the file "Placemark.png".

	The graphics-window is a graphics g-window spawned by the main-window. The measurement of the graphics-window is 50. The position of the graphics-window is g-placeabove. The associated canvas of the graphics-window is the graphics-canvas.

	The graphics-canvas is a g-canvas. The background image of the graphics-canvas is Figure of Rhodes.

We use the graphics-window to display the full map view, and the dimensions of the graphics-canvas are determined by the map (Figure of Roads, used as the background image of the canvas). We also define the closeup-window, the g-window that will show the inset. Note that we assign the same canvas to the closeup-window as to the main graphics-window. We also set the closeup-window to a scaling factor of 1.0000 (i.e., 100%), so that the map will always be displayed without scaling.

We then assign x,y coordinates to each room. These coordinates will determine where the placemarker will be placed, and will also serve as the center of the frame of the closeup-window; that is, we will display the graphics-canvas in the closeup-window such that the window is centered over this point. This is done using the window-framing adjustment activity and the "center the framing..." phrase.

	*: The closeup-window is a graphics g-window spawned by the graphics-window. The position is g-placeright. The measurement is 25. The associated canvas is graphics-canvas.

	The arbitrary scaling factor of the closeup-window is 1.0000.

	When play begins:
		open up graphics-window;
		open up the closeup-window;

	[After printing the banner text:
		say "[line break]This example for the Glimmr Canvas-Based Drawing extension demonstrates the display of a single canvas in two different windows. The inset window at right shows a detail view of the main map window at left. The main window scales the canvas to fit, while the inset window always displays it at 100% of actual size, zoomed to the specific location shown by the placemarker in the main window.[paragraph break]The placemarker can be toggled between a pointer and a box the same size as the inset: Type TOGGLE at the command line to change it.[paragraph break]"]

	A room has a list of numbers called the origin. The origin is usually {0, 0}.
	Some rooms are defined by the Table of Room Origins.

	For window-framing adjustment of the closeup-window:
		center the framing of closeup-window on the origin of the location;
		continue the action.

We offer the player the choice to display the current location on the map using either a placemarker (a pointer), or a rectangle that reflects the area of the larger map that is displayed in the closeup-window; the former is implemented as a sprite/image, while the latter is a box primitive. As with other maps, we update the status of these primarily in the carry out looking rules, since the looking rules are always consulted when the player moves between rooms. The currently chosen display option is put into a global variable called the placemarker, which we will use to determine how the properties of the element should be updated.

	*: The associated canvas of a g-element is the graphics-canvas.

	Pointer is a sprite. The image-ID is Figure of Placemark. The pointer is center-aligned.

	Map Inset is a box primitive. The tint is g-White. The display status is g-inactive. The line-weight is 2.

	Toggling view is an action applying to nothing. Understand "toggle" or "toggle map" or "toggle placemarker" as toggling view.

	The placemarker is a g-element variable. The placemarker is the pointer.

	Carry out toggling view:
		if the placemarker is the pointer:
			now the placemarker is the map inset;
			activate the placemarker;
			deactivate pointer;
		else:
			now the placemarker is the pointer;
			activate the placemarker;
			deactivate map inset;
		refresh windows;
		say "The placemarker will now be displayed [if the placemarker is the pointer]as an image[else]using a box to depict the area displayed in the closeup window[end if]."

	Carry out looking:
		follow the refresh windows rule;
		continue the action.

We don't want to display the marker in the closeup-window, so we simply skip it during the drawing sequence for that window (closeup-window placemarker rule). We then use the drawing active elements activity as a hook for calculating the origins (and endpoint) of the placemarker elements. This activity is a good place for this since it is the activity that controls the scaling and drawing of all elements.

The calculation for the map inset element, which is the box primitive that outlines on the large map the area displayed in the closeup-window, is more interesting (see the map inset placement rule). This calculation (the map inset placement rule) uses the room coordinates, the dimensions of the canvas, and the dimensions of the closeup-window to calculate the placement and sizing of the map inset. Remember that the origin and endpoint are actually lists of numbers, hence the need to access each entry individually, as seen in the map inset placement rule.

Note the use of "continue the action" at the end of each rule. Most of the rules and activities in Canvas-Based Drawing end automatically in success, so we need to provide explicit continuation in order to use the rest of the rulebook. In this case, the drawing the active elements activity needs to go on to actually draw the elements, not just calculate placement.

	*: Element display rule for the placemarker when the current window is the closeup-window (this is the closeup-window placemarker rule):
		do nothing.

	For drawing the active elements when the placemarker is the pointer (this is the pointer placement rule):
		change the origin of the placemarker to the origin of the location;
		continue the action;

	For drawing the active elements when the placemarker is the map inset (this is the map inset placement rule):
		change entry 1 of the origin of the placemarker to (entry 1 of the origin of the location) - ((width of closeup-window) / 2);
		change entry 2 of the origin of the placemarker to (entry 2 of the origin of the location) - ((height of the closeup-window) / 2);
		change entry 1 of the endpoint of the placemarker to (entry 1 of the origin of placemarker) + (width of closeup-window);
		change entry 2 of the endpoint of the placemarker to (entry 2 of the origin of placemarker) + (height of closeup-window);
		continue the action;

	Table of Room Origins
	room	origin
	West Tower	{108, 221}
	East End of Tower Street	{356, 292}
	West End of Tower Street	{211, 280}
	Port Fortress	{412, 415}
	Bell Tower	{585, 204}
	North Tower	{667, 135}
	Main Square	{447, 355}

	West End of Tower Street is east of West Tower. East End of Tower Street is east of West End. Main Square is east of East End. Port Fortress is south of Main Square. Bell Tower is north of Main Square. North Tower is north of Bell Tower.

	The description of a room is "[exits]".

	To say exits:
		say "Exits: ";
		let L be a list of directions;
		repeat with the way running through directions:
			let place be the room way from location;
			if place is a room:
				add way to L;
		say "[L]. "



Example: ** Roguelike-like - This example uses image-maps and some sprites to create something that looks a lot like a roguelike dungeon-crawler. None of the actual game mechanics one would want in such a game are included, of course, but the basic techniques for display are provided.

We use an image-map to display the outline of whatever room we are in. Some of the tiles are graphlinked, so that clicking on the floor of the room will move us one step in the direction clicked, and so that clicking on the exit to a room will take us out of the room. Only the latter takes any time: moving around within a room has no effect on actual gameplay in this example.

We wouldn't have a roguelike, though, if all we had was a map. We also need characters that wander over the map. One way we could do this would be to layer multiple image-maps over one another--one map containing the characters, say, and another of the same size representing the base map. An easier method, the one this example employs, is to use sprites for the characters.

The tiles used in this example come from a set of tiles known as LoFi Roguelike, by TIGSource user oryx. These are very nice, low-resolution tiles. Each of the tiles is 8 x 8 pixels, but we display them here at 24 by 24. Link to LoFi Roguelike: https://forums.tigsource.com/index.php?topic=8970.0

	*: "Roguelike-like"

	Include Glimmr Canvas-Based Drawing by Erik Temple.
	Include Glimmr Graphic Hyperlinks by Erik Temple.
	Include Glimmr Simple Graphics Window by Erik Temple.

First we define the tileset. It's often more convenient to put a tileset into its own extension, but we don't have that luxury here, and doing it inline works too.

Note the linked command entries in the tileset's translation table. These allow us to specify commands for individual tiles; when we click on these tiles on screen, the associated command will fire. Note that we include 5 versions of the floor tile, one for each of the four directions, and one that is linked with a hyphen. The directional versions are placed at the edge of a room's map, so that clicking on them will move us to the next room. The hyphen link is not issued as a command. We will instead intercept the hyphen link with a special graphlink processing rule (see Glimmr Graphic Hyperlinks) so that we can supply our own behavior later on.

	*: Section - The Tileset

	LoFi Roguelike is a tileset. The translation-table is the Table of Roguelike Tiles. The tile-width is 24. The tile-height is 24.

	Figure of Bowman is the file "Bowman.png".
	Figure of Floor is the file "Floor.png".
	Figure of Manticore is the file "Manticore.png".
	Figure of Stairs Up is the file "Stairs Up.png".
	Figure of Stairs Down is the file "Stairs Down.png".
	Figure of Table is the file "Table.png".
	Figure of Torch Wall is the file "Wall with Torch.png".
	Figure of Wall is the file "Wall.png".
	Figure of Vertical Wall is the file "Vertical Wall.png".


	Table of Roguelike Tiles
	Char	Tile	Linked Command
	number	figure-name	text
	1	Figure of Wall	""
	2	Figure of Floor	"-"
	3	Figure of Torch Wall	""
	4	Figure of Vertical Wall	""
	5	Figure of Stairs Up	"up"
	6	Figure of Stairs Down	"down"
	7	Figure of Floor	"north"
	8	Figure of Floor	"east"
	9	Figure of Floor	"south"
	10	Figure of Floor	"west"


	Section - The Graphics Window

	The measurement of the graphics-window is 336.
	The canvas-width of the graphics-canvas is 336. The canvas-height of the graphics-canvas is 336.

	When play begins:
		follow the update dungeon map rule;
		open up the graphics-window.

	[After printing the banner text:
		say "[line break]This imitation of a roguelike game is an example for the Glimmr Canvas-Based Drawing extension. It features an image-map element that displays the map base for each room, using regular graphic tiles from a tileset known as LoFi Roguelike, by TIGSource user oryx (https://forums.tigsource.com/index.php?topic=8970.0). The character icons are borrowed from the same tileset, and are implemented in Glimmr as sprite objects.[paragraph break]Click on the floor of the room to move toward the location clicked. Click on the furthest floor tile of a map exit to move to the next room. Click on the player's avatar (the archer) to take inventory, or click on an enemy to attack it.[paragraph break]"]

Sprites are displayed using the coordinate system of the canvas, but the characters we are using them to display will need to move according to the internal grid of our image-map. We handle this by giving the sprite a second set of coordinates that we will use for calculating the character's position on the map. We convert this coordinate to canvas coordinates (based on the current position of the image-map on the canvas) before scaling and drawing a sprite. This is the "convert origin coordinate" rule below, and it utilizes one of the phrases that GCBD provides for converting between canvas, screen, and image-map coordinate systems; see the section on image-maps in the documentation above for more.

We want each room to have its own independent map, but there is no reason to create a different image-map element for each room. Instead, we have just one image-map object, the Dungeon Map. We assign each room a tile-array, and change the tile-array of the Dungeon Map to reflect the tile-array of the location.

At the same time, we also ensure that the appropriate characters are visible. Each character in the game (there are only two, the player and the beast at the end of his quest) has an associated sprite. Whenever we need to redraw the map--as usual, we do this in the looking rules--we activate the characters he can see and deactivate the ones he can't.


	*: Section - Element display and updating

	Element scaling rule for a character-sprite (called the character) (this is the convert origin coordinate rule):
		now the origin of the character is the canvas coordinate equivalent of the grid-coordinate of the character in the coordinates of the dungeon map;
		continue.

	The convert origin coordinate rule is listed before the element origin scaling rule in the element scaling rules.

	A room has a list of lists of numbers called the tile-array. A room has a list of numbers called the initial grid coordinate.

	Carry out looking:
		follow the update dungeon map rule;
		follow the window-drawing rules for the graphics-window.

	This is the update dungeon map rule:
		now the tile-array of the Dungeon Map is the tile-array of the location;
		construct graphic hyperlinks array for the dungeon map;
		now the grid-coordinate of the character of the player is the initial grid coordinate of the location;
		repeat with P running through people:
			if P can be seen by the player:
				mark the character of P for display;
			else:
				deactivate the character of P.


	Section - Image-map and Sprites

	The dungeon map is a tileset image-map. The associated tileset is LoFi Roguelike. The origin is {24, 24}. The tiled graphlink status of the dungeon map is g-active.

	A character-sprite is a kind of sprite. A character-sprite has a list of numbers called the grid-coordinate. The display-layer of a character-sprite is 3. The graphlink status of a character-sprite is g-active. The display status of a character-sprite is g-inactive.

	A person has a character-sprite called the character.

	Some character-sprites are defined by the Table of Characters.

	Table of Characters
	character-sprite	image-ID	grid-coordinate	linked replacement-command
	Bowman-sprite	Figure of Bowman	{4, 4}	"inventory"
	Manticore-sprite	Figure of Manticore	{5, 7}	"attack manticore"


The next section contains the scenario and is fairly simple. We assign the character-sprites to our characters, and we also set the player's sprite to be active from the start.

We then define the rooms and other behavior. Note that each room has an image-map, and that we can use line breaks within the list to make it more or less human-readable.

	*: Section - Scenario

	The player carries a bow and an arrow. The character of the player is the Bowman-sprite. The display status of the Bowman-sprite is g-active.

	The Entrance is a room. "A dry and dusty room. A passage leads east, and crumbling stairs lead back to the cave above." The tile-array is {
		{ 0, 4, 1, 3, 1, 1, 3, 1, 4, 0, 0, 0 },
		{ 0, 4, 2, 2, 2, 2, 2, 2, 4, 0, 0, 0 },
		{ 0, 4, 2, 2, 2, 2, 2, 2, 1, 1, 1, 0 },
		{ 0, 4, 5, 2, 2, 2, 2, 2, 2, 2, 8, 0 },
		{ 0, 4, 2, 2, 2, 2, 2, 2, 4, 1, 1, 0 },
		{ 0, 4, 2, 2, 2, 2, 2, 2, 4, 0, 0, 0 },
		{ 0, 4, 2, 2, 2, 2, 2, 2, 4, 0, 0, 0 },
		{ 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0 }
	}. The initial grid coordinate is {6, 4}.

	Instead of going up in the Entrance:
		say "But your adventure has only just begun, you rogue!".

	The Passage is east of the Entrance. "A narrow passage that turns toward the south, where it widens." The tile-array is {
		{ 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00 },
		{ 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00, 00 },
		{ 00, 01, 01, 01, 01, 01, 01, 01, 01, 04, 00, 00 },
		{ 00, 10, 02, 02, 02, 02, 02, 02, 02, 04, 00, 00 },
		{ 00, 01, 01, 01, 01, 01, 01, 04, 02, 02, 04, 00 },
		{ 00, 00, 00, 00, 00, 00, 00, 04, 02, 02, 04, 00 },
		{ 00, 00, 00, 00, 00, 00, 00, 04, 02, 02, 04, 00 },
		{ 00, 00, 00, 00, 00, 00, 00, 04, 02, 02, 04, 00 },
		{ 00, 00, 00, 00, 00, 00, 00, 04, 09, 09, 04, 00 }
	}. The initial grid coordinate is {9, 4}.

	The Den of the Beast is south of the Passage. "A large room that nevertheless feels close and fetid. The great Manticore lurks here." The tile-array is {
		{ 0, 0, 0, 0, 0, 0, 0, 4, 7, 7, 4, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 4, 2, 2, 4, 0 },
		{ 4, 1, 1, 1, 1, 1, 1, 1, 2, 2, 1, 4 },
		{ 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4 },
		{ 0, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1 },
		{ 0, 0, 4, 2, 2, 2, 2, 2, 2, 2, 4, 0 },
		{ 0, 0, 4, 2, 2, 2, 2, 2, 2, 2, 4, 0 },
		{ 0, 0, 4, 2, 2, 2, 2, 2, 2, 2, 4, 0 },
		{ 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0 }
	}. The initial grid coordinate is {9, 3}.

	Check going north from the Den:
		say "If you flee now, you will never be able to face yourself again." instead.

	Every turn while the player is in the Den:
		say "[one of]The Manticore roars[or]A snort echoes through the chamber. The Manticor shakes its mane[or]The Manticore stares at you. You feel that your impudence is truly epic[or]The spiked pad at the end of the Manticore's tail sways lazily over the beast's back[purely at random]."

	The Manticore is an animal in the Den. "The Manticore stirs. His eyes lock on yours." The character is the Manticore-sprite. The description is "More fearsome than the villagers said. A massive catlike creature. Its tail is studded with large, deadly spikes."

	Understand "shoot [something]" as attacking.

	Instead of attacking the Manticore:
		say "As you nock one of your spindly arrows, you ize just how foolish you have been. Before you can draw back the bowstring, the Manticore's tail stiffens and a shower of deadly spikes arcs toward you.";
		end the story finally.

	Every turn when the player is in the Den:
		if the player has been in the Den for three turns and the current action is not the action of attacking the manticore:
			say "The Manticore has evidently tired of your dithering. He crouches low and, before you can fit your arrow, he flings a barrage of spikes from his tail.";
			end the story finally.


Finally, we have a couple of things we want to do with mouse input. Since all of our mouse input is game-related--we move the player, take inventory, attack monsters, etc.--we don't want to continue issuing commands if the player is dead. To do this, we make the first graphlink processing rule a check of whether the story is still active. The odd phrasing of the condition reflects a weakness in the Standard Rules' phraseology.

More interesting is the handle movement rule. This rule moves the player's avatar in response to mouse clicks on the map. If the player has clicked on the Dungeon Map, we check to see what command was triggered by the click. If that command was "-", we know that the player has clicked on a floor tile. We then convert the coordinates of the mouse input from screen coordinates to the coordinates of the image-map. We compare those coordinates with the coordinates of the player, and move the player one step horizontally and/or one step vertically toward the clicked coordinate.

You will notice that this rule doesn't do any collision checking--what happens if the player moves over a wall, or on top of the Manticore? This example game is set up so that this is impossible. The player will die before he reaches the Manticore, and because the walls are always at the edge of the map and are not themselves graphlinked, the player can never reach them by clicking. In a game, we'd need a full system of collision detection, but this slight of hand suffices for a short example.

	*: Section - Mouse movement

	First graphlink processing rule when not the story has not ended:
		rule fails.

	A graphlink processing rule for the Dungeon Map when the candidate replacement command is "-" (this is the handle movement rule):
		now the candidate replacement command is "";
		let L be a list of numbers;
		let L be {0, 0};
		now entry 1 of L is current graphlink x;
		now entry 2 of L is current graphlink y;
		let L be the equivalent of screen coordinate L in the coordinates of the Dungeon Map;
		if entry 1 of L > entry 1 of the grid-coordinate of the Bowman-sprite:
			increase entry 1 of the grid-coordinate of the Bowman-sprite by 1;
		else if entry 1 of L < entry 1 of the grid-coordinate of the Bowman-sprite:
			decrease entry 1 of the grid-coordinate of the Bowman-sprite by 1;
		if entry 2 of L > entry 2 of the grid-coordinate of the Bowman-sprite:
			increase entry 2 of the grid-coordinate of the Bowman-sprite by 1;
		else if entry 2 of L < entry 2 of the grid-coordinate of the Bowman-sprite:
			decrease entry 2 of the grid-coordinate of the Bowman-sprite by 1;
		follow the window-drawing rules for the graphics-window;
		rule succeeds.


Example: *** Deal Me In - This example illustrates a number of different techniques. We show how to change the contents of a graphics window at a stroke by changing canvases. We also construct a custom graphic element with rather complex behavior: rather than simply drawing a single entity, the element acts as a manager, interpreting and drawing game information using varied techniques, as needed.

Specifically, the manager renders the cards that the player has drawn in a sort of card game (we borrow the relevant code from the Tilt 3 example in the Inform documentation). The game is poker, so the player can hold up to five cards. The manager centers and spaces the card outlines as needed (based on the width of the graphics window). For each card the player holds, it provides a white background, paints text to the window to represent the card's value (e.g., 6, 7, 10, J, Q, K), and draws a bitmap graphic in the proper color to represent the suit. If the player holds fewer than five cards, the remaining cards will be depicted as empty placeholders.

The manager g-element also implements simple mouse input: clicking on a placeholder draws a card, while clicking on a card discards it.

We begin by defining the graphics window. We give it a fixed height dimension so that the look doesn't vary overmuch, and make it black so that--in most interpreters--it will blend visually with the status line. We also indicate that the window should be refreshed at the end of every turn. We also declare a canvas for card-display. Later, we will declare a second canvas.

	*: "Deal Me In" by Erik Temple

	Include Glimmr Canvas-Based Drawing by Erik Temple.
	Include Glimmr Graphic Hyperlinks by Erik Temple.
	Include Glimmr Bitmap Font by Erik Temple.
	Include Basic Screen Effects by Emily Short.

	The graphics-window is a graphlink g-window spawned by the main-window. The position of the graphics-window is g-placeabove. The scale method of the graphics-window is g-fixed-size. The measurement of the graphics-window is 44.

	The card-display canvas is a g-canvas. The associated canvas of the graphics-window is the card-display canvas.

	The graphics-canvas is a g-canvas.

	When play begins:
		open up the graphics-window.

	Every turn:
		refresh windows.

We want our canvases to be the same size as the window for the purposes of this example, so before scaling the canvas to the window at each refresh, we resize the canvas to match the window. (This isn't strictly necessary. We could get very nice output with fixed-size canvases, but making the canvas variable allows us to show how to make the manager element a bit more powerful.)

Note the use of the "associated canvas of the graphics-window"--this allows this rule to resize whatever canvas we assign to the window, and will come in handy when we swap out canvases.

	*: Before scaling the graphics-window:
		change the canvas-width of the associated canvas of the graphics-window to the width of the graphics-window;
		change the canvas-height of the associated canvas of the graphics-window to the height of the graphics-window;
		continue the action.

Now we define the manager g-element. We provide an origin point, but it is ly a placeholder. The x-coordinate will be changed by the scaling rule for the element. Because our graphics window is of a fixed height, the y-coordinate will not change (though in principle it could, of course).

We also define the dimensions for each card as global variables. We refer only to the variables in the remainder of the source code, so that if we want to adjust things, we need only return to this paragraph and change these variables.

	*: Section 1 - The manager

	The card-manager is a g-element. The associated canvas is the card-display canvas. The origin is { 0, 4 }. The graphlink status is g-active.

	The card-x is a number variable. The card-x is 28.
	The card-y is a number variable. The card-y is 36.

Each element (or type of element) has both a scaling rule and a display rule. In the scaling rule for the card-manager element, we don't actually do any scaling. (We don't have to, because the height of our graphics window is fixed, and we simply center the cards in the available space horizontally.) Instead, we use the scaling rule as a hook for setting the x-coordinate of the origin properly in order to display the cards as centered in the window. We do this by first changing the x-coordinate (entry 1 in the origin, which is stored as a list of numbers) to the center-point of the window. We then calculate 2.5 card-widths (half of the five card-widths needed to display the five cards) plus 2/3 of a card-width for the total spacing between cards, and subtract this from the center point. This sets the x-coordinate to the leftmost point of the card assemblage.

Next, we move on to the element display rule, where most of the work is done. After sorting the cards into a reasonable order (by calling a rulebook from the Tilt 3 example), we repeat first through the cards held by the player. Starting at the origin point of the card-manager element, we draw two overlapping white filled rectangles, one slightly wider and shorter than the other; this is a computationally inexpensive way of depicting "rounded" corners for the cards. We then draw a bitmap text in the upper left corner of the card in the appropriate color that indicates its rank (1 to 10, J, Q, K, or A), followed by a monochrome bitmap in the lower right corner to indicate the suit. We then set a graphic hyperlink area in the same screen position as the card with the command "Discard." This command is just a placeholder; the more important thing we do here is identify the graphlink zone using the name of the card. (For the phrases used to draw the various entitites, see the Glimmr Drawing Commands extension.) Finally, we increase the drawing coordinate by the width of one card plus 1/3 of one card for spacing and start the process over with the next card.

If the player is holding fewer than 5 cards, we repeat through the number of places remaining. We draw a lavender box (outline) for each empty spot in the player's hand, and hyperlink this with a "Draw" command.

	*: Element scaling rule for the card-manager:
		change entry 1 of the origin of the card-manager to entry 1 of the center-point of the card-display canvas;
		let delta-x be (card-x * 2) + (card-x / 2) + (card-x / 3) + (card-x / 3);
		change entry 1 of the origin of the card-manager to (entry 1 of the origin of the card-manager minus delta-x);

	Element display rule for the card-manager:
		let N be 5 minus the number of cards carried by the player;
		if N < 5:
			follow the hand-ranking rules;
		let x be entry 1 of the origin of the card-manager;
		let y be entry 2 of the origin of the card-manager;
		repeat with flat running through the cards carried by the player:
			draw a rectangle (color g-white) in (current window) from (x + 1) by (y) to (x + card-x - 1) by (y + card-y);
			draw a rectangle (color g-white) in (current window) from (x) by (y + 1) to (x + card-x) by (y + card-y - 1);
			paint bitmap text (color appropriate to the flat) of "[rank of flat as abbreviated value]" in (current window) at (x + 7) by (y + 2) using Glimmr C&C with dot size 1, center-aligned;
			display monochrome bitmap (color appropriate to the flat) in (current window) at (x + card-x) - 12 by (y + card-y) - 12 using (the bitmap-dataset of the flat) with dot size 1 px;
			if the card-manager is graphlinked:
				set a graphlink in the current window identified as the flat from (x) by (y) to (x + card-x) by (y + card-y) as "DISCARD";
			increase x by card-x + (card-x / 3);
		if N > 0:
			repeat with blank running from 1 to N:
				draw a box (color g-lavender) in (current window) from (x) by (y) to (x + card-x) by (y + card-y) with 1 px line-weight, inset;
				if the card-manager is graphlinked:
					set a graphlink in the current window identified as the card-manager from (x) by (y) to (x + card-x) by (y + card-y) as "DRAW", ignoring redundant links;
				increase x by card-x + (card-x / 3).

When we 	set the graphic hyperlink zone for cards in the element display rule for a card, we identified that graphlink zone using the name of the card (card placeholders were identified as the card-manager rather than any particular card). When we click on a card, then, we can provide a special graphlink processing rule to handle the mouse input (see the Glimmr Graphic Hyperlinks extension for more on the graphlink processing rules).

In this rule, we change the replacement command to refer to the name of the card, e.g. "discard the ten of hearts".

In the next section, we provide phrases to assign the color and bitmap shape appropriate to a given card's suit.

	*: Section 2 - Graphic hyperlink rule for clicking on a card (for use with Glimmr Graphic Hyperlinks by Erik Temple)

	A graphlink processing rule for a card (called the flat):
		if the flat is carried by the player:
			let T be indexed text;
			let T be the "[flat]";
			change the candidate replacement command to "[T in upper case]";
			change the glulx replacement command to "DISCARD THE [candidate replacement command]";
			change the candidate replacement command to "";
			rule succeeds.

	Section 3 - Graphic representation of suits

	To decide which glulx color value is appropriate to (flat - a card):
		if the suit of the flat is hearts or the suit of the flat is diamonds:
			decide on g-Red;
		decide on g-Black;

	To decide which list of lists of numbers is the bitmap-dataset of (flat - a card):
		if the suit of the flat is hearts:
			decide on {
	{ 0, 0, 1, 0, 0, 0, 1, 0 },
	{ 0, 1, 1, 1, 0, 1, 1, 1 },
	{ 0, 1, 1, 1, 1, 1, 1, 1 },
	{ 0, 0, 1, 1, 1, 1, 1, 0 },
	{ 0, 0, 0, 1, 1, 1, 0, 0 },
	{ 0, 0, 0, 0, 1, 0, 0, 0 }
	};
		if the suit of the flat is diamonds:
			decide on {
	{ 0, 0, 0, 0, 1, 0, 0, 0 },
	{ 0, 0, 0, 1, 1, 1, 0, 0 },
	{ 0, 0, 1, 1, 1, 1, 1, 0 },
	{ 0, 1, 1, 1, 1, 1, 1, 1 },
	{ 0, 0, 1, 1, 1, 1, 1, 0 },
	{ 0, 0, 0, 1, 1, 1, 0, 0 },
	{ 0, 0, 0, 0, 1, 0, 0, 0 }
	};
		if the suit of the flat is clubs:
			decide on {
	{ 0, 0, 0, 1, 1, 0, 0, 0 },
	{ 0, 0, 1, 1, 1, 1, 0, 0 },
	{ 0, 0, 1, 1, 1, 1, 0, 0 },
	{ 1, 1, 1, 1, 1, 1, 1, 1 },
	{ 1, 1, 1, 0, 0, 1, 1, 1 },
	{ 1, 1, 1, 1, 1, 1, 1, 1 },
	{ 0, 0, 0, 1, 1, 0, 0, 0 },
	{ 0, 0, 1, 1, 1, 1, 0, 0 }
	};
		if the suit of the flat is spades:
			decide on {
	{ 0, 0, 0, 1, 1, 0, 0, 0 },
	{ 0, 0, 1, 1, 1, 1, 0, 0 },
	{ 0, 1, 1, 1, 1, 1, 1, 0 },
	{ 1, 1, 1, 1, 1, 1, 1, 1 },
	{ 1, 1, 1, 1, 1, 1, 1, 1 },
	{ 0, 1, 1, 1, 1, 1, 1, 0 },
	{ 0, 0, 0, 1, 1, 0, 0, 0 },
	{ 0, 0, 1, 1, 1, 1, 0, 0 }
	};

The player may not be sure what to do in this example, so we offer some help text. For kicks, we'll do this in the graphics window, using a bitmap-rendered string g-element. When the player types "HELP", we change the associated canvas of the graphics-window temporarily to the graphics-canvas (defined in Glimmr Simple Graphics Window); the graphics-canvas has only one element, the bitmap-rendered string that provides our instructions. While this is displayed, we pause the game using the "wait for any key" phrase. After the keypress, we switch the canvas back to the card-display canvas and refresh the window again.


	*: Section 4 - Changing the canvas

	Asking for help is an action out of world. Understand "help" as asking for help.

	After printing the banner text:
		[say "[line break]This example for the Glimmr Canvas-Based Drawing extension illustrates a couple of different of techniques:[paragraph break](1) Changing the contents of a window at a stroke by swapping out the canvas (type HELP to see this).[line break](2) The construction of a complex graphic element from a number of parts: the card graphics are composed of two rectangles, a bitmap-rendered text, and a bitmap graphic.[paragraph break]The example is built on top of the Tilt 3 example from the Inform Recipe Book, essentially unchanged but with the graphic display layered on top.[paragraph break]";]
		say "Type HELP for instructions."

	Carry out asking for help:
		change the associated canvas of the graphics-window to the graphics-canvas;
		say "Instructions above. Press any key to continue.";
		refresh windows;
		wait for any key;
		change the associated canvas of the graphics-window to the card-display canvas;
		refresh windows.

	Help text is a bitmap-rendered string. The associated canvas is the graphics-canvas. The origin is { 5, 10 }. The text-string is "Click on a blank to draw a card. Click on a card to discard it." The tint is g-CornflowerBlue. The bit-size is 2.

	Test me with "help / draw / draw / draw / draw / draw"


From this point on, the code does not differ from the Inform documentation's "Tilt 3" example.

	*: Section 5 - Colored Output in Two Forms

	[For the suit symbols, we'll want the Unicode extension included with Inform:]

	Include Unicode Character Names by Graham Nelson.

	Rule for printing the name of a card (called target) while grouping together:
		say "[rank of the target as abbreviated value][suit of the target as symbol]".

	To say (current suit - a suit) as symbol:
		if current suit is diamonds, say "[red letters][unicode black diamond suit][default letters]";
		if current suit is spades, say "[unicode black spade suit]";
		if current suit is clubs, say "[unicode black club suit]";
		if current suit is hearts, say "[red letters][unicode black heart suit][default letters]".


	Table of User Styles (continued)
	style name	glulx color
	special-style-1	g-red

	To say red letters: say first custom style.

	To say default letters: say roman type.


	Section 6 - Cards

	Suit is a kind of value. The suits are hearts, clubs, diamonds, and spades. Understand "heart" as hearts. Understand "club" as clubs. Understand "diamond" as diamonds. Understand "spade" as spades.

	A card is a kind of thing. A card has a suit. A card has a number called rank. Understand the suit property as describing a card. Understand the rank property as describing a card.

	52 cards are in the card repository.

	To say (count - a number) as a card value:
		choose row count in the Table of Value Names;
		say "[term entry]".

	Rule for printing the name of a card (called target):
		say "[rank of the target as a card value] of [suit of the target]"

	To say (count - a number) as abbreviated value:
		choose row count in the Table of Value Names;
		say "[abbrev entry]".

	Table of Value Names
	term	value	abbrev	topic
	"ace"	"1"	"A"	"ace/A"
	"deuce"	"2"	"2"	"deuce/two"
	"three"	"3"	"3"	"three"
	"four"	"4"	"4"	"four"
	"five"	"5"	"5"	"five"
	"six"	"6"	"6"	"six"
	"seven"	"7"	"7"	"seven"
	"eight"	"8"	"8"	"eight"
	"nine"	"9"	"9"	"nine"
	"ten"	"10"	"10"	"ten"
	"jack"	"11"	"J"	"jack/knave/J"
	"queen"	"12"	"Q"	"queen/Q"
	"king"	"13"	"K"	"king/K"

	After reading a command:
		if the player's command includes "of [suit]":
			while the player's command includes "of", cut the matched text;
		repeat through the Table of Value Names:
			while the player's command includes topic entry, replace the matched text with value entry.

	When play begins:
		reconstitute deck.

	To reconstitute deck:
		let current suit be hearts;
		now every card is in the card repository;
		while a card is in the card repository:
			repeat with current rank running from 1 to 13:
				let item be a random card in card repository;
				change rank of item to current rank;
				change suit of item to current suit;
				now item is in the deck of cards;
			change current suit to the suit after the current suit.


	Section 7 - The Deck and the Discard Pile

	The Casino is a room. "Nothing to see here."

	The deck of cards is in the Casino. It is a closed unopenable container. The description is "A standard poker deck."

	The discard pile is a closed unopenable container. The description is "Cards in this game are discarded face-down, so the discard pile is not very interesting to see. All you can observe is that it currently contains [if the number of cards which are in the discard pile < ten][the number of cards which are in the discard pile in words][else]about [the rounded number of cards which are in the discard pile in words][end if] card[s]."

	To decide what number is the rounded number of (described set - a description of objects):
		let N be the number of members of the described set;
		let R be N divided by 5;
		let total be R times 5;
		decide on total.

	Rule for printing room description details of something: do nothing instead.


	Section 8 - Drawing and Discarding Actions

	Understand the commands "take" and "carry" and "hold" and "get" and "drop" and "throw" and "discard" as something new.

	Understand "take [text]" or "get [text]" or "drop [text]" as a mistake ("Here, you only draw and discard. Nothing else matters at the moment.").

	Understand "draw" or "draw card" or "draw a card" as drawing. Drawing is an action applying to nothing. The drawing action has an object called the card drawn.

	Setting action variables for drawing:
		change the card drawn to a random card which is in the deck of cards.

	Check drawing:
		if the card drawn is nothing, say "The deck is completely depleted." instead.

	Check drawing:
		if the number of cards carried by the player > four,
			say "This is a five-card game; you must discard something before drawing anything further." instead.

	Carry out drawing:
		move the card drawn to the player.

	Report drawing:
		say "You draw [a card drawn]."


	Understand "discard [card]" as discarding. Discarding is an action applying to one thing.

	Check discarding:
		if the player does not carry the noun, say "You can only discard cards from your own hand." instead.

	Carry out discarding:
		now the noun is in the discard pile;
		if the discard pile is not visible, move the discard pile to the location.

	Report discarding:
		say "You toss [the noun] nonchalantly onto the discard pile."

	Section 9 - Assessing Hands

	Before listing contents while taking inventory: group cards together.

	Before grouping together cards:
		if the number of cards carried by the player is 5:
			say "[run paragraph on]";
			follow the hand-ranking rules;
			if the rule succeeded, say "[the outcome of the rulebook]";
			else say "some random cards";
			if the outcome of the rulebook is pair outcome, say " of [rank of the first thing held by the player as a card value]s";
		else:
			say "[number of cards carried by the player in words] assorted cards";
		say " (".

	Rule for grouping together cards:
		say "[list hand]".

	To say list hand:
		let chosen card be the first thing held by the player;
		while chosen card is a card:
			say "[chosen card]";
			now chosen card is the next thing held after chosen card;
			if chosen card is a card, say "-".

	After grouping together cards:
		say ")".

	The hand-ranking rules is a rulebook. The hand-ranking rules have outcomes royal flush, straight flush, four of a kind, full house, flush, straight, three of a kind, two pairs, pair, high card.

	The hand-ranking rulebook has a truth state called the flushness.
	The hand-ranking rulebook has a truth state called the straightness.

	The hand-ranking rulebook has a number called the pair count.
	The hand-ranking rulebook has a number called the triple count.
	The hand-ranking rulebook has a number called the quadruple count.

	A card can be sorted or unsorted. A card is usually unsorted.

	Definition: a card is high if its rank is 11 or more.
	Definition: a card is low if its rank is 4 or less.

	A hand-ranking rule (this is the initial sort rule):
		now every card is unsorted;
		while the player carries an unsorted card:
			let item be the lowest unsorted card held by the player;
			move item to the player;
			now the item is sorted;
		if sort-debugging is true, say "-- after initial sort: [list hand]".

	A hand-ranking rule (this is the finding flushness rule):
		let called suit be the suit of a random card carried by the player;
		if every card carried by the player is called suit, change flushness to true.

	A hand-ranking rule (this is the finding straightness rule):
		change straightness to true;
		let N be the rank of the highest card which is carried by the player;
		repeat with current rank running from N - 4 to N:
			change the test rank to the current rank;
			unless the player carries a matching card:
				if the current rank is N - 4 and the current rank is 9 and the player carries an ace card, do nothing;
				otherwise change straightness to false.

	A card can be quadrupled, tripled, paired or uncombined.

	Test rank is a number that varies. Definition: a card is matching if its rank is the test rank.

	A hand-ranking rule (this is the counting multiples rule):
		now every card is uncombined;
		repeat with current rank running from 1 to 13:
			change test rank to current rank;
			let N be the number of matching cards held by the player;
			if N is 4:
				increase the quadruple count by 1;
				now every matching card held by the player is quadrupled;
			if N is 3:
				increase the triple count by 1;
				now every matching card held by the player is tripled;
			if N is 2:
				increase the pair count by 1;
				now every matching card held by the player is paired.

	A hand-ranking rule (this is the move aces up unless there's a low straight rule):
		unless the straightness is true and the lowest card carried by the player is an ace card and the rank of the highest card carried by the player is 5,
			now every ace card which is carried by the player is carried by the player;
		if sort-debugging is true, say "-- after ace movement rule: [list hand]".

	A hand-ranking rule (this is the move pairs forward rule):
		while the player carries a paired card:
			let selection be the lowest paired card which is carried by the player;
			move the selection to the player;
			now the selection is uncombined;
		if sort-debugging is true, say "-- after pairs movement: [list hand]".

	A hand-ranking rule (this is the raise ace pairs rule):
		if the player carries exactly two ace cards:
			repeat with item running through ace cards which are carried by the player:
				move item to the player;
		if sort-debugging is true, say "-- after paired-ace movement: [list hand]".

	A hand-ranking rule (this is the move multiples forward rule):
		while the player carries a tripled card:
			let selection be the lowest tripled card which is carried by the player;
			move the selection to the player;
			now the selection is uncombined;
		while the player carries a quadrupled card:
			let selection be the lowest quadrupled card which is carried by the player;
			move the selection to the player;
			now the selection is uncombined;
		if sort-debugging is true, say "-- after multiples movement rule: [list hand]".

	Definition: a card is ace if its rank is 1.
	Definition: a card is king if its rank is 13.

	A hand-ranking rule (this is the royal-flush rule):
		if flushness is true and straightness is true and the highest card carried by the player is king and the lowest card carried by the player is ace, royal flush.

	A hand-ranking rule (this is the straight-flushes rule):
		if flushness is true and straightness is true, straight flush.

	A hand-ranking rule (this is the four-of-a-kind rule):
		if the quadruple count is 1, four of a kind.

	A hand-ranking rule (this is the full-house rule):
		if the pair count is 1 and the triple count is 1, full house.

	A hand-ranking rule (this is the flushes rule):
		if flushness is true, flush.

	A hand-ranking rule (this is the straights rule):
		if straightness is true, straight.

	A hand-ranking rule (this is the three-of-a-kind rule):
		if triple count is 1, three of a kind.

	A hand-ranking rule (this is the two-pair rule):
		if the pair count is 2, two pairs.

	A hand-ranking rule (this is the pair rule):
		if the pair count is 1, pair.

	A hand-ranking rule (this is the default rule):
		high card.

	Sort-debugging is a truth state that varies.
