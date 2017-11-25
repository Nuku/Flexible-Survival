Version 1 of Zephyr Phone by Executaball begins here.
[Incomplete - Not to be released]

"Adds a Zephyr mobile device to the game for navigation"

[changes -]

Section 1 - Declarations and variables

A room can be emap_enabled. A room is usually not emap_enabled.

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
	if emap_mall is 0:
		if location of player is not emap_enabled:
			project the figure of emap_special_signalnotfound_icon;
			say "     It appears that your current location is not part of the Zephyr Satellite coverage region... Yet. Perhaps you could try the device in one of Zephyr's published locations?";
			WaitLineBreak;
		elseif location of player is emap_enabled:
			project the figure of emap_special_loading_icon;
			say "     The device beeps as it completes tracking of your position. The device will now track and display your current location, until you exit the satellite coverage region. If you wish to terminate tracking while still in the coverage region, simply switch the device off.";
			now emap_mall is 1;
			WaitLineBreak;
	elseif map_mall is 1:
		say "After holding the power button for a few seconds, the display fades out as an accompanying chime completes its shutdown."
		now map_mall is 0;
		WaitLineBreak;

Section 4 - Handling (External)

Zephyr Phone ends here.
