Version 3 of Pepperspray by Stripes begins here.
[version 3.1 - More varied combat messages]


battleitem is a number that varies.

Table of Game Objects (continued)
name	desc	weight	object
"pepperspray"	"A small canister of pepperspray."	1	pepperspray

pepperspray is a grab object. It is a part of the player. It is fast. It is not temporary.

instead of sniffing the pepperspray:
	say "Smelling the pepperspray canister makes your eyes water.";

to say pepperspraydrain:
	if a random chance of 3 in 10 succeeds:		[average 3-4 uses]
		say "Uh oh! That used up the last of that can and you drop it to the ground, empty.[line break]";
		delete pepperspray;


to say usepepperspray:
	select an option from the table of pepperspraychoice;

this is the peppersprayflee rule:
	[Perform an attempt to flee at +4 from the weakened enemy]
	now battleitem is 1;	[combat item chosen - retaliate to be handled internally]
	choose row monster from the table of random critters;
	let the attack bonus be (( the dexterity of the player plus the intelligence of the player minus 12 ) divided by 2) plus level of the player;
	let the defense bonus be (( the dex entry minus 10 ) divided by 2) plus lev entry;
	let the combat bonus be attack bonus minus defense bonus;
	increase combat bonus by gascloud;								[cannot release gas cloud if pepperspraying, but will still linger]
	if hardmode is true and the combat bonus is less than -8:				[pepperspray limits hardmode penalty to -8]
		now the combat bonus is -8;
	let the roll be a random number from 1 to 20;
	say "You roll 1d20([roll])+[combat bonus] -- [roll plus combat bonus]: ";
	if the roll plus the attack bonus minus the defense bonus is greater than 8:
		say "Using the pepperspray to briefly disable the [name entry], you manage to make your escape.";
		say "[pepperspraydrain]";
		now combat abort is 1;
	otherwise:
		say "You try to escape using the pepperspray, but fail.";
		say "[pepperspraydrain]";
		say "[weakretaliate]";
		if the hp of the player is less than 1:
			lose;
	rule succeeds;


this is the peppersprayattack rule:
	[Perform enhanced double-attack +3 to hit & dodge!]
	now battleitem is 1;	[combat item chosen - retaliate to be handled internally]
	choose row monster from the table of random critters;
	say "You spray the creature with your pepperspray, then quickly press your advantage as it disables them briefly.  You attack twice while they have difficulty defending themselves.[line break]";
	say "[pepperspraydrain]";
	say "[enhancedattack]";
	if monsterhp is greater than 0:
		say "[enhancedattack]";
		if gascloud > 0:
			decrease gascloud by 1;
	if monsterhp is greater than 0:
		say "[line break]Having partially recovered, your enemy attempts to retaliate.[line break]";
		say "[weakretaliate]";
		if the hp of the player is less than 1:
			lose;
	otherwise:
		win;
	rule succeeds;


