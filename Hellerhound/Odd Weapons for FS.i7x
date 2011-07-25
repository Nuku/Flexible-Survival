Odd Weapons for FS by Hellerhound begins here.

Section 1 - Garbage can lid


Table of Game Objects (continued)
name	desc	weight	object
"Garbage Can Lid"	"The lid of a garbage can, usable as a weapon."	4	garbage can lid
"Infected Sword"	"A sword with cloudy metal found in a sea of slime. It is infectious, and keeps changing you."	10	infected sword


garbage can lid is a armament. It is a part of the player. It has a weapon "[one of]your large shield[or]your lid[or]your trusty lid[or]flashing grey circle[at random]". The weapon damage of garbage can lid is 8. The weapon type of garbage can lid is "Melee". It is not temporary.

infected sword is a armament. It is a part of the player. It has a weapon "[one of]your cloudy sword[or]your sword[or]your infected sword[or]your glowing sword[at random]". The weapon damage of infected sword is 16. The weapon type of infected sword is "Melee". It is not temporary. the purified of infected sword is "Nothing".

instead of purifying an infected sword:
	say "The sword sets the sides of the microwave on fire, and Matt rushes over and sprays it with the fire extinguisher. 'What are you doing?' he exclaims, 'Don't you know what happens when you put metal in the microwave?";
	if a random chance of one in three succeeds:
		say "I cannot fix such extensive damage. I'll have to throw the microwave out.";
		remove microwave from play;
	otherwise:
		say "I have fixed the damage, butnext time it might not be so. Do not do it again!";
	stop the action;


perraise is a number that varies.

every turn:
	if the garbage can lid is wielded:
		if perraise is 0:
			increase the dexterity of the player by 6;
			now perraise is 1;
	otherwise:
		if perraise is 1:
			decrease the dexterity of the player by 6;
			now perraise is 0;

Smelly garbage is a situation.

instead of resolving a smelly garbage:
	say "You come across a garbage pail, obviously not tended since before the infection began. The stuff inside is useless slime, but maybe you could use the lid as a shield?";
	if the player consents:
		add "Garbage Can Lid" to the invent of the player;
		now smelly garbage is resolved;
	otherwise:
		say "You leave it there.";



Section 2 - Infected Sword

Sword Nest is a situation.
gotsword is a number that varies.
washerenest is a number that varies.
fellforward is a number that varies.


instead of resolving sword nest:
	say "You come across the remains of a giant nest [if washerenest is 1]again[end if], probably belonging to gryphons. It is scattered, and sexual fluids of all kinds, not all from gryphons, cover the ground. It looks as if several gangs of different species fought here.. or maybe 'played' as well. The ground is so thoroughly coated with it that you cannot enter without touching it.";
	now washerenest is 1;
	if a random number between one and 20 < the perception of the player:
		say "You spot a sword in the middle of the mess, coated so thoroughly with the juices that you suspect it was the target for the raids, and the source of the jubilation of victory. It's metal is cloudy and coated with thick slime, and the pommel is dried cum of some unknown creature, glowing white. IT looks like a powerful, but dangerous weapon. Walk into the mess and take it?";
		if the player consents: 
			say "You slosh through the mess, leaving a trail that fill after a couple of seconds. You get to the sword, and place it in your backpack, and trudge back.";
			if a random number between 1 and 25 > the dexterity of the player:
				say "On the way, you fall headlong into the slime, and it takes a while to get up. After you emerge, you cough up slime and wipe it off your body.";
				now fellforward is 1;
			otherwise:
				say "You successfully navigate the mess and emerge where you entered.";
			[now infect with the slime]
			if fellforward is 0:
				now fellforward is 4;
			otherwise:
				now fellforward is 12;
			repeat with X running from 0 to fellforward:
				sort table of random critters in random order;
				now monster is X;
				infect;
				say "The infected slime changes you.";
				wait for any key;
			add "infected sword" to the invent of the player;
		otherwise:
			say "You leave the mess and its sword there without touching it.";
	otherwise:
		say "You leave the mess behind, pondering the reason why this occurred here and nowhere else.";


An everyturn rule:
	if the infected sword is wielded:
		say "[line break]The sword feels slimy in your hand. Maybe you shouldn't be using it. [line break]";
		sort table of random critters in random order;
		now monster is 1;
		infect;
		say "The infected sword changes you.[line break]";



Odd Weapons for FS ends here.
