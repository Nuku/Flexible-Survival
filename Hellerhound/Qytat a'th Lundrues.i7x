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

[phantom room code. better since it now follows the working format that sarokcat uses. I have a backup of the old ugly stuff incase we run into unforseen problems (which shouldn't happen)]








Red Apartment is a room. "A red building, with a fire escape on this side. It looks much like the average building.". It is fasttravel.


Green Apartment is a room. "A green building, almost identical to your apartment, with a fire escape, the mandatory type for buildings in the city. It seems very mediocre. ". It is fasttravel.


Bright Alley is a room. "A dark alley, with a silvery blue glow coming from the deeper reaches. ". It is fasttravel.


Staircase Roof is a room. "The staircase stands before you, the legendary path to Qytat a'th Lundrues, the city of the flying. It is a blue silver of some higher element, and the stairs are floating, sliding a little with the slight breeze, but maintaining their orderly position. The stairs glow, and the warmth radiating from them makes you comforted and happy.".



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
		if shadowy < 4:
			say "The nearby shadows shift slightly.";
			increase shadowy by 1;
		let n be a random number between 1 and 4;
		if n is 1:
			change the up exit of Red Apartment to Staircase Roof;
		otherwise if n is 2:
			change the up exit of Green Apartment to Staircase Roof;
		otherwise:
			change the east exit of Bright Alley to Staircase Roof;



Qytat a'th Lundrues ends here.
