Version 2 of Approaching the Capitol Building for FS by Guest Writers begins here.
[- Originally Authored By: Sweraptor -]
[Version 2.1 - Event duplicated by finding initial room.]

"This is an area which begins the player approach to the Capitol building. A skyscraper overrun with the Ash Brood, and the supposed nesting grounds for the largest dragons and the Ash God. Can you tell me how to make it so the monsters will appear randomly when the areas are explored?"


Section 1 - Discovering the Capitol Building Area

Government Assistance is a situation. The level of Government Assistance is 6.

Instead of Resolving the Government Assistance:
	say "     As you are travelling through the city, you recognize a couple of government buildings and offices, largely in ruin. The air is heavy with smoke and soot, but you start to run regardless. You recall that you're close to the State Capitol Building. If there's anywhere they'll know what's going on and where you can get assistance, it'll be there. You cough as you keep pushing through the smokey air, turning a corner to see what has become of the Capitol Building and the surrounding area, dashing your hopes instantly.";
	say "     The devastation here is extensive, with burnt out and smashed buildings all around. Several of the streets are cracked and broken, spewing flames. It looks almost like some twisted war zone. The creatures here must be particularly dangerous and devastating. From the look of the destruction, these creatures are probably roaming around the whole area, making travelling here quite risky. You'd best be extra cautious if you plan on looking around here.";
	now The Approaching the Capitol Building is known;
	move the player to Approaching the Capitol Building;
	now Government Assistance is resolved;


Section 2 - Rooms

Approaching the Capitol Building is a Room. The description of Approaching the Capitol Building is "[app_cap_bldg_desc]".
The Approaching the Capitol Building is fasttravel.
earea of Approaching the Capitol Building is "Outside".
[  The Approaching the Capitol Building is private.	]

to say app_cap_bldg_desc:
	if Government Assistance is unresolved:
		say "     As you are travelling through the city, you recognize a couple of government buildings and offices, largely in ruin. The air is heavy with smoke and soot, but you start to run regardless. You recall that you're close to the State Capitol Building. If there's anywhere they'll know what's going on and where you can get assistance, it'll be there. You cough as you keep pushing through the smokey air, turning a corner to see what has become of the Capitol Building and the surrounding area, dashing your hopes instantly.";
		say "     The devastation here is extensive, with burnt out and smashed buildings all around. Several of the streets are cracked and broken, spewing flames. It looks almost like some twisted war zone. The creatures here must be particularly dangerous and devastating. From the look of the destruction, these creatures are probably roaming around the whole area, making travelling here quite risky. You'd best be extra cautious if you plan on looking around here.";
		LineBreak;
		now Government Assistance is resolved;
	say "     The air here has grown thick with smoke and dust, kicked up by the constant scuffles and the fires. Along the street are the skeletal hulls of cars and many other vehicles which have been burnt out. The structures of the area are all partially collapsed and broken buildings. They look like giants have fought amidst them. To the north, you can see the Capitol Building itself in the distance. It stands amidst the wreckage of surrounding skyscrapers, the lower half lit up by the surrounding flames. The whole structure is blackened and wreathed in smoke. Either some miracle or dark force has kept the broken building from falling.";


instead of sniffing Approaching the Capitol Building:
	say "This area smells strongly of acrid smoke, soot and volcanic ash.";

The Charred Streets is a Room. "     The damage to the roads and the buildings grow worse as you approach the Capitol Building. Most of the buildings here are semi-recognizable. You see what once may have been a designer underwear shop now burnt out with the windows smashed. You also spot one of your favourite video game retailers, what used to be a small family business. Now the storefront is totally wrecked. You jump over a ditch in the middle of the street. It is flooded with grey, soot-filled sludge. A water main nearby must have been cracked.".
North of Approaching the Capitol Building is The Charred Streets.
The earea of Charred Streets is "Capitol".

instead of sniffing Charred Streets:
	say "This area smells strongly of acrid smoke, soot and volcanic ash.";

Path of Ashes is a Room. "     The air here is thick with stinging smoke and ash. The worst of it seems to be drifting from the hellish capitol building itself. To your west, you see standing buildings in somewhat good repair. Some structures are hung between them over the street. To the east, a few buildings partially stand before the ground seems to give way. Rubble blocks the way to Capitol Building itself.".
North of The Charred Streets is Path of Ashes.
The earea of Path of Ashes is "Capitol".

