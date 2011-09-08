"Flexible Society" by Nuku Valente

Book 0 - Pre game prep stuff

Release along with an interpreter. 
Use memory economy.
Use fast route-finding.
Use fast route-finding.
Use MAX_INDIV_PROP_TABLE_SIZE of 500000.
Use MAX_PROP_TABLE_SIZE of 500000.
use MAX_STATIC_DATA of 580000.
Use MAX_OBJ_PROP_COUNT of 128.
use MAX_SYMBOLS of 50000.
Include Basic Help Menu by Emily Short.
Include Version 4 of Menus by Emily Short.
Include Basic Screen Effects by Emily Short. 

The release number is 1.
The story creation year is 2011.
The maximum score is 100.

Table of Basic Help Options (continued)
title	description 
"Contacting the author"	"If you have any difficulties with [story title], please contact me at: http://nukuv.blogspot.com/" 
"Hunting"	"You can hunt for specific creatures. Go to a place you can explore from, like the library.[line break][line break]You there? Ok, now type [bold type]hunt (creature)[roman type].[line break][line break]You are not assured success, but a critter is 3 times more likely to show up when actively looked for.[line break][line break]You can also hunt for locations, if you know their name."
"Trading"	"You can trade with certain denizens of the city. Simple give x to y, like give soda to bob. If they want it, they'll give you something back for it. Trades are final, but usually worth it."
"Scoring"	"Staying alive, making friends, and unearthing the mysteries of the city get you points. Losing battles saps points. See how high a score you can manage!"
"Items"	"You will come to have a variety of items. Here are some useful commands.[line break][line break]Item: See a list of items you own.[line break]look (item): Look at a specific item.[line break]use (item): Use an item[line break]get (item): grab a specific item.[line break]get all: get everything in the room."
"Weapons"	"Some items you find make good weapons! Be sure to use them before a battle to have them at hand."
"Scavenging"	"Type [bold type]Scavenge[roman type] in any room you can fast travel from to look hunt for food and water."
"Socializing"	"You can talk (person) to chat it up. If they are of more personal interest with you, you can also fuck (person)"
"Ending Early"	"Type [bold type]end now[roman type] to cause the game to end early."
"Play On"	"You want to skip that ending? Go for it. Type [bold type]play on[roman type] and time will cease to be a concern. You will not get endings though."

Book 1 - Variable Definitions

The file of flexiblestory is called "flexible1".

The player has text called name.

A Species is a kind of thing.
A species has a number called Intelligence.
A species has a number called Might.
A species has a number called Stamina.
A species has a number called Perception.
A species has a number called Industrilization.
A species has a number called Hostile Infection Rate.
A species has a number called Friendly Infection Rate.
A species has a number called Resistance.
A species has a number called Mood.
A species has a number called Morale.
A species has a number called Charm.
A species has a number called Libido.
A species has a number called Self Fertility.
A species has a number called External Fertility.
A species has a list of text called Gender.
A species has a number called Military.
A species has a number called Science.
A species has a number called Manufactury.
A species has a number called Hunger.
A species has a number called Food.
A species has a number called Thirst.
A species has a number called Water.
A species has a number called Territory.
A species has a list of text called Perks.
A species has a number called Population.
A species has a number called Density.
A species has a list of text called Diet.
A species has a text called Skin.
A species has a text called Body.
A species has a text called Face.
A species has a text called Skinadj.
A species has a text called Bodyadj.
A species has a text called Faceadj.



The player has a species called tribe.
Definition: a direction (called D) is valid if the room D from the location of the player is a room.

Book 2 - The Village

Village Center is a room. "You stand in the middle of, what you hope, will become the vast hub of your future civilization. For now it is just a small bonfire for you and your kind.[if population of tribe of player is greater than 0] Wandering the village, you see your people number [population of tribe of player].[end if]".

Book 3 - Tables n Stuff

Table of Start Game
title	subtable	description	toggle
"Nadda"	--	--	--

Table of Basic Combat
title	subtable	description	toggle
"Nadda"	--	--	--

Table of Sex Choice
title	subtable	description	toggle
--	--	--	--

Table of combat items
title	subtable	description	toggle
"Nothing"	--	"Nothing here."	standard name printing rule
with 100 blank rows.

Table of Fancy Status
left	central	right
"Location: [the player's surroundings]"	"Morale: [morale of tribe of player]/100"	"Tribe:[tribe of player]"
"Exits: [List of Valid Directions]"	"Food: [food of tribe of player] Water: [water of tribe of player]"	"Score:[score]/[maximum score]"
"Population: [population of tribe of player]"	""	""
"[if menu depth > 0]N = Next[end if]"	"[if menu depth > 0]ENTER = Select[end if]"	"[if menu depth > 0]P = Previous[end if]"


Book 4 - Tribes

The Snozzlefoggles is a species.

