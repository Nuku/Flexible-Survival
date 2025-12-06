Version 1 of Feats by Core Mechanics begins here.
[- Originally Authored By: Nuku Valente -]

"Controls feats for Flexible Survival"

Section 0 - Definitions (feat-based)

A person can be submissive. A person is usually not submissive.

Definition: A person (called x) is submissive:
	if "Submissive" is listed in feats of x, yes;
	no;

A person can be dominant. A person is usually not dominant.

Definition: A person (called x) is dominant:
	if "Dominant" is listed in feats of x, yes;
	no;

A person can be kinky. A person is usually not kinky.

Definition: A person (called x) is kinky:
	if "Kinky" is listed in feats of x, yes;
	no;

A person can be twistcapped. A person is usually not twistcapped.

Definition: A person (called x) is twistcapped:
	if "Twisted Capacity" is listed in feats of x, yes;
	no;

Definition: A person is fastlearning:
	if "Fast Learner" is listed in feats of Player, yes;
	no;

Definition: A person (called x) is MalePreferred: [player wants to or must remain male]
	if "Male Preferred" is listed in feats of x, yes;
	if "Female Preferred" is listed in feats of x or "Herm Preferred" is listed in feats of x, no;
	if "Single Sexed" is listed in feats of x and x is puremale, yes;
	no;

Definition: A person (called x) is FemalePreferred: [player wants to or must remain female]
	if "Female Preferred" is listed in feats of x, yes;
	if "Male Preferred" is listed in feats of x or "Herm Preferred" is listed in feats of x, no;
	if "Single Sexed" is listed in feats of x and x is purefemale, yes;
	no;

Definition: A person (called x) is HermPreferred: [player wants to or must remain herm]
	if "Herm Preferred" is listed in feats of x, yes;
	if "Male Preferred" is listed in feats of x or "Female Preferred" is listed in feats of x or "Single Sexed" is listed in feats of x, no;
	if "Always Cocky" is listed in feats of x and "Always A Pussy" is listed in feats of x, yes;
	no;

Table of gainable feats
title	subtable	description	toggle
"Nothing"	--	"Nothing here."	gainfeat rule
with 100 blank rows.

Section 1 - Basic Feats

basic feats is a featset.
A featset can be functional. A featset is usually not functional.
basic feats is functional.
fun feats is a featset.
featunlock is a number that varies.	[linked to Dr. Matt/Dr. Mouse hospital quest]
autofeatloading is a truth state that varies. autofeatloading is usually false.
boosterfeats is a number that varies. boosterfeats is usually 0.
muggerison is a truth state that varies. muggerison is usually true.
FeralBirths is a number that varies. FeralBirths is usually 0.
vampiric is a truth state that varies. vampiric is usually false.
The player has a number called featgained.

FeatList is an action applying to nothing.
understand "Feats List" as FeatList.
understand "FeatsList" as FeatList.
understand "Feat List" as FeatList.
understand "FeatList" as FeatList.
understand "Feats" as FeatList.

carry out FeatList:
	sort Feats of Player;
	say "Feats: [if feats of Player is empty]None[else][Feats of Player][end if].";

Featgetting is an action applying to nothing.
understand "volunteer" as featgetting.

Check featgetting:
	if HP of Doctor Matt is 0, say "Volunteer for what now? You are a strange person. Considering what game this is, that says a lot!" instead;
	if featgained of Player > ( ( level of Player divided by 3 ) + foodwaterbonus + NermineFeat + boosterfeats ): [not ready for more feats]
		if Doctor Matt is visible:
			say "     As you step up to him and volunteer for testing, Dr. Matt picks up a little scanner and circles it over your torso, then shakes his head. 'I'm sorry, you're not yet ready for further procedures. You see, the nanite structures that are receptive to adjustment and reprogramming aren't all that prevalent and get deconstructed by the rest after I send a signal that seems to be lacking the right codes. It'll take some time before I can experiment on you again.'" instead;
		else:
			say "You do not yet qualify for more feats." instead;
	if HP of Doctor Matt <= 100:
		if Doctor Matt is not visible, say "Only Doctor Matt knows how to do this." instead;
	else:
		if doctor mouse is not visible, say "You should see Dr. Mouse about that." instead;

carry out featgetting:
	featget;

Featqualified is a number that varies.
Featqualified is usually 0.

