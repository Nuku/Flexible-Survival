FS Graphics by Nuku Valente begins here.

Figure of title_graphic is the file "title.png".
Figure of pixel is the file "pixel.png".

[infection icons]
Figure of AlphaHusky_icon is the file "FS_AlphaHusky.jpg".
Figure of Beaver_icon is the file "beaver_ig.jpg".
Figure of BlueGel_icon is the file "BlueGel.png".
Figure of Bottlenose_icon is the file "FS_BottlenoseToy.jpg".
Figure of DemonBrute_icon is the file "Brutus_evil.png".
Figure of ElvenHunter_icon is the file "ElvenHunter.jpg".
Figure of FireSpriteMale_icon is the file "FireSpriteMale.png".
Figure of GooGirl_icon is the file "GooGirl.png".
Figure of griffon_icon is the file "bluegriffon.jpg".
Figure of incubus1_icon is the file "incubus1.jpg".
Figure of incubus2_icon is the file "incubus2.jpg".
Figure of LatexVixen_icon is the file "FS_LatexVixen.jpg".
Figure of Mannequin_icon is the file "Mannequin.png".
Figure of LatexErmine_icon is the file "latexermine_ig.jpg".
Figure of MessyPig_icon is the file "FS_MessyPig.jpg".
Figure of PinkGel_icon is the file "PinkGel.png".
Figure of PlushLion_icon is the file "FS_PlushLion.jpg".
Figure of Ram_icon is the file "FS_Ram.jpg".
Figure of ShadowBeast_icon is the file "ShadowBeast.png".
Figure of SiameseCat_icon is the file "siamesecats_ig.jpg".
Figure of SnowLeopard_icon is the file "SnowLeopard.jpg".
Figure of SpartanHelot_icon is the file "Spartan_Helot.jpg".
Figure of SpidertaurAlleySex_icon is the file "SpidertaurAlleySex.jpg".   [mid-sex scene grapic]
Figure of succubus_icon is the file "succubus.jpg".
Figure of TigressHooker_icon is the file "tigresshooker_ig.png".
Figure of Triceratops_icon is the file "triceratops_ig.jpg".
Figure of Wildcat_icon is the file "wildcat_ig.jpg".
Figure of Zebra_icon is the file "Zebra.png".

[npc icons]
Figure of Adam_icon is the file "Adam.png".
Figure of Amy_icon is the file "Amy.png".
Figure of Andre_icon is the file "Andre.png".
Figure of Andrew_icon is the file "andrew_ig.jpg".
Figure of Anthony_icon is the file "Anthony.jpg".
Figure of Artemis_icon is the file "artemisengulf_ig.jpg".
Figure of Blanche_icon is the file "blanche_ig.jpg".
Figure of BrutusGood_icon is the file "Brutus_good.png".
Figure of Candy_icon is the file "candy_ig.jpg".
Figure of CarlClothed_icon is the file "Carl_clothed.jpg".
Figure of Christyend_icon is the file "christyend_ig.jpg".		[for 'Tourist Attraction' ending only.]
Figure of David_icon is the file "David.png".
Figure of DrMatt_icon is the file "drmatt.jpg".
Figure of DrMoffatt1_icon is the file "drmoffatt_ig1.jpg".
Figure of DrMoffatt2_icon is the file "drmoffatt_ig2.jpg".
Figure of DrMouse_icon is the file "drmouse_ig.jpg".
Figure of Elijah_evil_icon is the file "Elijah_evil.png".
Figure of Elijah_good_icon is the file "Elijah_good.png".
Figure of Elijah_virgin_icon is the file "Elijah_virgin.png".
Figure of Elijah_naked_icon is the file "Elijah_naked.png".
Figure of Felix_icon is the file "Felix.png".
Figure of Grant_icon is the file "grant_ig.jpg".
Figure of MarcOrwell_icon is the file "MarcOrwell.png".
Figure of Mike_icon is the file "Mike.jpg".
Figure of James_icon is the file "james_ig.jpg".
Figure of LeonardViolin_icon is the file "leonardv_ig.jpg".
Figure of Orthas_icon is the file "orthas.jpg".
Figure of Rod_icon is the file "rod.jpg".
Figure of RondaSR_icon is the file "ronda_ig.jpg".
Figure of Sally_icon is the file "sally_ig.jpg".
Figure of SamBadEnd_icon is the file "sambadend_ig.jpg".
Figure of sandy_icon is the file "sandra.png".
Figure of Septus_icon is the file "Septus.jpg".
Figure of SgtMarks_icon is the file "sgtmarks_ig.jpg".
Figure of TinyTim_icon is the file "TinyTim.jpg".
Figure of Thomas_icon is the file "Thomas.png".

