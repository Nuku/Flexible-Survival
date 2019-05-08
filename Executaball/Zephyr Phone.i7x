Version 1 of Zephyr Phone by Executaball begins here.
[v1 - 11/28/2017]

"Adds a Zephyr mobile device to the game for navigation"

[changes -]

Section 1 - Declarations and variables

emap is a number that varies. emap is usually 0.
[ 0 = Nav Map not enabled ]
[ 1 = Nav Map is enabled ]

zpc_inzone is a truth state that varies. zpc_inzone is false.
[ true if Player is currenting displaying an image. This is referenced to display the no signal 'error' message when the player leaves ]

zpc_Zc is a number that varies.
zpc_Zf is a figure name that varies.[@Tag:NotSaved]

Section 2 - Master Referencing Table

[MALL]
Table of Zpc Location Reference
location(room)	icon(figure name)
Dirty Alley	Figure of emap_mall_alley_icon
Mall Atrium	Figure of emap_mall_atrium_icon
Body Shop	Figure of emap_mall_bodyshop_icon
Branson & Partner Reception	Figure of emap_mall_bransonpartner_icon
Brookstone Books	Figure of emap_mall_brookstonebooks_icon
Christmas Village	Figure of emap_mall_christmasvillage_icon
Mall East Wing	Figure of emap_mall_eastwing_icon
Mall Foodcourt	Figure of emap_mall_foodcourt_icon
Mall Foyer	Figure of emap_mall_foyer_icon
Game Store	Figure of emap_mall_gamestore_icon
Maintenance Garage	Figure of emap_mall_garage_icon
Wolverine Guard Station	Figure of emap_mall_guardpost_icon
Mall Lockerroom	Figure of emap_mall_lockers_icon
Smith Haven Mall Lot East	Figure of emap_mall_loteast_icon
Smith Haven Mall Lot North	Figure of emap_mall_lotnorth_icon
Smith Haven Mall Lot South	Figure of emap_mall_lotsouth_icon
Smith Haven Mall Lot West	Figure of emap_mall_lotwest_icon
The Mysterious Shop	Figure of emap_mall_nermines_icon
The Pretty Kitty	Figure of emap_mall_pkboutique_icon
Mall Restroom	Figure of emap_mall_restrooms_icon
Shag Shack Entrance	Figure of emap_mall_shagshack_icon
Mall West Wing	Figure of emap_mall_westwing_icon


[Other]
[Table of Zpc Location Reference (continued)
location	figure_name]

Section 3 - Objects

Table of Game Objects (continued)
name	desc	weight	object
"ZPC"	"[zpcdesc]"	5	zpc

to say zpcdesc:
	say "     The Zephyr Personal Communicator is essentially a slightly oversized smartphone. It is a surprisingly sleek piece of technology that almost feels out of place considering the environment around you, no doubt a display of Zephyr's dominance and power. Flipping the device over, you notice that its white rubber back is lined with solar panels. It seems that you don't have to worry about charging the device. The onyx black front display is smooth and glossy save for the Zephyr company logo on the top. You see a small orange button on the side of the device. Perhaps you could try to [bold type]use the zpc[roman type]?";


zpc is a grab object. zpc is not temporary.

zpcturnon is an action applying to nothing.
Understand "turn on the zpc" as zpcturnon.

Carry out zpcturnon:
	try using the zpc;

Section 4 - Handling (Internal)

the usedesc of zpc is "[zpc_use]";

to say zpc_use:
	if emap is 0:
		zpc_checklocation; [runs location check function first to fill Zc value]
		if zpc_Zc is 0:
			project the figure of emap_special_signalnotfound_icon;
			say "     You turn on the device. It appears that your current location is not yet part of the Zephyr Satellite coverage region... Perhaps you could try the device in one of Zephyr's published compatible locations, such as the Smith Haven Mall?";
			now emap is 1;
			WaitLineBreak;
			follow the ngraphics_blank rule; [clear pic after WLB user response]
		else if zpc_Zc is 1:
			say "     The device will now track and display your current location, until you exit the satellite coverage region. If you wish to terminate tracking while still in the coverage region, simply switch the device off.";
			now emap is 1;
			WaitLineBreak;
			follow the zpc_lookoverride rule; [fill with respective pic]
	else if emap is 1:
		project the figure of emap_special_shutdown_icon; [off]
		say "     After holding the power button for a few seconds, the display fades out as an accompanying chime completes its shutdown.";
		now emap is 0;
		WaitLineBreak;
		follow the ngraphics_blank rule; [clear pic after WLB user response]


Section 4.1 - Internal functions

to zpc_checklocation: [returns Zc value of 1 or 0]
	now zpc_Zc is 0; [zeros returning value]
	repeat with n running from 1 to number of filled rows in table of Zpc Location Reference:
		choose row n in table of Zpc Location Reference;
		if location entry is location of Player:
			now zpc_Zc is 1; [returns value (true/false)]

to zpc_getfigure: [returns Zf value of respective figure name]
	now zpc_Zf is figure of pixel; [zeros returning value]
	repeat with n running from 1 to number of filled rows in table of Zpc Location Reference:
		choose row n in table of Zpc Location Reference;
		if location entry is location of Player:
			now zpc_Zf is icon entry; [returns value for projection]

Section 5 - Handling (External)

[Master look override rule]
this is the zpc_lookoverride rule:
	if emap is 1:
		zpc_checklocation; [runs location check function first to fill Zc value]
		if zpc_Zc is 1:
			if zpc_inzone is false: [case if Player not in zone yet]
				zpc_getfigure; [runs function to get Zf value (figure name)]
				project zpc_Zf; [projecting intro]
				now zpc_inzone is true;
			else: [case if Player in zone]
				zpc_getfigure; [runs function to get Zf value (figure name)]
				project zpc_Zf;
		else if zpc_Zc is 0: [case for player exiting]
			if zpc_inzone is true: [case if Player already in zone]
				project the figure of emap_special_signalnotfound_icon;
				now zpc_inzone is false;

Section 6 - DEBUG

[Cheat for enabling variable]
cheat_emap is an action applying to nothing.
understand "emap_cheat" as cheat_emap.
carry out cheat_emap:
	say "CHEAT: Map Navigation is now enabled (emap = 1)";
	now emap is 1;

[Cheat that gives ZPC]
cheat_zpc_give is an action applying to nothing.
understand "zpc_cheat" as cheat_zpc_give.
carry out cheat_zpc_give:
	say "CHEAT: ZPC added to inventory";
	now carried of zpc is 1;

[Cheat that gives freecred]
cheat_freecred_give is an action applying to nothing.
understand "freecred_cheat" as cheat_freecred_give.
carry out cheat_freecred_give:
	say "CHEAT: Added 100 freecred.";
	increase freecred by 200;




Zephyr Phone ends here.
