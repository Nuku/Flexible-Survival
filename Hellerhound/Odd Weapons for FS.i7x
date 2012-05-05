Odd Weapons for FS by Hellerhound begins here.

Section 1 - Garbage can lid


Table of Game Objects (continued)
name	desc	weight	object
"garbage can lid"	"The lid of a garbage can, usable as a weapon."	4	garbage can lid
"infected sword"	"A sword with cloudy metal found in a sea of slime. It is infectious, and keeps changing you."	10	infected sword
"dirty whip"	"A whip covered with dripping horse cum. It is infectious, and was found abandoned by its owner."	3	dirty whip
"horse whip"	"A whip you found and cleaned up.  It has metal studs on the lash."	2	horse whip

[understand "whip" as clean whip.
Does the player mean using the dirty whip when the dirty whip is owned: it is likely.
Does the player mean littering the dirty whip when the dirty whip is owned: it is likely.
Does the player mean littering the clean whip when the clean whip is owned: it is very likely.
Does the player mean grabbing the dirty whip when the dirty whip is visible: it is likely.
Does the player mean grabbing the clean whip when the clean whip is visible: it is very likely.]

[When Play begins:
	now the printed name of clean whip is "whip";]

dirty whip is an armament. it is part of the player. It has a weapon "[one of]your whip[or]your cum-soaked whip[or]your messy whip[or]white streak[at random]". The weapon damage of dirty whip is 11. The weapon type of dirty whip is "Melee". It is not temporary.

instead of sniffing dirty whip:
	say "The sticky whip smells of equine cum.";

horse whip is an armament. It is part of the player. It has a weapon "[one of]your whip[or]your studded whip[or]your metallic whip[or]brown streak[at random]". the weapon damage of horse whip is 6. The weapon type of horse whip is "Melee". It is not temporary.

instead of sniffing horse whip:
	say "The horse whip smells of leather and oils.";

garbage can lid is a armament. It is a part of the player. It has a weapon "[one of]your large shield[or]your lid[or]your trusty lid[or]flashing grey circle[at random]". The weapon damage of garbage can lid is 5. The weapon type of garbage can lid is "Melee". It is not temporary.

instead of sniffing garbage can lid:
	say "A heavy scent of garbage fills your nose as you sniff your makeshift shield.";

infected sword is a armament. It is a part of the player. It has a weapon "[one of]your cloudy sword[or]your sword[or]your infected sword[or]your glowing sword[at random]". The weapon damage of infected sword is 16. The weapon type of infected sword is "Melee". It is not temporary. the purified of infected sword is "Nothing".

instead of sniffing infected sword:
	say "The infected sword smells of a myriad of musky scents, all shifting and changing.  You can never seem to identify a scent before a new one appears.";

instead of purifying an infected sword:
	say "The sword sets the sides of the microwave on fire, and Matt rushes over and sprays it with the fire extinguisher. 'What are you doing?' he exclaims, 'Don't you know what happens when you put metal in the microwave?";
	say "I have fixed the damage, but next time it might not be so. Do not do it again!";
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
		add "garbage can lid" to the invent of the player;
		now smelly garbage is resolved;
	otherwise:
		say "You leave it there.";



Section 2 - Infected Sword

Sword Nest is a situation.
gotsword is a number that varies.
washerenest is a number that varies.
fellforward is a number that varies.


to say randominfect:
	now researchbypass is 1;
	sort table of random critters in random order;
	now monster is 1;
	infect;
	now researchbypass is 0;


