Version 2 of Odd Weapons for FS by Hellerhound begins here.
[ Garbage Can Lid is now equipment as a shield - Stripes ]

Section 0 - Weapons and Shield


Table of Game Objects (continued)
name	desc	weight	object
"garbage can lid"	"The lid of a garbage can, usable as a shield... more or less."	4	garbage can lid
"infected sword"	"A sword with cloudy metal found in a sea of slime. It is infectious, and keeps changing you."	10	infected sword
"dirty whip"	"A whip covered with dripping horse cum. It is infectious, and was found abandoned by its owner."	3	dirty whip
"horse whip"	"A whip you found and cleaned up.  It has metal studs on the lash."	2	horse whip

[understand "whip" as clean whip.
Does the player mean using the dirty whip when the dirty whip is owned: it is likely.
Does the player mean littering the dirty whip when the dirty whip is owned: it is likely.
Does the player mean littering the clean whip when the clean whip is owned: it is very likely.
Does the player mean grabbing the dirty whip when the dirty whip is visible: it is likely.
Does the player mean grabbing the clean whip when the clean whip is visible: it is very likely.]

dirty whip is an armament. it is part of the player. It has a weapon "[one of]your whip[or]your cum-soaked whip[or]your messy whip[or]white streak[at random]". The weapon damage of dirty whip is 11. The weapon type of dirty whip is "Melee". It is not temporary.

the scent of dirty whip is "The sticky whip smells of equine cum.".

horse whip is an armament. It is part of the player. It has a weapon "[one of]your whip[or]your studded whip[or]your metallic whip[or]brown streak[at random]". the weapon damage of horse whip is 6. The weapon type of horse whip is "Melee". It is not temporary.

the scent of horse whip is "The horse whip smells of leather and oils.".

infected sword is a armament. It is a part of the player. It has a weapon "[one of]your cloudy sword[or]your sword[or]your infected sword[or]your glowing sword[at random][hydraharming]". The weapon damage of infected sword is 16. The weapon type of infected sword is "Melee". It is not temporary. the purified of infected sword is "Nothing". the objsize of infected sword is 4.

the scent of infected sword is "The infected sword smells of a myriad of musky scents, all shifting and changing.  You can never seem to identify a scent before a new one appears.".

instead of purifying an infected sword:
	say "The sword sets the sides of the microwave on fire, and Matt rushes over and sprays it with the fire extinguisher. 'What are you doing?' he exclaims, 'Don't you know what happens when you put metal in the microwave?";
	say "I have fixed the damage, but next time it might not be so. Do not do it again!";
	stop the action;

garbage can lid is equipment. It is not temporary.
The AC of garbage can lid is 28.
The effectiveness of garbage can lid is 30.
The placement of garbage can lid is "body".
The descmod of garbage can lid is "You hold an aluminium garbage can lid in your off hand as an improvised shield.".
The slot of garbage can lid is "shield".

the scent of garbage can lid is "A heavy scent of garbage fills your nose as you sniff your makeshift shield.".


Section 1 - Garbage can lid

Smelly garbage is a scavevent.  The sarea of Smelly garbage is "Allzones".

