Red Light District by Wahn begins here.

"Adds a new area called the Red Light District."

Section 1 - Locations

Table of GameRoomIDs (continued)
Object	Name
Entrance to the Red Light District	"Entrance to the Red Light District"

Entrance to the Red Light District is a room. It is fasttravel.
The earea of Entrance to the Red Light District is "Red".
Description of Entrance to the Red Light District is "[RedLightDesc]".

after looking while player is in Entrance to the Red Light District:
	if findwires < 2 and fixedgens < 3:
		project the Figure of Map_RedLight_Nopower_6_icon;
	else:
		project the Figure of Map_RedLight_6_icon;

to say RedLightDesc:
	if findwires < 2 and fixedgens < 3:
		project the Figure of Map_RedLight_Nopower_6_icon;
	else:
		project the Figure of Map_RedLight_6_icon;
	say "     This street corner marks the beginning of the city's Red Light District. Normal buildings, stores and offices give way to an area that seems old, grimy and somewhat abandoned, given that the colorful neon lights of numerous adult establishments hang dark and powerless on their buildings. Caution seems advised hereabouts, as the area is an obvious hive of perverts and sex addicts, with the infection outbreak just having pushed things to new extremes.";
	say "     To the south, you could wander back out into the surrounding city and possibly find a safer place to be. Alternatively, the way east and west along the boundary road seems relatively safe - or you could [bold type][link]explore[as]explore[end link][roman type] the twisting streets of this old part of the city that lie north of where you stand, with all the dangers that may hold.";

instead of smelling Entrance to the Red Light District:
	say "     This place smells very strongly of sex, with a musky scent of arousal hanging thick in the air. This neighborhood was clearly struck hard by the infection, being particularly vulnerable. The scents of several lustful creatures waft by your nose, so strong that their origins can't be far off. You catch the scent of what you guess to be [one of]a hyper-masculine creature[or]some kind of feline creature[or]a strong latex source[or]a dark and powerful female[or]arousing pollen[or]a large marsupial[or]an arousing perfume[or]a herm and cheap sex[at random], making your head swim a bit before you shake the sensation off.";

Table of GameRoomIDs (continued)
Object	Name
Boundary Street East	"Boundary Street East"

Boundary Street East is a room.
Boundary Street East is east of Entrance to the Red Light District.
The earea of Boundary Street East is "Red".
Description of Boundary Street East is "[RedLightBoundaryEastDesc]".

after looking while player is in Boundary Street East:
	if findwires < 2 and fixedgens < 3:
		project the Figure of Map_RedLight_Nopower_5_icon;
	else:
		project the Figure of Map_RedLight_5_icon;

to say RedLightBoundaryEastDesc:
	say "     You're on a road that runs along the border to the red light district, marked by prominent [']SEX SEX SEX['] neon signs along the facades of a number of buildings on one street side. Though without power to support the alluring shine of all the signage, it just seems kinda dingy. Some piles of uncollected trash litter the street, and towards the east, a modestly sized chapel rises above the surrounding buildings. Sadly, its white walls are marred by the signs of a recent fire within, with the flames having licked out of the shattered windows to blacken areas above and besides them. The large inverted pentagram that someone has clawed into the timbers of the wooden front door tells you that what befell the chapel wasn't an accident either. To the southeast lies an apartment building with a busted front door, which nevertheless looks more lived-in than most of the other buildings all around.";

instead of smelling Boundary Street East:
	say "     The aroma of fire and ash is ever-present in your nose, so close to the burned chapel. Of course, this doesn't reduce the other scents present, so you can also smell sex, with a musky scent of arousal hanging thick in the air.";

Table of GameRoomIDs (continued)
Object	Name
Dingy Alley	"Dingy Alley"

Dingy Alley is a room.
Dingy Alley is north of Boundary Street East.
The earea of Dingy Alley is "Red".
Description of Dingy Alley is "[DingyAlleyDesc]";

after looking while player is in Dingy Alley:
	if findwires < 2 and fixedgens < 3:
		project the Figure of Map_RedLight_Nopower_4_icon;
	else:
		project the Figure of Map_RedLight_4_icon;

to say DingyAlleyDesc:
	say "     You're in a dingy alley between two buildings, ending at a brick wall at the end. There is a sturdy door with a viewslit in it, and you can see barred windows one floor up. A large mattress with telltale stains is laid out on the ground not far from the door, and there is a large cardboard sign that promises 'Freshest Whores in Town!'";

Table of GameRoomIDs (continued)
Object	Name
Burned-Out Chapel	"Burned-Out Chapel"

