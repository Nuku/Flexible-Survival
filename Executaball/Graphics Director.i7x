Version 2 of Graphics Director by Executaball begins here.

"Provides functions that link the new window based graphics."

Section 1 - Declarations and variables

[New Graphics modifier]
The graphics window position is g-right. The graphics window proportion is 30.
ngraphics_currentartist is a text that varies. ngraphics_currentartist is usually "None".
TempClearBypass is a number that varies. TempClearBypass is usually 0.
[Because of new system, setting this to 1 is needed for making projections work when applied in a 'look' order]

Section 2 - Rules and Functions

After looking:
	follow the ngraphics_clearcheck rule;

This is the ngraphics_clearcheck rule:
	if TempClearBypass is 0:
		follow the ngraphics_blank rule;
		if NewGraphicsDebugMode is true:
			say "[bold type]DEBUG:[roman type] After looking, Function Ran: ngraphics_blank [line break]";
	else if TempClearBypass is 1:
		now TempClearBypass is 0;
		if NewGraphicsDebugMode is true:
			say "[bold type]DEBUG:[roman type] After looking, *Function not run* because TempClearBypass = 1 [line break]";
	else:
		follow the ngraphics_blank rule;
		say "[bold type]ERROR:[roman type] You have an invald graphics clear bypass state! Please inform the FS developers in Discord. Here is an important number: [TempClearBypass] [line break]";

This is the ngraphics_refresh rule:
	if graphics is true and NewGraphics is true:
		follow the current graphics drawing rule;

This is the ngraphics_blank rule:
	if graphics is true and NewGraphics is true:
		project the figure of pixel_icon;
		follow the current graphics drawing rule;
		[now the graphics window proportion is 20;]

This is the ngraphics_phone rule:
	if graphics is true and NewGraphics is true:
		follow the current graphics drawing rule;

Section 2.1 - Combat Runtime rules

To ngraphics_combat_statusoverride:
	follow the ngraphics_statusprocess rule;
	[fill status bar with table of art status;]

Section 3 - Tables

[Graphics Color Table]
[NOTICE: To add new values, please take notice that these values are REVERSE of normal hex/html. Therefore 'AA0000' should be '0000AA'... Except for non-primary colors... I dunno, try it out, no idea how inform handles colors. Different for each interpreter too. Best to stick to simple web colors.]
Table of Common Color Values
glulx color value	assigned number
g-black	0		[== $000000]
g-dark-grey	4473924	[== $444444]
g-medium-grey	8947848	[== $888888]
g-light-grey	14540253	[== $DDDDDD]
g-white	16777215		[== $FFFFFF]
g-yellow-orange	39423		[== $0099FF]
g-ice-blue	15645627		[== $EEBBBB]

Section 3.1 - Artist Status

This is the ngraphics_statusprocess rule:
	let CurrentGraphic be the currently shown picture;
	repeat with n running from 1 to number of filled rows in table of game art:
		choose row n in table of game art;
		if icon entry is CurrentGraphic:
			now ngraphics_currentartist is artist entry;

Section 4 - User Commands

graphicmoding is an action applying to nothing.
understand "graphics" as graphicmoding.
carry out graphicmoding:
	if NewGraphics is true:
		clear the screen;
		say "[bold type]Graphics Settings Unavailable:[roman type][line break]";
		say "You are running the new graphics side window :3 ! If you would like to disable the new graphics display (revert to inline graphics or disable completely), simply save your game right now, close your game completely, then do select [bold type]restore[roman type] at the start menu. You will then be prompted for graphic modifications.[line break]";
		say "We apologize for this inconvenience, this is a technical limitation of our graphics system.[line break]";
		WaitLineBreak;
	else:
		now calcnumber is -1;
		let trixieexit be 0;
		while trixieexit is 0:
			clear the screen;
			say "[bold type]Graphic Settings:[roman type][line break]";
			say "NOTE: You are running the old in-line graphics only mode. To enable the new side-window graphics, simply save your game right now, close your game completely, then do select [bold type]restore[roman type] at the start menu. You will then be prompted for graphic modifications.[line break]";
			say "We apologize for this inconvenience, this is a technical limitation of our graphics system.[line break]";
			say "(1) [link]Graphics[as]1[end link] - [bold type][if NewGraphicsInteger is 1]Inline Mode[else if NewGraphicsInteger is 0]DISABLED[end if][roman type][line break]";
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
							now graphics is false;
							now NewGraphicsInteger is 0;
						else if NewGraphicsInteger is 0:
							now graphics is true;
							now NewGraphics is false;
							now NewGraphicsInteger is 1;
					-- 2:
						say "Exit graphics menu?";
						if player consents:
							now trixieexit is 1;

Section 5 - Debug Commands

[DEBUG Commands]
[Cheat for enabling inline debug stuff]
graphisdebugtoggle is an action applying to nothing.
understand "devgraphicsdebug" as graphisdebugtoggle.
carry out graphisdebugtoggle:
	if NewGraphicsDebugMode is false:
		say "[bold type]DEBUG:[roman type] Graphics debug information is now [bold type]enabled[roman type] (NewGraphicsDebugMode = True)[line break]";
		now NewGraphicsDebugMode is true;
	else:
		say "[bold type]DEBUG:[roman type] Graphics debug information is now [bold type]disabled[roman type] (NewGraphicsDebugMode = False)[line break]";
		now NewGraphicsDebugMode is false;

graphisdebugreport is an action applying to nothing.
understand "devgraphicsreport" as graphisdebugreport.
carry out graphisdebugreport:
	say "[bold type]Grabbing Graphics Variables, please standby.[roman type][line break]";
	clear the screen;
	say "[bold type]Graphics[roman type][line break]";
	[NewGraphics test]
	if NewGraphics is true:
		say "NewGraphics = <true>";
	else if NewGraphics is false:
		say "NewGraphics = <false>";
	else:
		say "NewGraphics = STATE ERROR!";
	[graphics now]
	if graphics is true:
		say "graphics = <true>";
	else if graphics is false:
		say "graphics = <false>";
	else:
		say "graphics = STATE ERROR!";
	[NewGraphicsInteger now]
	if NewGraphicsInteger is 1:
		say "NewGraphicsInteger = <1> (Note: Old Graphics)";
	else if NewGraphicsInteger is 2:
		say "NewGraphicsInteger = <2> (Note: New Graphics)";
	else if NewGraphicsInteger is 0:
		say "NewGraphicsInteger = <0> (Note: Graphics Disabled)";
	else:
		say "NewGraphicsInteger = STATE_ERROR";


Graphics Director ends here.

---- DOCUMENTATION ----

[Now the graphics window proportion is NewGraphicsRatio.]

[Rule for starting the virtual machine:
	now the current graphics drawing rule is the bland graphics drawing rule.]

[The graphics-window is a graphics g-window spawned by the main-window. The position of the graphics-window is g-placeabove. Every turn: follow the refresh windows rule.

When play begins: open up the graphics-window.

The roomview-canvas is a g-canvas. The associated canvas of the graphics-window is the roomview-canvas. The canvas-width is 640. The canvas-height is 480.]

		[now the graphics window proportion is 20;]
		[now the graphics window proportion is 1;]
		[now the graphics window pixel count is 1;]

[- Master Override Function -]
[Instead of looking:
	follow the ngraphics_blank rule;
	try looking;]

Legacy code -