To Featget:
	blank out the whole of table of gainable feats;
	repeat with x running through functional featsets:
		try addfeating x;
	if there is no title in row 1 of table of gainable feats:
		say "There are no feats to gain!";
		wait for any key;
	else:
		[change the current menu to table of Gainable Feats;
		carry out the displaying activity;]
		now featqualified is 1;
		while 1 is 1:
			repeat with y running from 1 to number of filled rows in table of gainable feats:
				choose row y from the table of gainable feats;
				say "[link][y] - [title entry][as][y][end link][line break]";
			say "[link]0 - Abort[as]0[end link][line break]";
			say "Type the number corresponding to the feat you want> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of gainable feats:
				now current menu selection is calcnumber;
				follow the gainfeat rule;
				if featqualified is 0, break;
			else if Playerinput matches "0":	[do not use calcnumber, as non-numbers will return 0]
				LineBreak;
				say "Selection aborted.";
				continue the action;
			else:
				say "Invalid Feat.";

featgrabbing is an action applying to one topic.

understand "featgrab [text]" as featgrabbing.

Check featgrabbing:
	if featqualified is 0:
		say "You are not ready to learn a new feat." instead;

Carry out featgrabbing:
	say "I think you are trying to grab the feat of [topic understood in lower case].";

To FunFeatget:
	blank out the whole of table of gainable feats;
	repeat with x running through not functional featsets:
		try addfeating x;
	if there is no title in row 1 of table of gainable feats:
		say "There are no feats to gain!";
		wait for any key;
	else:
		[change the current menu to table of Gainable Feats;
		carry out the displaying activity;]
		now featqualified is 1;
		let L be {"Haggler", "More Time", "Touched by Madness", "Vore Predator"}; [feat descs with terminating punct]
		while 1 is 1:
			repeat with y running from 1 to number of filled rows in table of gainable feats:
				choose row y from the table of gainable feats;
				say "[link][y] - [title entry][as][y][end link]: [description entry][if title entry is not listed in L]. [end if][line break]";
			say "[link]0 - Abort[as]0[end link][line break]";
			say "Type the number corresponding to the feat you want> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of gainable feats:
				now current menu selection is calcnumber;
				follow the gainfeat rule;
				if featqualified is 0: [player had a right to a feat and got it]
					decrease featgained of Player by 1; [fun feats are not counted]
					break;
			else if Playerinput matches "0":	[do not use calcnumber, as non-numbers will return 0]
				LineBreak;
				say "Selection aborted.";
				continue the action;
			else:
				say "Invalid Feat.";

Addfeating is an action applying to one thing.

carry out addfeating:
	say "Tuna";

To addfeat (x - text) with (y - text):
	if x is not listed in feats of Player:
		choose a blank row in table of Gainable Feats;
		now title entry is X;
		now toggle entry is gainfeat rule;
		now description entry is Y;
		sort table of Gainable Feats in title order;