to say enhancedattack:
	choose row monster from the table of random critters;
	[Improves players attack chance by 3 for these attack actions]
	let the attack bonus be (( the dexterity of the player minus 4 ) divided by 2) plus level of the player;
	let the defense bonus be (( the dex entry minus 10 ) divided by 2) plus lev entry;
	let the combat bonus be attack bonus minus defense bonus;
	if "Know Thyself" is listed in feats of player:
		now speciesbonus is 0;
		if bodyname of player is name entry, increase speciesbonus by a random number from 0 to 2;
		if facename of player is name entry, increase speciesbonus by a random number from 0 to 1;
		if cockname of player is name entry, increase libido of player by a random number from 0 to 1;
		if speciesbonus > 2, now speciesbonus is 2;
		increase combat bonus by speciesbonus;
	if hardmode is true:
		if the combat bonus is greater than 12:				[pepperspray increases hardmode bonus limit to +12]
			now combat bonus is 12;
		otherwise if the combat bonus is less than -8:			[pepperspray limits hardmode penalty to -8]
			now combat bonus is -8;
	let the roll be a random number from 1 to 20;
	say "You roll 1d20([roll])+[combat bonus] -- [roll plus combat bonus]: ";
	if the roll plus the combat bonus is greater than 8:
		let wmstrike be 0;
		let z be 0;
		let dam be ( weapon damage of the player times ( a random number from 80 to ( 120 + level of player ) ) ) divided by 100;
		if weapon object of player is journal:
			if "Martial Artist" is listed in feats of player:
				increase dam by 1;
			if "Black Belt" is listed in feats of player:
				now dam is ( dam times a random number from 105 to 125 ) divided by 100;
			if "Natural Armaments" is listed in feats of player and bodyname of player is not "human":
				repeat with y running from 1 to number of filled rows in table of random critters:
					choose row y in table of random critters;
					if name entry is bodyname of player:
						now z is y;
						break;
				choose row z in table of random critters;
				if z is 0:		[creature not listed - give a low default boost]
					increase dam by a random number between 0 and 2;
				otherwise:
					choose row z in table of random critters;
					let dammy be 2;
					if wdam entry > 3:					[nerfed for very high damage critters]
						now dammy is ( square root of ( wdam entry - 1 ) ) + 2;
					increase dam by a random number between 1 and dammy;
				choose row monster from table of random critters;
		if "Weaponsmaster" is listed in feats of player and weapon object of player is not journal:	[Weaponsmaster and armed]
			now wmstrike is 1;
			let numnum be level of player + ( (intelligence of player - 10 ) / 2 ) + 105;
			now dam is ( ( dam times a random number from 105 to numnum ) divided by 100 );
		if "Powerful" is listed in feats of player:
			now dam is ( ( dam times a random number from 105 to 125 ) divided by 100 );
		if "Mayhem" is listed in feats of player:
			let numnum be ( ( level of player * 5 ) / 2 ) + 100;
			now dam is ( ( dam times a random number from 105 to numnum ) divided by 100 );
		if weapon type of player is "Melee":
			increase dam by (( the strength of the player minus 10 ) divided by 2);
		if a random chance of the morale of the player in 200 succeeds:
			say "Filled with sudden motivation, your attack scores particularly well!  ";
			increase dam by dam;
		if wmstrike is 1:			[Weaponsmaster used]
			say "[one of]You skillfully use[or]You attack precisely with[or]Using your weapon's knowledge, you attack with[or]Like the veteran fighter you are, you strike with[at random] [weapon of player], hitting [name entry] for [dam] damage!";
		otherwise if weapon object of player is journal:
			if z is not 0:	[Natural Armaments used]
				say "[one of]You strike using your unnatural form[or]You instinctively attack using your [bodyname of player][or]Drawing strength from your [bodyname of player], you attack[or]You attack using your [bodyname of player] might[or]You ferociously resist your foe with your tainted body's power[or]You attack using your [bodyname of player][']s natural defences[at random], hitting [name entry] for [dam] damage!";
			otherwise if "Black Belt" is listed in feats of player or "Martial Artist" is listed in feats of player:
				say "[one of]You strike your foe using your trained unarmed combat, [or]You land an open-palmed strike on your foe, [or]You land a close-fisted blow on your enemy, [or]You attack using your martial arts skill, [or]You land a series of quick blows, [or]You grapple and toss your foe using your training, [or]Your kung-fu is the best, [or]Whoa!  You know kung-fu! [at random]hitting [name entry] for [dam] damage!";
			otherwise:
				say "You [one of]strike with[or]attack with[or]use[or]abuse with[at random] [weapon of player], hitting [name entry] for [dam] damage!";
		otherwise:
			say "You [one of]strike with[or]attack with[or]use[or]abuse with[at random] [weapon of player], hitting [name entry] for [dam] damage!";
		if a random chance of 5 in 20 succeeds and "Tail Strike" is listed in feats of player:		[+5% of tail attack w/pepperspray]
			if tailname of player is listed in infections of Tailweapon:
				let z be 0;
				repeat with y running from 1 to number of rows in table of random critters:
					choose row y in table of random critters;
					if name entry is tailname of player:
						now z is y;
						break;
				choose row z in table of random critters;
				let dammy be 2;
				if wdam entry > 3:					[nerfed for very high damage critters]
					now dammy is ( square root of ( wdam entry - 1 ) ) + 2;
				say "[line break]You make an additional attack using your [tailname of player] tail's natural abilities for [dammy] damage!";
				increase dam by dammy;
				choose row monster from table of random critters;
		if a random chance of 5 in 20 succeeds and "Cock Slap" is listed in feats of player and cock length of player >= 12:
			follow the cock descr rule;
			let dammy be 0;
			let z be cock length of player + ( 2 * cocks of player ) - 12;
			now dammy is ( square root of ( 2 * z ) ) + 1;
			if dammy > 8, now dammy is 8;
			increase dammy by a random number between 0 and 1;
			if cocks of player >= 3, increase dammy by a random number between 0 and 1;
			say "[line break]You give your opponent a hard swat with your [cock size desc of player] wang for [dammy] additional damage!";
			increase dam by dammy;
		if a random chance of 5 in 20 succeeds and "Ball Crush" is listed in feats of player and cock width of player >= 16:
			let dammy be 0;
			now dammy is ( square root of ( 2 * ( cock width of player - 13 ) ) ) + 1;
			if dammy > 8, now dammy is 8;
			increase dammy by a random number between 0 and 1;
			say "[line break]You tackle your opponent, slamming your [ball size] orbs onto their [one of]head[or]body[or]face[or]crotch[in random order] for [dammy] additional damage!";
			increase dam by dammy;
		if a random chance of 5 in 20 succeeds and "Boob Smother" is listed in feats of player and breast size of player > 2 and ( breast size of player + ( breasts of player / 2 ) ) >= 7:
			let dammy be 0;
			let z be breast size of player + breasts of player;
			now dammy is square root of ( z - 1 ) + 1;
			if dammy > 7, now dammy is 7;
			increase dammy by a random number between 0 and 1;
			if breasts of player > 4, increase dammy by a random number between 0 and 1;
			say "[line break]Grabbing your opponent, you smoosh them into your ample bosom, smothering and crushing them with your tits for [dammy] additional damage!";
			increase dam by dammy;
		if a random chance of 3 in 10 succeeds and "Spirited Youth" is listed in feats of player:		[+5% chance of Spirited Youth attack]
			let y be a random number from 4 to 6;
			say "Your child [one of]lashes out[or]assists with a sudden strike[or]takes advantage of a distraction[or]launches a surprise attack[or]descends from out of nowhere[at random] at [name entry] for [y] damage!";
			increase dam by y;
		otherwise if a random chance of 2 in 25 succeeds and "Youthful Tides" is listed in feats of player:	[+3% of Youthful Tide onslaught]
			let y be 0;
			repeat with s running from 1 to number of entries in childrenfaces:
				increase y by a random number from 2 to 4;
			increase dam by y;
			say "In a great flurry, your children [one of]swarm across and make distracting grabs[or]hurl a torrent of rocks[or]taunt and jeer in chorus[or]seem to decide start a massive orgy[or]practice their martial arts[at random] at [name entry] for [y] damage!";
		decrease monsterhp by dam;
		follow the monster injury rule;
		say "[Name entry] is [descr].";
	otherwise:
		say "You miss!";
	if player is not lonely and a random chance of 2 in 25 succeeds and "The Horde" is listed in feats of player:
		say "[line break]";
		say "Your many pets, always close by, come pouring out en masse and swarm your enemy, battering the [name entry] from all sides!";
		say "[line break]";
		repeat with z running through tamed pets:
			now attack bonus is ( ( dexterity of z minus 4 ) divided by 2 ) plus level of z;	[+3 to hit for each pet]
			let the combat bonus be attack bonus minus defense bonus;
			if hardmode is true and combat bonus is greater than 12:	[pepperspray increases hardmode bonus limit to +12]
				now combat bonus is 12;
			now roll is a random number from 1 to 20;
			if roll plus the combat bonus is greater than 8:
				let dam be ( weapon damage of z times a random number from 80 to 120 ) divided by 100;
				say "[z]: [assault of z] [dam] damage inflicted!";
				decrease monsterhp by dam;
			otherwise:
				say "Your [z] misses!";
	otherwise if player is not lonely and a random chance of 3 in 10 succeeds:
		now attack bonus is ( ( dexterity of companion of player minus 4 ) divided by 2 ) plus level of companion of player;	[+3 to hit for pet]
		let the combat bonus be attack bonus minus defense bonus;
		if hardmode is true and combat bonus is greater than 12:		[pepperspray increases hardmode bonus limit to +12]
			now combat bonus is 12;
		now roll is a random number from 1 to 20;
		if roll plus the combat bonus is greater than 8:
			let dam be ( weapon damage of companion of player times a random number from 80 to 120 ) divided by 100;
			say "[assault of companion of player] [dam] damage inflicted!";
			decrease monsterhp by dam;
		otherwise:
			say "Your [companion of player] misses!";