instead of resolving a smelly garbage:
	say "You come across a garbage pail, obviously not tended since before the infection began. The stuff inside is useless slime, but maybe you could use the lid as a shield?";
	if the player consents:
		increase carried of garbage can lid by 1;
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
	if the humanity of the player is less than 60: [falling to the nanites]
		say "Your mind feels fuzzy, and you have a strange desire to roll in the muck. Do you submit?";
		if the player consents:
			say "You run and jump into the slimy muck, a sick splot sounding and echoing between the nearby buildings. The slime coats you as you roll with enthusiasm, losing your mind to the infection faster by the minute.";
			decrease the humanity of the player by 15;
			weakrandominfect;			[most of first set don't affect researcher]
			weakrandominfect;
			weakrandominfect;
			weakrandominfect;
			weakrandominfect;
			weakrandominfect;
			randominfect;
			randominfect;
			say "[line break]";
			say "...";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "The sludge covering you releases that desire, as you orgasm intensely in the muck.";
			say "You feel another desire rear its head, to drink from the giant puddle.";
			say "Do you submit?";
			if the player consents:
				decrease the humanity of the player by 15;
				say "You dip your [face of player] head into the slime and suck greedily. It sates your hunger and thirst.";
				weakrandominfect;		[more from second batch affect researcher]
				weakrandominfect;
				weakrandominfect;
				weakrandominfect;
				weakrandominfect;
				weakrandominfect;
				weakrandominfect;
				weakrandominfect;
				randominfect;
				randominfect;
				randominfect;
				randominfect;
				say "Another desire roars inside your head, causing you to start pulling the sludge up into your hands.";
				say "You manage to stop it, but will you let it continue?";
				if the player consents:
					say "You lose the will to resist and proceed to follow every desire and lust.";
					say "You grab the slime in your hands and pour it over your head, and then grab some more, and think about what to do with it next.";
					if the cunts of the player is 1:
						say "You take your slime-filled hands and shove them up your waiting cunt, filling it with the sludge.";
						say "[randomimpreg][randomimpreg][randomimpreg]";
						say "You then shove them up your rear, filling it as well.";
					otherwise:
						say "You decide to try and drink all of the slime you can, tasting its deliciously dirty flavor.";
					say "After a short while, you collapse, corrupt pleasure roaring through your body.";
					repeat with T running from one to 15:
						randominfect;
					wait for any key;
					now the humanity of the player is 0;
					end the story saying "Your humanity submits to the sludge nanites, and you go feral.";
					now battleground is "void";
					wait for any key;
					follow the turnpass rule;
					stop the action;
				otherwise:
					say "You rein in your lusts and desires almost too late.";
			otherwise:
				say "You wisely rein in your desires before they got away with you.";
		otherwise:
			say "You master the desire, and look around paying more attention to detail.";
	if a random number between one and 20 < the perception of the player:
		say "You spot a sword in the middle of the mess, coated so thoroughly with the juices that you suspect it was the target for the raids, and the source of the jubilation of victory. Its metal is cloudy and coated with thick slime, and the pommel is dried cum of some unknown creature, glowing white. It looks like a powerful, but dangerous weapon. Do you want to walk into the mess and take it?";
		if the player consents: 
			say "You slosh through the mess, leaving a trail that fill after a couple of seconds. You get to the sword, and place it in your backpack, and trudge back.";
			now fellforward is 1;
			if a random number between 1 and 25 > the dexterity of the player:
				say "On the way, you fall headlong into the slime, and it takes a while to get up. After you emerge, you cough up slime and wipe it off your body.";
				increase fellforward by 2;
			otherwise:
				say "You successfully navigate the mess and emerge where you entered.";
			[now infect with the slime]
			repeat with X running from 0 to fellforward:
				weakrandominfect;		[some affects researcher]
				weakrandominfect;
				weakrandominfect;
				randominfect;
				say "The infected slime changes you.";
				wait for any key;
			increase carried of infected sword by 1;
			now sword nest is resolved;
		otherwise:
			say "You leave the mess and its sword there without touching it.";
			now sword nest is resolved;
	otherwise:
		say "You leave the mess behind, pondering the reason why this occurred here and nowhere else.";
	if battleground is not "void", mallrecall;


An everyturn rule:
	if the infected sword is wielded:
		say "[line break]The sword feels slimy in your hand. Maybe you shouldn't be using it. [line break]";
		randominfect;
		say "The infected sword changes you.[line break]";



Section 3 - Dirty Whip

Destroyed Bushes is a situation.
the sarea of destroyed bushes is "Park".
numwater is a number that varies.
gotwhip is a number that varies.

instead of resolving Destroyed bushes:
	say "You come across a circle of bushes crushed flat against the ground, large pools of cum and  juices in the revealed space. Horse hoof prints over the ground as well, and the imprint of a human body in one spot testifies to the fact that someone was overtaken by one of the equines.";
	if the humanity of the player is less than 50:
		say "Do you want to drink from the puddles?";
		if the player consents:
			infect "Black Equinoid";
			infect "Black Equinoid";
			decrease thirst of the player by 75;
			if the thirst of the player < 0:
				now the thirst of the player is 0;
		otherwise:
			say "You leave them alone.";
	say "Do you wish to look around?";
	if the player consents:
		say "In a nearby bush you find a riding saddle and riding boots, both women's. It seems as if a woman went riding in the park when the infection broke out. Her horse changed, and raped her. Since the clearing is larger than if the horse just fucked her, you assume she changed and submitted as well.";
		if the perception of the player is greater than a random number between one and 20:
			say "In one of the puddles of cum you find a whip with metal bits strung throughout it. It looks as if the rider carried it, and lost it in the fray. it is currently covered with cum, but if you have enough water, you could change that. Do you wish to?";
			if the player consents:	
				if carried of water bottle >= 3:
					say "You have to use a few bottles to wash off the whip, but you manage to get it clean and safe to use.";	
					say "You pick up the now clean whip, and place it in your backpack. It looks like a good weapon.";
					decrease carried of water bottle by 3;
					increase carried of horse whip by 1;
					now destroyed bushes is resolved;
					now gotwhip is 1;
				otherwise:
					say "You don't have enough water. Maybe you could come back when you find more?";
			if gotwhip is 0:
				say "Do you wish to pick it up anyway?";
				if the player consents:
					say "You pick up the dirty, cum soaked whip with difficulty as it slips about in your hand, the cum getting all over. You finally manage to get it into your backpack.";
					infect "Black Equinoid";
					infect "Black Equinoid";
					infect "Black Equinoid";
					increase carried of dirty whip by 1;
					now gotwhip is 2;
					now the destroyed bushes is resolved;
				otherwise:
					say "You leave the whip where it is.";
	otherwise:
		say "You leave the scene, avoiding the puddles.";
		now destroyed bushes is resolved;

An everyturn rule:
	if the dirty whip is wielded:
		now researchbypass is 1;
		say "The cum on the dirty whip slips down onto your hand.";
		infect "Black Equinoid";
		now researchbypass is 0;


Odd Weapons for FS ends here.