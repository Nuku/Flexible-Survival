"Flexible Survival" by Nuku Valente

Book 0 - Pre game prep stuff

Release along with an interpreter.
Use memory economy.
Use slow route-finding.
[ The following adjust Informs compiler settings so that it allocates enough space. If these values are incorrect, inform will fail to compile.]
[ To determine if one of these is your issue, use the Errors tab in the inform 7 window. ]
Use MAX_INDIV_PROP_TABLE_SIZE of 500000.
Use MAX_PROP_TABLE_SIZE of 51000000.
use MAX_STATIC_DATA of 12500000.
Use MAX_OBJ_PROP_COUNT of 1700.
use MAX_SYMBOLS of 13000000. ["Compiler finished with code 10"]
use MAX_NUM_STATIC_STRINGS of 370000. [ Code 10 ]
use SYMBOLS_CHUNK_SIZE of 250000. [ Code 10 ]
use ALLOC_CHUNK_SIZE of 1450000.
use MAX_OBJECTS of 5000.
use MAX_ACTIONS of 3000.
use MAX_VERBS of 3000.
use MAX_VERBSPACE of 50000.
use MAX_ARRAYS of 100000.
[Use MAX_ZCODE_SIZE of 1000000.]
Use MAX_DICT_ENTRIES OF 6000.
Use maximum text length of at least 4000.
Use Scoring.
[ End compiler settings. ]

[To decide which number is the absolute value of (N - a number):
	if N < 0:
		let N be 0 minus N;
	decide on N.] [enable this to compile on older versions of inform]

The release number is 67.
The story creation year is 2010.
The maximum score is 2500.

[Dependencies] [Important - must get loaded early here]
Include Version 4 of Menus by Emily Short.
Include Basic Help Menu by Emily Short.
Include Basic Screen Effects by Emily Short.
Include Glulx Entry Points by Emily Short.
Include Glulx Text Effects by Emily Short.
[Include Glulx Status Window Control by Erik Temple.]
Include Simple Graphical Window by Emily Short.
[New Graphics Handler]
Include Graphics Director by Core Mechanics.

The file of flexiblestory is called "flexible1".

The parser error count is a number that varies.[@Tag:NotSaved] The parser error count is 0.