to say weakretaliate:
	now avoidance is 0;
	say "[enhancedavoidance]";
	if gascloud > 0, decrease gascloud by 1;
	if avoidance is 1:
		say "";
	otherwise:
		choose row monster from the table of random critters;
		let the defense bonus be (( the dexterity of the player minus 4 ) divided by 2) plus level of the player;	[+3 greater chance to dodge]
		let the attack bonus be (( the dex entry minus 10 ) divided by 2) plus lev entry;
		let the combat bonus be attack bonus minus defense bonus;
		if "Flash" is listed in feats of player and a random chance of 3 in 20 succeeds:
			say "Calling upon your hidden power, you flash brightly with light, filling the [Name Entry]'s eyes with spots.";
			decrease combat bonus by 3;
		if hardmode is true and the combat bonus is less than -10:
			now the combat bonus is -10;
		let the roll be a random number from 1 to 20;
		say "[name entry] rolls 1d20([roll])+[combat bonus] -- [roll plus combat bonus]: ";
		if the roll plus the combat bonus is greater than 8:
			let dam be ( wdam entry times a random number from 67 to 120 ) divided by 100;		[chance for weaker attacks]
			if hardmode is true and a random chance of 1 in 12 succeeds:					[lower chance of hard mode critical]
				now dam is (dam * 150) divided by 100;
				say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
			say "[Attack entry] You take [dam] damage!";
			let absorb be 0;
			if "Toughened" is listed in feats of player:
				increase absorb by dam divided by 5;
			if absorb is greater than 0:
				say "You prevent [absorb] damage!";
			decrease hp of the player by dam;
			increase hp of player by absorb;
			follow the player injury rule;
			say "You are [descr].";
		otherwise:
			say "[Name Entry] misses!";
	wait for any key;
	rule succeeds;

