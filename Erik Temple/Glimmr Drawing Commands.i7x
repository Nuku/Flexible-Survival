Version 2/101030 of Glimmr Drawing Commands (for Glulx only) by Erik Temple begins here.

"Provides commands for displaying images, shape primitives (such as rectangles, boxes, and lines), user-specified bitmap drawings, image maps, and for text-painting using 'fonts' with glyphs composed of either bitmaps or image files."


Part - Inclusions

Include version 9 of Flexible Windows by Jon Ingold.
[Include version 3 of Fixed Point Maths by Michael Callaghan.]


Part - Use options

Use MAX_ARRAYS of 3000.
Use MAX_STATIC_DATA of 500000.


Part - Console settings
[This is a macro that allows the extension to identify itself in the Glimmr console window with fewer keystrokes on my part.]

To say DC:
	say "[bracket]Glimmr DC[close bracket]: ".


Chapter - The null figure

[Inform users are not allowed to set a figure value of "nothing"--if we leave a figure unspecified, the cover art (or the built-in generic cover art) will print instead. Here, we set up a fake figure to stand in for "nothing".]

Figure of Null is the file of cover art. [The file of cover art is used for the declaration because Inform will ensure that an image is provided. In practice, we simply don't print the image if its resource ID corresponds to Figure of Null]


Part - Primitives


Chapter - Rectangles


Section - Dimensioned rectangle
[The dimensioned rectangle reflects Glulx Inform's I6-level rectangle command, which provides dimensions for the rectangle rather than start and endpoints.]

To dimrectdraw (hue - a number) in (win - a g-window) at (x1 - a number) by/x (y1 - a number) with size/dimensions (width - a number) by/x (height - a number):
	(- DrawDimRect({hue}, {win}, {x1}, {y1}, {width}, {height}); -)

To draw/display a/-- rectangle/rect (hue - a number) in (win - a g-window) at (x1 - a number) by/x (y1 - a number) with size/dimensions (width - a number) by/x (height - a number):
	dimrectdraw (hue) in (win) at (x1) by (y1) with size (width) by (height);
	#if utilizing Glimmr debugging;
	say "[>console][DC]Drawing a rectangle of color [hue] in [i][win][/i] with upper left ([x1], [y1]) and dimensions [width] by [height].[<]";
	#end if.

To draw/display a/-- rectangle/rect (hue - a number) in (win - a g-window) at (coord1 - a list of numbers) with size/dimensions (width - a number) by/x (height - a number):
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	draw a rectangle (hue) in (win) at (x1) by (y1) with size (width) by (height);

To rect/rectangle (coord1 - a list of numbers) size (width - a number) by/x (height - a number):
	if the type of the current graphics window is not g-graphics:
		rule fails;
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	draw a rectangle (current foreground-color) in current graphics window at x1 by y1 with size width by height;


Include (-

[ DrawDimRect hue win x1 y1 width height ;
	if (win.ref_number) {
		glk_window_fill_rect(win.ref_number, hue, x1, y1, width, height);
	}
];

-).


Section - Rectangle

To rectdraw (hue - a number) in (win - a g-window) from (x1 - a number) by (y1 - a number) to (x2 - a number) by (y2 - a number):
	(- DrawRect({hue}, {win}, {x1}, {y1}, {x2}, {y2}); -)

To draw/display a/-- rectangle/rect (hue - a number) in (win - a g-window) from (x1 - a number) by/x (y1 - a number) to (x2 - a number) by/x (y2 - a number):
	rectdraw (hue) in (win) from (x1) by (y1) to (x2) by (y2);
	#if utilizing Glimmr debugging;
	say "[>console][DC]Drawing a rectangle of color [hue] in [i][win][/i] with upper left ([x1], [y1]) and lower right ([x2], [y2]).[<]";
	#end if.

To draw/display a/-- rectangle/rect (hue - a number) in (win - a g-window) from (coord1 - a list of numbers) to (coord2 - a list of numbers):
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	let x2 be entry 1 of coord2;
	let y2 be entry 2 of coord2;
	rectdraw (hue) in (win) from (x1) by (y1) to (x2) by (y2).

To rect/rectangle (coord1 - a list of numbers) to (coord2 - a list of numbers):
	if the type of the current graphics window is not g-graphics:
		say "*** Error: Short-form rectangle-drawing directive ignored. The current graphics window global was not correctly specified.";
		rule fails;
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	let x2 be entry 1 of coord2;
	let y2 be entry 2 of coord2;
	draw a rectangle (current foreground-color) in (current graphics window) from (x1) by (y1) to (x2) by (y2).

Include (-

[ DrawRect hue win x1 y1 x2 y2 ;
	if (win.ref_number) {
		glk_window_fill_rect(win.ref_number, hue, x1, y1, x2 - x1, y2 - y1 );
	}
];

-).


Chapter - Outlined rectangles


Section - Box

To boxdraw (hue - a number) in (win - a g-window) from (x1 - a number) by (y1 - a number) to (x2 - a number) by (y2 - a number) with (wgt - a number), outlined or inset:
	(- DrawBox({hue}, {wgt}, {win}, {x1}, {y1}, {x2}, {y2}, {phrase options}); -)

To draw/display a/-- box (hue - a number) in (win - a g-window) from (x1 - a number) by/x (y1 - a number) to (x2 - a number) by/x (y2 - a number) with (wgt - a number) pixel/pixels/px/-- line-weight/stroke, outlined or inset:
	if outlined:
		boxdraw (hue) in (win) from (x1) by (y1) to (x2) by (y2) with (wgt), outlined;		
	else if inset:
		boxdraw (hue) in (win) from (x1) by (y1) to (x2) by (y2) with (wgt), inset;
	else:
		boxdraw (hue) in (win) from (x1) by (y1) to (x2) by (y2) with (wgt);
	#if utilizing Glimmr debugging;
	say "[>console][DC]Drawing a box of color [hue] in [i][win][/i] with upper left ([x1], [y1]) and lower right ([x2], [y2]), line-weight [wgt] px[if outlined]; line is drawn outside the bounds of the box[else if inset]; line is drawn inside the bounds of the box[end if].[<]";
	#end if;

To draw/display a/-- box (hue - a number) in (win - a g-window) from (coord1 - a list of numbers) to (coord2 - a list of numbers) with (wgt - a number) pixel/pixels/px/-- line-weight/stroke, outlined or inset:
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	let x2 be entry 1 of coord2;
	let y2 be entry 2 of coord2;
	if outlined:
		boxdraw (hue) in (win) from (x1) by (y1) to (x2) by (y2) with (wgt), outlined;
	else if inset:
		boxdraw (hue) in (win) from (x1) by (y1) to (x2) by (y2) with (wgt), inset;
	else:
		boxdraw (hue) in (win) from (x1) by (y1) to (x2) by (y2) with (wgt);
		
To box (coord1 - a list of numbers) to (coord2 - a list of numbers) at (wgt - a number) px/pixels/pixel, outlined or inset: 
	if the type of the current graphics window is not g-graphics:
		#if utilizing Glimmr debugging;
		say "*** Error: Short-form box-drawing directive ignored. The current graphics window global was not correctly specified.";
		#end if;
		rule fails;
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	let x2 be entry 1 of coord2;
	let y2 be entry 2 of coord2;
	if outlined:
		boxdraw (current foreground-color) in (current graphics window) from (x1) by (y1) to (x2) by (y2) with (wgt), outlined;
	else if inset:
		boxdraw (current foreground-color) in (current graphics window) from (x1) by (y1) to (x2) by (y2) with (wgt), inset;
	else:
		boxdraw (current foreground-color) in (current graphics window) from (x1) by (y1) to (x2) by (y2) with (wgt).


Include (-

[ DrawBox hue wgt win x1 y1 x2 y2 outline_opt ;
! Draws four rectangles that outline the coordinates given as input on the I7 level.
	if (win.ref_number) {
		if (outline_opt & 2) {
			glk_window_fill_rect(win.ref_number, hue, x1, y1, x2 - x1, wgt);
			glk_window_fill_rect(win.ref_number, hue, x2 - wgt, y1, wgt, y2 - y1);
			glk_window_fill_rect(win.ref_number, hue, x1, y2 - wgt, x2 - x1, wgt);
			glk_window_fill_rect(win.ref_number, hue, x1, y1, wgt, y2 - y1);
		}
		if (outline_opt & 1) {
			glk_window_fill_rect(win.ref_number, hue, x1 - wgt, y1 - wgt, wgt + x2 - x1, wgt);
			glk_window_fill_rect(win.ref_number, hue, x2, y1 - wgt, wgt, wgt + y2 - y1);
			glk_window_fill_rect(win.ref_number, hue, x1 - wgt, y2, wgt + wgt + x2 - x1, wgt);
			glk_window_fill_rect(win.ref_number, hue, x1 - wgt, y1 - wgt, wgt, wgt + y2 - y1);
		}
		if (~~outline_opt) {
			glk_window_fill_rect(win.ref_number, hue, x1 - (wgt / 2), y1 - (wgt / 2), x2 - x1, wgt);
			glk_window_fill_rect(win.ref_number, hue, x2 - (wgt / 2), y1 - (wgt / 2), wgt, (y2 - y1) + wgt);
			glk_window_fill_rect(win.ref_number, hue, x1 - (wgt / 2), y2 - (wgt / 2), x2 - x1, wgt);
			glk_window_fill_rect(win.ref_number, hue, x1 - (wgt / 2), y1 - (wgt / 2), wgt, y2 - y1);
		}
	}
];

-).


Section - Stroked Rectangle

To strectdraw (hue - a number) in (win - a g-window) from (x1 - a number) by (y1 - a number) to (x2 - a number) by (y2 - a number) with (wgt - a number) stroke of (color - a number):
	(- DrawStrokedRect({hue}, {wgt}, {win}, {x1}, {y1}, {x2}, {y2}, {color}); -)

To draw/display a/-- rectangle/rect (hue - a number) in (win - a g-window) from (x1 - a number) by/x (y1 - a number) to (x2 - a number) by/x (y2 - a number) with (wgt - a number) pixel/pixels/px/-- line-weight/stroke (color - a number):
	strectdraw (hue) in (win) from (x1) by (y1) to (x2) by (y2) with (wgt) stroke of (color);
	#if utilizing Glimmr debugging;
	say "[>console][DC]Drawing a stroked rectangle of color [hue] in [i][win][/i] with upper left ([x1], [y1]) and lower right ([x2], [y2]); stroke of line-weight [wgt] pixels (color [color]) drawn inside the bounds of the box.[<]";
	#end if;

To draw/display a/-- rectangle/rect (hue - a number) in (win - a g-window) from (coord1 - a list of numbers) to (coord2 - a list of numbers) with (wgt - a number) pixel/pixels/px/-- line-weight/stroke (color - a number):
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	let x2 be entry 1 of coord2;
	let y2 be entry 2 of coord2;
	strectdraw (hue) in (win) from (x1) by (y1) to (x2) by (y2) with (wgt) stroke of (color).

To stroked/str/stroke rect/rectangle (coord1 - a list of numbers) to (coord2 - a list of numbers) at (wgt - a number) px/pixels/pixel:
	if the type of the current graphics window is not g-graphics:
		#if utilizing Glimmr debugging;
		say "*** Error: Short-form rectangle-drawing directive ignored. The current graphics window global was not correctly specified.";
		#end if;
		rule fails;
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	let x2 be entry 1 of coord2;
	let y2 be entry 2 of coord2;
	strectdraw (current foreground-color) in (current graphics window) from (x1) by (y1) to (x2) by (y2) with (wgt) stroke of (current background-color).

Include (-

[ DrawStrokedRect hue wgt win x1 y1 x2 y2 color;
	if (win.ref_number) {
		glk_window_fill_rect(win.ref_number, color, x1, y1, x2 - x1, y2 - y1 );
		glk_window_fill_rect(win.ref_number, hue, x1 + wgt, y1 + wgt, (x2 - x1) - (wgt * 2), (y2 - y1) - (wgt * 2) );
	}
];

-).


Chapter - Lines


Section - Basic line
[The code for drawing a line between any two points was ported from the GREX module of the GWindows system by L. Ross Raszewski (http://gwindows.trenchcoatsoft.com). The code is there indicated to having been based on code by Paul Heckbert.]

To linedraw (hue - a number) in (win - a g-window) from (x1 - a number) by/x (y1 - a number) to (x2 - a number) by/x (y2 - a number) with (wgt - a number):
	let dd be x2 - x1;
	let ax be a number;
	let ay be a number;
	let sx be a number;
	let sy be a number;
	if dd >= 0:
		let ax be 2 times dd;
		let sx be 1;
	else:
		let ax be -2 times dd;
		let sx be -1;
	let dd be y2 - y1;
	if dd >= 0:
		let ay be 2 times dd;
		let sy be 1;
	else:
		let ay be -2 times dd;
		let sy be -1;
	let x be x1;
	let y be y1;
	if ax > ay:
		let x1 be 1;
		let d be ay - (ax / 2);
		while x is not x2:
			if d >= 0:
				let y be y + sy;
				let d be d - ax;
			let x be x plus sx;
			let d be d plus ay;
			if x is x2 or y is not y1:
				if sx > 0:
					dimrectdraw (hue) in win at (x - x1) by y1 with size x1 by wgt;
				else:
					dimrectdraw (hue) in win at x by y1 with size x1 by wgt;
				let y1 be y;
				let x1 be 1;
			else:
				increase x1 by 1;
	else:
		let y1 be 1;
		let d be ax - (ay / 2);
		while y is not y2:
			if d >= 0:
				let x be x + sx;
				let d be d - ay;
			let y be y + sy;
			let d be d + ax;
			if x is not x1 or y is y2:
				if sy > 0:
					dimrectdraw (hue) in win at x1 by (y - y1) with size wgt by y1;
				else:
					dimrectdraw (hue) in win at x1 by y with size wgt by y1;
				let y1 be 1;
				let x1 be x;
			else:
				increase y1 by 1;


To draw a/-- line (hue - a number) in (win - a g-window) from (x1 - a number) by/x (y1 - a number) to (x2 - a number) by/x (y2 - a number) with (wgt - a number) pixel/pixels/px/-- line-weight/stroke:
	#if utilizing Glimmr debugging;
	say "[>console][DC]Drawing a line of color [hue] in [i][win][/i] from ([x1], [y1]) to ([x2], [y2]), line-weight [wgt] pixels.[<]";
	#end if;
	linedraw (hue) in (win) from (x1) by (y1) to (x2) by (y2) with (wgt).
		

To draw a/-- line (hue - a number) in (win - a g-window) from (coord1 - a list of numbers) to (coord2 - a list of numbers) with (wgt - a number) pixel/pixels/px/-- line-weight/stroke:
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	let x2 be entry 1 of coord2;
	let y2 be entry 2 of coord2;
	Draw a line (hue) in win from x1 by y1 to x2 by y2 with wgt pixel line-weight.

To line (coord1 - a list of numbers) to (coord2 - a list of numbers) at (wgt - a number) px/pixel/pixels:
	if the type of the current graphics window is not g-graphics:
		say "*** Error: Short-form line-drawing directive ignored. The current graphics window global was not correctly specified.";
		rule fails;
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	let x2 be entry 1 of coord2;
	let y2 be entry 2 of coord2;
	Draw a line (current foreground-color) in current graphics window from x1 by y1 to x2 by y2 with wgt pixel line-weight.
	

Section - Line using angle + distance

To draw a line (hue - a number) in (win - a g-window) from (x1 - a number) by (y1 - a number) measuring/of (distance - a number) pixel/pixels/px/-- long/-- at (angle - a number) deg/degree/degrees/-- angle/-- with (wgt - a number) pixel/pixels/px/-- line-weight/stroke:
	let xx be (sine of angle) * distance to the nearest whole number;
	let yy be (cosine of angle) * distance to the nearest whole number;
	let x2 be x1 + xx;	
	let y2 be y1 - yy;
	#if utilizing Glimmr debugging;
	say "[>console][DC]Converting angle ([angle]°) and distance ([distance]) to coordinate pair ([x2], [y2]) in preparation for line-drawing.[<]";
	#end if;
	Draw a line (hue) in (win) from (x1) by (y1) to (x2) by (y2) with (wgt) pixel line-weight.
	
To draw a line (hue - a number) in (win - a g-window) from (coord1 - a list of numbers) measuring (distance - a number) pixels/pixel/-- long/-- at (angle - a number) deg/degree/degrees/-- angle/-- with (wgt - a number) pixel/pixels/px/-- line-weight/stroke:
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	Draw a line (hue) in (win) from (x1) by (y1) measuring (distance) pixels at (angle) with (wgt) pixel line-weight.

To line (coord1 - a list of numbers) dist/distance (distance - a number) px/pixels/pixel (angle - a number) deg/degree/degrees/-- angle/at (wgt - a number) px/pixels/pixel wgt/wt/weight/--:
	if the type of the current graphics window is not g-graphics:
		say "*** Error: Short-form line-drawing directive ignored. The current graphics window global was not correctly specified.";
		rule fails;
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	Draw a line (current foreground-color) in (current graphics window) from (x1) by (y1) measuring (distance) pixels at (angle) with (wgt) pixel line-weight.

To decide what number is (rad - a real number) rad/radians:
	decide on rad in degrees to the nearest whole number.


Chapter - Images


Section - Image

To drimage (ID - a figure name) in (win - a g-window) at (x1 - a number) by (y1 - a number):
	(- DrawImage({ID}, {win}, {x1}, {y1}); -)

To display/draw the/-- image/-- (ID - a figure name) in (win - a g-window) at (x1 - a number) by/x (y1 - a number):
	#if utilizing Glimmr debugging;
	say "[>console][DC]Drawing image [ID] in [i][win][/i] at ([x1], [y1]).[<]";
	#end if;
	drimage (ID) in (win) at (x1) by (y1).

To display/draw the/an/-- image/-- (ID - a figure name) in (win - a g-window) at (coord1 - a list of numbers):
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	drimage (ID) in (win) at (x1) by (y1).

To image (ID - a figure name) at (coord1 - a list of numbers):
	if the type of the current graphics window is not g-graphics:
		say "*** Error: Short-form image-drawing directive ignored. The current graphics window global was not correctly specified.";
		rule fails;
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	drimage (ID) in (current graphics window) at (x1) by (y1).

Include (-

[DrawImage ID win x y ;
	if (win.ref_number) {
		glk_image_draw(win.ref_number, ResourceIDsOfFigures-->ID, x, y);
	}
];  

-).


Section - Image with specified size

To drscimage (ID - a figure name) in (win - a g-window) at (x1 - a number) by/x (y1 - a number) with size/dimensions (width - a number) by/x (height - a number):
	(- DrawImageScaled({ID}, {win}, {x1}, {y1}, {width}, {height}); -)
	
To display/draw the/an/-- image/-- (ID - a figure name) in (win - a g-window) at (x1 - a number) by/x (y1 - a number) with size/dimensions (width - a number) by/x (height - a number):
	#if utilizing Glimmr debugging;
	say "[>console][DC]Drawing image [ID] in [i][win][/i] at ([x1], [y1]), scaled to dimensions [width] x [height].[<]";
	#end if;
	drscimage (ID) in (win) at (x1) by (y1) with dimensions (width) by (height).

To display/draw the/an/-- image/-- (ID - a figure name) in (win - a g-window) at (coord1 - a list of numbers) with size/dimensions (width - a number) by/x (height - a number):
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	drscimage (ID) in (win) at (x1) by (y1) with dimensions (width) by (height).

To image (ID - a figure name) at (coord1 - a list of numbers) size (width - a number) by/x (height - a number):
	if the type of the current graphics window is not g-graphics:
		say "*** Error: Short-form image-drawing directive ignored. The current graphics window global was not correctly specified.";
		rule fails;
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	drscimage (ID) in (current graphics window) at (x1) by (y1) with dimensions (width) by (height).


Include (-

[DrawImageScaled ID win x y image_x image_y ;
	if (win.ref_number) {
		glk_image_draw_scaled(win.ref_number, ResourceIDsOfFigures-->ID, x, y, image_x, image_y);
	}
];  

-).


Part - Drawing bitmaps
[Bitmaps are drawn by coloring individual pixels (or pixels in groups), and are specified by the user using an I7 list. Since they are drawn by setting pixels, they cannot be scaled as PNG or JPEG images can.]

Chapter - Monochrome bitmaps

Section - Monochrome bitmap with background color

To drmonobitmap (HUE - a number) in (WIN - a g-window) at (X1 - a number) by/x (Y1 - a number) using (BIT_MAP - a list of lists of numbers) with dot/-- size (WGT - a number) pixel/pixels/px/-- and background (bkgd - a number):
	let row be Y1;
	let column be X1;
	let the bit-height be the number of entries of BIT_MAP;
	let WDT be the number of entries in entry 1 of BIT_MAP;
	dimrectdraw (BKGD) in (WIN) at (column) by (row) with size (WDT * WGT) by (bit-height * WGT);
	repeat with current-row running through BIT_MAP:
		repeat with index running through current-row:
			if index > 0:
				dimrectdraw (HUE) in (WIN) at (column) by (row) with size (WGT) by (WGT);
			increase column by WGT;
		increase row by WGT;
		now column is X1.

To draw/display a/-- monochrome bitmap (HUE - a number) in (WIN - a g-window) at (X1 - a number) by/x (Y1 - a number) using (BIT_MAP - a list of lists of numbers) with dot/-- size (WGT - a number) pixel/pixels/px/-- and background (bkgd - a number):
	#if utilizing Glimmr debugging;
	say "[>console][DC]Drawing monochrome bitmap in [i][win][/i] with upper left ([X1], [Y1]) and dot size [WGT] (bitmap is [number of entries of bit_map] long, with width [the number of entries in entry 1 of BIT_MAP]; foreground color [hue], background color [bkgd].[<]";
	#end if;
	drmonobitmap (HUE) in (WIN) at (X1) by (Y1) using (BIT_MAP) with dot size (WGT) px and background (BKGD).
	
To draw/display a/-- monochrome bitmap (HUE - a number) in (WIN - a g-window) at (COORD1 - a list of numbers) using (WDT - a number) bit/-- wide data of/from/-- (BIT_MAP - a list of lists of numbers) with dot/-- size (WGT - a number) pixel/pixels/px/-- and background (bkgd - a number):
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	display a monochrome bitmap (HUE) in (WIN) at (X1) by (Y1) using (BIT_MAP) with dot size (WGT) px and background (BKGD).


Section - Monochrome bitmap without background color

To drmonobitmap (HUE - a number) in (WIN - a g-window) at (X1 - a number) by/x (Y1 - a number) using (BIT_MAP - a list of lists of numbers) with dot/-- size (WGT - a number) pixel/pixels/px/--:
	let row be Y1;
	let column be X1;
	let the bit-height be the number of entries of BIT_MAP;
	repeat with current-row running through BIT_MAP:
		repeat with index running through current-row:
			if index > 0:
				dimrectdraw (HUE) in (WIN) at (column) by (row) with size (WGT) by (WGT);
			increase column by WGT;
		increase row by WGT;
		now column is X1.
	
To draw/display a/-- monochrome bitmap (HUE - a number) in (WIN - a g-window) at (X1 - a number) by/x (Y1 - a number) using (BIT_MAP - a list of lists of numbers) with dot/-- size (WGT - a number) pixel/pixels/px/--:
	#if utilizing Glimmr debugging;
	say "[>console][DC]Drawing monochrome bitmap in [i][win][/i] with upper left ([X1], [Y1]) and dot size [WGT] (bitmap is [number of entries of bit_map] long, with width [the number of entries in entry 1 of BIT_MAP]; color [hue].[<]";
	#end if;
	drmonobitmap (HUE) in (WIN) at (X1) by (Y1) using (BIT_MAP) with dot size (WGT) px.

To draw/display a/-- monochrome bitmap (HUE - a number) in (WIN - a g-window) at (COORD1 - a list of numbers) using (BIT_MAP - a list of lists of numbers) with dot/-- size (WGT - a number) pixel/pixels/px/--:
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	display a monochrome bitmap (HUE) in (WIN) at (X1) by (Y1) using (BIT_MAP) with dot size (WGT) px.


Section - Short form of monochrome bitmap

To monochrome/mono bitmap/bmp (BIT_MAP - a list of lists of numbers) at (COORD1 - a list of numbers) dot/-- size (WGT - a number) pixel/pixels/px/--, backgrounded:
	if the type of the current graphics window is not g-graphics:
		say "*** Error: Short-form monochrome bitmap directive ignored. The current graphics window global was not correctly specified.";
		rule fails;
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	if backgrounded:
		display a monochrome bitmap (current foreground-color) in (current graphics window) at (X1) by (Y1) using (BIT_MAP) with dot size (WGT) px and background (current background-color);
	else:
		display a monochrome bitmap (current foreground-color) in (current graphics window) at (X1) by (Y1) using (BIT_MAP) with dot size (WGT) px.


Chapter - Polychrome bitmaps

[In a polychrome bitmap, we can set a decimal version of any hex RGB-color we like in our bitmap array. To supply a null value (i.e., draw nothing to the screen for a given bit), use any negative number. If we have specified a background color, we will see that background color wherever the null bit is present in our bitmap array.]


Section - Polychrome bitmap with background color

To drpolybitmap in (WIN - a g-window) at (X1 - a number) by/x (Y1 - a number) using (BIT_MAP - a list of lists of numbers) with dot/-- size (WGT - a number) pixel/pixels/px/-- and background (bkgd - a number):
	let row be Y1;
	let column be X1;
	let the bit-height be the number of entries of BIT_MAP;
	let WDT be the number of entries in entry 1 of BIT_MAP;
	dimrectdraw (BKGD) in (WIN) at (column) by (row) with size (WDT * WGT) by (bit-height * WGT);
	repeat with current-row running through BIT_MAP:
		repeat with index running through current-row:
			if index > -1:
				dimrectdraw (index) in (WIN) at (column) by (row) with size (WGT) by (WGT);
			increase column by WGT;
		increase row by WGT;
		now column is X1.

To draw/display a/-- polychrome bitmap in (WIN - a g-window) at (X1 - a number) by/x (Y1 - a number) using (BIT_MAP - a list of lists of numbers) with dot/-- size (WGT - a number) pixel/pixels/px/-- and background (bkgd - a number):
	#if utilizing Glimmr debugging;
	say "[>console][DC]Drawing polychrome bitmap in [i][win][/i] with upper left ([X1], [Y1]) and dot size [WGT] (bitmap is [number of entries of bit_map] long, with width [the number of entries in entry 1 of BIT_MAP]); background color [bkgd].[<]";
	#end if;
	drpolybitmap in (WIN) at (X1) by (Y1) using (BIT_MAP) with dot size (WGT) px and background (BKGD).

To draw/display a/-- polychrome bitmap in (WIN - a g-window) at (COORD1 - a list of numbers) using (BIT_MAP - a list of lists of numbers) with dot/-- size (WGT - a number) pixel/pixels/px/-- and background (bkgd - a number):
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	display a polychrome bitmap in (WIN) at (X1) by (Y1) using (BIT_MAP) with dot size (WGT) px and background (BKGD).


Section - Polychrome bitmap without background color

To drpolybitmap in (WIN - a g-window) at (X1 - a number) by/x (Y1 - a number) using (BIT_MAP - a list of lists of numbers) with dot/-- size (WGT - a number) pixel/pixels/px/--:
	let row be Y1;
	let column be X1;
	repeat with current-row running through BIT_MAP:
		repeat with index running through current-row:
			if index > -1:
				dimrectdraw (index) in (WIN) at (column) by (row) with size (WGT) by (WGT);
			increase column by WGT;
		increase row by WGT;
		now column is X1.

To draw/display a/-- polychrome bitmap in (WIN - a g-window) at (X1 - a number) by/x (Y1 - a number) using (BIT_MAP - a list of lists of numbers) with dot/-- size (WGT - a number) pixel/pixels/px/--:
	#if utilizing Glimmr debugging;
	say "[>console][DC]Drawing polychrome bitmap in [i][win][/i] with upper left ([X1], [Y1]) and dot size [WGT] (bitmap is [number of entries of bit_map] long, with width [the number of entries in entry 1 of BIT_MAP]).[<]";
	#end if;
	drpolybitmap in (WIN) at (X1) by (Y1) using (BIT_MAP) with dot size (WGT) px.

To draw/display a/-- polychrome bitmap in (WIN - a g-window) at (COORD1 - a list of numbers) using (BIT_MAP - a list of lists of numbers) with dot/-- size (WGT - a number) pixel/pixels/px/--:
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	display a polychrome bitmap in (WIN) at (X1) by (Y1) using (BIT_MAP) with dot size (WGT) px.


Section - Short form of polychrome bitmap

To polychrome/poly bitmap/bmp (BIT_MAP - a list of lists of numbers) at (COORD1 - a list of numbers) dot/-- size (WGT - a number) pixel/pixels/px/--, backgrounded:
	if the type of the current graphics window is not g-graphics:
		say "*** Error: Short-form polychrome bitmap directive ignored. The current graphics window global was not correctly specified.";
		rule fails;
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	if backgrounded:
		display a polychrome bitmap in (current graphics window) at (X1) by (Y1) using (BIT_MAP) with dot size (WGT) px and background (current background-color);
	else:
		display a polychrome bitmap in (current graphics window) at (X1) by (Y1) using (BIT_MAP) with dot size (WGT) px.


Chapter - Fonts


Section - The font base class

A font is a kind of thing. 
A font has a table name called the font table.
A font has a number called the font-height. The font-height is usually 1.
A font has some text called the colophon. The colophon is usually "".


Section - Private naming of fonts
[Replace this section if you need the player to be able to refer to fonts.]

A font is usually privately-named.


Section - Bitmap fonts

A bitmap font is a kind of font.
A bitmap font has a list of numbers called the glyph map. The glyph map is usually {0}.


Section - Dummy bitmap typeface
[Inform requires that there be at least one font in the world. Here we include a dummy font object, which can also be used as a null-object should we need it.]

Null-bitmap-typeface is a bitmap font. 
The font table of a bitmap font is usually the Table of Null Bitmap Font Parameters.

Table of Null Bitmap Font Parameters
glyph	char	index	width	height	yoffset	advance
indexed text	number	number	number	number	number	number
with 1 blank row


Section - Image-based fonts

An image-based font is a kind of font.
An image-based font has a number called the cursor-width. The cursor-width is usually 1.

[The background-margin defines how far outside the bounds of the characters the background color should be drawn. This will be scaled by both the window and "sprite" scaling factors.]
An image-based font has a number called the background-margin. The background-margin is usually 1.


Section - Null image typeface
[Inform requires that there be at least one font in the world. Here we include a dummy font object, which can also be used as a null-object should we need it.]

Null-image-typeface is an image-based font.
The font table of an image-based font is usually the Table of Null Image Font Parameters.

Table of Null Image Font Parameters
glyph	char	glyph-ref	yoffset	advance
indexed text	number	figure name	number	number
with 1 blank row


Section - Crediting fonts

Report requesting the story file version (this is the announce colophon rule):
	repeat with typeface running through the list of fonts:
		unless the colophon of the typeface is "":
			say "[one of]Typefaces used include:[line break][or][stopping][italic type][typeface]:[roman type] [colophon of the typeface][line break]"


Section - Globals
[These globals are needed to steer around Inform's aggressive cap on the number of temp variables.]

g-LEN is a number variable.
column-index is a number variable.
char_code is a number variable.
g-scan is a number variable.

Chapter - Text-painting with bitmap fonts


Section - Bitmap strings with a background color

To paintbittext (hue - a number) of (str - indexed text) in (win - a g-window) at (X1 - a number) by/x (Y1 - a number) using font/-- (typf - a font) with dot/-- size (wgt - a number) pixel/pixels/px/-- and background (bkgd - a number), center-aligned or right-aligned:
	unless STR is "":
		now g-LEN is the length of STR set in TYPF;
		if right-aligned:
			now X1 is X1 - (g-LEN * WGT);
		if center-aligned:
			now X1 is X1 - (g-LEN * WGT) / 2;
		now current g-row is Y1;
		now current g-column is X1;
		now column-index is current g-column;
		dimrectdraw (BKGD) in (WIN) at (current g-column - WGT) by (current g-row - WGT) with size (WGT * g-LEN) + WGT by (WGT * font-height of TYPF) + WGT;
		repeat with N running from 1 to the number of characters in STR:
			now char_code is the character code of position N of STR;
			if there is a char of char_code in the font table of TYPF:
				choose row with a char of char_code in the font table of TYPF;
			else:
				choose row with a char of 32 in the font table of TYPF;
			now g-scan is 0;
			[let bitmap-size be width entry * height entry;]
			repeat with pointer running from (index entry + 1) to (index entry + (width entry * height entry)):
				increase g-scan by 1;
				if g-scan > width entry:
					increase current g-row by WGT;
					now current g-column is column-index;
					let g-scan be 1;
				if entry pointer of the glyph map of TYPF is 1:
					dimrectdraw (HUE) in WIN at (current g-column) by current g-row + (yoffset entry * WGT) with size WGT by WGT;
				increase current g-column by WGT;
			increase column-index by (advance entry * WGT);
			now current g-column is column-index;
			now current g-row is Y1;

To paint/display a/-- bitmap text (hue - a number) of (str - indexed text) in (win - a g-window) at (X1 - a number) by/x (Y1 - a number) using font/-- (typf - a font) with dot/-- size (wgt - a number) pixel/pixels/px/-- and background (bkgd - a number), center-aligned or right-aligned:
	#if utilizing Glimmr debugging;
	say "[>console][DC]Painting bitmap text string [quotation mark][STR][quotation mark] in [i][WIN][/i] with origin ([X1], [Y1]) and dot size [WGT][if center-aligned], center-aligned[end if][if right-aligned], right-aligned[end if]. Font: [TYPF], background color: [BKGD].[<]";
	#end if;
	if center-aligned:
		paintbittext (HUE) of (STR) in (WIN) at (X1) by (Y1) using (TYPF) with size (WGT) and background (BKGD), center-aligned;
		rule succeeds;
	if right-aligned:
		paintbittext (HUE) of (STR) in (WIN) at (X1) by (Y1) using (TYPF) with size (WGT) and background (BKGD), right-aligned;
		rule succeeds;
	paintbittext (HUE) of (STR) in (WIN) at (X1) by (Y1) using (TYPF) with size (WGT) and background (BKGD).

To paint/display a/-- bitmap text (hue - a number) of (str - indexed text) in (win - a g-window) at (coord1 - a list of numbers) using font/-- (typf - a font) with dot/-- size (wgt - a number) pixel/pixels/px/-- and background (bkgd - a number), center-aligned or right-aligned:
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	if center-aligned:
		paint bitmap text (HUE) of (STR) in (WIN) at (X1) by (Y1) using (TYPF) with size (WGT) and background (BKGD), center-aligned;
		rule succeeds;
	if right-aligned:
		paint bitmap text (HUE) of (STR) in (WIN) at (X1) by (Y1) using (TYPF) with size (WGT) and background (BKGD), right-aligned;
		rule succeeds;
	paint bitmap text (HUE) of (STR) in (WIN) at (X1) by (Y1) using (TYPF) with size (WGT) and background (BKGD).


Section - Bitmap strings without a background color

To paintbittext (hue - a number) of (str - indexed text) in (win - a g-window) at (X1 - a number) by/x (Y1 - a number) using font/-- (typf - a font) with/-- dot/-- size (wgt - a number) pixel/pixels/px/--, center-aligned or right-aligned:
	unless STR is "":
		now g-LEN is the length of STR set in TYPF;
		if right-aligned:
			let X1 be X1 - (g-LEN * WGT);
		if center-aligned:
			let X1 be X1 - (g-LEN * WGT) / 2;
		now current g-row is Y1;
		now current g-column is X1;
		let column-index be current g-column;
		repeat with N running from 1 to the number of characters in STR:
			now char_code is the character code of position N of STR;
			if there is a char of char_code in the font table of TYPF:
				choose row with a char of char_code in the font table of TYPF;
			else:
				choose row with a char of 32 in the font table of TYPF;
			let scan be 0;
			[let bitmap-size be width entry * height entry;]
			repeat with pointer running from (index entry + 1) to (index entry + (width entry * height entry)):
				increase scan by 1;
				if scan > width entry:
					increase current g-row by WGT;
					now current g-column is column-index;
					let scan be 1;
				if entry pointer of the glyph map of TYPF is 1:
					dimrectdraw (HUE) in WIN at (current g-column) by current g-row + (yoffset entry * WGT) with size WGT by WGT;
				increase current g-column by WGT;
			increase column-index by (advance entry * WGT);
			now current g-column is column-index;
			now current g-row is Y1;

To paint/display a/-- bitmap text (hue - a number) of (str - indexed text) in (win - a g-window) at (X1 - a number) by/x (Y1 - a number) using font/-- (typf - a font) with/-- dot/-- size (wgt - a number) pixel/pixels/px/--, center-aligned or right-aligned:
	#if utilizing Glimmr debugging;
	say "[>console][DC]Painting bitmap text string [quotation mark][STR][quotation mark] in [i][WIN][/i] with origin ([X1], [Y1]) and dot size [WGT][if center-aligned], center-aligned[end if][if right-aligned], right-aligned[end if]. Font: [TYPF].[<]";
	#end if;
	if center-aligned:
		paintbittext (HUE) of (STR) in (WIN) at (X1) by (Y1) using (TYPF) with size (WGT), center-aligned;
		rule succeeds;
	if right-aligned:
		paintbittext (HUE) of (STR) in (WIN) at (X1) by (Y1) using (TYPF) with size (WGT), right-aligned;
		rule succeeds;
	paintbittext (HUE) of (STR) in (WIN) at (X1) by (Y1) using (TYPF) with size (WGT).

To paint/display a/-- bitmap text (hue - a number) of (str - indexed text) in (win - a g-window) at (coord1 - a list of numbers) using font/-- (typf - a font) with dot/-- size (wgt - a number) pixel/pixels/px/--, center-aligned or right-aligned:
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	if center-aligned:
		paint bitmap text (HUE) of (STR) in (WIN) at (X1) by (Y1) using (TYPF) with size (WGT), center-aligned;
		rule succeeds;
	if right-aligned:
		paint bitmap text (HUE) of (STR) in (WIN) at (X1) by (Y1) using (TYPF) with size (WGT), right-aligned;
		rule succeeds;
	paint bitmap text (HUE) of (STR) in (WIN) at (X1) by (Y1) using (TYPF) with size (WGT).


Section - Short forms of bitmap texts

To bitmap/bmp text/txt (STR - indexed text) at (COORD1 - a list of numbers) size (WGT - a number) pixel/pixels/px/-- backgrounded/background/bkgd, center-aligned or right-aligned:
	if the type of the current graphics window is not g-graphics:
		say "*** Error: Short-form bitmap string directive ignored. The current graphics window global was not correctly specified.";
		rule fails;
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	if center-aligned:
		paint a bitmap text (current foreground-color) of (STR) in (current graphics window) at (X1) by (Y1) using (current font) with dot size (WGT) and background (current background-color), center-aligned;
		rule succeeds;
	if right-aligned:
		paint a bitmap text (current foreground-color) of (STR) in (current graphics window) at (X1) by (Y1) using (current font) with dot size (WGT) and background (current background-color), right-aligned;
		rule succeeds;
	else:
		paint a bitmap text (current foreground-color) of (STR) in (current graphics window) at (X1) by (Y1) using (current font) with dot size (WGT) and background (current background-color).

To bitmap/bmp text/txt (STR - indexed text) at (COORD1 - a list of numbers) size (WGT - a number) pixel/pixels/px/--, center-aligned or right-aligned:
	if the type of the current graphics window is not g-graphics:
		say "*** Error: Short-form bitmap string directive ignored. The current graphics window global was not correctly specified.";
		rule fails;
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	if center-aligned:
		paint a bitmap text (current foreground-color) of (STR) in (current graphics window) at (X1) by (Y1) using (current font) with dot size (WGT), center-aligned;
		rule succeeds;
	if right-aligned:
		paint a bitmap text (current foreground-color) of (STR) in (current graphics window) at (X1) by (Y1) using (current font) with dot size (WGT), right-aligned;
		rule succeeds;
	else:
		paint a bitmap text (current foreground-color) of (STR) in (current graphics window) at (X1) by (Y1) using (current font) with dot size (WGT).
		

Chapter - Text-painting with image-based fonts

Section - Text-painting with a background color

To paintimgtext of/-- (STR - indexed text) in (win - a g-window) at (X1 - a number) by/x (Y1 - a number) using font/-- (TYPF - a font) scaled at (SCF - a real number) with background (BKGD - a number) and margin of/-- (MARGIN - a number) pixel/pixels/px/--, center-aligned or right-aligned:
	unless STR is "":
		now g-LEN is the length of STR set in TYPF;
		now g-LEN is g-LEN times SCF to the nearest whole number;
		if right-aligned:
			let X1 be X1 - g-LEN;
			let X1 be X1 - (g-LEN / 2);
		now current g-row is Y1;
		now current g-column is X1;
		[let vertical-size be font-height of TYPF times SCF to the nearest whole number;]
		dimrectdraw (BKGD) in (WIN) at (current g-column - MARGIN) by (current g-row - MARGIN) with size (the length of STR set in TYPF times SCF to the nearest whole number + MARGIN + MARGIN) by (font-height of TYPF times SCF to the nearest whole number + MARGIN + MARGIN);
		repeat with N running from 1 to the number of characters in STR:
			now char_code is the character code of position N of STR;
			if there is a char of char_code in the font table of TYPF:
				choose row with a char of char_code in the font table of TYPF;
			else:
				choose row with a char of 32 in the font table of TYPF;
			let the chosen glyph be glyph-ref entry;
			let the yoffset be yoffset entry times SCF to the nearest whole number;
			now g-imgwidth is the image-width of chosen glyph;
			now g-imgheight is the image-height of chosen glyph;
			now g-imgwidth is g-imgwidth times SCF to the nearest whole number;
			now g-imgheight is g-imgheight times SCF to the nearest whole number;
			drscimage (chosen glyph) in (WIN) at (current g-column) by (current g-row + yoffset) with dimensions (g-imgwidth) by (g-imgheight);
			increase current g-column by the advance entry times SCF to the nearest whole number;

To paint/display an/-- image-based text of/-- (STR - indexed text) in (win - a g-window) at (X1 - a number) by/x (Y1 - a number) using font/-- (TYPF - a font) scaled at (SCF - a real number) with background (BKGD - a number) and margin of/-- (MARGIN - a number) pixel/pixels/px/--, center-aligned or right-aligned:
	#if utilizing Glimmr debugging;
	say "[>console][DC]Painting bitmap text string [quotation mark][STR][quotation mark] in [i][WIN][/i] with origin ([X1], [Y1])[if center-aligned], center-aligned[end if][if right-aligned], right-aligned[end if]. Font: [TYPF], scaled at [SCF], with background [BKGD] and margin of [MARGIN].[<]";
	#end if;
	if center-aligned:
		paintimgtext of (STR) in (WIN) at (X1) by (Y1) using (TYPF) scaled at (SCF) with background (BKGD) and margin (MARGIN), center-aligned;
	if right-aligned:
		paintimgtext of (STR) in (WIN) at (X1) by (Y1) using (TYPF) scaled at (SCF) with background (BKGD) and margin (MARGIN), right-aligned;
	paintimgtext of (STR) in (WIN) at (X1) by (Y1) using (TYPF) scaled at (SCF) with background (BKGD) and margin (MARGIN).

To paint/display an/-- image-based text (hue - a number) of (str - indexed text) in (win - a g-window) at (coord1 - a list of numbers) using font/-- (typf - a font) scaled at (SCF - a real number) with background (BKGD - a number) and margin of/-- (MARGIN - a number) pixel/pixels/px/--, center-aligned or right-aligned:
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	if center-aligned:
		paint image-based text of (STR) in (WIN) at (X1) by (Y1) using (TYPF) scaled at (SCF) with background (BKGD) and margin (MARGIN), center-aligned;
		rule succeeds;
	if right-aligned:
		paint image-based text of (STR) in (WIN) at (X1) by (Y1) using (TYPF) scaled at (SCF) with background (BKGD) and margin (MARGIN), right-aligned;
		rule succeeds;
	paint image-based text of (STR) in (WIN) at (X1) by (Y1) using (TYPF) scaled at (SCF) with background (BKGD) and margin (MARGIN).


Section - Text-painting without a background color

To paintimgtext of/-- (STR - indexed text) in (win - a g-window) at (X1 - a number) by/x (Y1 - a number) using font/-- (TYPF - a font) scaled at (SCF - a real number), center-aligned or right-aligned:
	unless STR is "":
		now g-LEN is the length of STR set in TYPF;
		now g-LEN is g-LEN times SCF to the nearest whole number;
		if right-aligned:
			let X1 be X1 - g-LEN;
		if center-aligned:
			let X1 be X1 - (g-LEN / 2);
		now current g-row is Y1;
		now current g-column is X1;
		let vertical-size be font-height of TYPF times SCF to the nearest whole number;
		repeat with N running from 1 to the number of characters in STR:
			let V be the character code of position N of STR;
			if there is a char of V in the font table of TYPF:
				choose row with a char of V in the font table of TYPF;
			else:
				choose row with a char of 32 in the font table of TYPF;
			let the chosen glyph be glyph-ref entry;
			let the yoffset be yoffset entry times SCF to the nearest whole number;
			now g-imgwidth is the image-width of chosen glyph;
			now g-imgheight is the image-height of chosen glyph;
			now g-imgwidth is g-imgwidth times SCF to the nearest whole number;
			now g-imgheight is g-imgheight times SCF to the nearest whole number;
			drscimage (chosen glyph) in (WIN) at (current g-column) by (current g-row + yoffset) with dimensions (g-imgwidth) by (g-imgheight);
			increase current g-column by the advance entry times SCF to the nearest whole number;

To paint/display an/-- image-based text of/-- (STR - indexed text) in (win - a g-window) at (X1 - a number) by/x (Y1 - a number) using font/-- (TYPF - a font) scaled at (SCF - a real number), center-aligned or right-aligned:
	#if utilizing Glimmr debugging;
	say "[>console][DC]Painting bitmap text string [quotation mark][STR][quotation mark] in [i][WIN][/i] with origin ([X1], [Y1])[if center-aligned], center-aligned[end if][if right-aligned], right-aligned[end if]. Font: [TYPF], scaled at [SCF].[<]";
	#end if;
	if center-aligned:
		paintimgtext of (STR) in (WIN) at (X1) by (Y1) using (TYPF) scaled at (SCF), center-aligned;
	if right-aligned:
		paintimgtext of (STR) in (WIN) at (X1) by (Y1) using (TYPF) scaled at (SCF), right-aligned;
	paintimgtext of (STR) in (WIN) at (X1) by (Y1) using (TYPF) scaled at (SCF).

To paint/display an/-- image-based text (hue - a number) of (str - indexed text) in (win - a g-window) at (coord1 - a list of numbers) using font/-- (typf - a font) scaled at (SCF - a real number), center-aligned or right-aligned:
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	if center-aligned:
		paint image-based text of (STR) in (WIN) at (X1) by (Y1) using (TYPF) scaled at (SCF), center-aligned;
		rule succeeds;
	if right-aligned:
		paint image-based text of (STR) in (WIN) at (X1) by (Y1) using (TYPF) scaled at (SCF), right-aligned;
		rule succeeds;
	paint image-based text of (STR) in (WIN) at (X1) by (Y1) using (TYPF) scaled at (SCF).


Section - Short forms for image texts

To image/img text/txt (STR - indexed text) at (COORD1 - a list of numbers) scaled/scale (SCF - a real number) margin (MARGIN - a number) pixels/pixel/px, center-aligned or right-aligned:
	if the type of the current graphics window is not g-graphics:
		say "*** Error: Short-form image string directive ignored. The current graphics window global was not correctly specified.";
		rule fails;
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	if center-aligned:
		paint an image-based text of (STR) in (current graphics window) at (X1) by (Y1) using (current font) scaled at (SCF) with background (current background-color) and margin (MARGIN) px, center-aligned;
		rule succeeds;
	if right-aligned:
		paint an image-based text of (STR) in (current graphics window) at (X1) by (Y1) using (current font) scaled at (SCF) with background (current background-color) and margin (MARGIN) px, right-aligned;
		rule succeeds;
	else:
		paint an image-based text of (STR) in (current graphics window) at (X1) by (Y1) using (current font) scaled at (SCF) with background (current background-color) and margin (MARGIN) px.

To image/img text/txt (STR - indexed text) at (COORD1 - a list of numbers) scaled/scale (SCF - a real number), center-aligned or right-aligned:
	if the type of the current graphics window is not g-graphics:
		say "*** Error: Short-form image string directive ignored. The current graphics window global was not correctly specified.";
		rule fails;
	let x1 be entry 1 of coord1;
	let y1 be entry 2 of coord1;
	if center-aligned:
		paint an image-based text of (STR) in (current graphics window) at (X1) by (Y1) using (current font) scaled at (SCF), center-aligned;
		rule succeeds;
	if right-aligned:
		paint an image-based text of (STR) in (current graphics window) at (X1) by (Y1) using (current font) scaled at (SCF), right-aligned;
		rule succeeds;
	else:
		paint an image-based text of (STR) in (current graphics window) at (X1) by (Y1) using (current font) scaled at (SCF).


Part - Image-maps

Chapter - Definition of the tileset kind

[Optionally, the translation-table can have a column called "linked command" that defines a replacement command to be used when that tile is clicked with the mouse.]

A tileset is a kind of thing.

The specification of a tileset is "A tileset is an object that specifies the tiles to be used in an image map. It should refer to a 'translation-table' that assigns numbers ('char' column) to figure names ('tile' column). If we want to assign graphic hyperlinks to individual tiles of the image-map, we can also specify a 'linked command' column, which contains the text of a replacement command to be associated with the hyperlinked image (used by Glimmr Canvas-Based Drawing).

A tileset must also set, via its 'tile-width' and 'tile-height' properties, integer dimensions for each tile or cell of the image-maps to be associated with the tileset. (These can be overridden as necessary in drawing commands or using image-map element properties in Canvas-Based Drawing.) "

A tileset has a number called the tile-width. The tile-width is usually 0.
A tileset has a number called the tile-height. The tile-height is usually 0.

A tileset has a table name called the translation-table.


Section - Null tileset

[We provide a minimal tileset to use as a null placeholder.]

The null tileset is a tileset. The translation-table is Table of Null Tilesetting.

Table of Null Tilesetting
Char	Tile
[number	figure name]
1	Figure of Null


Chapter - Image-map with figure array

Section - Long forms of figure image-map (no background)

To drimagemap in (WIN - a g-window) at (X1 - a number) by/x (Y1 - a number) using (IMG_MAP - a list of lists of figure names) with tile-size (W - a number) by/x (H - a number) pixel/pixels/px/--:
	let row be Y1;
	let column be X1;
	repeat with current-row running through IMG_MAP:
		repeat with index running through current-row:
			unless index is Figure of Null:
				drscimage (index) in (WIN) at (column) by (row) with dimensions (W) by (H);
			increase column by W;
		increase row by H;
		now column is X1.

To draw/display an/-- image-map in (WIN - a g-window) at (X1 - a number) by/x (Y1 - a number) using (IMG_MAP - a list of lists of figure names) with tile-size (W - a number) by/x (H - a number) pixel/pixels/px/--:
	#if utilizing Glimmr debugging;
	say "[>console][DC]Image-map drawn at screen coordinates ([X1], [Y1]) of [WIN] using the list of figure names provided, interpreted as a grid [the number of entries in entry 1 of IMG_MAP] tiles wide and [the number of entries in IMG_MAP] tiles high. Tile size used: [W] by [H] pixels.[<]";
	#end if;
	drimagemap in (WIN) at (X1) by (Y1) using (IMG_MAP) with tile-size (W) by (H).
	
To draw/display an/-- image-map in (WIN - a g-window) at (COORD1 - a list of numbers) using (IMG_MAP - a list of lists of figure names) with tile-size (W - a number) by/x (H - a number) pixel/pixels/px/--:
	let X1 be entry 1 of coord1;
	let Y1 be entry 2 of coord1;
	display an image-map in (current graphics window) at (X1) by (Y1) using (IMG_MAP) with tile-size (W) by (H).


Section - Long forms of figure image-map (background color)

To draw/display an/-- image-map in (WIN - a g-window) at (X1 - a number) by/x (Y1 - a number) using (IMG_MAP - a list of lists of figure names) with tile-size (W - a number) by/x (H - a number) pixel/pixels/px/-- and background (BKGD - a number):
	let total-height be the number of entries of IMG_MAP;
	let WDT be the number of entries in entry 1 of IMG_MAP;
	#if utilizing Glimmr debugging;
	say "[>console][DC]Image-map drawn at screen coordinates ([X1], [Y1]) of [WIN] using the list of figure names provided, interpreted as a grid [WDT] tiles wide and [total-height] tiles high. Tile size used: [W] by [H] pixels. Background color [BKGD].[<]";
	#end if;
	rectdraw (BKGD) in (WIN) from (X1) by (Y1) to (WDT * W) by (total-height * H);
	drimagemap in (WIN) at (X1) by (Y1) using (IMG_MAP) with tile-size (W) by (H).

To draw/display an/-- image-map in (WIN - a g-window) at (COORD1 - a list of numbers) using (IMG_MAP - a list of lists of figure names) with tile-size (W - a number) by/x (H - a number) pixel/pixels/px/-- and background (BKGD - a number):
	let X1 be entry 1 of coord1;
	let Y1 be entry 2 of coord1;
	display an image-map in (WIN) at (X1) by (Y1) using (IMG_MAP) with tile-size (W) by (H).
		

Section - Short form	of figure image-map

To image-map (IMG_MAP - a list of lists of figure names) at (COORD1 - a list of numbers) tile-size/size (W - a number) by/x (H - a number) pixel/pixels/px/--, backgrounded:
	if the type of the current graphics window is g-graphics:
		let x1 be entry 1 of coord1;
		let y1 be entry 2 of coord1;
		if backgrounded:
			display an image-map in (current graphics window) at (X1) by (Y1) using (IMG_MAP) with tile-size (W) by (H) and background (current background-color);
		else:
			display an image-map in (current graphics window) at (X1) by (Y1) using (IMG_MAP) with tile-size (W) by (H) px;
	else:
		say "*** Error: Short-form image-map drawing directive ignored. The current graphics window global was not correctly specified."


Chapter - Image-map with tileset array

[Tilesets define their own tile sizes in the tile-width and tile-height properties of the tileset object. Drawing commands ignore these properties and require the user to set the tile dimensions manually, but we can simply supply these properties in the drawing command to get the tileset-provided dimensions.]

Section - Long forms of tileset image map (no background)

To drimagemap in (WIN - a g-window) at (X1 - a number) by/x (Y1 - a number) using (IMG_MAP - a list of lists of numbers) rendered/-- using/with/by (TSET - a tileset) with tile-size (W - a number) by/x (H - a number) --/pixel/pixels/px:
	let row be Y1;
	let column be X1;
	repeat with current-row running through IMG_MAP:
		repeat with index running through current-row:
			if index > 0:
				if there is a char of index in the translation-table of TSET:
					choose row with a char of index in the translation-table of TSET;
					[now current tile is the tile entry;]
					drscimage (tile entry) in (WIN) at (column) by (row) with dimensions (W) by (H);
			increase column by W;
		increase row by H;
		now column is X1.

To draw/display an/-- image-map in (WIN - a g-window) at (X1 - a number) by/x (Y1 - a number) using (IMG_MAP - a list of lists of numbers) rendered/-- using/with/by (TSET - a tileset) with tile-size (W - a number) by/x (H - a number) --/pixel/pixels/px:
	#if utilizing Glimmr debugging;
	let total-height be the number of entries of IMG_MAP;
	let WDT be the number of entries in entry 1 of IMG_MAP;
	say "[>console][DC]Image-map drawn at screen coordinates ([X1], [Y1]) of [WIN] using the list of numbers provided, interpreted as a grid [WDT] tiles wide and [total-height] tiles high. Tile size used: [W] by [H] pixels.[<]";
	#end if;
	drimagemap in (WIN) at (X1) by (Y1) using (IMG_MAP) rendered with (TSET) with tile-size (W) by (H).
	
To draw/display an/-- image-map in (WIN - a g-window) at (COORD1 - a list of numbers) using (IMG_MAP - a list of lists of numbers) rendered/-- using/with/by (TSET - a tileset) with tile-size (W - a number) by/x (H - a number) pixel/pixels/px/--:
	let X1 be entry 1 of coord1;
	let Y1 be entry 2 of coord1;
	display an image-map in (current graphics window) at (X1) by (Y1) using (IMG_MAP) rendered using (TSET) with tile-size (W) by (H).


Section - Long forms of tileset image map (background color)

To draw/display an/-- image-map in (WIN - a g-window) at (X1 - a number) by/x (Y1 - a number) using (IMG_MAP - a list of lists of numbers) rendered/-- using/with/by (TSET - a tileset) with tile-size (W - a number) by/x (H - a number) pixel/pixels/px/-- and background (BKGD - a number):
	let total-height be the number of entries of IMG_MAP;
	let WDT be the number of entries in entry 1 of IMG_MAP;
	let W be the tile-width of TSET;
	let H be the tile-height of TSET;
	#if utilizing Glimmr debugging;
	say "[>console][DC]Image-map drawn at screen coordinates ([X1], [Y1]) of [WIN] using the list of numbers provided, interpreted as a grid [WDT] tiles wide and [total-height] tiles high. Tile size used: [W] by [H] pixels. Background color [BKGD].[<]";
	#end if;
	rectdraw (BKGD) in (WIN) from (X1) by (Y1) to (WDT * W) by (total-height * H);
	drimagemap in (WIN) at (X1) by (Y1) using (IMG_MAP) rendered with (TSET) with tile-size (W) by (H).

To draw/display an/-- image-map in (WIN - a g-window) at (COORD1 - a list of numbers) using (IMG_MAP - a list of lists of numbers) rendered/-- using/with/by (TSET - a tileset) with tile-size (W - a number) by/x (H - a number) pixel/pixels/px/-- and background (BKGD - a number):
	let X1 be entry 1 of coord1;
	let Y1 be entry 2 of coord1;
	display an image-map in (WIN) at (X1) by (Y1) using (IMG_MAP) rendered using (TSET) with tile-size (W) by (H).
		

Section - Short form	of tileset image map	

To image-map (IMG_MAP - a list of lists of numbers) at (COORD1 - a list of numbers) width/w (WDT - a number) tileset (TSET - a tileset) tile-size/size (W - a number) by/x (H - a number)  pixel/pixels/px/--, backgrounded:
	if the type of the current graphics window is g-graphics:
		let x1 be entry 1 of coord1;
		let y1 be entry 2 of coord1;
		if backgrounded:
			display an image-map in (current graphics window) at (X1) by (Y1) using (IMG_MAP) rendered using (TSET) with tile-size (W) by (H) and background (current background-color);
		else:
			display an image-map in (current graphics window) at (X1) by (Y1) using (IMG_MAP) rendered using (TSET) with tile-size (W) by (H);
	else:
		say "*** Error: Short-form image-map drawing directive ignored. The current graphics window global was not correctly specified."


Chapter - Global variables
[The global variables support a very brief form of drawing command; they are not used for the standard length commands.]

The current graphics window is a g-window that varies.
The current foreground-color is a number that varies. The current foreground-color is usually 0.
The current background-color is a number that varies. The current background-color is usually 0.
The current font is a font that varies.

[These are here only to overcome I7's limitation on the number of local variables that can be present in a single routine. They are not user-modifiable, since they will be set within the drawing routines.]
The g-imgwidth is a number variable. The g-imgwidth is 0.
The g-imgheight is a number variable. The g-imgheight is 0.
The current g-row is a number variable. Current g-row is 0.
The current g-column is a number variable. Current g-column is 0.


Chapter - Resources


Section - Calculating the rendered length of a string

To decide what number is the length of (STR - indexed text) set in (TYPF - a font):
	let len be 0;
	repeat with N running from 1 to the number of characters in STR:
		let V be the character code of position N of STR;
		if there is a char of V in the font table of TYPF:
			choose row with a char of V in the font table of TYPF;
		else:
			choose row with a char of 32 in the font table of TYPF;
		increase len by the advance entry;
	decide on len.


Part - Routines for color specification

Chapter - Get color from lookup table (by name)

To decide which number is color/colour (hue - a glulx color value):
	(- ColVal({hue}) -)


Chapter - Specifying color using RGB formula


Section - RGB color specification

To decide which number is R/r --/= (R - a number) G/g --/= (G - a number) B/b --/= (B - a number):
	unless R < 0 or R > 255 or G < 0 or G > 255 or B < 0 or B > 255:
		decide on (R * 65536) + (G * 256) + B;
	decide on 0;


Section - RGB specified as a percentage

To decide which number is r%/R% --/= (R - a number) g%/G% --/= (G - a number) b%/B% --/= (B - a number):
	unless R < 0 or R > 100 or G < 0 or G > 100 or B < 0 or B > 100:
		let R be R times 2.5500 to the nearest whole number;
		let G be G times 2.5500 to the nearest whole number;
		let B be B times 2.5500 to the nearest whole number;
		decide on (R * 65536) + (G * 256) + B;
	decide on 0;


Section - RGB specified as a fixed point percentage

To decide which number is r%/R% --/= (R - a real number) g%/G% --/= (G - a real number) b%/B% --/= (B - a real number):
	unless R is real less than 0 or R is real greater than 100.0000 or G is real less than 0 or G is real greater than 100.0000 or B is real less than 0 or B is real greater than 100.0000:
		let R1 be R times 2.5500 to the nearest whole number;
		let G1 be G times 2.5500 to the nearest whole number;
		let B1 be B times 2.5500 to the nearest whole number;
		decide on (R1 * 65536) + (G1 * 256) + B1;
	decide on 0;


Chapter - Color specified as a hexadecimal

To decide which number is hex (hex - indexed text):
	let curval be a number;
	let hex be hex in upper case;
	replace the regular expression "\$|\#|0x" in hex with "";
	let len be the number of characters in hex;
	let total be 0;
	let multiplier be 1;
	repeat with index running from 1 to len:
		let N be (len - index) + 1;
		let V be the character code of position N of hex;
		unless V < 48 or V > 70 or ( V > 57 and V < 65):
			if V > 64:
				let curval be V - 55;
			else if V < 58:
				let curval be V - 48;
		else:
			let total be 0;
			break;
		let curval be curval * multiplier;
		increase total by curval;
		let multiplier be multiplier * 16;
	decide on total.


Part - Other functions

Chapter - Determination of image size

To decide what number is the image-width of (img - a figure name):
	(- FindImageWidth({img}) -)
	
To decide what number is the image-height of (img - a figure name):
	(- FindImageHeight({img}) -)

Include (-

[ FindImageWidth  img result img_width;
	result = glk_image_get_info(ResourceIDsOfFigures-->img, gg_arguments, gg_arguments+WORDSIZE);
             		img_width  = gg_arguments-->0;
	return img_width;
];

[ FindImageHeight  img result img_height;
	result = glk_image_get_info(ResourceIDsOfFigures-->img, gg_arguments, gg_arguments+WORDSIZE);
             		img_height  = gg_arguments-->1;
	return img_height;
];

-)


Chapter - Min and max functions

To decide which number is the greater/max of/-- (X - a number) or (Y - a number):
	if Y > X, decide on Y;
	decide on X.

To decide which number is the lesser/min of/-- (X - a number) or (Y - a number):
	if Y < X, decide on Y;
	decide on X.


Chapter - Look up the char number from a text-string

To decide which number is the character code of position (N - a number) of (T - an indexed text):
	(- ParseStringToChar({N}, {T}); -)

Include (-

[ ParseStringToChar pos txb len ch;
	len = BlkValueExtent(txb);
	pos = pos - 1;
	ch = BlkValueRead(txb, pos);
	return ch;
];

-).


Chapter - Identify a character by code in a string

To say char-code (N - a number):
	(- glk_put_char({N}); -)


Part - Provide indices for each glyph in a bitmap font

The file of Font Table is called "FontTable".

To get/set blank/-- indices for (typeface - a bitmap font), silently, verifying glyph map, and/or writing table to disk:
	sort the font table of the typeface in index order;
	let actual-index be 1;
	let next-advance be 0;
	unless silently:
		say "Checking the font table for [typeface]. Will attempt to add any missing index values. There are [number of rows in the font table of typeface] rows in the table.[paragraph break]";
	repeat with N running from 1 to the number of rows in the font table of the typeface:
		choose row N in the font table of the typeface;
		if there is an index entry:
			unless index entry is (actual-index plus next-advance):
				say "***Index numbers for the font table of [typeface] MAY be incorrect. Check glyph '[char-code char entry]' (char [char entry]), or the index position before it. The problem may also be that the height or width is incorrectly specified.";
			let actual-index be index entry;
		else:
			next;
		if verifying glyph map:
			if the char entry is entry (index entry) of the glyph map of the typeface:
				unless silently:
					say "Glyph '[char-code char entry]' ([char entry]) appears to be correctly matched to the glyph map.";
			else:
				say "***The index entry for glyph [char-code char entry] ([char entry]) does not seem to correctly match the glyph map. Continuing, if possible...";
		if there is a width entry and there is a height entry:
			let next-advance be (width entry * height entry) + 1;
		else:
			say "***Glyph '[char-code char entry]' ([char entry]) in the font table of [typeface] is missing bitmap dimensions. Repair font table.";
			break;
	if verifying glyph map:
		if silently:
			add indices to the typeface starting from (index entry + next-advance), silently, verifying glyph map;
		else:
			add indices to the typeface starting from (index entry + next-advance), verifying glyph map;
	else if silently:
		add indices to the typeface starting from (index entry + next-advance), silently;
	else:
		add indices to the typeface starting from (index entry + next-advance);
	if writing table to disk:
		write font table to disk for the typeface.

To add indices to (typeface - a bitmap font) starting from (N - a number), silently and/or verifying glyph map:
	let calculated-index be N;
	repeat through the font table of typeface:
		if there is an index entry:
			next;
		now index entry is calculated-index;
		if calculated-index is greater than 0:
			unless silently:
				say "Changed index entry for glyph '[char-code char entry]' (char [char entry]) to [index entry].";
		else:
			say "***Could not provide an index entry for the font table of [typeface]: Check glyph '[char-code char entry]' (char [char entry]) first.";
			break;
		let calculated-index be calculated-index plus ( width entry * height entry) + 1;
		if verifying glyph map:
			if the char entry is entry (index entry) of the glyph map of the typeface:
				unless silently:
					say "Glyph '[char-code char entry]' ([char entry]) appears to be correctly matched to the glyph map.";
			else:
				say "***The index entry for glyph [char-code char entry] ([char entry]) does not seem to correctly match the glyph map. Continuing, if possible...";

To write font table to disk for (typeface - a bitmap font):
	write "[font table of typeface][line break]" to the file of Font Table;
	append "glyph[direct-character placement tab]char[direct-character placement tab]index[direct-character placement tab]width[direct-character placement tab]height[direct-character placement tab]yoffset[direct-character placement tab]advance[line break]" to the file of Font Table;
	repeat with N running from 1 to the number of rows in the font table of the typeface:
		choose row N in the font table of the typeface;
		append "'[glyph entry]'[direct-character placement tab][char entry][direct-character placement tab][index entry][direct-character placement tab][width entry][direct-character placement tab][height entry][direct-character placement tab][yoffset entry][direct-character placement tab][advance entry][line break]" to the file of Font Table.

To say direct-character placement tab:
	(- glk_put_char_uni(9); -)


Chapter - Graphlink management (for use without Glimmr Graphic Hyperlinks by Erik Temple)

To set a graphlink in (g - a g-window) identified as (newlinkid - an object) from (gleft - a number) by (gtop - a number) to (gright - a number) by (gbottom - a number) as (linkaction - some text), ignoring redundant links:
	do nothing.

To set a graphlink in (g - a g-window) identified as (newlinkid - an object) from (gleft - a number) by (gtop - a number) to (gright - a number) by (gbottom - a number) as (linkref - a number), ignoring redundant links:
	do nothing.

To set a graphlink in (g - a g-window) identified as (newlinkid - an object) from (gleft - a number) by (gtop - a number) to (gright - a number) by (gbottom - a number) as (linkref - a stored action), ignoring redundant links:
	do nothing.


Part - Debugging

Use Glimmr debugging translates as (- Constant Glimmr_DEBUG; -).

To #if utilizing Glimmr debugging:
	(- #ifdef Glimmr_DEBUG; -)
	
To #end if:
	(- #endif; -)


Chapter - Console command
[We can add our own text to the console log stream by using this command.]

Understand "> [text]" or ">[text]" as a mistake ("[>console][line break]*[player's command][paragraph break][<]") when the Glimmr debugging option is active.


Chapter - Debugging output window
[We can direct Glimmr's debugging log to output in any window. The primary use for this feature is expected to be the separate console window, as provided by the Glimmr Debugging Console extension.]

The console output window is a g-window variable. 


Section - Assign the default debugging window (for use without Glimmr Debugging Console by Erik Temple)

The console output window is usually the main-window.


Section - Logging to the transcript

Use Glimmr console transcript logging translates as (- Constant GLIMMR_CONSOLE_TRANSCRIPT_ON; -)

Report switching the story transcript on when the Glimmr console transcript logging option is active:[we use "report" only because "after" doesn't exist for out-of-world actions.]
	if the console output window is the main-window:
		continue the action;
	if we are writing to the transcript and the console output window is g-present:
		echo the text stream of the console output window to the transcript;
	continue the action.

After constructing the console output window when the Glimmr console transcript logging option is active:
	if the console output window is the main-window:
		continue the action;
	if we are writing to the transcript and the console output window is g-present:
		echo the text stream of the console output window to the transcript;
		continue the action.


Chapter - Abbreviations
[These are phpBB-inspired macros for some fairly keystroke-intensive I7 text substitutions.]

To say b:
	say "[bold type]";

To say /b:
	say "[roman type]";

To say i:
	say "[italic type]";

To say /i:
	say "[roman type]";


Chapter - Debugging commands

To suspend actions tracing:
	(- trace_actions = 0; -)

To activate actions tracing:
	(- trace_actions = 1; -)

To suspend rules tracing:
	(- debug_rules = 1; -)

To activate intensive rules tracing:
	(- debug_rules = 2; -)

To activate rules tracing:
	(- debug_rules = 1; -)

To decide whether rules tracing is active:
	(- debug_rules -)

To decide whether intensive rules tracing is active:
	(- debug_rules == 2 -)

To show the/-- glk/glklist list/--:
	(- GlkListSub(); -)


Chapter - Text substitutions for logging console messages
[We preface console log messages with ">console" (the > is used to be sure that "console" doesn't conflict with any object named console. The [>console] *must* be balanced with [<] at the end: this transfers the focus back to the main window from the console.

Note that, like all "to" phrases in Inform, these can be "overloaded". To do something different with them, rewrite the phrase in your story file, beneath the include line for Glimmr Drawing Commands.]

To say >console:
	(- if ( (+ console output window +) has g_present) { glk_set_window( (+ console output window +).ref_number); -).
 
To say <:
	(-  glk_set_window( gg_mainwin ); } RunParagraphOn(); -).


Glimmr Drawing Commands ends here.


---- DOCUMENTATION ----

Glimmr Drawing Commands (GDC) is the most basic of the Glimmr extensions, and is required by (nearly) all others. It exposes the three basic Glulx drawing commands at the I7 level, enabling authors to write their own drawing rules without using any I6 code. Glimmr Drawing Commands also adds a number of "derived" commands--commands that use the basic commands to do new things. These include everything from drawing a line to connect any two points on the screen, to "painting" text to the screen, to drawing a grid of images.

Glimmr Drawing Commands requires Jon Ingold's Flexible Windows as well as Michael Callaghan's Fixed Point Maths. For those familiar with I6, the three infglk functions that GDC implements are glk_image_draw, glk_image_draw_scaled, and glk_window_fill_rect. It does not implement the glk_window_erase_rect command, since this is easily imitated by drawing a rectangle in the background color of the window (Flexible Windows's "back-colour" g-window property).

A note on what GDC will *not* do: It does not:

	1) Provide any window-drawing rule structure. Users will need to write their own window-drawing rules from scratch.

	2) Scale drawing instructions down (or up) to fit in the window.

	3) Ensure that drawing instructions are properly ordered so as to "rebuild" the window whenever needed. (Because a Glulx window can be resized at any time by the player, the window-drawing rules for that window need to completely encapsulate the state of the window.)

For these reasons, GDC should be considered a low-level extension, mostly to be used by experts. Users wanting a robust solution that *does* handle all of the above points should use Glimmr Canvas-Based Drawing.

Note that all graphics operations will be slower within the Inform IDE than in a standalone interpreter. Test your games outside the IDE to get a sense of their actual performance "in the wild". (The Extended Debugging extension will allow you to do this while also retaining debugging commands.)


Chapter: Including Glimmr Drawing Commands in a project

Inform remains fairly unsophisticated in its mechanisms for organizing included extensions. When we are dealing with a complex system of modular extensions such as Glimmr, it is very easy to trip it up. The result is usually a list of unhelpful errors. For this reason, each Glimmr extension includes a section--such as this one--about how to include it, particularly in relation to other extensions.

When including Glimmr Drawing Commands, it is not necessary to include Flexible Windows or Fixed Point Maths. GDC will do that.

We also do not need to include Glimmr Drawing Commands when we are using Glimmr Canvas-Based Drawing; we can simply include the latter extension and GDC will be included too.


Chapter: Preliminary notes about commands

Each of the drawing commands in GDC has a relatively flexible syntax. Only one variation of the syntax for each command will be mentioned in this documentation, but users can check the Phrasebook section of the Index after compiling to see the variability that is allowed. (Another option is to open the extension itself and look at the phrase definitions.)


Section: Coordinates

Drawings are located using coordinates measured from the upper left corner of the window. In other words, the x axis (horizontal) increases as we move right, while the y axis (vertical) increases as we move down. In most cases, coordinates can be specified in one of two ways.

We can use "by" or "x" to separate the two coordinates (these are freely interchangeable, as the example suggests):

	draw a line (color g-White) in the graphics-window from 100 by 100 to 200 x 200 with 2 pixel line-weight

More conveniently, we can use braces to define each coordinate pair:

	draw a line (color g-White) in the graphics-window from {100, 100} to {200, 200} with 2 pixel line-weight

Whichever method we use, the x-coordinate is listed first in each pair, followed by the y-coordinate. For all commands, the coordinates are given in pixels; there is no scaling or other transformation involved. NOTE: for short-form commands (see below), only the brace form for specifying coordinates is allowed.

It is important to note that coordinates can be drawn outside of the window bounds, either positively (coordinate greater than window dimension) or negatively (coordinate a negative number). This allows us a lot of flexibility for interesting effects.


Section: Colors

Colors in GDC are specified as numbers. However, we actually have a lot of freedom in how we actually specify those numbers. The (computationally) fastest way to specify a color is as an unadorned decimal representation of the hex color code that would be used in I6 glulx. This is inconvenient, since we have to convert a hex code to decimal (using a hex calculator or online conversion utility), and very often we will have first had to convert an RGB color to hex.

	16777215 (decimal) = $FFFFFF (hex) = white = RGB (255, 255, 255)

GDC in fact allows us to provide color values in all of these forms, and more. (It does this by running an in-line calculation on our input to arrive at that decimal code.) Here are the color specifications we can use (all of these set the color to white):

	Hexadecimal (the "hex" identifier is required):
	hex FFFFFF
	hex $FFFFFF
	hex #FFFFFF
	hex 0xFFFFFF

	Color name (must be previously defined; see below):
	color g-White

	RGB:
	R 255 G 255 B 255
	r 255 g 255 b 255
	r = 255 g = 255 b = 255
	
	RGB percentages (rather coarse):
	R% 100 G% 100 B% 100
	r% 100 g% 100 b% 100
	r% = 100 g% = 100 b% = 100

	RGB percentages using fixed point numbers (4 decimal places REQUIRED):
	R% 100.0000 G% 100.0000 B% 100.0000
	r% 100.0000 g% 100.0000 b% 100.0000
	r% = 100.0000 g% = 100.0000 b% = 100.0000

Any of these expressions can be surrounded by parentheses to make them more readable. Here are some examples of actual use:

	draw a line (color g-Lavender) in the graphics-window from {100, 100} to {200, 200} with 2 pixel line-weight.
	change the current foreground-color to hex FF0000.
	draw a rectangle (r = 20 g = 40 b = 150) in the graphics-window from 120 by 30 to 180 by 40.
	display a monochrome bitmap (r% = 100 g% = 50 b% = 20) in the graphics-window at {10, 25} using 12 wide data from Player Avatar with dot size 2 px and background (r% = 0 g% = 0 b% = 0).

Color names are of the "glulx color value" kind of value. To use color names, we must first define them by extending the Table of Common Color Values provided in the (built-in) Glulx Text Effects extension, like so:

	Table of Common Color Values (continued)
	glulx color value	assigned number
	g-MyNewColor	4467887

A list of 140 color names is provided by the extension HTML Color Names for Glulx Text Effects.

The fixed point RGB percentages are made possible by Michael Callaghan's Fixed Point Maths extension (see that extension for details). Fixed point numbers must be specified to 4 decimal places or unexpected results may emerge.


Section: Short-form commands

All commands have a short form that minimizes repetition when we are issuing multiple instructions. These short forms require that we set at least one, and possibly more, global variables before using them. The global variables implicated in short-form drawing are:

	current graphics window (a g-window)
	current foreground-color (a number)
	current background-color (a number)

To use short form commands, we first set one or more of these variables, and then use as many short forms as we like. This bit of code draws two overlapping white rectangles with a horizontal red line in the center (approximating a traffic sign):

	change the current graphics window to the graphics-window;
	change the current foreground-color to (R 255 G 255 B 255);
	rect {10, 10} to {20, 23};
	rect {8, 12} to {22, 21};
	change the current foreground-color to (R 255 G 0 B 0);
	line {11, 15} to {19, 15} at 3 px.

Short forms must use brace notation for specifying coordinate pairs, e.g. {10, 10}.


Chapter: Basic Commands ("Primitives")

This section lays out GDC's simpler commands, what in many systems would be thought of as primitives. In Glulx, only the rectangle, image, and scaled image commands are actually primitives. All of the others are derived from these--a line, for example, involves many rectangles, often only a single pixel in width. Higher-order commands may be noticeably slower than the true primitives. Notes about drawing speed are provided where appropriate.


Section: Rectangle

The rectangle draws a simple field of color in the window, based on two defined points: the origin (upper left corner) and the endpoint (lower right corner). The basic format of the command is:

	draw a rectangle <color> in <window> from <origin> to <endpoint>

Long forms:

	draw a rectangle (color g-SkyBlue) in the graphics-window from {120, 12} to {300, 24}.
	draw a rectangle (hex #87CEEB) in the graphics-window from 120 by 12 to 300 by 24.

Short form:

	rectangle {120, 12} to {300, 24}.


Section: Dimensioned rectangle

There is a second type of rectangle, the "dimensioned rectangle". This is used when we prefer to specify the dimensions of the rectangle rather than its extent in the coordinate field. We supply only the origin coordinate (upper left corner); there is no need to provide an endpoint. This command corresponds to the I6 instruction glk_window_fill_rect.

	draw a rectangle <color> in <window> at <origin> with size <width> by <height>

Long forms:

	draw a rectangle (color g-SkyBlue) in the graphics-window at {120, 12} with size 180 by 12.
	draw a rectangle (hex #87CEEB) in the graphics-window at 120 by 12 with size 180 by 12.

Short form:

	rectangle {120, 12} size 180 x 12.


Section: Image

An image displays an external image file to the screen (PNG or JPEG format). These images must be declared as "figures" in Inform before they can be used (see Chapter 22 in Writing with Inform). We need to declare only the origin coordinate (upper left corner) of the image. The image will be displayed 1 for 1--that is, one pixel of the image will be assigned to one pixel on the screen.

This command corresponds to the I6 instruction glk_image_draw.

	display image <figure name> in <window> at <origin>

Long forms:

	display Figure of Frolf in the graphics-window at {0, 0}.
	display Figure of Frolf in the graphics-window at 0 by 0.

Short form:

	image Figure of Frolf at {0, 0}.


Section: Dimensioned image

The dimensioned (or scaled) image command draws an image in just the same way as the image-drawing command, but it also allows us to specify the horizontal and vertical dimensions of the displayed image. The image will be scaled to fit in the required shape. Note that any scaling will adversely affect the quality of an image, but it is generally far worse to scale an image larger than its original size than to scale it down. We should avoid scaling images that include very thin lines if we can.

This commands corresponds to the I6 instruction glk_image_draw_scaled.

	display image <figure name> in <window> at <origin> with dimensions <width> by <height>

Long forms:

	display Figure of Frolf in the graphics-window at {0, 0} with dimensions 20 by 20.
	display Figure of Frolf in the graphics-window at 0 by 0 with dimensions 20 by 20.

Short form:

	image Figure of Frolf at {0, 0} size 20 x 20.

Speed notes:

	It takes slightly longer to display a scaled image than an unscaled one. In most cases, the difference is unimportant. However, we should always try to avoid scaling very large images. The best approach is to keep our images as close to the size we need as possible--don't use a larger image than is necessary.



Section: Box

A box is basically an outlined rectangle. We specify the width of the outline in pixels, in addition to the origin (upper left) and endpoint (lower right) coordinates. In addition, we can indicate whether we want the outline to be drawn inside or outside the imaginary line defined by the coordinates.

	draw a box <color> in <window> from <origin> to <endpoint> with <weight> pixel line-weight
	draw a box <color> in <window> from <origin> to <endpoint> with <weight> pixel line-weight, outlined
	draw a box <color> in <window> from <origin> to <endpoint> with <weight> pixel line-weight, inset

Long forms:

	draw a box (color g-SkyBlue) in the graphics-window from {120, 12} to {300, 24} with 2 pixel line-weight.
	draw a box (hex #87CEEB) in the graphics-window from 120 by 12 to 300 by 24 with 2 pixel line-weight.
	draw a box (color g-SkyBlue) in the graphics-window from {120, 12} to {300, 24} with 2 pixel line-weight, outlined.
	draw a box (hex #87CEEB) in the graphics-window from 120 by 12 to 300 by 24 with 2 pixel line-weight, inset.

Short forms:

	box {120, 12} to {300, 24} at 2 px
	box {120, 12} to {300, 24} at 2 px, outlined
	box {120, 12} to {300, 24} at 2 px, inset

Speed notes:

	A box is drawn using four rectangles, one for each side of the box. It will thus take slightly more time to draw than a rectangle. In practice, and particularly in the best multimedia interpreters, a few boxes on screen should still draw instantaneously. 


Section: Stroked rectangle

A stroked rectangle is a rectangular field of color surrounded by an outline in another color (essentially a rectangle surrounded by a box). For the short form, the "current background-color" global defines the color of the rectangle, while the "current foreground-color" defines the color of the outline.

	draw a rectangle <rectangle color> in <window> from <origin> to <endpoint> with <weight> pixel line-weight <outline color>

Long forms:

	draw a rectangle (color g-SkyBlue) in the graphics-window from {120, 12} to {340, 24} with 2 pixel stroke (color g-LightSkyBlue).
	draw a rectangle (hex #87CEEB) in the graphics-window from 120 by 12 to 340 by 24 with 2 pixel line-weight (color g-LightSkyBlue).

Short form:

	stroked rectangle {120, 12} to {340, 24} at 2 px

Speed notes:

	The stroked rectangle is drawn by displaying two rectangles, one in the background color superimposed on one in the outline color. In theory, it should take slightly more time to draw than a standard rectangle, and slightly less time than a box. In practice there is likely to be little difference, except perhaps if many are being drawn to the screen at once.


Section: Line

A line attempts to draw a nicely shaped line between any two coordinate pairs, the origin and the endpoint. The origin and endpoint need not be in any particular relative relation to one another (i.e., the origin does not have to be up from and to the left of the endpoint, as is the case with the rectangle).

	draw a line <color> in <window> from <origin> to <endpoint> with <weight> pixel line-weight

Long forms:

	draw a line (r 250 g 235 b 215) in the graphics-window from {560, 790} to {124, 167} with 4 pixel line-weight.
	draw a line (color g-AntiqueWhite) in the graphics-window from 560 by 790 to 124 by 167 with 4 pixel line-weight.

Short form:

	Line {560, 790} to {124, 167} at 4 px.

Speed notes:

	Lines are composed of many individual rectangles, and as such can be quite slow to draw. On the bleeding-edge versions (as of summer 2010) of Gargoyle, they render quite quickly, but you may want to avoid using more than a few on other interpreters. Some tips for faster rendering:

		* If possible, it is better to draw a purely horizontal or vertical line using a rectangle, rather than a line. The rectangle requires less calculation.

		* Shorter lines draw faster than longer ones.

		* "Flatter" lines draw faster; the closer a line comes to 45 degrees, the more individual rectangles need to be drawn to render it, and the slower the drawing becomes.


Section: Line using distance + angle

It is also possible to specify a line using an origin point and an angle (in degrees or radians) plus a distance (in pixels). The endpoint will be calculated automatically. 

	draw a line <color> in <window> from <origin> measuring <distance> pixels at <angle> degrees/radians with <weight> pixel line-weight

The angle must be supplied to the nearest whole number when degrees are used, or as a real number if radians are used. The orientation is geographical, so that 0 degrees is the top of the screen, 90 degrees is to the right side, etc.:

	    0°
	270 + 90
	   180

Long forms:

	draw a line (r 250 g 235 b 215) in the graphics-window from {560, 790} measuring 100 pixels at 280 degrees with 1 pixel line-weight.
	draw a line (color g-AntiqueWhite) in the graphics-window from 560 by 790 measuring 100 pixels at 4.8844 radians with 1 pixel line-weight.

Short forms:

	line {560, 790} dist 100 px 280 deg 1 px.
	line {560, 790} dist 100 px 4.8844 rad angle 1 px.

Speed notes:

	Lines are composed of many individual rectangles, and as such can be quite slow to draw. On the bleeding-edge versions (as of summer 2010) of Gargoyle, they render quite quickly, but you may want to avoid using more than a few on other interpreters. Some tips for faster rendering:

		* If possible, it is better to draw a purely horizontal or vertical line using a rectangle, rather than a line. The rectangle requires less calculation. (In fact, the calculations are quite fast on modern computers, so in most cases this won't really make much difference.)

		* Shorter lines draw faster than longer ones

		* "Flatter" lines draw faster; the closer a line comes to 45 degrees, the more individual rectangles need to be drawn to render it, and the slower the drawing becomes


Chapter: Complex commands: Bitmaps

A bitmap draws a rectangular image composed of individual "bits" that are specified in the form of a list of lists of numbers. For example, a simple cross might be specified like so:

	{
		{ 0, 0, 1, 0, 0 },
  		{ 0, 0, 1, 0, 0 },
 		{ 1, 1, 1, 1, 1 },
 		{ 0, 0, 1, 0, 0 },
 		{ 0, 0, 1, 0, 0 }
	}. 

The ones represent bits that are turned "on", while the zeros represent bits that are "off". The former will write to the screen using one color, and the latter will either not draw anything, or will draw using a second color (the background color).

Again, the array supplied is a list of lists of numbers. We supply the standard set of list braces, and then we supply one list for each row within those braces, each row's list also having its own braces, e.g. here's a simple map with 4 rows:

	{ {1, 0, 1}, {0, 1, 0}, {1, 0, 1}, {0, 1, 0} }.

It is very important that all rows have the same number of entries (i.e., columns).

At its most basic, a "bit" is the same as one pixel in the graphics window. However, we can set the "dot size" in our drawing command to change the scale of the final bitmap. Thus, a dot size of 2 will use 4 pixels (2 x 2) onscreen to render each bit in the bitmap. WIth a dot size of 6, each bit will occupy 36 pixels (6 x 6) onscreen.

Note that we can include carriage returns and spaces within lists of numbers, which allows us to format bitmap representations in a human-readable way. (Inform does not present these ideally within extension documentation, and it has been necessary to adopt some odd formatting here, such as the unnecessary line break between the opening brace and the first line of digits in the first example above.)

We provide an origin coordinate (corresponding to the upper left corner) for a bitmap, as for all other elements. There is no endpoint--the width of the bitmap is determined by the number of columns multiplied by the dot size.

There are two types of bitmap commands, "monochrome" and "polychrome"; these are laid out below.


Section: Monochrome bitmap

The monochrome bitmap command allows only two bit values, 0 or 1. A background color can be specified, if desired.

Note that, when using the short form, the "current foreground-color" global refers to the color of the "on" bits; the "current background-color" specifies the background color (if one is desired). 

	display a monochrome bitmap <color> in <window> at <origin> using <list of numbers> with dot size <pixel dimension> pixels

	display a monochrome bitmap <color> in <window> at <origin> using <list of numbers> with dot size <pixel dimension> pixels and background <color>

Long forms (the bitmap definition list is shown first as an inline list and thereafter as a global variable containing such a list):

	display a monochrome bitmap (color g-Red) in the graphics-window at {10, 10} using {
				{ 0, 0, 0, 0, 1 },
				{ 0, 0, 0, 1, 0 },
				{ 0, 0, 1, 0, 0 },
				{ 0, 1, 0, 0, 0 },
				{ 1, 0, 0, 0, 0 } } with dot size 2 pixels.

	display a monochrome bitmap (color g-Red) in the graphics-window at 10 by 10 using Slash-definition with dot size 2 pixels.

	display a monochrome bitmap (color g-Red) in the graphics-window at {10, 10} using Slash-definition with dot size 2 pixels and background (color g-Black).

Short forms (the bitmap definition list is shown first as an inline list and thereafter as a global variable containing such a list):
	
	mono bitmap {
				{ 0, 0, 0, 0, 1 },
				{ 0, 0, 0, 1, 0 },
				{ 0, 0, 1, 0, 0 },
				{ 0, 1, 0, 0, 0 },
				{ 1, 0, 0, 0, 0 } } at {100, 100} size 2 px.

	mono bitmap Slash-definition at {100, 100} size 2px, backgrounded.

The former does not utilize the "current background-color" global variable, while the latter does. So, the former will display a red slash over whatever lies beneath it, while the latter will render black for the 0's and red for the 1's. 

Speed notes:

	Monochrome and polychrome bitmaps are equally fast. Unfortunately, most interpreters are still relatively slow when it comes to drawing rectangles, and since rectangles are the basis of bitmaps, they will draw relatively slowly. If you want to use bitmaps and don't like the performance on your interpreter, contact your friendly neighborhood terp maintainer and ask for improvement! (The current leader is Gargoyle, which in the bleeding-edge versions available in 2010 is quite fast at rendering bitmaps.)


Section: Polychrome bitmaps

A polychrome bitmap allows any RGB color to be provided in the bitmap-array. RGB colors must be specified using a decimalized version of the hexadecimal representation of the color (see Glulx Text Effects for more information)--the transformations described above cannot be used. Polychrome bitmaps are rarely human-readable (white, for example, will be listed in the bitmap-array as 16777215), but they do offer more flexibility of display.

Here is an example of a bitmap list for a polychrome bitmap, defined as a global list of numbers variable (this is an illustration of Ms. Pac-Man):

	Pac-definition is a list of numbers variable. Pac-definition is {
			{ 1,  -1,  -1, 16758465, 16758465,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 },
			{ -1,  -1,  -1, 16758465, 16758465, 16758465,  268431360,  268431360,  268431360,  268431360,  -1,  -1,  -1 },
			{ -1,  -1, 16758465, 16758465, 16738740, 16738740,  268431360,  268431360,  268431360,  268431360,  268431360,  268431360,  -1 },
			{ 16758465, 16758465, 16738740, 16738740,  268431360,  268431360,  268431360,  268431360,  268431360,  268431360,  268431360,  268431360,  268431360 },
			{ 16738740, 16758465, 16758465,  268431360,  268431360,  268431360, 2, 2,  268431360,  268431360,  268431360, 16738740, 16738740 },
			{ -1, 16738740, 16738740,  268431360,  268431360, 2, 205,  268431360,  268431360,  -1,  -1,  -1,  -1 },
			{ -1,  268431360,  268431360,  268431360,  268431360,  268431360,  268431360,  -1,  -1,  -1,  -1,  -1,  -1 },
			{ -1,  268431360,  268431360,  268431360,  268431360,  -1,  -1,  -1,  -1,  -1,  -1,  -1,  -1 },
			{ -1,  268431360,  268431360,  268431360,  268431360,  268431360,  268431360,  -1,  -1,  -1,  -1,  -1,  -1 },
			{ -1,  268431360,  268431360,  268431360, 2,  268431360,  268431360,  268431360,  268431360,  -1,  -1,  -1,  -1 },
			{ -1,  -1,  268431360,  268431360,  268431360,  268431360,  268431360,  	268431360,  268431360,  268431360,  268431360, 16738740, 16738740 },
			{ -1,  -1,  268431360,  268431360,  268431360,  268431360,  268431360, 268431360,  268431360,  268431360,  268431360,  268431360,  268431360 },
			{ -1,  -1,  -1,  268431360,  268431360,  268431360,  268431360,  268431360,  268431360,  268431360,  268431360,  268431360,  -1 },
			{ -1,  -1,  -1,  -1,  -1,  268431360,  268431360,  268431360,  268431360,  268431360,  -1,  -1, -1 }
		}.

NOTE: In a polychrome bitmap, all positive numbers map directly to colors. To leave a bit "off," use any negative number. If a background color has been specified, the background color will appear in these empty zones.

	display a polychrome bitmap in <window> at <origin> using <list of numbers> with dot size <pixel dimension> pixels

	display a polychrome bitmap in <window> at <origin> using <list of numbers> with dot size <pixel dimension> pixels and background <color>

Long forms:

	display a polychrome bitmap in the graphics-window at 50 by 65 using Pac-definition with dot size 1 pixel.

	display a polychrome bitmap in the graphics-window at {50, 65} using Pac-definition with dot size 1 pixel and background (color g-DarkBlue).

Short forms:

	poly bitmap (Pac-definition) at {50, 65} size 1.

	poly bitmap (Pac-definition) at {50, 65} size 1, backgrounded.

Speed notes:

	Monochrome bitmaps and polychrome are similar in speed. Unfortunately, most interpreters are still relatively slow when it comes to drawing rectangles, and since rectangles are the basis of bitmaps, they will draw relatively slowly. If you want to use bitmap and don't like the performance on your interpreter, contact your friendly neighborhood terp maintainer and ask for improvement! (The exception is Gargoyle, which in the bleeding-edge versions available in 2010 is quite fast at rendering bitmaps.)


Chapter: Complex commands: Image-maps

An image-map is similar to a bitmap in that the author defines a regular grid for graphical display. However, rather than each cell of the grid displaying a rectangular area of color, it draws an image from a PNG or JPEG file. This could be used for drawing tile-based maps (as in RPG games), sliding-block puzzles, graphical user interfaces, or a number of other things.

Image-maps can be specified in one of two ways:

	direct image-map: Takes a list of lists of figure names
	tileset image-map: Takes a list of lists of numbers keyed to a separate tileset listing

The main advantage of the direct image-map is that it is at least notionally faster, since there is no need for an intervening lookup to a tileset. In practice, the lookup is very fast and (at least on most machines) there isn't much difference.

One advantage of the tileset approach is human-readability. With short integers and some formatting, the list itself can be understand relatively easily as a kind of low-resolution "image." The following, for example, might represent a long hallway with a door on the left:

	{ 
		{ 11, 11, 11, 11, 11, 11, 11 },
		{ 05, 00, 00, 00, 00, 00, 00 },
		{ 05, 00, 00, 00, 00, 00, 00 },
		{ 11, 11, 11, 11, 11, 11, 11 }
	}

In contrast, the direct version might look like this--not nearly as readable:

	{
		{ Figure of Wall, Figure of Wall, Figure of Wall, Figure of Wall, Figure of Wall, Figure of Wall, Figure of Wall },
		{ Figure of Door, Figure of Null, Figure of Null, Figure of Null, Figure of Null, Figure of Null, Figure of Null },
		{ Figure of Door, Figure of Null, Figure of Null, Figure of Null, Figure of Null, Figure of Null, Figure of Null },
		{ Figure of Wall, Figure of Wall, Figure of Wall, Figure of Wall, Figure of Wall, Figure of Wall, Figure of Wall},
	 }

Another advantage is that we can swap out the tileset to change the look of the image-map without actually changing the image-set data. For example, if we want have a map made up of separate tiles and we want to illustrate a change from day to night, we just change the tileset we're using from the day set to the night set. If the numbers used in the two tilesets are keyed to one another in the same way, the resulting image-set will display nicely.

Remember that the tile- or figure-array is a list of lists. We supply the standard set of list braces, and then we supply one list for each row within those braces, each row's list also having its own braces, e.g. here's a simple tile-array with 4 rows:

	{ {1, 0, 1}, {0, 1, 0}, {1, 0, 1}, {0, 1, 0} }.

(The Glimmr Automap extension uses tilesets to render the automapping data produced by Mark Tilford's Automap extension.)


Section: Direct image-maps

As with bitmaps, we supply an origin point (upper left corner), and in addition, we must supply the dimensions of the tiles. All tiles in the image-map will be rendered at the same size, though the images themselves can be of different sizes. If an image has a different aspect ratio from the tile, the image will be stretched to fit.

The list that specifies the image-map must use only figure names that have already been defined in the source code before the listing takes place, or compilation errors will occur (define figures at the beginning of the story file, not the end). To specify an empty cell, use Figure of Null; nothing will be drawn for that tile.

If we like, we may supply a background color, which will draw a rectangle of the specified color before drawing the image-map tiles. For the short form, the "current background-color" global provides the color of the background rectangle ("current foreground-color" has no effect).

	display an image-map in <window> at <origin> using <list of figure names> with tile-size <width> by <height> pixels

	display an image-map in <window> at <origin> using <list of figure names> with tile-size <width> by <height> pixels and background <color>

Long forms:

	display an image-map in the graphics-window at {25, 25} using {
		{ Figure of Red, Figure of Blue },
		{ Figure of Blue, Figure of Red },
		{ Figure of Red, Figure of Blue } } with tile-size 20 by 20 pixels.

	display an image-map in the graphics-window at 25 by 25 using Checkerboard-definition with tile-size 20 by 20 pixels.

	display an image-map in the graphics-window at {20, 20} using Checkerboard-definition with tile-size 20 by 20 pixels and background (color g-AntiqueWhite).

Short forms:

	image-map {
		{ Figure of Red, Figure of Blue },
		{ Figure of Blue, Figure of Red },
		{ Figure of Red, Figure of Blue } } at {25, 25} size 20 x 20.

	image-map Checkerboard-definition at {25, 25} size 20 x 20, backgrounded.

Speed notes:

	Image-maps must display a number of images every time they are redrawn. Their speed is likely faster than drawing the images individually using the "draw image" command. They are likely to perform well in any interpreter that draws images quickly. Direct image-maps should theoretically draw slightly faster than tileset maps, but in practice the extra table-lookup required for tileset maps seems to make little noticeable difference.

	The same speed optimization techniques described for images (see above) apply also to image-maps.


Section: Tileset image-maps

As with direct image-maps, we supply an origin point (upper left corner), and in addition, we must supply the dimensions of the tiles. All tiles in the image-map will be rendered at the same size, though the images themselves can be of different sizes. If an image has a different aspect ratio from the tile, the image will be stretched to fit.

Tileset image-maps also require us to specify a tileset which will be used to interpret the list of numbers we are providing. (A tileset is an object of the kind "tileset." It provides a table, the "translation-table" property of the tileset object, that keys a number to a figure name. The tileset object also specifies the dimensions (in pixels) of the tiles that will make it up. More about tilesets can be found below.)

The list that specifies the image-map should only include digits that are listed in the tileset's translation table. If a digit isn't found there, the cell will be skipped and nothing will be drawn for that tile. To specify an empty tile, we can use 0.

If we like, we may supply a background color for the image-map, which will draw a rectangle of the specified color before drawing the image-map tiles. For the short form, the "current background-color" global provides the color of the background rectangle ("current foreground-color" has no effect).

	display an image-map in <window> at <origin> using <list of numbers> using <tileset> with tile-size <width> by <height> pixels

	display an image-map in <window> at <origin> using <list of numbers> using <tileset> with tile-size <width> by <height> pixels and background <color>

Long forms:

	display an image-map in the graphics-window at {5, 120} using {
		{ 11, 11, 11, 11, 11, 11, 11 },
		{ 05, 00, 00, 00, 00, 00, 00 },
		{ 05, 00, 00, 00, 00, 00, 00 },
		{ 11, 11, 11, 11, 11, 11, 11 }  } rendered by the Dungeon-tileset with tile-size 16 by 16 pixels.

	display an image-map in the graphics-window at 5 by 120 using Hallway-definition rendered by the Dungeon-tileset with tile-size 16 by 16 pixels.

	display an image-map in the graphics-window at {5, 120} using Hallway-definition rendered by the Dungeon-tileset with tile-size 16 by 16 pixels and background (hex #A9A9A9).

Tileset objects should provide default tile dimensions. To use these, we just access the "tile-width" and "tile-height" properties of the tileset object:

	let XX be the tile-width of the Dungeon-tileset;
	let YY be the tile-height of the Dungeon-tileset;
	display an image-map in the graphics-window at {5, 120} using 7 wide data from (Hallway-definition) rendered by the Dungeon-tileset with tile-size XX by YY pixels and background (hex #A9A9A9).

Short forms:

	image-map {
				{ 11, 11, 11, 11, 11, 11, 11 },
				{ 05, 00, 00, 00, 00, 00, 00 },
				{ 05, 00, 00, 00, 00, 00, 00 },
				{ 11, 11, 11, 11, 11, 11, 11 } } at {5, 120} tileset (Dungeon-tileset) size 16 x 16.

	image-map Hallway-definition at {5, 120} tileset (Dungeon-tileset) size 16 x 16, backgrounded.

Speed notes:

	Image-maps must display a number of images every time they are redrawn. Their speed is likely faster than drawin the images individually using the "draw image" command. They are likely to perform well in any interpreter that draws images quickly. Direct image-maps should theoretically draw slightly faster than tileset maps, but in practice the extra table-lookup required for tileset maps seems to make little noticeable difference.

	The same speed optimization techniques described for images (see above) apply also to image-maps.


Chapter: Complex commands: Rendered strings

One of the most notable limitations of graphic windows is that we cannot print text to them. Rendered strings provide a way around this difficulty, through "text painting": A rendered string renders an indexed text graphically. The string is read character by character, and each character is drawn to the screen using either an image file or a bitmap. (Note that rendered strings are not accessible to screen readers.)

A rendered string requires us to specify a font object to use for rendering it. A font in this sense is not the font we use on our computer. Instead, a font is a special kind of Inform object; its major task is to link letterforms (images or bitmaps), via a lookup table, with the characters they are meant to represent. Two fonts are provided as Glimmr extensions (Glimmr Image Font and Glimmr Bitmap Font), and authors are of course free to create their own fonts (see below).

The short forms of rendered string drawing commands call upon another global variable, the "current font". This specifies the font to be used when drawing with short form commands.

There are two types of rendered string:

	Bitmap-rendered string - Each glyph is drawn as a bitmap; that is, with individual pixels or "bits" drawn directly to the screen.

	Image-rendered string - Each glyph is drawn using a separate, external image file, preferably in PNG format.

As with other drawing types, the origin coordinate of a rendered string is usually the upper-left corner. However, in recognition of the fact that we might want to "center align" or "right align" some painted texts, we can also specify alternate alignments, by appending "center-aligned" or "right-aligned" to the end of the drawing command for either type of rendered string.

Note that rendered strings are limited to a single line, though we can set two strings next to one another to create multiple lines:

	bitmap text "This is the first line of" at {10, 10} size 1 px;
	bitmap text "a two-line paragraph." at {10, 30} size 1 px.	


Section: Bitmap-rendered strings

Bitmap-rendered strings are painted from "glyph maps" that are constructed very similarly to (monochrome) bitmaps, as described above (the main difference is that bitmap-rendered strings use flat arrays). Just as with bitmaps, we must specify the number of pixels we want each "bit" of the characters in our string to correspond to by supplying the "dot size": a dot size of 2 will use 4 pixels (2 x 2) onscreen to render each bit in the bitmap. 

	paint bitmap text <color> of <indexed text> in <window> at <origin> using <font> with dot size <size> pixels

	paint bitmap text <color> of <indexed text> in <window> at <origin> using <font> with dot size <size> pixels and background <color>

With variable alignment:

	paint bitmap text <color> of <indexed text> in <window> at <origin> using <font> with dot size <size> pixels, <alignment>

	paint bitmap text <color> of <indexed text> in <window> at <origin> using <font> with dot size <size> pixels and background <color>, <alignment>

Long forms:

	paint bitmap text (color g-Crimson) of "WARNING!" in the graphics-window at {35, 140} using Glimmr C&C with dot size 3 pixels.

	paint bitmap text (hex #DC143C) of "WARNING!" in the graphics-window at 35 by 140 using Glimmr C&C with dot size 3 pixels and background (color g-white).

	paint bitmap text (color g-Crimson) of "WARNING!" in the graphics-window at {35, 140} using Glimmr C&C with dot size 3 pixels, center-aligned.

	paint bitmap text (hex #DC143C) of "WARNING!" in the graphics-window at 35 by 140 using Glimmr C&C with dot size 3 pixels and background (color g-white), right-aligned.

(Glimmr C&C is the name of the bitmap font that is made available with Glimmr. To use it, include the Glimmr Bitmap Font extension.)

Short forms:

	bitmap text "WARNING!" at {35, 140} size 3 px.

	bitmap text "WARNING!" at {35, 140} size 3 px backgrounded.

	bitmap text "WARNING!" at {35, 140} size 3 px, right-aligned.

	bitmap text "WARNING!" at {35, 140} size 3 px backgrounded, center-aligned.

Note that to use short forms for bitmap-rendered strings, we must first set the "current font" global variable to the name of the font we wish to use. For the bitmap font provided as part of Glimmr (in the Glimmr Bitmap Font extension), we would do this as follows:

	change the current font to Glimmr C&C;
	bitmap text "Now we're cooking with gas..." at {35, 140} size 3 px.

The current font is set by default to a dummy value, so we will always need to set this before we can paint any texts using the short form.

The text color for short-form commands is determined by the "current foreground-color" global, while the background color is supplied with the "current background-color." The latter is only consulted if backgrounded is included at the end of the main body of the command. Note that there is no comma before the "backgrounded" in the short forms for rendered strings as there is for bitmaps and image-maps.

Speed notes:

	Bitmap-rendered strings draw a number of bitmaps each time they are redrawn, and bitmaps themselves are composed of multiple rectangle-drawing instructions. As such, bitmap-rendered strings are the most intensive of Glimmr's drawing commands. Because most interpreters are still relatively slow when it comes to drawing rectangles, they will draw relatively slowly. If you want to use bitmap-rendered strings and don't like the performance on your interpreter, contact your friendly neighborhood terp maintainer and ask for improvement! (The exception is Gargoyle, which in the bleeding-edge versions available in 2010 is quite fast at rendering bitmap-rendered strings.) 
	

Section: Image-rendered strings

Image-rendered strings are painted from individual image files. Each glyph in the font is saved as a separate PNG file. (JPEG files should be avoided--we will have far more flexibility if we save the image file as a transparent PNG. This will allow us, for example, to specify a background color--JPEG files are opaque, and will not permit us to see anything behind them.)

We can scale image-rendered strings to any size we wish, though obviously some sizes will be better than others. This is done by providing a scaling factor, a ratio, always provided to the fourth decimal place. Here are some examples of the expression of the ratio:

	1.0000 = original size of image file
	0.5000 = 50% of original size
	0.1250 = 1/8 of original size
	2.0000 = twice the original size (scaling up is not recommended)

Note that Glulx cannot affect the color of image files, so it is not possible to change the color of the glyphs in an image font. For this reason, there is no foreground color specification in the image text painting commands. If the font's image files are transparent PNGs, a background color can be supplied (similar to a highlight effect in Microsoft Word, or to the background-color CSS attribute for inline HTML text elements). For the short form commands, we can as usual specify the background color using the "current background-color" variable.

If we provide a background color, we must also specify the width of a margin around the image files. This allows us to optimize the appearance of the background color rectangle. The number of pixels specified must be an integer and will be added to the size of the background color rectangle on each side. So, if the margin is 3, 3 pixels will be added at top, bottom, left, and right. The margin value is similar to the padding value in CSS. (The margin can be set to 0 if we like.)

	paint image-based text of <indexed text> in <window> at <origin> using <font> scaled at <scaling factor>

	paint image-based text of <indexed text> in <window> at <origin> using <font> scaled at <scaling factor> with background <color> and margin of <width> pixels

With variable alignment:

	paint image-based text of <indexed text> in <window> at <origin> using <font> scaled at <scaling factor>, <alignment>

	paint image-based text of <indexed text> in <window> at <origin> using <font> scaled at <scaling factor> with background <color> and margin of <width> pixels, <alignment>

Long forms:

	paint image-based text of "[the location]" in the graphics-window at {5, 5} using Glimmr Lucidex scaled at 0.4500.

	paint image-based text of "[the location]" in the graphics-window at {5, 5} using Glimmr Lucidex scaled at 0.4500 with background (g-LightGray) and margin of 3 pixels.

	paint image-based text of "[the location]" in the graphics-window at {5, 5} using Glimmr Lucidex scaled at 0.4500, right-aligned.

	paint image-based text of "[the location]" in the graphics-window at {5, 5} using Glimmr Lucidex scaled at 0.4500 with background (g-LightGray) and margin of 3 pixels, center-aligned.

Short forms:

	image text "[the location]" at {5, 5} scale 0.4500.

	image text "[the location]" at {5, 5} scale 0.4500 margin 3 px.

	image text "[the location]" at {5, 5} scale 0.4500, right-aligned.

	image text "[the location]" at {5, 5} scale 0.4500 margin 3 px, center-aligned.

The presence of the margin in the short form serves to indicate that we want a background color, and that color will be provided by the "current background-color" variable.

Note that to use short forms for image-rendered strings, we must first set the "current font" global variable to the name of the font we wish to use. For the image font provided along with Glimmr (in the Glimmr Image Font extension), we would do this as follows:

	change the current font to Glimmr Lucidex;
	image text "Hello Sailor" at {35, 140} scale 0.3500 margin 2 px.

Speed notes:

	A single image-based text command may display a large number of images to the screen at once. The speed is probably roughly equivalent to the speed required to draw the images individually. Image-based texts are likely to perform well in any interpreter that draws images quickly, and until interpreters' speed at drawing rectangles is improved, they will tend to be faster than bitmap-rendered strings. (The bleeding-edge versions of Gargoyle available as of summer 2010 may be exceptions to this.)


Chapter: Tilesets

A tileset is an object (of kind thing, to be precise) that defines the essential information needed for printing an image-map using a list of numbers. Declaring a tileset is simple:

	The Glimmr Automap Tileset is a tileset.

A tileset has only a couple of parameters. The most important is the "translation table". The translation table relates an arbitrary number to a figure name: 

	The Glimmr Automap Tileset is a tileset. The translation-table is the Table of Automap Tiles.

	Table of Automap Tiles
	Char	Tile
	number	figure-name
	2	Figure of north south path
	1	Figure of east west path
	35	Figure of ne sw path
	36	Figure of nw se path
	37	Figure of empty room center
	90	Figure of diagonal cross
	91	Figure of orthogonal cross 
	38	Figure of south wall
	39	Figure of north wall
	40	Figure of east wall
	41	Figure of west wall
	42	Figure of north exit
	43	Figure of south exit

The two remaining properties of a tileset describe the dimensions of the tiles. These should (but strictly need not) reflect the actual dimensions of the image files in the tileset. The dimension properties are "tile-width" and "tile-height":

	The tile-width of the Glimmr Automap Tileset is 25.
	The tile-height of the Glimmr Automap Tileset is 25.


Chapter: Fonts and Font Creation

While the design of fonts is beyond the scope of this documentation, the creation of fonts for use with Glimmr is relatively simple, though like all font-making it does involve some fiddly bookkeeping. By far the easiest place to begin to create a font is to open up the fonts included with Glimmr and see how they are made; you may want to refer to one or the other of the font extensions (Glimmr Bitmap Font and Glimmr Image Font) as you peruse this section of the documentation.

There are actually two kinds of fonts used by Glimmr, bitmap fonts and image fonts. As the names imply, these are appropriate for bitmap-rendered strings and image-rendered strings, respectively (we shouldn't try to use an image font for a bitmap-rendered string or vice versa--bad things will result!). 

A "font" of whatever type is actually a kind of thing (though not one that the player can see, interact with, or refer to, at least not under normal circumstances). All of a font's features are provided through the properties of this font object. In the next section, we will walk through the processes of creating a font object that are common to both types, and in subsequent sections move on to the properties of the fonts that are specific to one or the other.

Note that fonts actually look up their glyphs by character code (e.g., 32 for a space, 35 for the pound sign, etc.). If we are adding characters to a font that don't have convenient keyboard equivalents, we can use the formulation "char-code X", where X is the character code. For a happy face (character code 1), for example, we can specify our rendered text as "LOL [char-code 1]". We can provide our own equivalent for say phrases like so:

	To say happy face:
		say char-code 1.

...and this allows "LOL [happy face]".


Section: Creating new fonts

It is best to segregate fonts into their own extensions, so that they are available for other projects, and also because they tend to incorporate long stretches of repetitive code (e.g. figure declarations and glyph maps) that aren't nice to have in the main story file anyway.

Begin the new extension by including this line:

	Use authorial modesty.

This will suppress the extension's name when the VERSION command is typed in-game, in favor of a custom colophon (see below).

Next, declare the font. For a bitmap font (actual data from the Glimmr fonts is used for these examples):

	Glimmr C&C is a bitmap font.

Or, for an image font:

	Glimmr Lucidex is an image font.

A font provides a "colophon," a bit of text that names and provides credit to the creator(s) of the font. Declare it like so:

	The colophon of Glimmr C&C is "Glimmr C&C is a pixel font based on C&C Red Alert by N3tRunn3r."

The colophon is appended to the game's normal credits, and will look like this in the finished game:

	Typefaces used include:
	Glimmr C&C: Glimmr C&C is a pixel font based on C&C Red Alert by N3tRunn3r.

Every font includes a "font table." The font table provides the critical parameters for each glyph. The font table differs significantly between image fonts and bitmap fonts (see the appropriate section below). For now, we will just declare a table name:

	The font table of Glimmr C&C is the Table of Glimmr C&C Parameters.

A font has a number called the "font height". This number represents the maximum height of the glyph space in the appropriate units. For a bitmap font, this would be the number of bits, while for an image font, it is the number of pixels. 

	The font-height of Glimmr C&C is 12.
	The font-height of Glimmr Lucidex is 56.

This number represents the full height of the font, from the top of the ascenders to the bottom of the descenders. It is used primarily to calculate the height of the rectangle of background color, but it will also be useful to be aware of the height of the font as you design it. (Note that there is no corresponding number for width--all Glimmr fonts are variable width in principle, though it would be easy enough to make a fixed-width font by simply making all characters the same width.)

Section: Steps for the creation of new bitmap fonts

If you are interested in creating your own font for use in a game, there is a thriving online scene organized around the creation of "pixel fonts" that can serve as a source of inspiration, and even advice. Just get out your google and go!

The characters (glyphs) of a bitmap font are stored in the "glyph map," a list of numbers with a particular format. As with monochrome bitmaps, we specify each bit of the font using 1's for on-bits and 0's for off-bits. However, we also immediately preface the bitmap with the ASCII character code for the glyph: 

	The glyph map of Glimmr C&C is {
		33,[exclamation point]
		1, 
		1, 
		1, 
		1, 
		1, 
		0, 
		1,  
		34,[quotation mark]
		1, 0, 1, 
		1, 0, 1,  
		35,[pound sign]
		0, 0, 1, 0, 1, 0, 0, 
		0, 0, 1, 0, 1, 0, 0, 
		1, 1, 1, 1, 1, 1, 1, 
		0, 0, 1, 0, 1, 0, 0, 
		1, 1, 1, 1, 1, 1, 1, 
		0, 0, 1, 0, 1, 0, 0, 
		0, 0, 1, 0, 1, 0, 0 ... }

Bitmaps should be made as compact as possible--there should never be a row or column of all zeros at the edges of the map, as this adds unnecessary processing time.

The glyph map provides only the shape and the character code for each glyph. It does not describe how the character should be positioned with the total available font height, nor does it indicate how the glyph relates to the glyphs around it. All of this information is provided in the font table.

[ADD SOME STUFF HERE...]
A font table will have 7 columns:

	glyph - char - index - width - height - yoffset - advance

The glyph column is a text column that provides a visual reference, and is intended only for human readability--it is not consulted in the rendering of text. It is used to depict the character described by the rest of the table row, e.g. "space", "!", "quotation mark", "A", etc. The actual lookup is done using the character code, provided in the char column.

 The char column contains the character code, a number. This code is what the extension will use to match against the text-string provided. The easiest way to see what char code is assigned to a character (or at least one that can be typed on the keyboard) is to include Basic Screen Effects and use this phrase:

		say "[the chosen letter]."

When it hits this code, the game will wait for you to tap a key and then print the corresponding character code.

The width column is the width of the character's bitmap in bits, and the height is, of course, the height. These numbers must correctly describe the dimensions of the bitmap or it will be incorrectly drawn. These dimensions are also used to calculate the index column (see below).

Bitmap fonts are rendered starting from the upper-left corner. The yoffset column tells how many bits down from the imaginary top line of the font the glyph in question should be drawn. An uppercase "A", for example, which is a tall character, likely will have a y-offset of 0. A character like lowercase "y", however, is a short character and will likely have a positive y-offset. A negative offset can be used, if necessary, to make characters taller than the standard.

The advance column describes how many bits to the right we should scan in order to draw the next character in the string. The advance is calculated based on the left edge of the character, so the number will usually be at least one more than the character's width, to be sure that the next glyph drawn will not touch or overlap it.

The index column has been saved for last, but it is very important. The index refers to the position of the character code reference within the font's glyph map. The index is used like the track spacing grooves in an LP: by jumping straight to this entry when we are ready to draw a glyph, we can avoid iterating through all of the entries that come before it. Here is the glyph map excerpted above again, with arrows marking the indices:

	The glyph map of Glimmr C&C is {
		33, <------
		1, 
		1, 
		1, 
		1, 
		1, 
		0, 
		1,  
		34, <------
		1, 0, 1, 
		1, 0, 1,  
		35, <------
		0, 0, 1, 0, 1, 0, 0, 
		0, 0, 1, 0, 1, 0, 0, 
		1, 1, 1, 1, 1, 1, 1, 
		0, 0, 1, 0, 1, 0, 0, 
		1, 1, 1, 1, 1, 1, 1, 
		0, 0, 1, 0, 1, 0, 0, 
		0, 0, 1, 0, 1, 0, 0 ... }

Counting each entry in the glyph map by hand to determine the index would be a chore, so there is a utility provided that will automatically populate blank index values. There are two prerequisites for this process to work: We must have correctly filled out the other columns in our table continuation, and the order in which characters are listed in the table continuation must be the same as the order in which their glyphs are defined in the glyph map. So long as both of these are true, we can leave our index column(s) blank, like so:

	Table of Glimmr C&C Parameters (continued)
	glyph	char	index	width	height	yoffset	advance
	"happy face"	1	--	7	8	1	8
	"happy face reversed"	2	--	7	8	1	8

And then, add a rule like this to the game:

	First when play begins:
		set blank indices for Glimmr C&C, verifying glyph map and writing table to disk.

This will number the indices for you, verify that the newly assigned index numbers match the glyph map, print the results to the screen, and write a file, "FontTable", to your hard disk (if you run the game in the IDE, it should wind up in the game folder.) This will be your font table, now with index numbers in place and correctly formatted. It is ready to be copied and pasted back into your game. (Don't forget to remove the "set blank indices" code from the game after completing the process!)

And that completes the process of creating a bitmap font.


Section: Extending bitmap fonts

There are also special facilities for extending a bitmap font if it is missing characters we need. This doesn't require us to edit the original font in any way, and the ease of creating bitmap characters makes it relatively painless. In fact, this is why the Glimmr Bitmap Font has fewer glyphs than Bitmap Image Font--because it is far easier to create new bitmap glyphs than new image ones. (It's also easy to edit a bitmap glyph by directly changing the bitmaps in the glyph map. If you do this to someone else's font, be sure to change the colophon to give yourself credit.)

Extending bitmap fonts is a two-step process. First, we need to add our new glyphs to the font's glyph map. The "starting the virtual machine" activity is probably the best place to do this. Here is a glyph for a happy face, which we will place at character code 1:

	After starting the virtual machine:
		Add {
			1, [This is the character code]
			0, 1, 1, 1, 1, 1, 0,
			1, 0, 0, 0, 0, 0, 1,
			1, 0, 1, 0, 1, 0, 1,
			1, 0, 0, 0, 0, 0, 1,
			1, 0, 1, 1, 1, 0, 1,
			1, 0, 0, 1, 1, 0, 1,
			1, 0, 0, 0, 0, 0, 1,
			0, 1, 1, 1, 1, 1, 0  } to the glyph map of Glimmr C&C.

Never use any syntax but the "Add {} to the glyph map of ..." shown here to extend glyph maps. The order of glyphs in the glyph map is of critical importance, and new glyphs must always be added *after* all earlier glyphs.

We must also then extend the typeface's font table so that the glyph can be drawn to the screen. We do this by looking at the font extension, noting the name of the font table, and putting a table continuation in our own code. Note that the order in which glyphs are listed in the table must be the same as the order in which they are listed in the glyph map! Example:

	Table of Glimmr C&C Parameters (continued)
	glyph	char	index	width	height	yoffset	advance
	"happy face"	1	2724	7	8	1	8

(If you haven't already read the preceding section, on creating bitmap fonts from scratch, do so before continuing--it explains the makeup of the font table, including the meaning of the index column.)

2724
Note that the "index" column has been left blank. Just as when we create a new font, we will need to provide index numbers for each new glyph we add to the font; but we don't want to have to count the characters in the font. There are in fact two ways to do this. If we include this code in our game:

	set blank indices for Glimmr C&C

...the game will silently and automatically correct the font table, adding the needed index numbers for us. We can leave this code in our game and, at the cost of a little extra time at startup, this will get things working with no additional effort, e.g.:

	After starting the virtual machine:
		Add {
			1, [This is the character code]
			0, 1, 1, 1, 1, 1, 0,
			1, 0, 0, 0, 0, 0, 1,
			1, 0, 1, 0, 1, 0, 1,
			1, 0, 0, 0, 0, 0, 1,
			1, 0, 1, 1, 1, 0, 1,
			1, 0, 0, 1, 1, 0, 1,
			1, 0, 0, 0, 0, 0, 1,
			0, 1, 1, 1, 1, 1, 0  } to the glyph map of Glimmr C&C;
		set blank indices for Glimmr C&C.

But we can also use the same command on a temporary basis to fix the table. To see the calculated index numbers, simply remove the silently from the above phrase:

	 set blank indices for Glimmr C&C.

This will output any changes made to the screen. We can then type the proper index numbers into our table and remove the "set blank indices" instruction from the source code. Optionally, we can also verify that both old and newly assigned index numbers match the glyph map (we would not want to do this in a released game, but it potentially useful for debugging):

	set blank indices for Glimmr C&C, verifying glyph map.

Finally, "set blank indices" can also output the *entire* table to an external text file, which is expected to be useful only if we are designing our own font, or heavily modifying an existing one:

	set blank indices for Glimmr C&C, verifying glyph map and writing table to disk.

If you run your game in the Inform IDE, the external file should be saved to your project folder.


Section: Creating new image fonts

Overall, creating image fonts is more difficult than creating bitmap fonts because we need to produce good quality image files--especially ones that will scale nicely--and this can be tricky (it's also beyond the scope of this documentation--but see the resources listed below). However, the process of setting up the font table in Glimmr is easier than for bitmap fonts as image fonts have only a few parameters to keep track of.

Before setting up the font table, however, we need to do a few other things. Fonts can also be used with Glimmr Canvas-Based Drawing, and when we do this, we add a few new features. Canvas-Based Drawing draws the background color margin based on the margin specified by the font designer (though of course this can be overridden). So, we should specify this (if we do not, the margin will default to 1):

	The background-margin of Glimmr Lucidex is 6.

Canvas-Based Drawing also makes it possible to add a cursor to a font. The cursor is a simple vertical line. For image fonts, we need to specify the width of this cursor. The "cursor-width" property of the font should be set to the number of pixels the cursor will be *when the font is viewed at full size*:

	The cursor-width of Glimmr Lucidex is 2.

Next, the figures to be used must be declared. This must be done above the font table in the extension code, or the table won't work. We declare the files for image fonts as for any other Inform figures (consider the naming of the files and the figures carefully):

	Figure of Glimmr Lucidex 32 is the file "Glimmr Lucidex 032 Space.png".
	Figure of Glimmr Lucidex 33 is the file "Glimmr Lucidex 033 Exclamation mark.png".
	Figure of Glimmr Lucidex 34 is the file "Glimmr Lucidex 034 Quotes.png".

Now we are ready to tackle the font table. The columns for an image font table are as follows:

	glyph - char - glyph-ref - yoffset - advance

The "glyph" and "char" columns are the same as their counterparts in the bitmap font table (see the bitmap font section for an explanation). The glyph-ref column is the figure name of the glyph associated with the character, e.g. Figure of Glimmr Lucidex 33.

The "yoffset" and "advance" columns are similar in purpose to their counterparts in the bitmap font table.  The yoffset column describes the y-offset, number of pixels down from the imaginary top line of the font we should place the image file of the glyph. An uppercase "A", for example, which is a tall character, likely will have a y-offset of 0. A character like lowercase "y", however, is a short character and will likely have a positive y-offset.

That said, it is *highly* recommended that the yoffset always be set to 0, with every image file being the full height of the font-height. In other words, if the full font-height is 56 pixels, every image file should be sized at 56 pixels, with the glyph placed appropriately within. This is because scaling is inherently inaccurate, and images of different heights may not scale in exactly the same way. (Please see the image files for the Glimmr Image Font for a real-world example.) The yoffset column is there if it is needed, and a negative value can even be used, if needed, to make characters taller than the standard, but the quality of the output really will be better if height is controlled with the images rather than with offsets.

The "advance" column tells GDC how many pixels to the right we should scan in order to draw the next character in the string. The advance is calculated based on the left edge of the character, so the number will usually be at least one more than the character's width, to be sure that the next glyph drawn will not touch or overlap it. When testing the advance values onscreen, be sure to do so with the scaling factor set to 1.0000. Scaling is inherently inaccurate, and character spacing decisions should be made using the most accurate scaling factor--the one (1.0000) that involves no scaling. 

Once these steps are completed, you will have finished setting up your image font.


Chapter: Debugging

Glimmr Drawing Commands does not include any special debugging commands. However, like all Glimmr extensions, it includes a debugging log. To use the log, enable this use option:

	Use Glimmr debugging.

Now Glimmr functions will announce themselves, as well as the particular extension that generated them (e.g., Glimmr Canvas-Based Drawing, Glimmr Drawing Commands, etc.) as they fire. Be warned that, under normal usage, Glimmr generates a lot of debugging information, and can quite thoroughly gum up a game's output. There are a few things we can do to mitigate this:

	1) The Glimmr Debugging Console extension can be included to segregate Glimmr logging output into its own window.

	2) We can set up our own alternate text-buffer window and direct log output there by setting the "console output window" variable, e.g.:

		The console output window is my-text-window [a text-buffer g-window].

	3) We can also send console log output to the transcript, while not printing it anywhere else. To do this, we include this code in our story file (it must be placed *after* the inclusion of GDC):

		To say >console:
			say echo stream of main-window.
	
		To say <:
			say stream of main-window;
			say run paragraph on.

	This will only work when a transcript is actually being written. To ensure that we do not forget to initiate one, we can include something like this:

		When play begins:
			try switching the story transcript on.


Section: Echoing the debugging log to the transcript

If we are directing output to a window other than the main-window, we may want to echo that window's output to the transcript. To do this, include this use option:

	Use Glimmr console transcript logging

Now, whichever window is designated as the console output window will have its output echoed to the transcript.


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


Section: A note for expert users

Each command in GDC also has a special phrasing that does not produce a console message. You may use this phrasing (see the source code) if you wish to supply your own console message. Glimmr Canvas-Based Drawing does this, for example, in order to provide its own messages that describe the state of the graphic element objects that encapsulate drawing commands in that extension.


Chapter: Contact info

If you have comments about the extension, please feel free to contact me directly at ek.temple@gmail.com.

Please report bugs on the Google Code project page, at http://code.google.com/p/glimmr-i7x/issues/list.

For questions about Glimmr, please consider posting to either the rec.arts.int-fiction newsgroup or at the intfiction forum (http://www.intfiction.org/forum/). This allows questions to be public, where the answers can also benefit others. If you prefer not to use either of these forums, please contact me directly via email (ek.temple@gmail.com).


Chapter: Change Log

Version 2: Updated for 6F95 (thanks to Harold Gates!). Now uses no deprecated features.

Version 1: Initial release.


Example: * Retro Drawing - This example presents a good cross-section of the graphics commands provided by GDC. Note that none of the drawing here uses image files--everything is done with "primitives", painted text, and bitmaps.

Note the window-drawing rule provided does not scale, center, or otherwise vary how and where the entities are drawn. This is likely to be awkward in a real game, since players may play with a variety of window sizes, etc. The solution is to use Glimmr Canvas-Based Drawing, or to write our own window-drawing rules to ensure flexible display.


	*: "Retro Drawing"

	Include Glimmr Drawing Commands by Erik Temple.
	Include Glimmr Bitmap Font by Erik Temple.

	Arcade is a room. "Nothing at all to do here."

	The graphics-window is a graphics g-window spawned by the main-window.	The position is g-placeabove.

	When play begins:
		open up the graphics-window.
	
	[After printing the banner text:
		say "[line break]This example for the Glimmr Drawing Commands extension doesn't do much. It demonstrates a few of the drawing commands, and uses no external resources. Everything is drawn by directly coloring individual pixels. Key: [paragraph break]Ms. Pac-Man: polychrome bitmap.[line break]Maze outlines: line primitives.[line break]Lunch dots: rectangle primitives.[line break]Text box: stroked rectangle primitive.[line break]Text: Bitmap-rendered text.[paragraph break]".]

	Window-drawing rule for the graphics-window:
		clear the graphics-window;
		display a polychrome bitmap in the graphics-window at { 30, 30 } using the Pac-Lady with dot size 1 pixel;
		draw a line (r 13 g 47 b 232) in the graphics-window from { 20, 23 } to { 120, 23 } with 3 pixel line-weight;
		draw a line (r 13 g 47 b 232) in the graphics-window from { 20, 49 } to { 120, 49 } with 3 pixel line-weight;
		draw a rectangle (color g-White) in the graphics-window from { 45, 36 } to { 48, 39 };
		draw a rectangle (color g-White) in the graphics-window from { 65, 36 } to { 68, 39 };
		draw a rectangle (color g-White) in the graphics-window from { 85, 36 } to { 88, 39 };
		draw a rectangle (color g-White) in the graphics-window from { 105, 36 } to { 108, 39 };
		draw a rectangle (r 13 g 47 b 232) in the graphics-window from { 20, 60 } to { 120, 100 } with 2 pixel stroke (color g-Yellow);
		paint a bitmap text (color g-Yellow) of "EAT IT" in the graphics-window at { 28, 64 } using Glimmr C&C with dot size 3 px.

	The Pac-Lady is a list of lists of numbers variable. The Pac-Lady is {
	         { 1, -1, -1, 16758465, 16758465, -1, -1, -1, -1, -1, -1, -1, -1 },
	         { -1, -1, -1, 16758465, 16758465, 16758465, 268431360, 268431360, 268431360, 268431360, -1, -1, -1 },
	         { -1, -1, 16758465, 16758465, 16738740, 16738740, 268431360, 268431360, 268431360, 268431360, 268431360, 268431360, -1 },
	         { 16758465, 16758465, 16738740, 16738740, 268431360, 268431360, 268431360, 268431360, 268431360, 268431360, 268431360, 268431360, 268431360 },
	         { 16738740, 16758465, 16758465, 268431360, 268431360, 268431360, 2, 2, 268431360, 268431360, 268431360, 16738740, 16738740 },
	         { -1, 16738740, 16738740, 268431360, 268431360, 2, 205, 268431360, 268431360, -1, -1, -1, -1 },
	         { -1, 268431360, 268431360, 268431360, 268431360, 268431360, 268431360, -1, -1, -1, -1, -1, -1 },
	         { -1, 268431360, 268431360, 268431360, 268431360, -1, -1, -1, -1, -1, -1, -1, -1 },
	         { -1, 268431360, 268431360, 268431360, 268431360, 268431360, 268431360, -1, -1, -1, -1, -1, -1 },
	         { -1, 268431360, 268431360, 268431360, 2, 268431360, 268431360, 268431360, 268431360, -1, -1, -1, -1 },
	         { -1, -1, 268431360, 268431360, 268431360, 268431360, 268431360, 268431360, 268431360, 268431360, 268431360, 16738740, 16738740 },
	         { -1, -1, 268431360, 268431360, 268431360, 268431360, 268431360, 268431360, 268431360, 268431360, 268431360, 268431360, 268431360 },
	         { -1, -1, -1, 268431360, 268431360, 268431360, 268431360, 268431360, 268431360, 268431360, 268431360, 268431360, -1 },
	         { -1, -1, -1, -1, -1, 268431360, 268431360, 268431360, 268431360, 268431360, -1, -1, -1 }
	     }.



