Version 1 of Alt Combat by Stripes begins here.
[Version 1 - Creation of table and basic variations]

Section 1 - Basic variables

monstercom is a number that varies.		[ This represents the row on the table of Critter Combat to be used in this fight. ]
altattackmade is a number that varies.	[ This tracks whether an alternate attack what chosen. ]
combat abort is a number that varies.	[ 0 = combat continues  /  1 = combat will be aborted. ]	
speciesbonus is a number that varies.	[ Applies a species bonus while using the 'Know Thyself' feat. ]
automaticcombatcheck is a number that varies. [ Used to mark if combat actions are not being chosen by the player. ]
inafight is a number that varies.		[ Used to detect if player is in a fight (item use) ]
avoidance is a number that varies.		[ Used to track if a player automatically avoids an attack. ]
gascloud is a number that varies.		[ Tracks the ongoing strength of a player's ambient gas cloud. ]
monsterhp is a number that varies.		[ Remaining monster hit points. ]
monsterpowerup is a number that varies.	[ Used to track if a monster got a powerup that needs to be monitored or later removed. ]
missskip is a number that varies.		[ Used to indicate if the default monster miss message should be omitted. ]

Section 2 - Combat

Chapter 0 - Combat Menu

To Combat Menu:
	follow the cock descr rule;
	follow the cunt descr rule;
	follow the breast descr rule;
	now inafight is 1;
	now automaticcombatcheck is 0; [sets to zero as combat starts, just in case]
	follow the monster combat mode rule;
	while hp of player is greater than 0 and monsterhp is greater than 0:
		if combat abort is 1:
			now combat abort is 0;
			wait for any key;
			clear the screen and hyperlink list;
			continue the action;
		if "Submissive" is listed in feats of player and a random chance of ( ( libido of player + 20 ) / 3 ) in 1000 succeeds:
		[chance to submit in combat if you have the submissive feat, feel free to adjust odds]
			say "[line break]Your submissive nature gets the better of you and you offer yourself to your opponent."; [text telling player why they lost the fight]
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			follow the submit rule;
		if autoattackmode is 1: [always attacks in combat, no player input needed]
			now automaticcombatcheck is 1;
			follow the player attack rule;
		otherwise if autoattackmode is 3: [always pass in combat, no player input needed]
			now automaticcombatcheck is 1;
			follow the combat pass rule;
		otherwise if autoattackmode is 4: [always flees in combat, no player input needed]
			now automaticcombatcheck is 1;
			follow the flee rule;
		otherwise if autoattackmode is 5: [always submit in combat, no player input needed]
			now automaticcombatcheck is 1;
			follow the submit rule;
		otherwise:
			if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
			say "Choose your action numerically or use: [bold type]A[roman type]ttack, [bold type]I[roman type]tem, [bold type]P[roman type]ass, [bold type]S[roman type]ubmit, [bold type]F[roman type]lee[line break]";
			let combatopt be 0;
			repeat through table of basic combat:
				increase combatopt by 1;
				say "[bold type][combatopt][roman type] - [link][title entry][as][combatopt][end link][line break][run paragraph on]";
			say "Your HP: [hp of player]/[maxhp of player]      [name in row monster of table of random critters] HP: [monsterhp]/[hp in row monster of table of random critters] >[run paragraph on]";
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":
				now k is the chosen letter;
				translate k;
				if the player's command matches "[number]":
					now keychar is "[number understood]";
			if keychar in lower case exactly matches the text " ":
				follow the player attack rule;
				next;
			if keychar in lower case exactly matches the text "return":
				follow the player attack rule;
				next;
			if keychar in lower case exactly matches the text "a" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return":
				follow the player attack rule;
				next;
			if keychar in lower case exactly matches the text "i" or keychar in lower case exactly matches the text "2":
				follow the combat item rule;
				next;
			if keychar in lower case exactly matches the text "p" or keychar in lower case exactly matches the text "3":
				follow the combat pass rule;
				next;
			if keychar in lower case exactly matches the text "f" or keychar in lower case exactly matches the text "4":
				follow the flee rule;
				next;
			if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "5":
				follow the submit rule;
				next;
			if keychar in lower case matches the text "attack":
				follow the player attack rule;
				next;
			if keychar in lower case matches the text "item":
				follow the combat item rule;
				next;
			if keychar in lower case matches the text "pass":
				follow the combat pass rule;
				next;
			if keychar in lower case matches the text "submit":
				follow the submit rule;
				next;
			if keychar in lower case matches the text "flee":
				follow the flee rule;
				next;
			say "Invalid action.";

this is the monster combat mode rule:
	choose row monster from table of random critters;
	let searchparam be "default";
	let foundcom be 0;
	if there is no altcombat in row monster of Table of Random Critters:
		now searchparam is "default";	[no change]
	otherwise if altcombat entry is "" or altcombat entry is "default" or altcombat entry is " ":
		now searchparam is "default";	[no change]
	otherwise:
		let searchparam be altcombat entry;
	repeat with y running from 1 to number of filled rows in table of Critter Combat:
		choose row y in table of Critter Combat;
		if name entry is searchparam:
			now monstercom is y;
			now foundcom is 1;
			break;
	if foundcom is 0:			[if that combat mode cannot be found, it reverts to default]
		say "Error: Combat mode '[searchparam]' could not be found.  Reverting to default.";
		wait for any key;
		repeat with y running from 1 to number of filled rows in table of Critter Combat:
			choose row y in table of Critter Combat;
			if name entry is "default":
				now monstercom is y;
				break;

to say combat abort:
	now combat abort is 1;


Chapter 2 - Player Attack

This is the player attack rule:
	choose row monster from the table of random critters;
	let the attack bonus be (( the dexterity of the player minus 10 ) divided by 2) plus level of the player;
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
		if the combat bonus is greater than 10:
			now combat bonus is 10;
		otherwise if the combat bonus is less than -10:
			now combat bonus is -10;
	let the roll be a random number from 1 to 20;
	say "You roll 1d20([roll])+[combat bonus] -- [roll plus combat bonus]: ";
	if the roll plus the combat bonus is greater than 8:
		let wmstrike be 0;
		let z be 0;
		let dam be ( weapon damage of the player times ( a random number from 80 to ( 120 + level of player ) ) ) divided by 100;
		if weapon object of player is journal:		[unarmed combat]
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
				if z is 0:		[creature not listed]
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
			let numnum be level of player + ( ( intelligence of player - 10 ) / 2 ) + 105;
			now dam is ( ( dam times a random number from 105 to numnum ) divided by 100 );
		if "Powerful" is listed in feats of player:
			now dam is ( ( dam times a random number from 105 to 125 ) divided by 100 );
		if "Mayhem" is listed in feats of player:
			let numnum be ( ( level of player * 5 ) / 2 ) + 100;
			now dam is ( ( dam times a random number from 105 to numnum ) divided by 100 );
		if weapon type of player is "Melee":
			increase dam by (( the strength of the player minus 10 ) divided by 2);
		if weapon type of player is "Ranged":
			increase dam by (( the Perception of the player minus 10 ) divided by 2);
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
		if a random chance of 4 in 20 succeeds and "Tail Strike" is listed in feats of player:
			if tailname of player is listed in infections of Tailweapon:
				let z be 0;
				repeat with y running from 1 to number of filled rows in table of random critters:
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
		if a random chance of 4 in 20 succeeds and "Cock Slap" is listed in feats of player and cock length of player >= 12:
			let dammy be 0;
			let z be cock length of player + ( 2 * cocks of player ) - 12;
			now dammy is ( square root of ( 2 * z ) ) + 1;
			if dammy > 8, now dammy is 8;
			increase dammy by a random number between 0 and 1;
			if cocks of player >= 3, increase dammy by a random number between 0 and 1;
			say "[line break]You give your opponent a hard swat with your [cock size desc of player] wang[if cocks of player > 1]s[end if] for [dammy] additional damage!";
			increase dam by dammy;
		if a random chance of 4 in 20 succeeds and "Ball Crush" is listed in feats of player and cock width of player >= 16:
			let dammy be 0;
			now dammy is ( square root of ( 2 * ( cock width of player - 13 ) ) ) + 1;
			if dammy > 8, now dammy is 8;
			increase dammy by a random number between 0 and 1;
			say "[line break]You tackle your opponent, slamming your [ball size] orbs onto their [one of]head[or]body[or]face[or]crotch[in random order] for [dammy] additional damage!";
			increase dam by dammy;
		if a random chance of 4 in 20 succeeds and "Boob Smother" is listed in feats of player and breast size of player > 2 and ( breast size of player + ( breasts of player / 2 ) ) >= 7:
			let dammy be 0;
			let z be breast size of player + breasts of player;
			now dammy is square root of ( z - 1 ) + 1;
			if dammy > 7, now dammy is 7;
			increase dammy by a random number between 0 and 1;
			if breasts of player > 4, increase dammy by a random number between 0 and 1;
			say "[line break]Grabbing your opponent, you smoosh them into your ample bosom, smothering and crushing them with your tits for [dammy] additional damage!";
			increase dam by dammy;
		if a random chance of 5 in 20 succeeds and "Spirited Youth" is listed in feats of player:
			let y be a random number from 4 to 6;
			say "Your child [one of]lashes out[or]assists with a sudden strike[or]takes advantage of a distraction[or]launches a surprise attack[or]descends from out of nowhere[at random] at [name entry] for [y] damage!";
			increase dam by y;
		otherwise if a random chance of 1 in 20 succeeds and "Youthful Tides" is listed in feats of player:
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
	if player is not lonely and a random chance of 1 in 20 succeeds and "The Horde" is listed in feats of player:
		say "[line break]";
		say "Your many pets, always close by, come pouring out en masse and swarm your enemy, battering the [name entry] from all sides!";
		say "[line break]";
		repeat with z running through tamed pets:
			now attack bonus is ( ( dexterity of z minus 10 ) divided by 2 ) plus level of z;
			let the combat bonus be attack bonus minus defense bonus;
			if hardmode is true and combat bonus is greater than 10:
				now combat bonus is 10;
			now roll is a random number from 1 to 20;
			if roll plus the combat bonus is greater than 8:
				let dam be ( weapon damage of z times a random number from 80 to 120 ) divided by 100;
				say "[z]: [assault of z] [dam] damage inflicted!";
				decrease monsterhp by dam;
			otherwise:
				say "Your [z] misses!";
	otherwise if player is not lonely and a random chance of 1 in 5 succeeds:
		now attack bonus is ( ( dexterity of companion of player minus 10 ) divided by 2 ) plus level of companion of player;
		let the combat bonus be attack bonus minus defense bonus;
		if hardmode is true and combat bonus is greater than 10:
			now combat bonus is 10;
		now roll is a random number from 1 to 20;
		if roll plus the combat bonus is greater than 8:
			let dam be ( weapon damage of companion of player times a random number from 80 to 120 ) divided by 100;
			say "[assault of companion of player] [dam] damage inflicted!";
			decrease monsterhp by dam;
		otherwise:
			say "Your [companion of player] misses!";
	say "[line break]";
	if monsterhp is greater than 0:
		if before combat is 0:
			choose row monstercom from table of Critter Combat;
			if there is a continuous in row monstercom of the table of Critter Combat:
				follow the continuous entry;
			if combat abort is 0, follow the combat entry;
	otherwise:
		win;


Chapter 2 - Item Use

This is the combat item rule:
	now battleitem is 0;
	blank out the whole of table of combat items;
	let X be 1;
	repeat with Q running through invent of player:
		let z be journal;
		repeat with y running through grab objects:
			if q matches the regular expression printed name of y, case insensitively:
				let z be y;
				break;
		if z is not fast, next;
		choose a blank row in table of combat items;
		now title entry is Q;
		now toggle entry is combat item process rule;
	if there is no title in row 1 of table of combat items:
		say "You have no combat ready items to use!";
		wait for any key;
	otherwise:
		while 1 is 1:
			if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
			repeat with y running from 1 to number of filled rows in table of combat items:
				choose row y from the table of combat items;
				say "[link][y] - [title entry][as][y][end link][line break]";
			say "[link]0 - ABORT[as]0[end link][line break]";
			say "Type the number corresponding to the item to be used> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of combat items:
				now current menu selection is calcnumber;
				follow the combat item process rule;
				break;
			otherwise if playerinput matches "0":	[do not use calcnumber, as non-numbers will return 0]
				say "Selection aborted.";
				continue the action;
			otherwise:
				say "Invalid Choice.";

this is the combat item process rule:
	decrease the menu depth by 1;
	choose row Current Menu Selection in table of combat items;
	let nam be title entry;
	repeat with N running from 1 to the number of rows in the table of game objects:
		choose row N in the table of game objects;
		if name entry is nam:
			process object entry;
			break;
	if battleitem is 0 and monsterhp is greater than 0:
		wait for any key;
		choose row monstercom from table of Critter Combat;
		if there is a continuous in row monstercom of the table of Critter Combat:
			follow the continuous entry;
		if combat abort is 0, follow the combat entry;
	

Chapter 3 - Combat Pass

This is the combat pass rule:
	choose row monstercom from table of Critter Combat;
	if there is a continuous in row monstercom of the table of Critter Combat:
		follow the continuous entry;
	if combat abort is 0, follow the combat entry;


Chapter 4 - Submit

This is the submit rule:
	choose row monster from the table of random critters;
	let temp be the hp of the player;
	Lose;
	if "Submissive" is listed in feats of the player, increase the XP of the player by 2;
	if "Know Thyself" is listed in feats of player and (bodyname of player is name entry or facename of player is name entry), increase the XP of the player by 1;
	if "Kinky" is listed in feats of the player, increase the morale of the player by 6;


Chapter 5 - Flee

This is the flee rule:
	choose row monster from the table of random critters;
	let the attack bonus be (( the dexterity of the player plus the intelligence of the player minus 20 ) divided by 2) plus level of the player;
	let the defense bonus be (( the dex entry minus 10 ) divided by 2) plus lev entry;
	let the combat bonus be attack bonus minus defense bonus;
	if "Gas Cloud" is listed in feats of player and gascloud is 0:
		if tailname of player is "Skunk" or tailname of player is "Skunk Girl" or tailname of player is "Skunk Taur":
			say "You give your striped tail a meaningful wave at your enemy before releasing your spray and trying to escape.";
			increase gascloud by 5;
		if tailname of player is "Squid":
			say "Turning around, you spray an inky cloud at your enemy before trying to escape.";
			increase gascloud by 5;
		otherwise:
			say "You release your cover cloud and try to escape.";
			increase gascloud by 3;
		increase combat bonus by gascloud;
	if hardmode is true and the combat bonus is less than -10:
		now the combat bonus is -10;
	let the roll be a random number from 1 to 20;
	say "You roll 1d20([roll])+[combat bonus] -- [roll plus combat bonus]: ";
	if the roll plus the combat bonus is greater than 8:
		say "You manage to evade [name entry] and slip back into the city.";
		now combat abort is 1;
	otherwise:
		say "You fail to get away.";
		choose row monstercom from table of Critter Combat;
		if there is a continuous in row monstercom of the table of Critter Combat:
			follow the continuous entry;
		if combat abort is 0, follow the combat entry;


Section 3 - Monster Counterattack

this is the retaliation rule:
	retaliate;

Retaliating is an action applying to nothing.

to retaliate:
	choose row monstercom from table of Critter Combat;
	if there is a preattack in row monstercom of the table of Critter Combat:
		follow the preattack entry;
	now avoidance is 0;
	say "[avoidancecheck]";
	if gascloud > 0, decrease gascloud by 1;
	if avoidance is 1:
		say "";
	otherwise:
		choose row monster from the table of random critters;
		let the defense bonus be (( the dexterity of the player minus 10 ) divided by 2) plus level of the player;
		let the attack bonus be (( the dex entry minus 10 ) divided by 2) plus lev entry;
		let the combat bonus be attack bonus minus defense bonus;
		if "Flash" is listed in feats of player and a random chance of 3 in 20 succeeds:
			say "Calling upon your hidden power, you flash brightly with light, filling the [Name Entry]'s eyes with spots.";
			decrease combat bonus by 3;
		if hardmode is true and the combat bonus is less than -10:
			now the combat bonus is -10;
		if autoattackmode is 3 and combat bonus < -6, now combat bonus is -6;	[***if autopass, min. 25% chance to hit]
		let the roll be a random number from 1 to 20;
		say "[name entry] rolls 1d20([roll])+[combat bonus] -- [roll plus combat bonus]: ";
		if the roll plus the combat bonus is greater than 8:
			now altattackmade is 0;
			choose row monstercom from table of Critter Combat;
			if there is a altattack1 in row monstercom of the table of Critter Combat and there is a alt1chance in row monstercom of the table of Critter Combat:
				if a random chance of ( alt1chance in row monstercom of Table of Critter Combat ) in 100 succeeds:
					now altattackmade is 1;
					follow the altattack1 entry;
				otherwise if there is a altattack2 in row monstercom of the table of Critter Combat and there is a alt2chance in row monstercom of the table of Critter Combat:
					if a random chance of ( alt2chance in row monstercom of Table of Critter Combat ) in 100 succeeds:
						now altattackmade is 1;
						follow the altattack2 entry;
			if altattackmade is 0:
				standardhit;
			choose row monstercom from table of Critter Combat;
			if there is a postattack in row monstercom of the table of Critter Combat:
				follow the postattack entry;
		otherwise:
			choose row monstercom from table of Critter Combat;
			if there is a monmiss in row monstercom of the table of Critter Combat:
				follow the monmiss entry;
			if missskip is 0:
				choose row monster from the table of random critters;
				say "[Name Entry] misses!";
	if hp of the player is greater than 0:
		wait for any key;
	otherwise:
		Lose;
	rule succeeds;

to standardhit:
	choose row monster from the table of random critters;
	let dam be ( wdam entry times a random number from 80 to 120 ) divided by 100;
	if hardmode is true and a random chance of 1 in 10 succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	say "[Attack entry] You take [dam] damage!";
	let absorb be 0;
	if "Toughened" is listed in feats of player:
		increase absorb by dam divided by 5;
	repeat with x running through equipped equipment:
		increase absorb by ac of x;
	if absorb is greater than dam:
		now absorb is dam;
	if absorb is greater than 0:
		say "You prevent [absorb] damage!";
	decrease hp of the player by dam;
	increase hp of player by absorb;
	follow the player injury rule;
	say "You are [descr].";


to say avoidancecheck:					[collection of all enemy attack avoidance checks]
	choose row monster from the table of random critters;
	if "Dazzle" is listed in feats of player and a random chance of 2 in 20 succeeds:
		say "You bring forth a dazzling pattern of lights, momentarily entrancing your enemy and causing their attack to falter.";
		say "[Name Entry] misses!";
		now avoidance is 1;
	otherwise if weapon object of player is bo staff:		[defensive combat]
		let boblock be 5;
		if "Martial Artist" is listed in feats of player, increase boblock by 3;
		if "Black Belt" is listed in feats of player, increase boblock by 4;
		if "Weaponsmaster" is listed in feats of player, increase boblock by 6;
		let numnum be ( (strength of player + dexterity of player + stamina of player - 36 ) / 3 );
		if numnum > 0, increase boblock by numnum;
		increase boblock by gascloud;
		if boblock > a random number between 0 and 100:
			say "[one of]Using your bo staff, you are able to deflect the enemy's blow, preventing any damage.[or]Making a skillful vault with your staff, you leap out of the enemy's path and thereby avoid their attack.[or]Just as your opponent is about to strike, you sweep with your staff, causing them to stumble.[or]Taking advantage of your weapon's long reach, you keep your enemy at bay as you prepare to make your next move.[at random]";
			now avoidance is 1;
	otherwise if "Black Belt" is listed in feats of player and a random chance of 1 in 10 succeeds:
		say "You nimbly avoid the attack at the last moment!";
		now avoidance is 1;


Section 4 - Loss and Victory

to win:
	choose row monster from table of random critters;
	follow the cock descr rule;
	follow the cunt descr rule;
	follow the breast descr rule;
	let ok be 1;
	if "Control Freak" is listed in feats of player:
		say "Do you want to perform after combat scene?";
		if the player consents:
			now ok is 1;
		otherwise:
			now ok is 0;
	if ok is 1, say "[defeated entry]";
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
	let yy be ( ( ( perception of player - 10 ) / 2 ) * 3 );	[minor perception bonus to looting, maxed at 30 PER]
	if yy > 30, now yy is 30;
	if lootchance entry > 50, now yy is ( yy * ( 100 - lootchance entry ) ) divided by 100;
	if lootchance entry <= 50, now yy is ( yy * lootchance entry ) divided by 100;
	if a random chance of ( lootchance entry + yy ) in 100 succeeds:
		say "You gain 1 x [loot entry]!";
		add loot entry to invent of player;
	if "Magpie Eyes" is listed in feats of player and lootchance entry is greater than 0:
		decrease lootchance entry by z;
	vialchance (name entry);
	let reward be lev entry * 2;
[	if lev entry is greater than 4:
		now reward is reward * 2;
	if lev entry is greater than 8:
		now reward is reward * 2;	]
	if lev entry > 2, increase reward by 1;
	if lev entry > 4, increase reward by ( lev entry / 4 );
	if lev entry > 8, increase reward by ( lev entry / 3 );
	increase freecred by reward;
	say "[line break]A soft chime informs you that you have received [reward] freecreds, and now have [freecred] creds.";
	if ok is 1, wait for any key;
	clear the screen and hyperlink list;
	now automaticcombatcheck is 0; [combat is over, reset to zero]
	rule succeeds;

To lose:
	choose row monster from the table of random critters;
	follow the cock descr rule;
	follow the cunt descr rule;
	follow the breast descr rule;
	now lost is 1;
	say "[victory entry][line break]";
	if scenario is "Researcher":
		say "";
	otherwise:
		infect;
	if hp of player is less than 1, now hp of player is 1;
	now combat abort is 1;
	increase the XP of the player by lev entry divided by two;
	if "Know Thyself" is listed in feats of player and (bodyname of player is name entry or facename of player is name entry), increase the XP of the player by 1;
	decrease the score by 1;
	decrease the morale of the player by 3;
	now automaticcombatcheck is 0; [combat is over, reset to zero]


Section 5 - Critter Combat

[ "Oh my God!  Who gave them super-powers?!" ]

Chapter 0 - Definition of entries

[ DEFINITIONS OF ENTRIES:
name:			The name of the rule.  Must be matched exactly by the altcombat entry of the critter.
combat:		This is the basic rule to be followed when a monster counter-attacks, preceeded only by the continous entry and _replacing_ the
			standard retaliation rule entirely.  There should always be a rule in this field.
preattack:		This rule is followed at the very start of the 'to retaliate' feature, but can be called by other combat rules as well.  It is meant
			for effects that take place before a normal attack and occurs _before_ a player's avoidance check.
postattack:		This rule is followed at the very end of the 'to retaliate' feature, but again can be called by other combat rules as well.  It is
			meant for effects that take place after a normal attack.  This could be as simple as bragging, to poisoining a player (to be managed
			by a continuous rule) and so on.
altattack1:		This is an alternate, dexterity-based attack the creature will sometimes use.  These can be attacks w/effects, different damage,
			armour piercing, etc...
alt1chance:		The likelihood the first alternate attack will be chosen.
altattack2:		This is another alternate, dexterity-based attack the creature will sometimes use.
alt2chance:		The likelihood the second alternate attack will be chosen (if the first is not).  If neither alternate occurs, it defaults to normal
			methodology.
monmiss:		This rule replaces the regular miss statement and may contain necessary code for counting/resetting/etc...
continuous:		This rule takes place before any and all combat rules.  It is much like the pre-attack, but happens regardless of the attack method
			being used.  Good for enemy regen, player hp drain, player libido boosting, etc... that happens every turn.

While most anything can be created by placing it all in the combat rule, that requires duplication of all the code whereas using the subsets would save a lot of hassle and would ensure basic combat adaptations could more accurately be carried over (new player feats relating to defence, for example).  As well, with the rules broken out, they can more easily be repeated in the table in other combinations.  The 'retaliation rule' is the standard combat option, designed to call all the others at the appropriate time, except for the continuous entry (which is run independantly before any combat rule).  A combat rule may branch between picking to do the 'retaliate' action as normal or doing something special instead (like a non-dexterity attack).

As there are all rules, they need not be resticted for one creature.  Several creatures could use the same 'bearhug rule' with their own stats in effect.

A note on alternates: This is the 'damage' portion of a dexterity strike replaced.  If you need non-dexterity attacks, go to the combat entry.  If you need more than 2 alternates, you can break them up as sub-selections of alt1 and alt2 or just make a combat entry for it all and be done with it.

]


Chapter 1 - The Table of Critter Combat

Table of Critter Combat
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)
"default"	retaliation rule	--	--	--	--	--	--	--	--
"aura1"	retaliation rule	--	--	--	--	--	--	--	aura1 rule
"bearhugger"	retaliation rule	--	--	bearhug rule	20	--	--	--	--
"braggart"	retaliation rule	--	brag rule	--	--	--	--	--	--
"powerstrike1"	retaliation rule	ps1charge rule	--	ps1attack rule	100	--	--	ps1miss rule	--


