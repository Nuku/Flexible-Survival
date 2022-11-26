Version 1 of Time by Core Mechanics begins here.
[ Version 1 - Extracted during dissection of the Story.ni - Wahn]

Part 0 - Variables

Everyturn rules is a rulebook.
Turns is a number that varies. Turns is 240. [current turn, each turn is 3 hours long and the variable counts DOWN towards targetturns]
Targetturns is a number that varies. Targetturns is usually -240. [turn in which the game ends - Turns counts towards this]
TimekeepingVar is a number that varies. [helps determine which turn in a given day it is]
Lastjournaluse is a number that varies. Lastjournaluse is usually 248.
skipturnblocker is a number that varies.
balloversize is a number that varies.
restoration is a number that varies. [part of the "Physical Booster" feat]
TurnsCount is a number that varies. TurnsCount is usually 0.[Represents the number of turns that have passed]

[Default starting date is 2008-04-11]
DateDay is a number that varies. DateDay is usually 11.
DateMonth is a number that varies. DateMonth is usually 4.
DateYear is a number that varies. DateYear is usually 2008.

playon is a number that varies. [endless play variable]

Part 1 - Turnpass Rule (it makes the world go round)

This is the turnpass rule:
	now looknow is 0;
	now ishunting is false;
	now showlocale is true;
	if the story has ended:
		rule succeeds;
	follow the cock descr rule;
	if "Sanity Saver" is listed in the feats of Player:
		now humanity of Player is 100;
	follow the cunt descr rule;
	follow the breast descr rule;
	if HP of Velos > 2:
		if Velos is not in the Location of Player:		[traveling w/player]
			now Velos is in the Location of Player;
	if Breast Size of Player > 26, now Breast Size of Player is 26;
	let oldlib be Libido of Player;
	if Libido of Player < 100 and "Horny Bastard" is listed in feats of Player:
		increase Libido of Player by square root of ( 55 - ( Libido of Player / 2 ) );
		if Libido of Player > 100, now Libido of Player is 100;
	if Libido of Player > 20 and "Cold Fish" is listed in feats of Player and Libido of Player < 100:
		decrease Libido of Player by square root of ( Libido of Player - 15 );
	if oldlib < 80 and Libido of Player > 79:
		say "You now have trouble thinking of anything but sexual satisfaction![no line break][if Player is male] Your cock[smn] [ismv] fully erect constantly and drool[smv] precum steadily.[no line break][end if][if Player is female] Your cunt[sfn] overflow[sfv] with hot juices that run down your thighs.[no line break][end if][line break]";
	else if oldlib < 50 and Libido of Player > 49:
		say "Your thoughts have sunk to almost constant depravity![no line break][if Player is male] Your cock[smn] remain[smv] perpetually hard and leaking precum.[no line break][end if][if Cunt Count of Player is 1] Your cunt[sfn] [isfv] hot and dripping juices as your arousal builds.[no line break][end if][line break]";
	if hunger of Player < 0, now hunger of Player is 0;
	if thirst of Player < 0, now thirst of Player is 0;
	if HP of Player < MaxHP of Player and NoHealMode is false:
		increase HP of Player by Stamina of Player divided by 2;
		if carried of First Aid Manual > 0, increase HP of Player by 1;
	if "Regeneration" is listed in feats of Player:
		increase HP of Player by (level of Player divided by 3);
	if "Rapid Healing" is listed in feats of Player:
		increase HP of Player by 2;
	let yy be 1;
	if "Singular" is listed in feats of Player and a random chance of 1 in yy succeeds:
		let z be 0;
		if FaceName of Player is BodyName of Player:
			now z is z;
		else:
			now z is 1;
		if TailName of Player is BodyName of Player:
			now z is z;
		else:
			now z is 1;
		if SkinName of Player is BodyName of Player:
			now z is z;
		else:
			now z is 1;
		if CockName of Player is BodyName of Player:
			now z is z;
		else:
			now z is 1;
		if BodyName of Player is "Human" or ( Resolution of Secure Area is 2 and humanity of Player > 49 ): [blocked for humans and active shifters]
			now z is 0;
		if z is 1:
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y from the Table of Random Critters;
				if Name entry exactly matches the text BodyName of Player, case insensitively:
					if ( there is no resbypass in row MonsterID of Table of Random Critters or resbypass entry is false ) and ( there is no non-infectious in row MonsterID of Table of Random Critters or non-infectious entry is false ):
						now MonsterID is y;
						say "You can feel the nanites inside you working voraciously to convert your flesh to one whole form.";
						now researchbypass is 1;
						infect;
						now researchbypass is 0;
					break;
	if "Passing Grade Chest" is listed in feats of Player and Breast Size of Player > 4:
		now Breast Size of Player is 4;
		say "You feel the pressure in your chest suddenly abate with a rush of relief.";
	if "Always Cocky" is listed in feats of Player and Cock Count of Player is 0:
		now Cock Count of Player is 1;
		now Cock Length of Player is 5;
		now Ball Size of Player is 3;
		say "You feel a pressure at your groin that soon bursts forth as a brand new cock. This [Cock of Player] shaft spurts and dribbles with cum from its orgasmic formation.";
	else if "Always A Pussy" is listed in feats of Player and Cunt Count of Player is 0:
		now Cunt Count of Player is 1;
		now Cunt Depth of Player is 5;
		now Cunt Tightness of Player is 3;
		say "You feel a tingling dampness at your groin that soon turns into a wet gush of fluids as your flesh splits open into a brand new pussy. This dripping cunny is sopping with feminine juices from its orgasmic formation.";
	if balloversize is 0:
		if ( scalevalue of Player is 1 or scalevalue of Player is 2 ) and Ball Size of Player >= 4:
			if CockName of Player is not "Tanuki" and player is not internal:
				decrease Dexterity of Player by 1 + (dexterity of Player / 10 );
				now balloversize is 1 + (dexterity of Player / 10 );
				say "     Your balls, so huge when compared to your [Body Size Adjective of Player] frame, are so big and heavy that it's difficult to carry them around, hindering your ability to move around somewhat.";
		else if ( scalevalue of Player is 3 or scalevalue of Player is 4 ) and Ball Size of Player >= 6:
			if CockName of Player is not "Tanuki" and player is not internal:
				decrease Dexterity of Player by 1 + (dexterity of Player / 10 );
				now balloversize is 1 + (dexterity of Player / 10 );
				say "     Your balls, are so big and heavy that it's difficult to carry them around, hindering your ability to move around somewhat.";
		else if Ball Size of Player >= 7:
			if CockName of Player is not "Tanuki" and player is not internal:
				decrease Dexterity of Player by 1 + (dexterity of Player / 10 );
				now balloversize is 1 + (dexterity of Player / 10 );
				say "     Your balls, huge even when compared to your huge frame, are so massive and heavy that it's difficult to carry them around, hindering your ability to move around somewhat.";
	else:
		if ( ( scalevalue of Player is 1 or scalevalue of Player is 2 ) and Ball Size of Player < 4 ) or ( ( scalevalue of Player is 3 or scalevalue of Player is 4 ) and Ball Size of Player < 6 ) or ( Ball Size of Player < 7 ):
			increase dexterity of Player by balloversize;
			now balloversize is 0;
			say "     Your balls, no longer quite so huge compared to your [if scalevalue of Player is not 3][Body Size Adjective of Player] [end if]body, no longer hinder you. Your legs definitely feel better for not having to carry such a heavy weight anymore.";
		else if CockName of Player is "Tanuki":
			increase dexterity of Player by balloversize;
			now balloversize is 0;
			say "     Your mystical, Tanuki nature allows you to carry your oversize balls with ease, no longer hindered by their massive size.";
		else if Player is internal:
			increase dexterity of Player by balloversize;
			now balloversize is 0;
			say "     Your massive balls, having become internalized, no longer hinder your movement quite so much. You can still feel them there, heavily resting inside you, but they're no longer in the way at least.";
	follow the check heat rule;
	if Libido of Player >= 99 and humanity of Player > 0 and skipturnblocker is 0:
		say "[spontaneousorgasm]";
		decrease humanity of Player by a random number between 1 and 2;
		if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 0 and 1;
		now Libido of Player is 75;
		if "Horny Bastard" is listed in feats of Player, now Libido of Player is 80;
		if "Cold Fish" is listed in feats of Player, now Libido of Player is 60;
	if HP of Player > MaxHP of Player, now HP of Player is MaxHP of Player;
	if HP of Player < 0, now HP of Player is 1;
	if ( a random number from 1 to 20 ) > ( a random number between 1 and ( stamina of Player + 1 ) ):
		increase hunger of Player by 1;
		if number of filled rows in Table of PlayerChildren > 0 and a random chance of 1 in 2 succeeds, increase hunger of Player by 1;
		if "Spartan Diet" is listed in feats of Player and hunger of Player > 0 and a random chance of 1 in 2 succeeds:
			decrease hunger of Player by 1;
	if Player can vore and scalevalue of Player > 1:
		increase hunger of Player by a random number between 1 and (1 + scalevalue of Player);
		if "Spartan Diet" is listed in feats of Player and hunger of Player > 0 and a random chance of 1 in 2 succeeds:
			decrease hunger of Player by 1;
	if a random number from 1 to 25 > ( a random number between 1 and ( stamina of Player + 1 ) ):
		increase thirst of Player by 3;
		if number of filled rows in Table of PlayerChildren > 0, increase thirst of Player by 1;
		if "Spartan Diet" is listed in feats of Player and thirst of Player > 0:
			decrease thirst of Player by 1;
	if "Automatic Survival" is listed in feats of Player:
		now thirst of Player is 0;
		now hunger of Player is 0;
	if the remainder after dividing turns by 3 is 0:
		if "Perky" is listed in feats of Player:
			increase morale of Player by 1;
		now restoration is 0;
		if "Physical Booster" is listed in feats of Player and wrcursestatus is not 5:
			if Strength of Player < 14 and a random chance of 1 in 2 succeeds and restoration is 0:
				increase Strength of Player by 1;
				increase capacity of Player by 5;
				increase hunger of Player by 6;
				say "Your body strives to restore its lost might and rebuilds your muscles. Your stomach grumbles with hunger at this sudden effort. [bold type]Strength increased by 1.[roman type][line break]";
				now restoration is 1;
			if Stamina of Player < 14 and a random chance of 1 in 2 succeeds and restoration is 0:
				increase Stamina of Player by 1;
				if remainder after dividing stamina of Player by 2 is 0:
					increase maxHP of Player by level of Player plus 1;
				increase hunger of Player by 6;
				say "Your body strives to restore its lost hardiness and toughens your body. Your stomach grumbles with hunger at this sudden effort. [bold type]Stamina increased by 1.[roman type][line break]";
				now restoration is 1;
			if Dexterity of Player < 14 and a random chance of 1 in 2 succeeds and restoration is 0:
				increase Dexterity of Player by 1;
				increase hunger of Player by 6;
				say "Your body strives to regain its lost agility and restores your flexibility. Your stomach grumbles with hunger at this sudden effort. [bold type]Dexterity increased by 1.[roman type][line break]";
				now restoration is 1;
		if "Mental Booster" is listed in feats of Player and wrcursestatus is not 5:
			if Intelligence of Player < 14 and a random chance of 1 in 2 succeeds and restoration is 0:
				increase Intelligence of Player by 1;
				increase hunger of Player by 3;
				increase thirst of Player by 5;
				say "Your body strives to restore your mental functions. You stomach churns and you sweat profusely from the effort of this process. [bold type]Intelligence increased by 1.[roman type][line break]";
				now restoration is 1;
			if Charisma of Player < 14 and a random chance of 1 in 2 succeeds and restoration is 0:
				increase Charisma of Player by 1;
				increase hunger of Player by 3;
				increase thirst of Player by 5;
				now restoration is 1;
				say "Your body strives to restore your natural charm and allure. You stomach churns and you sweat profusely from the effort of this process. [bold type]Charisma increased by 1.[roman type][line break]";
				now restoration is 1;
			if Perception of Player < 14 and a random chance of 1 in 2 succeeds and restoration is 0:
				increase Perception of Player by 1;
				increase hunger of Player by 3;
				increase thirst of Player by 5;
				say "Your body strives to restore your enhance perceptive abilities. You stomach churns and you sweat profusely from the effort of this process. [bold type]Perception increased by 1.[roman type][line break]";
				now restoration is 1;
		if hunger of Player > 90:
			say "You will die if you don't eat soon.";
		else if hunger of Player > 50:
			say "Your stomach feels like a black hole of pain.";
		else if hunger of Player > 30:
			say "You're famished.";
		else if hunger of Player > 3:
			say "You feel a little hungry.";
		if hunger of Player > 30:
			decrease Morale of Player by ( hunger of Player minus 30 ) divided by 5;
		if hunger of Player > 99:
			now HP of Player is -9999;
			end the story saying "You have died of hunger.";
		if thirst of Player > 90:
			say "You will die if you don't drink something soon.";
		else if thirst of Player > 50:
			say "Your throat is parched and your lips cracking.";
		else if thirst of Player > 30:
			say "You're really thirsty!";
		else if thirst of Player > 12:
			say "You feel a little thirsty.";
		if thirst of Player > 30:
			decrease Morale of Player by ( thirst of Player minus 30 ) divided by 5;
		if thirst of Player > 99:
			now HP of Player is -9999;
			end the story saying "You have died of thirst.";
		if hunger of Player > 50 or thirst of Player > 50:
			say "Maybe you should [bold type]scavenge[roman type] for food! Go to a quick travel location and find something quick.";
		let maxmorale be ( Charisma of Player plus Perception of Player );
		let moralereset be ( maxmorale plus Level of Player );
		if "Perky" is listed in feats of Player:
			increase moralereset by ( moralereset divided by 5);
			increase maxmorale by ( maxmorale divided by 5);
		if "Proud Parent" is listed in feats of Player:
			let SP be SarahPups / 5;
			if SP > 20, now SP is 20;
			increase moralereset by SP;
			increase maxmorale by SP;
		else if Morale of Player > moralereset:
			say "The rush of giddiness leaves you as your morale normalizes, leaving you feeling confident but no longer manic.";
			now Morale of Player is maxmorale;
	let corruption be 0;
	if SkinName of Player is not "Human", increase corruption by a random number from 0 to 1;
	if CockName of Player is not "Human", increase corruption by a random number from 0 to 1;
	if BodyName of Player is not "Human", increase corruption by a random number from 0 to 1;
	if TailName of Player is not "Human", increase corruption by a random number from 0 to 1;
	if FaceName of Player is not "Human", increase corruption by a random number from 0 to 1;
	if corruption > 0:
		if "Weak Psyche" is listed in feats of Player:
			increase corruption by a random number from 0 to 1;
			increase corruption by a random number from 0 to 1;
		if "Strong Psyche" is listed in feats of Player:
			decrease corruption by a random number from 0 to 2;
		decrease corruption by a random number from 0 to ( ( Perception of Player minus 10) divided by 2 );
		decrease corruption by a random number from 0 to ( ( Charisma of Player minus 10) divided by 2 );
	if corruption > 0:
		decrease Humanity of Player by corruption;
		follow the brain descr rule;
		say "The nanites inside you work at rewiring your stubborn brain, leaving you with [descr] ([humanity of Player]/100)[line break]";
		if humanity of Player < 50:
			say "Maybe you should [bold type]use[roman type] that [bold type]journal[roman type] to help collect your thoughts.";
	pregprotocol; [Moved to pregnancy in core mechanics]
	if Humanity of Player < 1 and Scenario is not "Researcher" and skipturnblocker is 0:
		end the story saying "Your mind is lost to the infection.";
	if Humanity of Player < 1 and scenario is "Researcher", now humanity of Player is 1;
	decrease turns by 1;
	if ( turns minus targetturns ) <= 0 and playon is 0 and skipturnblocker is 0:
		end the story saying "You survived until the rescue came.";
	else if ( turns minus targetturns ) < 20 and a random chance of 1 in 3 succeeds and skipturnblocker is 0 and playon is 0:
		say "[one of]You see an airplane soar overhead at jet speeds.[or]A peek from a roof shows what looks like some kind of vehicle approaching the city.[or]You have an unending sense of anticipation.[or]It's all coming to a close soon, just hang in there![at random]";
	follow the everyturn rules;
	rule succeeds;

