Version 2 of Qytat a'th Lundrues by Hellerhound begins here.
"Adds the floating city of Qytat a'th Lundrues to FS"
[Version 2.1 - Qytat Plaza made fasttravel upon arrival Stripes]

Section 1 - Guard Gryphon Event

Guard Gryphon is a situation.
findablestairs is a number that varies.
when play begins:
	add Guard Gryphon to badspots of hermaphrodite;
	add Guard Gryphon to badspots of furry;


Instead of resolving a Guard Gryphon:
	say "     You come across a hermaphrodite gryphon, this one with a red banner with an 8-pointed silver star in the center. She is watching the sky from a rooftop, as if watching for others of hir kind in the air.";
	challenge "Hermaphrodite Gryphon";
	if lost is not 1:
		say "     Curious about her odd behavior, you question the gryphoness about it. At first, she is tight-beaked about it, but when you quite literally grab her by the balls, she starts to talk. The defeated gryphon tells she's watching for new gryphons who've strayed away from the others in the city. Shi's on duty to point them towards the location of a great staircase, ancient and powerful. Shi says it leads to some thing or some place called Qytat a'th Lundrues. Intrigued, you force hir to divulge that this ghostly staircase moves from time to time, but which comes to rest at the same spots. Shi starts to describe two apartment buildings, one red and one green, as well as a bright alley which are the meeting points in this part of the city. Before you can gain more specific information on all this, shi takes advantage of your interest in hir tale to pull free of you. The gryphon scrambles to the edge of the building and leaps off, taking flight to escape you and leaving hir standard behind. You watch hir leave, wondering if there is any truth to hir tale or if it is just madness from the infection.";
		now findablestairs is 1;
		change the up exit of Red Apartment to Staircase Entry; [This opens then closes the entries...]
		change the up exit of Overgrown Rooftop to Staircase Entry; [...allowing them all to be listed... ]
		change the east exit of Bright Alley to Staircase Entry; [...then swapping to the final one... ]
		change the down exit of Staircase Entry to Bright Alley; [...and leaving it open, just in case.]
		now Guard Gryphon is resolved;
	else:
		say "     The gryphon flies off, heading to another building to keep watch, with its emblem only slightly mussed as it flaps in the wind behind it.";


Section 2 - Entry Points

Red Apartment is a room. "     This tall, red building has a fire escape on this side. This four story apartment building looks much like many others in the city. [redflight]". It is fasttravel.
The earea of Red Apartment is "Outside".
Red Apt Exit is a door. Red Apt Exit is dangerous. The marea of Red Apt Exit is "Outside". Red Apt Exit is undescribed. Red Apt Exit is south of Red Apartment. South of Red Apt Exit is Outside Exploration.

to say redflight:
	if staircaselocation is 1:
		say "There appears to be a ghostly staircase on top of the building, almost unnoticeable unless you were searching for it. Maybe you could go up?";
		now Red Apartment is known;
	else:
		say "There is nothing else interesting about it at the moment.";

[Green Apartment Building moved to Basic Locations in Core Mechanics]

Bright Alley is a room. "     An alley with a silvery blue glow coming from the deeper reaches. You can faintly see that the back of the alley opens to a small hill. [brightflight]". It is fasttravel.
The earea of Bright Alley is "Outside".
Bright Alley Exit is a door. Bright Alley Exit is dangerous. The marea of Bright Alley Exit is "Outside". Bright Alley Exit is undescribed. Bright Alley Exit is west of Bright Alley. West of Bright Alley Exit is Outside Exploration.

to say brightflight:
	if staircaselocation is 3:
		say "There appears to be a ghostly staircase at the top of the hill past the alley. You would not have spotted it if you didn't know to look. Maybe you could go check it out?";
		now Bright Alley is known;
	else:
		say "There is nothing else interesting about it at the moment.";

Section 3 - The Moving Entrance

staircaselocation is a number that varies. staircaselocation is usually 0.
shadowy is a number that varies.

