Version 1 of Assorted Events by Stripes begins here.
[version 1]

"Adds a batch of random events to Flexible Survival scattered around the city."


Section 1- Ninjas?

Fallen Ninja is a situation.
The sarea of Fallen Ninja is "Museum";
when play begins:
	add Fallen Ninja to badspots of furry;

Instead of resolving a Fallen Ninja:
	say "     Passing through the halls of the museum, you come across the aftermath of what was an epic battle.  Many of the displays here are knocked over or shattered by what must have been powerful blows by a great weapon.  You can see gouges cut deep into the walls, many stained with blood.  Smaller darts and shuriken are embedded in the wall as well.  The floor is marked with several blood stains and cum puddles, as well as soot marks from flash powder or smoke bombs.  Clearly many battled a great foe here.";
	say "     Half-buried in the ruins of one display, you find the grisly remains of a feline ninja cleaved in two at the waist.  Drawing off its mask, you see her face locked in an expression of great pain and horror.  Something about her death gaze disturbs you deep inside and you are unable to bear the sight of it.  You brush her eyes shut and pull the mask back down over her feline face.  Beside the fallen ninja is her weapon, a bo staff with ornate metal tips.  Cautious of any infected blood, you quickly check her [italic type]shinobi shozoko[roman type], but find nothing else of use.";
	increase score by 5;
	Now Fallen Ninja is resolved;

Table of Game Objects (continued)
name	desc	weight	object
"bo staff"	"An ornate fighting staff."	2	bo staff

bo staff is an armament. It is part of the player. It has a weapon "[one of]your bo staff[or]your fighting staff[or]your staff[or]your bo staff with a hard whack[or]the long pole[or]your staff with a fast jab[at random]". The weapon damage of bo staff is 3. The weapon type of bo staff is "Melee". It is not temporary.

[
Suddenly Ninjas is a situation.
The sarea of Suddenly Ninjas is "Museum";
when play begins:
	add Suddenly Ninjas to badspots of furry;

Instead of resolving a Suddenly Ninjas!:
	say "     Suddenly!  Ninjas!  Everywhere!";
	say "     Ninja fight time!";
	increase score by 1;
	Now Suddenly Ninjas is resolved;
]

Assorted Events ends here.