instead of addfeating the fun feats:
	if "Male Preferred" is not listed in feats of Player and "Female Preferred" is not listed in feats of Player and "Herm Preferred" is not listed in feats of Player and "Single Sexed" is not listed in feats of Player and "Always Cocky" is not listed in feats of Player and "Always A Pussy" is not listed in feats of Player:
		if isHellhound is false or ( isHellhound is true and maleHound is true ):
			addfeat "Male Preferred" with "Outside of special circumstances, you'll remain a guy";
		if isHellhound is false or ( isHellhound is true and maleHound is false ):
			addfeat "Female Preferred" with "Outside of special circumstances, you'll remain a girl";
		if isHellhound is false:
			addfeat "Herm Preferred" with "Outside of special circumstances, you'll remain a herm";
		addfeat "Single Sexed" with "You will be male, or female, but not both";
		if isHellhound is false:
			addfeat "Always Cocky" with "Outside of special circumstances, you will always keep a cock";
			addfeat "Always A Pussy" with "Outside of special circumstances, you will always keep a pussy";
	if "Male Preferred" is listed in feats of Player:
		if "Flat Chested" is not listed in feats of Player, addfeat "Breasts" with "Despite being all male, you still grow breasts - curious";
	else:
		if "Breasts" is not listed in feats of Player, addfeat "Flat Chested" with "Your chest tends to remain flat";
	if "Modest Organs" is not listed in feats of Player and ("Passing Grade Chest" is not listed in feats of Player or Breast Size of Player < 5):
		addfeat "One Way" with "You can only grow larger, not smaller, sexually - barring specific effects";
	if "One Way" is not listed in feats of Player:
		addfeat "Modest Organs" with "Your genital growth is restricted, preventing wildly overgrown bits, barring specific effects";
	if ("One Way" is not listed in feats of Player or Breast Size of Player < 5) and "Flat Chested" is not listed in feats of Player:
		addfeat "Passing Grade Chest" with "Your breasts will never fail a test, and will remain D cupped or smaller, barring specific effects. If they do become too large, they will shrink rapidly back into line";
	if "All The Things" is not listed in feats of Player and ("One Way" is not listed in feats of Player or (Cock Count of Player < 2 and Cunt Count of Player < 2)):
		addfeat "Just One" with "You will only grow one cock, and only one cunt, never more. Possibly less";
	if "Just One" is not listed in feats of Player:
		addfeat "All The Things" with "Your groin seems to believe [']the more the merrier[']. Outside of a gender change, you will keep any [']extras['] you pick up";
	if "Bouncy Bouncy" is not listed in feats of Player and ("One Way" is not listed in feats of Player or Nipple Count of Player < 3):
		addfeat "One Pair" with "You will not grow more than two breasts";
	if "One Pair" is not listed in feats of Player:
		addfeat "Bouncy Bouncy" with "It seems that your body likes breasts a lot. You won't be losing any that you might gain";
	addfeat "Singular" with "You are not one to go in halfway. Whatever form your torso takes, the rest tends to follow";
	addfeat "Like Attracts Like" with "You will attract more monsters similar to yourself";
	addfeat "Bad Luck" with "You may end up in back-to-back fights occasionally";
	if "Cold Fish" is not listed in feats of Player:
		addfeat "Horny Bastard" with "You just can't get enough. Every few hours your libido raises all on its own";
	if "Horny Bastard" is not listed in feats of Player:
		addfeat "Cold Fish" with "Your libido will decrease over time";
	addfeat "Control Freak" with "When you win a battle, you may choose if you wish to engage in the post battle activities or not";
	if "Sterile" is not listed in feats of Player:
		addfeat "MPreg" with "You can now be impregnated and give birth even as a male/neuter (egg laying). It can occasionally open/alter sex scenes";
	if "Breeding True" is not listed in feats of Player and "Sterile" is not listed in feats of Player:
		addfeat "They Have Your Eyes" with "Any child you have will appear exactly as you at time of birth";
	if "They Have Your Eyes" is not listed in feats of Player and "Sterile" is not listed in feats of Player:
		addfeat "Breeding True" with "All new children you have will resemble their father";
	if "Sterile" is not listed in feats of Player, addfeat "Wild Womb" with "The infection is especially concentrated in your womb, causing your children to be born feral";
	if "Sterile" is not listed in feats of Player:
		addfeat "Litter Bearer" with "Greatly increases the chance of multiple children in one birth - twins or more at over 50% chance";
	if "Fertile" is listed in feats of Player:
		addfeat "Selective Mother" with "You can decide if you want to become pregnant";
[	addfeat "Unerring Hunter" with "Cheater! Well, somehow, you always find what you hunt for, provided it's in the area to be found. Amazing!"; ]
	addfeat "Curious" with "You enjoy poking around everywhere, increasing your chance of finding stuff while exploring or hunting... including trouble";
	addfeat "Kinky" with "Submitting to crazy beasts is right up your alley, and you gain morale when you do so. Being beat up still lowers it. It can occasionally open new, kinkier sex scenes";
	if "Dominant" is not listed in feats of Player:
		addfeat "Submissive" with "Gain extra XP for submitting to monsters. You may find submitting so much fun you do it spontaneously from time to time. It may occasionally open new, submissive scene variations";
	if "Submissive" is not listed in feats of Player:
		addfeat "Dominant" with "Defeating monsters gets you excited, gaining a small libido, morale or XP boost from it. It may occasionally open new, dominant scene variations";
	if Strange Serpent is resolved or scenario is "Forgotten":
		addfeat "Touched by Madness" with "On your travels you appear to have contracted some manner of strange aura which may cause some monsters to behave weirdly around you. (Caution, you may experience more extreme content by choosing this feat.)";
	addfeat "Instinctive Combat" with "With all the changes, you've gained new instincts on how to fight. You may choose [bold type]auto attack normal/berserk/seduce/pass/coward/submit[roman type]"; [put next to submissive because that seemed logical. move elsewhere if so desired.]
	if featunlock is 1:	[available after hospital quest]
		addfeat "Perky" with "You are of positive spirits, regaining morale gradually and +20% max morale";
	if "Strong Psyche" is not listed in feats of Player, addfeat "Weak Psyche" with "Having a higher mental susceptibility to corruption by the nanites, you have a weaker grip on your human identity";
	if "Weak Psyche" is not listed in feats of Player, addfeat "Strong Psyche" with "Having a higher mental resistance to corruption by the nanites, you have a stronger grip on your human identity";
	addfeat "Junk Food Junky" with "Junk food is better for you than regular food and water";
	addfeat "Ultimatum" with "You have enough! Choosing Ultimatum grants you a 10% point bonus at game end, but you [bold type]no longer receive Fun Feats[roman type]";
	addfeat "Center of Attention" with "NPCs in the library/bunker will refrain from seeking out sexual connections with each other, only looking to you instead (disables bunker/library NPC sexual relations independent of the player character)";