instead of resolving sword nest:
	say "You come across the remains of a giant nest [if washerenest is 1]again[end if], probably belonging to gryphons. It is scattered, and sexual fluids of all kinds, not all from gryphons, cover the ground. It looks as if several gangs of different species fought here.. or maybe 'played' as well. The ground is so thoroughly coated with it that you cannot enter without touching it.";
	now washerenest is 1;
	if the humanity of the player is less than 60: [falling to the nanites]
		say "Your mind feels fuzzy, and you have a strange desire to roll in the muck. Do you submit?";
		if the player consents:
			say "You run and jump into the slimy muck, a sick splot sounding and echoing between the nearby buildings. The slime coats you as you roll with enthusiasm, losing your mind to the infection faster by the minute.";
			decrease the humanity of the player by 15;
			say "[randominfect]";
			say "[randominfect]";
			say "[randominfect]";
			say "[randominfect]";
			say "[randominfect]";
			say "[randominfect]";
			say "[randominfect]";
			say "[randominfect]";
			say "[line break]";
			say "...";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "The sludge covering you releases that desire, as you orgasm intensely in the muck.";
			say "You feel another desire rear its head, to drink from the giant puddle.";
			say "Do you submit?";
			if the player consents:
				decrease the humanity of the player by 15;
				say "You dip your [face of player] head into the slime and suck greedily. It sates your hunger and thirst.";
				say "[randominfect]";
				say "[randominfect]";
				say "[randominfect]";
				say "[randominfect]";
				say "[randominfect]";
				say "[randominfect]";
				say "[randominfect]";
				say "[randominfect]";
				say "[randominfect]";
				say "[randominfect]";
				say "[randominfect]";
				say "[randominfect]";
				say "Another desire roars inside your head, causing you to start pulling the sludge up into your hands.";
				say "you manage to stop it, but will you let it continue?";
				if the player consents:
					say "You lose the will to resist and proceed to follow every desire and lust.";
					say "You grab the slime in your hands and pour it over your head, and then grab some more, and think about what to do with it next.";
					if the cunts of the player is 1:
						say "You take your slime-filled hands and shove them up your waiting cunt, filling it with the sludge.";
						say "You feel a palpable wave of contentment from your lower belly.";
						say "You then shove them up your rear, filling it as well.";
					otherwise:
						say "You decide to try and drink all of the slime you can, tasting its deliciously dirty flavor.";
					say "After a short while, you collapse, corrupt pleasure roaring through your body.";
					repeat with T running from one to 15:
						say "[randominfect]";
					decrease the humanity of the player by 100;
					end the game saying "Your humanity submits to the sludge nanites, and you go feral.";
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
				say "[randominfect]";
				say "The infected slime changes you.";
				wait for any key;
			add "infected sword" to the invent of the player;
			now sword nest is resolved;
		otherwise:
			say "You leave the mess and its sword there without touching it.";
	otherwise:
		say "You leave the mess behind, pondering the reason why this occurred here and nowhere else.";


An everyturn rule:
	if the infected sword is wielded:
		say "[line break]The sword feels slimy in your hand. Maybe you shouldn't be using it. [line break]";
		say "[randominfect]";
		say "The infected sword changes you.[line break]";



Section 3 - Dirty Whip

Destroyed Bushes is a situation.
the sarea of destroyed bushes is "Park".
numwater is a number that varies;
gotwhip is a number that varies.

instead of resolving Destroyed bushes:
	say "You come across a circle of bushes crushed flat against the ground, large pools of cum and  juices in the revealed space. Horse hoof prints over the ground as well, and the imprint of a human body in one spot testifies to the fact that someone was overtaken by one of the equines.";
	if the humanity of the player is less than 50:
		say "Do you want to drink from the puddles?";
		if the player consents:
			infect "black equinoid";
			infect "black equinoid";
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
				let found be 0;
				repeat with T running from one to three:
					let number be 0;
					repeat with Q running through invent of the the player:
						increase number by 1;
						if q matches the regular expression printed name of water bottle, case insensitively:
							increase found by 1;
							remove entry number from invent of the player;
							if found is three:
								break;
					if found is three:
						break;
				if found is three:
					say "You dump the water bottles on the whip, washing off the cum.";	
					say "You pick up the now clean whip, and place it in your backpack. It looks like a good weapon.";
					add "horse whip" to the invent of the player;
					now destroyed bushes is resolved;
					now gotwhip is 1;
				otherwise:
					repeat with X running from 0 to found:
						add "water bottle" to the invent of the player;
					say "You don't have enough water. Maybe you could come back when you find more?";
			if gotwhip is 0:
				say "Do you wish to pick it up anyway?";
				if the player consents:
					say "You pick up the dirty, cum soaked whip with difficulty as it slips about in your hand, the cum getting all over. You finally manage to get it into your backpack.";
					infect "black equinoid";
					infect "black equinoid";
					infect "black equinoid";
					add "dirty whip" to the invent of the player;
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
		infect "black equinoid";
		now researchbypass is 0;


Odd Weapons for FS ends here.