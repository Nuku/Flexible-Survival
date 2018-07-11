Red Light District by Wahn begins here.

"Adds a new area called the Red Light District."

Section 1 - Locations

Entrance to the Red Light District is a room. It is fasttravel.
The earea of Entrance to the Red Light District is "Red".
The description of Entrance to the Red Light District is "[RedLightDesc]".

to say RedLightDesc:
	say "     This street corner marks the beginning of the city's Red Light District. Normal buildings, stores and offices give way to an area that seems old, grimy and somewhat abandoned, given that the colorful neon lights of numerous adult establishments hang dark and powerless on their buildings. Caution seems advised hereabouts, as the area is an obvious hive of perverts and sex addicts, with the infection outbreak just having pushed things to new extremes.";
	say "     To the south, you could wander back out into the surrounding city and possibly find a safer place to be. Alternatively, the way east and west along the boundary road seems relatively safe - or you could [bold type][link]explore[as]explore[end link][roman type] the twisting streets of this old part of the city that lie north of where you stand, with all the dangers that may hold.";

instead of smelling Entrance to the Red Light District:
	say "     This place smells very strongly of sex, with a musky scent of arousal hanging thick in the air. This neighborhood was clearly struck hard by the infection, being particularly vulnerable. The scents of several lustful creatures waft by your nose, so strong that their origins can't be far off. You catch the scent of what you guess to be [one of]a hyper-masculine creature[or]some kind of feline creature[or]a strong latex source[or]a dark and powerful female[or]arousing pollen[or]a large marsupial[or]an arousing perfume[or]a herm and cheap sex[at random], making your head swim a bit before you shake the sensation off.";

East of Entrance to the Red Light District is Boundary Street East.
The earea of Boundary Street East is "Red".
The description of Boundary Street East is "[RedLightBoundaryEastDesc]".

to say RedLightBoundaryEastDesc:
	say "     You're on a road that runs along the border to the red light district, marked by prominent [']SEX SEX SEX['] neon signs along the facades of a number of buildings on one street side. Though without power to support the alluring shine of all the signage, it just seems kinda dingy. Some piles of uncollected trash litter the street, and towards the east, a modestly sized chapel rises above the surrounding buildings. Sadly, its white walls are marred by the signs of a recent fire within, with the flames having licked out of the shattered windows to blacken areas above and besides them. The large inverted pentagram that someone has clawed into the timbers of the wooden front door tells you that what befell the chapel wasn't an accident either.";

instead of smelling Boundary Street East:
	say "     The aroma of fire and ash is ever-present in your nose, so close to the burned chapel. Of course, this doesn't reduce the other scents present, so you can also smell sex, with a musky scent of arousal hanging thick in the air.";

Burned-Out Chapel is a room. It is fasttravel.
East of Boundary Street East is Burned-Out Chapel.
The description of Burned-Out Chapel is "[chapelplacedesc]".
earea of Burned-Out Chapel is "Red".

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

Northeast of Burned-Out Chapel is Sacristy.
The description of Sacristy is "     This sacristy has been... redecorated recently. You're pretty sure it didn't originally have red silk drapes and a large bed, currently bathed in the light of about a hundred candles. There's a fire going in a brazier with a large stack of bibles beside it to provide additional fuel. In between various dildos and sex toys strewn about on the bed, there's a golden chalice and a few crosses, which got used for the same purpose as the rest, from their sticky state...".

instead of sniffing Sacristy:
	say "The heavy scent of burned wood hangs in the room, mixed with a trace of blood and [if HP of Elijah is 100]the all-pervading stench of [end if]demonic cum.";

[
Southeast of Boundary Street East is Darius's Crib. It is sleepsafe.
The description of Darius's Crib is "[DariusCribDesc]".

to say DariusCribDesc:
	say "     Having passed through a short hallway after entering this building and walking past one door that is literally only held up by crime scene tape gluing it to its frame, you're in one of the other apartments of the building now. Or maybe two, as someone has knocked a large hole through the wall of next apartment. All in all, the place has a dingy and run-down feel to it and seems not particularly well cleaned up. Numerous mattresses lie on the floor, often stained by sexual fluids, and you can hear the barking of dog cubs from somewhere deeper in the other apartment. A table laden with little baggies seems to be Darius's inventory, all laid out for you to check over.";
]

West of Entrance to the Red Light District is Boundary Street West.
The earea of Boundary Street West is "Red".
The description of Boundary Street West is "[RedLightBoundaryWestDesc]".

to say RedLightBoundaryWestDesc:
	say "     You're on a road that runs along the border to the red light district, marked by prominent [']SEX SEX SEX['] neon signs along the facades of a number of buildings on one street side. Though without power to support the alluring shine of all the signage, it just seems kinda dingy. The area you are in is dominated by a big rig truck lying on its side, wedging its bulky length between the buildings on both sides and creating a formidable barrier that impedes any further progress west. In all likelihood, the driver crashed it sometime during the initial outbreak of the nanite contagion. Towards the northwest, just short of where the cab of the truck has buried itself halfway in a wall, you can see the door of a store that survived the devastation seemingly intact.";

instead of smelling Boundary Street West:
	say "     This place smells very strongly of sex, with a musky scent of arousal hanging thick in the air. This neighborhood was clearly struck hard by the infection, being particularly vulnerable. The scents of several lustful creatures waft by your nose, so strong that their origins can't be far off. You catch the scent of what you guess to be [one of]a hyper-masculine creature[or]some kind of feline creature[or]a strong latex source[or]a dark and powerful female[or]arousing pollen[or]a large marsupial[or]an arousing perfume[or]a herm and cheap sex[at random], making your head swim a bit before you shake the sensation off.";

Northwest of Boundary Street West is Porn Store.

Red Light District ends here.