instead of addfeating the basic feats:
	if "Open World" is not listed in feats of Player, addfeat "City Map" with "You have better recall of the city layout and remember where most major landmarks are";
	addfeat "Survivalist" with "You are great at scavenging. When doing such, you get a +4 to finding things";
	addfeat "Roughing It" with "You can take a quick nap w/o a cot anywhere... just sleep with one eye open";
	if featunlock is 1:	[available after hospital quest]
		addfeat "Gas Cloud" with "Create a dissipating cloud to help you flee";
	if "Sterile" is not listed in feats of Player, addfeat "Fertile" with "You are especially good at producing children, increasing the chance of pregnancy and multiple children in one birth and decreasing the gestation period";
	if "Fertile" is not listed in feats of Player, addfeat "Sterile" with "You are incapable of fathering and/or mothering a child";
	if "Fertile" is listed in feats of Player:
		addfeat "Maternal" with "You love children. Even faster gestation and improves morale from childbirth";
	if number of filled rows in the Table of PlayerChildren > 0:
		addfeat "Spirited Youth" with "Your child will lend their aid in combat, occasionally dealing damage to the enemy";
	if "Spirited Youth" is listed in feats of Player and number of filled rows in the Table of PlayerChildren > 2:
		addfeat "Youthful Tides" with "Once in a while, all of your kids will swarm to your aid in battle";
	if charisma of Player > 14:
		addfeat "Haggler" with "You are an especially skilled haggler. Sometimes, you end up with two of what you are trading for!";
		if Player is not lonely:
			addfeat "Good Teacher" with "Your pets gain levels much more quickly than normal";
	if featunlock is 1:	[available after hospital quest]
		if charisma of Player > 14 and intelligence of Player > 12:
			if "Good Teacher" is listed in feats of Player:
				addfeat "Ringmaster" with "You will gain full XP while training your pets";
		if charisma of Player > 16 and number of entries in list of tamed pets > 2:
			addfeat "Double Team" with "You can now take one additional ally with you";[continue]
		if charisma of Player > 11:
			addfeat "Flash" with "Your skin/fur/scales will occasionally flash bright light, reducing your foe's chance to hit";
		if charisma of Player > 13:
			if "Flash" is listed in feats of Player:
				addfeat "Dazzle" with "Your flash can now sometimes bedazzle your enemy, making them lose their chance to retaliate";
	if stamina of Player > 11:
		addfeat "Hardy" with "Increase your max HP by 8 immediately, and gain 1 extra HP every level-up";
	if featunlock is 1:	[available after hospital quest]
		addfeat "Rapid Healing" with "Increased healing during recovery time and minor increase to healing items";
		if stamina of Player > 16 and "Rapid Healing" is listed in feats of Player:
			addfeat "Regeneration" with "Further increased healing based on level and from healing items";
	if stamina of Player > 13:
		addfeat "Iron Stomach" with "Your belly has nano resistance! Eating or drinking infectious items fails to change you";
	if stamina of Player > 14 and "Automatic Survival" is not listed in feats of Player:
		addfeat "Spartan Diet" with "You don't need 2 liters of water and great feasts to keep you going! You become thirsty and hungry slower";
	if featunlock is 1:	[available after hospital quest]
		addfeat "Vore Predator" with "Your hunger has gone out of control. Let your foes beware!";
	if (Player can vore or Player can UB) and "Iron Stomach" is listed in feats of Player:
		addfeat "Safe Appetite" with "You will not gain infection from consuming your foes";
	if stamina of Player > 14:
		addfeat "Toughened" with "You take less damage than others (-20% damage)";
	if scenario is "Researcher" and ( intelligence of Player > 14 or level of Player >= 9 ):
		addfeat "Expert Researcher" with "Your expert skills allow you a second opportunity to get an infection vial";
	if intelligence of Player > 14:
		addfeat "Fast Learner" with "You assimilate new information rapidly. -20% XP needed to level";
		addfeat "Expert Medic" with "You are especially good at using medkits, +25% hitpoints restored per use, and adds an additional use to medkits";
	if intelligence of Player > 12 and ( BodyName of Player is not "Human" or FaceName of Player is not "Human" ):
		addfeat "Know Thyself" with "By thinking like an enemy that has infected you, you know better how to deal with them and gain a +0 to +4 bonus to hit matching enemies each round. Thinking with your other head gradually gets your infected loins more excited though. You gain more XP from these fights as well";
	if intelligence of Player > 15 and level of Player > 5:
		addfeat "Weaponsmaster" with "Your experience and knowledge allow you to assess a weapon's worth and wield it better";
	addfeat "Wary Watcher" with "Always on guard, creatures won't gain first strike on you";
	if perception of Player > 14:
		addfeat "Magpie Eyes" with "You love shining things. Especially shining things on the defeated bodies of your enemies. Increased odds of drops";
		if "Magpie Eyes" is listed in feats of Player:
			addfeat "Mugger" with "You want it all! A flat drop rate increase based on perception you can (de)activate";
		addfeat "Expert Hunter" with "Your chances of hunting a specific critter with the hunt command increase";
		if "Expert Hunter" is listed in feats of Player:
			addfeat "Master Baiter" with "You are virtually assured victory when hunting a specific creature";
	if dexterity of Player > 14:
		if "Stealthy" is listed in feats of Player or "Wary Watcher" is listed in feats of Player or perception of Player > 14:
			addfeat "Experienced Scout" with "You have a chance of avoiding a random fight altogether if you so wish it";
	if dexterity of Player > 14:
		addfeat "Stealthy" with "Your chance of running into a monster is decreased while you are scavenging or exploring";
		addfeat "Martial Artist" with "You have basic martial arts training, increasing the damage you cause when you have no weapon";
		if "Martial Artist" is listed in feats of Player:
			addfeat "Black Belt" with "Your martial artistry is amazing. Your damage increases further while unarmed, and you have a small (10%) chance of avoiding hits that would otherwise have landed";
			addfeat "Natural Armaments" with "You gain additional power based on the mutation of your body, borrowing the natural weapons of your infection";
	if dexterity of Player > 11:
		if Cock Length of Player >= 12:
			addfeat "Cock Slap" with "Smack around your foes with your oversized meat to show them who's boss";
		if Ball Size of Player >= 5 and player is not internalBalls:
			addfeat "Ball Crush" with "Slam your heavy ballsack down onto your enemy to show them who's a real man";
		if Breast Size of Player > 2 and ( Breast Size of Player + ( Nipple Count of Player / 2 ) ) >= 7:
			addfeat "Boob Smother" with "Smother your foes in your pillowy rack";
	if featunlock is 1:	[available after hospital quest]
		if dexterity of Player > 14:
			addfeat "Tail Strike" with "If available, you may randomly score an additional hit with your monstrous tail";
		if strength of Player > 14:
			addfeat "Powerful" with "Boosts your potential damage by up to 25%";
		if dexterity of Player > 16 and "Powerful" is listed in feats of Player:
			addfeat "Mayhem" with "Random increase in damage based on level";
	if strength of Player > 14:
		addfeat "Strong Back" with "You can carry impressive amounts of stuff. +50 lb tolerance";
	if level of Player > 1:
		addfeat "More Time" with "You have some more precious time. Though who'd want to stay around here longer? Weirdo!";