Part 2 - Time Functions

Chapter 1 - General Stuff

instead of waiting:
	follow the turnpass rule;

an everyturn rule:
	now TimekeepingVar is remainder after dividing turns by 8;

Chapter 2 - Time of Day

To say time of day:
	if TimekeepingVar is:
		-- 7:
			say "early morning";
		-- 6:
			say "morning";
		-- 5:
			say "afternoon";
		-- 4:
			say "evening";
		-- 3:
			say "early night";
		-- 2:
			say "night";
		-- 1:
			say "post midnight";
		-- 0:
			say "pre dawn";
		-- -1:
			say "early morning";
		-- -2:
			say "morning";
		-- -3:
			say "afternoon";
		-- -4:
			say "evening";
		-- -5:
			say "early night";
		-- -6:
			say "night";
		-- -7:
			say "post midnight";
		-- -8:
			say "pre dawn";

To say short time of day:
	if TimekeepingVar is:
		-- 7:
			say "morning";
		-- 6:
			say "morning";
		-- 5:
			say "day";
		-- 4:
			say "afternoon";
		-- 3:
			say "evening";
		-- 2:
			say "evening";
		-- 1:
			say "evening";
		-- 0:
			say "evening";
		-- -1:
			say "evening";
		-- -2:
			say "evening";
		-- -3:
			say "day";
		-- -4:
			say "afternoon";
		-- -5:
			say "evening";
		-- -6:
			say "evening";
		-- -7:
			say "evening";
		-- -8:
			say "evening";

