Version 2 of Alt Combat by Stripes begins here.
[Version 2.8 - Adding Mugger looting feat]

"Oh my God!  Who gave them super-powers?!"

Section 0 - Basic variables

monstercom is a number that varies.		[ This represents the row on the table of Critter Combat to be used in this fight. ]
altattackmade is a number that varies.	[ This tracks whether an alternate attack what chosen. ]
combat abort is a number that varies.	[ 0 = combat continues  /  1 = combat will be aborted. ]
ktspeciesbonus is a number that varies.	[ Applies a species bonus while using the 'Know Thyself' feat. ]
ktcockmatch is a truth state that varies.
ktcockmatch is usually false.           [ Checks for matching player cock while using the 'Know Thyself' feat. ]
automaticcombatcheck is a number that varies. [ Used to mark if combat actions are not being chosen by the player. ]
inafight is a number that varies.		[ Used to detect if player is in a fight (item use) ]
skipretaliate is a truth state that varies. [Used to detect if monster will be denied a chance to retaliate.]
avoidance is a number that varies.		[ Used to track if a player automatically avoids an attack. ]
gascloud is a number that varies.		[ Tracks the ongoing strength of a player's ambient gas cloud. ]
monsterhp is a number that varies.		[ Remaining monster hit points. ]
monsterpowerup is a number that varies.	[ Used to track if a monster got a powerup that needs to be monitored or later removed. ]
missskip is a number that varies.		[ Used to indicate if the default monster miss message should be omitted. ]
monsterhit is a truth state that varies.	[ Used to denote if the monster hit ]
bonusattack is a number that varies.	[ Used to track how many bonus attacks a player's earned in a round. ]
chargeup is a number that varies.		[ Used to track an attack that charges across several turns. ]
fightoutcome is a number that varies.	[ Used to track the different outcomes of a fight. ]
absorb is a number that varies.           [ Used to track the damage absorbed by armour/shield/feats. ]
damagein is a number that varies.		[ Used to pass the damage to the various aborbancy subroutines. ]
damageout is a number that varies.		[ Used to receive the adjusted damage after using one of the absorbancy subroutines. ]
duckyactive is a truth state that varies.	[ Used to mark if the ducky's last-minute save has been used this turn. ]
velossaved is a truth state that varies.	[ Used to mark if Velos's last-minute save has been used this turn. ]
velossavedyes is a truth state that varies. [ Used to mark if Velos has ever used his last-minute save.]
plhitbonus is a number that varies.		[ Used to total the player's special hit bonuses. ]
pldodgebonus is a number that varies.	[ Used to total the player's special dodge bonuses. ]
pldamagebonus is a number that varies.	[ Used to total the player's special damage bonuses. ]
plfleebonus is a number that varies.	[ Used to total the player's special flee bonuses. ]
plmindbonus is a number that varies.	[ Used to total the player's special mental/will bonuses. ]
pethitbonus is a number that varies.	[ Used to total the player's pet's special hit bonuses. ]
monhitbonus is a number that varies.	[ Used to total the enemy's special hit bonuses. ]
mondodgebonus is a number that varies.	[ Used to total the enemy's special dodge bonuses. ]
monmindbonus is a number that varies.	[ Used to total the enemy's special mental/will bonuses. ]
playerpoison is a number that varies.	[ Used to track how poisoned the player may be. ]
monsterpoison is a number that varies.	[ Used to track how poisoned the monster may be (not currently in use). ]


[		fightoutcome			]
[ 100 *	starting value			]
[							]
[ 	10 - 19 Plaver Victory			]
[ 10 *	victory				]
[ 11		v. (submit to player master)	]
[ 13		v. (player vores foe)			]
[ 14		v. (player ub's foe)			]
[ 18		v. (monster flee)			]
[ 19		neutral peace			]
[							]
[	20 - 29 Player Loss			]
[ 20 *	loss (dmg)				]
[ 21 *	loss (libido)			]
[ 22 *	loss (submit)			]
[ 23		loss (vored)			]
[							]
[	30+ Player Flees				]
[ 30 *	player flee				]
[ NOTES: Alt-Combat will only award the basic values marked with an asterisk.						]
[ Most events should only concern themselves with those results, often lumping all losses into one group.	]


Section 1 - Prepping for Combat

to prepforfight:		[Do all the pre-fight setup, reset values, and display the monster description]
	choose row monster from table of random critters;
	now combat abort is 0;
	now skipretaliate is false;
	if lev entry is less than level of player and hardmode is true:
		hardmodeboost;
	now peppereyes is 0;
	now eprodused is false;
	now monsterhp is hp entry;
	now gascloud is 0;
	now playerpoison is 0;
	now monsterpoison is 0;
	now lost is 0;
	now plhitbonus is 0;
	now pldodgebonus is 0;
	now pldamagebonus is 0;
	now plfleebonus is 0;
	now plmindbonus is 0;
	now pethitbonus is 0;
	now monhitbonus is 0;
	now mondodgebonus is 0;
	now monmindbonus is 0;
	now ktspeciesbonus is 0;
	now ktcockmatch is false;
	if weapon object of player is journal:
		if "Black Belt" is listed in feats of player, increase plhitbonus by 1;
	otherwise:
		increase plhitbonus by hitbonus of weapon object of player;
	repeat with x running through equipped equipment:
		increase pldodgebonus by dodgebonus of x;
		increase pldamagebonus by damagebonus of x;
	if weapon object of player is unwieldy:
		decrease plhitbonus by the absolute value of ( scalevalue of player - objsize of weapon object of player) to the nearest whole number;
	if weapon object of player is bo staff:
		if "Martial Artist" is listed in feats of player, increase plhitbonus by 1;
		if "Black Belt" is listed in feats of player, increase plhitbonus by 1;
	if weapon object of player is chair and name entry is "Wrestling Wolf":
		increase plhitbonus by 2;
	if weapon object of player is riding crop and ( bodyname of player is "Latex Mistress" or player is dominant ):
		increase plhitbonus by 2;
	if weapon object of player is journal:
		if "Black Belt" is listed in feats of player, increase plhitbonus by 1;
	if "Know Thyself" is listed in feats of player:
		let mmb be 0;
		if bodyname of player is name entry:
			increase ktspeciesbonus by 3;
			increase mmb by 1;
		if facename of player is name entry:
			increase ktspeciesbonus by 2;
			increase mmb by 1;
		if cockname of player is name entry:
			increase mmb by 2;
			now ktcockmatch is true;
		if ktspeciesbonus > 4, now ktspeciesbonus is 4;
		increase plhitbonus by ktspeciesbonus;
		if mmb > 2, now mmb is 2;
		decrease plmindbonus by mmb;		[increased vulnerability to mental/allure attacks]
	if "Weak Psyche" is listed in feats of player:
		decrease plmindbonus by 1;
	otherwise if "Strong Psyche" is listed in feats of player:
		increase plmindbonus by 1;
	if companion of player is mouse girl:
		increase plmindbonus by 2;
		if name entry is "Mental Mouse", decrease plmindbonus by 1;
	if hp of Velos > 2 and scalevalue of player < 3:
		decrease plfleebonus by 5 - ( scalevalue of player * 2 );
	if ducky swimring is equipped:
		now duckyactive is true;
	if mindshield helmet is equipped:
		increase plmindbonus by 3;
	now fightoutcome is 100;
	let nam be name entry;
	let typ be type entry;
	let found be 0;
	repeat through the table of infection graphics:
		if title entry is nam:
			now found is 1;
			project icon entry;
			break;
	if found is 0:
		repeat through the table of infection graphics:
			if title entry matches the text typ:
				now found is 1;
				project icon entry;
				break;
	choose row monster from table of random critters;
	say "You run into a [name entry].[line break][desc entry][line break]";


Section 2 - Combat

Chapter 0 - Combat Menu

To Combat Menu:
	follow the cock descr rule;
	follow the cunt descr rule;
	follow the breast descr rule;
	now inafight is 1;
	now automaticcombatcheck is 0; [sets to zero as combat starts, just in case]
	follow the monster combat mode rule;
	if hp of player < 1 and combat abort is 0:
		say "     You are too injured to resist the creature.";
		now fightoutcome is 20;
		lose;
	otherwise if libido of player >= 110 and combat abort is 0:
		say "     You are too aroused to consider resisting the creature.";
		now fightoutcome is 21;
		lose;
	while hp of player is greater than 0 and monsterhp is greater than 0:
		if combat abort is 1:
			now combat abort is 0;
			[wait for any key;
			clear the screen and hyperlink list;]
			AttemptToWaitAndClearHyper;
			continue the action;
		if weakwilled is true and a random chance of ( ( libido of player + 20 ) / 4 ) in 1000 succeeds:
			[chance to submit in combat if you have the Weak-Willed flaw, feel free to adjust odds]
			say "[line break]Your [one of]weak-willed[or]submissive[or]easily-influenced[as decreasingly likely outcomes] nature gets the better of you and you offer yourself to your opponent."; [text telling player why they lost the fight]
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			follow the submit rule;
			next;
		if autoattackmode is 1: [always attacks in combat, no player input needed]
			now automaticcombatcheck is 1;
			follow the player attack rule;
			next;
		otherwise if autoattackmode is 3: [always pass in combat, no player input needed]
			now automaticcombatcheck is 1;
			follow the combat pass rule;
			next;
		otherwise if autoattackmode is 4: [always flees in combat, no player input needed]
			now automaticcombatcheck is 1;
			follow the flee rule;
			next;
		otherwise if autoattackmode is 5: [always submit in combat, no player input needed]
			now automaticcombatcheck is 1;
			follow the submit rule;
			next;
		otherwise:
			if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
			say "Choose your action numerically or use: [bold type]A[roman type]ttack, [bold type]I[roman type]tem, [bold type]P[roman type]ass, [bold type]F[roman type]lee, [bold type]S[roman type]ubmit, [bold type]T[roman type]hrow the fight[line break]";
			let combatopt be 0;
			repeat through table of basic combat:
				increase combatopt by 1;
				say "[bold type][combatopt][roman type] - [link][title entry][as][combatopt][end link][line break][run paragraph on]";
			say "Your HP: [hp of player]/[maxhp of player]  Libido: [libido of player]      [name in row monster of table of random critters] HP: [monsterhp]/[hp in row monster of table of random critters] >[run paragraph on]";
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":
				now k is the chosen letter;
				translate k;
				if the player's command matches "[number]":
					now keychar is "[number understood]";
			if keychar in lower case exactly matches the text " ":
				say "[line break]";
				follow the player attack rule;
				next;
			if keychar in lower case exactly matches the text "return":
				say "[line break]";
				follow the player attack rule;
				next;
			if keychar in lower case exactly matches the text "a" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return":
				say "[line break]";
				follow the player attack rule;
				next;
			if keychar in lower case exactly matches the text "i" or keychar in lower case exactly matches the text "2":
				say "[line break]";
				follow the combat item rule;
				next;
			if keychar in lower case exactly matches the text "p" or keychar in lower case exactly matches the text "3":
				say "[line break]";
				follow the combat pass rule;
				next;
			if keychar in lower case exactly matches the text "f" or keychar in lower case exactly matches the text "4":
				say "[line break]";
				follow the flee rule;
				next;
			if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "5":
				say "[line break]";
				follow the submit rule;
				next;
			if keychar in lower case exactly matches the text "t" or keychar in lower case exactly matches the text "6":
				say "[line break]";
				follow the throw combat rule;
				next;
			if keychar in lower case matches the text "attack":
				say "[line break]";
				follow the player attack rule;
				next;
			if keychar in lower case matches the text "item":
				say "[line break]";
				follow the combat item rule;
				next;
			if keychar in lower case matches the text "pass":
				say "[line break]";
				follow the combat pass rule;
				next;
			if keychar in lower case matches the text "submit":
				say "[line break]";
				follow the submit rule;
				next;
			if keychar in lower case matches the text "flee":
				say "[line break]";
				follow the flee rule;
				next;
			if keychar in lower case matches the text "throw":
				say "[line break]";
				follow the throw combat rule;
				next;
			if keychar in lower case matches the text "throw the fight":
				say "[line break]";
				follow the throw combat rule;
				next;
			if keychar in lower case matches the text "throw fight":
				say "[line break]";
				follow the throw combat rule;
				next;
			say "Invalid action.";

this is the monster combat mode rule:
	choose row monster from table of random critters;
	let searchparam be "default";
	let foundcom be 0;
	if there is no altcombat in row monster of Table of Random Critters:
		now searchparam is "default";	[no change]
	otherwise if altcombat entry is "" or altcombat entry is "default" or altcombat entry is " " or altcombat entry is empty:
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
	let petchance be 0;
	if the player is not lonely or number of entries in childrenfaces is greater than 0:
		let petchance be -50;
		increase petchance by ( charisma of player * 250 ) / 12;
		if petchance > 450, now petchance is 450;
		if "Good Teacher" is listed in feats of player, increase petchance by 20;
		if "Ringmaster" is listed in feats of player, increase petchance by 20;
		increase petchance by square root of ( 30 * charisma of player );
		increase petchance by peppereyes * 15;
		if petchance > 600, now petchance is 600;
	let the attack bonus be dexterity of player + ( level of player * 2 ) + plhitbonus - 10;
	let the defense bonus be dex entry + ( lev entry * 2 ) + mondodgebonus - 10;
	let the combat bonus be attack bonus - defense bonus;
	if ktcockmatch is true:		[That's what you get for thinking with your crotch.]
		increase libido of player by a random number from 0 to 2;
	if hardmode is true:
		if the combat bonus is greater than 16:
			now combat bonus is 16;
		otherwise if the combat bonus is less than -25:
			now combat bonus is -25;
	otherwise:
		if the combat bonus is greater than 19:
			now combat bonus is 19;
		otherwise if the combat bonus is less than -22:
			now combat bonus is -22;
	let the roll be a random number from 1 to 50;
	say "You roll 1d50([roll])+[combat bonus] -- [roll plus combat bonus]: ";
	if the roll plus the combat bonus > 20:
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
		if weapon object of player is bo staff:
			if "Martial Artist" is listed in feats of player and a random chance of 2 in 3 succeeds:
				increase dam by 1;
			if "Black Belt" is listed in feats of player and a random chance of 2 in 3 succeeds:
				now dam is ( dam times a random number from 105 to 125 ) divided by 100;
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
			increase dam by pldamagebonus;
		if weapon type of player is "Ranged":
			increase dam by (( the Perception of the player minus 10 ) divided by 2);
		if a random chance of the morale of the player in 200 succeeds:
			say "Filled with sudden motivation, your attack scores particularly well!  ";
			increase dam by dam;
		if wmstrike is 1:			[Weaponsmaster used]
			say "[one of]You skillfully use[or]You attack precisely with[or]Using your weapons knowledge, you attack with[or]Like the veteran fighter you are, you strike with[or]You strike with[or]You attack with[at random] [weapon of player], hitting [name entry] for [special-style-2][dam][roman type] damage!";
		otherwise if weapon object of player is journal:
			if z is not 0:	[Natural Armaments used]
				say "[one of]You strike using your unnatural form[or]You instinctively attack using your [bodytype of player] body[or]Drawing strength from your [bodyname of player] body, you attack[or]You attack using your [bodyname of player] might[or]You ferociously resist your foe with your tainted body's power[or]You attack using your [bodyname of player] form[']s natural defences[at random], hitting [name entry] for [special-style-2][dam][roman type] damage!";
			otherwise if "Black Belt" is listed in feats of player or "Martial Artist" is listed in feats of player:
				say "[one of]You strike your foe using your trained unarmed combat, [or]You land an open-palmed strike on your foe, [or]You land a close-fisted blow on your enemy, [or]You attack using your martial arts skill, [or]You land a series of quick blows, [or]You grapple and toss your foe using your training, [or]Your kung-fu is the best, [or]Whoa!  You know kung-fu! [at random]hitting [name entry] for [special-style-2][dam][roman type] damage!";
			otherwise:
				say "You [one of]strike with[or]attack with[or]use[or]abuse with[at random] [weapon of player], hitting [name entry] for [special-style-2][dam][roman type] damage!";
		otherwise:
			say "You [one of]strike with[or]attack with[or]use[or]abuse with[at random] [weapon of player], hitting [name entry] for [special-style-2][dam][roman type] damage!";
		let bonusattacks be 0;		[max 2 bonus attacks in a round]
		let specattchance be 4;
		if peppereyes > 0, increase specattchance by 1;
		if a random chance of specattchance in 20 succeeds and "Tail Strike" is listed in feats of player and bonusattacks < 2:
			if tailname of player is listed in infections of Tailweapon:
				increase bonusattack by 1;
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
				say "[line break]You make an additional attack using your [tailname of player] tail's natural abilities for [special-style-2][dammy][roman type] damage!";
				increase dam by dammy;
				choose row monster from table of random critters;
		if a random chance of specattchance in 20 succeeds and "Cock Slap" is listed in feats of player and cock length of player >= 12 and bonusattacks < 2:
			increase bonusattack by 1;
			let dammy be 0;
			let z be cock length of player + ( 2 * cocks of player ) - 12;
			now dammy is ( square root of ( 2 * z ) ) + 1;
			if dammy > 8, now dammy is 8;
			increase dammy by a random number between 0 and 1;
			if cocks of player >= 3, increase dammy by a random number between 0 and 1;
			if tailname of player is "Cerberus":
				increase dammy by a random number between 0 and 2;
				say "[line break]Your tailcock swings in to [one of]smack[or]swat[or]slap[or]ejaculate[or]cum[purely at random] at your enemy, splattering a spray of your [one of]seed[or]semen[at random] onto them, for [special-style-2][dammy][roman type] additional damage!";
			otherwise:
				say "[line break]You give [one of]your opponent[or]your enemy[or]the [name entry][purely at random] a [one of]hard swat[or]fleshy smack[or]wet slap[or]firm jab[purely at random] with your [cock size desc of player] [one of]wang[or]cock[or]prick[purely at random][if cocks of player > 1]s[end if] for [special-style-2][dammy][roman type] additional damage!";
			increase dam by dammy;
		if a random chance of specattchance in 20 succeeds and "Ball Crush" is listed in feats of player and cock width of player >= 16 and bonusattacks < 2:
			increase bonusattack by 1;
			let dammy be 0;
			now dammy is ( square root of ( 2 * ( cock width of player - 13 ) ) ) + 1;
			if dammy > 8, now dammy is 8;
			increase dammy by a random number between 0 and 1;
			say "[line break]You tackle your opponent, slamming your [ball size] onto their [one of]head[or]body[or]face[or]crotch[in random order] for [special-style-2][dammy][roman type] additional damage!";
			increase dam by dammy;
		if a random chance of specattchance in 20 succeeds and "Boob Smother" is listed in feats of player and breast size of player > 2 and ( breast size of player + ( breasts of player / 2 ) ) >= 7 and bonusattacks < 2:
			increase bonusattack by 1;
			let dammy be 0;
			let z be breast size of player + breasts of player;
			now dammy is square root of ( z - 1 ) + 1;
			if dammy > 7, now dammy is 7;
			increase dammy by a random number between 0 and 1;
			if breasts of player > 4, increase dammy by a random number between 0 and 1;
			say "[line break]Grabbing your opponent, you smoosh them into your ample bosom, smothering and crushing them with your tits for [special-style-2][dammy][roman type] additional damage!";
			increase dam by dammy;
		if a random chance of petchance in 1000 succeeds and "Spirited Youth" is listed in feats of player:
			let y be a random number from 4 to 6;
			say "Your child [one of]lashes out[or]assists with a sudden strike[or]takes advantage of a distraction[or]launches a surprise attack[or]descends from out of nowhere[at random] at [name entry] for [special-style-2][y][roman type] damage!";
			increase dam by y;
		otherwise if a random chance of petchance in 4000 succeeds and "Youthful Tides" is listed in feats of player:
			let y be 0;
			repeat with s running from 1 to number of entries in childrenfaces:
				increase y by a random number from 2 to 4;
			increase dam by y;
			say "In a great flurry, your children [one of]swarm across and make distracting grabs[or]hurl a torrent of rocks[or]taunt and jeer in chorus[or]seem to decide start a massive orgy[or]practice their martial arts[at random] at [name entry] for [special-style-2][y][roman type] damage!";
		decrease monsterhp by dam;
		follow the monster injury rule;
		say "[Name entry] is [descr].";
	otherwise:
		say "You miss!";
	if player is not lonely:
		if a random chance of petchance in 4000 succeeds and "The Horde" is listed in feats of player:
			say "[line break]";
			say "Your many pets, always close by, come pouring out en masse and swarm your enemy, battering the [name entry] from all sides!";
			say "[line break]";
			repeat with z running through tamed pets:
				now the attack bonus is dexterity of z + ( level of z * 2 ) + pethitbonus - 10;
				let the combat bonus be attack bonus minus defense bonus;
				if hardmode is true:
					if the combat bonus is greater than 16:
						now combat bonus is 16;
				otherwise:
					if the combat bonus is greater than 19:
						now combat bonus is 19;
				now roll is a random number from 1 to 50;
				if roll plus the combat bonus is greater than 20:
					let dam be ( weapon damage of z times a random number from 80 to 120 ) divided by 100;
					say "[z]: [assault of z] [special-style-2][dam][roman type] damage inflicted!";
					decrease monsterhp by dam;
				otherwise:
					say "Your [z] misses!";
		otherwise if a random chance of petchance in 1000 succeeds:
			now attack bonus is dexterity of companion of player + ( level of companion of player * 2 ) + pethitbonus - 10;
			let the combat bonus be attack bonus minus defense bonus;
			if hardmode is true:
				if the combat bonus is greater than 16:
					now combat bonus is 16;
			otherwise:
				if the combat bonus is greater than 19:
					now combat bonus is 19;
			now roll is a random number from 1 to 50;
			if roll plus the combat bonus is greater than 50:
				let dam be ( weapon damage of companion of player times a random number from 80 to 120 ) divided by 100;
				say "[assault of companion of player] [special-style-2][dam][roman type] damage inflicted!";
				decrease monsterhp by dam;
			otherwise:
				say "Your [companion of player] misses!";
	say "[line break]";
	if monsterhp is greater than 0:
		if before combat is 0:
			choose row monstercom from table of Critter Combat;
			if playerpoison > 0, follow the playerpoisoned rule;
			if there is a continuous in row monstercom of the table of Critter Combat:
				follow the continuous entry;
			if combat abort is 0 and skipretaliate is false, follow the combat entry;
	otherwise:
		now fightoutcome is 10;
		win;


Chapter 2 - Item Use

This is the combat item rule:
	now battleitem is 0;
	blank out the whole of table of itemselection;
	repeat with Q running through fast owned grab objects:
		choose a blank row in table of itemselection;
		now object entry is Q;
		now holding entry is carried of Q;
		now objname entry is printed name of Q;
	if there is no object in row 1 of table of itemselection:
		say "You have no combat ready items to use!";
		wait for any key;
	otherwise:
		while 1 is 1:
			if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
			repeat with y running from 1 to number of filled rows in table of itemselection:
				choose row y from the table of itemselection;
				say "[link][y] - [objname entry][as][y][end link] ([holding entry])[line break]";
			say "[link]0 - ABORT[as]0[end link][line break]";
			say "Type the number corresponding to the item to be used> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of itemselection:
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
	choose row Current Menu Selection in table of itemselection;
	process object entry;
	if combat abort is 0 and battleitem is 0:
		if monsterhp < 1:
			now fightoutcome is 10;
			win;
		otherwise if hp of player < 1 or libido of player > 109:
			if hp of player <= 0, now fightoutcome is 20;
			if libido of player >= 110, now fightoutcome is 21;
			lose;
		otherwise:
			wait for any key;
			choose row monstercom from table of Critter Combat;
			if playerpoison > 0, follow the playerpoisoned rule;
			if there is a continuous in row monstercom of the table of Critter Combat:
				follow the continuous entry;
			if combat abort is 0, follow the combat entry;

Table of itemselection
object	holding (number)	objname (indexed text)	description (indexed text)
journal	1	"journal"	"nothing"
with 24 blank rows.


Chapter 3 - Combat Pass

This is the combat pass rule:
	choose row monstercom from table of Critter Combat;
	if playerpoison > 0, follow the playerpoisoned rule;
	if there is a continuous in row monstercom of the table of Critter Combat:
		follow the continuous entry;
	if combat abort is 0, follow the combat entry;


Chapter 4 - Submit

This is the submit rule:
	choose row monster from the table of random critters;
	let temp be the hp of the player;
	now fightoutcome is 22;
	Lose;
	if "Submissive" is listed in feats of the player, increase the XP of the player by ( ( 2 + lev entry ) / 5 );
	if ktspeciesbonus > 0, increase the XP of the player by 1;
	if "Kinky" is listed in feats of the player, increase the morale of the player by 6;


Chapter 5 - Flee

This is the flee rule:
	choose row monster from the table of random critters;
	let the attack bonus be dexterity of player + intelligence of player + ( level of player * 2 ) + plfleebonus - 20;
	let the defense bonus be dex entry + ( lev entry * 2 ) + monhitbonus - 10;
	let the combat bonus be attack bonus - defense bonus;
	if "Gas Cloud" is listed in feats of player and gascloud is 0 and peppereyes is 0:
		if tailname of player is "Skunk" or tailname of player is "Skunkbeast Lord" or tailname of player is "Skunk Taur" or tailname of player is "Hyperskunk":
			say "You give your striped tail a meaningful wave at your enemy before releasing your spray and trying to escape.";
			increase gascloud by 5;
		otherwise if tailname of player is "Squid":
			say "Turning around, you spray an inky cloud towards your enemy before trying to escape.";
			increase gascloud by 5;
		otherwise if bodyname of player is "Corota":
			say "Rustling your wings, you send a cloud of choking dust at your foe before you attempt your escape.";
			increase gascloud by 5;
		otherwise:
			say "You release your cover cloud and try to escape.";
			increase gascloud by 3;
	increase combat bonus by gascloud * 2;
	if hp of Velos > 2 and scalevalue of player < 3 and velosfleepenalty is false:
		say "The added weight and discomfort of the heavy serpent inside your [body size of player] body does make it a little harder to get away.";
		now velosfleepenalty is true;
	if hardmode is true:
		if the combat bonus is less than -25:
			now combat bonus is -25;
	otherwise:
		if the combat bonus is less than -22:
			now combat bonus is -22;
	let the roll be a random number from 1 to 50;
	say "You roll 1d50([roll])+[combat bonus] -- [roll plus combat bonus]: ";
	if the roll plus the combat bonus is greater than 20:
		say "You manage to evade [name entry] and slip back into the city.";
		now fightoutcome is 30;
		now combat abort is 1;
	otherwise:
		say "You fail to get away.";
		choose row monstercom from table of Critter Combat;
		if playerpoison > 0, follow the playerpoisoned rule;
		if there is a continuous in row monstercom of the table of Critter Combat:
			follow the continuous entry;
		if combat abort is 0, follow the combat entry;

Chapter 6 - Throw the Fight

This is the throw combat rule:
	now fightoutcome is 20;
	now hp of player is -2;
	say "You allow yourself to be subdued while putting up a token struggle.";
	Lose;


Chapter P - Poison

this is the playerpoisoned rule:
	if playerpoison > 0:
		choose row monster from the table of random critters;
		let dam be lev entry + ( playerpoison * 2 );
		increase dam by a random number between 0 and playerpoison;
		let dam be dam / 4;
		let playernum be stamina of player + level of player;
		let poisonnum be ( playerpoison * 2 ) + lev entry;
		let playernum be a random number between 1 and playernum;
		let poisonnum be a random number between 1 and poisonnum;
		if playernum >= poisonnum:	[successful stamina check decreases poison faster]
			decrease playerpoison by 2;
		otherwise:
			decrease playerpoison by 1;
		decrease playerpoison by playerpoison / 7;	[drops very high values faster, mostly for hard mode]
		say "As the toxins in your system continue to affect you, you take another [special-style-2][dam][roman type] damage";
		if poisonnum > 0:
			say "!  Your nanites continue to try and purge it from your system, quickly working to break down more of it.";
		otherwise:
			say "!  Your nanites manage to purge the last of it from your system, leaving you free of its debilitating effects.";
			increase plhitbonus by 2;
		decrease hp of player by dam;
		if hp of player < 1:
			if hp of player <= 0, now fightoutcome is 20;
			if libido of player >= 110, now fightoutcome is 21;
			lose;


Section 3 - Monster Counterattack

Book 0 - Retaliation Rule

this is the retaliation rule:
	choose row monstercom from table of Critter Combat;
	if name entry is "default":
		standardretaliate;		[follows the basic model if default]
	otherwise:
		retaliate;				[follows the advanced model if alternate]

Book 1 - Standard Retaliate

[ Since it's default, it skips checking the alternates. ]

to standardretaliate:
	choose row monster from table of Random Critters;
	now monsterhit is false;
	standardstrike;
	if monsterhit is true:
		standardhit;
	otherwise:
		say "[Name Entry] misses!";
	now peppereyes is 0;
	if hp of the player is greater than 0 and libido of player < 110:
		[wait for any key;]
		AttemptToWaitBeforeClear;
	otherwise:
		if hp of player <= 0, now fightoutcome is 20;
		if libido of player >= 110, now fightoutcome is 21;
		Lose;
	rule succeeds;

Book 2 - Alternate Retaliation

[ Non-standard rules apply ]

Retaliating is an action applying to nothing.

to retaliate:
	choose row monstercom from table of Critter Combat;
	now monsterhit is false;
	if there is a preattack in row monstercom of the table of Critter Combat:
		follow the preattack entry;								[perform a pre-attack, if it exists]
	if there is a altstrike in row monstercom of the table of Critter Combat:
		follow the altstrike entry;								[use an alternate striking method, if it exists]
	otherwise:
		standardstrike;
	if monsterhit is true:
		now altattackmade is 0;
		choose row monstercom from table of Critter Combat;
		if there is a altattack1 in row monstercom of the table of Critter Combat and there is a alt1chance in row monstercom of the table of Critter Combat:
			if a random chance of ( alt1chance in row monstercom of Table of Critter Combat ) in 100 succeeds:
				now altattackmade is 1;
				follow the altattack1 entry;						[use altattack1, if rolled successfully and exists]
			otherwise if there is a altattack2 in row monstercom of the table of Critter Combat and there is a alt2chance in row monstercom of the table of Critter Combat:
				if a random chance of ( alt2chance in row monstercom of Table of Critter Combat ) in 100 succeeds:
					now altattackmade is 1;
					follow the altattack2 entry;					[use altattack1, if rolled successfully and exists]
		if altattackmade is 0:
			standardhit;									[use a normal hit, if no alternate was used]
		choose row monstercom from table of Critter Combat;
		if there is a postattack in row monstercom of the table of Critter Combat:
			follow the postattack entry;							[perform a post-attack, if it exists]
	otherwise:
		now missskip is 0;
		choose row monstercom from table of Critter Combat;
		if there is a monmiss in row monstercom of the table of Critter Combat:
			follow the monmiss entry;							[perform an alternate miss scene, if it exists]
		if missskip is 0:
			choose row monster from the table of random critters;
			say "[Name Entry] misses!";
	now peppereyes is 0;										[pepperspray wears off]
	if hp of the player is greater than 0 and libido of player < 110:
		[wait for any key;]
		AttemptToWaitBeforeClear;
	otherwise:
		if hp of player <= 0, now fightoutcome is 20;
		if libido of player >= 110, now fightoutcome is 21;
		Lose;
	rule succeeds;

Book 3 - Striking and Avoidance

to standardstrike:
	choose row monstercom from table of Critter Combat;
	now avoidance is 0;
	say "[avoidancecheck]";
	if gascloud > 0, decrease gascloud by 1;
	if avoidance is 1:
		now monsterhit is false;
	otherwise:
		choose row monster from the table of random critters;
		let the defense bonus be dexterity of the player + ( level of the player * 2 ) + pldodgebonus - 10;
		let the attack bonus be dex entry + ( lev entry * 2 ) + monhitbonus - 10;
		let the combat bonus be attack bonus minus defense bonus;
		if "Flash" is listed in feats of player and a random chance of 3 in 20 succeeds:
			say "Calling upon your hidden power, you flash brightly with light, filling the [Name Entry]'s eyes with spots.";
			decrease combat bonus by 6;
		if hardmode is true:
			if the combat bonus is greater than 19:
				now combat bonus is 19;
			otherwise if the combat bonus is less than -22:
				now combat bonus is -22;
		otherwise:
			if the combat bonus is greater than 16:
				now combat bonus is 16;
			otherwise if the combat bonus is less than -25:
				now combat bonus is -25;
		if autoattackmode is 3 and combat bonus < -15, now combat bonus is -15;	[***if autopass, min. 30% chance to hit]
		let the roll be a random number from 1 to 50;
		say "[name entry] rolls 1d50([roll])+[combat bonus] -- [roll plus combat bonus]: [run paragraph on]";
		if the roll plus the combat bonus is greater than 20:
			now monsterhit is true;
		otherwise:
			now monsterhit is false;

to say avoidancecheck:					[collection of all enemy attack avoidance checks]
	choose row monster from the table of random critters;
	if "Dazzle" is listed in feats of player and a random chance of 2 in 20 succeeds:
		say "You bring forth a dazzling pattern of lights, momentarily entrancing your enemy and causing their attack to falter.";
		now avoidance is 1;
	otherwise if weapon object of player is bo staff:		[defensive combat]
		let boblock be 5 + ( 2 * peppereyes );
		if "Martial Artist" is listed in feats of player, increase boblock by 3;
		if "Black Belt" is listed in feats of player, increase boblock by 4;
		if "Weaponsmaster" is listed in feats of player, increase boblock by 6;
		let numnum be ( (strength of player + dexterity of player + stamina of player - 36 ) / 3 );
		if numnum > 0, increase boblock by numnum;
		increase boblock by gascloud;
		if boblock > a random number between 0 and 100:
			say "[one of]Using your bo staff, you are able to deflect the enemy's blow, preventing any damage.[or]Making a skillful vault with your staff, you leap out of the enemy's path and thereby avoid their attack.[or]Just as your opponent is about to strike, you sweep with your staff, causing them to stumble.[or]Taking advantage of your weapon's long reach, you keep your enemy at bay as you prepare to make your next move.[at random]";
			now avoidance is 1;
	otherwise if "Black Belt" is listed in feats of player and a random chance of 1 in ( 10 - peppereyes ) succeeds:
		say "You nimbly avoid the attack at the last moment!";
		now avoidance is 1;
	otherwise if ducky swimring is equipped and duckyactive is true and a random chance of 1 in 8 succeeds:
		say "Your [one of]inflatable ducky[or]ducky swim ring[or]white ducky[or]cute ducky[at random] ends up taking the hit for you, causing it to pop and deflate for the rest of the fight, but saving you from being hit this [one of]time[or]once[at random].";
		now avoidance is 1;
	if avoidance is 0 and level of Velos > 2 and ( ( hp of player * 100 ) / maxhp of player ) < 10 and velossaved is false:
		say "[one of]Velos, perhaps sensing that things aren't going well out there, makes a surprise exit, startling your foe for a moment before the serpent has to retreat.[or]When the serpent hidden within you emerges suddenly, the [name entry] is startled and stumbles back, losing their opportunity to strike.[or]With an exaggerated moaning, Velos rises from your depths, throwing off your opponent.[or]In an attempt to safeguard his friend and his home, Velos emerges.  'Boo.'  Stunned by this new foe, the [name entry] is thrown off balance for a moment.  By the time they recover and swing at Velos, he's already ducked back inside you.[or]Velos emerges from you, yelling angrily at you to stop all that knocking about while he's trying to sleep.  Your foe, meanwhile, staggers back several steps from the brief appearance of the snake.[or]Velos, emerging like some serpentine horror from your body, makes moaning, otherworldly noises at your foe.  This drives your opponent is back for a few moments['] reprieve.[cycling]";
		increase hp of player by 5;
		now velossavedyes is true;
		now velossaved is true;
		now avoidance is 1;

Book 4 - Standard Hit and Damage

to standardhit:
	choose row monster from the table of random critters;
	let rangenum be ( 80 - ( peppereyes * 4 ) );
	let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 100 );
	if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	say "[Attack entry]  You take [special-style-2][dam][roman type] damage!";
	now damagein is dam;
	say "[normalabsorbancy]";
	if absorb is greater than dam:
		now absorb is dam;
	if absorb is greater than 0:
		say "You prevent [special-style-1][absorb][roman type] damage!";
	decrease hp of the player by dam;
	increase hp of player by absorb;
	follow the player injury rule;
	say "You are [descr].";


Book 5 - Absorbancy Variants

to say normalabsorbancy:		[normal absorbancy]
	now absorb is 0;
	let targetlocation be "body";
	if a random chance of 1 in 4 succeeds, now targetlocation is "head";	[25% chance of headshot]
	now damageout is damagein;
	let totalarmour be 100;		[natural protection]
	if "Toughened" is listed in feats of player:
		now totalarmour is 525;							[25^2]
	repeat with x running through equipped equipment:
		if ac of x > 0 and placement of x is "shield":
			if a random chance of ( effectiveness of x ) in 100 succeeds:
				now absorb is ( damagein * ac of x ) / 500;
				if absorb is 0, now absorb is 1;
				now damageout is damagein - absorb;			[reduced dmg used for armour calculation below]
		if ac of x > 0 and placement of x is targetlocation:
			if a random chance of ( effectiveness of x ) in 100 succeeds:
				increase totalarmour by ac of x * ac of x;
			otherwise:
				let factor be a random number between 1 and effectiveness of x;
				let effectiveac be ( ac of x * factor ) / 100;
				increase totalarmour by ( effectiveac * effectiveac );
	let denominator be 100 + square root of totalarmour;
	let numerator be ( 10000 * damageout );
	let midcalc be numerator / denominator;
	now damageout is ( midcalc + 99 ) / 100;		[protection rounds down]
	now absorb is damagein - damageout;


to say highabsorbancy:			[increased chance to block better]
	now absorb is 0;
	let targetlocation be "body";
	if a random chance of 1 in 4 succeeds, now targetlocation is "head";	[25% chance of headshot]
	now damageout is damagein;
	let totalarmour be 100;		[natural protection]
	if "Toughened" is listed in feats of player:
		now totalarmour is 525;							[25^2]
	repeat with x running through equipped equipment:
		if ac of x > 0 and placement of x is "shield":
			if a random chance of ( effectiveness of x ) in 90 succeeds:
				now absorb is ( damagein * ac of x ) / 400;
				if absorb is 0, now absorb is 1;
				now damageout is damagein - absorb;			[reduced dmg used for armour calculation below]
		if ac of x > 0 and placement of x is targetlocation:
			if a random chance of ( effectiveness of x ) in 90 succeeds:
				increase totalarmour by ac of x * ac of x;
			otherwise:
				let factor be a random number between 1 and effectiveness of x;
				let effectiveac be ( ac of x * factor ) / 90;
				increase totalarmour by ( effectiveac * effectiveac );
	let denominator be 100 + square root of totalarmour;
	let numerator be ( 10000 * damageout );
	let midcalc be numerator / denominator;
	now damageout is ( midcalc + 99 ) / 100;		[protection rounds down]
	now absorb is damagein - damageout;


to say weakabsorbancy:			[only partial absorbancy]
	now absorb is 0;
	let targetlocation be "body";
	if a random chance of 1 in 4 succeeds, now targetlocation is "head";	[25% chance of headshot]
	now damageout is damagein;
	let totalarmour be 50;		[natural protection dropped]
	if "Toughened" is listed in feats of player:
		now totalarmour is 131;							[ (25/2)^2 ]
	repeat with x running through equipped equipment:
		if ac of x > 0 and placement of x is "shield":
			if a random chance of ( effectiveness of x ) in 200 succeeds:		[half as likely to block]
				now absorb is ( damagein * ac of x ) / 500;
				if absorb is 0, now absorb is 1;
				now damageout is damagein - absorb;			[reduced dmg used for armour calculation below]
		if ac of x > 0 and placement of x is targetlocation:
			let factor be a random number between 1 and effectiveness of x;
			let effectiveac be ( ac of x * factor ) / 200;			[1/2 effectiveac]
			increase totalarmour by ( effectiveac * effectiveac );
	let denominator be 100 + square root of totalarmour;
	let numerator be ( 10000 * damageout );
	let midcalc be numerator / denominator;
	now damageout is ( midcalc + 99 ) / 100;		[protection rounds down]
	now absorb is damagein - damageout;


to say headabsorbancy:			[targets head]
	now absorb is 0;
	let targetlocation be "head";
	now damageout is damagein;
	let totalarmour be 100;		[natural protection]
	if "Toughened" is listed in feats of player:
		now totalarmour is 525;							[25^2]
	repeat with x running through equipped equipment:
		if ac of x > 0 and placement of x is "shield":
			if a random chance of ( effectiveness of x ) in 100 succeeds:
				now absorb is ( damagein * ac of x ) / 500;
				if absorb is 0, now absorb is 1;
				now damageout is damagein - absorb;			[reduced dmg used for armour calculation below]
		if ac of x > 0 and placement of x is targetlocation:
			if a random chance of ( effectiveness of x ) in 100 succeeds:
				increase totalarmour by ac of x * ac of x;
			otherwise:
				let factor be a random number between 1 and effectiveness of x;
				let effectiveac be ( ac of x * factor ) / 100;
				increase totalarmour by ( effectiveac * effectiveac );
	let denominator be 100 + square root of totalarmour;
	let numerator be ( 10000 * damageout );
	let midcalc be numerator / denominator;
	now damageout is ( midcalc + 99 ) / 100;		[protection rounds down]
	now absorb is damagein - damageout;


to say bodyabsorbancy:			[targets body]
	now absorb is 0;
	let targetlocation be "body";
	now damageout is damagein;
	let totalarmour be 100;		[natural protection]
	if "Toughened" is listed in feats of player:
		now totalarmour is 525;							[25^2]
	repeat with x running through equipped equipment:
		if ac of x > 0 and placement of x is "shield":
			if a random chance of ( effectiveness of x) in 100 succeeds:
				now absorb is ( damagein * ac of x ) / 500;
				if absorb is 0, now absorb is 1;
				now damageout is damagein - absorb;			[reduced dmg used for armour calculation below]
		if ac of x > 0 and placement of x is targetlocation:
			if a random chance of ( effectiveness of x ) in 100 succeeds:
				increase totalarmour by ac of x * ac of x;
			otherwise:
				let factor be a random number between 1 and effectiveness of x;
				let effectiveac be ( ac of x * factor ) / 100;
				increase totalarmour by ( effectiveac * effectiveac );
	let denominator be 100 + square root of totalarmour;
	let numerator be ( 10000 * damageout );
	let midcalc be numerator / denominator;
	now damageout is ( midcalc + 99 ) / 100;		[protection rounds down]
	now absorb is damagein - damageout;


to say areaabsorbancy:			[area of affect attack]
	now absorb is 0;
	now damageout is damagein;
	let totalarmour be 100;		[natural protection]
	if "Toughened" is listed in feats of player:
		now totalarmour is 525;							[25^2]
	repeat with x running through equipped equipment:
		if ac of x > 0 and placement of x is "shield":
			now absorb is ( damagein * ac of x * effectiveness of x) / 40000;	[shields help deflect more of these blows]
			if absorb is 0, now absorb is 1;
			now damageout is damagein - absorb;			[reduced dmg used for armour calculation below]
		if ac of x > 0 and placement of x is "body":
			increase totalarmour by ( ac of x * ac of x * effectiveness of x * 3 ) / 400;			[75% from body]
		if ac of x > 0 and placement of x is "head":
			increase totalarmour by ( ac of x * ac of x * effectiveness of x ) / 400;	[25% from head]
	let denominator be 100 + square root of totalarmour;
	let numerator be ( 10000 * damageout );
	let midcalc be numerator / denominator;
	now damageout is ( midcalc + 99 ) / 100;		[protection rounds down]
	now absorb is damagein - damageout;


to say noarmourabsorbancy:			[normalized natural defence only]
	now absorb is 0;
	now damageout is damagein;
	let totalarmour be 0;
	if "Toughened" is listed in feats of player:
		increase totalarmour by 400;				[20^2]
	if totalarmour > 0:
		let denominator be 100 + square root of totalarmour;
		let numerator be ( 1000 * damagein );
		let midcalc be numerator / denominator;
		now damageout is ( midcalc + 5 ) / 10;		[rounds to the nearest integer]
		now absorb is damagein - damageout;


to say noshieldabsorbancy:		[no shield protection]
	now absorb is 0;
	let targetlocation be "body";
	if a random chance of 1 in 4 succeeds, now targetlocation is "head";	[25% chance of headshot]
	now damageout is damagein;
	let totalarmour be 100;		[natural protection]
	if "Toughened" is listed in feats of player:
		now totalarmour is 525;							[25^2]
	repeat with x running through equipped equipment:
		if ac of x > 0 and placement of x is targetlocation:
			if a random chance of ( effectiveness of x ) in 100 succeeds:
				increase totalarmour by ac of x * ac of x;
			otherwise:
				let factor be a random number between 1 and effectiveness of x;
				let effectiveac be ( ac of x * factor ) / 100;
				increase totalarmour by ( effectiveac * effectiveac );
	let denominator be 100 + square root of totalarmour;
	let numerator be ( 10000 * damageout );
	let midcalc be numerator / denominator;
	now damageout is ( midcalc + 99 ) / 100;		[protection rounds down]
	now absorb is damagein - damageout;


to say nofeatabsorbancy:
	now absorb is 0;
	let targetlocation be "body";
	if a random chance of 1 in 4 succeeds, now targetlocation is "head";	[25% chance of headshot]
	now damageout is damagein;
	let totalarmour be 0;		[no natural protection]
	repeat with x running through equipped equipment:
		if ac of x > 0 and placement of x is "shield":
			if a random chance of (effectiveness of x) in 100 succeeds:
				now absorb is ( damagein * ac of x ) / 500;
				if absorb is 0, now absorb is 1;
				now damageout is damagein - absorb;			[reduced dmg used for armour calculation below]
	repeat with x running through equipped equipment:
		if ac of x > 0:
			if placement of x is targetlocation:
				if a random chance of (effectiveness of x) in 100 succeeds:
					increase totalarmour by ac of x * ac of x;
				otherwise:
					let factor be a random number between 1 and effectiveness of x;
					let effectiveac be ( ac of x * factor ) / 100;
					increase totalarmour by ( effectiveac * effectiveac );
	let denominator be 100 + square root of totalarmour;
	let numerator be ( 10000 * damageout );
	let midcalc be numerator / denominator;
	now damageout is ( midcalc + 99 ) / 100;		[protection rounds down]
	now absorb is damagein - damageout;


Section 4 - Loss and Victory

to win:
	choose row monster from table of random critters;
	follow the cock descr rule;
	follow the cunt descr rule;
	follow the breast descr rule;
	let ok be 1;
	let voreprompted be false;
	let ubprompted be false;
	if playercanvore is true and inasituation is false and scalevalue of player >= scale entry and fightoutcome is 10 and vorechoice is not 2:
		let vorechance be 25 + ( hunger of player * 2 );
		if "Automatic Survival" is listed in feats of player, now vorechance is 75;
		if vorecount > 20:
			increase vorechance by 40;
		otherwise:
			increase vorechance by vorecount * 2;
		increase vorechance by ( 100 - humanity of player ) / 4;
		increase vorechance by ( scalevalue of player - scale entry ) * 5;
		if a random chance of vorechance in 300 succeeds:					[chance for vore]
			if name entry is not listed in infections of VoreExclusion:
				now voreprompted is true;			[player will be prompted for vore]
	if playercanub is true and inasituation is false and scalevalue of player >= scale entry and fightoutcome is 10 and ubchoice is not 2 and gestation of child is 0 and larvaegg is not 2 and cunts of player > 0:
		let vorechance be 25 + ( cunt width of player * 5 );
		if vorechance > 125, now vorechance is 125;
		if "Fertile" is listed in feats of player, increase vorechance by 25;
		if "Maternal" is listed in feats of player, increase vorechance by 15;
		if "Sterile" is listed in feats of player, increase vorechance by 40;
		if inheat is true, increase vorechance by 20;
		if ubcount > 20:
			increase vorechance by 40;
		otherwise:
			increase vorechance by ubcount * 2;
		increase vorechance by ( 100 - humanity of player ) / 4;
		increase vorechance by ( scalevalue of player - scale entry ) * 5;
		if a random chance of vorechance in 300 succeeds:					[chance for ub]
			if name entry is not listed in infections of VoreExclusion:
				now ubprompted is true;			[player will be prompted for ub]
	if voreprompted is true and ubprompted is true:				[both vore and ub are possible]
		if vorechoice is 0 and ubchoice is 0:					[player has full choice]
			say "     As your battle is coming to a close, you feel a primal rumbling in your belly and in your womb, your twin hungers welling up inside you.  Looking down at your fallen foe, you lick your lips and finger yourself, tempted to fill that emptiness you're feeling inside with the [name entry].  Shall you give into your desire to [link]consume (1)[as]1[end link] them, [link]unbirth (2)[as]2[end link] them or [link]suppress (0)[as]0[end link] the urge?";
			now calcnumber is -1;
			while calcnumber < 0 or calcnumber > 2:
				say "Choice? (0-2)>[run paragraph on]";
				get a number;
			if calcnumber is 1:
				now ok is 0;
				vorebyplayer;			[See Alt Vore file]
				now fightoutcome is 13;	[player vored foe]
			otherwise if calcnumber is 2:
				now ok is 0;
				ubbyplayer;			[See Alt Vore file]
				now fightoutcome is 14;	[player ub'ed foe]
			otherwise:
				now ok is 1;
		otherwise if vorechoice is 1 and ubchoice is 1:				[player has choice ub/vore]
			say "     As your battle is coming to a close, you feel a primal rumbling in your belly and in your womb, your twin hungers welling up inside you.  Looking down at your fallen foe, you lick your lips and finger yourself.  You don't hold back the urge to be filled, but are torn between which emptiness you're feeling to fill with the [name entry].  Shall you give into your desire to [link]consume (1)[as]1[end link] them or to [link]unbirth (2)[as]2[end link] them?";
			now calcnumber is -1;
			while calcnumber < 1 or calcnumber > 2:
				say "Choice? (1 or 2)>[run paragraph on]";
				get a number;
			if calcnumber is 1:
				now ok is 0;
				vorebyplayer;			[See Alt Vore file]
				now fightoutcome is 13;	[player vored foe]
			otherwise if calcnumber is 2:
				now ok is 0;
				ubbyplayer;			[See Alt Vore file]
				now fightoutcome is 14;	[player ub'ed foe]
		otherwise if vorechoice is 1 and ubchoice is 0:				[hunger overrides ub]
			say "     As your battle is coming to a close, you feel a primal rumbling in your belly and in your womb, your twin hungers welling up inside you.  Looking down at your fallen foe, you lick your lips and finger yourself.  In the end, it is the emptiness in your stomach that wins out and you don't hold it back.  You advancing on them with the intent to sate your stomach's call with the [name entry].";
			now ok is 0;
			vorebyplayer;			[See Alt Vore file]
			now fightoutcome is 13;	[player vored foe]
		otherwise if vorechoice is 0 and ubchoice is 1:				[ub overrides hunger]
			say "     As your battle is coming to a close, you feel a primal rumbling in your belly and in your womb, your twin hungers welling up inside you.  Looking down at your fallen foe, you lick your lips and finger yourself.  In the end, it is the hollowness in your uterus that wins out and you don't hold it back.  You advancing on them with the intent to use the [name entry] to fill the emptiness you feel in your womb.";
			now ok is 0;
			ubbyplayer;			[See Alt Vore file]
			now fightoutcome is 14;	[player ub'ed foe]
	otherwise if voreprompted is true:
		if vorechoice is 0:
			say "     As your battle is coming to a close, you feel a primal rumbling in your belly, your hunger welling up inside you.  Looking down at your fallen foe, you lick your lips, tempted to sate your body's hunger with the [name entry].  Shall you give into this desire to [link]consume[as]y[end link] them?";
			if the player consents:
				now ok is 0;
				vorebyplayer;		[See Alt Vore file]
				now fightoutcome is 13;	[player vored foe]
			otherwise:
				now ok is 1;
		otherwise if vorechoice is 1:
			say "     As your battle is coming to a close, you feel that primal rumbling in your belly, your hunger welling up inside you.  Looking down at your fallen foe, you lick your lips and don't hold it back, advancing on them with the intent to sate your stomach's call with them.";
			now ok is 0;
			vorebyplayer;		[See Alt Vore file]
			now fightoutcome is 13;	[player vored foe]
	otherwise if ubprompted is true:
		if ubchoice is 0:
			say "     As your battle is coming to a close, you become intensely aware of the emptiness of your womb.  Looking down at your foe, you finger yourself, longing to use the [name entry] to fill it right away.  Shall you give into this desire and [link]unbirth[as]y[end link] them?";
			if the player consents:
				now ok is 0;
				ubbyplayer;		[See Alt Vore file]
				now fightoutcome is 14;	[player ub'ed foe]
			otherwise:
				now ok is 1;
		otherwise if ubchoice is 1:
			say "     As your battle is coming to a close, you become intensely aware of the emptiness of your womb.  Looking down at your foe, you finger yourself and don't hold it back, advancing on them with the intent to fill your uterus right away with them.";
			now ok is 0;
			ubbyplayer;		[See Alt Vore file]
			now fightoutcome is 14;	[player ub'ed foe]
	if ok is 1 and "Control Freak" is listed in feats of player:
		say "Do you want to perform after combat scene?";
		if the player consents:
			now ok is 1;
		otherwise:
			now ok is 0;
	if ok is 1, say "[defeated entry]";
	increase the XP of the player by lev entry times two;
	if the player is dominant:
		let jj be a random number between 1 and 4;
		if jj is 1:			[libido boost]
			increase libido of player by 5;					[flat libido boost]
		otherwise if jj is 2:
			increase morale of player by 1;					[flat morale boost]
		otherwise:
			increase xp of player by ( lev entry + 2 ) / 5;		[10% xp boost]
	if ktspeciesbonus > 0, increase the XP of the player by (lev entry divided by 2);
	if the player is not lonely:
		increase the xp of the companion of the player by lev entry times two;
		if "Ringmaster" is not listed in feats of player:
			decrease the xp of the player by ( lev entry times 2 ) divided by 3;
	increase the morale of the player by 1;
	let randomdropchance be lootchance entry;
	let z be 0;
	if randomdropchance is 0:
		now randomdropchance is 0;		[no drop = do nothing]
	otherwise if randomdropchance is 100:
		now randomdropchance is 100;	[always drops = no need to run all the maths]
		say "You gain 1 x [loot entry]!";
		add loot entry to the invent of the player;
	otherwise:
		if "Magpie Eyes" is listed in feats of player and randomdropchance is greater than 50:
			now z is ( 100 - randomdropchance ) divided by 3;		[scaled increase above 50, prevents numbers over 100]
			increase randomdropchance by z;
		otherwise if "Magpie Eyes" is listed in feats of player and randomdropchance is greater than 0:
			now z is randomdropchance divided by 3;
			increase randomdropchance by z;
		if "Mugger" is listed in feats of player and muggerison is true:		[flat perception based increase]
			if perception of player < 30:
				increase randomdropchance by ( perception of player / 2 );
				if randomdropchance > 100, now randomdropchance is 100;
			otherwise:
				increase randomdropchance by 15;
			if randomdropchance > 100, now randomdropchance is 100;
		let yy be ( ( ( perception of player - 10 ) / 2 ) * 3 );	[minor perception bonus to looting, maxed at 30 PER]
		if yy > 30, now yy is 30;
		if randomdropchance > 50, now yy is ( yy * ( 100 - randomdropchance ) ) divided by 100;
		if randomdropchance <= 50, now yy is ( yy * randomdropchance ) divided by 100;
		now randomdropchance is randomdropchance + yy;
		if a random chance of randomdropchance in 100 succeeds:
			say "You gain 1 x [loot entry]!";
			add loot entry to the invent of the player;
[	let z be 0;
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
		add loot entry to the invent of the player;
	if "Magpie Eyes" is listed in feats of player and lootchance entry is greater than 0:
		decrease lootchance entry by z;		]
	if fightoutcome is not 13 and fightoutcome is not 14 and fightoutcome is not 18 and fightoutcome is not 19:
		vialchance (name entry);
	let reward be lev entry * 2;
	if lev entry > 2, increase reward by 1;
	if lev entry > 4, increase reward by ( lev entry / 4 );
	if lev entry > 8, increase reward by ( lev entry / 3 );
	if reward > 50, now reward is 50;
	increase freecred by reward;
	say "[line break]A soft chime informs you that you have received [special-style-1][reward][roman type] freecred, and now have [freecred] creds.";
	if libido of player > 25, decrease libido of player by 4;
	AttemptToWaitBeforeClear; [wait for any key;]
	[clear the screen and hyperlink list;]
	AttemptToClearHyper;
	now automaticcombatcheck is 0; [combat is over, reset to zero]
	rule succeeds;

To lose:
	choose row monster from the table of random critters;
	follow the cock descr rule;
	follow the cunt descr rule;
	follow the breast descr rule;
	now lost is 1;
	say "[victory entry][line break]";
	if scenario is "Researcher" and ( there is no resbypass in row monster of table of random critters or resbypass entry is false ):
		say "";
	otherwise:
		infect;
	choose row monster from the table of random critters;
	if libido of player < libido entry and non-infectious entry is false:
		increase libido of player by 4;
	otherwise:
		increase libido of player by 2;
	if hp of player is less than 1, now hp of player is 1;
	now combat abort is 1;
	increase the XP of the player by lev entry divided by two;
	if ktspeciesbonus > 0, increase the XP of the player by 1;
	decrease the score by 1;
	decrease the morale of the player by 3;
	now automaticcombatcheck is 0; [combat is over, reset to zero]


Section 5 - Critter Combat

Chapter 0 - Definition of entries

[ DEFINITIONS OF ENTRIES:
name:			The name of the rule.  Must be matched exactly by the altcombat entry of the critter.
combat:		This is the basic rule to be followed when a monster counter-attacks, preceded only by the continuous entry and _replacing_ the
			standard retaliation rule entirely.  There should always be a rule in this field.
preattack:		This rule is followed at the very start of the 'to retaliate' feature, but can be called by other combat rules as well.  It is meant
			for effects that take place before a normal attack and occurs _before_ a player's avoidance check.
postattack:		This rule is followed at the very end of the 'to retaliate' feature, but again can be called by other combat rules as well.  It is
			meant for effects that take place after a normal attack.  This could be as simple as bragging, to poisoning a player (to be managed
			by the playerpoisoned rule) and so on.
altattack1:		This is an alternate, dexterity-based attack the creature will sometimes use.  These can be attacks w/effects, different damage,
			armour piercing, etc...
alt1chance:		The likelihood the first alternate attack will be chosen.
altattack2:		This is another alternate, dexterity-based attack the creature will sometimes use.
alt2chance:		The likelihood the second alternate attack will be chosen (if the first is not).  If neither alternate occurs, it defaults to normal
			methodology.
monmiss:		This rule replaces the regular miss statement and may contain necessary code for counting/resetting/etc...
continuous:		This rule takes place before any and all combat rules.  It is much like the pre-attack, but happens regardless of the attack method
			being used.  Good for enemy regen, player hp drain, player libido boosting, etc... that happens every turn.
altstrike:		This rule replaces the standard dexterity to-hit attempt by the monster (ex: using Int, Char, etc...)

While most anything can be created by placing it all in the combat rule, that requires duplication of all the code whereas using the subsets would save a lot of hassle and would ensure basic combat adaptations could more accurately be carried over (new player feats relating to defense, for example).  As well, with the rules broken out, they can more easily be repeated in the table in other combinations.  The 'retaliation rule' is the standard combat option, designed to call all the others at the appropriate time, except for the continuous entry (which is run independently before any combat rule).  A combat rule may branch between picking to do the 'retaliate' action as normal or doing something special instead (like a non-dexterity attack).

As there are all rules, they need not be restricted for one creature.  Several creatures could use the same 'bearhug rule' with their own stats in effect.

A note on alternate attacks: This is the 'damage' portion of a dexterity strike replaced.  If you need non-dexterity attacks, go to the combat entry/altstrike entry.  If you need more than 2 alternate attacks, you can break them up as sub-selections of alt1 and alt2 or just make a combat entry for it all and be done with it.

]


Chapter 1 - The Table of Critter Combat

Table of Critter Combat
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"default"	retaliation rule	--	--	--	--	--	--	--	--	--
"aura1"	retaliation rule	--	--	--	--	--	--	--	aura1 rule	--
"bearhugger"	retaliation rule	--	--	bearhug rule	20	--	--	--	--	--
"braggart"	retaliation rule	--	brag rule	--	--	--	--	--	--	--
"powerstrike1"	retaliation rule	ps1charge rule	--	ps1attack rule	100	--	--	ps1miss rule	--	--
"hypno"	retaliation rule	--	--	--	--	--	--	--	--	intstrike rule	
"hump"	retaliation rule	--	--	humping rule	100	--	--	--	--	--
"ftaurpounce"	retaliation rule	--	--	ftaurpounce rule	20	--	--	--	--	--
"firebreath"	firebreath rule	--	--	--	--	--	--	--	--	--

Chapter 2 - Sample/Basic Rules

Part 1 - Continuous Effect Example - Aura1

this is the aura1 rule:		[weak aura]
	choose row monster from table of random critters;
	say "     The [name entry]'s aura of energy continues to sap your strength... [run paragraph on]";
	let bonus be Stamina of player - 10;
	let dice be a random number from 1 to 50;
	say "You roll 1d50([dice])+[bonus] vs 20 and score [dice plus bonus]: ";
	if dice + bonus > 20:
		say "You manage to resist the creature's power and press on.";
		say "[line break]";
	otherwise:
		say "You suffer [ ( lev entry + 4 ) / 4 ] damage.";
		say "[line break]";
		decrease hp of player by ( lev entry + 4 ) / 4;
		if hp of player < 1:
			if hp of player <= 0, now fightoutcome is 20;
			if libido of player >= 110, now fightoutcome is 21;
			lose;

Part 2 - Alternate Attack Example - Bearhug

this is the bearhug rule:
	choose row monster from table of random critters;
	if name entry is "Snake" or name entry is "Naga":		[crushing coils]
		say "The [one of][name entry][or]large serpent[purely at random] manages to wrap its powerful tail around you, holding you in its vice-like constriction!  You will need to break free before squeezes the fight right out of you.";
	otherwise:									[crushing arms]
		say "The [name entry] manages to grab you in its powerful arms and holds you in a vice-like bear hug!  You will need to break free before it squeezes the fight right out of you.";
	let freedom be 0;
	while hp of player > 0 and freedom is 0:
		let dam be ( wdam entry times a random number from 80 to 120 ) divided by 125;	[80% dmg / round]
		now damagein is dam;
		say "[noarmourabsorbancy]";		[ignores armour]
		decrease hp of player by ( dam - absorb );
		if absorb is 0:
			say "You suffer [special-style-2][dam][roman type] damage from its crushing grip!  ([hp of player]/[maxhp of player] hp)[line break]";
		otherwise:
			say "You suffer [special-style-2][dam - absorb] ([dam] - [absorb])[roman type] damage from its crushing grip!  ([hp of player]/[maxhp of player] hp)[line break]";
		if hp of player > 0:
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			let num1 be a random number between 0 and ( Strength of player + level of player );
			let num2 be a random number between 1 and ( str entry + lev entry );
			if name entry is "Snake" or name entry is "Naga":
				say "As your opponent continues to crush you with its powerful coils, you struggle to break free: ";
			otherwise:
				say "As your opponent continues to crush you with its powerful arms, you struggle to break free: ";
			if num1 > num2:
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
		increase wdam entry by ( ( lev entry + 7 ) / 4 );
		decrease dex entry by 2;
		now monsterpowerup is 1;

this is the ps1attack rule:
	choose row monster from table of random critters;
	if monsterpowerup is 0:
		standardhit;							[if not a charged attack, act as normal]
	if monsterpowerup is 1:
		say "The enhanced attack strikes!  [run paragraph on]";
		standardhit;							[standard attack w/enhanced stats]
		decrease wdam entry by ( ( lev entry + 7 ) / 4 );	[then restore stats to normal]
		increase dex entry by 2;
		now monsterpowerup is 0;

this is the ps1miss rule:
	choose row monster from table of random critters;
	if monsterpowerup is 1:
		say "Your opponent's ultimate attack fails as they miss!";
		decrease wdam entry by ( ( lev entry + 7 ) / 4 );	[restore stats to normal]
		increase dex entry by 2;
		now monsterpowerup is 0;
		now missskip is 1;						[tells the game to skip the regular miss message]

Part 5 - Alternate Strike Example - Intelligence Strike - used for Hypno attacks, Mental powers, etc

this is the intstrike rule:
	choose row monstercom from table of Critter Combat;
	if "Dazzle" is listed in feats of player and a random chance of 2 in 20 succeeds:		[physical dodging doesn't apply]
		say "You bring forth a dazzling pattern of lights, momentarily entrancing your enemy and causing their attack to falter.";
		now avoidance is 1;
	if gascloud > 0, decrease gascloud by 1;
	if avoidance is 1:
		now monsterhit is false;
	otherwise:
		choose row monster from the table of random critters;
		let the defense bonus be intelligence of player + ( level of player * 2 ) + plmindbonus - 10;
		let the attack bonus be int entry + ( lev entry * 2 ) + monmindbonus - 10;
		let the combat bonus be attack bonus minus defense bonus;
		if "Flash" is listed in feats of player and a random chance of 3 in 20 succeeds:
			say "Calling upon your hidden power, you flash brightly with light, filling the [Name Entry]'s eyes with spots.";
			decrease combat bonus by 6;
		if hardmode is true:
			if the combat bonus is greater than 19:
				now combat bonus is 19;
			otherwise if the combat bonus is less than -22:
				now combat bonus is -22;
		otherwise:
			if the combat bonus is greater than 16:
				now combat bonus is 16;
			otherwise if the combat bonus is less than -25:
				now combat bonus is -25;
		if autoattackmode is 3 and combat bonus < -15, now combat bonus is -15;	[***if autopass, min. 30% chance to hit]
		let the roll be a random number from 1 to 50;
		say "[name entry] rolls 1d50([roll])+[combat bonus] -- [roll plus combat bonus]: [run paragraph on]";
		if the roll plus the combat bonus is greater than 20:
			now monsterhit is true;
		otherwise:
			now monsterhit is false;

Part 6 - Conditional Alternate Attack Example - Humping

this is the humping rule:
	choose row monster from table of random critters;
	if monsterpowerup is 1:
		say "The enhanced attack strikes!  [run paragraph on]";
		standardhit;							[standard attack w/enhanced stats]
		decrease wdam entry by ( ( lev entry + 7 ) / 4 );	[then restore stats to normal]
		increase dex entry by 2;
		now monsterpowerup is 0;
	otherwise if bodyname of player is name entry and a random chance of 1 in 5 succeeds:
		let rangenum be ( 80 - ( peppereyes * 4 ) );
		let xyz be ( a random number from rangenum to 120 ) + 30 + ( 2 * lev entry );
		let dam be ( ( wdam entry times xyz ) / 100 );
		if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
			now dam is (dam * 150) divided by 100;
			say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
		say "You are grabbed by the [name entry], which grinds its throbbing cock against your [bodytype of player] body.  Precum dribbles from it onto you, the scent of which momentarily entices your infected body, making you press back against their [body descriptor entry] form as the [cock entry] shaft is humped against you.  It takes an effort of will to resist giving into the alluring creature, but you manage to push it away.  Your drive to continue resisting has waned somewhat after the arousing attack.  You take [special-style-2][dam][roman type] damage!";
		increase libido of player by a random number from 2 to 6;
		if "Horny Bastard" is listed in feats of player, increase libido of player by 1;
		if "Cold Fish" is listed in feats of player, decrease libido of player by 1;
		decrease hp of the player by dam;
		follow the player injury rule;
		say "You are [descr].";
	otherwise:
		standardhit;							[if not a charged attack, act as normal]

Part 7 - Alternate Attack Example - Feline Taur Pounce

this is the ftaurpounce rule:		[double-damage pouncing]
	choose row monster from the table of random critters;
	let rangenum be ( 80 - ( peppereyes * 4 ) );
	let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 50 );	[Double damage]
	if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	say "The [one of][name entry][or]feline[or]feline taur[or]large cat[purely at random] growls and pounces playfully atop you, [one of]knocking[or]pushing[or]slamming[purely at random] you down briefly.  It's many paws knead and claw at you while the feline rumbles and purrs at having caught its [one of]toy[or]prey[or]plaything[purely at random], rubbing its body against yours.  This [one of]powerful[or]strong[or]devastating[purely at random] assault does [special-style-2][dam][roman type] damage!";
	now damagein is dam;
	say "[noshieldabsorbancy]";		[unable to use shield while pinned]
	if absorb is greater than dam:
		now absorb is dam;
	if absorb is greater than 0:
		say "You prevent [special-style-1][absorb][roman type] damage!";
	decrease hp of the player by dam;
	increase hp of player by absorb;
	follow the player injury rule;
	say "You are [descr].";

Part 8 - Alternate Combat Example - Fire Breath

firebreathcount is a number that varies.
firebreathready is a truth state that varies.  firebreathready is usually false.

this is the firebreath rule:
	choose row monster from the table of random critters;
[	say "TEST: firebreathcount = [firebreathcount].";	]
	if firebreathready is true:								[fire attack!]
		now firebreathready is false;
		now firebreathcount is 0;
		let fbhit be 0;
		let playernum be 10 + dexterity of player + level of player + pldodgebonus;
		let dragonnum be 10 + per entry + lev entry + monhitbonus;
[		say "TEST: player = [playernum] vs dragon = [dragonnum]:[line break]";	]
		let playernum be a random number between 1 and playernum;
		let dragonnum be a random number between 1 and dragonnum;
		say "[special-style-1][playernum][roman type] vs [special-style-2][dragonnum][roman type]: ";
		let dam be 0;
		if ( playernum * 2 ) < dragonnum:
			let dam be ( ( wdam entry times a random number from 80 to 120 ) / 57 );	[+75% damage]
			let fbhit be 2;		[Direct Hit]
		otherwise if playernum < dragonnum:
			let dam be ( ( wdam entry times a random number from 80 to 120 ) / 90 );	[+11% dmg]
			let fbhit be 1;		[Partial Hit]
		otherwise:
			let fbhit be 0;		[Missed]
		if name entry is "Ash Dragator":
			if fbhit is 2:
				say "[special-style-2][one of]The Dragator[or]The creature[or]The croc-beast[at random] lets out a primordial roar, energies and chemicals in its belly light up the inside of his mouth.  A bright red wave of fire is spat out at you.  You try to evade, but the fiery blast washes over you.  You suffer [dam] damage![roman type]";
			otherwise if fbhit is 1:
				say "[one of]The Dragator[or]The creature[or]The croc-beast[at random] lets out a primordial roar, energies and chemicals in its belly light up the inside of his mouth.  A bright red wave of [special-style-2]fire[roman type] is spat out at you.  You move to evade, but are still caught in part of the blast.  You suffer [special-style-2][dam][roman type] damage!";
			otherwise:
				say "[one of]The Dragator[or]The creature[or]The croc-beast[purely at random] lets out a primordial roar, energies and chemicals in its belly light up the inside of his mouth.  A bright red fireball is spat out in your direction, but you manage to evade it!";
		otherwise if name entry is "Ash Drakenoid":
			if fbhit is 2:
				say "[one of]She[or]The Drakenoid[or]The dragon creature[purely at random] braces herself against the ground debris and expels the deep breath it took moments ago.  Unable to get out of the way, you throw up your arms to protect yourself as her gaping maw looses a fireball at you.  You are burned for [dam] damage![roman type]";
			otherwise if fbhit is 1:
				say "[one of]She[or]The Drakenoid[or]The dragon creature[purely at random] braces herself against the ground debris and expels the deep breath she took moments ago.  You attempt to move out of the way, but are still partially caught in the [special-style-2]fireball[roman type] loosed from her maw.  You are burned for [special-style-2][dam][roman type] damage!";
			otherwise:
				say "[one of]She[or]The Drakenoid[or]The dragon creature[purely at random] braces herself against the ground debris and expels the deep breath she took moments ago.  Scrambling, you manage to dive out of the way of the fireball she hurls at you from her maw!";
		otherwise if name entry is "Ash Whelp":
			if fbhit is 2:
				say "[special-style-2][one of]The whelp[or]The creature[or]The Ash Whelp[purely at random] hiccups, then burps, then finally coughs up a small fireball which is lobbed at you.  It strikes you squarely in the [one of]face[or]chest[purely at random].  You take [dam] damage![roman type]";
			otherwise if fbhit is 1:
				say "[one of]The whelp[or]The creature[or]The Ash Whelp[purely at random] hiccups, then burps, then finally coughs up a small [special-style-2]fireball[roman type] which is lobbed at you.  You try to evade, but it catches you on your [one of]leg[or]arm[or]shoulder[purely at random].  You take [special-style-2][dam][roman type] damage!";
			otherwise:
				say "[one of]The whelp[or]The creature[or]The Ash Whelp[purely at random] hiccups, then burps, then finally coughs up a small fireball which is lobbed at you.  You manage to avoid the poorly aimed attack!";
		otherwise if name entry is "feral sea dragon" or name entry is "feral sea dragoness":
			if fbhit is 2:
				say "[one of]The sea dragon[or]The blue dragon[or]The [name entry][purely at random] unleashes a blast of scalding water like a firehose that slams into you.  You are knocked over and scalded badly by the constant stream of steaming sea water.  You take [special-style-2][dam][roman type] damage!";
			otherwise if fbhit is 1:
				say "[one of]The sea dragon[or]The blue dragon[or]The [name entry][purely at random] unleashes a blast of scalding water like a firehose that slams into you.  You dodge and weave away from the constant stream of steaming sea water, but are struck and scalded by it a several times.  You take [special-style-2][dam][roman type] damage!";
			otherwise:
				say "[one of]The sea dragon[or]The blue dragon[or]The [name entry][purely at random] unleashes a blast of scalding water like a firehose towards you.  You manage to dodge and weave away, rather narrowly at times, from the constant stream of steaming sea water!";
		otherwise if name entry is "Yamato Dragon" or name entry is "Yamato Dragoness":
			if fbhit is 2:
				say "[one of]The oriental dragon[or]The [name entry][or]The serpentine dragon[purely at random] exhales a wave of blue fire over you.  Strangely, it doesn't burn but every pain receptor on your body screams in agony.  You suffer [special-style-2][dam][roman type] damage!";
			otherwise if fbhit is 1:
				say "[one of]The oriental dragon[or]The [name entry][or]The serpentine dragon[purely at random] exhales a wave of blue fire towards you.  Thankfully, you're only caught by part of the blast which strangely doesn't burn you, but everywhere the blue flames lick at screams in agony.  You suffer [special-style-2][dam][roman type] damage!";
			otherwise:
				say "[one of]The oriental dragon[or]The [name entry][or]It[or]The serpentine dragon[purely at random] exhales a wave of blue fire over you.  You thankfully manage to evade the strange blast which strangely doesn't seem to have damaged the landscape around you.";
		otherwise if name entry is "Salamander":
			if fbhit is 2:
				say "[one of]The salamander[or]The fiery amphibian[or]The lizard-like creature[purely at random] focuses its heated aura and unleashes a blast of it at you, striking you soundly.  The heat threatens is like that of a blast furnace and threatens to overwhelm you.  You suffer [special-style-2][dam][roman type] damage!";
			otherwise if fbhit is 1:
				say "[one of]The salamander[or]The fiery amphibian[or]The lizard-like creature[purely at random] focuses its heated aura and unleashes a blast of it at you.  Thankfully, you're only caught by edge of the blast, but even that feels as hot as an oven.  You suffer [special-style-2][dam][roman type] damage!";
			otherwise:
				say "[one of]The salamander[or]The fiery amphibian[or]The lizard-like creature[purely at random] focuses its heated aura and unleashes a blast of it at you.  You thankfully manage to get out of the way, only feeling a brief rise in temperature and suffering no ill effects.";
		otherwise if name entry is "Magic Drake":
			if fbhit is 2:
				say "[one of]The scaly sorceress[or]The magical drake[or]The dragon woman[or]The buxom shemale[at random] opens her maw and unleashed a stream of sparkling green flames.  This magical blast strikes you soundly, both burning hot and strangely arousing, sapping your strength to fight on.  You suffer [special-style-2][dam][roman type] damage!";
			otherwise if fbhit is 1:
				say "[one of]The scaly sorceress[or]The magical drake[or]The dragon woman[or]The buxom shemale[at random] opens her maw and unleashed a stream of sparkling green flames.  You're briefly caught by the edge of this magical blast as you unsuccessfully try to avoid it.  The strange fire is both burning hot and also strangely arousing.  It saps some of your strength to fight on.  You suffer [special-style-2][dam][roman type] damage!";
			otherwise:
				say "[one of]The scaly sorceress[or]The magical drake[or]The dragon woman[or]The buxom shemale[at random] opens her maw and unleashed a stream of sparkling flames.  Her head swivels after you, chasing you with the blast, but you manage to evade the magical flames until the fiery attack is over.";
		otherwise:
			if fbhit is 2:
				say "[special-style-2][one of]Your opponent[or]The [name entry][or]Your enemy[purely at random] unleashes a blast of fire at you.  The flames wash over you, burning you badly.  You take [dam] damage![roman type]";
			otherwise if fbhit is 1:
				say "[one of]Your opponent[or]The [name entry][or]Your enemy[purely at random] unleashes a blast of [special-style-2]fire[roman type] at you.  You try to evade, but are still partially caught in the flames, burning you.  You take [special-style-2][dam][roman type] damage!";
			otherwise:
				say "[one of]Your opponent[or]The [name entry][or]Your enemy[purely at random] unleashes a blast of fire at you.  The flames come close, but you manage to get out of the way barely in time!";
		if fbhit > 0:
			now damagein is dam;
			say "[areaabsorbancy]";		[area of effect attack]
			now absorb is ( absorb + 1 ) / 2;	[total defense value halved]
			if absorb is greater than dam:
				now absorb is dam;
			if absorb is greater than 0:
				say "You prevent [special-style-1][absorb][roman type] damage!";
			decrease hp of the player by dam;
			increase hp of player by absorb;
			follow the player injury rule;
			say "You are [descr].";
		now peppereyes is 0;										[pepperspray wears off]
		if hp of the player is greater than 0 and libido of player < 110:
			wait for any key;
		otherwise:
			if hp of player <= 0, now fightoutcome is 20;
			if libido of player >= 110, now fightoutcome is 21;
			Lose;
		rule succeeds;
	otherwise if a random chance of firebreathcount in 100 succeeds:		[warning + normal attack]
		say "[one of]The creature[or]Your opponent[or]The [name entry][purely at random] takes a deep breath and its insides rumble distressingly as it continues its assault.";
		say "[line break]";
		now firebreathready is true;
		retaliate;
	otherwise:											[normal attack]
		if firebreathcount is 0:
			now firebreathcount is 20;
		otherwise:
			increase firebreathcount by a random number between 2 and 6;
			if firebreathcount > 40, now firebreathcount is 40;
		retaliate;



Alt Combat ends here.