After printing a parser error when the parser error count is at least 0:
	increment the parser error count;
	if the turn count divided by the parser error count < three:
		say "(If you are feeling lost, try typing [italic type]help[roman type] for suggestions.)";
		now the parser error count is -1. [This ensures that we don't keep printing the message.]

Include (-
[ YesOrNo i j;
	TEXT_TY_Say((+ yes or no message +));
	for (::) {
	#Ifdef TARGET_ZCODE;
	      if (location == nothing || parent(player) == nothing) read buffer parse;
	      else read buffer parse DrawStatusLine;
	      j = parse->1;
	      #Ifnot; ! TARGET_GLULX;
	      KeyboardPrimitive(buffer, parse);
	      j = parse-->0;
	      #Endif; ! TARGET_
	      if (j) { ! at least one word entered
			i = parse-->1;
			if (i == YES1__WD or YES2__WD or YES3__WD or '1//') rtrue;
			if (i == NO1__WD or NO2__WD or NO3__WD or '2//') rfalse;
	      }
		TEXT_TY_Say((+ yes or no message +));
		YES_OR_NO_QUESTION_INTERNAL_RM('A'); print "> ";
	}
];
[ YES_OR_NO_QUESTION_INTERNAL_R; ];
-) instead of "Yes/No Questions" in "Parser.i6t".

The yes or no message is a text that varies.[@Tag:NotSaved]
The yes or no message is "[link]yes[end link] or [link]no[end link]> [run paragraph on]".

playerinput is a snippet that varies.[@Tag:NotSaved]

To select an option from (curtable - a table name):
	while 1 is 1:
		repeat with y running from 1 to number of filled rows in curtable:
			choose row y from curtable;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "Type the number corresponding to the choice you want> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in curtable:
			now current menu selection is calcnumber;
			choose row calcnumber from curtable;
			follow the toggle entry;
			break;
		else:
			say "Invalid Selection.";

To get typed command as (S - a snippet): (-
	KeyboardPrimitive(buffer, parse);
	{S} = 100 + WordCount();  -)

To get next key as (S - a snippet): (-
	{S} = VM_KeyChar();  -)

Include (-
[ Serial s;
	for (s=0 : s<6 : s++) print (char) ROM_GAMESERIAL->s;
];
-)

Book 1 -  Core Game Files

[ DO NOT CHANGE THE ORDER IN WHICH THEY ARE LOADED ]
Include Gametables by Core Mechanics. [declares global tables for items, monsters, etc. - used in core functionality and export/import]
Include Situations by Core Mechanics. [declares situation objects and associated definitions and functions]
Include Scavenging by Core Mechanics. [declares scavenging (subtype of situations) and associated functions]
Include Time by Core Mechanics. [declares the time, date, etc. variables and associated functions]
Include Rest by Core Mechanics. [declares resting functions, and the need for sleep]
Include Inline Hyperlinks by Nuku Valente.
Include Game UI by Core Mechanics. [declares status bar details, and command prompt]
Include Lists and Banning by Core Mechanics. [declares global lists and content banning functions]
Include Game Objects by Core Mechanics. [declares object types: grab object, armament and equipment, plus associated functions ]
Include Sexual Orientation by Core Mechanics. [declares sexual orientation variables and a function to adjust them]
Include Characters by Core Mechanics. [declares person objects, the player object, creature objects, plus associated display functions]
Include Pregnancy by Core Mechanics. [declares pregnancy variables and contains associated functions ]
Include Offspring by Core Mechanics. [declares tables for varied player offspring, and an Offspring npc]
Include Inventory by Core Mechanics. [homemade inventory system to replace the Inform7 standard]
Include Infection Vials by Core Mechanics. [declares vial inventory and vial functions]
Include Infections by Core Mechanics. [declares infection and sex change functions]
Include Hunting and Exploration by Core Mechanics. [declares the hunt and explore commands]
include FS Graphics by Core Mechanics. [handles all graphics used in the game]
Include Game Start by Core Mechanics. [declares game setting variables and the start menu]
Include Presets by Core Mechanics. [presets for the game setting variables, with some documentation]
Include Leveling by Core Mechanics. [declares the level up function]
Include Misc Pieces by Core Mechanics.
Include Help by Core Mechanics. [adjusts the standard help to match FS]
Include Story Skipper by Core Mechanics. [declares export/import system for version-spanning transfers - standard variables]
[
Include Story Skipper Loose Variables by Core Mechanics. [declares export/import system for version-spanning transfers - loose variables]
]

Book 2 - More Core Mechanics

Include Alt Combat by Core Mechanics.
Include Alt Vore by Core Mechanics.
Include AlcoholMechanics by Core Mechanics.
[
Include Assorted Items by Stripes.
]
Include Basic Functions by Core Mechanics.
Include Basic Locations by Core Mechanics.
[
Include Basic Shops by Core Mechanics.
]
Include BFandI by Core Mechanics.
Include Bound State Universals by Core Mechanics.
Include Debugging Tools by Core Mechanics.
Include Definitions by Core Mechanics.
Include Expanded Clothing Mechanics by Core Mechanics.
Include Equipment by Core Mechanics.
Include Feats by Core Mechanics.
Include Fighting by Core Mechanics.
Include Fucking by Core Mechanics.
Include Game Endings by Core Mechanics.
Include Gender Pronouns by Core Mechanics.
Include giving in by Core Mechanics.
Include Inventory by Core Mechanics.
[
Include Masturbate by Core Mechanics.
]
Include Microwave by Core Mechanics.
[
Include Microwaveable Objects by Core Mechanics.
]
Include Milking by Core Mechanics.
Include Misc Items by Core Mechanics.
[
Include Navigation by Core Mechanics.
]
Include Notes by Core Mechanics.
Include Needy Heat by Core Mechanics.
Include Patron Credits by Nuku Valente.
[
Include Patreon Menu by Core Mechanics.
]
Include Pepperspray by Core Mechanics.
Include Pets by Core Mechanics.
[
Include Quest Log by Core Mechanics.
]
Include Settings Menus by Core Mechanics.
Include Sex and Infection Functions by Core Mechanics.
Include Smell by Core Mechanics.
Include Status View by Core Mechanics.
Include Storage Locker by Core Mechanics.
[
Include Store Mechanics by Core Mechanics.
Include Special Merchandize by Core Mechanics.
Include Tape Inventory by Core Mechanics.
]
Include Text Capture by Eric Eve.
Include Vending Machine by Core Mechanics.
Include Weapons by Core Mechanics.
[
Include Zephyr Phone by Core Mechanics.
]

Book 3 - Loading Placeholders referenced in Core Mechanics

Doctor Matt is a man.
Doctor Mouse is a man.
Medkit Parts is a situation.
Strange Serpent is a situation.
Reaching the College is a situation.
Ravaged Power Plant is a situation.
Government Assistance is a situation.
AbyssEdgeEnchantLevel is a situation.
Potential Resources is a scavevent.
Public Hitching Post is a situation.
Secure Area is a situation.
Fang is a man.
Lux is a woman.
Umbra is a man.
Velos is a man.
Blake is a man.
Zoe is a woman.
Alexandra is a woman.
Ronda is a woman.
rubber tigress is a pet.
mouse girl is a pet.
Carnivorous Plant is a pet.
gshep is a pet.
Xerxes is a man.
Kristen is a woman.
Honey is a woman.
Philip is a man.
Nala is a woman.
Christy is a woman.
Helen is a woman.
Tehuantl is a woman.
Larissa is a woman.
Sarah is a woman.
Paula is a woman.
Susan is a woman.
Carl is a man.
Otto is a man.
Darius is a man.
Icarus is a man.
Spike is a man.
Korvin is a man.
Chris is a man.
Macadamia is a man.
Sidney is a woman.
Voria is a woman.
Skarnoth is a man.
Urik is a man.
Orthas is a woman.
Medea is a woman.
Orc supersized breeder is a pet.
doberman companion is a pet.
FangNewPuppies is a number that varies.
bananapeeled is a number that varies.
gascloud is a number that varies.
bookfound is a number that varies.
JackalManTF is a number that varies.
JackalBoyTF is a number that varies.
nightmaretf is a number that varies.
wrcursestatus is a number that varies.
WerewolfRelationship is a number that varies.
ChrisPlayerOffspring is a number that varies.
dolphintricked is a number that varies.
staircaselocation is a number that varies.
pewtergenitalcap is a number that varies.
pewterbodycap is a number that varies.
nanitemeter is a number that varies.
LuxUmbraMaturityCounter is a number that varies.
psycheadjust is a number that varies.
findwires is a number that varies.
fixedgens is a number that varies.
SarahPups is a number that varies.
mousecurse is a number that varies.
snakehijack is a number that varies.
nerminefeat is a number that varies.
foodwaterbonus is a number that varies.
boosterfeats is a number that varies.
wrcursestatus is a number that varies.
insectlarva is a truth state that varies.
isHellhound is a truth state that varies.
hellhoundlevel is a number that varies.
consortinsight is a number that varies. [Consort Insight, entails how much the player knows about the Pewter Consort and their perception]
facecheck is a truth state that varies.
pewterheadcap is a number that varies. [Dictates, via scale, how many consorts might occupy a body region]
pewterbodycap is a number that varies.
pewtergenitalcap is a number that varies.
pewterheadocc is a number that varies. [Indicates how many consorts are occupying a body region]
pewterbodyocc is a number that varies.
pewtercockocc is a number that varies.
pewtercuntocc is a number that varies.
boatfound is a number that varies.
pewterassocc is a number that varies.
pewterheadvar1 is a number that varies. [Indicates how many consorts are attending/tonguing a body region]
pewterheadvar2 is a number that varies. [Indicates how many consorts are riding/fucking a body region]
pewterheadvar3 is a number that varies.
pewtercockvar1 is a number that varies.
pewtercockvar2 is a number that varies.
pewtercuntvar1 is a number that varies.
pewtercuntvar2 is a number that varies.
pewterassvar1 is a number that varies.
pewterassvar2 is a number that varies.
chaseoffspring is a number that varies.
wyvkin1gen is a number that varies.
wyvkin2gen is a number that varies.
wyvkin3gen is a number that varies.
wyvkin4gen is a number that varies.
wyvkinocc is a number that varies.
wyvkin1att is a number that varies.
wyvkin2att is a number that varies.
wyvkin3att is a number that varies.
wyvkin4att is a number that varies.
wyvkinatt is a number that varies.
wyvkin1lib is a number that varies.
wyvkin2lib is a number that varies.
wyvkin3lib is a number that varies.
wyvkin4lib is a number that varies.
wyvkinassign is a number that varies.
hospquest is a number that varies.
sarahcured is a number that varies.
gshep_fights is a number that varies.
gazellesbeaten is a number that varies.
gshep_postfight is a number that varies. [post-fight argument]
gshep_sexscene is a number that varies. [sex-role argument]
gshep_bed_scene is a number that varies. [discipline argument]
gshep_inactive is a number that varies. [inactivity argument]
ssstash is a number that varies. ssstash is usually 1.
ssgpd is a truth state that varies. ssgpd is usually false.
ssbpg is a truth state that varies. ssbpg is usually false.
ssmb is a truth state that varies. ssmb is usually false.
sshh is a truth state that varies. sshh is usually false.
ssos is a truth state that varies. ssos is usually false.
ssxpa is a truth state that varies. ssxpa is usually false.
ssgbii is a truth state that varies. ssgbii is usually false.
boundrecover is a truth state that varies. boundrecover is usually false.
recoverchance is a number that varies. recoverchance is usually -1.
enduring is a truth state that varies. enduring is usually false.
obliging is a truth state that varies. obliging is usually false.
gsd_pet  is a number that varies.
GShepLastScene is a number that varies. GShepLastScene is usually 255.
labhost is a number that varies. [Tracks number of piggybacking labs/selects modified endings]
labtimerA is a number that varies. labtimerA is usually 0. [tracks how long oldest lab has been piggybacking]
labtimerB is a number that varies. labtimerB is usually 0. [tracks how long most recent lab has been piggybacking]
snakedomm is a number that varies. snakedomm is usually 0. [Snake Dom Memory. 0 = Nothing, 1 = lost once, 2 = TBM scene has fired at least once]
snakesubm is a number that varies. snakesubm is usually 0. [Snake Sub Memory. 0 = Nothing, 1 = Player has made a choice after beating one]
snakehijack is a number that varies. [Snake TBM Hijacking check, Causes the snake to interfere with player pregnancy. 0 = none, 1 = cunt, 2 = ass]
snakecap is a number that varies. snakecap is usually 0.
snakeocc is a number that varies. snakeocc is usually 0.
snakehijacktimer is a number that varies. snakehijacktimer is usually 300.
fsnakevalid is a truth state that varies. fsnakevalid is usually false.
msnakevalid is a truth state that varies. msnakevalid is usually false.
scaledr is a number that varies. [Scale Diminishing Return, ensures larger players aren't completely overwhelmed]
lustatt is a number that varies. lustatt is usually 0.
struggleatt is a number that varies. struggleatt is usually 0.
bsextimer is a number that varies. bsextimer is usually 0.
boundstate is a truth state that varies. boundstate is usually false.
psycheadjust is a number that varies. psycheadjust is usually 0.
lustadjust is a number that varies. lustadjust is usually 0.
maleHound is a truth state that varies.
WerewolfWatching is a truth state that varies.
velosfleepenalty is a truth state that varies.
the player has a number called caffeinehigh.
larvaegg is a number that varies.
larvacounter is a number that varies.
Gimp Mask is a grab object.
Rubber Sneakers is a grab object.
Silk Hammock is a grab object.
demon seed is a grab object.
janice's blouse is a grab object.
Broken Smartphone is a grab object.
zephyr protective riot shield is a grab object.
red herring is a grab object.
nanite collector is a grab object.
libido suppressant is a grab object.
orc brew is a grab object.
orc cum is a grab object.
first aid manual is a grab object.
gryphon milk is a grab object.
mindshield helmet is a grab object.
ducky swimring is a grab object.
banana peel gun is an armament.
pistol is an armament.
healing booster is a grab object.
honeycomb is a grab object.
glob of goo is grab object.
libido pill is a grab object.
Slave Cell 1 is a room.
Slave Cell 2 is a room.
Island Pier is a room.
Zephyr Lobby is a room.
Private Booths is a room.
Approaching the Capitol Building is a room.
Beach Plaza is a room.
City Hospital is a room.
College Campus is a room.
Dry Plains is a room.
Entrance to the High Rise District is a room.
Entrance to the Red Light District is a room.
Museum Foyer is a room.
Outside Trevor Labs is a room.
Park Entrance is a room.
Plant Overview is a room.
Smith Haven Mall Lot South is a room.
State Fair is a room.
Urban Forest is a room.
Warehouse District is a room.
Sitting Area is a room.
Zoo Entrance is a room.
Approaching the Capitol Building is a room.
Palomino is a room.
emap is a number that varies. emap is usually 0.
zpc_inzone is a truth state that varies. zpc_inzone is false.
zpc_Zc is a number that varies.[true if players location is listed on table of Zpc Location reference]
zpc_Zf is a figure name that varies.[@Tag:NotSaved][contains the Icon entry of the figure to be displayed]
supersponsor is an action applying to nothing.
lab microwave is an object.
brennan's microwave is an object.
library computer is a thing.
library computer can be on or off. the library computer is off.
library computer can be powered or unpowered. the library computer is unpowered.
library microwave is an object.
A person can be a smither.
An armament can be improved.
An equipment can be improved.
Electricprodstatus is a number that varies.
eptarget is a number that varies.			[hidden number of viable charges]
eprecharge is a number that varies.			[number of times it's been recharged]
eprodused is a truth state that varies.		[indicates whether it's been used in a fight yet or not]

this is the zpc_lookoverride rule:
	say "";

to AddNavPoint (RoomObj - room):
	say "Placeholder";

to AddNavPoint (RoomObj - room) silently:
	say "Placeholder";

to AddNavPoint (RoomObj - room) silence state is (Silence - a number):
	say "Placeholder";

to artemisnap:
	say "Placeholder";

to say hydraharming:
	say "Placeholder";

to say awesome bat proc:
	say "Placeholder";

to ebwhelphijackroutine:
	say "Placeholder";

to wrcurserecede:
	say "Placeholder";

to wrcursesave:
	say "Placeholder";

to VariableSave:
	say "Placeholder";

to VariableLoad:
	say "Placeholder";

to VoriaPostCombat:	[Voria vore scenes after you win a fight against a voreable enemy]	[TO DO: Make adjustments to post combat scenes for herm enemies]
	say "Placeholder";

to sfsodadrink:
	say "Placeholder";

to sfcaffeine:
	say "Placeholder";

to sfcaffeineboost:
	say "Placeholder";

to say gshep_postfightargue:
	say "Placeholder";

to ebgatorhijackroutine:
	say "Placeholder";

to say GreyAbbeyLibraryObservation_Urik:
	say "Placeholder";

VariableSaving is an action applying to nothing.

Table of Biker Destinations
title		subtable	description	sortorder	toggle
"Gang HQ"		--	--	1	--
with two blank rows.

Table of Zephyr Goods
name	price	object	allowed
"water bottle"	100	water bottle	1

Table of library books
title	booknum	subtable	bookcode
"martial arts"	1	--	"796.81.C345j"

Definition: a person is shifter:
	if Resolution of Secure Area is 2, yes;
	no;


Definition: a person is sugarfaced:
	if FaceName of Player is "Sugar Ferret", yes;
	no;

Definition: a person is sugarskinned:
	if SkinName of Player is "Sugar Ferret", yes;
	no;

Definition: a person is sugarbodied:
	if BodyName of Player is "Sugar Ferret", yes;
	no;

Definition: a person is sugarcocked:
	if CockName of Player is "Sugar Ferret", yes;
	no;

Definition: a person is sugartailed:
	if TailName of Player is "Sugar Ferret", yes;
	no;

This is the zephyrad rule:
	if Zephyr Lobby is not known:
		say "     Playing around with your radio in an attempt to gain some information about what is going on, you find a channel that seems to have a cycling message. 'Good day to anyone listening. This is Zephyr Incorporated. We wanted to you know that even during this current crisis, our branch office in this fine city remains open. Coordinates follow.' After making a mental note of the description, you listen on to the rest of their recording. 'We here are Zephyr Inc are dedicated to the betterment of mankind through science. And of course we also want to help people outlast what is currently going on. Therefore we are going to award company credit - also known as freecred - to those who contribute to keeping the more aggressive infected in check. A number of ways of observation are in effect in the city, and you will be credited for every hostile you pacify. Swing on by and spend your freecred on useful survival gear. We look forward to meeting you shortly.'";
		say "     The radio continues, 'Please be advised that your Zephyr local branch is now offering compensation for helping keep the local area safe! sign up now and recieve our newest technological advancement - the Zephyr Personal Communicator, [bold type]featuring satellite navigation[roman type] in a device that fits in your pockets! Never get lost again, with the ZPC. Available now as a means to keep you connected with all our Zephyr rewards and product offers. Visit your Zephyr branch now for more information!'";
		WaitLineBreak;
		say "     It doesn't sound particularly nice to have such fully branded hardware, but it might be worth checking out as a replacement for your currently bricked Cell Phone.";
		AddNavPoint Zephyr Lobby;

[Game start autofires]

When play begins:
	adjustdefaulthelp; [adjusts help menu]
	let tempname be indexed text;
	repeat with q running from 1 to the number of rows in the table of game objects:
		add name in row Q of table of game objects to allobjs;
		choose row q in the table of game objects;
		now tempname is Name entry in lower case;
		now sortName entry is tempname;
	sort the table of game objects in sortname order;
	now the right hand status line is "[list of valid directions]";
	say "Before the game begins..."; [warn the player what to expect next]
	say "Do you want hyperlinks? (Y/N)[line break]";
	if Player consents:
		now hypernull is 0;
	else:
		now hypernull is 1;
	repeat with x running through featsets:
		now x is a part of Player; [TODO: Investigate if this is actually needed]
	if ScenarioChosen is 1: [sets name of scenario for menu based on preset]
		now scenario is "Bunker";
	else if ScenarioChosen is 2:
		now scenario is "Caught Outside";
	else if ScenarioChosen is 3:
		now scenario is "Rescuer Stranded";
	else if ScenarioChosen is 4:
		now scenario is "Forgotten";
	else if ScenarioChosen is 5:
		now scenario is "Researcher";
	else:
		now ScenarioChosen is 1;
		now scenario is "Bunker";
	if AnalLevel < 1 or AnalLevel > 3, now AnalLevel is 2;
	if WSLevel < 1 or WSLevel > 3, now WSLevel is 2;
	if OvipregLevel is not 1, now OvipregLevel is 2;
	increase the score by 10;
	let pointlessbump be 0;
	now MonsterID is a random number from 1 to number of filled rows in the Table of Random Critters;
	choose row MonsterID in Table of Random Critters;
	regularstart; [original start method. easier to move everything then leave here]

When play begins (this is the graphics window construction rule):
	if NewGraphics is true: [Build window regardless in case player decides to turn it on later]
		now the graphics window proportion is NewGraphicsRatio;
		if NewGraphicsPosition is:
			-- 0:
				now graphics window position is g-right;
			-- 1:
				now graphics window position is g-left;
			-- 2:
				now graphics window position is g-above;
			-- 3:
				now graphics window position is g-below;
		reconstruct graphics window;
		[now the graphics window pixel count is 1;]
		follow the ngraphics_blank rule;
		follow the current graphics drawing rule;
		now NewGraphicsOpened is true;