Chapter 2 - Sample/Basic Rules

Part 1 - Continuous Effect Example - Aura1

this is the aura1 rule:		[weak aura]
	choose row monster from table of random critters;
	say "     The [name entry]'s aura of energy continues to sap your strength... [run paragraph on]";
	let bonus be ( Stamina of player minus 10 ) divided by 2;
	let dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] vs 8 and score [dice plus bonus]: ";
	if dice + bonus >= 8:
		say "You manage to resist the creature's power and press on.";
		say "[line break]";
	otherwise:
		say "You suffer [ ( lev entry + 4 ) / 4 ] damage.";
		say "[line break]";
		if hp of player < 1:
			lose;

Part 2 - Alternate Attack Example - Bearhug

this is the bearhug rule:
	choose row monster from table of random critters;
	say "The [name entry] manages to grab you in its powerful arms and holds you in a vice-like bear hug!  You will need to break free before it squeezes the fight right out of you.";
	let freedom be 0;
	while hp of player > 0 and freedom is 0:
		let dam be ( wdam entry times a random number from 80 to 120 ) divided by 100;
		let absorb be 0;
		if "Toughened" is listed in feats of player:
			increase absorb by dam divided by 5;
		[ignores AC dampened damage]
		decrease hp of player by ( dam - absorb );
		if absorb is 0:
			say "You suffer [dam] damage from its crushing grip!  ([hp of player]/[maxhp of player] hp)[line break]";
		otherwise:
			say "You suffer [dam - absorb] ([dam] - [absorb]) damage from its crushing grip!  ([hp of player]/[maxhp of player] hp)[line break]";
		if hp of player > 0:
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			let bonus be ( Strength of player - str entry + level of player - lev entry ) / 2;  [level equally important as str]
			let dice be a random number from 1 to 20;
			if bonus > 8, now bonus is 8;		[min 10% chance either way]
			if bonus < -8, now bonus is -8;
			say "You roll 1d20([dice])+[bonus] vs 11 and score [dice plus bonus]: ";
			if dice + bonus >= 11:
				say "You manage to fight your way out of your opponent's grip.";
				now freedom is 1;
			otherwise:
				say "You struggle, but cannot break free and the creature keeps it up.";