A thing has a figure name called icon.
The icon of a thing is usually figure of pixel.
graphics is a truth state that varies.
[graphics is usually true.]

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
["Beaver"	Figure of Beaver_icon	]	[first time only & M/H ending]
"Blue Gel"	Figure of BlueGel_icon
"Bottlenose Toy"	Figure of Bottlenose_icon
"Demon Brute"	Figure of DemonBrute_icon
"Elven Hunter"	Figure of ElvenHunter_icon
"Goo Girl"	Figure of GooGirl_icon
"Helot"	Figure of SpartanHelot_icon
"Hermaphrodite Gryphon"	Figure of griffon_icon
"Incubus"	Figure of incubus2_icon
["Latex Ermine"	Figure of LatexErmine_icon	]	[only used in defeat]
"Latex Vixen"	Figure of LatexVixen_icon
"Mannequin"	Figure of Mannequin_icon
"Messy Pig"	Figure of MessyPig_icon
"Plush Lion"	Figure of PlushLion_icon
"Pink Gel"	Figure of PinkGel_icon
"ram"	Figure of Ram_icon
"Shadow Beast"	Figure of ShadowBeast_icon
"Siamese Cat"	Figure of SiameseCat_icon
"Snow Leopard"	Figure of SnowLeopard_icon
"Spartan"	Figure of SpartanHelot_icon
"Succubus"	Figure of succubus_icon
"Tiger Cop"	Figure of SgtMarks_icon
"Tigress Hooker"	Figure of TigressHooker_icon
"Triceratops"	Figure of Triceratops_icon
"Wildcat"	Figure of Wildcat_icon
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
	say "     Alpha Husky by Anymouse1968 @ furaffinity.net[line break]";
	say "     Beaver by MarcLeonhardt @ furaffinity.net[line break]";
	say "     Blue Gel by Rastear @ y-gallery.net[line break]";
	say "     Bottlenose Toy by Anymouse1968 @ furaffinity.net[line break]";
	say "     Demon Brute by Lay @ y-gallery.net[line break]";
	say "     Fire Sprite Male by Genelightfoot @ y-gallery.net[line break]";
	say "     Goo Girl by Rastear @ y-gallery.net[line break]";
	say "     Helot by Darian821 @ y-gallery.net[line break]";
	say "     Hermaphrodite Gryphon by dbd @ furaffinity.net[line break]";
	say "     Incubus (creature) by LittleTwinkle @ y-gallery.net[line break]";
	say "     Incubus (ending) by kv2001ar @ furaffinity.net[line break]";
	say "     Latex Ermine by Halcy0n @ furaffinity.net[line break]";
	say "     Latex Vixen by Anymouse1968 @ furaffinity.net[line break]";
	say "     Mannequin by Rastear @ y-gallery.net[line break]";
	say "     Messy Pig by Anymouse1968 @ furaffinity.net[line break]";
	say "     Pink Gel by Rastear @ y-gallery.net[line break]";
	say "     Ram by Anymouse1968 @ furaffinity.net[line break]";
	say "     Shadow Beast by Fennris @ furaffinity.net[line break]";
	say "     Siamese Cats by RedCoatCat @ furaffinity.net[line break]";
	say "     Snow Leopard by Anymouse1968 @ Furaffinity.net[line break]";
	say "     Spartan by Darian821 @ y-gallery.net[line break]";
	say "     Spidertaur by CrashBurnDraw @ y-gallery.net[line break]";
	say "     Succubus by kv2001ar @ furaffinity.net[line break]";
	say "     Tigress Hooker by Sharei @ furaffinity.net[line break]";
	say "     Triceratops by HBruton @ furaffinity.net[line break]";
	say "     Wildcat by Strype @ furaffinity.net[line break]";
	say "     Zebra by Purplepardus @ furaffinity.net[line break]";
	say "     [line break]";
	say "NPCs:[line break]";
	say "     Amy by Sususmiles @ furaffinity.net[line break]";
	say "     Andrew by Rukis @ furaffinity.net[line break]";
	say "     Adam by Kadel @ y-gallery.net[line break]";
	say "     Andre by Wemd @ furaffinity.net[line break]";
	say "     Anthony by FsMaverick @ furaffinity.net[line break]";
	say "     Artemis by FaroreNightclaw @ furaffinity.net[line break]";
	say "     Blanche by The_Negative @ furaffinity.net[line break]";
	say "     Brutus by Lay @ y-gallery.net[line break]";
	say "     Candy by uniformvixen @ furaffinity.net[line break]";
	say "     Carl by Hufnaar @ furaffinity.net[line break]";
	say "     Christy (tourist ending) by maxblackrabbit @ furaffinity.net[line break]";
	say "     David by Keitaro87 @ y-gallery.net / kei87art.tumblr.com[line break]";
	say "     Dr. Matt by The_Negative @ furaffinity.net[line break]";
	say "     Dr. Moffatt (colour) by The_Negative @ furaffinity.net[line break]";
	say "     Dr. Moffatt (bw) by MadTurtle @ furaffinity.net[line break]";
	say "     Dr. Mouse by JaxxBlackFox @ furaffinity.net[line break]";
	say "     Elijah by Genelightfoot @ y-gallery.net[line break]";
	say "     Felix by Geir @ furaffinity.net[line break]";
	say "     Grant by uniformvixen @ furaffinity.net[line break]";
	say "     James by Anyare @ furaffinity.net[line break]";
	say "     Leonard by SandySchreiber @ furaffinity.net[line break]";
	say "     Marc Orwell by CrashBurnDraw @ y-gallery.net[line break]";
	say "     Mike by Darian821 @ y-gallery.net[line break]";
	say "     Orthas by The_Negative @ furaffinity.net[line break]";
	say "     Rod by The_Negative @ furaffinity.net[line break]";
	say "     Ronda (Slut Rat) by uniformvixen @ furaffinity.net[line break]";
	say "     Sally by Furball @ furaffinity.net[line break]";
	say "     Sam's Bad End by The_Negative @ furaffinity.net[line break]";
	say "     Sandra by Trav @ ???[line break]";
	say "     Septus by Feralise @ furaffinity.net[line break]";
	say "     Sgt Marks by Anyare @ furaffinity.net[line break]";
	say "     Thomas by Geir @ furaffinity.net[line break]";
	say "     Tiny Tim by Astrobullet @ y-gallery.net[line break]";

FS Graphics ends here.