FS Graphics by Nuku Valente begins here.

Figure of title_graphic is the file "title.png".
Figure of pixel is the file "pixel.png".

[infection icons]
Figure of AlphaHusky_icon is the file "FS_AlphaHusky.jpg".
Figure of BlueGel_icon is the file "BlueGel.png".
Figure of Bottlenose_icon is the file "FS_BottlenoseToy.jpg".
Figure of DemonBrute_icon is the file "Brutus_evil.png".
Figure of LatexVixen_icon is the file "FS_LatexVixen.jpg".
Figure of MessyPig_icon is the file "FS_MessyPig.jpg".
Figure of PlushLion_icon is the file "FS_PlushLion.jpg".
Figure of Ram_icon is the file "FS_Ram.jpg".
Figure of griffon_icon is the file "bluegriffon.jpg".
Figure of Mannequin_icon is the file "Mannequin.png".
Figure of PinkGel_icon is the file "PinkGel.png".
Figure of ShadowBeast_icon is the file "ShadowBeast.png".
Figure of SnowLeopard_icon is the file "SnowLeopard.jpg".
Figure of Zebra_icon is the file "Zebra.png".

[npc icons]
Figure of BrutusGood_icon is the file "Brutus_good.png".
Figure of Elijah_evil_icon is the file "Elijah_evil.png".
Figure of Elijah_good_icon is the file "Elijah_good.png".
Figure of Elijah_virgin_icon is the file "Elijah_virgin.png".
Figure of Elijah_naked_icon is the file "Elijah_naked.png".
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
"Alpha Husky"	Figure of AlphaHusky_icon
"Bottlenose Toy"	Figure of Bottlenose_icon
"Messy Pig"	Figure of MessyPig_icon
"Latex Vixen"	Figure of LatexVixen_icon
"Plush Lion"	Figure of PlushLion_icon
"ram"	Figure of Ram_icon
"Blue Gel"	Figure of BlueGel_icon
"Demon Brute"	Figure of DemonBrute_icon
"Hermaphrodite Gryphon"	Figure of griffon_icon
"Mannequin"	Figure of Mannequin_icon
"Shadow Beast"	Figure of ShadowBeast_icon
"Snow Leopard"	Figure of SnowLeopard_icon
"Pink Gel"	Figure of PinkGel_icon
"Zebra"	Figure of Zebra_icon

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
	say "     Alpha Husky by Anymouse1968 @ Furaffinity[line break]";
	say "     Bottlenose Toy by Anymouse1968 @ Furaffinity[line break]";
	say "     Demon Brute by Anymouse1968 @ Furaffinity[line break]";
	say "     Latex Vixen by Anymouse1968 @ Furaffinity[line break]";
	say "     Messy Pig by Anymouse1968 @ Furaffinity[line break]";
	say "     Ram by Anymouse1968 @ Furaffinity[line break]";
	say "     Blue Gel by Rastear @ y-gallery.net[line break]";
	say "     Demon Brute by Lay @ y-gallery.net[line break]";
	say "     Hermaphrodite Gryphon by ?[line break]";
	say "     Mannequin by Rastear @ y-gallery.net[line break]";
	say "     Pink Gel by Rastear @ y-gallery.net[line break]";
	say "     Shadow Beast by Fennris @ furaffinity.net[line break]";
	say "     Snow Leopard by ?[line break]";
	say "     Zebra by Purplepardus @ furaffinity.net[line break]";
	say "     [line break]";
	say "NPCs:[line break]";
	say "     Brutus by Lay @ y-gallery.net[line break]";
	say "     Elijah by Genelightfoot @ y-gallery.net[line break]";
	say "     Felix by Geir @ furaffinity.net[line break]";
	say "     Sandra by ?[line break]";
	say "     Septus by Feralise @ furaffinity.net[line break]";
	say "     Thomas by Geir @ furaffinity.net[line break]";

FS Graphics ends here.