[	addfeat "Automatic Survival" with "You forage a little here, a little there. This is a mildly cheating feat, taking it will impact your score negatively, but will remove food and water as a concern."; ]
	if HP of Doctor Matt > 4 or scenario is "Forgotten":
		addfeat "Microwaved" with "Thanks to the good advice, you have a great idea! If you can clean water, why not yourself? Genius. Gives you a very potent resistance to species reassignment";
	if featunlock is 1:	[available after hospital quest]
		if "Mutable" is not listed in feats of Player:
			addfeat "Resistant" with "You are more resistant to random physical changes from infection";
		if "Resistant" is not listed in feats of Player:
			addfeat "Mutable" with "You are more prone to physical changes from mutation";
		addfeat "Mighty Mutation" with "You can gain (and lose) stats from mutants";
		if "Mighty Mutation" is listed in feats of Player:
			addfeat "Bestial Power" with "Your body will no longer drop in stats from random mutation";
		addfeat "Vampiric" with "You suck some blood from your defeated foe, recovering a little health, thirst and hunger";

This is the gainfeat rule:
	choose row Current Menu Selection in table of gainable feats;
	let nam be title entry;
	if autofeatloading is false:
		let L be {"Haggler", "More Time", "Touched by Madness", "Vore Predator"}; [feat descs with terminating punct]
		say "You've chosen [bold type]'[title entry]'[roman type]: [description entry][if title entry is not listed in L]. [end if][line break]";
		say "Is this what you want?";
	if autofeatloading is true or player consents:
		add nam to feats of Player;
		say "You have gained '[nam]'!";
		now Featqualified is 0;
