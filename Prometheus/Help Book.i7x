Version 1 of Help Book by Prometheus begins here.

[ HP of Help Book             ]
[ 0 - Present                 ]
[ 1 - Removed                 ]

an everyturn rule:
	if HP of Help Book is 0:
		if Help Book is not in Grey Abbey Library:
			move Help Book to Grey Abbey Library;

Section 1 - NPC

Table of GameCharacterIDs (continued)
object	name
Help Book	"Help Book"

Help Book is a person. Help Book is in Grey Abbey Library.
[Physical details as of game start]
ScaleValue of Help Book is 1. [human sized]
SleepRhythm of Help Book is 0. [0 = awake at all times, 1 = awake in the day, 2 = awake at night]
Cock Count of Help Book is 0.
Cock Length of Help Book is 0.
Ball Size of Help Book is 0.
Ball Count of Help Book is 0.
Cunt Count of Help Book is 0.
Cunt Depth of Help Book is 0.
Cunt Tightness of Help Book is 0.
Nipple Count of Help Book is 0.
Breast Size of Help Book is 0.
[Basic Interaction states as of game start]
TwistedCapacity of Help Book is false. [can not take oversized members without pain]
Sterile of Help Book is true.
PlayerMet of Help Book is false.
PlayerRomanced of Help Book is false.
PlayerFriended of Help Book is false.
PlayerControlled of Help Book is false.
PlayerFucked of Help Book is false.
OralVirgin of Help Book is true.
Virgin of Help Book is true.
AnalVirgin of Help Book is true.
SexuallyExperienced of Help Book is false.
MainInfection of Help Book is "".
Description of Help Book is "[HelpBookDesc]".
Conversation of Help Book is { "Words, words, words." }.
The scent of Help Book is "     The book smells of knowledge and a desire to help. Somehow.".

to say HelpBookDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Help Book: [HP of Help Book] <- DEBUG[line break]";
	say "     The book looks like a normal book with the title 'Prometheus['] Guide to Surviving the Apocalypse'. It seems to emit an aura of comfort as though it wants to help those in need and you get the impression that it doesn't much care for the rules of this reality.";

HelpBookLookup is an action applying to nothing.

understand "HelpBookLookup" as HelpBookLookup.

carry out HelpBookLookup:
	say "     You pull out a copy 'Prometheus['] Guide to Surviving the Apocalypse'. It seems to emit an aura of comfort as though it wants to help those in need and you get the impression that it doesn't much care for the rules of this reality.";
	say "[HelpBookTalkMenu]";

Section 2 - Talking with Help Book

Instead of conversing the Help Book:
	say "     You open the book and decide what you wish to know about.";
	WaitLineBreak;
	say "[HelpBookTalkMenu]";

to say HelpBookTalkMenu:
	say "[line break]";
	say "     [bold type]What do you wish to look up in the Help Book?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Basic Needs";
	now sortorder entry is 1;
	now description entry is "Learn the basics of hunger, thirst, sanity, and libido";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Stats";
	now sortorder entry is 2;
	now description entry is "Receive a quick explanation of stats";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Combat";
	now sortorder entry is 3;
	now description entry is "Receive a quick explanation of some of the aspects of combat";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Commands";
	now sortorder entry is 4;
	now description entry is "Learn some useful commands";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Remove Book";
	now sortorder entry is 5;
	now description entry is "Banish the book from whence it came";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Basic Needs"):
					say "[HelpBookTalk1]";
				if (nam is "Stats"):
					say "[HelpBookTalk2]";
				if (nam is "Combat"):
					say "[HelpBookTalk3]";
				if (nam is "Commands"):
					say "[HelpBookTalk4]";
				if (nam is "Remove Book"):
					say "[HelpBookTalk5]";
				WaitLineBreak;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You close the book again, ready to get on with your adventure.";
			WaitLineBreak;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say HelpBookTalk1: [Needs]
	say "     For you to survive you will need to find food and water to stave off rising hunger and thirst. This can be found by [bold type]scavenging[roman type] around the city. Hunger can be sated using [bold type]food[roman type] or [bold type]chips[roman type]. Thirst can be sated by [bold type]Water Bottles[roman type], [bold type]Soda[roman type], or [bold type]Dirty Water[roman type]. While dirty water will reduce your thirst, it may also transform you. Food and water may occasionally also be found while [bold type]exploring[roman type], which is the main way of discovering areas of the city. Once you are more familiar with the city, you may be able to [bold type]navigate[roman type] back to places you are familiar with. and events. Over time, your character will get tired which will eventually lower your stats until you sleep. To counteract this, you need to [bold type]rest[roman type], usually on the cot that you can find here. While the library is safe, if you sleep out in the city you may be attacked by creatures, so be cautious and try to find a safe area first unless you are willing to risk your rest being interrupted. You may also notice your [bold type]libido[roman type] rising as you explore the city. Should you not sate your lusts with either a partner or a smutty magazine, you may find yourself submitting to a wandering beast. Lastly, the pressure and trauma of life in the city may cause you to lose touch with your humanity, also known as [bold type]sanity[roman type]. This deterioration can be easily reversed by writing in your [bold type]journal[roman type], something that you should be carrying with you at all times.";