instead of sniffing Approaching the Capitol Building:
	say "This area smells strongly of acrid smoke, soot and volcanic ash.";

The A Volcanic Crater is a Room. "     Before you is an enormous, circular pit. It looks almost as if a meteor landed here, yet there is no trace of any debris. Lava and magma ooze into the pit's lower reaches. Close to the crater's lowest point, you see the entrance way to a tunnel system. The heat from the open magma is very intense and your nanites struggle to adapt your perspiration and breathing to better cope with the primordial scene.".
East of Path of Ashes is A Volcanic Crater.
The earea of A Volcanic Crater is "Capitol".

instead of sniffing A Volcanic Crater:
	say "The smell of smoke, soot and volcanic gasses is particularly strong here.";

The Rusty Walkways is a Room. "     Rusty, makeshift bridges hang between the tall buildings here. Constructed from scavenged metal and parts, there are scattered little shelters inside the buildings or on the street. As you walk down the road, the bridges cast an ominous web-like shadow over you. Occasionally, you swear you see something or someone darting out of view each time you turn a corner. Whatever feral civilization exists here, it may be based out of the more intact building to the west of here.".
West of Path of Ashes is Rusty Walkways.
The earea of Rusty Walkways is "Capitol".

instead of sniffing Rusty Walkways:
	say "This area smells strongly of acrid smoke, soot and volcanic ash.";

Fiery Ruins is a door. "     To the west is a section of buildings that seems somewhat more intact. Some smoulder or are quite smashed, but others seem to have been partially spared from the extensive devastation that took place here. You may be able to find something of interest in that direction.". It is dangerous. Fiery Ruins is west of Rusty Walkways and east of Capitol Ruins.
the marea of Fiery Ruins is "Capitol";

The Capitol Ruins is a room. "     This area once housed numerous government offices as well as some businesses, but now it lies in partial ruin, devastated by whatever happened here.".
The earea of Capitol Ruins is "Capitol".


Section 3 - Roaming Creatures

[There are dangerous creatures roaming around the area. Simply walking from one area to the next brings the risk of being attacked by one of them.]

instead of going north from Approaching the Capitol Building:
	follow the capitol wandering rule;
	move the player to Charred Streets;

instead of going south from Charred Streets:
	follow the capitol wandering rule;
	move the player to Approaching the Capitol Building;

instead of going north from Charred Streets:
	follow the capitol wandering rule;
	move the player to Path of Ashes;

instead of going south from Path of Ashes:
	follow the capitol wandering rule;
	move the player to Charred Streets;

instead of going east from Path of Ashes:
	follow the capitol wandering rule;
	move the player to A Volcanic Crater;

instead of going west from Path of Ashes:
	follow the capitol wandering rule;
	move the player to Rusty Walkways;

instead of going west from A Volcanic Crater:
	follow the capitol wandering rule;
	move the player to Path of Ashes;

instead of going east from Rusty Walkways:
	follow the capitol wandering rule;
	move the player to Path of Ashes;

this is the capitol wandering rule:
	now battleground is "Capitol";
	let bonus be 20; [base 20% chance of random fight while simply moving]
	if "Curious" is listed in feats of player, increase bonus by 4;
	if "Stealthy" is listed in feats of player, decrease bonus by 4 + (( perception of player - 10 ) / 2);
	if "Bad Luck" is listed in feats of player, increase bonus by 4;
	if a random number from 1 to 100 <= bonus:
		if level of player > 3:
			say "     As you are trying to traverse the area, you are spotted by a roaming creature which moves in to confront you.";
			fight;
			if ( ( hardmode is true and a random chance of 1 in 10 succeeds ) or ( "Bad Luck" is listed in feats of player and a random chance of 1 in 12 succeeds ) ) and battleground is not "void":
				say "     As you are trying to recover from your last encounter, another roving creature finds you.";
				fight;
			say "     After that delay, you continue on your way, hoping to find someplace to a little safer, if at least only for the moment.";
			follow the turnpass rule;
		else:
			say "     As you are trying to traverse the area, you spot a powerful creature roaming nearby. You are forced to take cover and wait for it to eventually leave. After that delay, you continue on your way, hoping to find someplace a little safer, if at least only for the moment.";
			follow the turnpass rule;


Section 4 - Situations

[Wolfrape event moved to Blanche file. (Stripes)]

[Other events moved to Capitol Events file. (Blue Bishop)]

Approaching the Capitol Building for FS ends here.