[		decrease menu depth by 1; ]
		increase featgained of Player by 1;
		if nam is "Automatic Survival":
			decrease featgained of Player by 1;
			remove "Automatic Survival" from feats of Player;
			say "[bold type]This ability is now controlled by Trixie. Your feat slot has been returned to you.[roman type][line break]";
			wait for any key;
		else if nam is "Sterile":
			now Sterile of Player is true;
		else if nam is "Strong Back":
			increase capacity of Player by 50;
		else if nam is "More Time":
			extend game by 24;
		else if nam is "Hardy":
			increase MaxHP of Player by 8;
			increase HP of Player by 8;
		else if nam is "Expert Medic":
			increase CurrentMedkitSupplies by 1;
		else if nam is "City Map":
			say "[BestowCityMapFeat]";
		else if nam is "Instinctive Combat":
			say "     Having gained the [']Instinctive Combat['] feat, you now have access to the [']Auto Attack['] commands. These are the same as picking the same option over and over again during combat. No different results, just less typing for faster gameplay.[line break]Type [link][bold type]auto attack normal[roman type][end link] for the default method of combat (choose each action).[line break]Type [link][bold type]auto attack berserk[roman type][end link] to always attack in combat.[line break]Type [link][bold type]auto attack seduce[roman type][end link] to always seduce in combat.[line break]Type [link][bold type]auto attack pass[roman type][end link] to always pass in combat.[line break]Type [link][bold type]auto attack coward[roman type][end link] to always flee in combat.[line break]Type [link][bold type]auto attack submit[roman type][end link] to always submit in combat.[line break]You may review these commands at any time by using the [link]help[end link] command.";
		else if nam is "Vore Predator":
			say "     Having gained the [']Vore Predator['] feat, you can now access the [link][bold type]vore menu[roman type][end link] command. It can also be accessed using Trixie's cheat menu ([bold type]iwannacheat[roman type]). It is used for adjusting vore-related game settings.";
		else if nam is "Mugger":
			say "     You will now get a flat rate increase to item drops from monsters based on your perception. This ability can be can turned on or off by using the [link][bold type]mugger[as]muggering[roman type][end link] command and is currently [bold type][if muggerison is true]ON[else]OFF[end if][roman type].";
		else if nam is "Vampiric":
			say "     You will now recover a small amount of health, thirst and hunger after every victory as you get in a blood-sucking bite after your final blow or at some other point during the victory scene.";
			now vampiric is true;
	if autofeatloading is false, wait for any key;
	if autofeatloading is false, clear the screen and hyperlink list;
	sort feats of Player;