Chapter 3 - Day/Night

daytimer is a thing.
daytimer can be day or night. [daytimer is normally true.	[True/False variable for to indicate if day or night] ]

definition: Daytimer is day:
	if remainder after dividing turns by 8 > 3 or ( remainder after dividing turns by 8 < 0 and remainder after dividing turns by 8 > -5 ):
		yes;
	else:
		no;

definition: Daytimer is night:
	if remainder after dividing turns by 8 > 3 or ( remainder after dividing turns by 8 < 0 and remainder after dividing turns by 8 > -5 ):
		no;
	else:
		yes;

to decide if the time is post midnight:
	if TimekeepingVar is 1 or TimekeepingVar is -7:
		decide yes;
	decide no;

to decide if the time is pre dawn:
	if TimekeepingVar is 0 or TimekeepingVar is -8:
		decide yes;
	decide no;

to decide if the time is early morning:
	if TimekeepingVar is 7 or TimekeepingVar is -1:
		decide yes;
	decide no;

to decide if the time is morning:
	if TimekeepingVar is 6 or TimekeepingVar is -2:
		decide yes;
	decide no;

to decide if the time is evening:
	if TimekeepingVar is 4 or TimekeepingVar is -4:
		decide yes;
	decide no;

to decide if the time is afternoon:
	if TimekeepingVar is -3 or TimekeepingVar is 5:
		decide yes;
	decide no;