Blue Gryphons is a species.
The description of it is "Their body is covered in soft fur. Hir head is avian, with powerful beak that protrudes in a clean curve. Above, feline ears twitch and turn above hir altered face. Hir body is adorned with two large feathery wings that flutter softly. Milk also seems to flow at a soft rate from hir nipples. Sie has 2 plump D cup sized breasts. Hir arms are well muscled and vaguely avian, sporting dangerous claws at the end each digit. Hir legs are dramatically altered, with powerful digitigrade legs of leonine musculature, great claws on hir softly furred feet-paws. Sie has a thin leonine tail swaying over hir ass. Its soft, blue, and furry length has a tuft of blue fur at the end. Sie has a single, black, knotted member that averages around a foot long, and a female portal that can easily accept it.".
The skin of it is "soft blue fur".
The skinadj of it is "blue furred".
The body of it is "fertile hermaphrodite blend of panther and bird".
The bodyadj of it is "herm gryphon".
The face of it is "avian beak and feline ears".
The faceadj of it is "gryphon".
The Intelligence of it is 40.
The Might of it is 50.
The Stamina of it is 50.
The Perception of it is 75.
The Industrilization of it is 20.
The Hostile Infection Rate of it is 50.
The Friendly Infection Rate of it is 10.
The Resistance of it is 0.
The Mood of it is 60.
The Morale of it is 50.
The Libido of it is 65.
The Self Fertility of it is 50.
The External Fertility of it is 50.
The Gender of it is { "Hermaphrodite" }.
The Military of it is 0.
The Science of it is 0.
The Manufactury of it is 0.
The Hunger of it is 50.
The Thirst of it is 50.
The Territory of it is 4.
The Population of it is 10.
The Density of it is 4.
The Food of it is 20.
The water of it is 20.
The Diet of it is { "Meat", "Plant" }.
The Perks of it is { "Flight", "Healing Milk" }.

Book 6 - Rules N Stuff

Part 1 - Turn Rules

Everyturn rules is a rulebook.

This is the turnpass rule:
	follow the everyturn rules;

To multiply(X - a number) by (Y - a number):
	now x is x * y;
 
To divide(X - a number) by (Y - a number):
	now x is x / y;

 Every Turn:
	follow the everyturn rules;
	
 An everyturn rule(this is the Eternal Hunger rule):
	let consume be the population of the tribe of player;
	now consume is consume times the hunger of the tribe of player;
	now consume is consume / 100;
	if consume is less than 0, now consume is 0;
	decrease food of tribe of player by consume;
	if food of tribe of player is less than 0:
		say "Your people starve without food: ";
		let x be 0 - food of tribe of player;
		now food of tribe of player is 0;
		multiply x by 100;
		divide x by hunger of the tribe of the player;
		if x is greater than 0:
			say "Casualties: [x] ";
			decrease population of tribe of player by x;
		let loss be 1;
		increase loss by x times 2;
		multiply loss by 100;
		divide loss by mood of tribe of player;
		if loss is greater than 0:
			say "Morale Loss: [loss]";
		decrease morale of tribe of player by loss;
		if morale of tribe of player is less than 0, now morale of tribe of player is 0;
		say "[line break]";

 An everyturn rule(this is the Eternal Thirst rule):
	let consume be the population of the tribe of player;
	now consume is consume times the thirst of the tribe of player;
	now consume is consume / 100;
	if consume is less than 0, now consume is 0;
	decrease water of tribe of player by consume;
	if water of tribe of player is less than 0:
		say "Your people starve without water: ";
		let x be 0 - water of tribe of player;
		now water of tribe of player is 0;
		multiply x by 100;
		divide x by thirst of the tribe of the player;
		if x is greater than 0:
			say "Casualties: [x] ";
			decrease population of tribe of player by x;
		let loss be 1;
		increase loss by x times 2;
		multiply loss by 100;
		divide loss by mood of tribe of player;
		if loss is greater than 0:
			say "Morale Loss: [loss]";
		decrease morale of tribe of player by loss;
		if morale of tribe of player is less than 0, now morale of tribe of player is 0;
		say "[line break]";

Part 2 - Other rules

Instead of examining the player:
	say "You are the leader of the [tribe of player]. Your people tend to look like:[line break][description of tribe of player]";
	
Part 3 - Game Start

First for constructing the status line (this is the bypass status line map rule):
	fill status bar with table of fancy status;

to species menu:
	blank out the whole of table of combat items;
	let X be 1;
	repeat with Q running through species:
		if the might of q is 0, next;
		choose a blank row in table of combat items;
		now title entry is printed name of Q;
		now description entry is printed name of Q;
		if tribe of player is q:
			now title entry is "SELECTED";
		now toggle entry is species select rule;
[	let z be the number of rows in table of combat items;
	say "[Z].";]
	if there is no title in row 1 of table of combat items:
		say "There are no species!";
		wait for any key;
	otherwise:
		choose a blank row in table of combat items;
		now title entry is "Begin Game";
		now description entry is "Begin Game";
		now toggle entry is species select rule;
		change the current menu to table of Combat Items;
		carry out the displaying activity;
 
 This is the species select rule:
	choose row Current Menu Selection in table of combat items;
	let nam be description entry;
	if nam is "Begin Game" and might of tribe of player is greater than 0:
		decrease the menu depth by 1;
		rule succeeds;
	let z be Snozzlefoggles;
	repeat with y running through species:
		if nam matches the text printed name of y:
			now z is y;
			break;
	now tribe of player is z;
	decrease the menu depth by 1;
	species menu;

When play begins(this is the play start rule):
	say "Welcome to Flexible Society. You are a member of a species, probably quite new, trying to secure a niche in the world rocked by the Promethean Virus, a nanite plauge that has reduced mankind to largescale rubble and given rise to hundreds of new species. Your first decision will be what species you are and will lead. Some species are better some some things than others.";
	wait for any key;
	Species Menu;
	if the might of tribe of player is 0, follow the play start rule;
	