Part 3 - Post-Attack Example - Brag

this is the brag rule:
	choose row monster from table of random critters;
	say "[one of]'Woo!  Take that!' [or]'Aww yeah!' [or]'Like a boss, baby!' [or]'Po feels embarrassed for you,' [at random][one of]your enemy chuckles[or]your opponent gloats[or]the [name entry] laughs derisively[at random].";
	if monsterhp < hp entry, increase monsterhp by 1;

Part 4 - Pre/Post/Miss Combo Example - Power Strike 1

[Any creature that undergoes stat shifts needs to reset either during its description before each fight or (if possible) before that fight ends, like this.  Trying to reset them within the win/lose scenes is not recommended, as the use of 'Control Freak' feat will cause them to be skipped.
Warning: if an alternate attack before this one could break the fight and somehow prevent the postattack entry from running, you must provide a reset there as well.  It's best to have this reset in the description to cover all your bases.]

this is the ps1charge rule:
	choose row monster from table of random critters;
	if a random chance of 1 in 5 succeeds:
		say "The creature strikes an impressive DBZ-pose and roars, preparing to show you its true power!";
		increase wdam entry by 5;
		decrease dex entry by 2;
		now monsterpowerup is 1;

this is the ps1attack rule:
	choose row monster from table of random critters;
	if monsterpowerup is 0:
		standardhit;			[if not a charged attack, act as normal]
	if monsterpowerup is 1:
		say "The enhanced attack strikes!  [run paragraph on]";
		standardhit;			[standard attack w/enhanced stats]
		decrease wdam entry by 5;	[then restore stats to normal]
		increase dex entry by 2;
		now monsterpowerup is 0;

this is the ps1miss rule:
	choose row monster from table of random critters;
	if monsterpowerup is 1:
		say "Your opponent's ultimate attack fails as they miss!";
		decrease wdam entry by 5;	[restore stats to normal]
		increase dex entry by 2;
		now monsterpowerup is 0;
		now missskip is 1;		[tells the game to skip the regular miss message]


Alt Combat ends here.