to say enhancedavoidance:
	choose row monster from the table of random critters;
	if "Dazzle" is listed in feats of player and a random chance of 2 in 20 succeeds:
		say "You bring forth a dazzling pattern of lights, momentarily entrancing your enemy and causing their attack to falter.";
		say "[Name Entry] misses!";
		now avoidance is 1;
	otherwise if weapon object of player is bo staff:		[defensive combat]
		let boblock be 5;
		increase boblock by 5;						[flat +5 thanks to pepperspray]
		if "Martial Artist" is listed in feats of player, increase boblock by 3;
		if "Black Belt" is listed in feats of player, increase boblock by 3;
		if "Weaponsmaster" is listed in feats of player, increase boblock by 6;
		let numnum be ( (strength of player + dexterity of player + stamina of player - 36 ) / 3 );
		if numnum > 0, increase boblock by numnum;
		increase boblock by gascloud;
		if boblock > a random number between 0 and 100:
			say "[one of]Using your bo staff, you are able to deflect the enemy's blow, preventing any damage.[or]Making a skillful vault with your staff, you leap out of the enemy's path and thereby avoid their attack.[or]Just as your opponent is about to strike, you sweep with your staff, causing them to stumble.[or]Taking advantage of your weapon's long reach, you keep your enemy at bay as you prepare to make your next move.[at random]";
			now avoidance is 1;
	otherwise if "Black Belt" is listed in feats of player and a random chance of 1 in 8 succeeds:
		say "You nimbly avoid the attack at the last moment!";
		now avoidance is 1;

Table of pepperspraychoice
title	subtable	description	toggle
"Spray and Attack"	--	"Spicy Eyes!!!"	peppersprayattack rule
"Spray and Flee"	--	"Run Away!"	peppersprayflee rule

Pepperspray ends here.