to say BestowCityMapFeat:
	say "[bold type][']Approaching the Capitol Building['], [']Beach Plaza['], [']City Hospital['], [']College Campus['], [']Dry Plains['], [']Entrance to the High Rise District['], [']Entrance to the Red Light District['], [']Museum Foyer['], [']Outside Trevor Labs['], [']Park Entrance['], [']Plant Overview['], [']Smith Haven Mall Lot South['], [']State Fair['], [']Urban Forest['], [']Warehouse District['] and [']Zoo entrance['][roman type] have been added to your list of available navpoints. You will now be able to [bold type]nav[roman type]igate there from any of the fasttravel locations in the city.";
	AddNavPoint Approaching the Capitol Building silently;
	AddNavPoint Beach Plaza silently;
	AddNavPoint City Hospital silently;
	AddNavPoint College Campus silently;
	AddNavPoint Dry Plains silently;
	AddNavPoint Entrance to the High Rise District silently;
	AddNavPoint Entrance to the Red Light District silently;
	AddNavPoint Museum Foyer silently;
	AddNavPoint Outside Trevor Labs silently;
	AddNavPoint Park Entrance silently;
	AddNavPoint Plant Overview silently;
	AddNavPoint Smith Haven Mall Lot South silently;
	AddNavPoint State Fair silently;
	AddNavPoint Urban Forest silently;
	AddNavPoint Warehouse District silently;
	AddNavPoint Zoo entrance silently;
	now Government Assistance is resolved; [removes the random event for discovering the Capitol Bldg]
	now Ravaged Power Plant is resolved; [removes the random event for discovering the power plant]
	now Reaching the College is resolved; [removes the random event for discovering the College Campus]

Part 2 - Feat-Given Actions

Chapter 1 - Mugging

muggering is an action applying to nothing.
understand "mugger" as muggering.
understand "mugging" as muggering.

check muggering:
	if "Mugger" is not listed in feats of Player, say "INVALID! You don't possess that feat yet." instead;

carry out muggering:
	if muggerison is false:
		now muggerison is true;
	else:
		now muggerison is false;
	say "The [']Mugger['] feat is now [bold type][if muggerison is true]ON[else]OFF[end if][roman type]. You will gain drop items [if muggerison is true]more frequently[else]as normal[end if].";

Chapter 2 - Autoattack

autoattackmode is a number that varies.
[0 is normal]
[1 is attack]
[2 is seduce]
[3 is pass]
[4 is flee]
[5 is submit]

[creates flag for automatic combat, from "Instinctive Combat" feat]
autoattacknormal is an action applying to nothing.
understand "auto attack normal" as autoattacknormal.

autoattackberserk is an action applying to nothing.
understand "auto attack berserk" as autoattackberserk.

autoattackseduce is an action applying to nothing.
understand "auto attack seduce" as autoattackseduce.

autoattackpass is an action applying to nothing.
understand "auto attack pass" as autoattackpass.

autoattackcoward is an action applying to nothing.
understand "auto attack coward" as autoattackcoward.

autoattacksubmit is an action applying to nothing.
understand "auto attack submit" as autoattacksubmit.

carry out autoattacknormal:
	if "Instinctive Combat" is listed in feats of Player:
		now autoattackmode is 0; [default combat, make choices at normal]
		say "You calm your instincts and regain control of your actions.";
	else:
		say "You feel you are missing the instincts to do this.";

carry out autoattackberserk:
	if "Instinctive Combat" is listed in feats of Player:
		now autoattackmode is 1; [autoattack, no choice, always attack]
		say "You let your aggressive instincts take the forefront, knowing you will attack at any chance.";
	else:
		say "You feel you are missing the instincts to do this.";

carry out autoattackseduce:
	if "Instinctive Combat" is listed in feats of Player:
		now autoattackmode is 2; [autoseduce, no choice, always seduce]
		say "This is the flavor text for enabling auto-seduce.";
	else:
		say "You feel you are missing the instincts to do this.";

carry out autoattackpass:
	if "Instinctive Combat" is listed in feats of Player:
		now autoattackmode is 3; [autopass, no choice, always pass]
		say "You feel calm. You're sure everything will work out in the end. Don't mind the monsters attacking you.";
	else:
		say "You feel you are missing the instincts to do this.";

carry out autoattackcoward:
	if "Instinctive Combat" is listed in feats of Player:
		now autoattackmode is 4; [autoflee, no choice, always flee]
		say "You focus on the need to escape the monsters, the need to run away.";
	else:
		say "You feel you are missing the instincts to do this.";

carry out autoattacksubmit:
	if "Instinctive Combat" is listed in feats of Player:
		now autoattackmode is 5; [autosubmit, no choice, always submit]
		say "Your increased libido clouds your thinking. Wouldn't it be fun to let the monsters play with you?";
	else:
		say "You feel you are missing the instincts to do this.";


Feats ends here.