to say HelpBookTalk2: [Stats]
	say "     Your main stats are [bold type]Strength, Dexterity, Stamina, Charisma, Intelligence, and Perception[roman type]. Simply put, [bold type]Strength[roman type] increases melee damage dealt as well as carry capacity, [bold type]Dexterity[roman type] increases your chance to hit and chance to dodge, [bold type]Stamina[roman type] increases your health, [bold type]Charisma[roman type] is used for social interactions with others, [bold type]Intelligence[roman type] increases health recovered by medkits, chance of vial collection, and success chance of fleeing from combat, and [bold type]Perception[roman type] increases your success while scavenging, hunting, and damage with ranged weapons. Success or failure in the city may often rely on these stats. As you defeat enemies you will gain [bold type]experience[roman type] that is used to level up. Every two levels will give you a chance to boost a stat, and every five levels will give a you a chance to choose a feat.";

to say HelpBookTalk3: [Combat]
	say "     While exploring the city you are likely to be attacked by the creatures that roam the streets. Should you defeat them, you may get a chance to have your way with them, but should you lose, they in turn have a chance to force themself upon you. Occasionally, submitting may give a different scene to losing. In combat, you can [bold type]attack[roman type] to damage your enemy, [bold type]use items[roman type] such as medkits, [bold type]pass your turn[roman type], attempt to [bold type]flee[roman type], [bold type]submit[roman type], or [bold type]throw the fight[roman type] which gives the same result as losing. Some areas have stronger enemies than others, so don't be afraid to flee if you feel you are in over your head while exploring.";

to say HelpBookTalk4: [Commands]
	say "     Some useful commands that you can type in, even if you are using hyperlinks, are [bold type]hunt[roman type], [bold type]help[roman type], [bold type]use[roman type], and [bold type]undo[roman type]. [bold type]Hunt[roman type] allows you to look for a specific creature or event, though its success chance is affected by perception and some feats. [bold type]Help[roman type] brings up a menu for in case you need an explanation for various aspects of the game including some of the topics covered here. [bold type]Use[roman type] is often used for items and activating some objects. [bold type]Undo[roman type] allows you to undo an action and can be repeated to go back several turns, though this may be limited by the interpreter that you are using. Another source of help is the wiki, though it is outdated in some areas due to it being maintained by the public, rather than the Flexible Survival Staff.";

to say HelpBookTalk5: [Remove Book]
	say "     As you decide that you don't need the book any more, it crumbles to dust in your hands before blowing away on a non-existent wind. You get the impression that it is gone on to help the next person that needs it and won't be back again.";
	now Help Book is nowhere;
	now HP of Help Book is 1;

Section 3 - Sex

Instead of fucking the Help Book:
	say "     You decide that perhaps that isn't a good idea. You wouldn't want a paper cut. Letters shift around on the page until it says 'Horny mutants and their deviant ways,'. You are sure that the book is mocking you.";

Help Book ends here.
