Qytat a'th Lundrues by Hellerhound begins here.
"Adds floating city to FS"

Guard Gryphon is a situation.

findablestairs is a number that varies.


Instead of resolving a Guard Gryphon:
	say "You come across a hermaphrodite gryphon, this one with a red banner with an 8-pointed silver star in the center.";
	challenge "Hermaphrodite Gryphon";
	if lost is not 1:
		say "The defeated gryphon tells you of the location of a great staircase, ancient and powerful. It moves from time to time, but usually rests on the top of one of the buildings.";
		now findablestairs is 1;
		now Guard Gryphon is resolved;
	otherwise:
		say "The gryphon walks on, with its emblem only slightly mussed.";

[phantom room code. UGH]
to say redflight:
	if staircaselocation is 0:
		say "There appears to be a staircase on top of the building, maybe you could go up?";
	otherwise:
		say "There is nothing else interesting about it.";
to say greenflight:
	if staircaselocation is 1:
		say "There appears to be a staircase on top of the building, maybe you could go up?";
	otherwise:
		say "There is nothing else interesting about it.";
to say brightflight:
	if staircaselocation is 2:
		say "There appears to be a staircase in the bright glow to the east, maybe you could go check it out?";
	otherwise:
		say "There is nothing else interesting about it.";

before going up from Red Apartment:
	if staircaselocation is 0:
		move the player to staircaseroof;
	otherwise:
		say "Up to where?";
		stop the action;

before going up from Green Apartment:
	if staircaselocation is 1:
		move the player to staircaseroof;
	otherwise:
		say "Up to where?";
		stop the action;
		
before going east from Bright Alley:
	if staircaselocation is 2:
		move the player to staircaseroof;
	otherwise:
		say "East to where?";
		stop the action;

before going down from staircaseroof:
	say "You climb down the fire escape, and walk back to the bunker.";
	move the player to Bunker;
	stop the action;

downdull is a room. "ERROR 682 prepare to be lost forever.".
downdull is below staircaseroof.

reddull is a room. "ERROR 682".
reddull is up from Red Apartment.

greendull is a room. "ERROR 682".
greendull is up from Green Apartment.

brightdull is a room. "ERROR 682".
brightdull is up from Bright Alley.

Red Apartment is a room. "A red building, with a fire escape on this side. It looks much like the average building.[redflight]". It is fasttravel.


Green Apartment is a room. "A green building, almost identical to your apartment, with a fire escape, the mandatory type for buildings in the city. It seems very mediocre. [greenflight]". It is fasttravel.


Bright Alley is a room. "A dark alley, with a silvery blue glow coming from the deeper reaches. [brightflight]". It is fasttravel.


staircaseroof is a room. "The staircase stands before you, the legendary path to Qytat a'th Lundrues, the city of the flying. It is a blue silver of some higher element, and the stairs are floating, sliding a little with the slight breeze, but maintaining their orderly position. The stairs glow, and the warmth radiating from them makes you comforted and happy.".



Stairs is a room. "The glowing steps extend before and behind you, their gentle bluish glow illuminating the clouds.".

Up from staircaseroof is Stairs. 

City Plaza is a room. "The ground here is the same blue as the stairs, and warm underfoot. There is a great spiral pattern on the blocks and it seems to change when you aren't looking. There are no buildings here, instead ropes hang down from tents, glowing like the rest, and seemingly usupported. [line break] The ropes are all out of reach, and there is nobody here.".

Up from Stairs is City Plaza.

Spiral Pattern is a thing. "The pattern is shifting, and it looks like a great circle, so large you cannot see the other side, with images of DNA and small spheres with arms, odd spherical bubbles with rotating balls around them, the only obvious things that change place, and what looks like a circuit diagram below all of that. It feels soft and warm, yet it doesn't give when you step. You feel creeped out.".


Spiral Pattern is in City Plaza. 


understand "platform" and "spiral" and "ground" as the Spiral Pattern.

staircaselocation is a number that varies.
shadowy is a number that varies.
an everyturn rule:
	if findablestairs is 1:
		now staircaselocation is a random number from 0 to 2;
		say "[staircaselocation]";
		if shadowy < 4:
			say "The nearby shadows shift slightly.";
			increase shadowy by 1;



Qytat a'th Lundrues ends here.
