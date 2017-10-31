Version 1 of New Graphics by Executaball begins here.

"Provides functions that link the new window based graphics."
[New Graphics modifier]
[The graphics window pixel count is 1. The graphics window position is g-above.]
The graphics window position is g-right. The graphics window pixel count is 450.

[Rule for starting the virtual machine:
	now the current graphics drawing rule is the bland graphics drawing rule.]

[The graphics-window is a graphics g-window spawned by the main-window. The position of the graphics-window is g-placeabove.   Every turn: follow the refresh windows rule.

When play begins: open up the graphics-window.

The roomview-canvas is a g-canvas. The associated canvas of the graphics-window is the roomview-canvas. The canvas-width is 640. The canvas-height is 480.]

This is the ngraphics_close rule:
	if graphics is true and NewGraphics is true:
		[now the graphics window proportion is 1;]
		[now the graphics window pixel count is 1;]
		follow the current graphics drawing rule.

This is the ngraphics_open rule:
	if graphics is true and NewGraphics is true:
		now the graphics window pixel count is 450;
		[now the graphics window proportion is 20;]

graphicmoding is an action applying to nothing.
understand "graphics" as graphicmoding.
carry out graphicmoding:
	now calcnumber is -1;
	let trixieexit be 0;
	while trixieexit is 0:
		clear the screen;
		say "[bold type]Graphic Settings:[roman type][line break]";
		say "NOTE: To disable the NEW graphics display, you must restart your interpreter. You may do a [bold type]restore[roman type] after launching to resume your game.";
		say "(1) [link]Graphics[as]1[end link] - [bold type][if NewGraphicsInteger is 1]OLD[otherwise if NewGraphicsInteger is 2]NEW[otherwise if NewGraphicsInteger is 0]DISABLED[end if][roman type][line break]";
		say "(2) [link]EXIT[as]2[end link][line break]";
		while 1 is 1:
			say "(1-2)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is:
			-- 1:
				if NewGraphicsInteger is 1:
					now NewGraphics is true;
					now NewGraphicsInteger is 2;
				else if NewGraphicsInteger is 2:
					now graphics is false;
					now NewGraphics is false;
					now NewGraphicsInteger is 0;
				else if NewGraphicsInteger is 0:
					now graphics is true;
					now NewGraphics is false;
					now NewGraphicsInteger is 1;
			-- 2:
				say "Exit graphics menu?";
				if player consents:
					now the graphics window pixel count is 1;
					[now the graphics window proportion is 1;]
					follow the current graphics drawing rule; [cleanup here needs no condition check because even NewGraphics enabled players will need the window gone.]
					now trixieexit is 1;

[graphiccheat is an action applying to nothing.
understand "graphiccheat" as graphiccheat.
carry out graphiccheat:]



New Graphics ends here.
