FS Graphics by Nuku Valente begins here.

Figure of title_graphic is the file "title.png".
Figure of pixel is the file "pixel.png".
Figure of sandy_icon is the file "sandra.png".
Figure of griffon_icon is the file "bluegriffon.jpg".
Figure of SnowLeopard_icon is the file "SnowLeopard.jpg".

A thing has a figure name called icon.
The icon of a thing is usually figure of pixel.
graphics is a truth state that varies.
graphics is usually true.

before examining a thing(called t):
	if the icon of t is figure of pixel:
		continue the action;
	project the icon of t;

to project (x - a figure name):
	if graphics is true:
		display x;
		
graphicmoding is an action applying to nothing.
understand "graphics" as graphicmoding.

carry out graphicmoding:
	if graphics is true:
		say "Graphics are now disabled.";
		now graphics is false;
	otherwise:
		say "Graphics are now enabled.";
		now graphics is true;

Table of infection graphics
title	icon(figure name)
"Hermaphrodite Gryphon"	Figure of griffon_icon
"Snow Leopard"	Figure of SnowLeopard_icon


FS Graphics ends here.
