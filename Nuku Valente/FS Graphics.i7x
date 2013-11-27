FS Graphics by Nuku Valente begins here.

Figure of title_graphic is the file "title.png".
Figure of pixel is the file "pixel.png".

[infection icons]
Figure of BlueGel_icon is the file "BlueGel.png".
Figure of griffon_icon is the file "bluegriffon.jpg".
Figure of Mannequin_icon is the file "Mannequin.png".
Figure of PinkGel_icon is the file "PinkGel.png".
Figure of SnowLeopard_icon is the file "SnowLeopard.jpg".
Figure of Zebra_icon is the file "Zebra.png".
Figure of DemonBrute_icon is the file "Brutus_evil.png".

[npc icons]
Figure of BrutusGood_icon is the file "Brutus_good.png".
Figure of Felix_icon is the file "Felix.png".
Figure of sandy_icon is the file "sandra.png".
Figure of Septus_icon is the file "Septus.jpg".
Figure of Thomas_icon is the file "Thomas.png".

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
"Pink Gel"	Figure of PinkGel_icon
"Blue Gel"	Figure of BlueGel_icon
"Zebra"	Figure of Zebra_icon
"Mannequin"	Figure of Mannequin_icon
"Demon Brute"	Figure of DemonBrute_icon


artistcredits is an action applying to nothing.

understand "artwork credits" as artistcredits.
understand "artworkcredits" as artistcredits.
understand "art credits" as artistcredits.
understand "artcredits" as artistcredits.
understand "art cred" as artistcredits.
understand "artcred" as artistcredits.

carry out artistcredits:
	say "Artwork Credits for Flexible Survival:[line break]";
	say "     [line break]";
	say "Infections:[line break]";
	say "     Blue Gel by Rastear @ y-gallery.net[line break]";
	say "     Demon Brute by Lay @ y-gallery.net[line break]";
	say "     Hermaphrodite Gryphon by ?[line break]";
	say "     Mannequin by Rastear @ y-gallery.net[line break]";
	say "     Pink Gel by Rastear @ y-gallery.net[line break]";
	say "     Snow Leopard by ?[line break]";
	say "     Zebra by Purplepardus @ furaffinity.net[line break]";
	say "     [line break]";
	say "NPCs:[line break]";
	say "     Brutus by Lay @ y-gallery.net[line break]";
	say "     Felix by Geir @ furaffinity.net[line break]";
	say "     Sandra by ?[line break]";
	say "     Septus by Feralise @ furaffinity.net[line break]";
	say "     Thomas by Geir @ furaffinity.net[line break]";

FS Graphics ends here.

