Version 1 of Zephyr Phone by Executaball begins here.
[Incomplete - Not to be released]

"Adds a Zephyr mobile device to the game for navigation"

[changes -]

Section 1 - Declarations and variables

emap is a number that varies. emap is usually 0
[ 0 = Nav Map for Mall not enabled ]
[ 1 = Nav Map for Mall is enabled ]

zpc_inzone is a truth state that varies. zpc_inzone is false.
[ true if player is currenting displaying an image. This is referenced to display the no signal 'error' message when the player leaves ]

Section 1 - Master Referencing Table

Table of Zpc Location Reference
location	figure_name

Section 2 - Objects

Table of Game Objects (continued)
name	desc	weight	object
"Zephyr Personal Communicator"	"[zpcdesc]"	5	zpc

to say zpcdesc:
	say "     The Zephyr Personal Communicator is essentially a slightly oversized smartphone. It is a suprisingly sleek piece of technology that almost feels out of place considering the environment around you, no doubt a display of Zephyr's dominance and power. Flipping the device over, you notice that its white rubber back is lined with solar panels, it seems that you don't have to worry about charging the device. The onyx black front display is smooth and glossy save for the Zephyr company logo on the top. You see an small orange button on the side of the device, perhaps you could try to [bold type]turn on the zpc[roman type]";


zpc is a grab object. zpc is not temporary.
the usedesc of zpc is "[zpc_use]";

Section 3 - Handling (Internal)

to say zpc_use:
	if emap is 0:
		zpc_checklocation; [runs location check function first to fill Zc value]
		if Zc is 0:
			project the figure of emap_special_signalnotfound_icon;
			say "     It appears that your current location is not part of the Zephyr Satellite coverage region... yet. Perhaps you could try the device in one of Zephyr's published compatible locations?";
			WaitLineBreak;
			follow the ngraphics_blank rule; [clear pic after WLB user response]
		else if Zc is 1:
			project the figure of emap_special_loading_icon;
			say "     The device beeps as it completes tracking of your position. The device will now track and display your current location, until you exit the satellite coverage region. If you wish to terminate tracking while still in the coverage region, simply switch the device off.";
			now emap is 1;
			WaitLineBreak;
			follow the zpc_lookoverride rule; [fill with respective pic]
	else if emap is 1:
		project the figure of [emap shutoff]
		say "After holding the power button for a few seconds, the display fades out as an accompanying chime completes its shutdown."
		now emap is 0;
		WaitLineBreak;
		follow the ngraphics_blank rule; [clear pic after WLB user response]


Section 3.1 - Internal functions

to zpc_checklocation: [returns Zc value of 1 or 0]
	let L be location of player;
	let Zc be 0; [zeros returning value]
	repeat with n running from 1 to number of filled rows in table of Zpc Location Reference:
		choose row n in table of Zpc Location Reference;
		if location entry is L:
			now Zc is 1;

to zpc_getfigure: [returns Zf value of respective figure name]
	let L be location of player;
	let Zf be "null"; [zeros returning value]
	repeat with n running from 1 to number of filled rows in table of Zpc Location Reference:
		choose row n in table of Zpc Location Reference;
		if location entry is L:
			now Zf is figure_name entry;

Section 4 - Handling (External)

[Master look override rule]
this is the zpc_lookoverride rule:
	if emap is 1:
		zpc_checklocation; [runs location check function first to fill Zc value]
		if Zc is 1:
			zpc_getfiure; [runs function to get Zf value (figure name)]
			project the figure of Zf;

Section 5 - DEBUG

[Cheat for enabling variable]
emap_mall_cheat is an action applying to nothing.
understand "emap_mall_cheat" as emap_mall_cheat.
carry out emap_mall_cheat:
	say "CHEAT: Map Navigation is now enabled (emap = 1)";
	now emap is 1;

Zephyr Phone ends here.
