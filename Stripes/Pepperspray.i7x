Version 1 of Pepperspray by Stripes begins here.
[version 1]


battleitem is a number that varies.

Table of Game Objects (continued)
name	desc	weight	object
"pepperspray"	"A small cannister of pepperspray."	1	pepperspray

pepperspray is a grab object. It is a part of the player. It is fast. It is not temporary.

to say pepperspraydrain:
	if a random chance of 3 in 10 succeeds:		[average 3-4 uses]
		say "Uh oh! That used up the last of that can and you drop it to the ground, empty.[line break]";
		delete pepperspray;


to say usepepperspray:
	change the current menu to table of pepperspraychoice;
	carry out the displaying activity;

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
		wait for any key;
		decrease the menu depth by 1;
	otherwise:
		say "You try to escape using the pepperspray, but fail.";
		say "[pepperspraydrain]";
		say "[weakretaliate]";
		wait for any key;
		if the hp of the player is less than 1:
			decrease the menu depth by 1;
	decrease the menu depth by 1;		[move an extra level back up to the overworld]


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
	wait for any key;
	if monsterhp is greater than 0:
		say "[line break]Having partially recovered, your enemy attempts to retaliate.[line break]";
		say "[weakretaliate]";
		wait for any key;
		decrease the menu depth by 1;
		change the current menu to table of Basic Combat;
		if the hp of the player is less than 1 or combat abort is 1:
			now combat abort is 0;
			decrease the menu depth by 1;
	otherwise:
		follow the cock descr rule;
		follow the breast descr rule;
		let ok be 1;
		if "Control Freak" is listed in feats of player:
			say "Do you want to perform after combat scene?";
			if the player consents:
				now ok is 1;
			otherwise:
				now ok is 0;
		if ok is 1, say "[defeated entry] ";
		increase the XP of the player by lev entry times two;
		if "Know Thyself" is listed in feats of player and (bodyname of player is name entry or facename of player is name entry), increase the XP of the player by (lev entry divided by 2);
		if the player is not lonely:
			increase the xp of the companion of the player by lev entry times two;
			if "Ringmaster" is not listed in feats of player:
				decrease the xp of the player by ( lev entry times 2 ) divided by 3;
		increase the morale of the player by 1;
		let z be 0;
		if "Magpie Eyes" is listed in feats of player and lootchance entry is greater than 50:
			now z is ( 100 - lootchance entry ) divided by 3;		[scaled increase above 50, prevents numbers over 100]
			increase lootchance entry by z;
		otherwise if "Magpie Eyes" is listed in feats of player and lootchance entry is greater than 0:
			now z is lootchance entry divided by 3;
			increase lootchance entry by z;
		if a random chance of lootchance entry in 100 succeeds:
			say "You gain 1 x [loot entry]!";
			add loot entry to invent of player;
		if "Magpie Eyes" is listed in feats of player and lootchance entry is greater than 0:
			decrease lootchance entry by z;
		decrease the menu depth by 1;
		decrease the menu depth by 1;		[move up an extra menu level back to overworld]
		if ok is 1, wait for any key;
	clear the screen;
	[if the menu depth is greater than 0, carry out the displaying activity;]
	[if the menu depth is 0, try looking;]
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
		let dam be ( weapon damage of the player times ( a random number from 80 to ( 120 + level of player ) ) ) divided by 100;
		if weapon object of player is journal:
			if "Martial Artist" is listed in feats of player:
				increase dam by 1;
			if "Black Belt" is listed in feats of player:
				now dam is ( dam times a random number from 105 to 125 ) divided by 100;
			if "Natural Armaments" is listed in feats of player and bodyname is not "human":
				let z be 0;
				repeat with y running from 1 to number of filled rows in table of random critters:
					choose row y in table of random critters;
					if name entry is bodyname of player:
						now z is y;
						break;
				choose row z in table of random critters;
				let dammy be 2;
				if wdam entry > 3:					[nerfed for very high damage critters]
					now dammy is ( square root of ( wdam entry - 1 ) ) + 2;
				increase dam by a random number between 1 and dammy;
				choose row monster from table of random critters;
		if "Weaponsmaster" is listed in feats of player and weapon object of player is not journal:	[Weaponsmaster and armed]
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
			say "Filled with sudden motivation, your attack scores particularly well!";
			increase dam by dam;
		say "You [one of]strike with[or]attack with[or]use your[or]abuse with[at random] [weapon of player], hitting [name entry] for [dam] damage!";
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
				say "[line break]You make an additional attack using your tail's natural abilities for [dammy] damage!";
				increase dam by dammy;
				choose row monster from table of random critters;
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
	if player is not lonely and a random chance of 1 in 5 succeeds:
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
	if hp of the player is greater than 0:
		say "";
		[wait for any key;]
		[carry out the displaying activity;]
	otherwise:
		Lose;
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
"Your HP: [hp of player]/[maxhp of player]      [name in row monster of table of random critters] HP: [monsterhp]/[hp in row monster of table of random critters]"	--	"I am fit as a fiddle"	--

Pepperspray ends here.