Burned-Out Chapel is a room. It is fasttravel.
Burned-Out Chapel is east of Boundary Street East.
Description of Burned-Out Chapel is "[chapelplacedesc]".
earea of Burned-Out Chapel is "Red".

after looking while player is in Burned-Out Chapel:
	if findwires < 2 and fixedgens < 3:
		project the Figure of Map_RedLight_Nopower_2_icon;
	else:
		project the Figure of Map_RedLight_2_icon;

instead of sniffing Burned-Out Chapel:
	say "The heavy scent of burned wood hangs in the room, mixed with a trace of blood and [if HP of Elijah is 100]the all-pervading stench of [end if]demonic cum.";

to say chapelplacedesc:
	if (Elijah is not in Burned-Out Chapel and HP of Elijah is 0): [if the player got here before Elijah was captured]
		say "     This chapel has had a fire recently, severely damaging its roof and interior. The walls are blackened with soot and there isn't much left of the benches other than kindling. The altar is cracked, and the wooden cross behind it has had manacles added to it. Surprisingly, there are no demons in sight, but you do hear some moans and ominous sounds from several side doors.";
	else if (HP of Elijah is 0): [Starting state - Elijah chained up]
		say "     This chapel has had a fire recently, severely damaging its roof and interior. The walls are blackened with soot and there isn't much left of the benches other than kindling. A winged humanoid is chained to the wooden cross standing behind a cracked altar. Surprisingly, there are no demons in sight, but you do hear some moans and ominous sounds from several side doors.";
	else if (HP of Elijah > 0) and (HP of Elijah < 100 or HP of Elijah is 101): [Elijah rescued]
		say "     This chapel has had a fire recently, severely damaging its roof and interior. The walls are blackened with soot and there isn't much left of the benches other kindling. Behind a cracked altar, you see a wooden cross with manacles dangling down from it. Surprisingly, there are no demons in sight, but you do hear some moans and ominous sounds from several side doors.";
	else if (HP of Elijah is 100): [after the demons had an orgy there]
		say "     This chapel has had a fire recently, severely damaging its roof and interior. The walls are blackened with soot and there isn't much left of the benches other kindling. Behind a cracked altar, there is a horrible sticky mess of ash and demonic cum. Surprisingly, there are no demons in sight, but you do hear some moans and ominous sounds from several side doors.";

Table of GameRoomIDs (continued)
Object	Name
Sacristy	"Sacristy"

Sacristy is a room.
Sacristy is northeast of Burned-Out Chapel.

after looking while player is in Sacristy:
	if findwires < 2 and fixedgens < 3:
		project the Figure of Map_RedLight_Nopower_1_icon;
	else:
		project the Figure of Map_RedLight_1_icon;

Description of Sacristy is "     This sacristy has been... redecorated recently. You're pretty sure it didn't originally have red silk drapes and a large bed, currently bathed in the light of about a hundred candles. There's a fire going in a brazier with a large stack of bibles beside it to provide additional fuel. In between various dildos and sex toys strewn about on the bed, there's a golden chalice and a few crosses, which got used for the same purpose as the rest, from their sticky state...".

instead of sniffing Sacristy:
	say "The heavy scent of burned wood hangs in the room, mixed with a trace of blood and [if HP of Elijah is 100]the all-pervading stench of [end if]demonic cum.";

Table of GameRoomIDs (continued)
Object	Name
Darius's Crib	"Darius's Crib"

Darius's Crib is a room.
Darius's Crib is southeast of Boundary Street East. It is sleepsafe.
Description of Darius's Crib is "[DariusCribDesc]".

after looking while player is in Darius's Crib:
	if findwires < 2 and fixedgens < 3:
		project the Figure of Map_RedLight_Nopower_3_icon;
	else:
		project the Figure of Map_RedLight_3_icon;

to say DariusCribDesc:
	say "     Having passed through a short hallway after entering this building and walking past one door that is literally only held up by crime scene tape gluing it to its frame, you're in one of the other apartments of the building now. Or maybe two, as someone has knocked a large hole through the wall of next apartment. All in all, the place has a dingy and run-down feel to it and seems not particularly well cleaned up. Numerous mattresses lie on the floor, often stained by sexual fluids, and you can hear the barking of dog cubs from somewhere deeper in the other apartment. The kitchen counter seems to be where he lays out his stuff to sell, judging from a sign attached to it.";

The Darius's Inventory is a backdrop. It is in Darius's Crib. Description of the Darius's Inventory is "[Darius's Inventory List]".