to decide if the time is night:
	if TimekeepingVar is 2 or TimekeepingVar is -6:
		decide yes;
	decide no;

to decide if the time is early night:
	if TimekeepingVar is 3 or TimekeepingVar is -5:
		decide yes;
	decide no;

Chapter 4 - Sunrise/Sunset

LastTurnDay is a truth state that varies.

an everyturn rule:
	if daytimer is day: [currently day]
		if LastTurnDay is false: [last turn was night]
			say "[bold type]The sun rises over the city.[roman type][line break]";
			if Offspring is in bunker and number of filled rows in the Table of PlayerBunkerChildren > 0: [chance for presents!]
				let PresentChance be 1;
				if number of filled rows in the Table of PlayerBunkerChildren > 10:
					increase PresentChance by 5;
				else if number of filled rows in the Table of PlayerBunkerChildren > 7:
					increase PresentChance by 4;
				else if number of filled rows in the Table of PlayerBunkerChildren > 5:
					increase PresentChance by 3;
				else if number of filled rows in the Table of PlayerBunkerChildren > 3:
					increase PresentChance by 2;
				else if number of filled rows in the Table of PlayerBunkerChildren > 1:
					increase PresentChance by 1;
				if a random chance of PresentChance in 10 succeeds: [got a present]
					add "offspring present" to invent of Bunker;
			if HP of Blake > 50 and HP of Blake < 90 and a random chance of 1 in 2 succeeds and Energy of Blake < 9: [Blake whoring]
				increase Energy of Blake by 1; [add on one profit share of whoring him out]
		now LastTurnDay is true;
		if WerewolfWatching is true: [she's only out at night]
			now WerewolfWatching is false;
	else if daytimer is night: [currently night]
		if LastTurnDay is true: [last turn was day]
			say "[bold type]The sun sets and darkness covers the city.[roman type][line break]";
		now LastTurnDay is false;
		if Player is in Urban Forest and WerewolfRelationship is 0:
			if WerewolfWatching is false: [initial message]
				say "     Here between the untamed trees of the Urban Forest, the shadows seem especially deep and seem to play tricks on your eyes. Every little movement of branches and leaves draws your gaze, and the ominous feeling of being watched fills you with tension. The sensation of something's predatory gaze resting on you can't be all in your head, can it?";
				now WerewolfWatching is true;
			else: [repeat message for following turns]
				if a random chance of 1 in 3 succeeds:
					say "     You [italic type]still[roman type] can't shake the feeling that something is watching you. A cold shiver runs down your back.";
		else:
			now WerewolfWatching is false;

Chapter 5 - Date

[Passage of Days, Months and Years. keeps track of date directly]
an everyturn rule:
	if TimekeepingVar is 0 or TimekeepingVar is -8: [early dawn, 0:00-3:00]
		increase DateDay by 1;
		if DateMonth is 1: [January]
			if DateDay is 32:
				now DateDay is 1;
				now DateMonth is 2;
		else if DateMonth is 2: [February]
			if DateYear is 2008:
				if DateDay is 30:
					now DateDay is 1;
					now DateMonth is 3;
			else:
				if DateDay is 29:
					now DateDay is 1;
					now DateMonth is 3;
		else if DateMonth is 3: [March]
			if DateDay is 32:
				now DateDay is 1;
				now DateMonth is 4;
		else if DateMonth is 4: [April]
			if DateDay is 31:
				now DateDay is 1;
				now DateMonth is 5;
		else if DateMonth is 5: [May]
			if DateDay is 32:
				now DateDay is 1;
				now DateMonth is 6;
		else if DateMonth is 6: [June]
			if DateDay is 31:
				now DateDay is 1;
				now DateMonth is 7;
		else if DateMonth is 7: [July]
			if DateDay is 32:
				now DateDay is 1;
				now DateMonth is 8;
		else if DateMonth is 8: [August]
			if DateDay is 32:
				now DateDay is 1;
				now DateMonth is 9;
		else if DateMonth is 9: [September]
			if DateDay is 31:
				now DateDay is 1;
				now DateMonth is 10;
		else if DateMonth is 10: [October]
			if DateDay is 32:
				now DateDay is 1;
				now DateMonth is 11;
		else if DateMonth is 11: [November]
			if DateDay is 31:
				now DateDay is 1;
				now DateMonth is 12;
		else if DateMonth is 12: [December]
			if DateDay is 32:
				now DateDay is 1;
				now DateMonth is 1;
				increase DateYear by 1;

[This is a function that converts the number of turns that have passed into a date]
to decide what number is (trncount - a number) converted to (ReturnType - a text):
	let Tleap be true;[According to the calendar above the only leap year that exists is 2008]
	let tempDayCount be trncount + 102;[ adjusts days gone by to current date. This is  Redundant because of DayCount but allows the function to be independent of global variables.]
	let tempYearCount be 0;[for calculating the years gone by]
	let tempMonthCount be 0;[For calculating the months gone by]
	if tempDayCount > 366:[If at least one year has passed]
		while tempDayCount > 366: [subtract the years until a number of turns equalling less than one year is reached]
			if Tleap is true:[2008 has not been counted]
				decrease tempDayCount by 366;[Subtract 2008]
				now Tleap is false;
				increase tempYearCount by 1;
			else:[2008 has been counted]
				decrease tempDayCount by 365;[subtract one year]
				increase tempYearCount by 1;
	if ReturnType is "years":[Now that years have been counted we can return it if the user of the function wants to return years]
		decide on tempYearCount + 2008;
	if tempDayCount <= 31:[The month is January]
		decide on 1;
	else if Tleap is true:[It is a leap year or 2008]
		if tempDayCount <= 60:[The month is February]
			if ReturnType is "months":
				decide on 2;
			else if ReturnType is "days":[The user of the function wants to return days]
				decide on tempDayCount - 31;
		if tempDayCount <= 91:[The month is march]
			if ReturnType is "months":
				decide on 3;
			else if ReturnType is "days":
				decide on tempDayCount - 60;
		if tempDayCount <= 121:[The month is April]
			if ReturnType is "months":
				decide on 4;
			else if ReturnType is "days":
				decide on tempDayCount - 91;
		if tempDayCount <= 152:[The month is may]
			if ReturnType is "months":
				decide on 5;
			else if ReturnType is "days":
				decide on tempDayCount - 121;
		if tempDayCount <= 182:[The month is June]
			if ReturnType is "months":
				decide on 6;
			else if ReturnType is "days":
				decide on tempDayCount - 152;
		if tempDayCount <= 213:[The month is July]
			if ReturnType is "months":
				decide on 7;
			else if ReturnType is "days":
				decide on tempDayCount - 182;
		if tempDayCount <= 244:[The month is August]
			if ReturnType is "months":
				decide on 8;
			else if ReturnType is "days":
				decide on tempDayCount - 213;
		if tempDayCount <= 274:[The month is September]
			if ReturnType is "months":
				decide on 9;
			else if ReturnType is "days":
				decide on tempDayCount - 244;
		if tempDayCount <= 305:[The month is October]
			if ReturnType is "months":
				decide on 10;
			else if ReturnType is "days":
				decide on tempDayCount - 274;
		if tempDayCount <= 335:[The month is November]
			if ReturnType is "months":
				decide on 11;
			else if ReturnType is "days":
				decide on tempDayCount - 305;
		if tempDayCount <= 366:[The month is December]
			if ReturnType is "months":
				decide on 12;
			else if ReturnType is "days":
				decide on tempDayCount - 335;
	else:[-----                    -----                         It is not a leap year]
		if tempDayCount < 60:[The month is February]
			if ReturnType is "months":
				decide on 2;
			else if ReturnType is "days":[The user of the function wants to return days]
				decide on tempDayCount - 31;
		if tempDayCount < 91:[The month is march]
			if ReturnType is "months":
				decide on 3;
			else if ReturnType is "days":
				decide on tempDayCount - 60;
		if tempDayCount < 121:[The month is April]
			if ReturnType is "months":
				decide on 4;
			else if ReturnType is "days":
				decide on tempDayCount - 91;
		if tempDayCount < 152:[The month is may]
			if ReturnType is "months":
				decide on 5;
			else if ReturnType is "days":
				decide on tempDayCount - 121;
		if tempDayCount < 182:[The month is June]
			if ReturnType is "months":
				decide on 6;
			else if ReturnType is "days":
				decide on tempDayCount - 152;
		if tempDayCount < 213:[The month is July]
			if ReturnType is "months":
				decide on 7;
			else if ReturnType is "days":
				decide on tempDayCount - 182;
		if tempDayCount < 244:[The month is August]
			if ReturnType is "months":
				decide on 8;
			else if ReturnType is "days":
				decide on tempDayCount - 213;
		if tempDayCount < 274:[The month is September]
			if ReturnType is "months":
				decide on 9;
			else if ReturnType is "days":
				decide on tempDayCount - 244;
		if tempDayCount < 305:[The month is October]
			if ReturnType is "months":
				decide on 10;
			else if ReturnType is "days":
				decide on tempDayCount - 274;
		if tempDayCount < 335:[The month is November]
			if ReturnType is "months":
				decide on 11;
			else if ReturnType is "days":
				decide on tempDayCount - 305;
		if tempDayCount < 366:[The month is December]
			if ReturnType is "months":
				decide on 12;
			else if ReturnType is "days":
				decide on tempDayCount - 335;
	say "Error: something went wrong when calculating the date";
	decide on 999;

Chapter 6 - Guessing Periods

to guesstimate time at (x - a number):
	if x < 0:
		say "ERROR: Negative time period.";
	else if x is 0:
		say "under three hour";
	else if x <= 10:
		say "[x * 3] hours"; [up to 30 hrs]
	else if x <= 14:
		say "a day and a half or so"; [up to 42 hrs]
	else if x <= 18:
		say "two days or so"; [up to 54 hrs]
	else if x <= 22:
		say "two and a half days or so"; [up to 66 hrs]
	else if x <= 28:
		say "three days or so"; [up to 84 hrs]
	else:
		say "[( x / 8 )] days";

Chapter 7 - Extra Play-Time

To Extend game by (x - a number):
	decrease targetturns by x;
	say "[bold type]((You have earned additional time: [x divided by 8] days, [(remainder after dividing x by 8) times 3] hours))[roman type][line break]";

Chapter 8 - Endless Play

Playing on is an action applying to nothing.
understand "play on" as playing on.

carry out playing on:
	now playon is 1;
	say "You are now in extended play mode. The rescue will never come.";

Chapter 9 - Early End

Early Birding is an action applying to nothing.
understand "end now" and "end game" as early birding.
quitter is a number that varies.

carry out early birding:
	if playon is 1:
		say "You are already in play on mode. There is no rescue to wait for.";
		stop the action;
	decrease the score by 100;
	now quitter is 1;
	end the story saying "You waited for rescue.";

Time ends here.