an everyturn rule:
	if findablestairs is 1:
		if shadowy < 4:
			say "The nearby shadows shift slightly.";
			increase shadowy by 1;
		now staircaselocation is a random number between 1 and 3;
		if staircaselocation is 1:
			change the up exit of Red Apartment to Staircase Entry;
			change the down exit of Staircase Entry to Red Apartment;
		else if staircaselocation is 2:
			change the up exit of Overgrown Rooftop to Staircase Entry;
			change the down exit of Staircase Entry to Overgrown Rooftop;
		else if staircaselocation is 3:
			change the east exit of Bright Alley to Staircase Entry;
			change the down exit of Staircase Entry to Bright Alley;

before going up from Red Apartment:
	if staircaselocation is 1:
		say "     You head up the ghostly stairs, finding them more solid than they initially appeared.";
	else if findablestairs is 1:
		say "     You scout up on the roof, but the access point the gryphon told you about isn't there." instead;
	else:
		say "     You check the rooftop quickly, but find nothing of interest at the moment and return to ground level." instead;

before going up from Overgrown Rooftop:
	if staircaselocation is 2:
		say "     You head up the ghostly stairs, finding them more solid than they initially appeared.";
	else if findablestairs is 1:
		say "     You scout for the access point the gryphon told you about, but apparently it isn't there (right now?)." instead;
	else:
		say "     Hm, you can't go up - you're on the roof already." instead;

before going east from Bright Alley:
	if staircaselocation is 3:
		say "     You head up the ghostly stairs, finding them more solid than they initially appeared.";
	else if findablestairs is 1:
		say "     You check the far end of the alley and the hilltop, but the access point the gryphon told you about isn't there right now." instead;
	else:
		say "     You check down the east end of the alley and the small hill, but find nothing of interest at the moment and return to the street." instead;


Section 4 - Qytat a'th Lundrues - The City of the Flying

Staircase Entry is a room. "     Now that you stand upon the staircase, you can see it much more clearly and it becomes solid to your eyes. The staircase stands before you, the legendary path to Qytat a'th Lundrues, the city of the flying. It is a blue silver of some higher element, and the stairs are floating, sliding a little with the slight breeze, but maintaining their orderly position. The stairs glow, and the warmth radiating from them makes you comforted and happy. You can feel a faint, unseen wall around them which grows a translucent blue as the steps spiral up into the sky. You have a feeling that this strange material is completely invisible from the outside.".

Stairs is a room. "     The glowing steps extend above and behind you, spiraling upwards. The faint blue material forming the concealing walls provides something to rest your hand against as you traverse the long staircase to the heavens. Looking through it, everything has a faint, bluish glow that makes everything below seem misty and unfocused, as if it is not quite real.".

Up from Staircase Entry is Stairs.

Qytat Plaza is a room. "     The ground here is the same blue as the stairs, and warm underfoot. There is a great spiral pattern on the blocks and it seems to change when you aren't looking. There are no buildings here, instead ropes hang down from tents and huts, glowing like the rest, and seemingly unsupported. These ropes are all out of reach and you can't see any signs of others up there. The only person you can see here is a male gryphon in a white uniform lounging nearby.".
Qytat Plaza is fasttravel. It is private. It is sleepsafe.


the scent of Staircase Entry is "There is a strange, otherworldly scent here.".
the scent of Stairs is "There is a strange, otherworldly scent here.".
the scent of Qytat Plaza is "This area is strong with the scent of those herm gryphons. It seems you have indeed found their home.".
the scent of Spiral Pattern is "There is a strange, otherworldly scent here.".


Up from Stairs is Qytat Plaza.

Spiral Pattern is a thing. "     The pattern is shifting, and it looks like a great circle, so large you cannot see the other side, with images of helixes and small spheres with arms, odd spherical bubbles with rotating balls around them, the only obvious things that change place, and what looks like a circuit diagram below all of that. It feels soft and warm, yet it doesn't give when you step. You feel creeped out.".

Spiral Pattern is in Qytat Plaza.

understand "platform" and "spiral" and "ground" as the Spiral Pattern.


Qytat a'th Lundrues ends here.