to say Darius's Inventory List:
	if Darius is visible: [he's in right now]
		say "     Darius has a spread of various little baggies spread on his kitchen counter. A handwritten sign tells you that you need to pay with food for anything you want.";
		say "To buy an item, type buy (name here)";
		repeat through table of Darius Inventory:
			follow allowed entry;
			if rule failed:
				next;
			say "[link]Buy[as]buy [object entry][end link] ";
			say "[Name entry] - [price entry] food";
	else:
		say "     A handwritten sign on the kitchen counter tells you that you need to pay with food for anything you want, but it seems that Darius put away his stash before leaving the house. You'll have to wait till he is back if you want to buy something.";

Table of Darius Inventory
name	price	object	allowed
"bliss tablet"	1	bliss tablet	true rule
"powerup tablet"	2	powerup tablet	true rule
"pixie dust"	2	pixie dust	true rule
"dalmatian cum"	1	dalmatian cum	true rule
"dalmatian fur"	2	dalmatian fur	true rule

Table of GameRoomIDs (continued)
Object	Name
Boundary Street West	"Boundary Street West"

Boundary Street West is a room.
Boundary Street West is west of Entrance to the Red Light District.
The earea of Boundary Street West is "Red".
Description of Boundary Street West is "[RedLightBoundaryWestDesc]".

after looking while player is in Boundary Street West:
	if findwires < 2 and fixedgens < 3:
		project the Figure of Map_RedLight_Nopower_7_icon;
	else:
		project the Figure of Map_RedLight_7_icon;

to say RedLightBoundaryWestDesc:
	say "     You're on a road that runs along the border to the red light district, marked by prominent [']SEX SEX SEX['] neon signs along the facades of a number of buildings on one street side. Though without power to support the alluring shine of all the signage, it just seems kinda dingy. The area you are in is dominated by a big rig truck lying on its side, wedging its bulky length between the buildings on both sides and creating a formidable barrier that impedes any further progress west. In all likelihood, the driver crashed it sometime during the initial outbreak of the nanite contagion. Towards the northwest, just short of where the cab of the truck has buried itself halfway in a wall, you can see the door of a store that survived the devastation seemingly intact.";

instead of smelling Boundary Street West:
	say "     This place smells very strongly of sex, with a musky scent of arousal hanging thick in the air. This neighborhood was clearly struck hard by the infection, being particularly vulnerable. The scents of several lustful creatures waft by your nose, so strong that their origins can't be far off. You catch the scent of what you guess to be [one of]a hyper-masculine creature[or]some kind of feline creature[or]a strong latex source[or]a dark and powerful female[or]arousing pollen[or]a large marsupial[or]an arousing perfume[or]a herm and cheap sex[at random], making your head swim a bit before you shake the sensation off.";

Table of GameRoomIDs (continued)
Object	Name
Northern Street 1	"Northern Street 1"

Northern Street 1 is a room.
Northern Street 1 is north of Entrance to the Red Light District.
The earea of Northern Street 1 is "Red".
Description of Northern Street 1 is "[RedLightNorthStreet1Desc]".

after looking while player is in Northern Street 1:
	if findwires < 2 and fixedgens < 3:
		project the Figure of Map_RedLight_Nopower_9_icon;
	else:
		project the Figure of Map_RedLight_9_icon;

to say RedLightNorthStreet1Desc:
	say "     You're on a road that runs along the border to the red light district, past the prominent [']SEX SEX SEX['] neon signs along the facades of a number of buildings on the street sides before you. Though without power to support the alluring shine of all the signage, it just seems kinda dingy. Some piles of uncollected trash litter the street, and the way splits into a few thin and shady alleys, though they seem to have nothing of interest. However, the road extends a bit further, onto a building with a neon sign saying [']TOYS['], alongside a pair of handcuffs, and further beyond where an ominous, faint red light shines through a thinner street just around the corner to the right.";

instead of smelling Northern Street 1:
	say "     This place smells very strongly of sex, with a musky scent of arousal hanging thick in the air. This neighborhood was clearly struck hard by the infection, being particularly vulnerable. The scents of several lustful creatures waft by your nose, so strong that their origins can't be far off. You catch the scent of what you guess to be [one of]a hyper-masculine creature[or]some kind of feline creature[or]a strong latex source[or]a dark and powerful female[or]arousing pollen[or]a large marsupial[or]an arousing perfume[or]a herm and cheap sex[at random], making your head swim a bit before you shake the sensation off.";

Table of GameRoomIDs (continued)
Object	Name
Northern Street 2	"Northern Street 2"

Northern Street 2 is a room.
Northern Street 2 is north of Northern Street 1.
The earea of Northern Street 2 is "Red".
Description of Northern Street 2 is "[RedLightNorthStreet2Desc]".

after looking while player is in Northern Street 2:
	if findwires < 2 and fixedgens < 3:
		project the Figure of Map_RedLight_Nopower_10_icon;
	else:
		project the Figure of Map_RedLight_10_icon;

to say RedLightNorthStreet2Desc:
	say "     You're in the middle of the northern road, coming across a building with neon signs saying [']TOYS['], alongside a pair of handcuffs, indicating this must have been some kind of store for the kinky fans of sex toys. Besides it, there's still a small pile of uncollected trash. Towards the northeast, there is a thinner street where an ominous, faint red light dims through. Traveling south would lead you towards the crossroad marking the entrance to the Red Light District.";

instead of smelling Northern Street 2:
	say "     This place smells very strongly of sex, with a musky scent of arousal hanging thick in the air. This neighborhood was clearly struck hard by the infection, being particularly vulnerable. The scents of several lustful creatures waft by your nose, so strong that their origins can't be far off. You catch the scent of what you guess to be [one of]a hyper-masculine creature[or]some kind of feline creature[or]a strong latex source[or]a dark and powerful female[or]arousing pollen[or]a large marsupial[or]an arousing perfume[or]a herm and cheap sex[at random], making your head swim a bit before you shake the sensation off.";

Table of GameRoomIDs (continued)
Object	Name
Crimson Street	"Crimson Street"

Crimson Street is a room.
Crimson Street is northeast of Northern Street 2.
The earea of Crimson Street is "Red".
Description of Crimson Street is "[RedLightCrimsonStreetDesc]".

after looking while player is in Crimson Street:
	if findwires < 2 and fixedgens < 3:
		project the Figure of Map_RedLight_Nopower_11_icon;
	else:
		project the Figure of Map_RedLight_11_icon;

to say RedLightCrimsonStreetDesc:
	say "     You have arrived at the entrance of the Crimson Street, in which a strange and ominous red light dims through with no logical explanation. It seems pretty empty and oddly silent, without anything of interest at the first glance. All the buildings here look either abandoned or looted, although everything looks mysteriously clean, unlike the other streets. Staying here gives you an offsetting feeling you can't quite specify, but besides that, it seems you cannot proceed any further from here if you want to stay on the main paths, unless any of these buildings are of any interest to you at some point. Southeast of you is a dark alley you can pass through, however.";
	if Hellfire Club is known:
		say "     The Hellfire Club stands at a visible range from your position, to the north, and you could enter it at any point.";

instead of smelling Crimson Street:
	say "     There's an unsettling sweet smell around here, rather captivating the more you try to feel it. It's not perfume, nor anything of the sort, but it strikes you as something seductively demonic in nature.";

Table of GameRoomIDs (continued)
Object	Name
Dark Alley	"Dark Alley"

Dark Alley is a room.
Dark Alley is southeast of Crimson Street.
The earea of Dark Alley is "Red".
Description of Dark Alley is "[RedLightDarkAlleyDesc]".

to say RedLightDarkAlleyDesc:
	say "     You arrive at an oddly dark alleyway, in which you can see a few garbage containers and plenty of trash scattered all along the path. One of the very first few things you notice is that it does not smell particularly good, and that is quite understandable given the amount of junk within your proximity. You can head deeper inside and turn southwest to arrive at an extension of the alleyway, or make your way towards the Crimson Street, to the northwest.";

instead of smelling Dark Alley:
	say "     The smell is bad, like piles of garbage that remained here for a long time.";

Table of GameRoomIDs (continued)
Object	Name
Narrow Alley	"Narrow Alley"

Narrow Alley is a room.
Narrow Alley is southwest of Dark Alley.
Narrow Alley is northeast of Northern Street 1.
Narrow Alley is southeast of Northern Street 2.
The earea of Narrow Alley is "Red".
Description of Narrow Alley is "[RedLightNarrowAlleyDesc]".

to say RedLightNarrowAlleyDesc:
	say "     This is one particularly narrow alley, with nothing out of the ordinary despite its low width. It is quite silent in here, as well, and the path seems relatively clean, with only a few useless objects lying around the walls, some damaged beyond recognition. If you walk deeper ahead, you can make a turn into another alleyway, to the northeast. This area also connects back to the Northern Street, if you wish to return to a broader area.";

instead of smelling Narrow Alley:
	say "     You cannot pick any specific scent in here... other than a very strong musky scent. This must be one of those frequent sex encounter spots.";

Red Light District ends here.
