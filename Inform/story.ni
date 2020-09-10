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
Use MAX_OBJ_PROP_COUNT of 1280.
use MAX_SYMBOLS of 13000000. ["Compiler finished with code 10"]
use MAX_NUM_STATIC_STRINGS of 370000. [ Code 10 ]
use SYMBOLS_CHUNK_SIZE of 250000. [ Code 10 ]
use ALLOC_CHUNK_SIZE of 1450000.
use MAX_OBJECTS of 4000.
use MAX_ACTIONS of 2000.
use MAX_VERBS of 2000.
use MAX_VERBSPACE of 50000.
use MAX_ARRAYS of 100000.
[Use MAX_ZCODE_SIZE of 1000000.]
Use MAX_DICT_ENTRIES OF 5000.
Use maximum text length of at least 2000.
Use Scoring.
[ End compiler settings. ]

[To decide which number is the absolute value of (N - a number):
	if N < 0:
		let N be 0 minus N;
	decide on N.] [enable this to compile on older versions of inform]

[ Basic Functions moved to Basic Functions.i7x in Core Mechanics]

The release number is 67.
The story creation year is 2010.
The maximum score is 2500.


Include Version 4 of Menus by Emily Short.
Include Basic Help Menu by Emily Short.
Include Basic Screen Effects by Emily Short.
[Dependencies] [Important - must get loaded early here]
Include Glulx Entry Points by Emily Short.
Include Glulx Text Effects by Emily Short.
Include Simple Graphical Window by Emily Short.
[New Graphics Handler]
Include Graphics Director by Executaball.

instead of wearing something:
	try using it;
	stop the action;

Section Help Menu

Table of Basic Help Options (continued)
title	description
"Getting Started"	"Welcome to Flexible Survival! To get started with playing there are a few commands you need to know. [line break] In order to move around, you can use the compass directions (north, south, east, west, etc), move 'in' and 'out' of buildings, and 'nav' or 'navigate' between areas. [line break]  You can 'explore' the world to find events, monsters, and new areas, or 'hunt' for something specific. [line break] To interact with things around you, you can 'look', 'get', 'smell', 'fuck', 'talk' to, or 'drop' items. If you do pick things up, you can access you inventory with 'inv'.[line break]If you find yourself running low on food or water, you may need to 'scavenge' around the city."
"Hunting"	"You can hunt for specific creatures. Go to a place you can explore from, like the library.[line break]You there? Ok, now type [bold type]hunt (creature)[roman type].[line break]You are not assured success, but a critter is 3 times more likely to show up when actively looked for.[line break]You can also hunt for locations, if you know their name.[line break]Hunting for something doesn't require that you use the entire name, and can sometimes have multiple results, for example 'hunt dragon' in the park would hunt for both yamato dragon and yamato dragoness, but 'hunt dragoness' would only hunt for the yamato dragoness."
"Trading"	"You can trade with certain denizens of the city. Simple [bold type]give x to y[roman type], like give soda to bob. If they want it, they'll give you something back for it. Trades are final, but usually worth it."
"Scoring"	"Staying alive, making friends, and unearthing the mysteries of the city get you points. Losing battles saps points. See how high a score you can manage!"
"Items"	"You will come to have a variety of items. Here are some useful commands.[line break][line break]Item: See a list of items you own.[line break]look (item): Look at a specific item.[line break]use (item): Use an item[line break]get (item): grab a specific item.[line break]get all: get everything in the room.[line break]junk (item): destroy an item forever.[line break]drop (item): drop the item on the floor, so you can pick it up later."
"Weapons"	"Some items you find make good weapons! Be sure to [bold type]use (weapon)[roman type] before a battle to have them at hand."
"Graphics"	"Graphics can be enabled or disabled by typing [bold type]graphics[roman type]."
"Scavenging"	"Type [bold type]scavenge[roman type] in any room you can fast travel from to hunt for food and water."
"Socializing"	"You can [bold type]talk (person)[roman type] to chat. If they are of more personal interest with you, you can also [bold type]fuck (person)[roman type][line break]"
"Ending Early"	"Type [bold type]end now[roman type] to cause the game to end early. Alternatively you can [bold type]give in[roman type] to the infection."
"Play On"	"You want to skip that ending? Go for it. Type [bold type]play on[roman type] and time will cease to be a concern. You will not get endings though."
"Wait Less"	"Tired of having to click more to continue much of the text?. Type [bold type]Waits Off[roman type] to skip many delays.[line break]Don't like the change and want to go back? Type [bold type]Waits On[roman type] to return to the default."
"Clear Less"	"Don't like the page clearing of text? Want the combat interface at the bottom of the screen? Type [bold type]Clears Off[roman type] to stop screen clearing.[line break]Don't like the change and want to go back? Type [bold type]Clears On[roman type] to return to the default."
"Auto Attack"	"If you have the [']Instinctive Combat['] feat you can use different automatic attacks. These are the same as picking the same option over and over again during combat. No different results, just less typing for faster gameplay.[line break]Type [bold type]auto attack normal[roman type] for the default method of combat (choose each action).[line break]Type [bold type]auto attack berserk[roman type] to always attack in combat.[line break]Type [bold type]auto attack pass[roman type] to always pass in combat.[line break]Type [bold type]auto attack coward[roman type] to always flee in combat.[line break]Type [bold type]auto attack submit[roman type] to always submit in combat."
"Contacting the author"	"If you have any difficulties with [story title], please contact me at: https://blog.flexiblesurvival.com/ ."
"Further Help"	"For further help and information, check out the wiki at: https://wiki.flexiblesurvival.com/w/Main_Page or join the Discord at: https://discord.gg/b54Mbkb ."
"Patron Credits"	"[patroncredits]"

To adjustdefaulthelp: [changes table from Basic Help Menu by Emily Short to better fit this game, without changing that extension, as it may be used by other games]
	now the title in row 2 of Table of Instruction Options is "What to do with >";
	now the description in row 2 of Table of Instruction Options is "The > sign is where the game says, 'Okay, what do you want to do now?' You may respond by typing an instruction -- usually an imperative verb, possibly followed by prepositions and objects. So, for instance, LOOK, LOOK AT FISH, TAKE FISH.";
	now the title in row 1 of Table of Basic Help Options is "Q to quit help, enter to select entry";
	now the description in row 1 of Table of Basic Help Options is "Use arrows to navigate the help menu.[line break]Enter selects the entry that is marked with the >[line break]Q will take you back one level of help, or leave the help system if your at the top.";

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

To say serial number: (- Serial(); -).
[Added function for outputting FS serial number]

Book 1 - Variable Definitions

The file of flexiblestory is called "flexible1".

MonsterID is a number that varies.[@Tag:NotSaved]
NewTypeInfectionActive is a truth state that varies.[@Tag:NotSaved] NewTypeInfectionActive is usually false.
The player has text called name. The name of Player is usually "Player".
[base stats of any character]
A person has a number called Energy.
A person has a number called HP.
A person has a number called MaxHP.
A person has a number called XP.
A person has a number called Level.
A person has a number called Strength.
A person has a number called Dexterity.
A person has a number called Stamina.
A person has a number called Charisma.
A person has a number called Intelligence.
A person has a number called Perception.
A person has a number called Hunger.
A person has a number called Thirst.
A person has a number called Morale.
A person has a number called Lust.
A person has a number called Libido.
A person has a number called Loyalty.
A person has a number called Humanity.

[old style body parts - to be phased out once all infections follow the expanded set]
The player has a text called bodydesc. The bodydesc is usually "[one of]average[or]normal[or]unchanged[at random]".	[adjective for body type/appearance]
The player has a text called bodytype. The bodytype is usually "Human".						[broad adjective for species]
The player has a text called skin. Skin is usually "smooth".
The player has a text called Cock. Cock is usually "[one of]normal[or]flesh-toned[or]uninfected[or]human[at random]".
The player has a text called face. Face is usually "charmingly human".
The player has a text called tail. tail is usually "".
The player has a text called body. Body is usually "charmingly human".
The player has a text called BodyName. BodyName is usually "Human".
The player has a text called FaceName. FaceName is usually "Human".
The player has a text called SkinName. SkinName is usually "Human".
The player has a text called CockName. CockName is usually "Human".
The player has a text called TailName. TailName is usually "Human".
The player has a text called bodySpeciesName. BodySpeciesName is usually "Human".
The player has a text called faceSpeciesName. FaceSpeciesName is usually "Human".
The player has a text called skinSpeciesName. SkinSpeciesName is usually "Human".
The player has a text called cockSpeciesName. cockSpeciesName is usually "Human".
The player has a text called tailSpeciesName. TailSpeciesName is usually "Human".

[Parts: head, torso, back, arms, legs, ass, tail, cock, cunt]
[expanded set of Player specific infection parts]
The player has a text called HeadName. HeadName is usually "Human".
The player has a text called HeadSpeciesName. HeadSpeciesName is usually "Human".
The player has a text called Head Description. Head Description is usually "a typical human".
The player has a text called Head Adjective. Head Adjective is usually "human".
The player has a text called Head Skin Adjective. Head Skin Adjective is usually "".
The player has a text called Head Color. Head Color is usually "fair".
The player has a text called Head Adornments. Head Adornments is usually "".
The player has a number called Hair Length. Hair Length is usually 2.
The player has a number called Body Hair Length. Body Hair Length is usually 2.
The player has a text called Hair Shape. Hair Shape is usually "straight".
The player has a text called Hair Color. Hair Color is usually "red".
The player has a text called Hair Style. Hair Style is usually "buzzcut".
The player has a text called Beard Style. Beard Style is usually "".
The player has a text called Eye Color. Eye Color is usually "green".
The player has a text called Eye Adjective. Eye Adjective is usually "round".
The player has a text called Tongue Adjective. Tongue Adjective is usually "average".
The player has a text called Tongue Color. Tongue Color is usually "pink".
The player has a text called TorsoName. TorsoName is usually "Human".
The player has a text called TorsoSpeciesName. TorsoSpeciesName is usually "Human".
The player has a text called Torso Description. Torso Description is usually "that of a regular human".
The player has a text called Torso Adjective. Torso Adjective is usually "human".
The player has a text called Torso Skin Adjective. Torso Skin Adjective is usually "".
The player has a text called Torso Color. Torso Color is usually "fair".
The player has a text called Torso Pattern. Torso Pattern is usually "".
The player has a text called Breast Adjective. Breast Adjective is usually "perky".
The player has a text called Torso Adornments. Torso Adornments is usually "".
The player has a text called Nipple Color. Nipple Color is usually "light brown".
The player has a text called Nipple Shape. Nipple Shape is usually "oval".
The player has a text called BackName. BackName is usually "Human".
The player has a text called BackSpeciesName. BackSpeciesName is usually "Human".
The player has a text called Back Adornments. Back Adornments is usually "".
The player has a text called Back Skin Adjective. Back Skin Adjective is usually "".
The player has a text called Back Color. Back Color is usually "fair".
The player has a text called ArmsName. ArmsName is usually "Human".
The player has a text called ArmsSpeciesName. ArmsSpeciesName is usually "Human".
The player has a text called Arms Description. Arms Description is usually "those of a regular human".
The player has a text called Arms Skin Adjective. Arms Skin Adjective is usually "".
The player has a text called Arms Color. Arms Color is usually "fair".
The player has a text called Locomotion. Locomotion is usually "bipedal".
The player has a text called LegsName. LegsName is usually "Human".
The player has a text called LegsSpeciesName. LegsSpeciesName is usually "Human".
The player has a text called Legs Description. Legs Description is usually "that of a regular human, reaching all the way to the ground".
The player has a text called Legs Skin Adjective. Legs Skin Adjective is usually "".
The player has a text called Legs Color. Legs Color is usually "fair".
The player has a text called AssName. AssName is usually "Human".
The player has a text called AssSpeciesName. AssSpeciesName is usually "Human".
The player has a text called Ass Description. Ass Description is usually "ass".
The player has a text called Ass Skin Adjective. Ass Skin Adjective is usually "".
The player has a text called Ass Color. Ass Color is usually "fair".
The player has a number called Ass Width. Ass Width is usually 3.
The player has a text called TailName. TailName is usually "Human".
The player has a text called TailSpeciesName. TailSpeciesName is usually "Human".
The player has a text called Tail Description. Tail Description is usually "".
The player has a text called Tail Skin Adjective. Tail Skin Adjective is usually "".
The player has a text called Tail Color. Tail Color is usually "fair".
The player has a text called Asshole Color. Asshole Color is usually "pink".
The player has a text called CockName. CockName is usually "Human".
The player has a text called CockSpeciesName. CockSpeciesName is usually "Human".
The player has a text called Cock Description. Cock Description is usually "is that of a regular human, complete with an uncut foreskin".
The player has a text called Cock Adjective. Cock Adjective is usually "human".
The player has a text called Cock Color. Cock Color is usually "tanned".
The player has a text called Ball Description. Ball Description is usually "balls in a wrinkled, low-hanging sack".
The player has a text called CuntName. CuntName is usually "Human".
The player has a text called CuntSpeciesName. CuntSpeciesName is usually "Human".
The player has a text called Cunt Description. Cunt Description is usually "human in shape, with delicate nether lips and a clit at the top".
The player has a text called Cunt Adjective. Cunt Adjective is usually "human".
The player has a text called Cunt Color. Cunt Color is usually "pink".

[numerical variables for all characters]
A person has a number called Body Weight. Body Weight is usually 5.
A person has a number called Body Definition. Body Definition is usually 5.
A person has a number called Androginity. Androginity is usually 5.
A person has a number called Mouth Length. Mouth Length is usually 5.
A person has a number called Mouth Circumference. Mouth Circumference is usually 7.
A person has a number called Tongue Length. Tongue Length is usually 3.
A person has a number called Breast Size. Breast Size is usually 0.
A person has a number called Nipple Count. Nipple Count is usually 2.
A person has a number called Asshole Depth. Asshole Depth is usually 9.
A person has a number called Asshole Tightness. Asshole Tightness is usually 2.
A person has a number called Cock Count. Cock Count is usually 0.
A person has a number called Cock Girth. Cock Girth is usually 7.
A person has a number called Cock Length. Cock Length is usually 6.
A person has a number called Ball Count. Ball Count is usually 2.
A person has a number called Ball Size. Ball Size is usually 3.
A person has a number called Cunt Count. Cunt Count is usually 0.
A person has a number called Cunt Depth. Cunt Depth is usually 9.
A person has a number called Cunt Tightness. Cunt Tightness is usually 5.
A person has a number called Clit Size. Clit Size is usually 3.
A person has a number called Armor.
A person has a number called Capacity.
A person has a text called MainInfection. MainInfection is usually "Human". [just to have something valid in this, the variable should be overwritten for every NPC]
A person has a text called linkaction.
A person has a text called FirstAnalPartner.
A person has a text called FirstVaginalPartner.
A person has a text called FirstOralPartner.
A person has a text called FirstPenilePartner.
A person has a number called SleepRhythm. [day/night bias]
A person has a number called scalevalue. The scalevalue is usually 3.						[value for body size]

A person has text called Cock Size Desc.
A person has text called Cunt Size Desc.
A person has text called Breast Size Desc.
A person has text called Short Breast Size Desc.
A person has a truth state called PlayerMet. PlayerMet is usually false.
A person has a truth state called PlayerRomanced. PlayerRomanced is usually false.
A person has a truth state called PlayerFriended. PlayerFriended is usually false. [not saved till new infection system update]
A person has a truth state called PlayerControlled. PlayerControlled is usually false. [not saved till new infection system update]
A person has a truth state called PlayerFucked. PlayerFucked is usually false.
A person has a truth state called OralVirgin. OralVirgin is usually true.
A person has a truth state called Virgin. Virgin is usually true.
A person has a truth state called AnalVirgin. AnalVirgin is usually true.
A person has a truth state called PenileVirgin. PenileVirgin is usually true. [not saved till new infection system update]
A person has a truth state called SexuallyExperienced. SexuallyExperienced is usually false. [not saved till new infection system update]
A person has a truth state called TwistedCapacity. TwistedCapacity is usually false. [not saved till new infection system update]
A person has a truth state called Sterile. Sterile is usually false. [not saved till new infection system update]
A person has a truth state called Sleeping. Sleeping is usually false. [should not be saved? unless someone wants to make sleeping beauty]
A person has a text called Originalgender. Originalgender is usually "Undefined". [original gender of the pre-transform person]
A person has a text called PlayerOriginalgender. PlayerOriginalGender is usually "Undefined". [first meeting gender with the player]
A person has a text called PlayerLastGender. PlayerLastGender is usually "Undefined". [gender of the player during the last meeting]
A person has a text called PlayerLastBodytype. PlayerLastBodytype is usually "Undefined". [bodytype of the player during the last meeting]
A person has a number called PlayerLastSize. PlayerLastSize is usually 3. [size of the player during the last meeting]

The Player has a truth state called MaleInterest. MaleInterest is usually true.
The Player has a truth state called TransMaleInterest. TransMaleInterest is usually true.
The Player has a truth state called FemaleInterest. FemaleInterest is usually true.
The Player has a truth state called TransFemaleInterest. TransFemaleInterest is usually true.
The Player has a truth state called HermInterest. HermInterest is usually true.

The player has a text called weapon. Weapon is usually "[one of]your quick wit[or]your fists[or]a quick kick[or]your body[or]some impromptu wrestling[or]an unarmed strike[at random]".
The player has a text called weapon type. Weapon type is usually "Melee".
A person has a number called Weapon damage. Weapon damage is usually 4.
A person has a list of text called conversation.
A person has a list of text called Traits.

freecred is a number that varies.
playon is a number that varies.
JournalNotes is a list of text that varies.
the player has a list of text called invent.
the player has a list of text called vials.
the player has a list of text called tapes.
the player has a list of text called OpenQuests.
the player has a list of text called CompletedQuests.
Rooms has a list of text called invent.
The player has a list of text called Feats.
The player has a list of text called EncounteredEnemies.
The player has a list of text called BlockList.
The player has a list of text called AnalVirginitiesTaken.
The player has a list of text called VirginitiesTaken.
The player has a list of text called OralVirginitiesTaken.
The player has a list of text called PenileVirginitiesTaken.

A person can be a trader.
Scenario is a text that varies.

a creature is a kind of person.
a creature has a text called Name. Name is usually "".
a creature has a text called BodyName. BodyName is usually "Human".
a creature has a text called FaceName. FaceName is usually "Human".
a creature has a text called SkinName. SkinName is usually "Human".
a creature has a text called CockName. CockName is usually "Human".
a creature has a text called TailName. TailName is usually "Human".
a creature has a text called bodySpeciesName. BodySpeciesName is usually "Human".
a creature has a text called faceSpeciesName. FaceSpeciesName is usually "Human".
a creature has a text called skinSpeciesName. SkinSpeciesName is usually "Human".
a creature has a text called cockSpeciesName. cockSpeciesName is usually "Human".
a creature has a text called tailSpeciesName. TailSpeciesName is usually "Human".
a creature has a text called HeadName. HeadName is usually "Human".
a creature has a text called TorsoName. TorsoName is usually "Human".
a creature has a text called BackName. BackName is usually "Human".
a creature has a text called ArmsName. ArmsName is usually "Human".
a creature has a text called LegsName. LegsName is usually "Human".
a creature has a text called AssName. AssName is usually "Human".
a creature has a text called TailName. TailName is usually "Human".
a creature has a text called CockName. CockName is usually "Human".
a creature has a text called CuntName. CuntName is usually "Human".
a creature has a text called HeadSpeciesName. HeadSpeciesName is usually "Human".
a creature has a text called TorsoSpeciesName. TorsoSpeciesName is usually "Human".
a creature has a text called BackSpeciesName. BackSpeciesName is usually "Human".
a creature has a text called ArmsSpeciesName. ArmsSpeciesName is usually "Human".
a creature has a text called LegsSpeciesName. LegsSpeciesName is usually "Human".
a creature has a text called AssSpeciesName. AssSpeciesName is usually "Human".
a creature has a text called TailSpeciesName. TailSpeciesName is usually "Human".
a creature has a text called CockSpeciesName. CockSpeciesName is usually "Human".
a creature has a text called CuntSpeciesName. CuntSpeciesName is usually "Human".

Child is a creature.
The printed name of Child is "Child".
Child has a number called Gestation.
Child can be born. Child is not born.
Childrenfaces is a list of text that varies.
Childrenskins is a list of text that varies.
Childrenbodies is a list of text that varies.

Table of GameCharacterIDs
object	name
child	"child"
yourself	"yourself"
Offspring	"offspring"
Impregnator	"Impregnator"
Impregnatee	"Impregnatee"

Impregnator is a creature.
The printed name of Impregnator is "Impregnator".

Impregnatee is a creature.
The printed name of Impregnatee is "Impregnatee".


Offspring is a person. [bunker children]

Table of PlayerChildren
Name (text)	BirthTurn (number)	Gender (text)	Head (text)	Torso (text)	Back (text)	Arms (text)	Legs (text)	Ass (text)	Tail (text)	ShowTail (truth state)	ShowLegs (truth state)	Pureblood (truth state)	Albino (truth state)	Melanism (truth state)	Feral (truth state)	Personality (text)	PlayerRelationship (text)
with 1000 blank rows

Table of PlayerBunkerChildren
Name (text)	BirthTurn (number)	Gender (text)	Head (text)	Torso (text)	Back (text)	Arms (text)	Legs (text)	Ass (text)	Tail (text)	ShowTail (truth state)	ShowLegs (truth state)	Pureblood (truth state)	Albino (truth state)	Melanism (truth state)	Feral (truth state)	Personality (text)	PlayerRelationship (text)
with 1000 blank rows

Table of PlayerRoamingChildren
Name (text)	BirthTurn (number)	Gender (text)	Head (text)	Torso (text)	Back (text)	Arms (text)	Legs (text)	Ass (text)	Tail (text)	ShowTail (truth state)	ShowLegs (truth state)	Pureblood (truth state)	Albino (truth state)	Melanism (truth state)	Feral (truth state)	Personality (text)	PlayerRelationship (text)
with 1000 blank rows

Allobjs is a list of text that varies.[@NotSaved]
Grab Object is a kind of thing.
a grab object has a number called objsize. Objsize of grab object is usually 3.	[Used only for armaments and journal.]
things have a text called scent.
rooms have a text called scent.
The player has a grab object called weapon object. A weapon object is usually journal.
A armament is a kind of grab object.
A armament has a text called weapon.
A armament has a text called weapon type.
A armament has a number called Weapon Damage.
A armament has a number called hitbonus.	[Rare, usually magic]
An armament can be ranged or melee. An armament is usually melee.
Equipment is a kind of grab object.
Equipment can be equipped or not equipped. Equipment is usually not equipped.
Equipment can be cursed or not cursed. Equipment is usually not cursed. [can't take it off if cursed]
Equipment has a text called descmod. The descmod of equipment is usually "".
Equipment has a text called placement. The placement of equipment is usually "end".
Equipment has a text called slot. The slot of equipment is usually "".
Equipment has a truth state called taur-compatible. Taur-compatible of equipment is usually false.
Equipment has a number called GA. The GA of equipment is usually 0. [neutral]
Equipment has a list of text called Traits.
Equipment has a number called size. The size of equipment is usually 3.
Equipment has a number called AC. The AC of equipment is usually 0.
Equipment has a number called effectiveness. The effectiveness of equipment is usually 0.
Equipment has a number called dodgebonus. The dodgebonus of equipment is usually 0.	[Rare, usually magic]
Equipment has a number called damagebonus. The damagebonus of equipment is usually 0.	[Rare, usually magic]
Equipment has a number called fleebonus. The fleebonus of equipment is usually 0.		[Usually a penalty]
Equipment has a text called skillcheck bonus. The skillcheck bonus of equipment is usually "".
Equipment has a number called skillcheck value. The skillcheck value of equipment is usually 0.
A grab object can be temporary. A grab object is usually temporary.
A grab object can be fast. A grab object is usually not fast.
A grab object can be infectious.
A grab object can be milky. A grab object is usually not milky.
A grab object can be cum. A grab object is usually not cum.
A grab object has a truth state called plural. Plural of a grab object is usually false.
A grab object has a text called strain.
A grab object has a text called trade.
A grab object has a text called purified.
A grab object has a text called usedesc.
A grab object has a number called carried.
A grab object has a number called stashed.
Turns is a number that varies. Turns is 240.
Hardmode is a truth state that varies. Hardmode is usually false.
nohealmode is a truth state that varies. nohealmode is usually false.
blindmode is a truth state that varies. blindmode is usually false.
Lastjournaluse is a number that varies. Lastjournaluse is 248.
Targetturns is a number that varies. Targetturns is usually -240.
Started is a number that varies.
Freefeats is a number that varies.
Lost is a number that varies.
showlocale is a truth state that varies. showlocale is usually true.
NewGraphics is a truth state that varies. NewGraphics is usually true.
NewGraphicsInteger is a number that varies. NewGraphicsInteger is usually 2.
NewGraphicsDebugMode is a truth state that varies. NewGraphicsDebugMode is usually false.
NewGraphicsRatio is a number that varies. NewGraphicsRatio is usually 30.
NewGraphicsOpened is a truth state that varies. NewGraphicsOpened is usually false. [set to true for entire playthrough if graphics window opened - unless inline/disabled specified at start]
[For use with new safe restore]
RestoreMode is a truth state that varies. RestoreMode is usually false.
CurrentMedkitSupplies is a number that varies.[@Tag:NotSaved] [uses left in the currently open medkit]CurrentMedkitSupplies is usually 5.

A situation is a kind of thing.
A situation has a text called ResolveFunction. ResolveFunction of a situation is usually "[ResolveError]".
A situation can be resolved or unresolved. A situation is usually unresolved.
A situation can be active or inactive. A situation is usually active.
A situation has a number called Resolution.
A situation has a situation called Prereq1.
A situation has a truth state called Prereq1ResolvedMandatory. Prereq1ResolvedMandatory of a situation is usually true.
A situation has a list of numbers called Prereq1Resolution. Prereq1Resolution is usually { 0 }.
A situation has a situation called Prereq2.
A situation has a truth state called Prereq2ResolvedMandatory. Prereq2ResolvedMandatory of a situation is usually true.
A situation has a list of numbers called Prereq2Resolution. Prereq2Resolution is usually { 0 }.
A situation has a situation called Prereq3.
A situation has a truth state called Prereq3ResolvedMandatory. Prereq3ResolvedMandatory of a situation is usually true.
A situation has a list of numbers called Prereq3Resolution. Prereq3Resolution is usually { 0 }.
A situation has an object called PrereqCompanion.
A situation has a text called PrereqTime. The PrereqTime of a situation is usually "Any".
[TODO: Add PrereqNavpoint]
A situation has a text called sarea. Sarea of a situation is usually "Outside".
A situation has a number called level. The level of a situation is usually 0.
A situation has a number called minscore. The minscore of a situation is usually -2147483648.
A featset is a kind of thing.
inasituation is a truth state that varies. inasituation is normally false.

to say ResolveError:
	say "ERROR: The situation that caused this message to appear is not properly set up. Please report the situation and this message on the Flexible Survival Discord Server!";

PlaceholderSituation is a situation.
PlaceholderSituation is resolved. [needs to always be resolved]
ResolveFunction of PlaceholderSituation is "[ResolveEvent PlaceholderSituation]".

to say ResolveEvent PlaceholderSituation:
	say "This is the placeholder situation. How did you see this?";

Definition: A situation (called x) is available:
	if sarea of x is "Nowhere", no; [not findable through exploration/hunting]
	if x is inactive, no; [for banning]
	if x is resolved, no; [the player has played through these]
	if x is not PrereqComplete, no;
	if x is close:
		if score < minscore of x:
			no;
		else if hardmode is true:
			yes;
		else if the level of x < (level of Player + 1):
			yes;
	no;

Definition: A situation (called x) is PrereqComplete:
	if PrereqCompanion of x is not nothing and PrereqCompanion of x is not listed in companionList of Player, no;
	if PrereqTime is not "Any" and ((PrereqTime is "Day" and Daytimer is night) or (PrereqTime is "Night" and Daytimer is day)), no;
	if Prereq1ResolvedMandatory of x is true and Prereq1 of x is not resolved, no;
	if Resolution of Prereq1 of x is not listed in Prereq1Resolution of x, no;
	if Prereq2ResolvedMandatory of x is true and Prereq2 of x is not resolved, no;
	if Resolution of Prereq2 of x is not listed in Prereq2Resolution of x, no;
	if Prereq3ResolvedMandatory of x is true and Prereq3 of x is not resolved, no;
	if Resolution of Prereq3 of x is not listed in Prereq3Resolution of x, no;
	yes;

Definition: A situation (called x) is close:
	if ( sarea of x exactly matches the text battleground, case insensitively ) or ( (battleground is "Outside" or battleground is "High" or battleground is "Capitol" or battleground is "Park" or battleground is "Forest" or battleground is "Beach") and ( Sarea of x is "Allzones" or Sarea of x is "allzones" ) ):
		yes;
	no;

Definition: A scavevent (called x) is scavable:
	if ( sarea of x exactly matches the text battleground, case insensitively ) or ( (battleground is "Outside" or battleground is "High" or battleground is "Capitol" or battleground is "Park" or battleground is "Forest" or battleground is "Beach") and ( sarea of x is "Allzones" or Sarea of x is "allzones" ) ):
		if score < minscore of x:
			no;
		else if hardmode is true:
			yes;
		else if the level of x < (level of Player + 1):
			yes;
	no;

Definition: A grab object (called x) is wielded:
	if weapon object of Player is x, yes;
	no;

Definition: A grab object (called x) is unwieldy:		[applies to armaments only]
	if grab object is journal, no;
	if (absolute value of ( scalevalue of Player - objsize of x )) > 0, yes;
	no;

A person can be asleep. A person is usually not asleep.

Definition: A person (called x) is asleep:
	if Sleeping of x is true, yes;
	no;

A person can be defaultnamed. A person is usually defaultnamed.

Definition: A person (called x) is defaultnamed:
	if name of Player is "Player", yes;
	no;

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

A person can be MProN. A person is usually not MProN.

Definition: A person (called x) is MProN:
	if PronounSet of x is "Male", yes;
	no;

A person can be FProN. A person is usually not FProN.

Definition: A person (called x) is FProN:
	if PronounSet of x is "Female", yes;
	no;

A person can be HProN. A person is usually not HProN.

Definition: A person (called x) is HProN:
	if PronounSet of x is "Herm", yes;
	no;

A person can be NProN. A person is usually not NProN.

Definition: A person (called x) is NProN:
	if PronounSet of x is "Neuter", yes;
	no;

A person can be internal. A person is usually not internal.

internalbypass is a truth state that varies. internalbypass is usually false.

Definition: A person (called x) is internal:
	if CockName of x is listed in infections of InternalCockList and internalbypass is false, yes;
	no;

A person can be sheathed. A person is usually not sheathed.

Definition: A person (called x) is sheathed:
	if CockName of Player is listed in infections of SheathedCockList, yes;
	no;

A person can be knotted. A person is usually not knotted.

Definition: A person (called x) is knotted:
	if CockName of Player is listed in infections of KnottedCockList, yes;
	no;

A person can be barbed. A person is usually not barbed.

Definition: A person (called x) is barbed:
	if CockName of Player is listed in infections of BarbedCocklist, yes;
	no;

A person can be blunt. A person is usually not blunt.

Definition: A person (called x) is blunt:
	if CockName of Player is listed in infections of BluntCockList, yes;
	no;

A person can be HeadFurred. A person is usually not HeadFurred.

Definition: A person (called x) is HeadFurred:
	if HeadName of Player is listed in infections of Bovinelist, yes;
	if HeadName of Player is listed in infections of CanineList, yes;
	if HeadName of Player is listed in infections of CervineList, yes;
	if HeadName of Player is listed in infections of EquineList, yes;
	if HeadName of Player is listed in infections of FelineList, yes;
	if HeadName of Player is listed in infections of LeporineList, yes;
	if HeadName of Player is listed in infections of MarsupialList, yes;
	if HeadName of Player is listed in infections of MustelidList, yes;
	if HeadName of Player is listed in infections of PrimateList, yes;
	if HeadName of Player is listed in infections of RodentList, yes;
	if HeadName of Player is listed in infections of UrsineList, yes;
	if HeadName of Player is listed in infections of VulpineList, yes;
	no;

A person can be HeadFeathered. A person is usually not HeadFeathered.

Definition: A person (called x) is HeadFeathered:
	if HeadName of Player is listed in infections of AvianList, yes;
	if HeadName of Player is listed in infections of AvianpredList, yes;
	no;

A person can be HeadScaled. A person is usually not HeadScaled.

Definition: A person (called x) is HeadScaled:
	if HeadName of Player is listed in infections of ReptileList, yes;
	no;

A person can be HeadPlated. A person is usually not HeadPlated.

Definition: A person (called x) is HeadPlated:
	if HeadName of Player is listed in infections of ArachnidList, yes;
	if HeadName of Player is listed in infections of InsectList, yes;
	if HeadName of Player is listed in infections of MachineList, yes;
	no;

A person can be HeadSkinned. A person is usually HeadSkinned.

Definition: A person (called x) is HeadSkinned:
	if HeadName of Player is listed in infections of HybridList, no;
	if x is HeadPlated, no;
	if x is HeadScaled, no;
	if x is HeadFeathered, no;
	if x is HeadFurred, no;
	yes;

A person can be TorsoFurred. A person is usually not TorsoFurred.

Definition: A person (called x) is TorsoFurred:
	if TorsoName of Player is listed in infections of Bovinelist, yes;
	if TorsoName of Player is listed in infections of CanineList, yes;
	if TorsoName of Player is listed in infections of CervineList, yes;
	if TorsoName of Player is listed in infections of EquineList, yes;
	if TorsoName of Player is listed in infections of FelineList, yes;
	if TorsoName of Player is listed in infections of LeporineList, yes;
	if TorsoName of Player is listed in infections of MarsupialList, yes;
	if TorsoName of Player is listed in infections of MustelidList, yes;
	if TorsoName of Player is listed in infections of PrimateList, yes;
	if TorsoName of Player is listed in infections of RodentList, yes;
	if TorsoName of Player is listed in infections of UrsineList, yes;
	if TorsoName of Player is listed in infections of VulpineList, yes;
	no;

A person can be TorsoFeathered. A person is usually not TorsoFeathered.

Definition: A person (called x) is TorsoFeathered:
	if TorsoName of Player is listed in infections of AvianList, yes;
	if TorsoName of Player is listed in infections of AvianpredList, yes;
	no;

A person can be TorsoScaled. A person is usually not TorsoScaled.

Definition: A person (called x) is TorsoScaled:
	if TorsoName of Player is listed in infections of ReptileList, yes;
	no;

A person can be TorsoPlated. A person is usually not TorsoPlated.

Definition: A person (called x) is TorsoPlated:
	if TorsoName of Player is listed in infections of ArachnidList, yes;
	if TorsoName of Player is listed in infections of InsectList, yes;
	if TorsoName of Player is listed in infections of MachineList, yes;
	no;

A person can be TorsoSkinned. A person is usually TorsoSkinned.

Definition: A person (called x) is TorsoSkinned:
	if TorsoName of Player is listed in infections of HybridList, no;
	if x is TorsoPlated, no;
	if x is TorsoScaled, no;
	if x is TorsoFeathered, no;
	if x is TorsoFurred, no;
	yes;


A person can be ArmsFurred. A person is usually not ArmsFurred.

Definition: A person (called x) is ArmsFurred:
	if ArmsName of Player is listed in infections of Bovinelist, yes;
	if ArmsName of Player is listed in infections of CanineList, yes;
	if ArmsName of Player is listed in infections of CervineList, yes;
	if ArmsName of Player is listed in infections of EquineList, yes;
	if ArmsName of Player is listed in infections of FelineList, yes;
	if ArmsName of Player is listed in infections of LeporineList, yes;
	if ArmsName of Player is listed in infections of MarsupialList, yes;
	if ArmsName of Player is listed in infections of MustelidList, yes;
	if ArmsName of Player is listed in infections of PrimateList, yes;
	if ArmsName of Player is listed in infections of RodentList, yes;
	if ArmsName of Player is listed in infections of UrsineList, yes;
	if ArmsName of Player is listed in infections of VulpineList, yes;
	no;

A person can be ArmsFeathered. A person is usually not ArmsFeathered.

Definition: A person (called x) is ArmsFeathered:
	if ArmsName of Player is listed in infections of AvianList, yes;
	if ArmsName of Player is listed in infections of AvianpredList, yes;
	no;

A person can be ArmsScaled. A person is usually not ArmsScaled.

Definition: A person (called x) is ArmsScaled:
	if ArmsName of Player is listed in infections of ReptileList, yes;
	no;

A person can be ArmsPlated. A person is usually not ArmsPlated.

Definition: A person (called x) is ArmsPlated:
	if ArmsName of Player is listed in infections of ArachnidList, yes;
	if ArmsName of Player is listed in infections of InsectList, yes;
	if ArmsName of Player is listed in infections of MachineList, yes;
	no;

A person can be ArmsSkinned. A person is usually ArmsSkinned.

Definition: A person (called x) is ArmsSkinned:
	if ArmsName of Player is listed in infections of HybridList, no;
	if x is ArmsPlated, no;
	if x is ArmsScaled, no;
	if x is ArmsFeathered, no;
	if x is ArmsFurred, no;
	yes;

A person can be LegsFurred. A person is usually not LegsFurred.

Definition: A person (called x) is LegsFurred:
	if LegsName of Player is listed in infections of Bovinelist, yes;
	if LegsName of Player is listed in infections of CanineList, yes;
	if LegsName of Player is listed in infections of CervineList, yes;
	if LegsName of Player is listed in infections of EquineList, yes;
	if LegsName of Player is listed in infections of FelineList, yes;
	if LegsName of Player is listed in infections of LeporineList, yes;
	if LegsName of Player is listed in infections of MarsupialList, yes;
	if LegsName of Player is listed in infections of MustelidList, yes;
	if LegsName of Player is listed in infections of PrimateList, yes;
	if LegsName of Player is listed in infections of RodentList, yes;
	if LegsName of Player is listed in infections of UrsineList, yes;
	if LegsName of Player is listed in infections of VulpineList, yes;
	no;

A person can be LegsFeathered. A person is usually not LegsFeathered.

Definition: A person (called x) is LegsFeathered:
	if LegsName of Player is listed in infections of AvianList, yes;
	if LegsName of Player is listed in infections of AvianpredList, yes;
	no;

A person can be LegsScaled. A person is usually not LegsScaled.

Definition: A person (called x) is LegsScaled:
	if LegsName of Player is listed in infections of ReptileList, yes;
	no;

A person can be LegsPlated. A person is usually not LegsPlated.

Definition: A person (called x) is LegsPlated:
	if LegsName of Player is listed in infections of ArachnidList, yes;
	if LegsName of Player is listed in infections of InsectList, yes;
	if LegsName of Player is listed in infections of MachineList, yes;
	no;

A person can be LegsSkinned. A person is usually LegsSkinned.

Definition: A person (called x) is LegsSkinned:
	if LegsName of Player is listed in infections of HybridList, no;
	if x is LegsPlated, no;
	if x is LegsScaled, no;
	if x is LegsFeathered, no;
	if x is LegsFurred, no;
	yes;


A person can be AssFurred. A person is usually not AssFurred.

Definition: A person (called x) is AssFurred:
	if AssName of Player is listed in infections of Bovinelist, yes;
	if AssName of Player is listed in infections of CanineList, yes;
	if AssName of Player is listed in infections of CervineList, yes;
	if AssName of Player is listed in infections of EquineList, yes;
	if AssName of Player is listed in infections of FelineList, yes;
	if AssName of Player is listed in infections of LeporineList, yes;
	if AssName of Player is listed in infections of MarsupialList, yes;
	if AssName of Player is listed in infections of MustelidList, yes;
	if AssName of Player is listed in infections of PrimateList, yes;
	if AssName of Player is listed in infections of RodentList, yes;
	if AssName of Player is listed in infections of UrsineList, yes;
	if AssName of Player is listed in infections of VulpineList, yes;
	no;

A person can be AssFeathered. A person is usually not AssFeathered.

Definition: A person (called x) is AssFeathered:
	if AssName of Player is listed in infections of AvianList, yes;
	if AssName of Player is listed in infections of AvianpredList, yes;
	no;

A person can be AssScaled. A person is usually not AssScaled.

Definition: A person (called x) is AssScaled:
	if AssName of Player is listed in infections of ReptileList, yes;
	no;

A person can be AssPlated. A person is usually not AssPlated.

Definition: A person (called x) is AssPlated:
	if AssName of Player is listed in infections of ArachnidList, yes;
	if AssName of Player is listed in infections of InsectList, yes;
	if AssName of Player is listed in infections of MachineList, yes;
	no;

A person can be AssSkinned. A person is usually AssSkinned.

Definition: A person (called x) is AssSkinned:
	if AssName of Player is listed in infections of HybridList, no;
	if x is AssPlated, no;
	if x is AssScaled, no;
	if x is AssFeathered, no;
	if x is AssFurred, no;
	yes;

A person can be TailFurred. A person is usually not TailFurred.

Definition: A person (called x) is TailFurred:
	if TailName of Player is listed in infections of Bovinelist, yes;
	if TailName of Player is listed in infections of CanineList, yes;
	if TailName of Player is listed in infections of CervineList, yes;
	if TailName of Player is listed in infections of EquineList, yes;
	if TailName of Player is listed in infections of FelineList, yes;
	if TailName of Player is listed in infections of LeporineList, yes;
	if TailName of Player is listed in infections of MarsupialList, yes;
	if TailName of Player is listed in infections of MustelidList, yes;
	if TailName of Player is listed in infections of PrimateList, yes;
	if TailName of Player is listed in infections of RodentList, yes;
	if TailName of Player is listed in infections of UrsineList, yes;
	if TailName of Player is listed in infections of VulpineList, yes;
	no;

A person can be TailFeathered. A person is usually not TailFeathered.

Definition: A person (called x) is TailFeathered:
	if TailName of Player is listed in infections of AvianList, yes;
	if TailName of Player is listed in infections of AvianpredList, yes;
	no;

A person can be TailScaled. A person is usually not TailScaled.

Definition: A person (called x) is TailScaled:
	if TailName of Player is listed in infections of ReptileList, yes;
	no;

A person can be TailPlated. A person is usually not TailPlated.

Definition: A person (called x) is TailPlated:
	if TailName of Player is listed in infections of ArachnidList, yes;
	if TailName of Player is listed in infections of InsectList, yes;
	if TailName of Player is listed in infections of MachineList, yes;
	no;

A person can be TailSkinned. A person is usually TailSkinned.

Definition: A person (called x) is TailSkinned:
	if TailName of Player is listed in infections of HybridList, no;
	if x is TailPlated, no;
	if x is TailScaled, no;
	if x is TailFeathered, no;
	if x is TailFurred, no;
	yes;

Definition: A person (called x) is perminfected:
	if ( JackalManTF > 0 or JackalBoyTF > 0 ) or nightmaretf > 0 or HellHoundlevel > 0 or ( wrcursestatus >= 7 and wrcursestatus < 100 ), yes;
	no;

Definition: A person (called x) is pure:
	if Player is not FullyNewTypeInfected: [player doesn't have all new type parts]
		if BodyName of x is FaceName of x:
			if BodyName of x is TailName of x:
				if BodyName of x is SkinName of x:
					if BodyName of x is CockName of x:
						yes;
		no;
	else:
		if HeadName of x is TorsoName of x:
			if HeadName of x is BackName of x:
				if HeadName of x is ArmsName of x:
					if HeadName of x is LegsName of x:
						if HeadName of x is AssName of x:
							if HeadName of x is TailName of x:
								if HeadName of x is CockName of x:
									if HeadName of x is CuntName of x:
										yes;
		no;

Definition: A person (called x) is purehuman:
	if Player is not FullyNewTypeInfected: [player doesn't have all new type parts]
		if BodyName of Player is "Human" or BodyName of Player is "Herm Human":
			if FaceName of Player is "Human" or FaceName of Player is "Herm Human":
				if TailName of Player is "Human" or TailName of Player is "Herm Human":
					if SkinName of Player is "Human" or SkinName of Player is "Herm Human":
						if CockName of Player is "Human" or CockName of Player is "Herm Human":
							yes;
		no;
	else:
		if HeadName of Player is "Human" or HeadName of Player is "Herm Human":
			if HeadName of Player is "Human" or TorsoName of Player is "Herm Human":
				if HeadName of Player is "Human" or BackName of Player is "Herm Human":
					if HeadName of Player is "Human" or ArmsName of Player is "Herm Human":
						if HeadName of Player is "Human" or LegsName of Player is "Herm Human":
							if HeadName of Player is "Human" or AssName of Player is "Herm Human":
								if HeadName of Player is "Human" or TailName of Player is "Herm Human":
									if HeadName of Player is "Human" or CockName of Player is "Herm Human":
										if HeadName of Player is "Human" or CuntName of Player is "Herm Human":
											yes;
		no;
Definition: A person (called x) is male:			[note: this is both male and herm]
	if Cock Count of x > 0, yes;

Definition: A person (called x) is puremale:
	if Cock Count of x > 0 and Cunt Count of x is 0, yes;

Definition: A person (called x) is female:			[note: this is both female and herm]
	if Cunt Count of x > 0, yes;

Definition: A person (called x) is purefemale:
	if Cunt Count of x > 0 and Cock Count of x is 0, yes;

Definition: A person (called x) is herm:
	if Cock Count of x > 0 and Cunt Count of x > 0, yes;

Definition: A person (called x) is neuter:
	if Cock Count of x is 0 and Cunt Count of x is 0, yes;

A person can be booked. A person can be bunkered. A person is usually not booked. A person is usually not bunkered.

Definition: A person (Called x) is booked:
[	If x is the player, no;]
	If x is Trixie, no;
	if x is Velos, no;
	if the location of x is Grey Abbey Library, yes;
	if the location of x is Grey Abbey 2F, yes;
	if the location of x is Half-Renovated Room, yes;
	if the location of x is Breakroom, yes;
	if the location of x is Pantry, yes;
	if the location of x is Computer Lab, yes;
	if the location of x is Back Of The Library, yes;
	if the location of x is Makeshift Rec Room, yes;
	if the location of x is Courtyard, yes;
	if the location of x is Large Shed, yes;
	if the location of x is Grey Abbey Garden, yes;
	if the location of x is Sitting Area, yes;
	if the location of x is Garden View, yes;
	if the location of x is Darkened Alcove, yes;
	if the location of x is Attic, yes;
	if x is Zoe:
		if "Saved" is listed in Traits of Zoe, yes;
			[if Rabbit Tagger is resolved,] [What is this?][ yes; ][Zoe is absent during the day, but we need the booked to be true for the room description.]
	no;

Definition: A person (Called x) is bunkered:
[	If x is the player, no;]
	if x is Velos, no;
	if the location of x is Bunker, yes;
	if the location of x is Communal Shower, yes;
	if the location of x is Underground Restroom, yes;
	if the location of x is Maintenance Storeroom, yes;
	no;

Definition: A person (called x) is CockFitsInPlayerPussy:
	if "Twisted Capacity" is listed in the feats of Player, yes;
	if Cock Length of x > Cunt Depth of Player + 1, no; [some stretching allowed]
	yes;

Definition: A person (called x) is CuntFitsForPlayerCock:
	if Cock Length of Player > Cunt Depth of x + 1, no; [some stretching allowed]
	yes;

Definition: A person (called x) is PlayerCumLoadInflates: [yes = inflation; can be adapted for any kind of inflation (egg, enema, etc.)]
	if ScaleValue of x is 1 and Ball Size of Player >= 3, yes;
	if ScaleValue of x is 2 and Ball Size of Player >= 4, yes;
	if ScaleValue of x is 3 and Ball Size of Player >= 5, yes;
	if ScaleValue of x is 4 and Ball Size of Player >= 6, yes;
	if Ball Size of Player >= 7, yes;
	no;

Definition: A person (called x) is CumLoadInflatesPlayer: [yes = inflation; can be adapted for any kind of inflation (egg, enema, etc.)]
	if ScaleValue of Player is 1 and Ball Size of x >= 3, yes;
	if ScaleValue of Player is 2 and Ball Size of x >= 4, yes;
	if ScaleValue of Player is 3 and Ball Size of x >= 5, yes;
	if ScaleValue of Player is 4 and Ball Size of x >= 6, yes;
	if Ball Size of x >= 7, yes;
	no;

Definition: A person (called x) is barefoot:
	let FeetItem be a grab object;
	now FeetItem is journal;
	repeat with z running through equipped equipment:
		if slot of z is "feet":
			now FeetItem is z;
	if FeetItem is journal: [already naked]
		yes;
	else:
		no;

Definition: A person (called x) is barecrotch:
	let WaistItem be a grab object;
	now WaistItem is journal;
	let CrotchItem be a grab object;
	now CrotchItem is journal;
	repeat with z running through equipped equipment:
		if slot of z is "waist":
			now WaistItem is z;
	repeat with z running through equipped equipment:
		if slot of z is "crotch":
			now CrotchItem is z;
	if WaistItem is journal and CrotchItem is journal: [already naked]
		yes;
	else:
		no;

Definition: A person (called x) is barechest:
	let ChestItem be a grab object;
	now ChestItem is journal;
	let BodyItem be a grab object;
	now BodyItem is journal;
	repeat with z running through equipped equipment:
		if slot of z is "chest":
			now ChestItem is z;
	repeat with z running through equipped equipment:
		if slot of z is "Body":
			now BodyItem is z;
	if ChestItem is journal and BodyItem is journal: [already naked]
		yes;
	else:
		no;

Definition: A person (called x) is naked:
	if x is barecrotch and x is barechest and x is barefoot:
		yes;
	else:
		no;

Definition: A person (called x) is gimpy:
	if gimp mask is equipped:
		yes;
	else:
		no;

Definition: A person (called x) is conformist:
	if "Conformist" is listed in feats of x:
		yes;
	else:
		no;

Definition: A person (called x) is maleinterested:
	if MaleInterest of x is true:
		yes;
	else:
		no;

Definition: A person (called x) is transmaleinterested:
	if TransMaleInterest of x is true:
		yes;
	else:
		no;

Definition: A person (called x) is femaleinterested:
	if FemaleInterest of x is true:
		yes;
	else:
		no;

Definition: A person (called x) is transfemaleinterested:
	if TransFemaleInterest of x is true:
		yes;
	else:
		no;

Definition: A person (called x) is herminterested:
	if HermInterest of x is true:
		yes;
	else:
		no;

Definition: A person (called x) is pansexual:
	if MaleInterest of x is true and TransMaleInterest of x is true and FemaleInterest of x is true and TransFemaleInterest of x is true and HermInterest of x is true:
		yes;
	else:
		no;

A person can be HasHumanHead. A person is usually not HasHumanHead.

Definition: A person (called x) is HasHumanHead:
	if Head Skin Adjective of x is not "", no;
	yes;

A person can be HasHumanTorso. A person is usually not HasHumanTorso.

Definition: A person (called x) is HasHumanTorso:
	if Torso Skin Adjective of x is not "", no;
	yes;

A person can be HasHumanBack. A person is usually not HasHumanBack.

Definition: A person (called x) is HasHumanBack:
	if Back Skin Adjective of x is not "", no;
	yes;

A person can be HasHumanArms. A person is usually not HasHumanArms.

Definition: A person (called x) is HasHumanArms:
	if Arms Skin Adjective of x is not "", no;
	yes;

A person can be HasHumanLegs. A person is usually not HasHumanLegs.

Definition: A person (called x) is HasHumanLegs:
	if Legs Skin Adjective of x is not "", no;
	yes;

A person can be HasHumanAss. A person is usually not HasHumanAss.

Definition: A person (called x) is HasHumanAss:
	if Ass Skin Adjective of x is not "", no;
	yes;

A person can be HasHumanTail. A person is usually not HasHumanTail.

Definition: A person (called x) is HasHumanTail:
	if Tail Skin Adjective of x is not "", no;
	yes;

A person can be HasBeard. A person is usually not HasBeard.

Definition: A person (called x) is HasBeard:
	if Beard Style of x is not "", yes;
	no;

A person can be HasHeadHair. A person is usually not HasHeadHair.

Definition: A person (called x) is HasHeadHair:
	if Hair Length of x > 0, yes;
	no;

A person can be HasHeadAdornments. A person is usually not HasHeadAdornments.

Definition: A person (called x) is HasHeadAdornments:
	if Head Adornments of x is not "", yes;
	no;

A person can be HasBackAdornments. A person is usually not HasBackAdornments.

Definition: A person (called x) is HasBackAdornments:
	if Back Adornments of x is not "", yes;
	no;

A person can be HasTorsoAdornments. A person is usually not HasTorsoAdornments.

Definition: A person (called x) is HasTorsoAdornments:
	if Torso Adornments of x is not "", yes;
	no;

A person can be HasHeadSkinAdjective. A person is usually not HasHeadSkinAdjective.

Definition: A person (called x) is HasHeadSkinAdjective:
	if Head Skin Adjective of x is not "", yes;
	no;

A person can be HasTorsoSkinAdjective. A person is usually not HasTorsoSkinAdjective.

Definition: A person (called x) is HasTorsoSkinAdjective:
	if Torso Skin Adjective of x is not "", yes;
	no;

A person can be HasBackSkinAdjective. A person is usually not HasBackSkinAdjective.

Definition: A person (called x) is HasBackSkinAdjective:
	if Back Skin Adjective of x is not "", yes;
	no;

A person can be HasArmsSkinAdjective. A person is usually not HasArmsSkinAdjective.

Definition: A person (called x) is HasArmsSkinAdjective:
	if Arms Skin Adjective of x is not "", yes;
	no;

A person can be HasLegsSkinAdjective. A person is usually not HasLegsSkinAdjective.

Definition: A person (called x) is HasLegsSkinAdjective:
	if Legs Skin Adjective of x is not "", yes;
	no;


A person can be HasAssSkinAdjective. A person is usually not HasAssSkinAdjective.

Definition: A person (called x) is HasAssSkinAdjective:
	if Ass Skin Adjective of x is not "", yes;
	no;

A person can be HasTailSkinAdjective. A person is usually not HasTailSkinAdjective.

Definition: A person (called x) is HasTailSkinAdjective:
	if Tail Skin Adjective of x is not "", yes;
	no;

A person can be HasTail. A person is usually not HasTail.

Definition: A person (called x) is HasTail:
	if Tail Description of x is not "", yes;
	no;

A person can be octapedal. A person is usually not octapedal.

Definition: A person (called x) is octapedal:
	if Locomotion of x is "octapedal", yes;
	no;

A person can be quadrupedal. A person is usually not quadrupedal.

Definition: A person (called x) is quadrupedal:
	if Locomotion of x is "quadrupedal", yes;
	no;

A person can be bipedal. A person is usually bipedal.

Definition: A person (called x) is bipedal:
	if Locomotion of x is "bipedal", yes;
	no;

A person can be serpentine. A person is usually not serpentine.

Definition: A person (called x) is serpentine:
	if Locomotion of x is "serpentine", yes;
	no;

A person can be sliding. A person is usually not sliding.

Definition: A person (called x) is sliding:
	if Locomotion of x is "sliding", yes;
	no;

to say Body Size Adjective of ( x - a person ):
	if scalevalue of x is 1: [~3 ft in height or less]
		say "tiny";
	else if scalevalue of x is 2: [4-5 ft in height]
		say "small";
	else if scalevalue of x is 3: [5-7 ft in height]
		say "average";
	else if scalevalue of x is 4: [8-12 ft in height]
		say "large";
	else: [12+ ft in height]
		say "huge";

to say Body Adjective of ( x - a person ):
	if Body Weight of x < 4: [low weight group]
		if Body Definition of x < 4: [low muscle group]
			say "skinny";
		else if Body Definition of x < 7: [mid muscle group]
			say "slender";
		else: [high muscle group]
			say "lithe";
	else if Body Weight of x < 7: [mid weight group]
		if Body Definition of x < 4: [low muscle group]
			say "average";
		else if Body Definition of x < 7: [mid muscle group]
			say "fit";
		else: [high muscle group]
			say "muscled";
	else: [high weight group]
		if Body Definition of x < 4: [low muscle group]
			say "pudgy";
		else if Body Definition of x < 7: [mid muscle group]
			say "husky";
		else: [high muscle group]
			say "jacked";

to say Pecs Firmness Adjective of ( x - a person ):
	if Body Weight of x < 4: [low weight group]
		if Body Definition of x < 4: [low muscle group]
			say "bony";
		else if Body Definition of x < 7: [mid muscle group]
			say "soft";
		else: [high muscle group]
			say "firm";
	else if Body Weight of x < 7: [mid weight group]
		if Body Definition of x < 4: [low muscle group]
			say "soft";
		else if Body Definition of x < 7: [mid muscle group]
			say "firm";
		else: [high muscle group]
			say "hard";
	else: [high weight group]
		if Body Definition of x < 4: [low muscle group]
			say "squishy";
		else if Body Definition of x < 7: [mid muscle group]
			say "plyable";
		else: [high muscle group]
			say "rock-hard";

to say Pecs Size Adjective of ( x - a person ):
	if Body Weight of x < 4: [low weight group]
		if Body Definition of x < 4: [low muscle group]
			say "totally flat";
		else if Body Definition of x < 7: [mid muscle group]
			say "flat";
		else: [high muscle group]
			say "flat";
	else if Body Weight of x < 7: [mid weight group]
		if Body Definition of x < 4: [low muscle group]
			say "flat";
		else if Body Definition of x < 7: [mid muscle group]
			say "flat";
		else: [high muscle group]
			say "protruding";
	else: [high weight group]
		if Body Definition of x < 4: [low muscle group]
			say "breast-like";
		else if Body Definition of x < 7: [mid muscle group]
			say "protruding";
		else: [high muscle group]
			say "bulging";

to say Ass Shape Adjective of ( x - a person ):
	if Ass Width of x is 1: [dainty ass]
		if Body Definition of x < 4: [low muscle group]
			say "flat";
		else if Body Definition of x < 7: [mid muscle group]
			say "perky";
		else: [high muscle group]
			say "hard";
	else if Ass Width of x is 2: [small ass]
		if Body Definition of x < 4: [low muscle group]
			say "bouncy";
		else if Body Definition of x < 7: [mid muscle group]
			say "bubble-shaped";
		else: [high muscle group]
			say "firm";
	else if Ass Width of x is 3: [round ass]
		if Body Definition of x < 4: [low muscle group]
			say "wobbly";
		else if Body Definition of x < 7: [mid muscle group]
			say "curvy";
		else: [high muscle group]
			say "squeezable, yet firm";
	else if Ass Width of x is 4: [huge ass]
		if Body Definition of x < 4: [low muscle group]
			say "jiggly";
		else if Body Definition of x < 7: [mid muscle group]
			say "curvacious";
		else: [high muscle group]
			say "squeezable, yet still firm";
	else if Ass Width of x is 5: [enormous ass]
		if Body Definition of x < 4: [low muscle group]
			say "very jiggly";
		else if Body Definition of x < 7: [mid muscle group]
			say "thicc";
		else: [high muscle group]
			say "expansive, yet somewhat firm";

to say Ass Width Adjective of ( x - a person ):
	if Ass Width of X is:
		-- 1:
			say "dainty";
		-- 2:
			say "small";
		-- 3:
			say "round";
		-- 4:
			say "huge";
		-- 5:
			say "enormous";

to say Gender Adjective of ( x - a person ):
	if Androginity of x is:
		-- 1:
			say "hypermasculine";
		-- 2:
			say "[one of]masculine[or]manly[at random]";
		-- 3:
			say "somewhat effeminate";
		-- 4:
			say "effeminate";
		-- 5:
			say "androgynous";
		-- 6:
			say "feminine butch";
		-- 7:
			say "tomboyish";
		-- 8:
			say "[one of]feminine[or]womanly[or]ladylike[at random]";
		-- 9:
			say "hyperfeminine";

to say Body Hair Adjective of ( x - a person ): [used in "He touches your [Body Hair Adjective of Player] chest."]
	if Body Hair Length of x is:
		-- 0:
			say "nonexistant";
		-- 1:
			say "smooth";
		-- 2:
			say "[one of]slightly hairy[or]lightly fuzzed[at random]";
		-- 3:
			say "[one of]somewhat hairy[or]moderately hairy[at random]";
		-- 4:
			say "[one of]hairy[or]thickly fuzzed[at random]";
		-- 5:
			say "[one of]very hairy[or]almost furry[at random]";

to say Body Hair Description of ( x - a person ): [used in "You have a broad, [Torso Color of Player] chest with [Body Hair Description]."]
	if Body Hair Length of x is:
		-- 0:
			say "ERROR: This infection should not show a body hair description! Please report how you saw this on the FS Discord.";
		-- 1:
			say "smooth skin";
		-- 2:
			say "[one of]light body hair[or]a light fuzz of hair[or]a little body hair[at random]";
		-- 3:
			say "[one of]moderate body hair[or]a moderate fuzz of hair[or]a moderate amount of body hair[at random]";
		-- 4:
			say "[one of]heavy body hair[or]thick body hair[or]a large amount of body hair[at random]";
		-- 5:
			say "[one of]furry body hair[or]a whole lot of body hair[or]a fur-like amount of hair[at random]";

to say Limbs Adjective of ( x - a person ):
	if Body Weight of x < 4: [low weight group]
		if body definition of x < 4: [low muscle group]
			say "rail-thin";
		else if Body Definition of x < 7: [mid muscle group]
			say "slender";
		else: [high muscle group]
			say "sinewy";
	else if Body Weight of x < 7: [mid weight group]
		if Body Definition of x < 4: [low muscle group]
			say "average";
		else if body definition of x < 7: [mid muscle group]
			say "firm";
		else: [high muscle group]
			say "muscular";
	else: [high weight group]
		if Body Definition of x < 4: [low muscle group]
			say "flabby";
		else if Body Definition of x < 7: [mid muscle group]
			say "meaty";
		else: [high muscle group]
			say "rippling";

[ Coding Idea: Body changes at high noon]
[ Hunger < 20: -1 weight; Hunger > 80: +1 weight]
[ Definition - Working out at the fitness studio]

to say Mouth Length Adjective of ( x - a person ):
	if Mouth Length of x < 3: [inches deep]
		say "petite";
	else if Mouth Length of x < 5: [inches deep]
		say "shallow";
	else if Mouth Length of x < 9: [inches deep]
		say "average";
	else if Mouth Length of x < 15: [inches deep]
		say "deep";
	else: [inches deep]
		say "bottomless";

to say Mouth Circumference Adjective of ( x - a person ):
	if Mouth Circumference of x is:
		-- 1:
			say "thin";
		-- 2:
			say "small";
		-- 3:
			say "normal";
		-- 4:
			say "wide";
		-- 5:
			say "gaping";

to say Breast Size Description of ( x - a person ):
	if Breast Size of x is:
		-- 0:
			say "flat";
		-- 1:
			say "A cup";
		-- 2:
			say "B cup";
		-- 3:
			say "C cup";
		-- 4:
			say "D cup";
		-- 5:
			say "DD cup";
		-- 6:
			say "DDD cup";
		-- 7:
			say "DDDD cup";
		-- 8:
			say "G cup";
		-- 9:
			say "H cup";
		-- 10:
			say "I cup";
		-- 11:
			say "J cup";
		-- 12:
			say "K cup";
		-- 13:
			say "L cup";
		-- 14:
			say "M cup";
		-- 15:
			say "N cup";
		-- 16:
			say "O cup";
		-- 17:
			say "P cup";
		-- 18:
			say "Q cup";
		-- 19:
			say "R cup";

to say Asshole Depth Adjective of ( x - a person ):
	if Asshole Depth of x < 3: [inches deep]
		say "petite";
	else if Asshole Depth of x < 5: [inches deep]
		say "shallow";
	else if Asshole Depth of x < 9: [inches deep]
		say "average";
	else if Asshole Depth of x < 15: [inches deep]
		say "deep";
	else: [inches deep]
		say "bottomless";

to say Asshole Tightness Adjective of ( x - a person ):
	if Asshole Tightness of x is:
		-- 1:
			say "extremely tight";
		-- 2:
			say "tight";
		-- 3:
			say "receptive";
		-- 4:
			say "open";
		-- 5:
			say "gaping";

to say Cock Girth Adjective of ( x - a person ):
	if Cock Girth of x is:
		-- 1:
			say "thin";
		-- 2:
			say "slender";
		-- 3:
			say "average";
		-- 4:
			say "thick";
		-- 5:
			say "monstrous";

to say Ball Size Adjective of ( x - a person ):
	if Ball Size of x is:
		-- 0:
			say "non-existant";
		-- 1:
			say "[one of]acorn-sized[or]gumball-sized[at random]";
		-- 2:
			say "dove egg-sized";
		-- 3:
			say "chicken egg-sized";
		-- 4:
			say "goose-egg sized";
		-- 5:
			say "ostrich-egg sized";
		-- 6:
			say "basketball-sized";
		-- 7:
			say "beachball-sized";

to say Cunt Tightness Adjective of ( x - a person ):
	if Cunt Tightness of x < 4: [inches circumference]
		say "[one of]extremely tight[or]very snug[at random]";
	else if Cunt Tightness of x < 6: [inches circumference]
		say "[one of]tight[or]snug[at random]";
	else if Cunt Tightness of x < 8: [inches circumference]
		say "[one of]receptive[or]well-used[at random]";
	else if Cunt Tightness of x < 11: [inches circumference]
		say "open";
	else: [inches deep]
		say "gaping";

to say Clit Size Adjective of ( x - a person ):
	if Clit Size of x is:
		-- 0:
			say "nonexistent";
		-- 1:
			say "[one of]very small[or]tiny[at random]";
		-- 2:
			say "small";
		-- 3:
			say "[one of]average[or]mid-sized[or]well sized[at random]";
		-- 4:
			say "[one of]large[or]big[or]above average[at random]";
		-- 5:
			say "[one of]very large[or]very big[or]huge[at random]";

A thing can be rooted in place. A thing is usually not rooted in place.
A thing can be restful. A thing is usually not restful.
A door can be dangerous.
A door has a text called marea.
A room can be known or unknown. A room is usually unknown.
A room can be fasttravel. A room is usually not fasttravel.
A room can be private. A room is usually not private.
A room can be sleepsafe. A room is usually not sleepsafe.
A room has a text called earea. earea is usually "void". [exploration area]
The player is wearing a watch.
The player is wearing a backpack. Description of the backpack is "A backpack, full of stuff. To look inside, type [bold type]item[roman type] To look at an item, type [bold type]look (item name)[roman type] To use an item, type [bold type]use (item name)[roman type]. Do you see something in the room you want to take with you? Type [bold type]grab (item name)[roman type] to snatch it up.".

instead of examining a grab object (called x):
	say "[the desc corresponding to a object of x in the table of game objects][line break]";
	if "Weaponsmaster" is listed in feats of Player and x is an armament:
		say "     Looking over the weapon with your expert knowledge, you assess it to be a [weapon damage of x] damage weapon.";
	if x is an armament:
		if (ScaleValue of Player - objsize of x) is:
		-- 4: [4 size categories difference - huge player (5), size 1 weapon]
			say "     Trying to use this as a weapon is utterly ridiculous, given your size. Don't even try it!";
		-- 3: [3 categories difference]
			say "     Trying to use this as a weapon is fairly ridiculous, given your size.";
		-- 2: [2 categories difference]
			say "     Trying to use this as a weapon is incredibly difficult, as it is far to small for you to comfortably hold.";
		-- 1: [1 category difference]
			say "     Given that it is made for someone smaller than you, this isn't all that easy to use as a weapon.";
		-- 0: [proper size for the player]
			say "     This is just the right size for you to wield comfortably.";
		-- -1: [1 categories difference]
			say "     A bit big for comfortable use, but with both hands and some effort, you'll manage.";
		-- -2: [2 categories difference]
			say "     Trying to use this as a weapon is incredibly difficult, as its sheer size threatens to pull you over.";
		-- -3: [3 categories difference]
			say "     Trying to use this as a weapon is fairly ridiculous, given your size.";
		-- -4: [4 size categories difference - tiny player (1), size 5 weapon]
			say "     Don't even think about using this in combat! Well, you might hide under its bulk, but that's about it.";


Does the player mean examining a situation: it is very unlikely.


Section Starting Variables

[ See the Core Mechanics/Presets.i7x file for personalizing your defaults. ]

[
startgenderchoice is a number that varies.[@Tag:NotSaved]
startstatbonus is a number that varies.[@Tag:NotSaved]
startscenariochoice is a number that varies.[@Tag:NotSaved]
]
gsms is a number that varies.			[main stat]
gspg is a number that varies.			[player gender]
gsgt is a number that varies.			[game type]
gshm is a truth state that varies.		[hard mode on/off]
gsnhm is a truth state that varies.		[no-heal mode on/off]
gsbm is a truth state that varies.		[blind mode on/off]
gsexit is a number that varies. gsexit is usually 0.
freefeatgeneral is a text that varies.
freefeatfun is a text that varies.
hypernull is a number that varies.
anallevel is a number that varies.
WSlevel is a number that varies.
vorelevel is a number that varies.
UBlevel is a number that varies.
ovipreglevel is a number that varies.
ovipregnant is a truth state that varies. ovipregnant is usually false.		[marks if ovi-pregnant now]
ovipregalways is a truth state that varies. ovipregalways is usually false.	[marks if allowed to pick always ovi]

Book 2 - Places
[ Moved to Basic Locations.i7x in Core Mechanics ]

Part 2 - Things

The cot is rooted in place. The cot is restful.

Section - Vending Machine

To decide which number is numeric/numerical value of (T - indexed text):
	let S be 1;
	let L be the number of characters in T;
	if L is 0, decide on 0;
	let negated be false;
	if character number 1 in T is "-" begin;
		let negated be true;
		let S be 2;
	end if;
	let result be 0;
	repeat with N running from S to L begin;
		let C be character number N in T;
		let D be 0;
		if C is "1" begin; let D be 1; else if C is "2"; let D be 2;
		else if C is "3"; let D be 3; else if C is "4"; let D be 4;
		else if C is "5"; let D be 5; else if C is "6"; let D be 6;
		else if C is "7"; let D be 7; else if C is "8"; let D be 8;
		else if C is "9"; let D be 9; else if C is "0"; let D be 0;
		else; decide on 0; end if;
		let result be (result * 10) + D;
	end repeat;
	if negated is true, let result be 0 - result;
	decide on result.

There is a Cola Vending Machine in Mall Foodcourt. "A broken down vending machine lurks nearby with several, large, soda brands brightly painted onto it." It is fixed in place. It has a description "A vending machine. It appears to dispense soda, but it's broken.".
Cola Vending Machine has a number called dispensed.
understand "vending machine" as Cola Vending machine.

Vending is an action applying to one thing.
understand "use [cola vending machine]" as vending.

Carry out vending:
	say "It's broken! Damn. All that soda. How to get it out?";

Instead of attacking the Cola Vending machine:
	say "You give the soda machine a solid whack, ";
	let the bonus be (( Strength of Player minus 10 ) divided by 2);
	let the dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] -- [dice plus bonus]: ";
	increase dice by bonus;
	if dice > 15:
		say "A soda can pops out!";
		ItemGain soda by 1;
		increase score by 1;
		increase dispensed of cola vending machine by 1;
	else:
		say "Nothing happens...";
	if ( a random chance of 5 in 100 succeeds ) or dispensed of noun > 9:
		say "The machine gives a final spark of defeat. You are certain there is no more soda to be had.";
		now Cola Vending Machine is nowhere;


Book 3 - Definitions

Definition: a direction (called D) is valid if the room D from the Location of Player is a room.
Definition: A grab object (called D) is owned:
	if there is a name corresponding to a object of d in the table of game objects:
		if the carried of d > 0, yes;
	no;

Definition: A grab object (called D) is stored:
	if there is a name corresponding to a object of d in the table of game objects:
		if the stashed of d > 0, yes;
	no;

Definition: A grab object (called D) is present:
	if there is a name corresponding to a object of d in the table of game objects:
		if the name corresponding to a object of d in the table of game objects is listed in the invent of the Location of Player, yes;
	no;

before examining the grab object (called x):
	let good be 0;
	if x is owned, now good is 1;
	if x is present, now good is 1;
	if good is 0, say "I don't see any [x] around here..." instead;

[ ]

Book 5 - Tables

[ Items moved to Core Mechanics/Misc Items]
[ Milk moved to Core Mechanics/Milking.i7x]


Table of Game Objects
name	desc	weight	object	sortname (indexed text)
"journal"	"A small, leather-clad book. Spending some time [link]writing[as]use journal[end link] in it can help clear your thoughts and recenter your troubled mind. Or if you have something especially important that you want to remember, you could just [link]write down a note[as]write a note[end link] at the back end of it. [if number of filled rows in Table of JournalNotes > 0]In fact, you remember noting down some things in it that must have been important somehow. You can [link]browse through your notes[as]browse notes[end link] if you want to. Alternatively, [link]ripping them all out[as]rip notes[end link] is also possible.[end if][line break]"	2	journal

journal is a grab object. It is not temporary. The carried of journal is 1.
journal has a number called hitbonus. hitbonus of journal is usually 0.
Understand "book" as journal.

[Pocketknife moved to Core Mechanics/Weapons.i7x]
[Chair moved to Core Mechanics/Weapons.i7x]

The invent of Player is { "journal" }.

Table of Start Game
title	subtable	description	toggle
"Strength: [strength of Player]"	--	"Your ability to exert force. Helps deal damage with melee weapons, and to carry heavy objects."	finish stats rule
"Dexterity: [Dexterity of Player]"	--	"Speed, agility. Dexterity helps to land hits with melee weapons and avoid being hit in kind."	finish stats rule
"Stamina: [stamina of Player]"	--	"Your ability to withstand punishment. Stamina also helps to resist the physical aspects of infection."	finish stats rule
"Charisma: [Charisma of Player]"	--	"Your ability to exert social force. Deal with NPCs favorably, also helps resist mental aspects of infection."	finish stats rule
"Intelligence: [Intelligence of Player]"	--	"Your ability to logically compute things. Helps with activities that require 'book smarts'."	finish stats rule
"Perception: [Perception of Player]"	--	"Your ability to detect things. Also helps resist mental aspects of infection."	finish stats rule
["Reroll Stats"	--	"Randomize your stats. Do this as often as you want."	random stats rule]
"Select a Stat to gain [if started is 0]+5[else]+1[end if]"	--	"You are satisfied with your stats"	--
"Restore a save"	--	"Restore a save game!"	prerestore the game rule

This is the prerestore the game rule:
	decrease the menu depth by 1;
	try restoring the game;
	if maxHP of Player is 0, try restarting the game;

Table of sex choice
title	subtable	description	toggle
"Man"	--	--	male choice rule
"Woman"	--	--	female choice rule

Table of Starting Location
title	subtable	description	toggle
"Bunker"	--	--	location choice rule
"Caught Outside"	--	--	location choice rule
"Rescuer Stranded"	--	--	location choice rule
"Forgotten"	--	--	location choice rule
"Researcher"	--	--	location choice rule
"Hard mode"	--	--	location choice rule


Table of Basic Combat
title	subtable	description	toggle
"Attack"	--	"Attack!!!"	player attack rule
"Item"	--	"Quick, where's my healing potion?!"	combat item rule
"Pass"	--	"Hey look, a distraction!"	combat pass rule
"Flee"	--	"Run away!!!"	flee rule
"Submit"	--	"Maybe it isn't so bad"	submit rule
"Throw Fight"	--	"Let them think they won."	throw combat rule

Table of combat items
title(indexed text)	subtable	description	toggle
"Nothing"	--	"Nothing here."	combat item rule
with 100 blank rows.

Table of gainable feats
title	subtable	description	toggle
"Nothing"	--	"Nothing here."	gainfeat rule
with 100 blank rows.


Table of Basic Actions
title	subtable	description	toggle
["Go Exploring"	--	"Go wandering the city and look for generally interesting things."	explore rule]
["Rest"	--	"Take a breather"	rest rule]
["Examine yourself"	--	--	Self examine rule]
"Help"	Table of Help	"Get some help on this madness!"
"Strength: [strength of Player], Dexterity: [dexterity of Player], Stamina: [stamina of Player], Charisma: [Charisma of Player], Intelligence: [intelligence of Player], Perception: [perception of Player]."	--	"Stats"	--
"Health: [HP of Player]/[maxHP of Player], Lust: [lust of Player], Morale: [morale of Player], Humanity: [Humanity of Player]"	--	"More stats"	--
"Time Remaining: [( turns minus targetturns ) divided by 8] days, [(remainder after dividing ( turns minus targetturns ) by 8 ) times 3] hours, Score: [score]"	--	"Time until the game ends."	Turnpass rule

Table of Help
title	subtable	description	toggle
"Is this all?"	--	"Yep, more to come later, promise!"
"Exit"	--	"Previous Menu"	menu exit rule

Table of Random Critters
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
false	"Anthro Dragon"	"Anthro Dragoness"	""	""	0	""	""	""	""	"reptilian snout and great teeth. Two horns spiral backwards over your"	"large and reptilian, covered in [Skin of Player] flesh. You are forced to all fours except for brief, awkward, moments. It reminds you of a dragon, if you had to guess."	"[one of]dull red[or]dull orange[or]lustrous blue[sticky random] scaled"	"You have a wide, tapered, dragon's tail with a spade at the tip."	"[one of]draconic[or]normally internal[or]reptilian[at random]"	"your face draws forward into a reptilian snout, covered in [Skin of Player] flesh."	"Your body grows to larger than human norm, becoming quadrupedal, with great spikes along your back. You look very much like a dragon."	"Your skin breaks out in large armored scales that rapidly spread over your body"	"Your spine tingles before it explosively expands backwards into a great, thick, tail with spikes along the top."	"Your cock tingles as it becomes draconic in shape, a vent forming to hold it within you."	20	10	12	12	12	12	"Female"	50	1	20	"Nowhere"	0	0	0	2	10	0	1	15	10	40	""	0	""	""	"-"	4	"[one of]monstrous[or]large[or]powerful[at random]"	"draconic"	false	false	false	""	0	"default"	false

Table of New Infection Parts
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
"Anthro Dragon"	"Anthro Dragoness"	4	8	7	"your face draws forward into a reptilian snout, covered in black overlapping scales"	"a sharp-toothed anthro dragoness"	"draconic"	"scaly"	"black"	"pair of spiraling horns"	0	"straight"	"black"	"ponytail"	""	0	"crimson"	"slitted"	10	10	"broad"	"purple"	7	"your torso broadens, with overlapping black scales growing out of your skin to give it an armor-plated look"	"broad, covered in overlapping black scales"	"draconic"	"scale-covered tummy"	"scaled"	"black"	"layered"	"perky"	5	0	2	"scarlet"	"oval"	"a pair of leathery black wings sprout from your upper back, unfolding to stretch wide to your left and right"	"the pair of leathery wings growing from beneath your shoulderblades"	"scaled"	"black"	"sharp claws sprout from the tips of your fingers and black scales form on the outside of your arms"	"long and plated in overlapping black scales, ending in clawed hands"	"scaled"	"black"	"bipedal"	"black scales garb them into overlapping armor and sharp scales form on your feet"	"long and plated in overlapping black scales, ending in clawed feet"	"scaled"	"black"	"it widens and flexible scales grow to cover its curves"	"ass, covered in flexible black scales"	"scaled"	"black"	4	"A long tail sprouts from your lower back, forming black scales and a spade at the end"	"long, black-scaled tail ending in a spade"	"scaled"	"black"	10	3	"black"	"ridges form along the underside of the shaft, leading up to a pointed tip"	"has a pointed tip and a number of ridges along the underside of the shaft"	"draconic"	"scarlet"	0	0	0	"balls in a firm sack of leathery skin"	0	0	"it takes on a triangular shape, with the clit at the lowest point"	"draconic"	"scarlet"	"triangular in shape, with its clit at the lower point"	1	14	6	3

When Play begins:
	add "Anthro Dragoness" to infections of ReptileList;
	add "Anthro Dragoness" to infections of OviImpregnatorList;
	add "Anthro Dragoness" to infections of TailweaponList;

understand the command "feed" as something new.

Definition: A person is fastlearning:
	if "Fast Learner" is listed in feats of Player, yes;
	no;

To say level up needed:
	say "[if Player is fastlearning][((level of Player plus 1) times 8)][else][(level of Player plus 1) times 10][end if]";

Table of Fancy Status
left	central	right
"Location: [Location of Player][if Location of Player is fasttravel] ([link]Navpoint[as]nav[end link])[end if]"	"Name: [if Player is not defaultnamed][Name of Player][else][link]Pick one?[as]rename[end link][end if] | Condition: [SleepMessage] | [link]Inventory[as]i[end link] | [link]Feats[as]FeatList[end link] | [link]Allies[as]Allies[end link]"	"HP: [HP of Player]/[maxHP of Player]"
"Date: [DateYear]-[DateMonth]-[DateDay], Time: [time of day]"	"STR: [strength of Player] | DEX: [dexterity of Player] | STA: [stamina of Player] | CHA: [Charisma of Player] | INT: [intelligence of Player] | PER: [perception of Player]"	"XP: [XP of Player]/[level up needed]"
"Evac: [if playon is 0][( turns minus targetturns ) divided by 8] d, [(remainder after dividing ( turns minus targetturns ) by 8 ) times 3] h[else]UNKNOWN[end if]"	"Hunger: [hunger of Player]/100 | Thirst: [thirst of Player]/100 | Libido: [Libido of Player]/100 | Humanity: [humanity of Player]/100"	"LVL: [level of Player]"
"Freecred: [freecred]"	"[link]Help[as]HelpBookLookup[end link][if NewGraphicsInteger is 0] [else] | Art by: [ngraphics_currentartist] ([link]art credits[end link])[end if]"	"Score: [score]/[maximum score]"

Table of Narrow Status
left	right
"Location: [Location of Player][if Location of Player is fasttravel] ([link]Navpoint[as]nav[end link])[end if]"	"HP: [HP of Player]/[maxHP of Player]"
"Date: [DateYear]-[DateMonth]-[DateDay], Time: [time of day]"	"XP: [XP of Player]/[level up needed]"
"Evac: [if playon is 0][( turns minus targetturns ) divided by 8] d, [(remainder after dividing ( turns minus targetturns ) by 8 ) times 3] h[else]UNKNOWN[end if]"	"LVL: [level of Player]"
"Freecred: [freecred]"	"Score: [score]/[maximum score]"


to say exitlist:
	repeat with nam running through valid directions:
		say "[link][printed name of nam][end link] ";


Book 6 - Rules, Obey them!

Part 1 - Flags
[Tags and Flags moved to Core Mechanics/Banning.i7x]

[corollary]
marker is a kind of thing.
A marker has a list of text called infections.


[Species Lists]
AmphibianList is a marker. [list of amphibian infections - frogs, ...]
AquaticList is a marker. [list of aquatic infections]
ArachnidList is a marker. [list of arachnic infections - spidergirl, scorpions, spidertaur, ...]
AvianList is a marker. [list of avian/bird infections - pigeon, ...]
AvianpredList is a marker. [list of predatory avian/bird infections - hawk, ...]
Bovinelist is a marker. [list of bovine infections - cows, sheep, antelopes, yaks, bison, buffalo, ...]
CanineList is a marker. [list of canine/lupine infections]
CervineList is a marker. [list of cervine infections - Deer, Elk, Moose, Reindeer, ...]
CetaceanList is a marker. [list of air-breathing aquatics - Dolphin, Whale, Porpoise, ...]
EquineList is a marker. [list of equine infections]
FelineList is a marker. [list of feline infections]
FoodList is a marker. [list of animated food infections - Gingerbread, Cheesecake, ...]
HumanList is a marker. [list of human infections]
HybridList is a marker. [list of mixed infections - manticore, ...]
InsectList is a marker. [list of insectile infections - ant, bee, scarab, ...]
LatexList is a marker. [list of infections w/latex/rubber/plastic skin]
LeporineList is a marker. [list of rabbit infections - rabbit, hare, ...]
MachineList is a marker. [list of machine infections]
MarsupialList is a marker. [list of marsupial infections - kangaroo, koala, ...]
MustelidList is a marker. [list of mustelid infections - weasels, ferrets, wolverines, badgers, ...]
NonOrganicList is a marker. [list of nonorganic infections - golems, etc.]
OrcList is a marker. [list of orc and orc-adjacent infections - orc warrior, worg, ...]
PiscineList is a marker. [list of gilled aquatics - fish...]
PlantList is a marker. [list of plant infections]
PorcineList is a marker. [list of piggy infections - pigs, boars, warthogs, ...]
PrimateList is a marker. [list of primate infections - gorilla, monkey, ...]
ReptileList is a marker. [list of reptiles/snakes/dragons/dinosaurs/etc... infections]
RodentList is a marker. [list of mustelid infections - rats, mice, beaver, chinchilla, ...]
SlimeList is a marker. [list of slime infections]
ToyList is a marker. [list of animated toy infections - plush lion, plastic reindeer, ...]
UrsineList is a marker. [list of bear infections]
VulpineList is a marker. [list of vulpine infections]

[Origin Lists]
HistoricalList is a marker. [list of historical creature infections]
MagicalList is a marker. [list of magic based infections]
MythologicalList is a marker. [list of mythological creature infections]
NatureList is a marker. [list of infections based on natural creatures]
OtherworldlyList is a marker. [list of infections from other worlds]
ScienceList is a marker. [list of creatures that were created]

[Genital Lists]
BarbedCockList is a marker. [List of creatures with a barbed cock - feline, ...]
BluntCockList is a marker. [list of infections w/blunt cock - equine, ...]
InternalCockList is a marker. [list of infections w/internal male genitals]
KnottedCockList is a marker. [list of infections w/knotted cock - canine, ...]
OviPositorList is a marker. [list of infections with ovipositor]
PrehensileCocklist is a marker. [list of infections with movable cock]
SheathedCockList is a marker. [list of infections with sheathed cocks]
TaperedCockList is a marker. [list of infections with tapering cock - canine, orca, ...]
TentacleCockList is a marker. [list of infections w/tentacle cock]

[Tail Lists]
TailList is a marker. [list of infections with tails]

[Locomotion Lists]
BipedalList is a marker. [2 legs]
QuadrupedalList is a marker. [4 legs]
HexapedalList is a marker. [6 legs]
OctapedalList is a marker. [8 legs]
TaurList is a marker. [4 legs + arms]
SerpentineList is a marker. [no legs, slithering]
SlidingList is a marker. [no legs, gooping]
FlightList is a marker. [list of infections w/flight capability]
SwimList is a marker. [list of infections capable of swimming underwater]

[Body State Lists]
AlwaysLacList is a marker. [infections that lactate constantly]
HeatList is a marker. [infections capable of heat]
AlwaysHeatList is a marker. [infections are always in heat]
RutList is a marker. [infections capable of rut]
AlwaysRutList is a marker. [infections are always in rut]
GillList is a marker. [can breathe underwater]
NotBreathingList is a marker. [does not need to breathe]

[Impregnation Lists]
Birthlist is a marker. [infections that are doing live births]
Egglaylist is a marker. [infections that are capable of laying eggs]
MpregList is a marker. [infections that are capable of Mpreg]
OviImpregnatorList is a marker. [list of infections capable of ovi impregnation - used for the function NPCSexAftermath to determine the way of impregnation]
Sterilelist is a marker. [infections that are sterile]

[Mind Lists]
FeralmindList is a marker. [list of feral infections]
HivemindList is a marker. [list of hive mind infections]
PackmindList is a marker. [list of pack creatures]

[Combat Ability Lists]
FirebreathList is a marker. [List of fire breathing creatures]
TailweaponList is a marker.

[TODO: replace this one in the code with the locomotion lists]
NoLegList is a marker. [list of infections without legs]

[
when play begins:
	add { "Anthro Shaft Beast", "Dragon", "Anthro Dragoness", "Drone Wasp", "Ebonflame drake", "Ebonflame Dragator", "Ebonflame Whelp", "Dolphin Herm", "Feral Sea Dragon", "Feral Sea Dragoness", "Feral Shaft Beast", "Killer Whale", "Lizard Girl", "Naga", "Shark Herm", "Red Kangaroo", "Gator Herm", "Skunk", "Spidergirl", "Wyvern", "Yamato Dragon", "Yamato Dragoness" } to infections of TailweaponList;

when play begins:
	add { "Cheetah Woman", "Cougar", "Feline", "Felinoid", "Feral Cheetah", "Jaguar Male", "Leopardman", "Manticore", "Margay", "Ninja Cat", "Panther Herm", "Panther Taur", "Plush lion", "Rubber Puma", "Rubber Tigress", "Sabretooth", "Siamese Cat", "Snow Bat", "Snow Leopard", "Sphinx", "Tiger", "Tigertaur", "Malayan Tiger Herm", "Wildcat" } to infections of FelineList;

when play begins:
	add { "Husky Alpha", "Alpha Wolf", "Ember Breeder", "Cerberus", "Chocolate Lab", "Coyote", "Dalmatian", "Doberman Bitch", "Doberman Male", "Husky Bitch", "Feral Wolf", "German Shepherd Male", "German Shepherd Bitch", "Jackalboy", "Jackalman", "Latex Wolf", "Painted Wolf Herm", "Pit bull", "Retriever Female", "Smooth Collie Shemale", "Werewolf Costume", "Wolftaur", "Wrestling Wolf" } to infections of CanineList;

when play begins:
	add { "Black Equinoid", "Centaur Mare", "Centaur Stallion", "Horseman", "Mareslut", "Mutant Centaur", "Nightmare", "Pegasus", "Morgan Horse Stallion", "Stallionboi", "Unicorn", "Zebra Stallion" } to infections of EquineList;

when play begins:
	add { "Arctic fox", "Clockwork Fox", "Latex Vixen Herm", "Kitsune", "Latex Fox", "Vixen Nurse", "Vulpogryph" } to infections of VulpineList;

when play begins:
	add { "Dragon", "Anthro Dragoness", "Ebonflame Dragator", "Ebonflame drake", "Ebonflame Whelp", "Feral Sea Dragon", "Feral Sea Dragoness", "Horny Dragon", "Hydra Beast", "Lizard Girl", "Naga", "Reptaur", "Gator Herm", "Sierrasaur", "Slutty Dragoness", "Snake", "Triceratops", "Wyvern", "Yamato Dragoness", "Yamato Dragoness" } to infections of ReptileList;

when play begins:
	add { "Black Wasp", "Butterfly", "Drone Wasp", "Mothgirl", "Spidergirl", "Spidertaur Male", "Spidertaur Female" } to infections of InsectList;

when play begins:
	add { "Pod Person", "Dryad", "Mushroom Men", "Parasitic Plant" } to infections of PlantList;

when play begins:
	add { "Bald Eagle", "Bird of Paradise", "Fluffy Owl", "Harpy", "Hawkman Male", "Blue Gryphon Herm", "Peacock", "Quilled Tousky", "Siren", "Vulpogryph" } to infections of AvianList;

when play begins:
	add { "Bald Eagle", "Fluffy Owl", "Hawkman Male", "Blue Gryphon Herm" } to infections of AvianpredList;

when play begins:
	add { "Beaver", "Hyper Squirrel", "Slut Rat" } to infections of RodentList;

when play begins:
	add { "Bottlenose Toy", "Latex Vixen Herm", "Latex Fox", "Latex Mistress", "Latex Wolf", "Rubber Puma", "Rubber Tigress" } to infections of LatexList;

when play begins:
	add { "Liquidshifter" } to infections of SlimeList;

when play begins:
	add { "Goblin", "Hydra Beast", "Mothgirl" } to infections of MagicalList;

when play begins:
	add { "Clockwork Fox", "Junkman", "Wildcat" } to infections of MachineList;

when play begins:
	add { "Caveman", "Helot Manservant", "Spartan", "Viking Woman" } to infections of HumanList;

when play begins:
	add { "Centaur Mare", "Centaur Stallion", "Mutant Centaur", "Panther Taur", "Reptaur", "Skunk Taur", "Spidertaur Male", "Spidertaur Female", "Tigertaur", "Wolftaur" } to infections of TaurList;
[Note, this does not contain the special tauric version of the Skunkbeast Lord form, as that is conditional. It also does not include the Spidergirl and Spidertaur forms, as their genitals are located in the front where the human pelvis would be, and therefore would not match with scenes specifically designed for taur anatomy.]

when play begins:
	add { "Blue Gel", "Pink Gel", "Purple Gel" } to infections of NoLegList;

when play begins:
	add { "Husky Alpha", "Alpha Wolf", "Ember Breeder", "Arctic fox", "Black Wolf", "Cerberus", "Chocolate Lab", "Clockwork Fox", "Coyote", "Dalmatian", "Doberman Bitch", "Dracovixentaur", "Husky Bitch", "Fennec", "Feral Wolf", "Football Wolfman", "German Shepherd Male", "Hellhound", "Blue Gryphon Herm", "Latex Vixen Herm", "Hyena Herm", "Jackalboy", "Jackalman", "Kitsune", "Latex Fox", "Latex Wolf", "Painted Wolf Herm", "Pit bull", "Quilled Tousky", "Retriever Female", "Smooth Collie Shemale", "Vixen Nurse", "Vixentaur", "Vulpogryph", "Werewolf Costume", "Wolftaur", "Wrestling Wolf" } to infections of KnottedCockList;

when play begins:
	add { "Feral Sea Dragon", "Feral Sea Dragoness", "Dolphin Herm", "Hydra Beast", "Naga", "Shark Herm", "Sierrasaur", "Snake", "Yamato Dragon", "Yamato Dragoness", "Wyvern", "Spidertaur Male" } to infections of InternalCockList;

when play begins:
	add { "Anthro Shaft Beast", "Ember Breeder", "Catgirl", "Cheetah Woman", "Corota", "Cougar", "Ebonflame Dragator", "Ebonflame drake", "Ebonflame Whelp", "Feline Gymnast", "Felinoid", "Feral Cheetah", "Feral Gryphon", "Feral Shaft Beast", "Fire Elemental", "Jaguar Warrior", "Leopardman", "Manticore", "Margay", "Ninja Cat", "Panther Herm", "Panther Taur", "Plush lion", "Rubber Tigress", "Sabretooth", "Shadow Beast Male", "Sphinx", "Snow Bat", "Tiger", "Malayan Tiger Male", "Tigertaur", "Malayan Tiger Herm", "Wildcat", "Rubber Puma" } to infections of BarbedCockList;

when play begins:
	add { "Dragontaur", "Dracovixentaur", "Ebonflame Dragator", "Ebonflame drake", "Ebonflame Whelp", "Feral Sea Dragoness", "Feral Sea Dragon", "Fire Sprite", "Fire Elemental", "Flaming Lynx", "Yamato Dragoness", "Yamato Dragon", "Wyvern" } to infections of FirebreathList;

when play begins:
	add { "Black Equinoid", "Centaur Mare", "Centaur Stallion", "Donkeyman", "Donkeywoman", "Friendship Pony", "Giraffe", "Horseman", "Mareslut", "Mutant Centaur", "Nightmare", "Palomino Stallion", "Pegasus", "Reindeer", "Sierrasaur", "Stallionboi", "Unicorn", "Zebra Stallion", "Wyvern" } to infections of BluntCockList;

when play begins:
	add { "Bald Eagle", "Bird of Paradise", "Black Wasp", "Butterfly", "Dragontaur", "Dracovixentaur", "Drone Wasp", "Ebonflame Whelp", "Ebonflame Dragator", "Ebonflame drake", "Fire Sprite", "Fluffy Owl", "Fruit Bat", "Hawkman Male", "Harpy", "Blue Gryphon Herm", "Mothgirl", "Pegasus", "Queen Bee", "Reindeer", "Snow Bat", "Vulpogryph", "Yamato Dragon", "Yamato Dragoness", "Wyvern" } to infections of FlightList;

when play begins:
	add { "Bottlenose Toy", "Feral Sea Dragon", "Feral Sea Dragoness", "Dolphin Herm", "Killer Whale", "Shark Herm", "Platypus", "Sea Otter", "Gator Herm" } to infections of SwimList;

when play begins:
	add { "Frost Drake", "Avalon Kobold" } to infections of OviImpregnatorList;
]


Part 2 - Rules

StatusBarSetting is a number that varies.

First for constructing the status line (this is the bypass status line map rule):
	if StatusBarSetting is 0:
		fill status bar with Table of Fancy Status;
	else:
		fill status bar with Table of Narrow Status;

d18 is a number that varies.[@Tag:NotSaved]
descr is a text that varies.
sh-descr is a text that varies.
cupsize is an indexed text that varies. Cupsize is "ABCDEFGHIJKLMNOPQRSTUVWXYZ".
Lusting is a text that varies.

[ Hunting moved to Hunting.i7x in Core Mechanics ]

[ Fast Travel moved to Navigation.i7x in Core Mechanics ]

statusbarchange is an action applying to nothing.

understand "statusbarchange" as statusbarchange.

carry out statusbarchange:
	if StatusBarSetting is 0:
		now StatusBarSetting is 1;
	else if StatusBarSetting is 1:
		now StatusBarSetting is 0;

understand "vial [text]" as vialing.

Vialing is an action applying to one topic.

Researchbypass is a number that varies. Researchbypass is normally 0.

carry out vialing:
	let t be the topic understood;
	let target be text;
	let found be 0;
	let z be 1;
	let q be a topic;
	repeat with x running through vials of Player:
		[now q is x;]
		if t in lower case is x in lower case:
			now target is x;
			now found is 1;
			break;
		increase z by 1;
	if found is 0:
		say "You don't seem to have any such vial.";
		continue the action;
	say "What harm could a terribly infectious bio-nanite be? Down the hatch!";
	now MonsterID is 0;
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry exactly matches the text target, case insensitively:
			now MonsterID is y;
			break;
	if MonsterID is 0:
		say "ERROR: That creature infection ([target]) could not be found.";
		now MonsterID is 1;
	else:
		choose row MonsterID from the Table of Random Critters;
		now researchbypass is 1;
		if non-infectious entry is true:
			now non-infectious entry is false;
			infect target;
			now non-infectious entry is true;
		else:
			infect target;
		now researchbypass is 0;
		remove entry z from vials of Player;

to deletevial (x - text):	[removes 1 vial of a given type from the player's inventory]
	let found be 0;
	let z be 0;
	repeat with y running through vials of Player:
		increase z by 1;
		if x in lower case is y in lower case:
			now found is 1;
			break;
	if found is 0:
		say "Error - [x] - Expected vial not found.";
		stop the action;
	else:
		remove entry z from vials of Player;

understand "vialdrop [text]" as vialdropping.

Vialdropping is an action applying to one topic.

Carry out vialdropping:
	let t be the topic understood;
	let target be text;
	let found be 0;
	let z be 1;
	let q be a topic;
	repeat with x running through vials of Player:
		[now q is x;]
		if t in lower case is x in lower case:
			now target is x;
			now found is 1;
			break;
		increase z by 1;
	if found is 0:
		say "You don't seem to have any such vial.";
		continue the action;
	say "You chuck the [target] vial away.";
	remove entry z from vials of Player;

understand "vialalldrop [text]" as vialalldropping.

Vialalldropping is an action applying to one topic.

Carry out vialalldropping:
	let t be the topic understood;
	let target be text;
	let found be 0;
	repeat with x running through vials of Player:
		if t in lower case is x in lower case:
			now target is x;
			remove x from vials of Player;
			now found is 1;
	if found is 0:
		say "You don't seem to have any such vial.";
	else:
		say "You chuck all your [target] vials away.";

understand "vialeverythingdrop" as VialEverythingDropping.

VialEverythingDropping is an action applying to nothing.

Check VialEverythingDropping:
	if Vials of Player is empty, say "     You don't even have any vials!" instead;

Carry out VialEverythingDropping:
	say "     [bold type]Do you really want to destroy all vials you have?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes, out with this junk!";
	say "     ([link]N[as]n[end link]) - Err, on second thought...";
	if Player consents:
		LineBreak;
		truncate Vials of Player to 0 entries; [cleaning out everything]

[understand the command "set inventory columns" and "inventory columns" and "set inventory" and "set columns" as something new.]

settinginvcolumns is an action applying to nothing.

understand "set inventory columns" as settinginvcolumns.
understand "inventory columns" as settinginvcolumns.
understand "set inventory" as settinginvcolumns.
understand "set columns" as settinginvcolumns.

invcolumns is a number that varies. [invcolumns is usually 2. - set as part of Presets in Core Mechanics]

carry out settinginvcolumns:
	say "[set_invcolumns]";


understand the command "i" and "inv" and "inventory" as something new.

Inventorying is an action applying to nothing.

understand "item" as Inventorying.
understand "i" as Inventorying.
understand "inv" as Inventorying.
understand "inventory" as Inventorying.

invcolumns is a number that varies. invcolumns is usually 2.

does the player mean doing something with the medkit: it is very likely.

carry out Inventorying:
	if invcolumns < 1 or invcolumns > 4, now invcolumns is 2;
	sort invent of Player;
	let dseed be 0;
[	let tempname be indexed text;
	repeat with x running from 1 to the number of rows in the table of game objects:
		choose row x in the table of game objects;
		now tempname is Name entry in lower case;
		now sortName entry is tempname;
	sort the table of game objects in sortname order; ]
	let jblouse be 0;
	if demon seed is owned, now dseed is 1;
	if Janice's blouse is owned, now jblouse is 1;
	say "Peeking into your backpack, you see: [if the number of owned grab objects is 0]Nothing[else][line break][end if]";
	[apparently adding entries to a list is faster than looking for it, so we clear the previous item actions in one call]
	[now hyperlink list is {};]
	[these are the default item actions in front of the item name]
	let itemactions be {{"U", "use"}, {"L", "look"}, {"S", "smell"}, {"D", "drop"}, {"J", "junk"}, {"X", "junkall"}};
	if the number of owned grab objects > 0:
		say "[bold type][bracket]U[close bracket][roman type]se, [bold type][bracket]L[close bracket][roman type]ook, [bold type][bracket]S[close bracket][roman type]mell, [bold type][bracket]D[close bracket][roman type]rop, [bold type][bracket]J[close bracket][roman type]unk, [bold type][bracket]X[close bracket][roman type]Junkall, [if the number of trader in the Location of Player > 0 or ( Ronda is visible and HP of Ronda is 0 and dseed is 1 ) or ( Kristen is visible and HP of Kristen is 10 and jblouse is 1 ) or ( Christy is visible and carried of super spicy sausage > 0 and HP of Christy > 1 and HP of Christy < 50 )][bold type][bracket]T[close bracket][roman type]rade, [end if][if the number of smither in the Location of Player > 0][bold type][bracket]I[close bracket][roman type]mprove, [end if][bold type](*)[roman type] equipped/wielded, [bold type](+)[roman type] improved. ";
		let weight be 0;
		[5 more than in the original version, but therefore the indicators will not add to it anymore]
		let baseavailcolumns be a number;
		if invcolumns > 1:
			now baseavailcolumns is 32;
		else:
			now baseavailcolumns is 41;
		let owneditemindex be a number;
		[preparations, put all calculations here that would slow down the loop]
		[! for every "trade if" you have to add a corresponding "needstradechek if" here !]
		let needstradecheck be 0;
		if Ronda is visible and HP of Ronda is 0:
			now needstradecheck is 1;
		else if Xerxes is visible and lust of Xerxes is 2:
			now needstradecheck is 1;
		else if Helen is visible and lust of Helen is 2:
			now needstradecheck is 1;
		else if Kristen is visible and HP of Kristen is 10:
			now needstradecheck is 1;
		else if Christy is visible and HP of Christy > 1:
			now needstradecheck is 1;
		[generic trader check]
		let traderavailable be 0;
		let tradeguy be a person;
		if the number of trader in the Location of Player > 0:
			now tradeguy is a random trader in the Location of Player;
			let traderavailable be 1;
		[go through all the stuff]
		repeat with x running from 1 to the number of rows in the table of game objects:
			choose row x in the table of game objects;
			let ownedCount be carried of object entry;
			if ownedCount > 0:
				increase owneditemindex by 1;
				let itemname be Name entry;
				[line feed or switch to next column]
				if (invcolumns is 1) or (remainder after dividing owneditemindex by invcolumns is 1):
					say "[line break]";
				else:
					say "  --  ";
				[new (old) linking without text capturing]
				say "[variable letter spacing]";
				if hypernull is not 1:
					repeat with itemaction running through itemactions:
						say "[invquicklink (itemname) for (itemaction)]";
				if needstradecheck is 1 and trade of object entry is empty:
					let notval be 0;
					[! for every if block here there has to be a corresponding if before the loop !]
					if Ronda is visible and HP of Ronda is 0 and itemname is "demon seed":
						say "[link][bracket][bold type]T[roman type][close bracket][as]give [itemname] to Ronda[end link]";
					if Xerxes is visible and lust of Xerxes is 2 and itemname is "awesome fruit":
						say "[link][bracket][bold type]T[roman type][close bracket][as]give [itemname] to Xerxes[end link]";
					if Helen is visible and lust of Helen is 2 and itemname is "awesomer fruit":
						say "[link][bracket][bold type]T[roman type][close bracket][as]give [itemname] to Helen[end link]";
					if Kristen is visible and HP of Kristen is 10 and itemname is "Janice's blouse":
						say "[link][bracket][bold type]T[roman type][close bracket][as]give [itemname] to Kristen[end link]";
					if Christy is visible and HP of Christy > 1 and HP of Christy < 50 and itemname is "super spicy sausage":
						say "[link][bracket][bold type]T[roman type][close bracket][as]give [itemname] to Christy[end link]";
				else if traderavailable is 1:
					say " [link][bracket][bold type]T[roman type][close bracket][as]give [itemname] to [tradeguy][end link]";
				if (((object entry is armament or (object entry is equipment and AC of object entry > 0 and effectiveness of object entry > 0)) and object entry is not improved) or the itemname is "nanite collector") and the number of smither in the Location of Player > 0:
					say " [link][bracket][bold type]I[roman type][close bracket][as]upgrade [itemname][end link]";
				[get available columns, plus 6 to show the increase to the original value]
				let availcolumns be baseavailcolumns;
				[add use and improve indicators which will reduce the available width for the item name]
				let useindicator be "";
				if (object entry is wielded and object entry is armament) or (object entry is equipment and object entry is equipped):
					now useindicator is " (*)";
					now availcolumns is availcolumns minus 4;
				let improveindicator be "";
				if object entry is improved and ( object entry is armament or object entry is equipment ):
					now improveindicator is " (+)";
					now availcolumns is availcolumns minus 4;
				[print item name and indicators]
				say "[fixed letter spacing][itemname formatted to (availcolumns) characters][useindicator][improveindicator]";
				let weighttxt be text;
				let weightnum be weight entry times ownedCount;
				say " x[if ownedCount < 10] [end if][ownedCount]([if weightnum < 10] [end if][weightnum] lbs)";
				increase weight by weightnum;
		say "[line break]";
		say "[variable letter spacing]Total Weight: [weight]/[capacity of Player] lbs. [if the player is overburdened]*OVERBURDENED*[line break][end if][line break]";
	if scenario is "Researcher" or nanitemeter > 0:
		say "(You may see your collection of vials using [link][bold type]vial inventory[roman type][end link] or [link][bold type]vinv[roman type][end link] for short.)";
	if the number of entries in tapes of Player > 0:
		say "(You may see your collection of video tapes using [link][bold type]tape inventory[roman type][end link] or [link][bold type]tinv[roman type][end link] for short.)";
	say "(You can adjust the number of inventory columns with the command [link]set columns[end link].)";
	now invlinklistfilled is one;

[used to speed up link command lookup in between clears on the hyperlink list, because we know something about the list:
 the order of items is in all likelihood the same that we are now creating links in
]
lastinvfoundindex is a number that varies.
[another speed up: if we know that the link list is empty (or at least not filled with inventory links) we can skipping searching through it]
invlinklistfilled is a number that varies.
To say invquicklink (itemname - a text) for (itemaction - a list of text):
	let linkcommand be the substituted form of "[entry 2 of itemaction] [itemname]";
	let the invlinkindex be zero;
	if invlinklistfilled is zero:
		add linkcommand to hyperlink list;
		let invlinkindex be the number of entries of hyperlink list;
	else:
		if lastinvfoundindex > 0 and lastinvfoundindex <= number of entries of hyperlink list and linkcommand exactly matches the text entry (lastinvfoundindex) of the hyperlink list:
			now invlinkindex is lastinvfoundindex;
		else:
			repeat with linktext running through the hyperlink list:
				decrease invlinkindex by 1;
				if linkcommand is linktext:
					now invlinkindex is 0 - invlinkindex;
					break;
		if the invlinkindex <= 0:
			add linkcommand to hyperlink list;
			let invlinkindex be the number of entries of hyperlink list;
		else:
			now lastinvfoundindex is invlinkindex + 1;
	say "[set link (invlinkindex)][entry 1 of itemaction][terminate link] ";

Definition: A grab object (called D) is fiveowned:
	let count be 0;
	if there is a name corresponding to a object of d in the table of game objects:
		if the carried of D > 4, yes;
	no;

[understand the command "vint" and "vial inventory" and "vial inv" and "vinv" as something new.]

VialInventorying is an action applying to nothing.

understand "vint" as VialInventorying.
understand "vinv" as VialInventorying.
understand "vial inventory" as VialInventorying.
understand "vial inv" as VialInventorying.

carry out VialInventorying:
	sort vials of Player;
	if scenario is not "Researcher" and nanitemeter is 0:
		say "You don't possess anything of that nature.";
		continue the action;
	if the number of entries in vials of Player is 0:
		say "Your collection of infection vials is empty.";
	if the number of entries in vials of Player > 0:
		say "Type [bold type]vial <name>[roman type] to [bold type][bracket]U[close bracket][roman type]se a vial, [bold type]vialdrop <name>[roman type] to [bold type][bracket]D[close bracket][roman type]estroy a vial, [bold type]vialalldrop <name>[roman type] to [bold type][bracket]D[close bracket][roman type]estroy [bracket]A[close bracket]ll of a vial, [bold type]vialeverythingdrop[roman type] to [link][bracket][bold type]C[roman type][close bracket][as]vialeverythingdrop[end link][roman type]lean out every last vial you have";
		if ( scenario is "Researcher" or nanitemeter > 0) and Larissa is visible:
			say " or [bold type]vialsell[roman type] to [bold type][bracket]S[close bracket][roman type]ell a vial";
		say ".";
		say "Your infection vial collection consists of:[line break]";
		let norepeat be a list of text;
		repeat with x running through vials of Player:
			if x is listed in norepeat, next;
			add x to norepeat;
			let count be 0;
			repeat with z running through vials of Player:
				if z is x, increase count by 1;
			say "[link][bracket][bold type]U[roman type][close bracket][as]vial [x][end link] ";
			say "[link][bracket][bold type]D[roman type][close bracket][as]vialdrop [x][end link] ";
			say "[link][bracket][bold type]DA[roman type][close bracket][as]vialalldrop [x][end link] ";
			if ( scenario is "Researcher" or nanitemeter > 0) and Larissa is visible:
				say "[link][bracket][bold type]S[roman type][close bracket][as]vialsell [x][end link] ";
			say "[X] x [count][line break]";


strongbacked is a number that varies.

definition: A person is overburdened:
	let weight be 0;
	if the number of owned grab objects > 0:
		repeat with x running from 1 to the number of rows in the table of game objects:
			choose row x in the table of game objects;
			if object entry is owned:
				let num be carried of object entry;
				increase weight by weight entry times num;
	if "Strong Back" is listed in feats of Player and strongbacked is 0:
		now strongbacked is 1;
		increase capacity of Player by 50;
	if weight > capacity of Player, yes;
	no;

instead of examining a watch:
	say "Time Remaining: [( turns minus targetturns ) divided by 8] days, [(remainder after dividing ( turns minus targetturns ) by 8 ) times 3] hours, it is currently [time of day].";

Using is an action applying to one thing.

understand "dequip [owned grab object]" as using.
understand "take off [owned grab object]" as using.
understand "use [owned grab object]" as using.
understand "eat [owned grab object]" as using.
understand "drink [owned grab object]" as using.
understand "equip [owned grab object]" as using.
understand "hold [owned grab object]" as using.
understand "wield [owned grab object]" as using.
understand "write in [owned grab object]" as using.

Check using a grab object (called x):
	if hardmode is true and x is journal and (LastJournaluse minus 8) < turns:
		say "You can't use your [x] for another [(remainder after dividing (turns minus (LastJournaluse minus 8)) by 8 ) times 3] hours.";
		stop the action;
	continue the action;

Carry out using a grab object (called x):
	if x is owned:
		process x;
	else:
		say "You don't see any [x] in your backpack.";

[MassUsing is an action applying to a number and one thing.
Understand "use [number] [owned grab object]" as massusing.
Carry out massusing:
	repeat with z running from 1 to number:
		if second noun is owned:
			process second noun;
		else:
			say "You don't see any [second noun] in your backpack.";
]

instead of waiting:
	follow the turnpass rule;

TimekeepingVar is a number that varies.

an everyturn rule:
	now TimekeepingVar is remainder after dividing turns by 8;

To say time of day:
	if TimekeepingVar is:
		-- 7:
			say "early morning";
		-- 6:
			say "mid morning";
		-- 5:
			say "noon";
		-- 4:
			say "mid afternoon";
		-- 3:
			say "evening";
		-- 2:
			say "early night";
		-- 1:
			say "midnight";
		-- 0:
			say "pre dawn";
		-- -1:
			say "early morning";
		-- -2:
			say "mid morning";
		-- -3:
			say "noon";
		-- -4:
			say "mid afternoon";
		-- -5:
			say "evening";
		-- -6:
			say "early night";
		-- -7:
			say "midnight";
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

LastTurnDay is a truth state that varies.
DateDay is a number that varies. DateDay is usually 11.
DateMonth is a number that varies. DateMonth is usually 4.
DateYear is a number that varies. DateYear is usually 2008.

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


To Extend game by (x - a number):
	decrease targetturns by x;
	say "[bold type]((You have earned additional time: [x divided by 8] days, [(remainder after dividing x by 8) times 3] hours))[roman type][line break]";


To process (x - a grab object):
	let tan be hunger of player;
	if x is temporary and x is owned:
		say "You eagerly use the [x]!";
		let found be 0;
		let num be 0;
		ItemLoss x by 1 silently;
	else:
		say "You use the [x].";
	if usedesc of x is empty:
		now x is x;
	else:
		say "[usedesc of x]";
	if x is food:
		if "Junk Food Junky" is listed in feats of Player:
			if hunger of Player > 8:
				increase score by 2;
			PlayerEat 9;
			say "You eat the food, feeling a little disappointed it's not junk food!";
			if morale of Player < 0:
				increase morale of Player by 10;
				if morale of Player > 0, now morale of Player is 0;
				say "You feel a little better having eaten some boring food.";
		else:
			if hunger of Player > 11:
				increase score by 4;
			PlayerEat 12;
			say "You feel less hungry after wolfing down some food, yum!";
			if morale of Player < 0:
				increase morale of Player by 30;
				if morale of Player > 0, now morale of Player is 0;
				say "You feel better having eaten.";
		if "Tanuki Salts" is listed in feats of player:
			PlayerEat 4;
			say "Ah, those secret spices help so much!";
	else if x is chips:
		if labhost > 0 and BodyName of Player is "Chocolate Lab" and a random chance of labhost in 4 succeeds:
			say "[line break]     As you begin unwrapping your snack a powerful rumbling begins in your stomach, you release a low groan as the churning inside your body increases, the [if labhost is 2]labs[else]lab[end if] clearly excited about something. There is a sudden pressure at your chest as your feel the churning begin to focus at a single point, before you have a chance to react, or even realize what's happening, a canine snout pushes out of your chocolaty chest, grabbing the [one of]chocolate bar[or]chocolate[or]M&Ms[at random] from your hand and swallowing it whole. You stand there shocked for a moment as the lab spits up the chewed remains of your treat's wrapper before releasing a happy bark and receding into your body. Dissappointed at the loss of your snack, you release a heavy sigh and continue on your way.";
		else if "Junk Food Junky" is listed in feats of Player:
			if hunger of Player > 14:
				increase score by 5;
			PlayerEat 15;
			say "Snack time! You wolf down some [one of]potato chips[or]somehow still warm fries[or]Doritos[or]trail mix[or]M&Ms[or]hard candy[at random] with delight. YUM!";
			if morale of Player < 0:
				increase morale of Player by 36;
				if morale of Player > 0, now morale of Player is 0;
				say "You feel much better after having a snack.";
			increase morale of Player by 1;
		else:
			if hunger of Player > 5:
				increase score by 2;
			PlayerEat 6;
			say "You feel less hungry after wolfing down some [one of]potato chips[or]somehow still warm fries[or]Doritos[or]trail mix[or]M&Ms[or]hard candy[at random], yum!";
			if morale of Player < 0:
				increase morale of Player by 15;
				if morale of Player > 0, now morale of Player is 0;
				say "You feel better having eaten.";
	else if x is glob of goo:
		if hunger of Player > 5:
			increase score by 2;
		PlayerEat 6;
		say "You slurp up the neon colored goo and find that it tastes delicious, and even helps slake your hunger somewhat as you chew at it, mmm...";
		if morale of Player < 0:
			increase morale of Player by 15;
			if morale of Player > 0, now morale of Player is 0;
			say "You feel better having eaten.";
	else if x is water bottle:
		if "Junk Food Junky" is listed in feats of Player:
			if thirst of Player > 0:
				increase score by thirst of Player divided by 3;
				if thirst of Player > 15:
					decrease score by ( thirst of Player minus 15 ) divided by 3;
			PlayerDrink 15;
			say "You feel a little less thirty after drinking some bland water!";
			if morale of Player < 0:
				increase morale of Player by 20;
				if morale of Player > 0, now morale of Player is 0;
				say "After drinking something, you feel a little better.";
		else:
			if thirst of Player > 0:
				increase score by thirst of Player divided by 3;
				if thirst of Player > 25:
					decrease score by ( thirst of Player minus 25 ) divided by 3;
			PlayerDrink 25;
			say "You feel less thirsty after guzzling some water, yum!";
			if morale of Player < 0:
				increase morale of Player by 62;
				if morale of Player > 0, now morale of Player is 0;
				say "After drinking something, you feel better.";
	else if x is dirty water:
		if "Junk Food Junky" is listed in feats of Player:
			if thirst of Player > 0:
				increase score by thirst of Player divided by 3;
				if thirst of Player > 15:
					decrease score by ( thirst of Player minus 15 ) divided by 3;
			PlayerDrink 15;
			say "You feel a little less thirty after drinking some bland water!";
			if morale of Player < 0:
				increase morale of Player by 20;
				if morale of Player > 0, now morale of Player is 0;
				say "After drinking something, you feel a little better.";
		else:
			if thirst of Player > 0:
				increase score by thirst of Player divided by 3;
				if thirst of Player > 25:
					decrease score by ( thirst of Player minus 25 ) divided by 3;
			PlayerDrink 25;
			say "You feel less thirsty after guzzling some water, yum!";
			if morale of Player < 0:
				increase morale of Player by 62;
				if morale of Player > 0, now morale of Player is 0;
				say "After drinking something, you feel better.";
		if "Iron Stomach" is not listed in feats of Player:
			let RandomRow be a random number from 1 to the number of rows in the Table of Random Critters;
			choose row RandomRow from the Table of Random Critters;
			while area entry is "Nowhere": [runs circles until it finds an available creature]
				now RandomRow is a random number from 1 to the number of rows in the Table of Random Critters;
				choose row RandomRow from the Table of Random Critters;
			infect Name entry;
	else if x is soda:
		if "Junk Food Junky" is listed in feats of Player:
			if thirst of Player > 0:
				increase score by thirst of Player divided by 3;
				if thirst of Player > 30:
					decrease score by ( thirst of Player minus 30 ) divided by 3;
			PlayerDrink 30;
			say "Awesome! Soda! You down the delicious can of [if Player is sugarbodied][one of]cola[or]Dr Pibbston[or]Mountain Don't[or]Burkes['] root beer[at random][else][one of]lemon lime[or]strawberry[or]Dr Pibbston[or]cola[or]orange[or]ginger ale[at random][end if]. YUM!";
			if morale of Player < 0:
				increase morale of Player by 75;
				if morale of Player > 0, now morale of Player is 0;
				say "You feel much better having had a soda.";
			increase morale of Player by 1;
		else:
			if thirst of Player > 0:
				increase score by thirst of Player divided by 3;
				if thirst of Player > 12:
					decrease score by ( thirst of Player minus 12 ) divided by 3;
			PlayerDrink 12;
			say "You feel less thirsty after guzzling some soda, [if Player is sugarbodied][one of]cola[or]Dr Pibbston[or]Mountain Don't[or]Burkes['] root beer[at random][else][one of]lemon lime[or]strawberry[or]Dr Pibbston[or]cola[or]orange[or]ginger ale[at random][end if] yum!";
			if morale of Player < 0:
				increase morale of Player by 30;
				if morale of Player > 0, now morale of Player is 0;
				say "You feel better having drunken something.";
		sfsodadrink;
	else if x is manufactured milk:
		say "The milk is thick, like a shake, flowing down your throat in sweet creamy waves that send tingles of pleasure through your body as you guzzle it down. Only after you've drunk it all down do you notice that some has run down your chin in your excitement. That is some good milk!";
		PlayerDrink 15;
	else if x is dog milk:
		say "Somehow still warm, you guzzle it down without thinking too hard about its origins. A prickly warmth fills your belly as the cream flows along your gullet.";
		PlayerDrink 15;
		repeat with Z running from 1 to number of filled rows in Table of Random Critters:
			choose row Z from the Table of Random Critters;
			let zed be "collie";
			if Name entry exactly matches the text zed, case insensitively:
				now MonsterID is Z;
				break;
		if "Iron Stomach" is not listed in feats of Player, follow the sex change rule;
	else if x is distilled milk:
		say "Ugh, dry milk. It takes some effort to force the almost sickeningly sweet powder down your throat, but once it hits your belly, your body is wracked with powerful waves of alternating lust and breathlessness.";
		increase thirst of Player by 5;
		grow breasts by 3;
		say "[line break]";
	if x is infectious and "Iron Stomach" is not listed in feats of Player:
		let found be 0;
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry is strain of x:
				now MonsterID is y;
				now found is 1;
				break;
		if found is 1, infect;
	else if x is a journal:
		follow the brain descr rule;
		say "You settle down and start scribbling in your journal about your [descr]. ";
		if Humanity of Player < 100:
			let healed be 10 + ( ( level of Player + perception of Player - 10 ) / 2 );
			if caffeinehigh of Player > 0:
				now healed is healed / 2;
				say " Filled with excess, manic energy, you have difficulty sitting still and focusing on your journal. ";
			if ssmb is true:
				now healed is ( healed * 3 ) / 2;
			increase humanity of Player by healed;
			if humanity of Player > 100:
				decrease healed by humanity of Player minus 100;
				now humanity of Player is 100;
			say "([humanity of Player]/100).";
			now Lastjournaluse is turns;
		follow turnpass rule;
	else if x is an armament:
		if weapon object of Player is x: [unequip]
			unwield x;
		else: [equip]
			wield x;
	else if x is equipment:
		if x is equipped: [unequip]
			if x is not cursed: [explanation why the item can't be taken off is to be done in the item description]
				say "     [bold type]You take off the [x].[roman type][line break]";
				now x is not equipped;
		else:
			if slot of x is empty:
				increase score by 0;
			else:
				repeat with z running through equipped equipment:
					if slot of z is slot of x:
						say "     [bold type]Your [z] is in the way![roman type][line break]";
						continue the action;
			if (slot of x is "feet" or slot of x is "waist") and (BodyName of Player is listed in infections of TaurList or BodyName of Player is listed in infections of NoLegList):
				say "     [bold type]Sadly, the [x] [if plural of x is true]are[else]is[end if] incompatible with your body type![roman type][line break]";
				continue the action;
			if size of x > 0: [objects with size restrictions]
				if (scalevalue of Player - size of x > 1): [clothing two size categories smaller]
					say "     [bold type]You can't even begin to fit into the [x]. [if plural of x is true]They are meant for smaller beings than yourself[else]It is meant for smaller beings than yourself[end if].[roman type][line break]";
					continue the action;
				else if (scalevalue of Player - size of x is 1): [clothing one size category smaller]
					say "     [bold type]You start wearing the [x]. [if plural of x is true]They are quite small for your body size, but still barely fit[else]It is quite small for your body size, but still barely fits[end if].[roman type][line break]";
					now x is equipped;
				else if (scalevalue of Player - size of x is 0): [clothing same size category]
					say "     [bold type]You start wearing the [x]. [if plural of x is true]They fit fairly well[else]It fits fairly well[end if].[roman type][line break]";
					now x is equipped;
				else if (scalevalue of Player - size of x is -1): [clothing one size category bigger]
					say "     [bold type]You start wearing the [x]. [if plural of x is true]They are quite big for your body size, but fit more or less with some adjustments[else]It is quite big for your body size, but fits more or less with some adjustments[end if].[roman type][line break]";
					now x is equipped;
				else if (scalevalue of Player - size of x < -1): [clothing two size categories bigger]
					say "     [bold type]The [x] [if plural of x is true]are simply too big! They are meant for much larger beings than yourself[else]is simply too big! It is meant for much larger beings than yourself[end if].[roman type][line break]";
					continue the action;
			else:
				say "     [bold type]You start wearing the [x].[roman type][line break]";
				now x is equipped;
	else if x is a pepperspray:
		if inafight is 1:
			say "[line break][usepepperspray]";
		else:
			say "It would not be good idea to use that on yourself. Spicy eyes!";
	else if x is a healing booster:
		let healed be 20;
		if "Expert Medic" is listed in the feats of Player:
			now healed is 25;
		else if carried of First Aid Manual > 0:
			increase healed by 2;
		if "Rapid Healing" is listed in the feats of Player:
			increase healed by 2;
		if "Regeneration" is listed in the feats of Player:
			increase healed by 3;
		if nohealmode is true:
			now healed is ( healed * 125 ) / 100;
		increase HP of Player by healed;
		if HP of Player > maxHP of Player:
			decrease healed by HP of Player minus maxHP of Player;
			now HP of Player is maxHP of Player;
		say "Using your healing booster, you inject the mix into your body, giving a quick boost to your infected body's healing rate. You regain [special-style-1][healed][roman type] HP.";
		ItemLoss healing booster by 1;
	if tan > hunger of player and "Tanuki Salts" is listed in feats of player:
		say "Dashing a little tanuki salts helped things along. Mmm, divinely tasty.";
		playerEat 5;
		increase Morale of Player by 5;


understand "talk [person]" as conversing.
understand "talk to [person]" as conversing.
understand "chat [person]" as conversing.
understand "chat with [person]" as conversing.
understand "talk with [person]" as conversing.

Conversing is an action applying to one thing.

Check Conversing:
	if the noun is the player, say "I know this is stressful, but talking to yourself will not help." instead;
	if the number of entries in conversation of noun is 0, say "They have nothing to say." instead.

carry out conversing:
	sort conversation of the noun in random order;
	repeat with comment running through conversation of the noun:
		say "[Noun] says, '[Comment]'";
		break;

Section Automatic Combat

[creates flag for automatic combat, from "Instinctive Combat" feat]
autoattacknormal is an action applying to nothing.
understand "auto attack normal" as autoattacknormal.

autoattackberserk is an action applying to nothing.
understand "auto attack berserk" as autoattackberserk.

autoattackpass is an action applying to nothing.
understand "auto attack pass" as autoattackpass.

autoattackcoward is an action applying to nothing.
understand "auto attack coward" as autoattackcoward.

autoattacksubmit is an action applying to nothing.
understand "auto attack submit" as autoattacksubmit.

autoattackmode is a number that varies.
[0 is normal]
[1 is attack]
[2 could be item? but probably not...]
[3 is pass]
[4 is flee]
[5 is submit]

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

Section Hyperlinks

[creates method to toggle hyperlinks on/off at any point in game.]
[HyperToggle is an action applying to nothing.
understand "Hyper Toggle" as HyperToggle.
carry out HyperToggle:
	if hypernull is 0:
		now hypernull is 1;
	else if hypernull is 1:
		now hypernull is 0;]
HyperlinksActivated is an action applying to nothing.
understand "Hyper On" as HyperlinksActivated.

carry out HyperlinksActivated:
	now hypernull is 0;

HyperlinksDeactivated is an action applying to nothing.
understand "Hyper Off" as HyperlinksDeactivated.

carry out HyperlinksDeactivated:
	now hypernull is 1;

Section AttemptWaitOrClear

To AttemptToWait: [use where you want a wait (which might be turned off by player settings)]
	if waiterhater is 0:
		wait for any key; [waits if waiting is active]
	if waiterhater plus hypernull is 0:
		say "[line break]"; [adds a break after the 'more']

To AttemptToClearHyper: [use where you want a clear (which might be turned off by player settings)]
	if clearnomore is 0:
		clear the screen; [clears if clearing is active]
	now invlinklistfilled is zero; [this changes the inventorying mode to not look for existing inventory links again]
	now hyperlink list is {}; [empties hyperlink list regardless of clear status]

To AttemptToWaitBeforeClear: [use where you want a wait, which happens directly before a separate clear]
	if clearnomore plus waiterhater is not 2: [waits if either waiting or clearing is active, only skips them if both are turned off]
		wait for any key;
	if waiterhater plus hypernull is 0:
		say "[line break]"; [adds a break after the 'more']

To AttemptToWaitAndClearHyper: [use where you want a wait and clear. Much like AttemptToWaitBeforeClear, but this includes the clear as part of it]
	if clearnomore plus waiterhater is not 2: [waits if either waiting or clearing is active, only skips them if both are turned off]
		wait for any key;
		clear the screen;
	now invlinklistfilled is zero; [this changes the inventorying mode to not look for existing inventory links again]
	now hyperlink list is {}. [empties hyperlink list regardless of clear status]

Section Waithate

[creates (and sets) flag for skipping many wait for any key;]
[i had difficulty setting it so that the player could directly toggle this, as well as have other chunks of code do the same thing. made a command, which is for when the player types it out, and a function, which is for when code calls it. the command just calls the code. I'm sure there is a better way to do this, but it seems to work properly.]
waiterhater is a number that varies.

WaitHateFunction is an action applying to nothing.
WaitHateCommand is an action applying to nothing.
understand "waits off" as WaitHateCommand.
understand "i hate to wait" as WaitHateCommand. [old command, keep for time being, eventually remove?]

carry out WaitHateCommand:
	WaitHateFunction;

To WaitHateFunction:
	now waiterhater is 1; [yes, you do hate to wait]
	say "The text rarely waits for you to press a key...[line break]... before continuing.";

WaitLoveFunction is an action applying to nothing.
WaitLoveCommand is an action applying to nothing.
understand "waits on" as WaitLoveCommand.
understand "i love to wait" as WaitLoveCommand. [old command, keep for time being, eventually remove?]

carry out WaitLoveCommand:
	WaitLoveFunction;

To WaitLoveFunction:
	now waiterhater is 0; [returns waiting to normal]
	say "Delays waiting for a key stroke to occur.";

Section Clearless

[creates (and sets) flag for skipping most (all?) clear the screen]
[same as for waithate, both command and function.]
clearnomore is a number that varies.

ClearLessFunction is an action applying to nothing.
ClearLessCommand is an action applying to nothing.
understand "clears off" as ClearLessCommand.
understand "the clears are gone" as ClearLessCommand. [old command, keep for time being, eventually remove?]

carry out ClearLessCommand:
	ClearLessFunction;

To ClearLessFunction:
	now clearnomore is 1; [turns off clears]
	say "The screen clears less often.";

ClearMoreFunction is an action applying to nothing.
ClearMoreCommand is an action applying to nothing.
understand "clears on" as ClearMoreCommand.
understand "the clears are back" as ClearMoreCommand. [old command, keep for time being, eventually remove?]

carry out ClearMoreCommand:
	ClearMoreFunction;

To ClearMoreFunction:
	now clearnomore is 0; [returns clearing to normal]
	say "Screen clearing occurs frequently.";

Section Color

To say special-style-1: [name can be changed if desired, just adjust calls to it as well]
	say first custom style;

To say special-style-2: [name can be changed if desired, just adjust calls to it as well]
	say second custom style;
[
To say alert-style: [already used for end game text]
	(- glk_set_style(style_Alert); -)
To say header-style: [already used for game title at start]
	(- glk_set_style(style_Header); -)
To say note-style: [already used for score changes]
	(- glk_set_style(style_Note); -)
To say blockquote-style:
	(- glk_set_style(style_BlockQuote); -)
To say input-style:
	(- glk_set_style(style_Input); -)
]

Table of User Styles (continued)
style name (a special-style)	justification (a text-justification)	obliquity (an obliquity)	indentation (a number)	first-line indentation (a number)	boldness (a boldness)	fixed width (a fixity)	relative size (a number)	glulx color (a glulx color value)
special-style-1	--	--	--	--	bold-weight	--	1	g-dark-green
special-style-2	--	--	--	--	bold-weight	--	1	g-medium-red

Table of Common Color Values (continued)
glulx color value	assigned number
g-pure-blue	255		[== $0000FF]
g-bright-cyan	39423		[== $0099FF]
g-dark-green	43520		[== $00CC00]
g-pure-green	65280		[== $00FF00]
g-pure-cyan	65535		[== $00FFFF]
g-dark-red	11141120		[== $AA0000]
g-medium-red	13369344		[== $CC0000]
g-peach	15645627		[== $EEBBBB]
g-pure-yellow	16776960		[== $FFFF00]
g-pure-magenta	16711935		[== $FF00FF]
g-pure-red	16711680		[== $FF0000]
[names can be changed if desired, also need to change matching name in table below. choose color in hex, then convert to decimal for assigned number.]

[
style name	justification	obliquity	indentation	first-line indentation	boldness	fixed width	relative size	glulx color
special-style-1	--	--	--	--	bold-weight	--	1	g-dark-green
special-style-2	--	--	--	--	bold-weight	--	1	g-medium-red
blockquote-style	--	--	--	--	--	--	--	--[appears to be unused]
input-style	--	--	--	--	--	--	--	--[appears to be unused]
fixed-letter-spacing-style	--	--	--	--	--	--	--	--[appears to be unused]
alert-style	--	--	--	--	--	--	--	--[also does end game text]
header-style	--	--	--	--	--	--	--	--[also does starting title]
note-style	--	--	--	--	--	--	--	--[also does scores]
italic-style	--	--	--	--	--	--	--	--[allows redefining of italic style]
bold-style	--	--	--	--	--	--	--	--[allows redefining of bold style]
[to change style: replace -- with desired change. see Glulx Text Effects.i7x for options]
[blockquote, input, and fixed letter appear to be unused. they could be redefined as desired for more colors/formating.]
[alert, header, and note are used for a few game functions. if you wanted to change those you could]
[italics and bold are currently in a variety of places. just a few italics, but bold is all over the place. be aware if you choose to change them]
]

Part 3 - Item Code

Understand the command "get" as something new.
Understand the command "take" as something new.

Grabbing is an action applying to one thing.

understand "get [present grab object]" as grabbing.
understand "take [present grab object]" as grabbing.
understand "grab [present grab object]" as grabbing.

carry out grabbing something (called x):
	let found be 0;
	let num be 0;
	repeat with Q running through invent of the Location of Player:
		increase num by 1;
		if q matches the regular expression printed name of x, case insensitively:
			now found is 1;
			ItemGain q by 1;
			remove entry num from invent of the Location of Player;
			if x is equipment:
				say "You pick up the [printed name of x] and tuck [if plural of x is true]them[else]it[end if] in your backpack.";
			else:
				say "You pick up the [printed name of x] and tuck it in your backpack.";
			break;
	if found is 0:
		say "You don't see any [x] around here.";
		if x is owned, say "You do see one in your backpack though. Did you mean to [bold type]use[roman type] it?";

Understand the command "trash" as something new.
Understand the command "junk" as something new.

burninating is an action applying to one thing.

understand "trash [owned grab object]" as burninating.
understand "junk [owned grab object]" as burninating.

carry out burninating something (called x):
	let found be 0;
	if x is journal:
		say "You really don't think that's a good idea.";
		stop the action;
	if x is wielded:
		say "You're wielding that, take it off first.";
		stop the action;
	if x is not owned:
		say "You don't seem to be holding any.";
		stop the action;
	now found is carried of x;
	if x is an equipment:
		if x is equipped:
			if found < 2:
				say "You're using that right now. Stop using it before you drop it.";
				continue the action;
	ItemLoss x by 1;


Understand the command "trashall" as something new.
Understand the command "junkall" as something new.

allburninating is an action applying to one thing.

understand "trashall [owned grab object]" as allburninating.
understand "junkall [owned grab object]" as allburninating.

carry out allburninating something (called x):
	let found be carried of x;
	if x is not owned:
		say "You don't seem to be holding any.";
	else:
		say "Do you wish to permanently trash all of the '[x]' you have?";
		if Player consents:
			if x is journal:
				say "You really don't think that's a good idea.";
			else if x is an armament:
				if x is wielded:
					if found is 1:
						say "You're wielding that, so you'd best stop using it first.";
					else:
						say "You trash all of them but the [x] you're using. Bye-bye.";
						ItemLoss x by (carried of x - 1) silently;
				else:
					say "You trash them all. Bye-bye.";
					ItemLoss all x silently;
			else if x is an equipment:
				if x is equipped:
					if found is 1:
						say "You're using that right now. You need to take it off to trash it.";
					else:
						say "You trash all of them but the [x] you're wearing. Bye-bye.";
						ItemLoss x by (carried of x - 1) silently;
				else:
					say "You trash them all. Bye-bye.";
					ItemLoss all x silently;
			else:
				say "You trash them all. Bye-bye.";
				ItemLoss all x silently;
		else:
			say "You change your mind.";


Understand the command "drop" as something new.

littering is an action applying to one thing.

understand "drop [owned grab object]" as littering.

carry out littering something (called x):
	let found be 0;
	let num be 0;
	if x is wielded and x is not journal:
		say "You're wielding that, take it off first.";
		stop the action;
	if x is not owned:
		say "You don't seem to be holding that.";
		stop the action;
	now found is the carried of x;
	now num is 0;
	if x is an equipment:
		if x is equipped:
			if found < 2:
				say "You're using that right now. Stop using it before you drop it.";
				continue the action;
	repeat through table of game objects:
		if printed name of x in lower case matches the text Name entry in lower case:
			add Name entry to the invent of the Location of Player;
			break;
	ItemLoss x by 1;

Looting is an action applying to nothing.

understand "get all" as looting.
understand "get everything" as looting.
understand "take all" as looting.
understand "take everything" as looting.
understand "grab all" as looting.

carry out looting:
	let found be 0;
	let num be 0;
	repeat with Q running through invent of the Location of Player:
		increase num by 1;
		now found is 1;
		ItemGain q by 1;
		say "You pick up the [q] and tuck it in your backpack.";
	if found is 0:
		say "You don't see anything around here.";
	else:
		now the invent of the Location of Player is { };

before taking a thing:
	if noun is rooted in place:
		say "You can't take that.";
		stop the action;
	say "That seems secured in place.";

understand the command "give" and "offer" as something new.

Trading is an action applying to two things.

Understand "give [owned grab object] to [person]" as trading.

Check trading:
	if second noun is the player, say "Do you think you will get a good deal from yourself? That's a hard bargain, man." instead;
	if the noun is libido pill, say "Use the [bold type]libpill <name>[roman type] command instead." instead;
	if second noun is not a trader, say "They do not look interested in trading." instead;
	if the noun is not owned, say "You can't offer what you don't have." instead;
	if trade of the noun is "", say "They don't seem interested in that specific item." instead;

Carry out trading:
	say "You offer up [the noun] to [second noun] and they look it over for a moment before nodding and drawing out a [trade of the noun] and handing it to you. A fair trade, right?";
	ItemGain trade of the noun by 1;
	if "Haggler" is listed in feats of Player and a random chance of 1 in 3 succeeds:
		say "You get a second one free with your amazing negotiating skills.";
		ItemGain trade of the noun by 1;
	let num be 0;
	ItemLoss noun by 1;

skipcockchange is a truth state that varies. skipcockchange is usually false.

This is the sex change rule:
	choose row MonsterID from the Table of Random Critters;
	let singlesexadjust be 0;
	if "Single Sexed" is listed in feats of Player:
		if Player is herm:
			let singlesexadjust be 1; [currently herm]
		else if Player is male:
			let singlesexadjust be 2; [currently male]
		else if Player is female:
			let singlesexadjust be 3; [currently female]
	if "Just One" is listed in feats of Player:
		if Cock Count entry > 1:
			now Cock Count entry is 1;
		if Cunt Count entry > 1:
			now Cunt Count entry is 1;
	if ( the sex entry is "Male" or the sex entry is "Both" ) and Cock Length of Player < Cock Length entry and Cock Count of Player is not 0 and "Female Preferred" is not listed in feats of Player:
		let prevcock be Cock Length of Player;
		increase Cock Length of Player by 1;
		increase Cock Length of Player by ( Cock Length entry minus Cock Length of Player ) divided by 3;
		if "Modest Organs" is listed in feats of Player and Cock Length of Player > 8:
			now Cock Length of Player is 8;
		if prevcock < Cock Length of Player:		[did cock actually grow?]
			follow the cock descr rule;
			say "You can see your [if Cock Count of Player is 1][one of]cock[or]penis[or]shaft[or]maleness[at random][else][one of]cocks[or]penises[or]shafts[or]malenesses[at random][end if] [one of]engorge[or]swell[or]throb[at random] as [if Cock Count of Player > 1]they gain[else]it gains[end if] in length, becoming [descr]!";
	else if ( the sex entry is "Male" or the sex entry is "Both" ) and Cock Length of Player > ( ( Cock Length entry times 150 ) / 100 ) and "One Way" is not listed in feats of Player:
		let prevcock be Cock Length of Player;
		decrease Cock Length of Player by 1;
		decrease Cock Length of Player by ( Cock Length of Player - ( ( Cock Length entry times 150 ) / 100 ) ) divided by 3;
		if "Male Preferred" is listed in feats of Player or "Herm Preferred" is listed in feats of Player or "Always Cocky" is listed in feats of Player:
			if Cock Length of Player < 5, now Cock Length of Player is 5;
		if "Modest Organs" is listed in feats of Player and Cock Length of Player > 8:
			now Cock Length of Player is 8;
		if prevcock > Cock Length of Player:		[did cock actually shrink?]
			follow the cock descr rule;
			say "Strong [one of]erotic tingles[or]cold waves[or]hot flashes[at random] run over your impressive [CockName of Player in lower case] [if Cock Count of Player > 1][one of]cocks[or]penises[or]shafts[or]poles[at random] as they begin[else][one of]cock[or]penis[or]shaft[or]pole[at random] as it begins[end if] to diminish somewhat to better suit your new infection. [if Cock Count of Player > 1]They dwindle[else]It dwindles[end if] in size, becoming [descr].";
	if ( the sex entry is "Male" or the sex entry is "Both" ) and Ball Size of Player < Ball Size entry and Cock Count of Player is not 0 and "Female Preferred" is not listed in feats of Player:
		let prevcock be Ball Size of Player;
		increase Ball Size of Player by 1;
		if "Modest Organs" is listed in feats of Player and Ball Size of Player > 4:
			now Ball Size of Player is 4;
		if prevcock < Ball Size of Player:		[did balls actually grow?]
			follow the cock descr rule;
			say "You can [if Player is internal]feel your internal[else]see your[end if] [one of]testicles[or]balls[or]orbs[or]nuts[at random] [one of]tingle[or]churn audibly[or]throb[at random] as they grow larger, [if Player is internal]body straining to abide this[else]your flesh growing taught with the[end if] expansion, leaving you with a [one of]pair[or]set[at random] of [Ball Size Adjective of Player] balls!";
	else if ( the sex entry is "Male" or the sex entry is "Both" ) and Ball Size of Player > ( ( Ball Size entry times 150 ) / 100 ) and "One Way" is not listed in feats of Player:
		let prevcock be Ball Size of Player;
		decrease Ball Size of Player by 1;
		if "Male Preferred" is listed in feats of Player or "Herm Preferred" is listed in feats of Player or "Always Cocky" is listed in feats of Player:
			if Ball Size of Player < 3, now Ball Size of Player is 3;
		if "Modest Organs" is listed in feats of Player and Ball Size of Player > 3:
			now Ball Size of Player is 3;
		if prevcock > Ball Size of Player:		[did cock actually shrink?]
			follow the cock descr rule;
			say "You can feel a [one of]draining of[or]tightness around[or]pressure dropping in[at random] your [if Player is internal]internal[else]impressive[end if] [CockName of Player in lower case] [one of]balls[or]testicles[or]gonads[or]nuts[at random] as they begin to diminish somewhat to better suit your new infection. You cum hard to drain their seed as they dwindle in size, becoming [Ball Size Adjective of Player] balls.";
	if Cock Count of Player < Cock Count entry and ( the sex entry is "Male" or the sex entry is "Both" ) and "Female Preferred" is not listed in feats of Player:
		let prevcock be Cock Count of Player;
		if Player is not male:
			increase Cock Count of Player by 1;
			now Cock Length of Player is 1;
			now the Ball Size of Player is 1;
			increase Cock Length of Player by ( Cock Length entry ) divided by 3;
			if skipcockchange is false:
				now CockName of Player is Name entry;
				now Cock of Player is cock entry;
			if "Modest Organs" is listed in feats of Player and Cock Length of Player > 8:
				now Cock Length of Player is 8;
			if "Modest Organs" is listed in feats of Player and Ball Size of Player > 3:
				now Ball Size of Player is 3;
		else if a random chance of 2 in 3 succeeds and "Just One" is not listed in feats of Player:	[Extra cocks at 67%]
			increase Cock Count of Player by 1;
		if singlesexadjust is 3 and sex entry is "Both":	[female remains female if herm infection]
			remove manhood from Player;
		if prevcock < Cock Count of Player:		[did new cock appear?]
			follow the cock descr rule;
			say "Your groin throbs with intense sensations as a [descr] [cock entry] [one of]cock[or]penis[or]shaft[or]maleness[at random] erupts from you, spurting a few excited streams of fluid as it settles into place.";
	if Cock Count of Player is not 0 and ( the sex entry is "Female" or the sex entry is "Neuter" ) and "One Way" is not listed in feats of Player:
		let prevcock be Cock Length of Player;
		let prevcock2 be Ball Size of Player;
		decrease Cock Length of Player by 1;
		decrease Cock Length of Player by Cock Length of Player divided by 3;
		decrease Ball Size of Player by 1;
		if "Male Preferred" is listed in feats of Player or "Herm Preferred" is listed in feats of Player or "Always Cocky" is listed in feats of Player:
			if Cock Length of Player < 5, now Cock Length of Player is 5;
			if Ball Size of Player < 3, now Ball Size of Player is 3;
		if (singlesexadjust is 1 or singlesexadjust is 2) and sex entry is "Female":		[male/herm becomes female if female infection]
			remove manhood from Player;
		if prevcock > Cock Length of Player or prevcock2 > Ball Size of Player:		[did cock actually shrink?]
			follow the cock descr rule;
			say "Strange [one of]erotic tingles[or]cold waves[or]hot flashes[at random] run over your [if Cock Count of Player > 1][one of]cocks[or]penises[or]shafts[or]poles[at random] as they begin[else][one of]cock[or]man meat[or]shaft[or]pole[at random] as it begins[end if] to shrink. [if Cock Count of Player > 1]They dwindle[else]It dwindles[end if] in size, becoming [descr] while[if Player is internal] you imagine[end if] your [one of]balls[or]testicles[or]nuts[or]gonads[at random] become [Ball Size Adjective of Player]. ";
			if Cock Length of Player < 1 or Ball Size of Player < 1:
				say "You barely have time to give a whimper as you cease to be a male.";
				remove manhood from Player;
			else:
				say "[line break]";
		if Cock Count of Player > 1 and a random chance of 2 in 5 succeeds and "All The Things" is not listed in feats of Player:
			say "Sudden pleasure runs through one of your doomed [Cock of Player] cocks as it sprays the last of its seed, dwindling down to nothing at all and vanishing, leaving only the powerful orgasm to remember it by.";
			decrease Cock Count of Player by 1;
	else if Cock Count of Player > Cock Count entry and a random chance of 1 in 3 succeeds and "One Way" is not listed in feats of Player and (sex entry is "Male" or sex entry is "Both" ) and "All The Things" is not listed in feats of Player:
		say "Sudden pleasure runs through one of your doomed [Cock of Player] cocks as it sprays the last of its seed, dwindling down to nothing at all and vanishing, leaving only [one of]the powerful[or]that final[at random] orgasm to remember it by.";
		decrease Cock Count of Player by 1;
	if ( the sex entry is "Female" or the sex entry is "Both" ) and Cunt Depth of Player < Cunt Depth entry and Cunt Count of Player is not 0 and "Male Preferred" is not listed in feats of Player:
		let prevcunt be Cunt Depth of Player;
		increase Cunt Depth of Player by 1;
		increase Cunt Depth of Player by ( Cunt Depth entry minus Cunt Depth of Player ) divided by 3;
		if "Modest Organs" is listed in feats of Player and Cunt Depth of Player > 8:
			now Cunt Depth of Player is 8;
		if prevcunt < Cunt Depth of Player:	[did cunt actually grow?]
			follow the cunt descr rule;
			say "You can see your [if Cunt Count of Player is 1][one of]cunt[or]pussy[or]vagina[or]cleft[at random][else][one of]cunts[or]pussies[or]vaginas[or]clefts[at random] [one of]pulse[or]quiver[or]throb[at random][end if] as [if Cunt Count of Player is 1]it grows[else]they grow[end if] deeper into your body, becoming [descr]!";
	else if ( the sex entry is "Female" or the sex entry is "Both" ) and Cunt Depth of Player > ( ( Cunt Depth entry times 150 ) / 100 ) and "One Way" is not listed in feats of Player:
		let prevcunt be Cunt Depth of Player;
		decrease Cunt Depth of Player by 1;
		decrease Cunt Depth of Player by ( Cunt Depth of Player - ( ( Cunt Depth entry times 150 ) / 100 ) ) divided by 3;
		if "Female Preferred" is listed in feats of Player or "Herm Preferred" is listed in feats of Player or "Always A Pussy" is listed in feats of Player:
			if Cunt Depth of Player < 5, now Cunt Depth of Player is 5;
		if "Modest Organs" is listed in feats of Player and Cunt Depth of Player > 8:
			now Cunt Depth of Player is 8;
		if prevcunt > Cunt Depth of Player:		[did cunt actually shrink?]
			follow the cunt descr rule;
			say "Strong [one of]erotic tingles[or]cold waves[or]hot flashes[at random] flow into your ample [if Cunt Count of Player > 1][one of]cunts[or]pussies[or]vaginas[or]clefts[at random] as they begin[else][one of]cunt[or]pussy[or]vagina[or]cleft[at random] as it begins[end if] to diminish somewhat to better suit your new infection. [if Cunt Count of Player > 1]They dwindle[else]It dwindles[end if] in size, becoming [descr].";
	if ( the sex entry is "Female" or the sex entry is "Both" ) and Cunt Tightness of Player < Cunt Tightness entry and Cunt Count of Player is not 0 and "Male Preferred" is not listed in feats of Player:
		let prevcunt2 be Cunt Tightness of Player;
		increase Cunt Tightness of Player by 1;
		increase Cunt Tightness of Player by ( Cunt Tightness entry minus Cunt Tightness of Player ) divided by 3;
		if "Modest Organs" is listed in feats of Player and Cunt Tightness of Player > 5:
			now Cunt Tightness of Player is 5;
		if prevcunt2 < Cunt Tightness of Player:	[did cunt actually widen?]
			follow the cunt descr rule;
			say "You can see your [if Cunt Count of Player is 1][one of]cunt[or]pussy[or]vagina[or]cleft[at random][else][one of]cunts[or]pussies[or]vaginas[or]clefts[at random][end if] [one of]engorge[or]swell[or]throb[at random] as your thighs are nudged apart to make room for those thickening lips, growing wider!";
	else if ( the sex entry is "Female" or the sex entry is "Both" ) and Cunt Tightness of Player > ( ( Cunt Tightness entry times 150 ) / 100 ) and "One Way" is not listed in feats of Player:
		let prevcunt be Cunt Tightness of Player;
		decrease Cunt Tightness of Player by 1;
		decrease Cunt Tightness of Player by ( Cunt Tightness of Player - ( ( Cunt Tightness entry times 150 ) / 100 ) ) divided by 3;
		if "Female Preferred" is listed in feats of Player or "Herm Preferred" is listed in feats of Player or "Always A Pussy" is listed in feats of Player:
			if Cunt Tightness of Player < 3, now Cunt Tightness of Player is 3;
		if "Modest Organs" is listed in feats of Player and Cunt Tightness of Player > 5:
			now Cunt Tightness of Player is 5;
		if prevcunt > Cunt Tightness of Player:		[did cock actually shrink?]
			follow the cunt descr rule;
			say "You can feel a [one of]tightening[or]snugness[or]clenching[at random] from your accommodating [if Cunt Count of Player > 1][one of]cunts[or]pussies[or]vaginas[or]clefts[at random][else][one of]cunt[or]pussy[or]vagina[or]cleft[at random][end if] as you are hit by an unexpected orgasm. The squeezing does not release fully as your wet hole[sfn] shrink[sfv] somewhat to better suit your new infection by becoming tighter.";
	if Cunt Count of Player < Cunt Count entry and ( the sex entry is "Female" or the sex entry is "Both" ) and "Male Preferred" is not listed in feats of Player:
		let prevcunt be Cunt Count of Player;
		if Player is not female or Cunt Depth of Player is 0 or Cunt Tightness of Player is 0:
			increase Cunt Count of Player by 1;
			now Cunt Depth of Player is 1;
			now Cunt Tightness of Player is 1;
			increase Cunt Depth of Player by ( Cunt Depth entry ) divided by 3;
			increase Cunt Tightness of Player by ( Cunt Tightness entry ) divided by 3;
			if "Modest Organs" is listed in feats of Player and Cunt Depth of Player > 8:
				now Cunt Depth of Player is 8;
			if "Modest Organs" is listed in feats of Player and Cunt Tightness of Player > 5:
				now Cunt Tightness of Player is 5;
		else if a random chance of 2 in 3 succeeds and "Just One" is not listed in feats of Player:	[2nd+ cunt at 67%]
			increase Cunt Count of Player by 1;
		if singlesexadjust is 2 and sex entry is "Both":	[male remains male if herm infection]
			now Cunt Count of Player is 0;
			now Cunt Depth of Player is 0;
			now Cunt Tightness of Player is 0;
		if prevcunt < Cunt Count of Player:		[did new cunt appear?]
			follow the cunt descr rule;
			say "Your groin throbs with intense sensations as a [descr] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] wetly forms, leaking along a thigh as you quiver.";
	if Cunt Count of Player is not 0 and ( the sex entry is "Male" or the sex entry is "Neuter" ) and "One Way" is not listed in feats of Player:
		let prevcunt be Cunt Depth of Player;
		let prevcunt2 be Cunt Tightness of Player;
		decrease Cunt Depth of Player by 1;
		decrease Cunt Depth of Player by Cunt Depth of Player divided by 3;
		decrease Cunt Tightness of Player by 1;
		decrease Cunt Tightness of Player by Cunt Tightness of Player divided by 4;
		if "Female Preferred" is listed in feats of Player or "Herm Preferred" is listed in feats of Player or "Always A Pussy" is listed in feats of Player:
			if Cunt Depth of Player < 5, now Cunt Depth of Player is 5;
			if Cunt Tightness of Player < 3, now Cunt Tightness of Player is 3;
		if (singlesexadjust is 1 or singlesexadjust is 3) and sex entry is "Male":	[female/herm becomes male if male infection]
			now Cunt Count of Player is 0;
			now Cunt Depth of Player is 0;
			now Cunt Tightness of Player is 0;
		if prevcunt > Cunt Depth of Player or prevcunt2 > Cunt Tightness of Player:		[did cunt actually shrink?]
			follow the cunt descr rule;
			say "Strange [one of]erotic tingles[or]cold waves[or]hot flashes[at random] run over your [if Cunt Count of Player > 1][one of]cunts[or]pussies[or]vaginas[or]clefts[at random] as they begin to shrink. They dwindle[else][one of]cunt[or]pussy[or]vagina[or]cleft[at random] as it begins to shrink. It dwindles[end if] in size, becoming [descr]. ";
			if Cunt Depth of Player < 1 or Cunt Tightness of Player < 1:
				say "With a sickening noise, you cease to be female all together.";
				remove womanhood from Player;
			else:
				say "[line break]";
		if Cunt Count of Player > 1 and a random chance of 2 in 5 succeeds and "All The Things" is not listed in feats of Player:
			say "An odd, wet noise has you peeking in time to see one of your [one of]cunts[or]pussies[at random] has vanished!";
			decrease Cunt Count of Player by 1;
			follow the cock descr rule;
			follow the cunt descr rule;
	else if Cunt Count of Player > Cunt Count entry and a random chance of 1 in 3 succeeds and "One Way" is not listed in feats of Player and (sex entry is "Female" or sex entry is "Both" ) and "All The Things" is not listed in feats of Player:
		say "An odd, wet noise has you peeking in time to see one of your [one of]cunts[or]pussies[at random] has vanished!";
		decrease Cunt Count of Player by 1;
	follow the cock descr rule;
	follow the cunt descr rule;
	now skipcockchange is false;
	if PronounChoice of Player is "Auto", follow the SetPlayerPronouns rule;

This is the breast change rule:
	choose row MonsterID from the Table of Random Critters;
	if Player is FullyNewTypeInfected: [new parts]
		if Nipple Count of Player is not Nipple Count entry:
			decrease Breast Size of Player by 2;
			follow the breast descr rule;
			if ( Nipple Count entry > Nipple Count of Player and "One Pair" is not listed in feats of Player ) or ( Nipple Count of Player is 0 and Nipple Count entry > 0 ):
				say "Your chest tingles intensely as two new sensitive points form up, announcing the arrival of two new [descr] breasts, pressing out of your [Torso Adjective of Player] hide.";
				increase Nipple Count of Player by 2;
			else if Nipple Count entry < Nipple Count of Player and "Bouncy Bouncy" is not listed in feats of Player:
				decrease Nipple Count of Player by 2;
				say "You look down just in time to see two nipples, breasts included, be reabsorbed into your body, leaving nothing but your [Torso Adjective of Player] flesh behind.";
			increase Breast Size of Player by 2;
		if Nipple Count of Player is 0:
			increase score by 0; [do nothing]
		else if the sex entry is "Female" or the sex entry is "Both":
			if Breast Size of Player < Breast Size entry and ( ( "Male Preferred" is not listed in feats of Player and "Flat Chested" is not listed in feats of Player ) or "Breasts" is listed in feats of Player ):
				follow the breast descr rule;
				let oldbreast be descr;
				say "You [one of]groan and grab at your chest as[or]give a loud moan, shuddering as[or]almost tip forward in surprise as[or]look down fearfully as a weird sensation builds and[at random] your [oldbreast] breasts ";
				increase Breast Size of Player by 1;
				increase Breast Size of Player by ( Breast Size entry minus Breast Size of Player ) divided by 3;
				follow the breast descr rule;
				say " become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]!";
			else if Breast Size of Player > Breast Size entry and "One Way" is not listed in feats of Player:
				follow the breast descr rule;
				let oldbreast be descr;
				say "You [one of]groan and grab at your chest as[or]give a loud moan, shuddering as[or]almost tip forward in surprise as[or]look down fearfully as a weird sensation builds and[at random] your [oldbreast] breasts ";
				decrease Breast Size of Player by 1;
				decrease Breast Size of Player by ( Breast Size of Player minus Breast Size entry ) divided by 3;
				follow the breast descr rule;
				say "become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]!";
		else if the sex entry is "Male":
			let breasttarget be male breast size entry;
			if "Breasts" is listed in feats of Player:
				if Male Breast Size entry is 0, now breasttarget is breast size entry;
			else if "Male Preferred" is listed in feats of Player or "Flat Chested" is listed in feats of Player:
				now breasttarget is 0;
			if Breast Size of Player < breasttarget:
				follow the breast descr rule;
				let oldbreast be descr;
				say "You [one of]groan and grab at your chest as[or]give a loud moan, shuddering as[or]almost tip forward in surprise as[or]look down fearfully as a weird sensation builds and[at random] your [oldbreast] breasts ";
				increase Breast Size of Player by 1;
				increase Breast Size of Player by ( breasttarget minus Breast Size of Player ) divided by 3;
				follow the breast descr rule;
				say "become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]!";
			else if Breast Size of Player > breasttarget and "One Way" is not listed in feats of Player:
				follow the breast descr rule;
				let oldbreast be descr;
				say "You [one of]groan and grab at your chest as[or]give a loud moan, shuddering as[or]almost tip forward in surprise as[or]look down fearfully as a weird sensation builds and[at random] your [oldbreast] breasts ";
				decrease Breast Size of Player by 1;
				decrease Breast Size of Player by ( Breast Size of Player minus breasttarget ) divided by 3;
				follow the breast descr rule;
				say "become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]!";
		if PronounChoice of Player is "Auto", follow the SetPlayerPronouns rule;
	else: [old style]
		if Nipple Count of Player is not Nipple Count entry:
			decrease Breast Size of Player by 2;
			follow the breast descr rule;
			if ( Nipple Count entry > Nipple Count of Player and "One Pair" is not listed in feats of Player ) or ( Nipple Count of Player is 0 and Nipple Count entry > 0 ):
				say "Your chest tingles intensely as two new sensitive points form up, announcing the arrival of two new [descr] breasts, pressing out of your [Skin of Player] hide.";
				increase Nipple Count of Player by 2;
			else if Nipple Count entry < Nipple Count of Player and "Bouncy Bouncy" is not listed in feats of Player:
				decrease Nipple Count of Player by 2;
				say "You look down just in time to see two nipples, [descr] breasts included, be reabsorbed into your body, leaving nothing but [Skin of Player] flesh behind.";
			increase Breast Size of Player by 2;
		if Nipple Count of Player is 0:
			increase score by 0; [do nothing]
		else if the sex entry is "Female" or the sex entry is "Both":
			if Breast Size of Player < Breast Size entry and ( ( "Male Preferred" is not listed in feats of Player and "Flat Chested" is not listed in feats of Player ) or "Breasts" is listed in feats of Player ):
				follow the breast descr rule;
				let oldbreast be descr;
				say "You [one of]groan and grab at your chest[or]give a loud moan, shuddering[or]almost tip forward in surprise[or]look down fearfully as sensation builds[at random], [Skin of Player] skin glistening as your [oldbreast] breasts ";
				increase Breast Size of Player by 1;
				increase Breast Size of Player by ( Breast Size entry minus Breast Size of Player ) divided by 3;
				follow the breast descr rule;
				say "become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]!";
			else if Breast Size of Player > Breast Size entry and "One Way" is not listed in feats of Player:
				follow the breast descr rule;
				let oldbreast be descr;
				say "You [one of]groan and grab at your chest[or]give a loud moan, shuddering[or]almost tip forward in surprise[or]look down fearfully as sensation builds[at random], [Skin of Player] skin glistening as your [oldbreast] breasts ";
				decrease Breast Size of Player by 1;
				decrease Breast Size of Player by ( Breast Size of Player minus Breast Size entry ) divided by 3;
				follow the breast descr rule;
				say "become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]!";
		else if the sex entry is "Male":
			let breasttarget be male breast size entry;
			if "Breasts" is listed in feats of Player:
				if Male Breast Size entry is 0, now breasttarget is breast size entry;
			else if "Male Preferred" is listed in feats of Player or "Flat Chested" is listed in feats of Player:
				now breasttarget is 0;
			if Breast Size of Player < breasttarget:
				follow the breast descr rule;
				let oldbreast be descr;
				say "You [one of]groan and grab at your chest[or]give a loud moan, shuddering[or]almost tip forward in surprise[or]look down fearfully as sensation builds[at random], [Skin of Player] skin glistening as your [oldbreast] breasts ";
				increase Breast Size of Player by 1;
				increase Breast Size of Player by ( breasttarget minus Breast Size of Player ) divided by 3;
				follow the breast descr rule;
				say "become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]!";
			else if Breast Size of Player > breasttarget and "One Way" is not listed in feats of Player:
				follow the breast descr rule;
				let oldbreast be descr;
				say "You [one of]groan and grab at your chest[or]give a loud moan, shuddering[or]almost tip forward in surprise[or]look down fearfully as sensation builds[at random], [Skin of Player] skin glistening as your [oldbreast] breasts ";
				decrease Breast Size of Player by 1;
				decrease Breast Size of Player by ( Breast Size of Player minus breasttarget ) divided by 3;
				follow the breast descr rule;
				say "become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]!";
		if PronounChoice of Player is "Auto", follow the SetPlayerPronouns rule;


To grow breasts by (x - a number):
	if "Flat Chested" is listed in feats of Player or Breast Size of Player >= 26:
		continue the action;
	follow the breast descr rule;
	let oldbreast be descr;
	say "You [one of]groan and grab at your chest[or]give a loud moan, shuddering[or]almost tip forward in surprise[or]look down fearfully as sensation builds[at random], [Skin of Player] skin glistening as your [oldbreast] breasts ";
	increase Breast Size of Player by a random number from 1 to x;
	if Breast Size of Player > 26, now Breast Size of Player is 26;
	follow the breast descr rule;
	say "become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]!";
	if PronounChoice of Player is "Auto", follow the SetPlayerPronouns rule;

to grow cock by (x - a number):
	if "Female Preferred" is listed in feats of Player:
		continue the action;
	else if "Single Sexed" is listed in feats of Player and player is female:
		say "Strange [one of]erotic tingles[or]cold waves[or]hot flashes[at random] run over your [one of]cunt[sfn][or]puss[yfn][or]vagina[sfn][or]cleft[sfn][at random] as [ittheyf] begin[sfv] to shrink. [ItTheyf] dwindle[sfv] in size before vanishing with a sickening noise as you cease to be female all together.";
		remove womanhood from Player;
	let prevcock be Cock Length of Player;
	increase Cock Length of Player by a random number from 1 to x;
	if "Modest Organs" is listed in feats of Player and Cock Length of Player > 8:
		now Cock Length of Player is 8;
	if prevcock < Cock Length of Player:		[did cock actually grow?]
		follow the cock descr rule;
		say "You can see your [if Cock Count of Player is 1][one of]cock[or]penis[or]shaft[or]maleness[at random][else][one of]cocks[or]penises[or]shafts[or]malenesses[at random][end if] [one of]engorge[or]swell[or]throb[at random] as [if Cock Count of Player > 1]they gain[else]it gains[end if] in length, becoming [descr]!";
	if PronounChoice of Player is "Auto", follow the SetPlayerPronouns rule;

to grow balls by (x - a number):
	if "Female Preferred" is listed in feats of Player or Cock Count of Player is 0:
		continue the action;
	let prevcock be Ball Size of Player;
	increase Ball Size of Player by a random number from 1 to x;
	if "Modest Organs" is listed in feats of Player and Ball Size of Player > 5:
		now Ball Size of Player is 5;
	if prevcock < Ball Size of Player:		[did balls actually grow?]
		follow the cock descr rule;
		say "You can [if Player is internal]feel your internal[else]see your[end if] [one of]testicles[or]balls[or]orbs[or]nuts[at random] [one of]tingle[or]churn audibly[or]throb[at random] as they grow larger, [if Player is internal]body straining to abide this[else]your flesh growing taught with the[end if] expansion, leaving you with a [one of]pair[or]set[at random] of [Ball Size Adjective of Player] balls!";

To Infect:
	choose row MonsterID from the Table of Random Critters;
	if there is no Name entry or ( there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true):
		continue the action;
	if ( scenario is "Researcher" or nanite collector is equipped ) and ( there is no resbypass in row MonsterID of Table of Random Critters or resbypass entry is false ):
		vialchance Name entry;
	if scenario is "Researcher" and researchbypass is 0 and ( there is no resbypass in row MonsterID of the Table of Random Critters or resbypass entry is false ):
		continue the action;
	if NewTypeInfection entry is true and NewTypeInfectionActive is true:
		if debugactive is 1:
			say "DEBUG -> New Style Infection with [Name entry][line break]";
		NewInfectionRoll;
	else:
		if debugactive is 1:
			say "DEBUG -> Old Style Infection with [Name entry][line break]";
		OldInfectionRoll;
	if "Mutable" is listed in feats of Player and a random chance of 1 in 2 succeeds:		[** Repeat of above code for physical change]
		OldInfectionRoll;
	let x be a random number from 1 to 6;
	if "Mighty Mutation" is not listed in feats of Player:
		now x is 0;
	if x is 1:
		if strength of Player is not str entry:
			if strength of Player > str entry and a random chance of 1 in 10 succeeds:
				if "Bestial Power" is not listed in feats of Player:
					if "Mighty Mutation" is listed in feats of Player and a random chance of 1 in 2 succeeds:
						now x is 0; [do nothing placeholder]
					else:
						say "Your muscles feel weaker as the infection spreads through you.";
						decrease strength of Player by 1;
						decrease capacity of Player by 5;
			if strength of Player < str entry:
				say "You feel your muscles swelling with [Name entry] [one of]strength[or]physique[or]power[at random].";
				increase strength of Player by 1;
				increase capacity of Player by 5;
	if x is 2:
		if Intelligence of Player is not Int entry:
			if Intelligence of Player > Int entry and a random chance of 1 in 10 succeeds:
				if "Bestial Power" is not listed in feats of Player:
					if "Mighty Mutation" is listed in feats of Player and a random chance of 1 in 2 succeeds:
						now x is 0; [do nothing placeholder]
					else:
						say "Your head aches as the infection spreads through you.";
						decrease Intelligence of Player by 1;
			if Intelligence of Player < Int entry:
				say "You feel your mind swelling with [Name entry] [one of]Intelligence[or]wit[or]complexity[at random].";
				increase Intelligence of Player by 1;
	if x is 3:
		if Dexterity of Player is not Dex entry:
			if Dexterity of Player > Dex entry and a random chance of 1 in 10 succeeds:
				if "Bestial Power" is not listed in feats of Player:
					if "Mighty Mutation" is listed in feats of Player and a random chance of 1 in 2 succeeds:
						now x is 0; [do nothing placeholder]
					else:
						say "Your coordination feels weaker as the infection spreads through you.";
						decrease Dexterity of Player by 1;
			if Dexterity of Player < Dex entry:
				say "You feel your hand eye coordination swelling with [Name entry] [one of]Dexterity[or]physique[or]accuracy[at random].";
				increase Dexterity of Player by 1;
	if x is 4:
		if Stamina of Player is not Sta entry:
			if Stamina of Player > Sta entry and a random chance of 1 in 10 succeeds:
				if "Bestial Power" is not listed in feats of Player:
					if "Mighty Mutation" is listed in feats of Player and a random chance of 1 in 2 succeeds:
						now x is 0; [do nothing placeholder]
					else:
						say "Your constitution feels weaker as the infection spreads through you.";
						decrease Stamina of Player by 1;
				if remainder after dividing stamina of Player by 2 is 1:
					decrease maxHP of Player by level of Player plus 1;
			if Stamina of Player < Sta entry:
				say "You feel your body toughening with [Name entry] [one of]Stamina[or]physique[or]power[at random].";
				increase Stamina of Player by 1;
				if remainder after dividing stamina of Player by 2 is 0:
					increase maxHP of Player by level of Player plus 1;
	if x is 5:
		if Perception of Player is not Per entry:
			if Perception of Player > Per entry and a random chance of 1 in 10 succeeds:
				if "Bestial Power" is not listed in feats of Player:
					if "Mighty Mutation" is listed in feats of Player and a random chance of 1 in 2 succeeds:
						now x is 0; [do nothing placeholder]
					else:
						say "Your senses dull as the infection spreads through you.";
						decrease Perception of Player by 1;
			if Perception of Player < Per entry:
				say "You feel your senses swelling with [Name entry] [one of]Perception[or]aptitude[or]feral attention[at random].";
				increase Perception of Player by 1;
	if x is 6:
		if Charisma of Player is not Cha entry:
			if Charisma of Player > Cha entry and a random chance of 1 in 10 succeeds:
				if "Bestial Power" is not listed in feats of Player:
					if "Mighty Mutation" is listed in feats of Player and a random chance of 1 in 2 succeeds:
						now x is 0; [do nothing placeholder]
					else:
						say "You feel more isolated as the infection spreads through you.";
						decrease Charisma of Player by 1;
			if Charisma of Player < Cha entry:
				say "You feel your social sense swelling with [Name entry] [one of]Charisma[or]natural charm[or]pheromones[at random].";
				increase Charisma of Player by 1;
	if Libido of Player < libido entry:
[		say "You can't help but [one of]feel your thoughts drifting towards sex[or]notice that the attributes of [Name entry] were very appealing[or]wonder if getting to know these creatures in the biblical sense would be all that bad[at random].";]
		let oldlib be Libido of Player;
		increase Libido of Player by 1;
		increase Libido of Player by ( libido entry minus Libido of Player ) divided by 3;
		if oldlib < 80 and Libido of Player > 79:
			say "You now have trouble thinking of anything but sexual satisfaction![no line break][if Player is male] Your cock[smn] [ismv] fully erect constantly and drool[smv] precum steadily.[no line break][end if][if Player is female] Your cunt[sfn] overflow[sfv] with hot juices that run down your thighs.[no line break][end if][line break]";
		else if oldlib < 50 and Libido of Player > 49:
			say "Your thoughts have sunk to almost constant depravity![no line break][if Player is male] Your cock[smn] remain[smv] perpetually hard and leaking precum.[no line break][end if][if Player is female] Your cunt[sfn] [isfv] hot and dripping juices as your arousal builds.[no line break][end if][line break]";

to OldInfectionRoll: [old infections with less body parts made before 07.05.2019]
	choose row MonsterID from the Table of Random Critters;
	let x be a random number from 1 to 5;
	let bodyparts be { 1, 2, 3, 4, 5 };
	sort bodyparts in random order;
	let found be 0;
	repeat with y running through bodyparts:
		now x is y;
		if y is 1:
			if SkinName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
		if y is 2:
			if FaceName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
		if y is 3:
			if TailName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
		if y is 4:
			if BodyName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
		if y is 5:
			if CockName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
	if found is 0:
		now x is 4;
	if "Resistant" is listed in feats of Player and a random chance of 1 in 3 succeeds:
		now x is 6; [33% chance of no mutation]
		if x is 6:
			say "Your nanites['] programmed resistance to change prevents further mutation.";
			continue the action;
	if "Microwaved" is listed in feats of Player:
		say "WARNING: [Name entry] nanites detected!";
		if x is 1:
			say "Skin infection imminent";
		if x is 2:
			say "Head infection imminent";
		if x is 3:
			say "Posterior infection imminent";
		if x is 4:
			say "Torso infection imminent";
		if x is 5:
			say "Genital infection imminent";
		say ", Allow?";
		if Player consents:
			say "OK.";
		else:
			say "You wave a tiny microwave transmitter over the affected area. Ahhh, all clean!";
			stop the action;
	if x is 1: [skin]
		if SkinName of Player is not Name entry:
			say "Your skin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [skin change entry].";
			now SkinName of Player is Name entry;
			if Species Name entry is not "":
				now SkinSpeciesName of Player is Species Name entry;
			else:
				now SkinSpeciesName of Player is Name entry;
			now Skin of Player is skin entry;
	if x is 2: [face]
		if FaceName of Player is not Name entry:
			say "Your face [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [face change entry].";
			now FaceName of Player is Name entry;
			if Species Name entry is not "":
				now FaceSpeciesName of Player is Species Name entry;
			else:
				now FaceSpeciesName of Player is Name entry;
			now Face of Player is face entry;
			now HeadName of Player is ""; [wiping out the new style parts]
			now HeadSpeciesName of Player is ""; [wiping out the new style parts]
	if x is 3: [tail]
		if TailName of Player is not Name entry:
			say "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [ass change entry].";
			now TailName of Player is Name entry;
			if Species Name entry is not "":
				now TailSpeciesName of Player is Species Name entry;
			else:
				now TailSpeciesName of Player is Name entry;
			now tail of Player is tail entry;
			now AssName of Player is ""; [wiping out the new style parts]
			now AssSpeciesName of Player is ""; [wiping out the new style parts]
	if x is 4: [body]
		follow the breast change rule;
		if BodyName of Player is not Name entry:
			say "Your [one of][bodytype of Player] [or][bodydesc of Player] [or][bodydesc of Player] [or][bodytype of Player] [or][at random]body [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [body change entry].";
			now BodyName of Player is Name entry;
			if Species Name entry is not "":
				now BodySpeciesName of Player is Species Name entry;
			else:
				now BodySpeciesName of Player is Name entry;
			now Body of Player is body entry;
			now TorsoName of Player is ""; [wiping out the new style parts]
			now TorsoSpeciesName of Player is ""; [wiping out the new style parts]
			now BackName of Player is ""; [wiping out the new style parts]
			now BackSpeciesName of Player is ""; [wiping out the new style parts]
			now LegsName of Player is ""; [wiping out the new style parts]
			now LegsSpeciesName of Player is ""; [wiping out the new style parts]
			now ArmsName of Player is ""; [wiping out the new style parts]
			now ArmsSpeciesName of Player is ""; [wiping out the new style parts]
		attributeinfect; [sets the new attributes]
		follow the sex change rule;
		say "[line break]";
	if x is 5: [genitals]
		follow the sex change rule;
		if CockName of Player is not Name entry:
			if Player is male, say "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [cock change entry].";
			now CockName of Player is Name entry;
			if Species Name entry is not "":
				now CockSpeciesName of Player is Species Name entry;
			else:
				now CockSpeciesName of Player is Name entry;
			now Cock of Player is cock entry;
			now Cock Description of Player is ""; [wiping out the new style parts]
			now Cunt Description of Player is ""; [wiping out the new style parts]
			if Name entry is listed in infections of InternalCockList and internalbypass is true:
				say "[italic type]...After some time, it appears that your balls re-emerge, in spite of this strain's normally internal anatomy.[roman type][line break]";

to NewInfectionRoll:
	choose row MonsterID from the Table of Random Critters;
	let MonsterName be name entry;
	choose a row with name of MonsterName in the Table of New Infection Parts;
	let x be 0;
	let bodyparts be { 1, 2, 3, 4, 5, 6, 7, 8, 9 };
	sort bodyparts in random order;
	let found be 0;
	repeat with y running through bodyparts:
		now x is y;
		if y is 1:
			if HeadName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
		else if y is 2:
			if TorsoName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
		else if y is 3:
			if BackName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
		else if y is 4:
			if ArmsName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
		else if y is 5:
			if LegsName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
		else if y is 6:
			if AssName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
		else if y is 7:
			if TailName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
		else if y is 8:
			if CockName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
		else if y is 9:
			if CuntName of Player is Name entry:
				next;
			else:
				now found is 1;
				break;
	if found is 0:
		now x is 2;
	if "Resistant" is listed in feats of Player and a random chance of 1 in 3 succeeds:
		now x is 10; [33% chance of no mutation]
		if x is 10:
			say "Your nanites['] programmed resistance to change prevents further mutation.";
			continue the action;
	if "Microwaved" is listed in feats of Player:
		say "WARNING: [Name entry] nanites detected!";
		if x is:
			-- 1:
				say "Head infection imminent";
			-- 2:
				say "Torso infection imminent";
			-- 3:
				say "Back infection imminent";
			-- 4:
				say "Arms infection imminent";
			-- 5:
				say "Legs infection imminent";
			-- 6:
				say "Ass infection imminent";
			-- 7:
				say "Tail infection imminent";
			-- 8:
				say "Masculine genital infection imminent";
			-- 9:
				say "Feminine genital infection imminent";
		say ", Allow?";
		if Player consents:
			say "OK.";
		else:
			say "You wave a tiny microwave transmitter over the affected area. Ahhh, all clean!";
			stop the action;
	if x is 1: [head]
		if HeadName of Player is not Name entry:
			say "Your [Head Adjective of Player] head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Head Change entry].";
			now HeadName of Player is Name entry;
			if Species Name entry is not "":
				now HeadSpeciesName of Player is Species Name entry;
			else:
				now HeadSpeciesName of Player is Name entry;
			now Head Description of Player is Head Description entry;
			now Head Adjective of Player is Head Adjective entry;
			now Head Skin Adjective of Player is Head Skin Adjective entry;
			now Head Color of Player is Head Color entry;
			now Head Adornments of Player is Head Adornments entry;
			now Eye Adjective of Player is Eye Adjective entry;
			now Mouth Length of Player is Mouth Length entry;
			now Mouth Circumference of Player is Mouth Circumference entry;
			now Tongue Adjective of Player is Tongue Adjective entry;
			now Tongue Color of Player is Tongue Color entry;
			now Tongue Length of Player is Tongue Length entry;
			if Player is conformist: [full change]
				now Eye Color of Player is Eye Color entry;
				now Hair Length of Player is Hair Length entry;
				now Hair Shape of Player is Hair Shape entry;
				now Hair Style of Player is Hair Style entry;
				now Beard Style of Player is Beard Style entry;
				now Hair Color of Player is Hair Color entry;
		[setting the old parts too, as old infections will compare to these]
		if FaceName of Player is not Name entry:
			choose row MonsterID from the Table of Random Critters;
			now FaceName of Player is Name entry;
			if Species Name entry is not "":
				now FaceSpeciesName of Player is Species Name entry;
			else:
				now FaceSpeciesName of Player is Name entry;
			now Face of Player is face entry;
	else if x is 2: [Torso]
		follow the breast change rule;
		if TorsoName of Player is not Name entry:
			say "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry].";
			now TorsoName of Player is Name entry;
			if Species Name entry is not "":
				now TorsoSpeciesName of Player is Species Name entry;
			else:
				now TorsoSpeciesName of Player is Name entry;
			now Torso Description of Player is Torso Description entry;
			now Torso Adjective of Player is Torso Adjective entry;
			now Torso Adornments of Player is Torso Adornments entry;
			now Torso Skin Adjective of Player is Torso Skin Adjective entry;
			now Torso Color of Player is Torso Color entry;
			now Torso Pattern of Player is Torso Pattern entry;
			now Body Hair Length of Player is Body Hair Length entry;
			now Breast Adjective of Player is Breast Adjective entry;
			now Nipple Color of Player is Nipple Color entry;
			now Nipple Shape of Player is Nipple Shape entry;
			if Player is conformist: [full change]
				now Body Weight of Player is Body Weight entry;
				now Body Definition of Player is Body Definition entry;
				now Androginity of Player is Androginity entry;
		attributeinfect; [sets the new attributes]
		follow the sex change rule;
		say "[line break]";
		[setting the old parts too, as old infections will compare to these]
		if BodyName of Player is not Name Entry:
			choose row MonsterID from the Table of Random Critters;
			now BodyName of Player is Name entry;
			if Species Name entry is not "":
				now BodySpeciesName of Player is Species Name entry;
			else:
				now BodySpeciesName of Player is Name entry;
			now Body of Player is body entry;
		if SkinName of Player is not Name Entry:
			choose row MonsterID from the Table of Random Critters;
			now SkinName of Player is Name entry;
			if Species Name entry is not "":
				now SkinSpeciesName of Player is Species Name entry;
			else:
				now SkinSpeciesName of Player is Name entry;
			now Skin of Player is skin entry;
	else if x is 3: [Back]
		if BackName of Player is not Name entry:
			if Back Adornments entry is not "": [no adornments, no message]
				say "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry].";
			now Back Adornments of Player is Back Adornments entry;
			now BackName of Player is Name entry;
			if Species Name entry is not "":
				now BackSpeciesName of Player is Species Name entry;
			else:
				now BackSpeciesName of Player is Name entry;
			now Back Skin Adjective of Player is Back Skin Adjective entry;
			now Back Color of Player is Back Color entry;
		[setting the old parts too, as old infections will compare to these]
		if SkinName of Player is not Name Entry:
			choose row MonsterID from the Table of Random Critters;
			now SkinName of Player is Name entry;
			if Species Name entry is not "":
				now SkinSpeciesName of Player is Species Name entry;
			else:
				now SkinSpeciesName of Player is Name entry;
			now Skin of Player is skin entry;
	else if x is 4: [Arms]
		if ArmsName of Player is not Name entry:
			say "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry].";
			now ArmsName of Player is Name entry;
			if Species Name entry is not "":
				now ArmsSpeciesName of Player is Species Name entry;
			else:
				now ArmsSpeciesName of Player is Name entry;
			now Arms Description of Player is Arms Description entry;
			now Arms Skin Adjective of Player is Arms Skin Adjective entry;
			now Arms Color of Player is Arms Color entry;
		[setting the old parts too, as old infections will compare to these]
		if SkinName of Player is not Name Entry:
			choose row MonsterID from the Table of Random Critters;
			now SkinName of Player is Name entry;
			if Species Name entry is not "":
				now SkinSpeciesName of Player is Species Name entry;
			else:
				now SkinSpeciesName of Player is Name entry;
			now Skin of Player is skin entry;
	else if x is 5: [Legs]
		if LegsName of Player is not Name entry:
			say "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry].";
			now LegsName of Player is Name entry;
			if Species Name entry is not "":
				now LegsSpeciesName of Player is Species Name entry;
			else:
				now LegsSpeciesName of Player is Name entry;
			now Legs Description of Player is Legs Description entry;
			now Legs Skin Adjective of Player is Legs Skin Adjective entry;
			now Legs Color of Player is Legs Color entry;
			now Locomotion of Player is Locomotion entry;
		[setting the old parts too, as old infections will compare to these]
		if SkinName of Player is not Name Entry:
			choose row MonsterID from the Table of Random Critters;
			now SkinName of Player is Name entry;
			if Species Name entry is not "":
				now SkinSpeciesName of Player is Species Name entry;
			else:
				now SkinSpeciesName of Player is Name entry;
			now Skin of Player is skin entry;
	else if x is 6: [Ass]
		if AssName of Player is not Name entry:
			say "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry].";
			now AssName of Player is Name entry;
			if Species Name entry is not "":
				now AssSpeciesName of Player is Species Name entry;
			else:
				now AssSpeciesName of Player is Name entry;
			now Ass Description of Player is Ass Description entry;
			now Ass Skin Adjective of Player is Ass Skin Adjective entry;
			now Ass Color of Player is Ass Color entry;
			now Ass Width of Player is Ass Width entry;
			now Asshole Color of Player is Asshole Color entry;
			now Asshole Depth of Player is Asshole Depth entry;
			if Player is conformist:
				now Asshole Tightness of Player is Asshole Tightness entry;
				say "Your asshole quivers as it becomes [Asshole Tightness Adjective of Player].";
		[setting the old parts too, as old infections will compare to these]
		if SkinName of Player is not Name Entry:
			choose row MonsterID from the Table of Random Critters;
			now SkinName of Player is Name entry;
			if Species Name entry is not "":
				now SkinSpeciesName of Player is Species Name entry;
			else:
				now SkinSpeciesName of Player is Name entry;
			now Skin of Player is skin entry;
	else if x is 7: [Tail]
		if TailName of Player is not Name entry:
			if Tail Change entry is not "": [no tail, no message]
				say "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if Player is HasTail]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if].";
			now TailName of Player is Name entry;
			if Species Name entry is not "":
				now TailSpeciesName of Player is Species Name entry;
			else:
				now TailSpeciesName of Player is Name entry;
			now Tail Description of Player is Tail Description entry;
			now Tail Skin Adjective of Player is Tail Skin Adjective entry;
			now Tail Color of Player is Tail Color entry;
			[setting the old parts too, as old infections will compare to these]
			choose row MonsterID from the Table of Random Critters;
			now tail of Player is tail entry;
	else if x is 8:
		follow the sex change rule;
		if CockName of Player is not Name entry:
			if Player is male, say "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [cock change entry].";
			now CockName of Player is Name entry;
			if Species Name entry is not "":
				now CockSpeciesName of Player is Species Name entry;
			else:
				now CockSpeciesName of Player is Name entry;
			now Cock Description of Player is Cock Description entry;
			now Cock Adjective of Player is Cock Adjective entry;
			now Cock Color of Player is Cock Color entry;
			now Ball Count of Player is Ball Count entry;
			[setting the old parts too, as old infections will compare to these]
			choose row MonsterID from the Table of Random Critters;
			now Cock of Player is Cock Adjective entry;
			if Name entry is listed in infections of InternalCockList and internalbypass is true:
				say "[italic type]...After some time, it appears that your balls re-emerge, in spite of this strain's normally internal anatomy.[roman type][line break]";
	else if x is 9:
		follow the sex change rule;
		if Cuntname of Player is not Name entry:
			if Player is female, say "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry].";
			now CuntName of Player is Name entry;
			if Species Name entry is not "":
				now CuntSpeciesName of Player is Species Name entry;
			else:
				now CuntSpeciesName of Player is Name entry;
			now Cunt Description of Player is Cunt Description entry;
			now Cunt Adjective of Player is Cunt Adjective entry;
			now Cunt Color of Player is Cunt Color entry;
			now Clit Size of Player is Clit Size entry;

to attributeinfect:
	attributeinfect silence state is 0;

to attributeinfect silently:
	attributeinfect silence state is 1;

to attributeinfect silence state is ( Silence - a number ): [sets the player values from the new attributes]
	choose row MonsterID from the Table of Random Critters;
	if BodyName of Player is listed in infections of TaurList or BodyName of Player is listed in infections of NoLegList:
		repeat with z running through equipped equipment:
			if taur-compatible of z is false:
				if Silence is 0:
					say "     [bold type]Sadly, the [z] [if plural of z is true]are incompatible with your new body type, so you can do nothing but take them off[else]is incompatible with your new body type, so you can do nothing but take it off[end if].[roman type][line break]";
				now z is not equipped;
	if there is a scale in row MonsterID of the Table of Random Critters:
		if scalevalue of Player is not scale entry:
			now scalevalue of Player is scale entry;
			repeat with z running through equipped equipment:
				if size of z > 0: [size restricted equipment]
					if (scalevalue of Player - size of z > 1):
						if Silence is 0:
							say "     [bold type]You quickly rip your [z] off your body before [if plural of z is true]they are destroyed when you grow larger than they could support[else]it is destroyed when you grow larger than it could support[end if].[roman type][line break]";
						now z is not equipped;
					else if (scalevalue of Player - size of z is 1):
						if Silence is 0:
							say "     [bold type]Your [z] stretches a bit as it is forced to conform to a larger body.[roman type][line break]";
					else if (scalevalue of Player - size of z < -1):
						if Silence is 0:
							say "     [bold type]As you shrink, [z] becomes far too big to fit you. You have little choice but to take [if plural of z is true]them[else]it[end if] off.[roman type][line break]";
						now z is not equipped;
					else if (scalevalue of Player - size of z is -1):
						if Silence is 0:
							say "     [bold type]Your [z] hangs fairly on your now smaller frame.[roman type][line break]";
	else:
		now scalevalue of Player is 3;
	if there is a body descriptor in row MonsterID of the Table of Random Critters:
		now bodydesc of Player is body descriptor entry;
	else:
		now bodydesc of Player is Name entry;
	if there is a type in row MonsterID of the Table of Random Critters:
		now bodytype of Player is type entry;
	else:
		now bodytype of Player is Name entry;
	if DayCycle entry is 2:
		now SleepRhythm of Player is 2; [night-preferred]
	if DayCycle entry is 1:
		now SleepRhythm of Player is 1; [day-preferred]
	else:
		now SleepRhythm of Player is 0; [standard]

To Vialchance (x - a text):
	choose row MonsterID from Table of Random Critters;
	if researchbypass is 1, continue the action;
	if there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true, continue the action;
	if there is a resbypass in row MonsterID of Table of Random Critters and resbypass entry is true, continue the action;
	if scenario is "Researcher" or nanite collector is equipped:
		let vialcollectible be 10 + ( 2 * intelligence of Player ) + ( level of Player / 2 );
		if nanitemeter is 1:
			decrease vialcollectible by 10;
			if vialcollectible > 65, now vialcollectible is 65;
		else if nanitemeter is 3:
			increase vialcollectible by 10;
			if vialcollectible > 75, now vialcollectible is 75;
		else:
			if vialcollectible > 70, now vialcollectible is 70;
		let vcoll be 0;
		if a random number between 1 and 100 <= vialcollectible:
			now vcoll is 1;
		else if "Expert Researcher" is listed in feats of Player and a random number between 1 and 100 <= vialcollectible:
			now vcoll is 1;
		if vcoll is 1:
			let VialsOwned be 0;
			repeat with z running through vials of Player:
				if z is x, increase VialsOwned by 1;
			if VialsOwned > 14:
				say "You contemplate taking some more [special-style-1][x][roman type] nanite samples, but then decide against it as you already have plenty of those.";
			else:
				say "You manage to extract a vial of [special-style-1][x][roman type] nanites for study and use.";
				add x to vials of Player;
			now vcoll is 0;


predestiny is a number that varies.[@Tag:NotSaved] [use unknown]

calcnumber is a number that varies.[@Tag:NotSaved]

To get a number:
	get typed command as playerinput;
	numberfy playerinput;

to numberfy (x - a snippet):
	change the text of the player's command to x;
	if the player's command matches "[number]":
		now calcnumber is the number understood;
	else:
		now calcnumber is 0;

keychar is a text that varies.

To translate (k - a number):
	if k is 13 or k is -6:
		now keychar is "return";
	else if k is 31 or k is 32:
		now keychar is " ";
	else if k is 48:
		now keychar is "0";
	else if k is 49:
		now keychar is "1";
	else if k is 50:
		now keychar is "2";
	else if k is 51:
		now keychar is "3";
	else if k is 52:
		now keychar is "4";
	else if k is 53:
		now keychar is "5";
	else if k is 54:
		now keychar is "6";
	else if k is 55:
		now keychar is "7";
	else if k is 56:
		now keychar is "8";
	else if k is 57:
		now keychar is "9";
	else if k is 65 or k is 97:
		now keychar is "a";
	else if k is 66 or k is 98:
		now keychar is "b";
	else if k is 67 or k is 99:
		now keychar is "c";
	else if k is 68 or k is 100:
		now keychar is "D";
	else if k is 69 or k is 101:
		now keychar is "E";
	else if k is 70 or k is 102:
		now keychar is "F";
	else if k is 71 or k is 103:
		now keychar is "G";
	else if k is 72 or k is 104:
		now keychar is "H";
	else if k is 73 or k is 105:
		now keychar is "I";
	else if k is 74 or k is 106:
		now keychar is "J";
	else if k is 75 or k is 107:
		now keychar is "K";
	else if k is 76 or k is 108:
		now keychar is "L";
	else if k is 77 or k is 109:
		now keychar is "M";
	else if k is 78 or k is 110:
		now keychar is "N";
	else if k is 79 or k is 111:
		now keychar is "O";
	else if k is 80 or k is 112:
		now keychar is "P";
	else if k is 81 or k is 113:
		now keychar is "Q";
	else if k is 82 or k is 114:
		now keychar is "R";
	else if k is 83 or k is 115:
		now keychar is "S";
	else if k is 84 or k is 116:
		now keychar is "T";
	else if k is 85 or k is 117:
		now keychar is "U";
	else if k is 86 or k is 118:
		now keychar is "V";
	else if k is 87 or k is 119:
		now keychar is "W";
	else if k is 88 or k is 120:
		now keychar is "X";
	else if k is 89 or k is 121:
		now keychar is "Y";
	else if k is 90 or k is 122:
		now keychar is "Z";
	else:
		now keychar is "INVALID";


to Pet level up (companion - a pet):
	if companionList of Player is empty:
		increase score by 0;
	else:
		increase level of companion by 1;
		decrease XP of companion by ( level of companion minus 1 ) times 10;
		if "Good Teacher" is listed in feats of Player:
			increase XP of companion by ( level of companion minus 1 ) times 4;
		say "[companion] has gained level [level of companion]! Congratulations!";
		if remainder after dividing level of companion by 3 is 0:
			increase weapon damage of companion by 1;
		if remainder after dividing level of companion by 5 is 0:
			increase dexterity of companion by 1;

To level up:
	increase level of Player by 1;
	decrease XP of Player by level of Player times 10;
	if "Fast Learner" is listed in feats of Player:
		increase XP of Player by ( level of Player times 2 );
	say "You have gained level [level of Player]! Congratulations!";
	if remainder after dividing level of Player by 2 is 0:
		say "Current stats:[line break]";
		say "Strength: [strength of Player], Dexterity: [dexterity of Player], Stamina: [stamina of Player], Charisma: [Charisma of Player], Intelligence: [intelligence of Player], Perception: [perception of Player].";
		say "Pick a stat to increase.";
		say "[link]1 - Strength[as]1[end link][line break]";
		say "[link]2 - Dexterity[as]2[end link][line break]";
		say "[link]3 - Stamina[as]3[end link][line break]";
		say "[link]4 - Charisma[as]4[end link][line break]";
		say "[link]5 - Intelligence[as]5[end link][line break]";
		say "[link]6 - Perception[as]6[end link][line break]";
		say "[link]7 - Random[as]7[end link][line break]";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 7:
			say "Choice? (1-7)>[run paragraph on]";
			get a number;
		if calcnumber is 7:
			now calcnumber is a random number between 1 and 6;
		if calcnumber is 1:
			increase strength of Player by 1;
			increase capacity of Player by 5;
			say "Your strength grows.";
		else if calcnumber is 2:
			increase dexterity of Player by 1;
			say "Your dexterity grows.";
		else if calcnumber is 3:
			increase Stamina of Player by 1;
			say "Your stamina grows.";
		else if calcnumber is 4:
			increase charisma of Player by 1;
			say "Your charisma grows.";
		else if calcnumber is 5:
			increase intelligence of Player by 1;
			say "Your intelligence grows.";
		else if calcnumber is 6:
			increase perception of Player by 1;
			say "Your perception grows.";
	else:
		increase ssstash by 1;
	increase maxHP of Player by ( stamina of Player minus 10 ) divided by 2;
	increase maxHP of Player by 2;
	now HP of Player is maxHP of Player;
	if the remainder after dividing Level of Player by 5 is 0 and "Ultimatum" is not listed in feats of Player:
		funfeatget;
	increase score by Level of Player times Level of Player;

[ Fight and challenge moved to Core Mechanics/Fighting.i7x]

Playing on is an action applying to nothing.
understand "play on" as playing on.

carry out playing on:
	now playon is 1;
	say "You are now in extended play mode. The rescue will never come.";

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

Punying is an action applying to nothing.
understand "Puny" as punying.

carry out punying:
	now dexterity of Player is 1;
	now stamina of Player is 1;
	now perception of Player is 18;
	say "You feel puny, but perceptive.";

Resting is an action applying to nothing.
understand "Rest" as resting.
roughing is a truth state that varies. roughing is usually false.

check resting:
	now roughing is false;
	if caffeinehigh of Player > 0:
		say "You try to settle down to rest, but you are filled with manic, hyperactive energy and unable to rest. Your body just won't settle down and any time to try to relax, you find yourself only thinking of going out and looking for more soda to drink.";
		stop the action;
	if location of Player is Palomino or location of Player is Private Booths:
		say "Why are you even trying to sleep here? Everyone's partying like it's the end of the world.";
		stop the action;
	if cot is owned:
		say "You pull out your cot and lay it out before resting for a while.";
	else if cot is present:
		say "You rest on the cot.";
	else if the player is in the bunker:
		say "You rest on one of the cots available.";
	else if the player is in Slave Cell 1 or player is in Slave Cell 2:
		say "You rest on the bed in the back of the cell.";
	else if silk hammock is owned or silk hammock is present:
		say "You set up your silken hammock at the next appropriate spot and lie in it, resting for a while.";
	else if sleeping bag is owned or sleeping bag is present:
		say "You roll out the sleeping bag in an appropriate spot and lie in it, resting for a while.";
	else if "Roughing It" is listed in feats of Player:
		say "You hunker down somewhere secluded for a quick nap.";
		now roughing is true;
	else:
		say "You have nothing to rest on.";
		stop the action;
	if rubber tigress is not listed in companionList of Player:
		if ( there is a dangerous door in the location of the player or the location of Player is fasttravel or the earea of location of Player is not "void") and location of Player is not sleepsafe:
			now battleground is "Outside"; [standard setting]
			if the earea of location of Player is not "void":
				now battleground is the earea of location of Player;
			else:
				let l be a random visible dangerous door;
				if l is not nothing, now battleground is the marea of l;
			say "...";
			attempttowait;
			let intodds be 3;
			if "Bad Luck" is listed in feats of Player, increase intodds by 1;
			if a random chance of intodds in 20 succeeds:
				say "...but your nap is interrupted by the arrival of a creature.";
				fight;
				stop the action;
			else:
				say "...and you thankfully complete your nap in peace.";
		else if roughing is true:
			say "You are thankfully able to complete your nap in peace.";

to Rest:
	let num1 be maxHP of Player divided by 4;
	let num2 be ( ( Stamina of Player * 3 ) / 2 ) + Level of Player;
	if cot is owned or cot is present or the player is in Bunker or silk hammock is owned or silk hammock is present:
		if num1 >= num2, increase HP of Player by num1; [best value chosen]
		if num2 > num1, increase HP of Player by num2;
	else if "Roughing It" is listed in feats of Player:
		increase HP of Player by ( num1 + num2 ) / 2; [average value chosen]
	else: [accessible only when events induce resting]
		if num1 <= num2, increase HP of Player by num1; [lowest value chosen]
		if num2 < num1, increase HP of Player by num2;
	if Terminatorsleep is false:
		if Sleeptimercount >= 10: [Player is on the brink of collapse, sleeping for just one turn isn't going to fix them]
			if silk hammock is owned or silk hammock is present:
				decrease Sleeptimercount by 6;
			else:
				decrease Sleeptimercount by 5;
		else if Sleeptimercount <= 9: [Player is tired, and will wake up refreshed with the well rested feat.]
			if silk hammock is owned or silk hammock is present:
				now Sleeptimercount is -2;
			else: [Turnpass rule fires immediately after this and adds 1 to each, so it becomes -1 and 0.]
				now Sleeptimercount is -1;
			if "Well Rested" is not listed in feats of Player:
				FeatGain "Well Rested";
				say "     Well Rested - All stats increased by 2!";
				StatChange "Strength" by 2 silently;
				StatChange "Dexterity" by 2 silently;
				StatChange "Stamina" by 2 silently;
				StatChange "Charisma" by 2 silently;
				StatChange "Intelligence" by 2 silently;
				StatChange "Perception" by 2 silently;
			now WellRestedTimer is 6;

to say Sleepmessage:
	if Terminatorsleep is true or SleepTimerCount < 5:
		say "Rested";
	else if SleepTimerCount < 8:
		say "[link]Spent[as]rest[end link]";
	else if SleepTimerCount < 11:
		say "[link]Tired[as]rest[end link]";
	else:
		say "[link]Beat[as]rest[end link]";

carry out resting:
	if rubber tigress is listed in companionList of Player:
		artemisnap;
		if nohealmode is true:
			increase HP of Player by (level of rubber tigress) / 3; [grants additional rest]
		else:
			increase HP of Player by (level of rubber tigress) / 2; [grants additional rest]
	Rest;
	follow the turnpass rule;
	follow the turnpass rule;
	follow the player injury rule;
	say "You are [descr]([HP of Player]/[maxHP of Player]).";

This is the explore rule:
	let something be 0;
	let roomfirst be 1;
	let the bonus be (( Perception of Player minus 10 ) divided by 2);
	if "Curious" is listed in feats of Player, increase bonus by 3;
	if blindmode is true, increase bonus by 3; [increased odds of finding something interesting]
	if a random chance of 2 in 5 succeeds, now roomfirst is 0; [Will it check for a room or situation first?]
	let MonsterAttraction be 0;
	if "Stealthy" is listed in feats of Player, decrease MonsterAttraction by 2;
	if "Bad Luck" is listed in feats of Player, increase MonsterAttraction by 2;
	[Initial 20% chance of a random encounter; 10% for Stealthy people, 30% for those with Bad Luck]
	if something is 0 and a random chance of (4 + MonsterAttraction) in 20 succeeds and battleground is not "void" and battleground is not "Smith Haven":
		if there is a area of Battleground in the Table of Random Critters:
			say "Setting out to explore your surroundings, you encounter another inhabitant of the city.";
			now something is 1;
			Fight;
			[extra fight for hardcore players]
			if ( ( hardmode is true and a random chance of 1 in 8 succeeds ) or ( "Bad Luck" is listed in feats of Player and a random chance of 1 in 8 succeeds ) ) and battleground is not "void":
				say "As you are trying to recover from your last encounter, another roving creature finds you.";
				Fight;
	[Chance for new locations - increased by perception]
	if something is 0 and a random number from 1 to 20 < ( bonus + 7 ) and there is an unknown fasttravel room and battleground is "Outside" and roomfirst is 1:
		let L be a random unknown fasttravel not private room;
		if L is not nothing:
			randomfightchance;
			say "[one of]After wandering aimlessly for hours, you happen across[or]Following your faint memories, you manage to find[or]Following movement, you end up at[or]Going off towards a previously unexplored part of the city, you find yourself at[at random] [bold type][L][roman type].";
			move player to L;
			now something is 1;
			plot;
			now battleground is "void";
			wait for any key;
	[Chance for new events - increased by perception]
	if something is 0 and a random number from 1 to 20 < ( bonus + 8 ) and there is an active unresolved situation:
		let L be a random available situation;
		If L is not nothing:
			if battleground is "Smith Haven":
				say "Wandering around a bit, you find [bold type][L][roman type].";
			else:
				say "[one of]After wandering aimlessly for hours, you happen across[or]Following your faint memories, you manage to find[or]Following movement, you end up at[at random] [bold type][L][roman type].";
			now something is 1;
			now inasituation is true;
			say "[ResolveFunction of L]";
			now inasituation is false;
			now battleground is "void";
			wait for any key;
	now inasituation is false;
	[Chance for new locations - increased by perception]
	if something is 0 and a random number from 1 to 20 < ( bonus + 7 ) and there is an unknown fasttravel room and battleground is "Outside" and roomfirst is 0:
		let L be a random unknown fasttravel not private room;
		if L is not nothing:
			randomfightchance;
			say "[one of]After wandering aimlessly for hours, you happen across[or]Following your faint memories, you manage to find[or]Following movement, you end up at[or]Going off towards a previously unexplored part of the city, you find yourself at[at random] [bold type][L][roman type].";
			move player to L;
			now something is 1;
			plot;
			now battleground is "void";
			wait for any key;
	if something is 0:
		if battleground is "Smith Haven":
			say "Wandering around a bit, stroll through the Smith Haven Mall, but don't find anything that really draws your attention right now.";
		else:
			say "You decide to go exploring, but after three long hours of wandering the ruined, monster infested city you return to the relative safety of the [location of Player].";
	follow the turnpass rule;
	rule succeeds.

exploring is an action applying to nothing.
understand "explore" as exploring

check exploring:
	if location of Player is not fasttravel and earea of location of Player is "void", say "You cannot explore from here." instead;

carry out exploring:
	if there is a dangerous door in the Location of Player:
		let l be a random visible dangerous door;
		if l is not nothing, now battleground is the marea of l;
		if l is nothing, now battleground is "Outside"; [***]
	else:
		now battleground is earea of location of Player;
	follow the explore rule;

to randomfightchance:
	let the bonus be (( Perception of Player minus 10 ) divided by 2);
	if "Stealthy" is listed in feats of Player, now bonus is -1;
	if "Curious" is listed in feats of Player, increase bonus by 2;
	if "Bad Luck" is listed in feats of Player, increase bonus by 1;
	if a random number from 1 to 20 < 10 plus bonus and battleground is not "void":
		if there is a area of Battleground in the Table of Random Critters:
			Fight;
			if ( ( hardmode is true and a random chance of 1 in 8 succeeds ) or ( "Bad Luck" is listed in feats of Player and a random chance of 1 in 8 succeeds ) ) and battleground is not "void":
				say "As you are trying to recover from your last encounter, another roving creature finds you.";
				Fight;

restoration is a number that varies.
balloversize is a number that varies.
skipturnblocker is a number that varies.
mpregcount is a number that varies.

postimport rules is a rulebook.

Everyturn rules is a rulebook.

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
	if HP of Player < MaxHP of Player and nohealmode is false:
		increase HP of Player by Stamina of Player divided by 2;
		if carried of First Aid Manual > 0, increase HP of Player by 1;
	if "Regeneration" is listed in feats of Player:
		increase HP of Player by (level of Player divided by 3);
	if "Rapid Healing" is listed in feats of Player:
		increase HP of Player by 2;
[	let yy be 4;
	if "Resistant" is listed in feats of Player, increase yy by 2;
	if "Mutable" is listed in feats of Player, decrease yy by 1;
	now yy is 1; ]
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
		say "You feel a tingling dampness at your groin that soon turns into a wet gush of fluids as your flesh splits open into a brand new pussy. This dripping cunny with sopping with feminine juices from its orgasmic formation.";
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

to say spontaneousorgasm:
	if Player is herm:
		say "     Your groin, overflowing with unsatisfied lustful needs, erupts spontaneously and knocks you to your knees. Your cock[smn] spray[smv] your hot seed across your clothes and the ground while your hot, feminine juices soak your thighs. You leave a [if Ball Size of Player + ( 2 * Cunt Tightness of Player ) < 18]messy splotch[else if Ball Size of Player + ( 2 * Cunt Tightness of Player ) < 25]messy puddle[else]large puddle[end if] of sexual fluids behind from your outburst, feeling only slightly relieved.";
	else if Player is male:
		say "     Your groin, overflowing with unsatisfied lustful needs, erupts spontaneously and knocks you to your knees. Your cock[smn] spray[smv] your hot seed across your clothes and the ground. Your blasted cum leaves a [if Ball Size of Player < 18]messy splotch[else if Ball Size of Player < 25]messy puddle[else]large puddle[end if] of sexual fluids behind from your outburst, feeling only slightly relieved.";
	else if Player is female:
		say "     Your groin, overflowing with unsatisfied lustful needs, erupts spontaneously and knocks you to your knees. Your cunt[sfn] overflow[sfv] with hot, feminine juices that soak your thighs. You leave a [if ( 2 * Cunt Tightness of Player ) < 18]messy splotch[else if ( 2 * Cunt Tightness of Player ) < 25]messy puddle[else]large puddle[end if] of sexual fluids behind from your outburst, feeling only slightly relieved.";
	else:		[neuter]
		say "     Your body, consumed with a lust it is unable to satisfy, drops to its knees and trembles with a painful, aching need. Lacking any other means, you rub over your [bodytype of Player] body until it finally passes, leaving you weak, tired and largely unsatisfied.";
		now HP of Player is ( 3 * HP of Player ) / 4;

This is the monster injury rule:
	choose row MonsterID from the Table of Random Critters;
	let per be ( monsterHP times 100 ) divided by HP entry;
	if per < 10:
		now descr is "[one of]on death's door[or]almost defeated[or]barely mobile[at random]";
	else if per < 40:
		now descr is "[one of]wounded[or]bashed around[or]significantly harmed[at random]";
	else if per < 80:
		now descr is "[one of]scuffed[or]bruised[or]still in the fight[at random]";
	else:
		now descr is "[one of]healthy[or]energetic[or]largely unharmed[at random]";
	rule succeeds;

This is the player injury rule:
	let per be ( HP of Player times 100 ) divided by maxHP of Player;
	if per <= 10:
		now descr is "[if Playerpoison > 0][special-style-1]poisoned[roman type] and [end if][one of]on death's door[or]almost defeated[or]barely mobile[at random]";
	else if per <= 40:
		now descr is "[if Playerpoison > 0][special-style-1]poisoned[roman type] and [end if][one of]wounded[or]bashed around[or]significantly harmed[at random]";
	else if per <= 80:
		now descr is "[one of]scuffed[or]bruised[or]still in the fight[at random][if Playerpoison > 0], but [special-style-1]poisoned[roman type][line break]";
	else:
		now descr is "[one of]healthy[or]energetic[or]largely unharmed[at random][if Playerpoison > 0], but [special-style-1]poisoned[roman type][line break]";
	rule succeeds;

This is the brain descr rule:
	if humanity of Player > 90:
		now descr is "[one of]clean[or]pristine[or]perfectly normal[at random][lusting]";
	else if humanity of Player > 70:
		now descr is "[one of]lightly tainted[or]occasionally plagued with odd instinctual[at random][lusting]";
	else if humanity of Player > 30:
		if FaceName of Player is not "Human":
			now descr is "increasingly [FaceName of Player] perspective[lusting]";
		else if BodyName of Player is not "Human":
			now descr is "increasingly [BodyName of Player] perspective[lusting]";
		else if SkinName of Player is not "Human":
			now descr is "increasingly [SkinName of Player] perspective[lusting]";
		else if CockName of Player is not "Human":
			now descr is "increasingly [CockName of Player] perspective[lusting]";
		else if TailName of Player is not "Human":
			now descr is "increasingly [TailName of Player] perspective[lusting]";
		else:
			now descr is "increasingly corrupted perspective[lusting]";
	else:
		now descr is "almost entirely subsumed[lusting]";
	if Libido of Player < 21, now lusting is " thoughts.";
	if Libido of Player > 80:
		let RandomCreature be a random number from 1 to number of entries in EncounteredEnemies of Player;
		now lusting is " thoughts. You are almost entirely subsumed with a random thought of [one of]fucking[or]being fucked by[at random] a [entry RandomCreature of EncounteredEnemies of Player in lower case] [one of]wildly[or]slowly[or]for hours[or]forever[or]until you pass out[at random], the daydream distracting you for half an hour.";
[
		let mun be a random number from 1 to number of filled rows in Table of Random Critters;
		now lusting is " thoughts. You are almost entirely subsumed with a random thought of [one of]fucking[or]being fucked by[at random] a [name in row MonsterID of the Table of Random Critters] [one of]wildly[or]slowly[or]for hours[or]forever[or]until you pass out[at random], the daydream distracting you for half an hour.";
]
	else if Libido of Player > 40:
		now lusting is " thoughts. You are [one of]distracted by doodling a big breasted monster[or]distracted by doodling a big cocked monster[or]distracted by taking a moment to rub at yourself[at random].";
	else if Libido of Player > 20:
		now lusting is " thoughts. You are riddled with occasionally dirty lapses.";

This is the breast descr rule:
	if Breast Size of Player < 1:
		now descr is "[one of]nonexistent[or]entirely flat[or]manly[at random]";
		now sh-descr is "[one of]nonexistent[or]entirely flat[or]manly[at random]";
	else if Breast Size of Player < 3:
		now descr is "[one of]palmable[or]small[or]dainty[or]slender[or]perky[at random] [character number Breast Size of Player in cupsize] cup";
		now sh-descr is "[one of]palmable[or]small[or]dainty[or]slender[or]perky[at random]";
	else if Breast Size of Player is 3:
		now descr is "[character number Breast Size of Player in cupsize] cup";
		now sh-descr is "[one of]reasonably-sized[or]average[or]moderate[at random]";
	else if Breast Size of Player is 4:
		now descr is "[character number Breast Size of Player in cupsize] cup";
		now sh-descr is "[one of]eye-catching[or]substantive[or]shapely[at random]";
	else if Breast Size of Player < 5:
		now descr is "[character number Breast Size of Player in cupsize] cup";
		now sh-descr is "[one of]average-sized[or]normal-sized[or]healthy-sized[or][character number Breast Size of Player in cupsize] cup[at random]";
	else if Breast Size of Player < 7:
		now descr is "[one of]large[or]jiggling[or]well-shaped[or]plump[at random] [character number Breast Size of Player in cupsize] cup";
		now sh-descr is "[one of]large[or]jiggling[or]well-shaped[or]plump[at random]";
	else if Breast Size of Player < 9:
		now descr is "[one of]massive[or]huge[or]heavy[at random] [character number Breast Size of Player in cupsize] cup";
		now sh-descr is "[one of]massive[or]huge[or]heavy[at random]";
	else if Breast Size of Player < 12:
		now descr is "[one of]enormous[or]giant[or]hulking[or]head-sized[or]basketball-sized[at random] [character number Breast Size of Player in cupsize] cup";
		now sh-descr is "[one of]enormous[or]giant[or]hulking[or]head-sized[or]basketball-sized[at random]";
	else:
		now descr is "[one of]gargantuan[or]beachball-sized[or]mountainous[or]colossal[or]gigantic[at random] [character number Breast Size of Player in cupsize] cup";
		now sh-descr is "[one of]gargantuan[or]beachball-sized[or]mountainous[or]colossal[or]gigantic[at random]";
	now breast size desc of Player is descr;
	now short breast size desc of Player is sh-descr;
	rule succeeds;

This is the cock descr rule:
	if Cock Length of Player < 3:
		now descr is "[one of]tiny[or]very small[or]puny[at random]";
	else if Cock Length of Player < 6:
		now descr is "[one of]smaller than average[or]small[or]below average[at random]";
	else if Cock Length of Player < 8:
		now descr is "[one of]average in size[or]normal-sized[at random]";
	else if Cock Length of Player < 12:
		now descr is "[one of]large[or]sizable[or]well-built[or]longer than average[at random]";
	else if Cock Length of Player is 12:
		now descr is "foot long";
	else if Cock Length of Player < 18:
		now descr is "[one of]huge[or]heavy[or]ponderous[or]massive[or]forearm length[at random]";
	else if Cock Length of Player < 25:
		now descr is "[one of]giant[or]hulking[or]hypertrophied[or]elephantine[or]monstrous[or]towering[at random]";
	else:
		now descr is "[one of]mammoth[or]gigantic[or]colossal[or]titanic[or]third leg[or]devastating[at random]";
	now cock size desc of Player is descr;
	rule succeeds;

to say Balls:
	say "[one of]balls[or]testicles[or]gonads[at random]";

to say cum load size of ( x - a person ):
	if Ball Size of x > 0:
		if Ball Size of x is 1:
			say "[one of]piddling[or]tiny[or]minuscule[or]feeble[or]small[or]meager[at random]";
		else if Ball Size of x is 2:
			say "[one of]average[or]normal-sized[or]fair-sized[or]moderate[or]adequate[or]regular-sized[at random]";
		else if Ball Size of x is 3:
			say "[one of]triple-dose[or]half-cup[or]cupful[or]ample[or]above-average[or]generous[or]sizable[at random]";
		else if Ball Size of x is 4:
			say "[one of]half-liter[or]considerable[or]impressive[or]pint-full[or]copious[or]substantial[or]large[or]abundant[or]plentiful[at random]";
		else if Ball Size of x is 5:
			say "[one of]one-liter[or]flowing[or]heavy[or]quart-sized[or]drenching[or]jumbo[or]whopping[at random]";
		else if Ball Size of x is 6:
			say "[one of]two-liter[or]half-gallon[or]giant[or]huge[or]blasting[or]enormous[or]immense[at random]";
		else if Ball Size of x > 7:
			say "[one of]overflowing[or]bucket-filling[or]excessive[or]gushing[or]massive[at random]";

This is the cunt descr rule:
	if Cunt Depth of Player < 3:
		now descr is "[one of]extremely small[or]puny[at random]";
	else if Cunt Depth of Player < 6:
		now descr is "[one of]smaller than average[or]small[or]below average[at random]";
	else if Cunt Depth of Player < 8:
		now descr is "[one of]average[or]normal-sized[at random]";
	else if Cunt Depth of Player < 12:
		now descr is "[one of]large[or]thick-lipped[or]above average[at random]";
	else if Cunt Depth of Player < 18:
		now descr is "[one of]belly bulgingly huge[or]inhumanly deep[or]forearm length[at random]";
	else if Cunt Depth of Player < 25:
		now descr is "[one of]titanic[or]astonishingly deep[or]elephantine[at random]";
	else:
		now descr is "[one of]cavernous[or]seemingly bottomless[or]canyonlike[at random]";
	now cunt size desc of Player is descr;
	rule succeeds;

looknow is a number that varies.

Afterexamine rules is a rulebook.

instead of examining a person (called x):
	if x is the player:
		follow the self examine rule;
		follow the afterexamine rules;
	else:
		say "[Description of x]";
		if hypernull is 0:
			try linkactioning x;

linkactioning is an action applying to one thing.

understand "linkaction [person]" as linkactioning.

carry out linkactioning:
	linkaction noun;

linkcheck is a person that varies.[@Tag:NotSaved]
The linkaction of a person is usually "Possible Actions: [if number of entries of conversation of linkcheck > 0][link]talk[as]talk [linkcheck][end link], [end if][link]smell[as]smell [linkcheck][end link][PetdismissCheck linkcheck], [link]fuck[as]fuck [linkcheck][end link][line break]";

to say PetdismissCheck (linkcheck - a person):
	if number of entries in companionList of Player is greater than 0:
		let linkname be "";
		now linkname is printed name of linkcheck;
		repeat with companion running through companionList of Player:
			if printed name of companion exactly matches the text linkname, case insensitively:
				say ", [link]dismiss[as]dismiss [linkcheck][end link]";

to linkaction (x - Person):
	now linkcheck is x;
	say "[linkaction of x]";

[NOTE: For characters w/different action options, use a 'instead of linkactioning <name>' clause.]

instead of linkactioning Doctor Matt when HP of Doctor Matt > 0:
	say "Possible Actions: [link]talk[as]talk Doctor Matt[end link], [link]smell[as]smell Doctor Matt[end link], [link]fuck[as]fuck Doctor Matt[end link], [link]volunteer[end link][line break]";


Showstatting is an action applying to nothing.

Understand "stat" as showstatting.
Understand "stats" as showstatting.

carry out showstatting:
	showstats player;

To showstats (x - Person):
	sort Feats of Player;
	sort Traits of Player;
	say "Strength: [strength of x], Dexterity: [dexterity of x], Stamina: [stamina of x], Charisma: [Charisma of x], Intelligence: [intelligence of x], Perception: [perception of x].";
	say "Humanity: [humanity of the x]/100, Morale: [morale of the x], HP: [HP of x]/[maxHP of x] Libido: [Libido of x]/100, Hunger: [hunger of x]/100, Thirst: [thirst of x]/100.";
	let z be ( level of x plus one) times 10;
	if "Fast Learner" is listed in feats of x:
		now z is ( level of x plus one) times 8;
	say "Level: [level of x], XP: [XP of x]/[z]";
	if the number of entries in feats of the x > 0:
		say ", [link]Feats[as]FeatsList[end link][line break]";
	if debugactive is 1:
		say "DEBUG -> Traits: [Traits of Player][line break]";

This is the self examine rule:
	now looknow is 1;
	showstats player;
	if name of Player is not "Player":
		say "Your name is [name of Player] and you ";
	else:
		say "You ";
	if ScaleValue of Player is:
		-- 1:
			say "are quite small, about the size of a housecat.";
		-- 2:
			say "are fairly small, about half as tall as a regular human.";
		-- 3:
			say "are about as big as a regular human.";
		-- 4:
			say "are superhumanly tall.";
		-- 5:
			say "are enormous in size, a lot larger than any regular human ever could be.";
	[ Infection Descriptions Below   ]
	if Player is FullyNewTypeInfected and NewTypeInfectionActive is true: [new infection on player and activated]
		say "Pulling out a small mirror, you check yourself over from head to toe, attempting to make sense of your current form. Your head and face resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance. [if Player is HasBeard]You have a [Hair Color of Player] [Beard Style of Player]. [end if][if Player is HasHeadHair]On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style. [end if]Inspecting your [Mouth Length Adjective of Player] mouth with both the mirror and your digits, you attempt to look past your [Tongue Length of Player] inch long, [Tongue Color of Player], [Tongue Adjective of Player] tongue and into your [Mouth Length Adjective of Player] throat. [if Player is HasHeadAdornments]Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress. [end if][line break]";
	else: [old infection]
		say "Your face is [Face of Player]. ";
	if Player is not FullyNewTypeInfected: [old infection]
		say "Looking at yourself, your body is covered in [Skin of Player] skin. ";
	if Player is FullyNewTypeInfected and NewTypeInfectionActive is true: [new infection on player and activated]
		say "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]. Your [Limbs Adjective of Player] arms are [Arms Description of Player]";
		if Arms Skin Adjective of Player is "":
			say "[if Body Hair Length of Player > 1], covered in [Arms Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Arms Color of Player] skin[end if]";
		say ". [if Player is HasBackAdornments]Your back tickles with the feeling of movement caused by [Back Adornments of Player]. [end if]";
		follow the breast descr rule;
		if Nipple Count of Player > 0:
			if Breast Size of Player is 0:
				say "Finally your attention is brought to your [Pecs Firmness Adjective of Player], [Pecs Size Adjective of Player] pecs. You have [Nipple Count of Player] [Nipple Color of Player], [Nipple Shape of Player] nipples on your [Body Adjective of Player], [Torso Adjective of Player] chest. ";
			else:
				if Nipple Count of Player > 2:
					say "Finally your attention is brought to your cleavage. You have [Nipple Count of Player] breasts on your [Body Adjective of Player], [Torso Adjective of Player] chest. Each one has [Nipple Color of Player], [Nipple Shape of Player] nipples resting at their center. The first pair looks [Breast Adjective of Player] and curves out, making it so you could easily fill a [Breast Size Description of Player]. The second pair is slightly smaller, going down a cup size. ";
				if Nipple Count of Player > 4, say "The rest of your breasts keep going down by around a cup size at least the lower they go. ";
		else:
			say "You have two breasts on your [Torso adjective of Player] chest, curving out making it so you could easily fill a [Breast Size Description of Player]. Each one with a [Nipple Color of Player] [Nipple Shape of Player] resting at their center. ";
		say "[if Player is HasTorsoAdornments]As you continue to inspect yourself, your hand rubs across your lower stomach. You take a moment to feel your [Torso Adornments of Player]. [end if]";
	else: [old infection]
		say "Your body is [Body of Player]. ";
		follow the breast descr rule;
		if Nipple Count of Player > 0:
			if Breast Size of Player is 0:
				say "You have [Nipple Count of Player] nipples on your [Bodydesc of Player] chest. ";
			else:
				if Nipple Count of Player > 2:
					say "You have [Nipple Count of Player] breasts on your [Bodydesc of Player] chest. The first pair looks [descr] and curves out [Breast Size of Player] inch[if Breast Size of Player is not 1]es[end if] from your chest. The second pair curves out [(Breast Size of Player times three) divided by five] inch[if ( Breast Size of Player times three ) divided by 5 is not 1]es[end if] from your chest. ";
					if Nipple Count of Player > 4, say "The rest jostle for space [Breast Size of Player divided by three] inch[if Breast Size of Player divided by 3 is not 1]es[end if] from your belly. ";
				else:
					say "You have two [descr] breasts on your [Bodydesc of Player] chest, curving out [Breast Size of Player] inch[if Breast Size of Player is not 1]es[end if] from your chest. ";
	if Player is FullyNewTypeInfected and NewTypeInfectionActive is true: [new infection on player and activated]
		say "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]";
		if Ass Skin Adjective of Player is "":
			say "[if Body Hair Length of Player > 1], covered in [Ass Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Ass Color of Player] skin[end if]";
		say ". With a single finger you check out your [Asshole Color of Player] hole, finding it to be [Asshole Tightness Adjective of Player]. ";
		say "[if Player is HasTail]Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee. [end if]";
		say "As your inspection goes even lower, you come to the [if Player is bipedal]two [Limbs Adjective of Player] legs supporting you. They are [else if Player is quadrupedal]four [Limbs Adjective of Player] legs supporting you. They are [else if Player is octapedal]eight [Limbs Adjective of Player] legs supporting you. They are [else if Player is serpentine]long slithering tail supporting you. It is [else if Player is sliding]gelatinous mass supporting you. It is [end if][Legs Description of Player]";
		if Legs Skin Adjective of Player is "":
			say "[if Body Hair Length of Player > 1], covered in [Legs Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Legs Color of Player] skin[end if]";
		say ".";
	else: [old infection]
		if tail of Player is empty:
			say "";
		else:
			say "[tail of Player]";
	[Pregnancy Descriptions below]
	if child is not born and gestation of child > 0:
		if gestation of child < 10:
			now looknow is 0;
			say "Your [Torso Adjective of Player] swollen belly looks ready to spill forth life at any moment. ";
			now looknow is 1;
		else if gestation of child < 20:
			say "You have a noticeable bulge, a soft roundness to your belly that speaks of too many nights with a tub of ice cream, or an incoming child. ";
		else if gestation of child < 30:
			say "You feel a soft subtle glow somewhere in your belly. ";
	else if heat enabled is true:
		if inheat is true:
			say "You also feel [if heatlevel is 3]an intense[else]a[end if] need to be on the receiving end of a good, hard fuck because of your presently heated state. ";
		else if heatlevel is 1 and player is impreg_able and CockName of Player is not "Human":
			say "You are thankfully spared some undo sexual yearning because you've prevented your tainted womb from going into heat. ";
		else if heatlevel is 3 and player is impreg_able and CockName of Player is not "Human":
			say "Your tainted womb is not troubling you unduly at the moment, though you're unsure when your next intensified heat may strike you. ";
	if "Angie's Mate" is listed in feats of Player:
		say "Thin lines of healed claw-marks run down your back, marking you as Angie's mate. ";
	if "Boghrim's Mark" is listed in feats of Player:
		say "Two small scars from Boghrim's tusks mark your shoulder, a reminder of the first time the big orc fucked you. ";
	if "Top Dog" is listed in feats of Player:
		say "Your back still bears the scars left by Alexandra's claws during a bout of intense mating, a reminder of your dominance over her and your status as 'Top Dog'. ";
	[ ^^ Infection Descriptions Done ]
	let cocktext be "";
	if Cock Description of Player is not "" and NewTypeInfectionActive is true: [new infection on player and activated] [new parts]
		follow the cock descr rule;
		if Player is male:
			if Cock Count of Player > 1:
				now cocktext is "have [Cock Count of Player] [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [one of]cocks[or]penises[or]shafts[or]manhoods[at random] that [cock description of Player]. They are [if Libido of Player <= 25]only somewhat aroused at the moment[else if Libido of Player <= 50]partially hard and dribbling a little pre[else if Libido of Player <= 75]erect and leaking precum[else]fully erect and drooling precum steadily[end if]. [if Player is internal]Though they are not outwardly apparent, you wager you have[else]Underneath them hangs[end if] [if ball count of Player is 1]a single[else if ball count of Player is 2][one of]a pair of[or]a set of[at random][else if ball count of Player is 4]a grouping of four[end if] [Ball Size Adjective of Player] [if Player is internal and ball count of Player > 1]internal balls. [else if Player is internal]internal ball. [else][ball description of Player]. [end if]";
			else:
				now cocktext is "have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]. It is [if Libido of Player <= 25]only somewhat aroused at the moment[else if Libido of Player <= 50]partially hard and dribbling a little pre[else if Libido of Player <= 75]erect and leaking precum[else]fully erect and drooling precum steadily[end if]. [if Player is internal]Though they are not outwardly apparent, you wager you have[else]Underneath it hangs[end if] [if Ball Count of Player is 1]a single[else if Ball Count of Player is 2][one of]a pair of[or]a set of[at random][else if Ball Count of Player is 4]a grouping of four[end if] [Ball Size Adjective of Player] [if Player is internal and ball count of Player > 1]internal balls. [else if Player is internal]internal ball. [else][ball description of Player]. [end if]";
	else: [old style]
		follow the cock descr rule;
		if player is male:
			if Cock Count of Player > 1:
				now cocktext is "have [Cock Count of Player] [Cock Size Desc of Player] [Cock Length of Player]-inch-long [Cock of Player] [one of]cocks[or]penises[or]shafts[or]manhoods[at random]. They are [if Libido of Player <= 25]only somewhat aroused at the moment[else if Libido of Player <= 50]partially hard and dribbling a little pre[else if Libido of Player <= 75]erect and leaking precum[else]fully erect and drooling precum steadily[end if]. [if Player is internal]Though they are not outwardly apparent, you wager you have[else]Underneath them hangs[end if] [one of]a pair of[or]a set of[at random] [Ball Size Adjective of Player] balls. ";
			else:
				now cocktext is "have a [Cock Size Desc of Player] [Cock Length of Player]-inch-long [Cock of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random]. It is [if Libido of Player <= 25]only somewhat aroused at the moment[else if Libido of Player <= 50]partially hard and dribbling a little pre[else if Libido of Player <= 75]erect and leaking precum[else]fully erect and drooling precum steadily[end if]. [if Player is internal]Though they are not outwardly apparent, you wager you have[else]Underneath it hangs[end if] [one of]a pair of[or]a set of[at random] [Ball Size Adjective of Player] balls. ";
	let cunttext be "";
	if Cunt Description of Player is not "" and NewTypeInfectionActive is true: [new infection on player and activated]
		follow the cunt descr rule;
		if Player is female:
			if Cunt Count of Player > 1:
				now cunttext is "have [Cunt Count of Player] [Cunt Tightness Adjective of Player] [one of]cunts[or]pussies[or]vaginas[at random] that are [Cunt Description of Player]. Further probing shows them to be [Cunt Depth of Player] inches deep and [Cunt Tightness Adjective of Player]. They are [if Libido of Player <= 25]a little damp at the moment[else if Libido of Player <= 50]wet with your juices[else if Libido of Player <= 75]hot and dripping juices[else]drooling musky nectar down your thighs[end if]. You have a [Clit Size Adjective of Player] clitoris that is extremely sensitive. ";
			else:
				now cunttext is "have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]. Further probing shows it to be [Cunt Depth of Player] inches deep and [Cunt Tightness Adjective of Player]. It is [if Libido of Player <= 25]a little damp at the moment[else if Libido of Player <= 50]wet with your juices[else if Libido of Player <= 75]hot and dripping juices[else]drooling musky nectar down your thighs[end if]. You have a [Clit Size Adjective of Player] clitoris that is extremely sensitive. ";
	else: [old style]
		let cunttext be "";
		follow the cunt descr rule;
		if player is female:
			if Cunt Count of Player > 1:
				now cunttext is "have [Cunt Count of Player] [Cunt Size Desc of Player] [one of]cunts[or]pussies[or]vaginas[at random]. Further probing shows them to be [Cunt Depth of Player] inches deep and able to stretch to about [Cunt Tightness of Player] inches in diameter. They are [if Libido of Player <= 25]a little damp at the moment[else if Libido of Player <= 50]wet with your juices[else if Libido of Player <= 75]hot and dripping juices[else]drooling musky nectar down your thighs[end if]. ";
			else:
				now cunttext is "have a [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that looks [Cunt Size Desc of Player], and further probing shows it to be [Cunt Depth of Player] inches deep and able to stretch to [Cunt Tightness of Player] inches in diameter. It is [if Libido of Player <= 25]a little damp at the moment[else if Libido of Player <= 50]wet with your juices[else if Libido of Player <= 75]hot and dripping juices[else]drooling musky nectar down your thighs[end if]. ";
	[displaying the texts]
	if cocktext is not "":
		if cunttext is "":
			say "A private peek shows that you [cocktext]";
		else:
			say "A private peek shows that you [cocktext]";
			say "Also, you [cunttext]";
	else if cunttext is not "":
		say "You [cunttext]";
[ ^^ Genital Descriptions Done ]
	[ Equipment Descriptions Below ]
	LineBreak;
	LineBreak;
	repeat with x running through equipped owned equipment:
		if slot of x is "head":
			if descmod of x is "":
				break;
			else:
				say "[descmod of x] ";
	repeat with x running through equipped owned equipment:
		if slot of x is "eyes":
			if descmod of x is "":
				break;
			else:
				say "[descmod of x] ";
	repeat with x running through equipped owned equipment:
		if slot of x is "face":
			if descmod of x is "":
				break;
			else:
				say "[descmod of x] ";
	repeat with x running through equipped owned equipment:
		if slot of x is "neck":
			if descmod of x is "":
				break;
			else:
				say "[descmod of x] ";
	repeat with x running through equipped owned equipment:
		if slot of x is "body":
			if descmod of x is "":
				break;
			else:
				say "[descmod of x] ";
	repeat with x running through equipped owned equipment:
		if slot of x is "chest":
			if descmod of x is "":
				break;
			else:
				say "[descmod of x] ";
	repeat with x running through equipped owned equipment:
		if slot of x is "arms":
			if descmod of x is "":
				break;
			else:
				say "[descmod of x] ";
	repeat with x running through equipped owned equipment:
		if slot of x is "hands":
			if descmod of x is "":
				break;
			else:
				say "[descmod of x] ";
	repeat with x running through equipped owned equipment:
		if slot of x is "legs":
			if descmod of x is "":
				break;
			else:
				say "[descmod of x] ";
	let CrotchVisible be true;
	repeat with x running through equipped owned equipment:
		if slot of x is "waist":
			if descmod of x is "":
				break;
			else:
				say "[descmod of x] ";
				now CrotchVisible is false;
	if CrotchVisible is true: [no pants, so undies might be visible]
		repeat with x running through equipped owned equipment:
			if slot of x is "crotch":
				if descmod of x is "":
					break;
				else:
					say "[descmod of x] ";
					now CrotchVisible is false;
	if CrotchVisible is true: [no undies, so the actual crotch is visible]
		say "Your [BodyName of Player in lower case] waist and legs are bare-ass naked, exposing your privates for everyone to see. ";
	let Barefoot be true;
	repeat with x running through equipped owned equipment:
		if slot of x is "feet":
			if descmod of x is "":
				break;
			else:
				say "[descmod of x] ";
				now Barefoot is false;
	if Barefoot is true:
		say "You are barefoot right now. ";
	LineBreak;
	if weapon object of Player is not journal:
		say "You are carrying a/an [weapon object of Player] just in case of trouble";
		if weapon object of Player is unwieldy:
			say ". Due to its comparatively [if scalevalue of Player > objsize of weapon object of Player]small[else]big[end if] size, it is [if absolute value of ( scalevalue of Player - objsize of weapon object of Player ) > 3]very unwieldy[else if absolute value of ( scalevalue of Player - objsize of weapon object of Player ) is 3]rather unwieldy[else]somewhat unwieldy[end if] for you to use at the moment";
		say ". ";
	repeat with x running through equipped owned equipment:
		if descmod of x is "", next;
		if placement of x is "end":
			say " [descmod of x]";
	[ ^^ Eqipment Descriptions Done ]
	[ Children Descriptions Below   ]
	[old style children, imported]
	LineBreak;
	if (number of filled rows in Table of PlayerChildren + number of entries in childrenfaces) > 1: [more than one child of both types combined]
		say "Trailing behind come your children:[line break]";
	else if (number of filled rows in Table of PlayerChildren + number of entries in childrenfaces) is 1: [exactly one child]
		say "Trailing behind comes your child:[line break]";
	if the number of entries in childrenfaces > 0:
		if the number of entries in childrenfaces is 1:
			if ( entry 1 of childrenskins is not entry 1 of childrenbodies ) or ( entry 1 of childrenskins is not entry 1 of childrenfaces ):
				say "Your child has a [entry 1 of childrenfaces] face, and a [entry 1 of childrenbodies] body covered in [entry 1 of childrenskins] skin.";
			else:
				say "Your child is a pureblood [entry 1 of childrenfaces].";
			say "They look as alert and human as you are, taking after you eagerly. Despite their age, they are already grown to young adults, both physically and in apparent emotional and mental development.";
		else:
			repeat with x running from 1 to number of entries in childrenfaces:
				if ( entry x of childrenskins is not entry x of childrenbodies ) or ( entry x of childrenskins is not entry x of childrenfaces ):
					say "One has a [entry x of childrenfaces] face, and a [entry x of childrenbodies] body covered in [entry x of childrenskins] skin.";
				else:
					say "One is a pureblood [entry x of childrenfaces].";
			say "They all are as alert and human as you are, taking after you eagerly. Despite their age, they are already grown to young adults, both physically and in apparent emotional and mental development.";
	[new style children]
	if number of filled rows in Table of PlayerChildren > 0: [player has new style children]
		if number of filled rows in Table of PlayerChildren is 1:
			choose row 1 in Table of PlayerChildren;
			let Childage be ((Birthturn entry - turns ) divided by 8);
			if Pureblood entry is false:
				say "Your [if Childage is 0]less than a day[else if Childage is 1]one day[else][Childage] days[end if] old [Gender entry] ";
				if Name entry is "":
					say "child";
				else:
					say "child '[Name entry]'";
				say " has a [Head entry] head, [Torso entry] front and [Back entry] back. ";
				if ShowLegs entry is true:
					say "They have [Arms entry] arms, [Legs entry] legs[if ShowTail entry is false] and a [Ass entry] behind[else], a [Ass entry] behind and a [Tail entry] tail[end if]. ";
				else:
					say "They have [Arms entry] arms[if ShowTail entry is false] and a [Ass entry] behind[else], a [Ass entry] behind and a [Tail entry] tail[end if]. ";
			else:
				say "Your [if Childage is 0]less than a day[else if Childage is 1]one day[else][Childage] days[end if] old [Gender entry] ";
				if Name entry is "":
					say "child";
				else:
					say "child '[Name entry]'";
				say " is a pureblood [Head entry]. ";
			if Albino entry is true:
				say "[bold type]Their pigmentation is muted and almost white, except for the eyes that appear red. [roman type][line break]";
			else if Melanism entry is true:
				say "[bold type]Their pigmentation is almost pure black. [roman type][line break]";
			say "You have a [PlayerRelationship entry] relationship with them, and your child's personality is rather [Personality entry].";
		else:
			repeat with x running from 1 to number of filled rows in Table of PlayerChildren:
				choose row x in the Table of PlayerChildren;
				let Childage be ((Birthturn entry - turns ) divided by 8);
				if Pureblood entry is false:
					say "Your [if Childage is 0]less than a day[else if Childage is 1]one day[else][Childage] days[end if] old [Gender entry] ";
					if Name entry is "":
						say "child";
					else:
						say "child '[Name entry]'";
					say " has a [Head entry] head, [Torso entry] front and [Back entry] back. ";
					if ShowLegs entry is true:
						say "They have [Arms entry] arms, [Legs entry] legs[if ShowTail entry is false] and a [Ass entry] behind[else], a [Ass entry] behind and a [Tail entry] tail[end if]. ";
					else:
						say "They have [Arms entry] arms[if ShowTail entry is false] and a [Ass entry] behind[else], a [Ass entry] behind and a [Tail entry] tail[end if]. ";
				else:
					say "Your [if Childage is 0]less than a day[else if Childage is 1]one day[else][Childage] days[end if] old [Gender entry] ";
					if Name entry is "":
						say "child";
					else:
						say "child '[Name entry]'";
					say " is a pureblood [Head entry]. ";
				if Albino entry is true:
					say "[bold type]Their pigmentation is muted and almost white, except for the eyes that appear red. [roman type][line break]";
				else if Melanism entry is true:
					say "[bold type]Their pigmentation is almost pure black. [roman type][line break]";
				say "You have a [PlayerRelationship entry] relationship with them, and your child's personality is rather [Personality entry].";
	if (number of filled rows in Table of PlayerChildren + number of entries in childrenfaces) > 1: [more than one child of both types combined]
		say "They all are as alert and human as you are, taking after you eagerly. Despite their age, they are already grown to young adults, both physically and in apparent emotional and mental development.";
	else if (number of filled rows in Table of PlayerChildren + number of entries in childrenfaces) is 1: [exactly one child]
		say "They look as alert and human as you are, taking after you eagerly. Despite their age, they are already grown to young adults, both physically and in apparent emotional and mental development.";
	if the player is not lonely:
		repeat with companion running through companionList of Player:
			say "Accompanying you is [link][companion][as]look [companion][end link], which is level [level of companion].";
	now looknow is 0;
	rule succeeds;

Description of Offspring is "[OffspringDesc]".

instead of conversing the Offspring:
	if (number of filled rows in Table of PlayerBunkerChildren) > 1:
		say "     You have a nice little talk with your children. Knowing that they're safe here while you're roaming the city makes you feel better about the grim reality of life in the city.";
	else if (number of filled rows in Table of PlayerBunkerChildren) is 1: [exactly one child]
		say "     You have a nice little talk with your child. Knowing that they're safe here while you're roaming the city makes you feel better about the grim reality of life in the city.";
	SanBoost 5;

instead of fucking the Offspring:
	if (number of filled rows in Table of PlayerBunkerChildren) > 1:
		say "     For a second, lewd thoughts flare up in your mind and you almost open your mouth to say something to one of your children, but then you manage to control yourself and suppress the urge.";
	else if (number of filled rows in Table of PlayerBunkerChildren) is 1: [exactly one child]
		say "     For a second, lewd thoughts flare up in your mind and you almost open your mouth to say something to your child, but then you manage to control yourself and suppress the urge.";

to say OffspringDesc:
	if (number of filled rows in Table of PlayerBunkerChildren) > 1:
		say "Your children live in the safety of the bunker:[line break]";
	else if (number of filled rows in Table of PlayerBunkerChildren) is 1: [exactly one child]
		say "Your child lives in the safety of the bunker:[line break]";
	[new style children]
	if number of filled rows in Table of PlayerBunkerChildren > 0: [player has new style children]
		if number of filled rows in Table of PlayerBunkerChildren is 1:
			choose row 1 in Table of PlayerBunkerChildren;
			let Childage be ((Birthturn entry - turns ) divided by 8);
			if Pureblood entry is false:
				say "Your [if Childage is 0]less than a day[else if Childage is 1]one day[else][Childage] days[end if] old [Gender entry] ";
				if Name entry is "":
					say "child";
				else:
					say "child '[Name entry]'";
				say " has a [Head entry] head, [Torso entry] front and [Back entry] back. ";
				if ShowLegs entry is true:
					say "They have [Arms entry] arms, [Legs entry] legs[if ShowTail entry is false] and a [Ass entry] behind[else], a [Ass entry] behind and a [Tail entry] tail[end if]. ";
				else:
					say "They have [Arms entry] arms[if ShowTail entry is false] and a [Ass entry] behind[else], a [Ass entry] behind and a [Tail entry] tail[end if]. ";
			else:
				say "Your [if Childage is 0]less than a day[else if Childage is 1]one day[else][Childage] days[end if] old [Gender entry] ";
				if Name entry is "":
					say "child";
				else:
					say "child '[Name entry]'";
				say " is a pureblood [Head entry]. ";
			if Albino entry is true:
				say "[bold type]Their pigmentation is muted and almost white, except for the eyes that appear red. [roman type][line break]";
			else if Melanism entry is true:
				say "[bold type]Their pigmentation is almost pure black. [roman type][line break]";
			say "You have a [PlayerRelationship entry] relationship with them, and your child's personality is rather [Personality entry].";
		else:
			repeat with x running from 1 to number of filled rows in Table of PlayerBunkerChildren:
				choose row x in the Table of PlayerBunkerChildren;
				let Childage be ((Birthturn entry - turns ) divided by 8);
				if Pureblood entry is false:
					say "Your [if Childage is 0]less than a day[else if Childage is 1]one day[else][Childage] days[end if] old [Gender entry] ";
					if Name entry is "":
						say "child";
					else:
						say "child '[Name entry]'";
					say " has a [Head entry] head, [Torso entry] front and [Back entry] back. ";
					if ShowLegs entry is true:
						say "They have [Arms entry] arms, [Legs entry] legs[if ShowTail entry is false] and a [Ass entry] behind[else], a [Ass entry] behind and a [Tail entry] tail[end if]. ";
					else:
						say "They have [Arms entry] arms[if ShowTail entry is false] and a [Ass entry] behind[else], a [Ass entry] behind and a [Tail entry] tail[end if]. ";
				else:
					say "Your [if Childage is 0]less than a day[else if Childage is 1]one day[else][Childage] days[end if] old [Gender entry] ";
					if Name entry is "":
						say "child";
					else:
						say "child '[Name entry]'";
					say " is a pureblood [Head entry]. ";
				if Albino entry is true:
					say "[bold type]Their pigmentation is muted and almost white, except for the eyes that appear red. [roman type][line break]";
				else if Melanism entry is true:
					say "[bold type]Their pigmentation is almost pure black. [roman type][line break]";
				say "You have a [PlayerRelationship entry] relationship with them, and your child's personality is rather [Personality entry].";
	if (number of filled rows in Table of PlayerBunkerChildren) > 1:
		say "They all are as alert and human as you are, taking after you eagerly. Despite their age, they are already grown to young adults, both physically and in apparent emotional and mental development.";
	else if (number of filled rows in Table of PlayerBunkerChildren) is 1: [exactly one child]
		say "They look as alert and human as you are, taking after you eagerly. Despite their age, they are already grown to young adults, both physically and in apparent emotional and mental development.";

Table of Game Objects (continued)
name	desc	weight	object
"offspring present"	"A little box, complete with a scavenged bow! A little sign on it says it's just for you and from one of your offspring that are living in the bunker."	1	offspring present

instead of sniffing offspring present:
	say "The box smells very mysterious.";

offspring present is a grab object.
Usedesc of offspring present is "[offspring present use]";

to say offspring present use:
	say "Curious about what your child got you, you carefully open the present and find ";
	let RandomChance be a random number from 1 to 15;
	if RandomChance < 4: [1-3]
		say "a soda bottle inside!";
		ItemGain soda by 1;
	else if RandomChance < 8: [4-7]
		say "a bag of chips inside!";
		ItemGain chips by 1;
	else if RandomChance < 11: [8-10]
		say "a water bottle inside!";
		ItemGain water bottle by 1;
	else if RandomChance < 14: [11-13]
		say "a can of food inside!";
		ItemGain food by 1;
	else if RandomChance is 14:
		say "a baseball cap inside!";
		ItemGain baseball cap by 1;
	else if RandomChance is 15:
		say "a red herring plushie!";
		ItemGain red herring by 1;

This is the location choice rule:
	choose row current menu selection in the table of starting location;
	if title entry is "Bunker":
		say "You managed to find your way to a bunker, where you hid away for some time. No special perks, default start.";
	else if title entry is "Caught Outside":
		say "You were forced to survive outside. You have already been mutated a bit, though your practice has hardened you. (Gain Spartan Diet, slowing gain of hunger and thirst)[line break]";
	else if title entry is "Rescuer Stranded":
		say "You arrived late, looking for survivors, when you got cut off from your teammates. Now you just want to survive! (Start with no supplies)[line break]";
	else if title entry is "Forgotten":
		say "You stayed in hiding too long. Your supplies have run dry, and the rescue already came and left. It will be a long time before any more arrive![line break]";
	else if title entry is "Hard mode":
		say "You always had a desire to challenge yourself so purposely waited for some stronger opponents to appear before venturing out. Your supplies have run dry, and the rescue already came and left. It will be a long time before any more arrive![line break]";
	else if title entry is "Researcher":
		say "You are not stranded at all. You came to explore, catalog, and interact with this absolutely fascinating outbreak. You've been given immunizations to casual infection (you won't transform from losing battles) and have specialized equipment that allows you to collect the infection vials of those you defeat.[line break]";
	say "Continue?";
	if Player consents:
		now looknow is 0;
	else:
		the rule fails;
	if title entry is not "Bunker":
		say "What luck. After looking around desperately, you come across a library with a mostly intact bunker in it. This will serve well as a refuge while you wait for rescue.";
		if title entry is "Caught Outside":
			add "Spartan Diet" to feats of Player;
			[belongs in 'when play begins' block, as waiting prevents banned infections from being placed upon a player]
			[also lets feat choices like the gender preference ones be in effect]
			[ process dirty water;
			process dirty water;
			process dirty water;
			process dirty water; ]
		if title entry is "Rescuer Stranded":
			now invent of bunker is { };
			add "cot" to invent of bunker;
			increase score by 300;
		if title entry is "Forgotten":
			now invent of bunker is { };
			add "cot" to invent of bunker;
			now the printed name of Doctor Matt is "Left Behind Recording of Doctor Matt";
			now the initial appearance of Doctor Matt is "A small recorder labeled 'Doctor Matt' remains abandoned.";
			now Description of Doctor Matt is "A small recorder labeled 'Doctor Matt' remains abandoned.";
			now the HP of Doctor Matt is 100;
			now the icon of Doctor Matt is figure of pixel;
			now Orthas is nowhere;
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Deer":
					now area entry is "Park";
					break;
			increase score by 600;
			now DateMonth is 6;
			extend game by 240;
		if title entry is "Hard mode":
			now invent of bunker is { };
			add "cot" to invent of bunker;
			now the printed name of Doctor Matt is "Left Behind Recording of Doctor Matt";
			now the initial appearance of Doctor Matt is "A small recorder labeled 'Doctor Matt' remains abandoned.";
			now Description of Doctor Matt is "A small recorder labeled 'Doctor Matt' remains abandoned.";
			now the HP of Doctor Matt is 100;
			now the icon of Doctor Matt is figure of pixel;
			now Orthas is nowhere;
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Deer":
					now area entry is "Park";
					break;
			increase score by 900;
			now DateMonth is 6;
			extend game by 240;
			now hardmode is true;
		if hardmode is false:
			say "Would you like to play hard mode?";
			if Player consents:
				now hardmode is true;
				say "Hardmode activated!";
	now scenario is title entry;
	now the menu depth is 0;
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	rule succeeds;

This is the final stats rule:
	now Morale of Player is Charisma of Player plus Perception of Player;
	now HP of Player is Stamina of Player times two;
	increase HP of Player by 5;
	now MaxHP of Player is HP of Player;
	now Humanity of Player is 100;
	now the Capacity of Player is five times Strength of Player;
	now the menu depth is 0;
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	while 1 is 1:
		repeat with y running from 1 to number of filled rows in table of Starting Location:
			choose row y from the table of Starting Location;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "Type the number corresponding to the scenario you want to play> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of Starting Location:
			now current menu selection is calcnumber;
			follow the location choice rule;
			if rule succeeded, break;
		else:
			say "Invalid Selection.";
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	try looking;
	rule succeeds;

This is the male choice rule:
	now Cock Count of Player is 1;
	now Cock Length of Player is 6;
	now the Ball Size of Player is 3;
	now Nipple Count of Player is 2;
	now Breast Size of Player is 0;
	remove womanhood from Player;
	now the current menu is table of Basic Actions;
	say "You are a man.";
	wait for any key;
	follow the final stats rule;
	rule succeeds;

This is the female choice rule:
	now Cunt Count of Player is 1;
	now Cunt Depth of Player is 6;
	now Cunt Tightness of Player is 3;
	now Nipple Count of Player is 2;
	now Breast Size of Player is 2;
	remove manhood from Player;
	now the current menu is table of Basic Actions;
	say "You are a woman.";
	wait for any key;
	follow the final stats rule;
	rule succeeds;

This is the d18 rule:
	now d18 is 0;
	increase d18 by a random number from 1 to 6;
	increase d18 by a random number from 1 to 6;
	increase d18 by a random number from 1 to 6;
	rule succeeds;

This is the random stats rule:
	follow the d18 rule;
	now Strength of Player is d18;
	follow the d18 rule;
	now Dexterity of Player is d18;
	follow the d18 rule;
	now Stamina of Player is d18;
	follow the d18 rule;
	now Charisma of Player is d18;
	follow the d18 rule;
	now Intelligence of Player is d18;
	follow the d18 rule;
	now Perception of Player is d18;
	decrease the score by 1;
	rule succeeds.

This is the starting stats rule:
	[default stats]
	now Strength of Player is 12;
	now Dexterity of Player is 12;
	now Stamina of Player is 12;
	now Charisma of Player is 12;
	now Intelligence of Player is 12;
	now Perception of Player is 12;
	decrease the score by 0;
	rule succeeds.

This is the starting gender rule:
	[default male gender]
	now Cock Count of Player is 1;
	now Cock Girth of Player is 3;
	now Cock Length of Player is 6;
	now Ball Size of Player is 3;
	now Nipple Count of Player is 2;
	now Breast Size of Player is 0;
	remove womanhood from Player;
	rule succeeds.

This is the Menu Exit Rule:
	decrease the menu depth by 1;
	rule succeeds.


Instead of examining the infection terminal:
	say "     Looking at the terminal, you see a lot of text on its screen. If you want, you can select a category and read it.";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Infections";
	now sortorder entry is 1;
	now description entry is "Check out the list of known infections";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Credits";
	now sortorder entry is 2;
	now description entry is "Check out the 'Credits', whatever that may be";
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
				if (nam is "Infections"):
					say "[TerminalInfections]";
				else if (nam is "Credits"):
					say "[TerminalCredits]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You turn away from the terminal.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say TerminalInfections:
	let z be 0;
	sort Table of Random Critters in lev order;
	repeat with X running from 1 to number of filled rows in Table of Random Critters:
		choose row X from the Table of Random Critters;
		if there is a lev entry:
			increase z by 1;
			say "[Name entry]: Danger Level: [lev entry], Typical Environment: [area entry][line break]";
			if z is 15:
				[say "Press any key to continue.";] [unneeded with 'more' link]
				WaitLineBreak;
				now z is 0;
	say "End Infection list.[line break]";
	wait for any key; [don't apply waiterhater, used to separate monsters from credits]

to say TerminalCredits:
	say "[complete list of extension credits]";

To Plot:
	let x be the location;
	if x is unknown:
		now x is known;
		increase score by 1;
		if x is fasttravel:
			say "You feel you could [bold type]navigate[roman type] back to here easily from other such rooms.";

After going:
	try looking;
	[follow the ngraphics_blank rule;]
	plot;

This is the finish stats rule:
	if started is 1:
		if Current menu selection is 1:
			increase strength of Player by 1;
			increase capacity of Player by 5;
			say "Your strength grows.";
		if Current menu selection is 2:
			increase dexterity of Player by 1;
			say "Your dexterity grows.";
		if Current menu selection is 3:
			increase Stamina of Player by 1;
			say "Your Stamina grows.";
		if Current menu selection is 4:
			increase charisma of Player by 1;
			say "Your charisma grows.";
		if Current menu selection is 5:
			increase intelligence of Player by 1;
			say "Your intelligence grows.";
		if Current menu selection is 6:
			increase perception of Player by 1;
			say "Your perception grows.";
		decrease menu depth by 1;
		rule succeeds;
	if Current menu selection is 1:
		say "Your strength is your specialty.";
		say "Are you sure?";
		if Player consents:
			increase strength of Player by 5;
		else:
			rule fails;
	if Current menu selection is 2:
		say "Your dexterity is your specialty.";
		say "Are you sure?";
		if Player consents:
			increase dexterity of Player by 5;
		else:
			rule fails;
	if Current menu selection is 3:
		say "Your stamina is your specialty.";
		say "Are you sure?";
		if Player consents:
			increase stamina of Player by 5;
		else:
			rule fails;
	if Current menu selection is 4:
		say "Your charisma is your specialty.";
		say "Are you sure?";
		if Player consents:
			increase charisma of Player by 5;
		else:
			rule fails;
	if Current menu selection is 5:
		say "Your intelligence is your specialty.";
		say "Are you sure?";
		if Player consents:
			increase intelligence of Player by 5;
		else:
			rule fails;
	if Current menu selection is 6:
		say "Your perception is your specialty.";
		say "Are you sure?";
		if Player consents:
			increase perception of Player by 5;
		else:
			rule fails;
	now started is 1;
	say "[line break]You have decided your physical talents, but are you a man or a woman?";
	say "Do you want to be [link][bracket]m[close bracket][as]m[end link]ale or [link][bracket]f[close bracket][as]f[end link]emale?>[run paragraph on]";
	now tempnum is 0;
	while tempnum is 0:
		get typed command as playerinput;
		if Playerinput matches "m" or playerinput matches "1":
			now tempnum is 1;
			follow male choice rule;
		else if Playerinput matches "f" or playerinput matches "2":
			now tempnum is 1;
			follow female choice rule;
		else:
			say "Type 'm' or 'f'.> [run paragraph on]";
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	rule succeeds;

ScavengingAction is an action applying to nothing.
tscavenging is an action applying to one topic.
Scavengetarget is an indexed text that varies.[@Tag:NotSaved]
A scavevent is a kind of situation.

understand "Scavenge" as ScavengingAction.
understand "Scav" as ScavengingAction.
[
understand "Scavenge [text]" as ScavengingAction.
understand "Scav [text]" as ScavengingAction.
]

check tscavenging:
	if location of Player is not fasttravel, say "You can only scavenge from quick travel points." instead;
	if blindmode is true, say "You're playing in blind-mode, so hunting is not allowed - even scavenge-hunting. You'll have to try scavenging normally to find what you seek." instead;

Carry out tscavenging:
	now scavengetarget is the topic understood;
	try ScavengingAction;
	now scavengetarget is "";

check ScavengingAction:
	if location of Player is not fasttravel, say "You can only scavenge from quick travel points." instead;

carry out ScavengingAction:
	let x be a random visible dangerous door;
	if x is not nothing:
		now battleground is marea of x;
	else:
		now battleground is "Outside";
	say "You set out in the desperate search of food and water.";
	let the bonus be (( Perception of Player minus 10 ) divided by 2);
	if "Survivalist" is listed in feats of Player, increase bonus by 4;
	if "Three Bags Full" is listed in feats of Player, increase bonus by 1;
	let the dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 10: ";
	if dice plus bonus > 9:
		now inasituation is true;
		if a random chance of 3 in 4 succeeds:
			say "[ResolveFunction of Potential Resources]";
		else:
			now tempnum is 1;
			let L be a random available scavevent;
			If L is not nothing:
				say "[one of]During your search for supplies, you end up at[or]Searching systematically for resources, you locate[or]Following signs of recent activity, you end up at[or]Doing a slow circuit while scavenging, you manage to find[or]Wandering around aimlessly in search of supplies, you locate[at random] [L].";
				say "[ResolveFunction of L]";
			else if L is nothing:
				say "[ResolveFunction of Potential Resources]";
		now inasituation is false;
		say "[line break]";
	else:
		say "Your search turns up empty.";
	now inasituation is false;
	if battleground is "", now battleground is "Outside";
	let z be 7;
	if "Stealthy" is listed in feats of Player, decrease z by 2;
	if "Bad Luck" is listed in feats of Player, increase z by 1;
	randomfightchance;
	follow turnpass rule;

To Infect (x - text):
	if scenario is "Researcher" and researchbypass is 0:
		vialchance x;
		continue the action;
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry exactly matches the text x, case insensitively:
			if BannedStatus entry is true: [banned creatures can't infect]
				if debugactive is 1:
					say "DEBUG -> Can't infect with creature [Name entry] because it has Banned: [BannedStatus entry][line break]";
				break;
			else:
				now MonsterID is y;
				let reset be 0;
				if researchbypass is 1 and non-infectious entry is true:
					now reset is 1;
					now non-infectious entry is false;
				infect;
				if reset is 1:
					now non-infectious entry is true;
				break;

to randominfect: [bypasses researcher protection]
	now researchbypass is 1;
	weakrandominfect;
	now researchbypass is 0;

to weakrandominfect: [does not bypass researcher protection]
	sort Table of Random Critters in random order;
	now MonsterID is 1;
	choose row MonsterID from Table of Random Critters;
	if BannedStatus entry is true: [banned creatures can't be challenged]
		if debugactive is 1:
			say "DEBUG -> Can't infect with creature [Name entry] because it has Banned: [BannedStatus entry][line break]";
	else:
		while there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true or area entry is "Nowhere":
			increase MonsterID by 1;
			choose row MonsterID from Table of Random Critters;
			if there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true or area entry is "Nowhere":
				next;
			break;
		infect;

to setmonster ( x - text ):
	setmonster x silence state is 0;

to setmonster ( x - text ) silently: [suppresses the debug output]
	setmonster x silence state is 1;

to setmonster ( x - text ) silence state is (Silence - a number): [puts an infection (named x) as lead monster for later use]
	let found be 0;
	choose row MonsterID in the Table of Random Critters;
	if Name entry exactly matches the text x, case insensitively:
		now found is 1;
	else:
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry exactly matches the text x, case insensitively:
				now found is 1;
				now MonsterID is y;
				break;
	if found is 0:
		say "ERROR - Creature '[x]' not found. (setmonster)[line break]";
	else if debugactive is 1 and Silence is 0:
		say "DEBUG: Current [']monster['] set to: [MonsterID] = [Name entry][line break]";

Section Lists of Tables - Not for release

[intends to list stuff for debugging (or any other activity needing a list of what's in the game). output is formatted as CSV to simplify exporting. appears to be working properly.]
TableListing is an action applying to one topic.
Understand "tlist [text]" as TableListing.

Carry out tablelisting:
	let t be the topic understood;
	if t in lower case is "object":
		say "Name,Weight:[line break]";
		sort table of game objects in object order;
		repeat with X running from 1 to number of filled rows in table of game objects:
			choose row X from the table of game objects;
			if there is a Name entry:
				say "[Name entry],[weight entry][line break]";
		say "End of list of objects.";
		stop the action;
	else if t in lower case is "creature":
		say "Name,Level,Area:[line break]";
		sort Table of Random Critters in lev order;
		repeat with X running from 1 to number of filled rows in Table of Random Critters:
			choose row X from the Table of Random Critters;
			if there is a lev entry:
				say "[Name entry],[lev entry],[area entry][line break]";
		say "End of list of random critters.";
		stop the action;
	else if t in lower case is "critcombat":
		say "Critter Combats:[line break]";
		sort Table of Critter Combat in combat order;
		repeat with X running from 1 to number of filled rows in Table of Critter Combat:
			choose row X from the Table of Critter Combat;
			if there is a Name entry:
				say "[Name entry][line break]";
		say "End of list of critter combats.";
		stop the action;
	else if t in lower case is "room":
		say "Rooms:[line break]";
		repeat with n running through rooms:
			say "[n][line break]";
		say "End of list of rooms.";
		stop the action;
	else if t in lower case is "npc":
		say "NPC: [line break]";
		repeat with n running through person:
			say "[n][line break]";
		say "End of list of NonPlayerCharacters.";
		stop the action;
	else if t in lower case is "grab":
		say "Grab Object:[line break]";
		repeat with n running through Grab Object:
			say "[n][line break]";
		say "End of list of Grab Objects.";
		stop the action;
	else if t in lower case is "weapon":
		say "Weapon:[line break]";
		repeat with n running through A armament:
			say "[n][line break]";
		say "End of list of weapons.";
		stop the action;
	else if t in lower case is "equipment":
		say "Equipment:[line break]";
		repeat with n running through Equipment:
			say "[n][line break]";
		say "End of list of Equipment.";
		stop the action;
	else if t in lower case is "heat":
		say "Name, Heat Cycle, Heat Duration, Female Heat, MPreg Heat:[line break]";
		sort Table of infection heat in infect name order;
		repeat with X running from 1 to number of filled rows in Table of infection heat:
			choose row X from the Table of infection heat;
			if there is a infect Name entry:
				if there is a fheat entry and there is a mpregheat entry:
					say "[infect Name entry]: [heat cycle entry],[heat duration entry], F: [if there is a fheat entry and fheat entry is true]Yes[else]No[end if], MPreg: [if there is a mpregheat entry and mpregheat entry is true]Yes[else]No[end if][line break]";
				else:
					say "[infect Name entry]: [heat cycle entry],[heat duration entry] - not updated to F/MPreg[line break]";
		say "End of list of heat.";
		stop the action;
	else if t in lower case is "zephyr":
		say "Zephyr Goods,Price[line break]";
		sort Table of Zephyr Goods in price order;
		repeat with X running from 1 to number of filled rows in Table of Zephyr Goods:
			choose row X from the Table of Zephyr Goods;
			if there is a price entry:
				say "[Name entry],[price entry][line break]";
		say "End of list of Zephyr Goods.";
		stop the action;
	else if t in lower case is "biker":
		say "Biker Destination,Sort Order[line break]";
		sort Table of Biker Destinations in sortorder order;
		repeat with X running from 1 to number of filled rows in Table of Biker Destinations:
			choose row X from the Table of Biker Destinations;
			if there is a title entry:
				say "[title entry],[sortorder entry][line break]";
		say "End of list of Biker Destinations.";
		stop the action;
	else if t in lower case is "loot":
		say "Creature,Loot,Lootchance:[line break]";
		sort Table of Random Critters in loot order;
		repeat with X running from 1 to number of filled rows in Table of Random Critters:
			choose row X from the Table of Random Critters;
			if there is a loot entry:
				say "[Name entry],[loot entry],[lootchance entry][line break]";
		say "End of list of loot.";
		stop the action;
	else if t in lower case is "situation":
		say "Situations:[line break]";
		repeat with n running through situations:
			say "[n][line break]";
		say "End of list of Situations.";
		stop the action;
	else:
		say "nothing to list, try again.";

Book 7 - Endings

[ Moved to Game Endings.i7x in Core Mechanics ]

Book 8 - People

[Rod and Ronda Mallrat have been moved to the RodAndRonda file]

[Milking was moved to the Milking file in Core Mechanics]

The parser error count is a number that varies.[@Tag:NotSaved] The parser error count is 0.

After printing a parser error when the parser error count is at least 0:
	increment the parser error count;
	if the turn count divided by the parser error count < three:
		say "(If you are feeling lost, try typing [italic type]help[roman type] for suggestions.)";
		now the parser error count is -1. [This ensures that we don't keep printing the message.]


Book 9 - Add-Ons

[ Everything needed for the basic game functionality ]
Include Gametables by Core Mechanics.
Include Alt Combat by Core Mechanics.
Include Alt Vore by Core Mechanics.
Include Assorted Items by Stripes.
Include Banning by Core Mechanics.
Include Basic Functions by Core Mechanics.
Include Basic Locations by Core Mechanics.
Include Basic Shops by Core Mechanics.
Include BFandI by Core Mechanics.
Include Bound State Universals by Core Mechanics.
Include Debugging Tools by Core Mechanics.
Include Definitions by Core Mechanics.
Include Expanded Clothing Mechanics by Core Mechanics.
Include Equipment by Core Mechanics.
Include Feats by Core Mechanics.
include FS Graphics by Core Mechanics.
Include Fighting by Core Mechanics.
Include Fucking by Core Mechanics.
Include Hunting by Core Mechanics.
Include Game Endings by Core Mechanics.
Include Gender Pronouns by Core Mechanics.
Include Special Merchandize by Core Mechanics.
Include Inline Hyperlinks by Nuku Valente.
Include Masturbate by Core Mechanics.
Include Microwave by Core Mechanics.
Include Milking by Core Mechanics.
Include Misc Items by Core Mechanics.
Include Navigation by Core Mechanics.
Include Notes by Core Mechanics.
Include Needy Heat by Core Mechanics.
Include Patron Credits by Nuku Valente.
Include Pets by Core Mechanics.
Include Pregnancy by Core Mechanics.
Include Presets by Core Mechanics.
Include Quest Log by Core Mechanics.
Include Sex and Infection Functions by Core Mechanics.
Include Status View by Core Mechanics.
Include Store Mechanics by Core Mechanics.
Include Sleeptimer by Core Mechanics.
Include Tape Inventory by Core Mechanics.
Include Text Capture by Eric Eve.
Include Weapons by Core Mechanics.

[Locations]
Include Apocalypse Store by Omen.
Include Approaching the Capitol Building by Guest Writers.
Include Astor by Rikaeus.
Include Astroslide Field Locker-room by Kernog.
Include Astroslide Field Showers by Kernog.
Include Astroslide Football Field by Kernog.
Include Atlantis by Rikaeus.
Include Avalon by Taelyn.
Include Azrael by Rikaeus.
Include Beach by Speedlover.
Include Bargain Bin by Wahn.
Include Black Market by Luneth.
Include Black Market Items by Luneth.
Include Body Shop by Wahn.
Include Branson & Partner by Wahn.
Include Bunker Communal Shower Events by Luneth.
Include Camp Bravo by Wahn.
Include Tenvale College Campus by Rikaeus.
Include Dog House by Kaleem mcintyre.
Include Down Under Pub by Stripes.
Include Equinoid Camp by Song.
Include Farm by Wahn.
Include Gloryhole by SgtPepper234.
Include High Rise District by Guest Writers.
Include Hitching Post by SgtPepper234.
Include Hospital by Stripes.
Include Hyena Hideout by Stripes.
Include Junkyard and Warehouse by Wahn.
Include Kitsune Hideaway by Shadowwolf94.
Include Mall Community Center by Wahn.
Include Mall Residents by Rikaeus.
Include Medical Checkups by Stripes.
Include Milking Facility by Kernog.
Include Museum by Sarokcat.
Include New Ewe Store by Luneth.
Include PIG Frat by Stripes.
Include Pirate Island by Sarokcat.
Include Power Plant by Hellerhound.
Include Qytat a'th Lundrues by hellerhound.
Include Red Light District by Wahn.
Include Shag Shack by Wahn.
Include Stablemasters by Sarokcat.
Include Stables Hotel by Sarokcat.
Include State Fair by Sarokcat.
Include Tattoo Parlor by Sarokcat.
Include Tiger Den by Sarokcat.
Include Tyr's Club by Kaleem mcintyre.
Include Underwater Zone by Hellerhound.
Include Urban Forest by Stripes.
Include Void Realm by Gherod.
Include Vohr Island by Kernog.
Include Zephyr Inc by Nuku Valente.
Include Zoo by Wahn.

[Quests & Events]
Include AG Beach Events by Aureas Gigas.
Include Ancient Tome by Wahn.
Include Additional Tome Scenes by Dys.
Include Apartment 319 by Kaleem Mcintyre.
Include Assorted Events by Stripes.
Include Beach Events by Sarokcat.
Include Black Pearl by Lone Wanderer.
Include Bouncy Castle by Stripes.
Include Broken Husky Bad-End by Luneth.
Include Brookstone Books by Guest Writers.
Include Campus Events by Wahn.
Include Campus Lovers by CloserHenry.
Include Campus Couple NPC by CloserHenry.
Include CandyShop by Stripes.
Include Capitol Events by Blue Bishop.
Include Carrypacks by Indigo Eclipse.
Include Catapult Encounter by Hellerhound.
Include Central Library by Stripes.
Include Consolidated Outside Events by Song.
Include Consolidated Park Events by Song.
Include Chase by Luneth.
Include Chance Meetings by Kernog.
Include Combat Helmet by Nuku Valente.
Include Control Pills by Hellerhound.
[Include Disorganization by Kaleem mcintyre.] [Disabled till review]
Include Diego Events by Vinickus.
Include Dmitri the Peacock by Aureas Gigas.
Include Dry Plains Events by Stripes.
Include Endings by Darthan.
Include E-shocker by Stripes.
Include Eva by Kurainyx.
Include Event Rewrites by Draegon.
Include Exploration Events by Kurainyx.
Include Extra Added Scenes by Kaleem mcintyre.
Include Extra College Events by Speedlover.
Include Fair Events by Sarokcat.
Include Fair Events by Sarokcat.
Include Female Dorm Events by Prometheus.
Include Feral Events by MGEddie.
Include Fire House by Kaleem Mcintyre.
Include Food and Water Finding by Nuku Valente.
Include Forest Events by Aureas Gigas.
Include Forest Events by Defth.
Include Forest Gang Bang by Defth.
Include Gildwing Kobold Events by Taelyn.
Include giving in by Core Mechanics.
Include Greek Mythos by Prometheus.
Include HellHound by Speedlover.
Include High Rise Events by Stripes.
Include High Rise Events by Wahn.
Include Horus by Rikaeus.
Include How High by Kaleem mcintyre.
Include Hyena Bikers by Stripes.
Include Hyena Shoppers by Doots.
Include Hyena Situations by Hellerhound.
Include Hyper Serum by Vrael.
[Include Important Research Quests by Kaleem Mcintyre.]
Include Infected Pool by Hellerhound.
Include Inner Mall Events by Wahn.
Include Inventory Management Enhancements by Core Mechanics.
Include Ironscale Items by Taelyn.
Include Junkyard Events by Stripes.
Include Kitsune by Shadowwolf94.
Include Kitsune Expansion by Shadowwolf94.
Include Latex Quad Husky by Stripes.
Include Leonard Events by Stripes.
Include Little Old Woman by Kaleem mcintyre.
Include Lizard Parlor by Kaleem Mcintyre.
Include Main Storyline by Stripes.
Include Male Dorm Events by Rikaeus.
Include Mall Events by Sarokcat.
Include Mall Expansion by Wahn.
Include Misc Events by Pandemonium.
Include Misc 10 by Kaleem mcintyre.
Include Misc 3 by Kaleem mcintyre.
Include Misc 4 by Kaleem mcintyre.
Include Misc 6 by Kaleem mcintyre.
Include Misc 7 by Kaleem mcintyre.
Include Misc 8 by Kaleem mcintyre.
Include Misc 9 by Kaleem mcintyre.
Include Misc Scene 5 by Kaleem mcintyre.
Include More Misc Events by Kaleem mcintyre.
Include Murder Mystery by Rikaeus.
Include Museum Events by Sarokcat.
Include Museum Rounds by Stripes.
Include Nemean Lion by Prometheus.
Include New Events by Sarokcat.
Include Odd Weapons by Hellerhound.
Include Old BoomBox by Kaleem mcintyre.
Include Orc Events by Wahn.
Include Orc Researcher by Luneth.
Include Origins by Luneth.
Include Park Events by Sarokcat.
Include Patreon Menu by Stripes.
Include Pepperspray by Stripes.
Include Pet Shop by Wahn.
Include Qytat Shifters by Hellerhound.
Include Random Events by Hiccup.
Include Rane Events by KorekaBii.
Include Recordings by Wahn.
Include Red Events by Stripes.
Include Reservoir by Kaleem Mcintyre.
Include Rubber Sneakers by Kernog.
Include Satyr Frat by Wahn.
Include Save the Dame by Kaleem Mcintyre.
Include Scavevents by Stripes.
Include Sea Lion and Orca by Stripes.
Include Sex Ed by Prometheus.
Include Settings Menus by Core Mechanics.
Include Shifting by Hellerhound.
Include Shrinking Shrooms by Defth.
Include Smell by Core Mechanics.
Include Smith Haven Mall by Wahn.
Include Soldier Events by Wahn.
Include SpartanVikingCouple by Rikaeus.
Include Stable Related Events by Sarokcat.
Include Stable Related Quests by Sarokcat.
Include Storage Locker by Core Mechanics.
Include Story Skipper by Core Mechanics.
Include Story Skipper Loose Variables by Core Mechanics.
Include Sugar Feud by AGentlemanCalledB.
Include TFTG Feats by Luneth.
Include Tidepool Event by FwuffyMouse.
Include Toy Store by Song.
Include Underground Events by Wahn.
Include Walkinmall by Ssely.
Include Warehouse District by Kaleem Mcintyre.
Include Warehouse Events by StripeGuy.
Include Wereraptor by Stripes.
Include Werewolf by CrimsonAsh.
Include Xeno Nest by Kernog.
Include Zephyr Phone by Executaball.
Include Zoo Events by Sarokcat.
Include Zoo Events by Wahn.

[Monsters/Infections]
Include Albino Mouse by Stripes.
Include Alien Felinoid by Damaged.
Include Alpha Husky by Sarokcat.
Include Alpha Wolf by Sarokcat.
Include Amazonian by Stripes.
Include Ancient Tentacles by Dys.
Include Anime Babe by Stripes.
Include Anthro Shaft Beast by Guest Writers.
Include Anthro Cow Infections by Luneth.
Include Anthro Rabbit by Rikaeus.
Include Arctic Fox by Sarokcat.
Include Army Ant by Glitch.
Include Avalon Kobold by Taelyn.
Include Ember Breeder by Stripes.
Include Automaton by Stripes.
Include Awesome Tree by Damaged.
Include Badger by StripeGuy.
Include Bald Eagle by Stripes.
Include Batcubus by Blaydrex.
Include Brown Bear by Nuku Valente.
Include Beaver by Stripes.
Include Behemoth by Kaleem mcintyre.
Include Bird of Paradise by Stripes.
Include Black Equinoid by Song.
Include Black Wolf by Stripes.
Include Blob by Kaleem Mcintyre.
Include Blue Chaffinch by Stripes.
Include Latex Bobcat by Stripes.
Include Bottlenose Toy by Stripes.
Include Bovine by Damaged.
Include Breederslut by Stripes.
Include Brown Rat by Wahn.
Include Bunny Jock by Rikaeus.
Include Butterfly by Guest Writers.
Include Candy Striper by Stripes.
Include Cannon by Hiccup.
Include Cat Ninjas by Stripes.
Include Catgirl by Wahn.
Include Caveman by TheRecipe.
Include Centaur Mare by Stripes.
Include Centaur Stallion by Stripes.
Include Cerberus by Stripes.
Include Cheetah by Sarokcat.
Include Chocolate Lab by Stripes.
Include Clockwork Fox by Stripes.
Include Copper Dragoness by Kurainyx.
Include Corota by Stripes.
Include Corrupted Spawner by Stripes.
Include Cougar by Stripes.
Include Cowboy Cuntboy by Wahn.
Include Coyote by Darthan.
Include Cum Girl by AGentlemanCalledB.
Include Cute Chinchilla Girl by Guest Writers.
Include Dalmatian by Wahn.
Include Dark Elf by Stripes.
Include Demon Brute by Wahn.
Include Demon Fox by Dys.
Include Dino Pack by Qazarar.
Include Dire Wolf by Qazarar.
Include Doberman Cop by Stripes.
Include Doberman Male by Wahn.
Include Donkeyman by Sarokcat n Verath.
Include Donkeywoman by Sarokcat n Verath.
Include Draco-Mantis Infections by Prometheus.
Include Dracovixentaur by Stripes.
Include Dragontaur by Stripes.
Include Dragon Pool Toy by Hina Vache.
Include Drone Wasp by Nuku Valente.
Include Dryad by Hellerhound.
Include Dwarves by Gherod.
Include Easter Bunny by Stripes.
Include Ebonflame Dragator by Blue Bishop.
Include Ebonflame drake by Blue Bishop.
Include Ebonflame Whelp by Blue Bishop.
Include Elf by Nuku Valente.
Include Elk by Stripes.
Include Elven Hunter by Wahn.
Include Enhanced Chimera by Stripes.
Include Erica by Wahn.
Include Ewe by Luneth.
Include Feline Gymnast by Guest Writers.
Include Female Husky by Nuku Valente.
Include Fennec by Stripes.
Include Feral Cheetah by Shadowwolf94.
Include Feral Gryphon by UrsaOmega.
Include Feral Mutt by CrimsonAsh.
Include Feral Sea Dragon by Blue Bishop.
Include Feral Sea Dragoness by Blue Bishop.
Include Feral Shaft Beast by Guest Writers.
Include Feral Unicorn by Taelyn.
Include Feral Wolf by Stripes.
Include Ferret Infection by Luneth.
Include Fire Elemental by Stripes.
Include Fire Sprite by AGentlemanCalledB.
Include Flaming Lynx by Stripes.
Include Flesh Blob by Stripes.
Include Fluffy Owl by Stripes.
Include Football Gorilla Infections by Luneth.
Include Foul Scuttler by Xenophiliac.
Include Francois Infections by AGentlemanCalledB.
Include Friendship Pony by Stripes.
Include Frost Drake by CrimsonAsh.
Include Fruit Bat by Stripes.
Include Furling by Wahn.
Include Gargoyle Sentry by Gherod.
Include Gargoyle by Kaleem mcintyre.
Include Gator by Nuku Valente.
Include Gazelle by Sarokcat.
Include Gels by Darthan.
Include German shepherd by Stripes.[replaces 'Random German shepherd']
Include German Shepherd Bitch by Kirov.
Include Giant by Gherod.
Include Giraffe by Stripes.
Include Goat Janitor by McRabid.
Include Goblin by Blue Bishop.
Include Golden Retriever Male Infection by Luneth.
Include Goo Girl by Nuku Valente.
Include Gorilla by Wahn.
Include Great Dane by Kaleem Mcintyre.
Include Greek Nymph by Sarokcat.
Include Gray Squirrel by Stripes.
Include Grizzly Bear by UrsaOmega.
Include Gryphons Plot by Shay.
Include Gunbunny by Stripes.
Include Harpy by Nuku Valente.
Include Hawkman by Sarokcat.
Include Hellfire Demon by Gherod.
Include Helot by Wahn.
Include Hentai Fan by Stripes.
Include Herm Dolphin by Hellerhound.
Include Herm Hyena by Guest Writers.
Include Hermaid by Xenophiliac.
Include Hermaphrodite Gryphon by Nuku Valente.
Include Hermaphrodite Latex Vixen by Guest Writers.
Include Hippo Strongman by Stripes.
Include Homo Sapiens by Wahn.
Include Horny Doctor by Stripes.
Include Horse-Hung Nerd by Wahn.
Include Horseman by Sarokcat n Verath.
Include Horsemazon by Kirov.
Include Hulking Cheerleader by Wahn.
Include Human Infections by Wahn.
Include Hydra Beast by Stripes.
Include Hyena Matriarch by Stripes.
Include Hyperskunk by Stripes.
Include Imp by Wahn.
Include Impala by UrsaOmega.
Include Incubus by Stripes.
Include Inflatable Vulpine by Stripes.
Include Jackal Alpha by Gherod.
Include Jackal Femboy by Gherod.
Include Jackal Guard by Xenophiliac.
Include Jackalboy by Sarokcat.
Include Jackalman by Sarokcat.
Include Jaguar Orderly by Stripes.
Include Jaguar Warrior by AGentlemanCalledB.
Include Junkman by Stripes.
Include Kangaroo by Guest Writers.
Include Killer Whale by Stripes.
Include Knight by Stripes.
Include Koballoon by Song.
Include Kobold Gang by Closerhenry.
Include Komodo Dragon by Stripes.
Include Latex Ermine by Stripes.
Include Latex Fox by Nuku Valente.
Include Latex Mistress by Stripes.
Include Latex Wolf by Stripes.
Include Leopardman by Sarokcat.
Include Liquidshifter by Ssely.
Include Lizard Girl by Damaged.
Include Lusty Skunk by Nuku Valente.
Include Magic Drake by Stripes.
Include Male Peacock by Guest Writers.
Include Mall Rat by Stripes.
Include Mammoth by Stripes.
Include Man-eating Plant by Kernog.
Include Mannequin by Wahn.
Include Manticore by Kaleem mcintyre.
Include Mareslut by Sarokcat.
Include Margay by Stripes.
Include Maternity Lamia By Blue Bishop.
Include Math Teacher by Stripes.
Include Megakitty by Stripes.
Include Mental Mouse by Stripes.
Include Messy Pig by Guest Writers.
Include Minotaur by Kaleem mcintyre.
Include Mismatched Chimera by Stripes.
Include Monkey King by Kernog.
Include MothGirl by Guest Writers.
Include Mpreg Platypus by Sapphire.
Include Mul by Wahn.
Include Mushroom Men by AGentlemanCalledB.
Include Mutant Centaur by Hellerhound.
Include Mutated Islanders by Kernog.
Include Naga by Nuku Valente.
Include Naiad by Wahn.
Include Naughty Nurse by Stripes.
Include Nerdy Mouse by McRabid.
Include Nightmare by Sarokcat.
Include Ocelot by Stripes.
Include Ogres by Lyall.
Include Opossum Sailor by StripeGuy.
Include Orc Infections by Wahn.
Include otter by Nuku Valente.
Include Painted Wolf Herm by Guest Writers.
Include Panda by Sarokcat.
Include Panther Herm by Sarokcat.
Include Panther Taur by Nuku Valente.
Include Parasite by Stripes.
Include Parasitic Plant by Guest Writers.
Include Pegasus by Kaleem mcintyre.
Include Pewter Consort By Blue Bishop.
Include Piggy by Stripes.
Include Pink Poodle by AGentlemanCalledB.
Include Pirate Shark by Sarokcat.
Include Pit Bull by Guest Writers.
Include Placeholder Infections by Wahn.
Include Plush Lion by Sarokcat.
Include Prairie Dog by Stripes.
Include Psycho Weasel by Stripes.
Include Queen Bee by Stripes.
Include Quilled Tousky by Stripes.
Include Ram by Luneth.
Include Random Shemale Smooth Collie by Guest Writers.
Include Random Tentacle Horror by Guest Writers.
Include Rat Twins by Kernog.
Include Razorback Boar by Wahn.
Include Red Panda Infection by Luneth.
Include Red Oni by Stripes.
Include Reindeer by Stripes.
Include Reptaur by Kaleem mcintyre.
Include Retriever by AGentlemanCalledB.
Include Rhino by Stripes.
Include Robed Cultist by Wahn.
Include Rodeo Clown by Stripes.
Include Rubber Drake by Song.
Include Rubber Tigress by Sarokcat.
Include Ruby by CrimsonAsh.
Include Saber Kitty by Blaydrex.
Include Sabretooth by Sarokcat.
Include Salamander by Stripes.
Include Sand Man by Wahn.
Include Satyr by Sarokcat.
Include Satyress by Wahn.
Include Scarab Beetle by Xenophiliac.
Include Seraphim by Wahn.
Include Shadow Beast by UrsaOmega.
Include Siamese Cats by Stripes.
Include Sierrasaur by Blue Bishop.
Include Siren by Stripes.
Include Skunk by Damaged.
Include Skunkbeast Lord by Stripes.
Include Slime Cube by Kernog.
Include Slutrat by Nuku Valente.
Include Small Feline And Lion by Damaged.
Include Snake by Stripes.
Include Snow Bat by Stripes.
Include Snow Leopard by Stripes.
Include Spartan by Wahn.
Include Sphinx by Sarokcat.
Include Spidergirl by Guest Writers.
Include Spidertaur Male by Wahn.
Include Spidertaur Female by Wahn.
Include sprite by Nuku Valente.
Include Squid by Stripes.
Include Squire by Stripes.
Include Stallionboi by Sarokcat n Verath.
Include Succubus by Sarokcat.
Include Sugar Ferret by Stripes.
Include Sugar Glider by AGentlemanCalledB.
Include Taurus by Defth.
Include Teddy Bear by Sarokcat.
Include Tenrec by StripeGuy.
Include Thought Eater by Wahn.
Include Tiger by Sarokcat.
Include Tiger Cop by Stripes.
Include Tiger Shark by Lone Wanderer.
Include Tigertaur by Sarokcat.
Include Tigress Hooker by Stripes.
Include Trash Coon by Stripes.
Include Triceratops by Stripes.
Include Twisted Pimp by Sarokcat.
Include Unicorn by Sarokcat.
Include Viking Man by Wahn.
Include Viking Woman by Wahn.
Include Vixentaur by Stripes.
Include Voodoo Gecko by Stripes.
Include Vulpogryph by Stripes.
Include Werewolf Costume by Stripes.
Include Whiptail by Vervaine.
Include Wildcat by Stripes.
Include Wolfman by Wahn.
Include Wolftaur by Sarokcat.
Include Wolverine Guard by Stripes.
Include Wrestling Wolf by Guest Writers.
Include Wyvern by Damaged.
Include Xeno by Stripes.
Include Yamato Dragon by Blue Bishop.
Include Yamato Dragoness by Blue Bishop.
Include Yinglet by KazeSequeris.
Include Yuppie Mink by StripeGuy.
Include Zebra by Vervaine.

[NPCs]
Include Ace by Aureas Gigas.
Include Adam by Wahn.
Include Aeca by Wahn.
Include Alex by Stripes.
Include Arcanologist by Taelyn.
Include Bad Alexandra by Wahn.
Include Allen by Wahn.
Include Alexandra Breeding by Wahn.
Include Alexandra Cuckolding by Wahn.
Include Alpha Fang Scenes by Nuku Valente.
Include Amaryllis by Song.
Include Amy by Wahn.
Include Andrew by Stripes.
Include Angie by Sarokcat.
Include Anthony by Wahn.
Include Araqiel by Gherod.
Include Ares by Wahn.
Include Arthur by Luneth.
Include Anastasia by Stripes.
Include Aster by Qazarar.
Include Atticus by Wahn.
Include Azari by Dys.
Include Bastet by Wahn.
Include Bjorn by Rikaeus.
Include Blake by Wahn.
Include Blanche by Stripes.
Include Blue by Wahn.
Include Boghrim by Wahn.
Include Bradford by Stripes.
Include Brennan by Wahn.
Include Brian by Vinickus.
Include Brooke by Stripes.
Include Bryony by Song.
Include Bubble by Stripes.
Include Callidora by Prometheus.
Include Cassiel by Tin Can.
Include Cynthia by Prometheus.
Include Campus Gym by UrsaOmega.
Include Cadmea by Prometheus.
Include Carl by Wahn.
Include Chris by Wahn.
Include Cindy by Stripes.
Include College Guards by Rikaeus.
Include Colleen by Sarokcat.
Include Corbin by Wahn.
Include Coura by Wahn.
Include Daisy by Sarokcat n Verath.
Include Danny by Wahn.
Include Darius by Wahn.
Include David by Wahn.
Include Davies by Wahn.
Include Deer by Stripes.
Include Denise by Wahn.
Include Demonologist by Gherod.
Include Desperate Bunny by Nuku Valente.
Include Diana by Wahn.
Include Diavoborg by Gherod.
Include Diego by Wahn.
Include Dominick by Stripes.
Include Doran by Blue Bishop.
Include DrMoffatt by Stripes.
Include DrUtah by Stripes.
Include Duke by Wahn.
Include Dullahan by Gherod.
Include Egyptian Wing by Xenophiliac.
Include Elijah by Wahn.
Include Eric by Wahn.
Include Eric Loyalty by Luneth.
Include Erica by Wahn.
Include Fancy by Sarokcat n Verath.
Include Fang by Prometheus.
Include Farmhands by Wahn.
Include Felix by Wahn.
Include Finn by Wahn.
Include Flint by Gherod.
Include Francois by AGentlemanCalledB.
Include Frank by Stripes.
Include Friesian Twin Isaac by Wahn.
Include Friesian Twin Karel by Wahn.
Include G-Shep Squad by Rikaeus.
Include Genevieve by Prometheus.
Include Garrett by Stripes.
Include Gerty by Qazarar.
Include Glory by Wahn.
Include Good Alexandra by Wahn.
Include Gordon by Rikaeus.
Include Gus by Hyliad.
Include Gwen by Stripes.
Include Hadiya by Stripes.
Include Hanu by Kernog.
Include Harold by Sarokcat.
Include Hayato by Stripes.
Include Help Book by Prometheus.
Include HornyHorsey by femtoAmpere.
[Include Horus by Rikaeus.]
Include Hungry Boar Man by Closerhenry.
Include Hyper Squirrel by Nuku Valente.
Include HypnoGeeks by Luneth.
Include Icarus by Stripes.
Include Ice Fox by Wahn.
Include Inflatable Orca by Song.
Include Inflatable Otter Suit by Song.
Include Informant by Kaleem mcintyre.
Include Janice by Sarokcat.
Include Jake by Rikaeus.
Include Jay by Wahn.
Include Jenna by Rikaeus.
Include Jimmy by Stripes.
Include Joanna by Stripes.
Include Joey by Qazarar.
Include Joshiro by Wahn.
Include J'Reth by Prometheus.
Include Juergen by Wahn.
Include Julian by Prometheus.
Include Kai by WhiteRabbit.
Include Kara by Sarokcat.
Include Karen by AGentlemanCalledB.
Include Katherine by Kirov.
Include Krampus by Wahn.
Include Kristen by Stripes.
Include Kurt by Rikaeus.
Include Kyle by Qazarar.
Include Kyrverth by Speedlover.
Include Lance by Verath.
Include Landon by Luneth.
Include Larissa by Stripes.
Include Leon by Luneth.
Include Leonard by Stripes.
Include Lilith by Wahn.
Include Lindsey by Sarokcat.
Include Lingau by Wahn.
Include Logan by Wahn.
Include Lucy by Stripes.
Include Lux & Umbra by Prometheus.
Include Mack by Stripes.
Include Malik by Wahn.
Include Mark by Wahn.
Include Mary by Luneth.
Include Master Mind by Stripes.
Include Master-of-Hell-Quest by Luneth.
Include Matriarch NPC by Stripes.
Include Meredith by Stripes.
Include Micaela by Stripes.
Include Midnight by Sarokcat.
Include Milo by CrimsonAsh.
Include Mogdraz by Gherod.
Include Monty by Wahn.
Include Mouse Taur by Nuku Valente.
Include Pet Mutt by CrimsonAsh.
Include Nadia by Wahn.
Include Nakoma by Song.
Include Nala by CrimsonAsh.
Include Nelson by Wahn.
Include Nermine by Wahn.
Include Nermine Quests by Wahn.
Include Newt by Stripes.
Include NPC Interactions by Wahn.
Include Oliver by Rikaeus.
Include Onyx by Sarokcat n Verath.
Include Orc Female by Wahn.
Include Orc Lair by Wahn.
Include Orthas by Stripes.
Include Otto Fuchs by Prometheus.
Include Palomino by Verath.
Include Paula by Stripes.
Include Percy by Taelyn.
Include Pericles by Rikaeus.
Include Phantom Dolphin by Blue Bishop.
Include Phantom Pony by Blue Bishop.
Include Poseidon by Rikaeus.
Include Pretty Kitty by Xenophiliac.
Include Ranae by Kurainyx.
Include Randall and Brad by Rikaeus.
Include Rane by Wahn.
Include Reece by Luneth.
Include RexxyEvent by AGentlemanCalledB.
Include Richard by Rikaeus.
Include RodAndRonda by Stripes.
Include Roman by Kernog.
Include Sally by Stripes.
Include Sakura Sato by Rikaeus.
Include Sam by Stripes.
Include Santa Claws by Wahn.
Include Sarah by Wahn.
Include Savina by Kurainyx.
Include Serafino by Rikaeus.
Include Seraphis by Vinickus.
Include Serenity by Kurainyx.
Include Sheng by Rikaeus.
Include Sidney by Stripes.
Include Sirius by Prometheus.
Include Skarnoth by Wahn.
Include Skarnoth Loyalty by Luneth.
Include Skarnoth-Brutus Scenes by Luneth.
Include Solstice by Stripes.
Include Sonny by Rikaeus.
Include Spike by Wahn.
Include Stag by Wahn.
Include Stella by Stripes.
Include Stewart by Rikaeus.
Include Stuck Dragon by Stripes.
Include Sven by Stripes.
Include Sylvia by Prometheus.
Include Tanuki by Nuku Valente.
Include Tehuantl by Wahn.
Include Tenvale Gorillas Football Team by Kernog.
Include The-Voice by Luneth.
Include Thomas by Wahn.
Include Thunderbolt by CrimsonAsh.
Include Timothy by Sarokcat.
Include Tobias by Wahn.
Include Toron by Gherod.
Include Tristian by Verath.
Include Urik by Wahn.
Include Val by Wahn.
Include Vanessa by Stripes.
Include Velos by Blue Bishop.
Include Vent Fox by Dys.
Include Voria by Kurainyx.
Include Wally by Rikaeus.
Include Wendy by Wahn.
Include Wild Mustang by Wahn.
Include Yolanda by Stripes.
Include Zeke by Qazarar.
Include Zephias by Wahn.
Include Zigor by Stripes.
Include Zoe by Kernog.

[Pets]
Include Artemis by Stripes.
Include Aurora by Stripes.
Include Baby Pets by Luneth.
Include Equinoid Warrior by Song.
Include Felinoid Companion by Sarokcat.
Include Feral Pets by Luneth.
Include Gryphon Companion by Sarokcat.
Include Honey by Luneth.
Include Korvin by Wahn.
Include Rachel Mouse by Stripes.
Include Ryousei by Wahn.


Book - Start the Game

instead of going somewhere while player is overburdened:
	say "You are too over burdened to move. Drop some of that junk!";

instead of going through a dangerous door (called x):
	if HP of Player < 1:
		say "You are too injured to go far. You rest instead.";
		Rest;
	else:
		now battleground is marea of x;
		follow the explore rule;

gsgl is a number that varies. gsgl is usually 1.
glstart is a number that varies. glstart is usually 2.
glshiftstart is a number that varies. glshiftstart is usually 0.

to genderlockmenu:
	now calcnumber is -1;
	let gsexit be 0;
	while gsexit is 0:
		say "[bold type]Select a gender lock:[roman type][line break]";
		say "(1) [link]None[as]1[end link] - There is no restriction to your gender-transformation. You receive a 5% point bonus from this selection at game end.";
		say "(2) [link]Random[as]2[end link] - Fond of Excitement? A random lock is chosen for you at game start!";
		say "[line break]";
		say "[bold type]Standard:[roman type][line break]";
		say "(3) [link]Male[as]3[end link] - You reject all female mutations.";
		say "(4) [link]Female[as]4[end link] - You reject all male mutations.";
		say "[line break]";
		say "[bold type]Hybrid:[roman type][line break]";
		say "(5) [link]Shemale[as]5[end link] - You will trend to the configuration of a herm - however lacking female genitalia.";
		say "(6) [link]Cuntboy[as]6[end link] - You will trend to the configuration of a female - however lacking any breasts.";
		say "(7) [link]Male Herm[as]7[end link] - You will trend to the configuration of a herm - however lacking any breasts.";
		say "(8) [link]Herm[as]8[end link] - You take on the configuration of a full herm.";
		say "[line break]";
		say "[bold type]Loose:[roman type][line break]";
		say "(9) [link]Always Cocky[as]9[end link] - Regardless of mutation, you always retain some male anatomy.";
		say "(10) [link]Always a Pussy[as]10[end link] - Regardless of mutation, you always retain some female anatomy.";
		say "(11) [link]Single Sexed[as]11[end link] - Regardless of mutation, you will never be a herm.";
		say "(12) [link]Flat Chested[as]12[end link] - Regardless of mutation, you never gain breasts.";
		say "(13) [link]Simplified Masculine[as]13[end link] - Flat Chested + Single-Sexed.";
		say "[line break]";
		say "(0) [link]Return to main menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-13)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 13:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is not 0:
			now gsgl is calcnumber;
			now gsexit is 1;
		else:
			now gsexit is 1;
[ no longer used since the player can set their detailed gender now
			if gsgl > 1 and glshiftstart is 0:
				say "Would you like to start as your chosen gender lock?";
				if Player consents:
					now glstart is 1;
				else:
					now glstart is 2;
			else:
				now glstart is 2;
		else:
			now gsexit is 1;
]


to startgenderlockget:
	say "Locking Gender...";
	if gsgl is 2:
		now gsgl is a random number between 3 and 11;
	if gsgl > 1:
		if gsgl is 3:
			say "Locked to male gender.";
			add "Male Preferred" to feats of Player;
		else if gsgl is 4:
			say "Locked to female gender.";
			add "Female Preferred" to feats of Player;
		else if gsgl is 5:
			say "Locked to shemale configuration.";
			add "Male Preferred" to feats of Player;
			add "Breasts" to feats of Player;
		else if gsgl is 6:
			say "Locked to cuntboy configuration.";
			add "Female Preferred" to feats of Player;
			add "Flat Chested" to feats of Player;
		else if gsgl is 7:
			say "Locked to male herm configuration.";
			add "Herm Preferred" to feats of Player;
			add "Flat Chested" to feats of Player;
		else if gsgl is 8:
			say "Locked to herm configuration.";
			add "Herm Preferred" to feats of Player;
		else if gsgl is 9:
			say "Male anatomy locked in.";
			add "Always Cocky" to feats of Player;
		else if gsgl is 10:
			say "Female anatomy locked in.";
			add "Always A Pussy" to feats of Player;
		else if gsgl is 11:
			say "Locked to a singular gender at a time.";
			add "Single Sexed" to feats of Player;
		else if gsgl is 12:
			say "Locked to be flat chested.";
			add "Flat Chested" to feats of Player;
		else if gsgl is 13:
			say "Locked to male or cuntboy.";
			add "Single Sexed" to feats of Player;
			add "Flat Chested" to feats of Player;

To startgenderlockshift:
	now glshiftstart is 1;
	if gsgl < 2 and glstart is 1:
		say "You chose to start as your gender lock option, but have not selected one. Would you like to do so now?";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Choose a gender lock.";
		say "     ([link]N[as]n[end link]) - Start game without lock.";
		if Player consents:
			genderlockmenu;
	if gsgl is:
		-- 3:	[male]
			now Cock Count of Player is 1;
			now Cock Length of Player is 6;
			now the Ball Size of Player is 3;
			now Breast Size of Player is 0;
			remove womanhood from Player;
		-- 4:		[female]
			now Cunt Count of Player is 1;
			now Cunt Depth of Player is 6;
			now Cunt Tightness of Player is 4;
			now Breast Size of Player is 2;
			remove manhood from Player;
		-- 5:		[shemale]
			now Cock Count of Player is 1;
			now Cock Length of Player is 6;
			now the Ball Size of Player is 3;
			now Breast Size of Player is 2;
			remove womanhood from Player;
		-- 6: [cuntboy]
			now Cunt Count of Player is 1;
			now Cunt Depth of Player is 6;
			now Cunt Tightness of Player is 4;
			now Breast Size of Player is 0;
			remove manhood from Player; [balls not included ;-)]
		-- 7: [male herm]
			now Cock Count of Player is 1;
			now Cock Length of Player is 6;
			now the Ball Size of Player is 3;
			now Cunt Count of Player is 1;
			now Cunt Depth of Player is 6;
			now Cunt Tightness of Player is 4;
			now Breast Size of Player is 0;
		-- 8: [herm]
			now Cock Count of Player is 1;
			now Cock Length of Player is 6;
			now the Ball Size of Player is 3;
			now Cunt Count of Player is 1;
			now Cunt Depth of Player is 6;
			now Cunt Tightness of Player is 4;
			now Breast Size of Player is 2;
		-- 9: [always cocky]
			now Cock Count of Player is 1;
			now Cock Length of Player is 6;
			now the Ball Size of Player is 3;
		-- 10: [always a pussy]
			now Cunt Count of Player is 1;
			now Cunt Depth of Player is 6;
			now Cunt Tightness of Player is 4;
		-- 12: [flat chested]
			now Breast Size of Player is 0;
		-- 13: [simplified masculine]
			now Breast Size of Player is 0;

To startFeatget: [alternate featget used for start] [Checkpoint-]
	clear the screen;
	say "Select a basic feat. This represents a skill or innate ability you have.";
	blank out the whole of table of gainable feats;
	repeat with x running through functional featsets:
		try addfeating x;
	if there is no title in row 1 of table of gainable feats:
		say "There are no feats to gain!";
		wait for any key;
	else:
		now featqualified is 1;
		while 1 is 1:
			repeat with y running from 1 to number of filled rows in table of gainable feats:
				choose row y from the table of gainable feats;
				say "[link][y] - [title entry][as][y][end link][line break]";
			say "Type the number corresponding to the feat you want> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of gainable feats:
				now current menu selection is calcnumber;
				choose row current menu selection from the table of gainable feats;
				say "[title entry]: [description entry]?";
				if Player consents:
					now freefeatgeneral is the title in row calcnumber of table of gainable feats; [important change from regular featget]
					now featqualified is 0;
				break; [if featqualified is 0, ]
			else if Playerinput matches "0":	[do not use calcnumber, as non-numbers will return 0]
				say "Selection aborted.";
				continue the action;
			else:
				say "Invalid Feat.";

To startFunFeatget: [alternate funfeatget used for start]
	clear the screen;
	say "Select a fun feat. This represents some strange quirk or effect induced by the nanites.";
	blank out the whole of table of gainable feats;
	repeat with x running through not functional featsets:
		try addfeating x;
	if there is no title in row 1 of table of gainable feats:
		say "There are no feats to gain!";
		wait for any key;
	else:
		now featqualified is 1;
		while 1 is 1:
			repeat with y running from 1 to number of filled rows in table of gainable feats:
				choose row y from the table of gainable feats;
				say "[link][y] - [title entry][as][y][end link][line break]";
			say "Type the number corresponding to the feat you want> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of gainable feats:
				now current menu selection is calcnumber;
				choose row current menu selection from the table of gainable feats;
				say "[title entry]: [description entry]?";
				if Player consents:
					now freefeatfun is the title in row calcnumber of table of gainable feats; [important change from regular featget]
					now featqualified is 0;
				break; [if featqualified is 0, ]
			else if Playerinput matches "0":	[do not use calcnumber, as non-numbers will return 0]
				say "Selection aborted.";
				continue the action;
			else:
				say "Invalid Feat.";

to randomstatstart:	[same total points, but spread randomly between 10 to 18]
	now Strength of Player is 10;
	now Dexterity of Player is 10;
	now Stamina of Player is 10;
	now Charisma of Player is 10;
	now Intelligence of Player is 10;
	now Perception of Player is 10;
	[Boost two stats for increased spread in results]
	let T be a random number between 1 and 6;
	if T is 1:
		increase strength of Player by 3;
	if T is 2:
		increase dexterity of Player by 3;
	if T is 3:
		increase stamina of Player by 3;
	if T is 4:
		increase charisma of Player by 3;
	if T is 5:
		increase intelligence of Player by 3;
	if T is 6:
		increase perception of Player by 3;
	now T is a random number between 1 and 6;
	if T is 1:
		increase strength of Player by 2;
	if T is 2:
		increase dexterity of Player by 2;
	if T is 3:
		increase stamina of Player by 2;
	if T is 4:
		increase charisma of Player by 2;
	if T is 5:
		increase intelligence of Player by 2;
	if T is 6:
		increase perception of Player by 2;
	now tempnum is 12; [remaining 12 points applied randomly one at a time]
	while tempnum is not 0:
		now T is a random number between 1 and 6;
		decrease tempnum by 1;
		if T is 1:
			increase strength of Player by 1;
			if strength of Player > 18:
				now strength of Player is 18;
				increase tempnum by 1;
		if T is 2:
			increase dexterity of Player by 1;
			if dexterity of Player > 18:
				now dexterity of Player is 18;
				increase tempnum by 1;
		if T is 3:
			increase stamina of Player by 1;
			if stamina of Player > 18:
				now stamina of Player is 18;
				increase tempnum by 1;
		if T is 4:
			increase charisma of Player by 1;
			if charisma of Player > 18:
				now charisma of Player is 18;
				increase tempnum by 1;
		if T is 5:
			increase intelligence of Player by 1;
			if intelligence of Player > 18:
				now intelligence of Player is 18;
				increase tempnum by 1;
		if T is 6:
			increase perception of Player by 1;
			if perception of Player > 18:
				now perception of Player is 18;
				increase tempnum by 1;

To startfreefeats: [gives free feats]
	now autofeatloading is true; [temporarily skips asking permission to add preset feats]
	say "Attempting to add general feat [freefeatgeneral] to player.";
	now current menu selection is 0;
	blank out the whole of table of gainable feats;
	repeat with x running through functional featsets:
		try addfeating x;
	now featqualified is 1;
	[chooses the row with the selected feat]
	repeat with y running from 1 to number of filled rows in table of gainable feats:
		choose row y in table of gainable feats;
		if title entry is freefeatgeneral:
			now current menu selection is y;
			follow the gainfeat rule;
			break;
	if current menu selection is 0:
		say "Invalid Feat: Select a new choice now.";
		now autofeatloading is false;
		featget; [reverts to standard method]
		now autofeatloading is true;
	say "Attempting to add fun feat [freefeatfun] to player.";
	now current menu selection is 0;
	blank out the whole of table of gainable feats;
	repeat with x running through not functional featsets:
		try addfeating x;
	now featqualified is 1;
	[chooses the row with the selected feat]
	repeat with y running from 1 to number of filled rows in table of gainable feats:
		choose row y in table of gainable feats;
		if title entry is freefeatfun:
			now current menu selection is y;
			follow the gainfeat rule;
			decrease featgained of Player by 1;
			break;
	if current menu selection is 0:
		say "Invalid Feat: Select a new choice now.";
		now autofeatloading is false;
		funfeatget; [reverts to standard method]
		now autofeatloading is true;
	now autofeatloading is false;

To startcreatureban: [bans creatures, as requested]
	say "Banning creatures...";
	repeat through the Table of Random Critters:
		let bad be 0;
		repeat with n running through all banned flags:
			if Name entry is listed in infections of n:
				now bad is 1;
		if bad is 1:
			now BannedStatus entry is true;
[ replaced with the above line so that the Table of Random Critters stays the same
			blank out the whole row;
]
	say "Banning situations...";
	repeat with n running through situations:
		let bad be 0;
		repeat with q running through all banned flags:
			if n is listed in badspots of q:
				say "[n] removed due to [q].";
				now bad is 1;
		repeat with q running through all banned tags:
			if n is listed in badspots of q:
				say "[n] removed due to [q].";
				now bad is 1;
		if bad is 1:
			now n is inactive;
	say "Sorting creatures...";
	sort Table of Random Critters in lev order;

Section Story Start Text

To regularstart: [normal start method]
	if invcolumns < 1 or invcolumns > 4, now invcolumns is 2;
	follow the starting stats rule;
	follow the starting gender rule;
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0:
		clear the screen;
		say "[bold type]Character Creation:[roman type][line break]";
		say "(1) [link]Name[as]1[end link] - [bold type][name of Player][roman type][line break]";
		say "(2) [link]Character Customization[as]2[end link][line break]";
		say "(3) [link]Main Stat[as]3[end link] - [bold type][if gsms is 1]Strength[else if gsms is 2]Dexterity[else if gsms is 3]Stamina[else if gsms is 4]Charisma[else if gsms is 5]Intelligence[else if gsms is 6]Perception[else]Random[end if][roman type][line break]";
		say "(4) [link]Main Feat[as]4[end link] - [bold type][freefeatgeneral][roman type][line break]";
		say "(5) [link]Fun Feat[as]5[end link] - [bold type][freefeatfun][roman type][line break]";
		say "[line break]";
		say "[bold type]Gameplay Options:[roman type][line break]";
		say "(6) [link]Game Scenario[as]6[end link] - [bold type][scenario][roman type][line break]";
		say "(7) [link]Difficulty Modes[as]7[end link] - [if gshm is false and gsnhm is false and gsbm is false][bold type]Normal[roman type][else if gshm is true][bold type]Hard[roman type][end if][if gshm is true and ( gsnhm is true or gsbm is true )] | [end if][if gsnhm is true][bold type]No-Heal[roman type][end if][if gsnhm is true and gsbm is true] | [end if][if gsbm is true][bold type]Blind[roman type][end if][line break]";
		say "(8) [link]Content Restrictions[as]8[end link][line break]";
		say "[line break]";
		say "[bold type]Display Options:[roman type][line break]";
		say "(9) [link]Hyperlinks[as]9[end link] - [bold type][if hypernull is 0]On[else if hypernull is 1]Off[end if][roman type][line break]";
		say "(10) [link]Waiting for Input[as]10[end link] - [bold type][if waiterhater is 0]On[else if waiterhater is 1]Off[end if][roman type][line break]";
		say "(11) [link]Screen Clearing[as]11[end link] - [bold type][if clearnomore is 0]On[else if clearnomore is 1]Off[end if][roman type][line break]";
		say "(12) [link]Graphics[as]12[end link] - [bold type][if NewGraphicsInteger is 1]Inline[else if NewGraphicsInteger is 2]Side-Window[else if NewGraphicsInteger is 0]DISABLED[end if][roman type][line break]";
		say "(13) [link]Inventory Columns[as]13[end link] - [bold type][invcolumns][roman type][line break]";
		say "[line break]";
		say "(99) [link]Restore a save[as]99[end link][line break]";
		say "(0) [link]Start Game[as]0[end link][line break]";
		while 1 is 1:
			say "(0-13)>[run paragraph on]";
			get a number;
			if ( calcnumber >= 0 and calcnumber <= 13 ) or calcnumber is 99:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is:
			-- 1:
				playernaming;
			-- 2:
				newplayercustomizationmenu;
			-- 3:
				say "[gsopt_1]"; [Main Stat]
			-- 4:
				startFeatget;
			-- 5:
				startFunFeatget;
			-- 6:
				say "[gsopt_3]"; [Game Scenario]
			-- 7:
				say "[gsopt_4]"; [Difficulty Modes]
			-- 8:
				contentrestrictionmenu;
			-- 9:
				if hypernull is 0:
					now hypernull is 1;
				else:
					now hypernull is 0;
			-- 10:
				if waiterhater is 0:
					now waiterhater is 1;
				else:
					now waiterhater is 0;
			-- 11:
				if clearnomore is 0:
					now clearnomore is 1;
				else:
					now clearnomore is 0;
			-- 12:
				if NewGraphicsInteger is 1:
					now graphics is true; [technically not necessary, but nice to have for edge cases]
					now NewGraphics is true;
					now NewGraphicsInteger is 2;
				else if NewGraphicsInteger is 2:
					now graphics is false;
					now NewGraphics is false;
					now NewGraphicsInteger is 0;
				else if NewGraphicsInteger is 0:
					now graphics is true;
					now NewGraphics is false;
					now NewGraphicsInteger is 1;
			-- 13:
				say "[set_invcolumns]";
			-- 99:
				say "Confirm restore?";
				if Player consents:
					now RestoreMode is true;
					say "[silent_start]";
					now Trixieexit is 1;
					if RestoreMode is true:
						now RestoreMode is false;
						try restoring the game;
						if maxHP of Player is 0:
							try restarting the game;
			-- 0:
				say "Confirm game start?";
				if Player consents:
					if Name of Player is not "DebugTesting": [nullifies Human new infection parts until the new system goes live]
						now HeadName of Player is "";
						now TorsoName of Player is "";
						now BackName of Player is "";
						now ArmsName of Player is "";
						now LegsName of Player is "";
						now CuntName of Player is "";
					say "[gsopt_start]";
					now Trixieexit is 1;

to newplayercustomizationmenu:
	if Name of Player is not "DebugTesting": [reduced menu until the new system goes live]
		now calcnumber is -1;
		let charactermenuexit be 0;
		while charactermenuexit is 0:
			clear the screen;
			say "[line break][bold type]Character Customization:[roman type][line break]";
			say "(1) [link]Player Gender[as]1[end link] - [bold type][if gspg is 1]Male[else]Female[end if][roman type][line break]";
			say "(2) [link]Player Sexual Experience[as]2[end link]: [playervirginsay][line break]";
			say "(3) [link]Gender Lock[as]3[end link] - [bold type][if gsgl is 1]None[else if gsgl is 2]Random[else if gsgl is 3]Male[else if gsgl is 4]Female[else if gsgl is 5]Shemale[else if gsgl is 6]Cuntboy[else if gsgl is 7]Male Herm[else if gsgl is 8]Herm[else if gsgl is 9]Always Cocky[else if gsgl is 10]Always a Pussy[else if gsgl is 11]Single Sexed[else if gsgl is 12]Flat Chested[else if gsgl is 13]Simplified Masculine[else]ERROR[end if][roman type][line break]";
			say "(4) [link]Player Pronouns[as]4[end link] - [bold type][PronounChoice of Player][roman type][line break]";
			say "[line break]";
			say "(0) [link]Return to main menu[as]0[end link][line break]";
			while 1 is 1:
				say "Choice? (0-4)>[run paragraph on]";
				get a number;
				if calcnumber >= 0 and calcnumber <= 4:
					break;
				else:
					say "Invalid Entry";
			LineBreak;
			if calcnumber is 1:
				say "[gsopt_2]";
			else if calcnumber is 2:
				playersexsetting;
			else if calcnumber is 3:
				genderlockmenu;
			else if calcnumber is 4:
				try pronounsetting;
			else:
				now charactermenuexit is 1;
	else: [just for testing till the new system goes live]
		now calcnumber is -1;
		let charactermenuexit be 0;
		while charactermenuexit is 0:
			clear the screen;
			say "[line break][bold type]Character Customization:[roman type][line break]";
			say "(1) [link]Gender Settings & Orientation[as]1[end link][line break]";
			say "(2) [link]Gender Lock[as]2[end link] - [bold type][if gsgl is 1]None[else if gsgl is 2]Random[else if gsgl is 3]Male[else if gsgl is 4]Female[else if gsgl is 5]Shemale[else if gsgl is 6]Cuntboy[else if gsgl is 7]Male Herm[else if gsgl is 8]Herm[else if gsgl is 9]Always Cocky[else if gsgl is 10]Always a Pussy[else if gsgl is 11]Single Sexed[else if gsgl is 12]Flat Chested[else if gsgl is 13]Simplified Masculine[else]ERROR[end if][roman type][line break]";
			say "(3) [link]Player Sexual Experience[as]3[end link]: [playervirginsay][line break]";
			say "(4) [link]Player Hair[as]4[end link]: Head Hair: [Hair Shape of Player] [Hair Color of Player] [Hair Style of Player]; [if Player is Hasbeard]Beard: [Beard Style of Player];[end if] Body Hair: [Body Hair Adjective of Player][line break]";
			say "(5) [link]Eye Color[as]5[end link]: [Eye Color of Player][line break]";
			say "(6) [link]Skin Color[as]6[end link]: [Torso Color of Player][line break]";
			say "(7) [link]Body Type[as]7[end link]: [Body Adjective of Player][line break]";
			say "(8) [link]Player Pronouns[as]8[end link] - [bold type][PronounChoice of Player][roman type][line break]";
			say "[line break]";
			say "(0) [link]Return to main menu[as]0[end link][line break]";
			while 1 is 1:
				say "Choice? (0-9)>[run paragraph on]";
				get a number;
				if calcnumber >= 0 and calcnumber <= 9:
					break;
				else:
					say "Invalid Entry";
			LineBreak;
			if calcnumber is 1:
				gendersetting;
			else if calcnumber is 2:
				genderlockmenu;
			else if calcnumber is 3:
				playersexsetting;
			else if calcnumber is 4:
				hairsetting;
			else if calcnumber is 5:
				eyecolorsetting;
			else if calcnumber is 6:
				skincolorsetting;
			else if calcnumber is 7:
				bodytypesetting;
			else if calcnumber is 8:
				try pronounsetting;
			else:
				now charactermenuexit is 1;

to contentrestrictionmenu:
	now calcnumber is -1;
	let contentrestrictionmenuexit be 0;
	while contentrestrictionmenuexit is 0:
		clear the screen;
		say "(1) [link]Banned/Warded Types[as]1[end link] - [menuwardlist] & [menubanlist] [line break]";
		say "(2) [link]Anal Content[as]2[end link] - [bold type][if anallevel is 1]Less[else if anallevel is 2]Normal[else if anallevel is 3]More[end if][roman type][line break]";
		say "(3) [link]WS Content[as]3[end link] - [bold type][if wslevel is 1]None[else if wslevel is 2]Normal[else if wslevel is 3]Full[end if][roman type][line break]";
		say "(4) [link]Vore/UB Content[as]4[end link] - Vore: [bold type][if vorelevel is 1]None[else if vorelevel is 2]Normal[else if vorelevel is 3]Full[end if][roman type] - Unbirth: [bold type][if ublevel is 1]None[else if ublevel is 2]Normal[else if ublevel is 3]Full[end if][roman type][line break]";
		say "(5) [link]Ovi Pregnancy[as]5[end link] - [bold type][if ovipreglevel is 1]Never[else]Normal[end if][roman type][line break]";
		say "[line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-5)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 5:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is 1:
			if clearnomore is 0, clear the screen;
			new ban menu;
		else if calcnumber is 2:
			try analadjusting;
		else if calcnumber is 3:
			try WSadjusting;
		else if calcnumber is 4:
			try voremenuing;
		else if calcnumber is 5:
			try oviadjusting;
		else:
			now contentrestrictionmenuexit is 1


to gendersetting:
	now calcnumber is -1;
	let gendermenuexit be 0;
	while gendermenuexit is 0:
		clear the screen;
		say "[bold type]Gender Settings:[roman type][line break]";
		say "(1) [link]Cock Length[as]1[end link]: [if Cock Count of Player > 0][Cock Length of Player] inches long[else]none[end if][line break]";
		say "(2) [link]Cock Girth[as]2[end link]: [if Cock Count of Player > 0][Cock Girth Adjective of Player][else]none[end if][line break]";
		say "(3) [link]Ball Size[as]3[end link]: [if Cock Count of Player > 0][Ball Size Adjective of Player][else]none[end if][line break]";
		say "(4) [link]Cunt Depth[as]4[end link]: [if Cunt Count of Player > 0][Cunt Depth of Player] inches deep[else]none[end if][line break]";
		say "(5) [link]Cunt Tightness[as]5[end link]: [if Cunt Count of Player > 0][Cunt Tightness Adjective of Player][else]none[end if][line break]";
		say "(6) [link]Clit Size[as]6[end link]: [if Cunt Count of Player > 0][Clit Size Adjective of Player][else]none[end if][line break]";
		say "(7) [link]Breast Size[as]7[end link]: [if Breast Size of Player > 0][Breast Size Description of Player] breasts[else][Pecs Firmness Adjective of Player], [Pecs Size Adjective of Player] pecs (depends on body type)[end if][line break]";
		say "(8) [link]Breast Shape[as]8[end link]: [if Breast Size of Player > 0][Breast Adjective of Player][else]none[end if][line break]";
		say "--------------------------------------------------------------------------------[line break]";
		say "(9) [link]Gender Appearance & Behavior[as]9[end link]: [Gender Adjective of Player][line break]";
		say "(10) [link]Sexual Orientation[as]10[end link] [line break]";
		say "[line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-10)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 10:
				break;
			else:
				say "Invalid Entry.";
				wait for any key;
		if calcnumber is 1: [cock length]
			now calcnumber is -1;
			while calcnumber <= 0:
				say "Please enter a number from 0-13 for your penis length in inches.";
				get a number; [returns as calcnumber]
				if calcnumber >= 0 and calcnumber <= 13: [Valid choice, else repeat]
					break;
				else:
					say "Invalid Entry.";
					wait for any key;
			now Cock Length of Player is calcnumber;
			if Cock Length of Player is 0: [no cock at all!]
				remove manhood from Player;
			else: [cock present]
				now Cock Count of Player is 1;
				now Cock Girth of Player is 3; [average thickness]
				now Ball Size of Player is 2; [dove-egg]
				remove womanhood from Player; [no pre-infection herms]
			now calcnumber is -1; [resetting calcnumber for the main menu]
		else if calcnumber is 2: [cock girth]
			now calcnumber is -1;
			if Cock Count of Player is 0:
				say "Invalid Option. No cock detected.";
				wait for any key;
			else:
				while calcnumber <= 0:
					say "Please enter a number from 1-5 for your penis girth on a scale of thin/slender/average/thick/monstrous.";
					get a number; [returns as calcnumber]
					if calcnumber >= 1 and calcnumber <= 5: [Valid choice, else repeat]
						break;
					else:
						say "Invalid Entry.";
						wait for any key;
				now Cock Girth of Player is calcnumber;
			now calcnumber is -1; [resetting calcnumber for the main menu]
		else if calcnumber is 3: [ball size]
			now calcnumber is -1;
			if Cock Count of Player is 0:
				say "Invalid Option. No cock detected.";
				wait for any key;
			else:
				while calcnumber <= 0:
					say "Please choose 1 (acorn sized), 2 (dove-egg sized) or 3 (chicken egg sized).";
					get a number; [returns as calcnumber]
					if calcnumber >= 1 and calcnumber <= 3: [Valid choice, else repeat]
						break;
					else:
						say "Invalid Entry.";
						wait for any key;
				now Ball Size of Player is calcnumber;
			now calcnumber is -1; [resetting calcnumber for the main menu]
		else if calcnumber is 4: [Cunt Depth]
			now calcnumber is -1;
			while calcnumber <= 0:
				say "Please enter a number from 0-13 for your pussy depth in inches.";
				get a number; [returns as calcnumber]
				if calcnumber >= 0 and calcnumber <= 13: [Valid choice, else repeat]
					break;
				else:
					say "Invalid Entry.";
					wait for any key;
			now Cunt Depth of Player is calcnumber;
			if Cunt Depth of Player is 0: [no Cunt at all!]
				remove womanhood from Player;
			else: [Cunt present]
				now Cunt Count of Player is 1;
				now Cunt Tightness of Player is 5; [tight]
				now Clit Size of Player is 3; [average]
				remove manhood from Player; [no pre-infection herms]
			now calcnumber is -1; [resetting calcnumber for the main menu]
		else if calcnumber is 5: [Cunt Tightness]
			now calcnumber is -1;
			if Cunt Count of Player is 0:
				say "Invalid Option. No pussy detected.";
				wait for any key;
			else:
				while calcnumber <= 0:
					say "Please enter a number (1-15) for the circumference of your pussy in inches.";
					get a number; [returns as calcnumber]
					if calcnumber >= 1 and calcnumber <= 15: [Valid choice, else repeat]
						break;
					else:
						say "Invalid Entry.";
						wait for any key;
				now Cunt Tightness of Player is calcnumber;
			now calcnumber is -1; [resetting calcnumber for the main menu]
		else if calcnumber is 6: [clit size]
			now calcnumber is -1;
			if Cunt Count of Player is 0:
				say "Invalid Option. No pussy detected.";
				wait for any key;
			else:
				while calcnumber <= 0:
					say "Please enter a number from 1-5 for your clit size on a scale of very small/small/average/large/very large.";
					get a number; [returns as calcnumber]
					if calcnumber >= 1 and calcnumber <= 5: [Valid choice, else repeat]
						break;
					else:
						say "Invalid Entry.";
						wait for any key;
				now Clit Size of Player is calcnumber;
			now calcnumber is -1; [resetting calcnumber for the main menu]
		else if calcnumber is 7: [breast size]
			now calcnumber is -1;
			while calcnumber <= 0:
				say "Please enter a number from 0-7 for your breast size on a scale of flat/A cup/B cup/C cup/D Cup/DD cup/E cup/F cup.";
				get a number; [returns as calcnumber]
				if calcnumber >= 0 and calcnumber <= 7: [Valid choice, else repeat]
					now Breast Size of Player is calcnumber;
					break;
				else:
					say "Invalid Entry.";
					wait for any key;
			now calcnumber is -1; [resetting calcnumber for the main menu]
		else if calcnumber is 8: [breast type]
			now calcnumber is -1;
			if Breast Size of Player is 0:
				say "Invalid Option. No breasts detected.";
				wait for any key;
			else:
				while calcnumber <= 0:
					say "Please enter a number from 1-5 for your breast type on a scale of round/pointy/perky/saggy/bouncy.";
					get a number; [returns as calcnumber]
					if calcnumber >= 1 and calcnumber <= 5: [Valid choice, else repeat]
						break;
					else:
						say "Invalid Entry.";
						wait for any key;
				if calcnumber is:
					-- 1:
						now Breast Adjective of Player is "round";
					-- 2:
						now Breast Adjective of Player is "pointy";
					-- 3:
						now Breast Adjective of Player is "perky";
					-- 4:
						now Breast Adjective of Player is "saggy";
					-- 5:
						now Breast Adjective of Player is "bouncy";
			now calcnumber is -1; [resetting calcnumber for the main menu]
		else if calcnumber is 9:
			now calcnumber is -1;
			while calcnumber <= 0:
				say "Please enter a number from 1-9. 1 being hypermasculine, 5 adrogynous, and 9 hyperfeminine:[line break]";
				say "Note: This refers to the overall physical appearance and behaviour of the player, not their actual genitals.";
				get a number; [returns as calcnumber]
				if calcnumber >= 1 and calcnumber <= 9: [Valid choice, else repeat]
					break;
				else:
					say "Invalid Entry.";
					wait for any key;
			now Androginity of Player is calcnumber;
			now calcnumber is -1; [resetting calcnumber for the main menu]
		else if calcnumber is 10:
			PlayerSexualOrientationMenu;
		else:
			now gendermenuexit is 1;

to PlayerSexualOrientationMenu:
	now calcnumber is -1;
	let OrientationMenuExit be 0;
	while OrientationMenuExit is 0:
		clear the screen;
		say "[bold type]Interested in: (select Yes for all that apply)[roman type][line break]";
		say "(1) [link]Males (penis)[as]1[end link] - [if MaleInterest of Player is true][special-style-1]Yes[else][special-style-2]No[end if][roman type][line break]";
		say "(2) [link]Trans Males (male with vagina)[as]2[end link] - [if TransMaleInterest of Player is true][special-style-1]Yes[else][special-style-2]No[end if][roman type][line break]";
		say "(3) [link]Females (pussy)[as]3[end link] - [if FemaleInterest of Player is true][special-style-1]Yes[else][special-style-2]No[end if][roman type][line break]";
		say "(4) [link]Trans Females (female with penis)[as]4[end link] - [if TransFemaleInterest of Player is true][special-style-1]Yes[else][special-style-2]No[end if][roman type][line break]";
		say "(5) [link]Herms (both vagina + penis)[as]5[end link] - [if HermInterest of Player is true][special-style-1]Yes[else][special-style-2]No[end if][roman type][line break]";
		say "[line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 2 is 2:
			say "Choice? (0-5)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 5:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is 1:
			if MaleInterest of Player is true:
				now MaleInterest of Player is false;
			else if MaleInterest of Player is false:
				now MaleInterest of Player is true;
		else if calcnumber is 2:
			if TransMaleInterest of Player is true:
				now TransMaleInterest of Player is false;
			else if TransMaleInterest of Player is false:
				now TransMaleInterest of Player is true;
		else if calcnumber is 3:
			if FemaleInterest of Player is true:
				now FemaleInterest of Player is false;
			else if FemaleInterest of Player is false:
				now FemaleInterest of Player is true;
		else if calcnumber is 4:
			if TransFemaleInterest of Player is true:
				now TransFemaleInterest of Player is false;
			else if TransFemaleInterest of Player is false:
				now TransFemaleInterest of Player is true;
		else if calcnumber is 5:
			if HermInterest of Player is true:
				now HermInterest of Player is false;
			else if HermInterest of Player is false:
				now HermInterest of Player is true;
		else:
			now OrientationMenuExit is 1;

UsePlayerSexualOrientationMenu is an action applying to nothing.
understand "adjust player interests" as UsePlayerSexualOrientationMenu.

carry out UsePlayerSexualOrientationMenu:
	PlayerSexualOrientationMenu;

to bodytypesetting:
	now calcnumber is -1;
	let bodymenuexit be 0;
	while bodymenuexit is 0:
		clear the screen;
		say "[bold type]Body Type: [Body Adjective of Player][roman type][line break]";
		say "(1) [link]Body Weight[as]1[end link]: [Body Weight of Player] - [if Body Weight of Player >= 1 and Body Weight of Player <= 3]Lightweight[else if Body Weight of Player >= 4 and Body Weight of Player <= 6]Middleweight[else if Body Weight of Player >= 7 and Body Weight of Player <= 9]Heavyweight[end if][line break]";
		say "(2) [link]Body Definition[as]2[end link]: [Body Definition of Player] - [if Body Definition of Player >= 1 and Body Definition of Player <= 3]Low Muscle[else if Body Definition of Player >= 4 and Body Definition of Player <= 6]Medium Muscle[else if Body Definition of Player >= 7 and Body Definition of Player <= 9]High Muscle[end if][line break]";
		say "(3) [if player is not conformist]Non-[end if][link]Conformist[as]3[end link]: ";
		if "Conformist" is listed in Feats of Player:
			say "Your body type, overall gender appearance, eye color, head hair and beard style will [bold type]change depending on your infection[roman type].";
			say "Note: This allows for drastic changes in body mass and appearance.";
			say "Example: A lightweight and medium muscle (slender) female human with tomboyish looks and mannerisms catches the German Shepherd Male infection. She will become a middleweight and high muscle (muscular) male German shepherd with masculine looks and mannerisms, complete with fur, tail, cock, etc.";
		else:
			say "Your body type, overall gender appearance, eye color, head hair and beard style will [bold type]stay constant despite infections[roman type].";
			say "Note: This just retains the overall recognizability of a person and does not make you immune to transformation. Everything else will still shift easily.";
			say "Example: A lightweight and medium muscle (slender) female human with tomboyish looks and mannerisms catches the German Shepherd Male infection. She will become a lightweight and medium muscle (slender) male German shepherd with tomboyish looks and mannerisms, complete with fur, tail, cock, etc.";
		say "[line break][line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-3)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 3:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is 1:
			now calcnumber is -1;
			while calcnumber <= 0:
				say "Please enter a number from 1-9. 1 being a very light build and 9 being a very heavy build:[line break]";
				get a number; [returns as calcnumber]
				if calcnumber >= 1 and calcnumber <= 9: [Valid choice, else repeat]
					break;
				else:
					say "Invalid Entry";
			now Body Weight of Player is calcnumber;
			now calcnumber is -1; [resetting calcnumber for the main menu]
		else if calcnumber is 2:
			now calcnumber is -1;
			while calcnumber <= 0:
				say "Please enter a number from 1-9. 1 being a barely defined body and 9 being a very highly defined body:[line break]";
				get a number; [returns as calcnumber]
				if calcnumber >= 1 and calcnumber <= 9: [Valid choice, else repeat]
					break;
				else:
					say "Invalid Entry";
			now Body Definition of Player is calcnumber;
			now calcnumber is -1; [resetting calcnumber for the main menu]
		else if calcnumber is 3:
			if "Conformist" is listed in Feats of player:
				remove "Conformist" from Feats of Player;
			else:
				add "Conformist" to Feats of Player;
		else:
			now bodymenuexit is 1;

to skincolorsetting:
	now calcnumber is -1;
	let menuexit be 0;
	while menuexit is 0:
		clear the screen;
		say "[bold type]Skin Color:[roman type][line break]";
		say "(1) [link]Very Fair[as]1[end link] ";
		if Torso Color of Player is "pale":
			say ": Current";
		LineBreak;
		say "(2) [link]Fair[as]2[end link] ";
		if Torso Color of Player is "fair":
			say ": Current";
		LineBreak;
		say "(3) [link]Medium[as]3[end link] ";
		if Torso Color of Player is "medium":
			say ": Current";
		LineBreak;
		say "(4) [link]Olive[as]4[end link] ";
		if Torso Color of Player is "olive":
			say ": Current";
		LineBreak;
		say "(5) [link]Brown[as]5[end link] ";
		if Torso Color of Player is "brown":
			say ": Current";
		LineBreak;
		say "(6) [link]Ebony[as]6[end link] ";
		if Torso Color of Player is "ebony":
			say ": Current";
		LineBreak;
		say "[line break]";
		say "(0) [link]Return to main menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-6)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 6:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is 1:
			now Head Color of Player is "pale";
			now Torso Color of Player is "pale";
			now Back Color of Player is "pale";
			now Arms Color of Player is "pale";
			now Legs Color of Player is "pale";
			now Ass Color of Player is "pale";
			now Cock Color of Player is "peach";
			now Cunt Color of Player is "taffy";
			now Asshole Color of Player is "taffy";
			now Nipple Color of Player is "pastel pink";
		else if calcnumber is 2:
			now Head Color of Player is "fair";
			now Torso Color of Player is "fair";
			now Back Color of Player is "fair";
			now Arms Color of Player is "fair";
			now Legs Color of Player is "fair";
			now Ass Color of Player is "fair";
			now Cock Color of Player is "dark almond";
			now Cunt Color of Player is "tan";
			now Asshole Color of Player is "tan";
			now Nipple Color of Player is "cognac";
		else if calcnumber is 3:
			now Head Color of Player is "medium";
			now Torso Color of Player is "medium";
			now Back Color of Player is "medium";
			now Arms Color of Player is "medium";
			now Legs Color of Player is "medium";
			now Ass Color of Player is "medium";
			now Cock Color of Player is "brown sugar";
			now Cunt Color of Player is "cinnamon";
			now Asshole Color of Player is "cinnamon";
			now Nipple Color of Player is "sweet cocoa";
		else if calcnumber is 4:
			now Head Color of Player is "olive";
			now Torso Color of Player is "olive";
			now Back Color of Player is "olive";
			now Arms Color of Player is "olive";
			now Legs Color of Player is "olive";
			now Ass Color of Player is "olive";
			now Cock Color of Player is "cinnamon";
			now Cunt Color of Player is "sienna";
			now Asshole Color of Player is "sienna";
			now Nipple Color of Player is "sweet cocoa";
		else if calcnumber is 5:
			now Head Color of Player is "brown";
			now Torso Color of Player is "brown";
			now Back Color of Player is "brown";
			now Arms Color of Player is "brown";
			now Legs Color of Player is "brown";
			now Ass Color of Player is "brown";
			now Cock Color of Player is "chocolate brown";
			now Cunt Color of Player is "umber brown";
			now Asshole Color of Player is "umber brown";
			now Nipple Color of Player is "walnut brown";
		else if calcnumber is 6:
			now Head Color of Player is "ebony";
			now Torso Color of Player is "ebony";
			now Back Color of Player is "ebony";
			now Arms Color of Player is "ebony";
			now Legs Color of Player is "ebony";
			now Ass Color of Player is "ebony";
			now Cock Color of Player is "dark chocolate";
			now Cunt Color of Player is "dark maroon";
			now Asshole Color of Player is "dark maroon";
			now Nipple Color of Player is "almost black";
		now menuexit is 1;

to hairsetting:
	now calcnumber is -1;
	let mainmenuexit be 0;
	while mainmenuexit is 0:
		clear the screen;
		say "[bold type]Hair Settings:[roman type][line break]";
		say "(1) [link]Hair Color[as]1[end link]: [Hair Color of Player][line break]";
		say "(2) [link]Hair Style[as]2[end link]: [Hair Style of Player][line break]";
		say "(3) [link]Hair Shape[as]3[end link]: [Hair Shape of Player][line break]";
		say "(4) [link]Beard Style[as]4[end link]: [Beard Style of Player][line break]";
		say "(5) [link]Body Hair Length[as]5[end link]: [Body Hair Adjective of Player][line break]";
		say "[line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-5)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 5:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is 1:
			HairColorSetting;
		else if calcnumber is 2:
			HairStyleSetting;
		else if calcnumber is 3:
			HairShapeSetting;
		else if calcnumber is 4:
			BeardStyleSetting;
		else if calcnumber is 5:
			BodyHairLengthSetting;
		else:
			now mainmenuexit is 1;

to HairShapeSetting:
	now calcnumber is -1;
	let menuexit be 0;
	while menuexit is 0:
		clear the screen;
		say "[bold type]Hair Shape:[roman type][line break]";
		say "(1) [link]Straight[as]1[end link] ";
		if Hair Shape of Player is "straight":
			say ": Current";
		LineBreak;
		say "(2) [link]Curly[as]2[end link] ";
		if Hair Shape of Player is "curly":
			say ": Current";
		LineBreak;
		say "(3) [link]Wavy[as]3[end link] ";
		if Hair Shape of Player is "wavy":
			say ": Current";
		LineBreak;
		say "[line break]";
		say "(0) [link]Return to main menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-3)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 3:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is:
			-- 1:
				now Hair Shape of Player is "straight";
			-- 2:
				now Hair Shape of Player is "curly";
			-- 3:
				now Hair Shape of Player is "wavy";
		now menuexit is 1;


to HairStyleSetting: [Afro, Bangs, Bob Cut, Bowl Cut, Braid, Bun, Buzzcut, Combover, Cornrows, Crew Cut, Curtained, Dreadlocks, Fauxhawk, Flattop, Lob, Mohawk, Mullet, Pageboy, Pigtails, Pompadour, Ponytail, Quiff, Rattail, Short Cut, Slicked-back, Spiky, Undercut]
	now calcnumber is -1;
	let menuexit be 0;
	while menuexit is 0:
		clear the screen;
		say "[bold type]Hair Style:[roman type][line break]";
		say "(1) [link]Afro[as]1[end link] ";
		if Hair Style of Player is "afro":
			say ": Current";
		LineBreak;
		say "(2) [link]Bangs[as]2[end link] ";
		if Hair Style of Player is "bangs":
			say ": Current";
		LineBreak;
		say "(3) [link]Bob Cut[as]3[end link] ";
		if Hair Style of Player is "bob cut":
			say ": Current";
		LineBreak;
		say "(4) [link]Bowl Cut[as]4[end link] ";
		if Hair Style of Player is "bowl cut":
			say ": Current";
		LineBreak;
		say "(5) [link]Braid[as]5[end link] ";
		if Hair Style of Player is "braid":
			say ": Current";
		LineBreak;
		say "(6) [link]Bun[as]6[end link] ";
		if Hair Style of Player is "bun":
			say ": Current";
		LineBreak;
		say "(7) [link]Buzzcut[as]7[end link] ";
		if Hair Style of Player is "buzzcut":
			say ": Current";
		LineBreak;
		say "(8) [link]Combover[as]8[end link] ";
		if Hair Style of Player is "combover":
			say ": Current";
		LineBreak;
		say "(9) [link]Cornrows[as]9[end link] ";
		if Hair Style of Player is "cornrows":
			say ": Current";
		LineBreak;
		say "(10) [link]Crew Cut[as]10[end link] ";
		if Hair Style of Player is "crew cut":
			say ": Current";
		LineBreak;
		say "(11) [link]Curtailed[as]11[end link] ";
		if Hair Style of Player is "curtailed":
			say ": Current";
		LineBreak;
		say "(12) [link]Dreadlocks[as]12[end link] ";
		if Hair Style of Player is "dreadlocks":
			say ": Current";
		LineBreak;
		say "(13) [link]Fauxhawk[as]13[end link] ";
		if Hair Style of Player is "fauxhawk":
			say ": Current";
		LineBreak;
		say "(14) [link]Flattop[as]14[end link] ";
		if Hair Style of Player is "flattop":
			say ": Current";
		LineBreak;
		say "(15) [link]Lob[as]15[end link] ";
		if Hair Style of Player is "lob":
			say ": Current";
		LineBreak;
		say "(16) [link]Mohawk[as]16[end link] ";
		if Hair Style of Player is "mohawk":
			say ": Current";
		LineBreak;
		say "(17) [link]Pageboy[as]17[end link] ";
		if Hair Style of Player is "pageboy":
			say ": Current";
		LineBreak;
		say "(18) [link]Pigtails[as]18[end link] ";
		if Hair Style of Player is "pigtails":
			say ": Current";
		LineBreak;
		say "(19) [link]Pompadour[as]19[end link] ";
		if Hair Style of Player is "pompadour":
			say ": Current";
		LineBreak;
		say "(20) [link]Ponytail[as]20[end link] ";
		if Hair Style of Player is "ponytail":
			say ": Current";
		LineBreak;
		say "(21) [link]Quiff[as]21[end link] ";
		if Hair Style of Player is "quiff":
			say ": Current";
		LineBreak;
		say "(22) [link]Rattail[as]22[end link] ";
		if Hair Style of Player is "rattail":
			say ": Current";
		LineBreak;
		say "(23) [link]Short Cut[as]23[end link] ";
		if Hair Style of Player is "short cut":
			say ": Current";
		LineBreak;
		say "(24) [link]Slicked-Back[as]24[end link] ";
		if Hair Style of Player is "slicked-back":
			say ": Current";
		LineBreak;
		say "(25) [link]Spiky[as]25[end link] ";
		if Hair Style of Player is "spiky":
			say ": Current";
		LineBreak;
		say "(26) [link]Undercut[as]26[end link] ";
		if Hair Style of Player is "undercut":
			say ": Current";
		LineBreak;
		say "[line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-26)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 26:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is:
			-- 1:
				now Hair Style of Player is "afro";
				now Hair Length of Player is 4;
			-- 2:
				now Hair Style of Player is "bangs";
				now Hair Length of Player is 3;
			-- 3:
				now Hair Style of Player is "bob cut";
				now Hair Length of Player is 3;
			-- 4:
				now Hair Style of Player is "bowl cut";
				now Hair Length of Player is 2;
			-- 5:
				now Hair Style of Player is "braid";
				now Hair Length of Player is 12;
			-- 6:
				now Hair Style of Player is "bun";
				now Hair Length of Player is 4;
			-- 7:
				now Hair Style of Player is "buzzcut";
				now Hair Length of Player is 1;
			-- 8:
				now Hair Style of Player is "combover";
				now Hair Length of Player is 2;
			-- 9:
				now Hair Style of Player is "cornrows";
				now Hair Length of Player is 2;
			-- 10:
				now Hair Style of Player is "crew cut";
				now Hair Length of Player is 1;
			-- 11:
				now Hair Style of Player is "curtailed";
				now Hair Length of Player is 1;
			-- 12:
				now Hair Style of Player is "dreadlocks";
				now Hair Length of Player is 6;
			-- 13:
				now Hair Style of Player is "fauxhawk";
				now Hair Length of Player is 2;
			-- 14:
				now Hair Style of Player is "flattop";
				now Hair Length of Player is 1;
			-- 15:
				now Hair Style of Player is "lob";
				now Hair Length of Player is 4;
			-- 16:
				now Hair Style of Player is "mohawk";
				now Hair Length of Player is 4;
			-- 17:
				now Hair Style of Player is "pageboy";
				now Hair Length of Player is 4;
			-- 18:
				now Hair Style of Player is "pigtails";
				now Hair Length of Player is 7;
			-- 19:
				now Hair Style of Player is "pompadour";
				now Hair Length of Player is 5;
			-- 20:
				now Hair Style of Player is "ponytail";
				now Hair Length of Player is 9;
			-- 21:
				now Hair Style of Player is "quiff";
				now Hair Length of Player is 2;
			-- 22:
				now Hair Style of Player is "rattail";
				now Hair Length of Player is 2;
			-- 23:
				now Hair Style of Player is "short cut";
				now Hair Length of Player is 1;
			-- 24:
				now Hair Style of Player is "slicked-back";
				now Hair Length of Player is 1;
			-- 25:
				now Hair Style of Player is "spiky";
				now Hair Length of Player is 2;
			-- 26:
				now Hair Style of Player is "undercut";
				now Hair Length of Player is 2;
		now menuexit is 1;

to HairColorSetting: [brown, blond, black, auburn, red, gray, white]
	now calcnumber is -1;
	let menuexit be 0;
	while menuexit is 0:
		clear the screen;
		say "[bold type]Current Hair Color: [Hair Color of Player][roman type][line break]";
		say "(1) [link]Brown[as]1[end link][line break]";
		say "(2) [link]Blond[as]2[end link][line break]";
		say "(3) [link]Black[as]3[end link][line break]";
		say "(4) [link]Auburn[as]4[end link][line break]";
		say "(5) [link]Red[as]5[end link][line break]";
		say "(6) [link]Grey[as]6[end link][line break]";
		say "(7) [link]White[as]7[end link][line break]";
		say "[line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-7)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 7:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is 1:
			now Hair Color of Player is "brown";
		else if calcnumber is 2:
			now Hair Color of Player is "blond";
		else if calcnumber is 3:
			now Hair Color of Player is "black";
		else if calcnumber is 4:
			now Hair Color of Player is "auburn";
		else if calcnumber is 5:
			now Hair Color of Player is "red";
		else if calcnumber is 6:
			now Hair Color of Player is "grey";
		else if calcnumber is 7:
			now Hair Color of Player is "white";
		now menuexit is 1;

to BeardStyleSetting:
	now calcnumber is -1;
	let menuexit be 0;
	while menuexit is 0:
		clear the screen;
		say "[bold type]Beard Style:[roman type][line break]";
		say "(1) [link]3-Day Stubble Beard[as]1[end link] ";
		if Beard Style of Player is "3-day stubble beard":
			say ": Current";
		LineBreak;
		say "(2) [link]Anchor Beard[as]2[end link] ";
		if Beard Style of Player is "anchor beard":
			say ": Current";
		LineBreak;
		say "(3) [link]Balbo Beard[as]3[end link] ";
		if Beard Style of Player is "balbo beard":
			say ": Current";
		LineBreak;
		say "(4) [link]Chevron Stache[as]4[end link] ";
		if Beard Style of Player is "chevron stache":
			say ": Current";
		LineBreak;
		say "(5) [link]Chin Strap Beard[as]5[end link] ";
		if Beard Style of Player is "chin strap beard":
			say ": Current";
		LineBreak;
		say "(6) [link]Chin Strip Beard[as]6[end link] ";
		if Beard Style of Player is "chin strip beard":
			say ": Current";
		LineBreak;
		say "(7) [link]Circle Beard[as]7[end link] ";
		if Beard Style of Player is "circle beard":
			say ": Current";
		LineBreak;
		say "(8) [link]Fu Manchu Beard[as]8[end link] ";
		if Beard Style of Player is "fu manchu beard":
			say ": Current";
		LineBreak;
		say "(9) [link]Goatee[as]9[end link] ";
		if Beard Style of Player is "goatee":
			say ": Current";
		LineBreak;
		say "(10) [link]Gunslinger Beard[as]10[end link] ";
		if Beard Style of Player is "gunslinger beard":
			say ": Current";
		LineBreak;
		say "(11) [link]Horseshoe Mustache[as]11[end link] ";
		if Beard Style of Player is "horseshoe mustache":
			say ": Current";
		LineBreak;
		say "(12) [link]Mutton Chops Beard[as]12[end link] ";
		if Beard Style of Player is "mutton chops beard":
			say ": Current";
		LineBreak;
		say "(13) [link]Petite Goatee[as]13[end link] ";
		if Beard Style of Player is "petite goatee":
			say ": Current";
		LineBreak;
		say "(14) [link]Porn Stache[as]14[end link] ";
		if Beard Style of Player is "porn stache":
			say ": Current";
		LineBreak;
		say "(15) [link]Royale Beard[as]15[end link] ";
		if Beard Style of Player is "royale beard":
			say ": Current";
		LineBreak;
		say "(16) [link]Short Boxed Beard[as]16[end link] ";
		if Beard Style of Player is "short boxed beard":
			say ": Current";
		LineBreak;
		say "(17) [link]Van Dyke Beard[as]17[end link] ";
		if Beard Style of Player is "van dyke beard":
			say ": Current";
		LineBreak;
		say "[line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-17)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 17:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is:
			-- 1:
				now Beard Style of Player is "3-day stubble beard";
			-- 2:
				now Beard Style of Player is "anchor beard";
			-- 3:
				now Beard Style of Player is "balbo beard";
			-- 4:
				now Beard Style of Player is "chevron stache";
			-- 5:
				now Beard Style of Player is "chin strap beard";
			-- 6:
				now Beard Style of Player is "chin strip beard";
			-- 7:
				now Beard Style of Player is "circle beard";
			-- 8:
				now Beard Style of Player is "fu manchu beard";
			-- 9:
				now Beard Style of Player is "goatee";
			-- 10:
				now Beard Style of Player is "gunslinger beard";
			-- 11:
				now Beard Style of Player is "horseshoe mustache";
			-- 12:
				now Beard Style of Player is "mutton chops beard";
			-- 13:
				now Beard Style of Player is "petite goatee";
			-- 14:
				now Beard Style of Player is "porn stache";
			-- 15:
				now Beard Style of Player is "royale beard";
			-- 16:
				now Beard Style of Player is "short boxed beard";
			-- 17:
				now Beard Style of Player is "van dyke beard";
		now menuexit is 1;

to BodyHairLengthSetting:
	now calcnumber is -1;
	let menuexit be 0;
	while menuexit is 0:
		clear the screen;
		say "[bold type]Body Hair Length:[roman type][line break]";
		say "(1) [link]Smooth[as]1[end link] ";
		if Body Hair Length of Player is 1:
			say ": Current";
		LineBreak;
		say "(2) [link]Slightly Hairy[as]2[end link] ";
		if Body Hair Length of Player is 2:
			say ": Current";
		LineBreak;
		say "(3) [link]Somewhat Hairy[as]3[end link] ";
		if Body Hair Length of Player is 3:
			say ": Current";
		LineBreak;
		say "(4) [link]Hairy[as]4[end link] ";
		if Body Hair Length of Player is 4:
			say ": Current";
		LineBreak;
		say "(5) [link]Very Hairy[as]5[end link] ";
		if Body Hair Length of Player is 5:
			say ": Current";
		LineBreak;
		say "[line break]";
		say "(0) [link]Return to main menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (1-5)>[run paragraph on]";
			get a number;
			if calcnumber >= 1 and calcnumber <= 5:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is:
			-- 1:
				now Hair Shape of Player is "smooth";
			-- 2:
				now Hair Shape of Player is "slightly hairy";
			-- 3:
				now Hair Shape of Player is "somewhat hairy";
			-- 4:
				now Hair Shape of Player is "hairy";
			-- 5:
				now Hair Shape of Player is "very hairy";
		now menuexit is 1;

to playersexsetting: [OralVirgin of Player, Virgin of Player, AnalVirgin of Player, PenileVirgin of Player, SexuallyExperienced of Player]
	now calcnumber is -1;
	let menuexit be 0;
	while menuexit is 0:
		clear the screen;
		say "[bold type]Sexual Experience[roman type][line break]";
		say "    Sexual Experience: [if SexuallyExperienced of Player is true]Yes[else]No[end if][line break]";
		say "(1) [link]Oral Virgin[as]1[end link]: [if OralVirgin of Player is true]Yes[else]No[end if][line break]";
		say "(2) [link]Vaginal Virgin[as]2[end link]: [if Virgin of Player is true]Yes[else]No[end if][line break]";
		say "(3) [link]Penile Virgin[as]3[end link]: [if PenileVirgin of Player is true]Yes[else]No[end if][line break]";
		say "(4) [link]Anal Virgin[as]4[end link]: [if AnalVirgin of Player is true]Yes[else]No[end if][line break]";
		say "[line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-4)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 4:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is 1:
			if OralVirgin of player is true:
				now OralVirgin of player is false;
			else if OralVirgin of player is false:
				now OralVirgin of player is true;
		else if calcnumber is 2:
			if Virgin of player is true:
				now Virgin of player is false;
			else if Virgin of player is false:
				now Virgin of player is true;
		else if calcnumber is 3:
			if PenileVirgin of player is true:
				now PenileVirgin of player is false;
			else if PenileVirgin of player is false:
				now PenileVirgin of player is true;
		else if calcnumber is 4:
			if AnalVirgin of player is true:
				now AnalVirgin of player is false;
			else if AnalVirgin of player is false:
				now AnalVirgin of player is true;
		else:
			now menuexit is 1;
		if (OralVirgin of player is true and Virgin of player is true and PenileVirgin of player is true and AnalVirgin of player is true):
			now SexuallyExperienced of player is false;
		else if (OralVirgin of player is false or Virgin of player is false or PenileVirgin of player is false or AnalVirgin of player is false):
			now SexuallyExperienced of player is true;
		now calcnumber is -1;

to say playervirginsay:
	if SexuallyExperienced of player is false:
		say "Virgin";
	else:
		if gspg is 1:
			say "[if OralVirgin of player is false]Orally Experienced[else]Oral Virgin[end if], [if AnalVirgin of player is false]Anally Experience[else]Anal Virgin[end if], [if PenileVirgin of player is false]Penally Experienced[else]Penile Virgin[end if]";
		else:
			say "[if OralVirgin of player is false]Orally Experienced[else]Oral Virgin[end if], [if AnalVirgin of player is false]Anally Experience[else]Anal Virgin[end if], [if Virgin of player is false]Vaginally Experienced[else]Vaginal Virgin[end if]"

to eyecolorsetting: [ Green, Blue, Gray, Brown, Hazel, Amber, Red]
	now calcnumber is -1;
	let menuexit be 0;
	while menuexit is 0:
		clear the screen;
		say "[bold type]Current Eye Color: [Eye Color of Player][roman type][line break]";
		say "(1) [link]Brown[as]1[end link][line break]";
		say "(2) [link]Green[as]2[end link][line break]";
		say "(3) [link]Blue[as]3[end link][line break]";
		say "(4) [link]Grey[as]4[end link][line break]";
		say "(5) [link]Hazel[as]5[end link][line break]";
		say "(6) [link]Amber[as]6[end link][line break]";
		say "(7) [link]Red[as]7[end link][line break]";
		say "[line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-7)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 7:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is 1:
			now Eye Color of Player is "brown";
		if calcnumber is 2:
			now Eye Color of Player is "green";
		if calcnumber is 3:
			now Eye Color of Player is "blue";
		if calcnumber is 4:
			now Eye Color of Player is "grey";
		if calcnumber is 5:
			now Eye Color of Player is "hazel";
		if calcnumber is 6:
			now Eye Color of Player is "amber";
		if calcnumber is 7:
			now Eye Color of Player is "red";
		now menuexit is 1;

to playernaming:
	say "Note: You can always change your name at a later point with the 'rename' command.";
	say "[bold type]Please enter your new name: [roman type][line break]";
	get typed command as playerinput;
	now name of Player is playerinput;

to say menuwardlist:
	if CockVoreList is warded or FurryList is warded or MaleList is warded or FemaleList is warded or HumorousList is warded or DemonList is warded or HermList is warded or CuckList is warded or IncestList is warded or TransList is warded or MindcontrolList is warded or NonconList is warded or VoreList is warded:
		say "[bold type]Warded: [bracket] ";
		if CockVoreList is warded:
			say "Cockvore ";
		if FeralList is warded:
			say "Feral ";
		if FurryList is warded:
			say "Furry ";
		if MaleList is warded:
			say "Male ";
		if FemaleList is warded:
			say "Female ";
		if HermList is warded:
			say "Herm ";
		if HumorousList is warded:
			say "Humorous ";
		if DemonList is warded:
			say "Hellspawn ";
		if TransList is warded:
			say "Transgender ";
		if CuckList is warded:
			say "Cuck ";
		if IncestList is warded:
			say "Incest ";
		if NonconList is warded:
			say "Noncon ";
		if MindcontrolList is warded:
			say "Mindcontrol ";
		if VoreList is warded:
			say "Vore ";
		say "[close bracket][roman type][line break]";
	else:
		say "[bold type]None Warded[roman type][line break]";

to say menubanlist:
	if CockVoreList is banned or FurryList is banned or MaleList is banned or FemaleList is banned or HumorousList is banned or DemonList is banned or HermList is banned or CuckList is banned or IncestList is banned or TransList is banned or MindcontrolList is banned or NonconList is banned or VoreList is banned:
		say "[bold type]Banned: [bracket] ";
		if CockVoreList is banned:
			say "Cockvore ";
		if FeralList is banned:
			say "Feral ";
		if FurryList is banned:
			say "Furry ";
		if MaleList is banned:
			say "Male ";
		if FemaleList is banned:
			say "Female ";
		if HermList is banned:
			say "Herm ";
		if HumorousList is banned:
			say "Humorous ";
		if DemonList is banned:
			say "Hellspawn ";
		if TransList is banned:
			say "Transgender ";
		if CuckList is banned:
			say "Cuck ";
		if IncestList is banned:
			say "Incest ";
		if NonconList is banned:
			say "Noncon ";
		if MindcontrolList is banned:
			say "Mindcontrol ";
		if VoreList is banned:
			say "Vore ";
		say "[close bracket][roman type][line break]";
	else:
		say "[bold type]None Banned[roman type][line break]";

to say gsopt_1:
	now calcnumber is -1;
	let gsexit be 0;
	while gsexit is 0:
		clear the screen;
		say "[bold type]Select your main stat (+5 bonus):[roman type][line break]";
		say "(1) [link]Strength[as]1[end link] = [if gsms is 1][bold type]17[roman type][else if gsms is 7]??[run paragraph on][else]12[end if]: Represents your raw physical might and your ability to deal damage.";
		say "(2) [link]Dexterity[as]2[end link] = [if gsms is 2][bold type]17[roman type][else if gsms is 7]??[run paragraph on][else]12[end if]: Affects your likelihood to hit and dodge.";
		say "(3) [link]Stamina[as]3[end link] = [if gsms is 3][bold type]17[roman type][else if gsms is 7]??[run paragraph on][else]12[end if]: Increases your total health pool and your overall endurance.";
		say "(4) [link]Charisma[as]4[end link] = [if gsms is 4][bold type]17[roman type][else if gsms is 7]??[run paragraph on][else]12[end if]: Deals with social interactions with NPCs and your pets, and affects your morale.";
		say "(5) [link]Intelligence[as]5[end link] = [if gsms is 5][bold type]17[roman type][else if gsms is 7]??[run paragraph on][else]12[end if]: Increases the efficacy of healing medkits, your chances of vial collection (if able) and your success at escaping.";
		say "(6) [link]Perception[as]6[end link] = [if gsms is 6][bold type]17[roman type][else if gsms is 7]??[run paragraph on][else]12[end if]: Influences your success while scavenging and hunting, success with ranged weapons and affects your morale.";
		say "(7) [link]Random[as]7[end link]: Randomize your stat points upon creation.";
		say "[line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-7)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 7:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is not 0:
			now gsms is calcnumber;
			gs_stats;
			now gsexit is 1;
		else:
			now gsexit is 1;


To gs_stats: [apply stat bonus]
	follow the starting stats rule; [resets all to 12]
	if gsms is 1:
		increase strength of Player by 5;
	else if gsms is 2:
		increase dexterity of Player by 5;
	else if gsms is 3:
		increase stamina of Player by 5;
	else if gsms is 4:
		increase charisma of Player by 5;
	else if gsms is 5:
		increase intelligence of Player by 5;
	else if gsms is 6:
		increase perception of Player by 5;
	else if gsms is 7 and started is 1:
		randomstatstart;
	else if started is 1:
		say "Invalid stat choice - defaulting to random.";
		randomstatstart;


to say gsopt_2:
	if gspg is 1:
		now gspg is 2;
	else:
		now gspg is 1;


to say gsopt_3:
	now calcnumber is -1;
	let gsexit be 0;
	while gsexit is 0:
		clear the screen;
		say "[bold type]Game Scenario:[roman type][line break]";
		say "(1) [link]Bunker[as]1[end link]: You managed to find your way to a bunker, where you hid away for some time. No special perks, default start.[bold type][if gsgt is 1]-Set[end if][roman type][line break]";
		say "(2) [link]Caught Outside[as]2[end link]: You were forced to survive outside. You have already been mutated a bit, though your practice has hardened you (Gain Spartan Diet, slowing gain of hunger and thirst).[bold type][if gsgt is 2]-Set[end if][roman type][line break]";
		say "(3) [link]Rescuer Stranded[as]3[end link]: You arrived late, looking for survivors, when you got cut off from your teammates. Now you just want to survive! (Start with no supplies)[bold type][if gsgt is 3]-Set[end if][roman type][line break]";
		say "(4) [link]Forgotten[as]4[end link]: You stayed in hiding too long. Your supplies have run dry, and the rescue already came and left. It will be a long time before any more arrive![bold type][if gsgt is 4]-Set[end if][roman type][line break]";
		say "(5) [link]Researcher[as]5[end link]: You are not stranded at all. You came to explore, catalog, and interact with this absolutely fascinating outbreak. You've been given immunizations to casual infection (you won't transform from losing battles) and have specialized  that allows you to collect the infection vials of those you defeat.[bold type][if gsgt is 5]-Set[end if][roman type][line break]";
		say "[line break]";
		say "(0) [link]Return to main menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-5)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 5:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is 1:
			now scenario is "Bunker";
			now gsgt is 1;
			now gsexit is 1;
		else if calcnumber is 2:
			now scenario is "Caught Outside";
			now gsgt is 2;
			now gsexit is 1;
		else if calcnumber is 3:
			now scenario is "Rescuer Stranded";
			now gsgt is 3;
			now gsexit is 1;
		else if calcnumber is 4:
			now scenario is "Forgotten";
			now gsgt is 4;
			now gsexit is 1;
		else if calcnumber is 5:
			now scenario is "Researcher";
			now gsgt is 5;
			now gsexit is 1;
		else:
			now gsexit is 1;

to say gsopt_4:
	now calcnumber is -1;
	let gsexit be 0;
	while gsexit is 0:
		clear the screen;
		say "[bold type]Difficulty Modes:[roman type][line break]";
		say "(1) [link]Hard Mode[as]1[end link]: [bold type][if gshm is true]On[else]Off[end if][roman type][line break]     Hard Mode causes the powerful monsters to be randomly roaming, levels the monsters up alongside you, limits your use of the journal and adds other difficulties to further challenge you.";
		say "(2) [link]No-Heal Mode[as]2[end link]: [bold type][if gsnhm is true]On[else]Off[end if][roman type][line break]     No-Heal Mode turns off the accelerated healing at the end of the turn. Medkits and healing boosters heal more though.";
		say "(3) [link]Blind Mode[as]3[end link]: [bold type][if gsbm is true]On[else]Off[end if][roman type][line break]     Blind Mode prevents hunting and scavenging for specific supplies. You have a significantly increased chance of encountering something of interest while exploring though.";
		say "(0) [link]Return to main menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-3)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 3:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is 1:
			if gshm is false:
				now gshm is true;
				say "Hard Mode activated.";
			else:
				now gshm is false;
				say "Hard Mode de-activated.";
		else if calcnumber is 2:
			if gsnhm is false:
				now gsnhm is true;
				say "No-Heal Mode activated.";
			else:
				now gsnhm is false;
				say "No-Heal Mode de-activated.";
		else if calcnumber is 3:
			if gsbm is false:
				now gsbm is true;
				say "Blind Mode activated.";
			else:
				now gsbm is false;
				say "Blind Mode de-activated.";
		else:
			now gsexit is 1;


to say gsopt_start:
	now started is 1;
	[old gender setting start, use until the new system becomes active]
	if gspg is 1:	[male]
		now Cock Count of Player is 1;
		now Cock Length of Player is 6;
		now the Ball Size of Player is 3;
		now Nipple Count of Player is 2;
		remove womanhood from Player;
		now Breast Size of Player is 0;
	else:		[defaults to female]
		now Cunt Count of Player is 1;
		now Cunt Depth of Player is 6;
		now Cunt Tightness of Player is 4;
		now Nipple Count of Player is 2;
		remove manhood from Player;
		now Breast Size of Player is 2;
[
	if glstart is 1:
		startgenderlockshift;
]
	gs_stats;
	now Morale of Player is Charisma of Player plus Perception of Player;
	now HP of Player is Stamina of Player times two;
	increase HP of Player by 5;
	now MaxHP of Player is HP of Player;
	now the Capacity of Player is five times Strength of Player;
	now humanity of Player is 100;
	if gsgl > 1, startgenderlockget;
	follow the SetPlayerPronouns rule;
	startfreefeats;
	startcreatureban;
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	sort Table of Random Critters in lev order;
	if scenario is "Caught Outside":	[processes infection data first, then clears so intro text can remain intact]
		randominfect;
		randominfect;
		randominfect;
		randominfect;
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	[Code for letting player select graphics window size]
	if NewGraphics is true:
		say "You have enabled the graphics side window. This will be on the right side of your screen and will always take up a proportion of the main screen.[line break]";
		say "Please choose this proportion now. Enter a number between 5 - 90. This will represent the percentage of your main screen that the graphics side window will take up. We recommend somewhere around 30.[line break]";
		while 1 is 1:
			say "(5-90)>[run paragraph on]";
			get a number;
			if calcnumber > 4 and calcnumber < 91:
				break;
			else:
				say "Invalid Entry. Please enter a number between 5 and 90";
		now NewGraphicsRatio is calcnumber;
		clear the screen;
	say "Want more details on the game and updates? ----- [bold type]https://blog.flexiblesurvival.com/[roman type]  ------[line break][line break]";
	WaitLineBreak;
	if scenario is "Bunker":
		ItemGain black t-shirt by 1 silently;
		now black t-shirt is equipped;
		ItemGain dark-blue jeans by 1 silently;
		now dark-blue jeans are equipped;
		ItemGain white briefs by 1 silently;
		now white briefs is equipped;
		ItemGain brown loafers by 1 silently;
		now brown loafers is equipped;
	else if scenario is "Caught Outside":
		ItemGain white t-shirt by 1 silently;
		now white t-shirt is equipped;
		ItemGain black jeans by 1 silently;
		now black jeans are equipped;
	else if scenario is "Rescuer Stranded":
		ItemGain camo shirt by 1 silently;
		now camo shirt is equipped;
		ItemGain green camo pants by 1 silently;
		now green camo pants are equipped;
		ItemGain black boxer briefs by 1 silently;
		now black boxer briefs are equipped;
		ItemGain black combat boots by 1 silently;
		now black combat boots is equipped;
	else if scenario is "Forgotten":
		ItemGain blue sleeveless shirt by 1 silently;
		now blue sleeveless shirt is equipped;
		ItemGain ripped black jeans by 1 silently;
		now ripped black jeans are equipped;
		ItemGain white briefs by 1 silently;
		now white briefs is equipped;
		ItemGain brown loafers by 1 silently;
		now brown loafers is equipped;
	else if scenario is "Researcher":
		ItemGain white t-shirt by 1 silently;
		now white t-shirt is equipped;
		ItemGain dark-blue jeans by 1 silently;
		now dark-blue jeans are equipped;
		ItemGain black boxer briefs by 1 silently;
		now black boxer briefs are equipped;
		ItemGain black combat boots by 1 silently;
		now black combat boots is equipped;
	if scenario is not "Bunker":
		if scenario is "Caught Outside":
			add "Spartan Diet" to feats of Player;
		if scenario is "Rescuer Stranded":
			now invent of bunker is { };
			add "cot" to invent of bunker;
			increase score by 300;
		if scenario is "Forgotten":
			now invent of bunker is { };
			add "cot" to invent of bunker;
			now the printed name of Doctor Matt is "Left Behind Recording of Doctor Matt";
			now the initial appearance of Doctor Matt is "A small recorder labeled 'Doctor Matt' remains abandoned.";
			now Description of Doctor Matt is "A small recorder labeled 'Doctor Matt' remains abandoned.";
			now the HP of Doctor Matt is 100;
			now the icon of Doctor Matt is figure of pixel;
			now Orthas is nowhere;
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Deer":
					now area entry is "Park";
					break;
			increase score by 600;
			extend game by 240;
	if gshm is true: [Hard mode alteration]
		increase score by 300;
		now hardmode is true;
	if gsnhm is true: [No-heal mode alteration]
		increase score by 150;
		now nohealmode is true;
	if gsbm is true: [Blind mode alteration]
		increase score by 100;
		now blindmode is true;
	if scenario is "Bunker":
		say "     You remember how it went down. Satellite, gone, Internet, offline. The power was the last thing to go, just a precious hour later. People wandered the streets, confused, panicked. Then they came. Monsters. Freaks. They'd grab people. Some got mauled on the spot and others were dragged off. You managed to escape to safety here - the old bunker. You remember seeing that stupid bunker sign for years, who knew remembering it would save your life? You waited for others to come. Surely you were not the only one to remember?";
		say "     You've waited in the dark for others or rescue to come, but to no avail. You're not sure how long you've been down here, but the sounds have long since died away. You've eaten a good portion of the food and water. No choice but to go out and greet the city. At least you have your [bold type]backpack[roman type] and your [bold type]watch[roman type]. How bad could it be?";
	else if scenario is "Caught Outside":
		say "     You remember how it went down. Satellite, gone, Internet, offline. The power was the last thing to go, just a precious hour later. People wandered the streets, confused, panicked. Then they came. Monsters. Freaks. They'd grab people. Some got mauled on the spot and others were dragged off. Some fought back. You tried to resist, but did not escape unscathed. In the end, you managed to get to safety here - the old bunker. You remember seeing that stupid bunker sign for years, who knew remembering it would save your life? You waited for others to come. Surely you were not the only one to remember?";
		say "     You've waited in the dark for others or rescue to come, but to no avail. You're not sure how long you've been down here, but the sounds have long since died away. You've eaten a good portion of the food and water. No choice but to go out and greet the city. At least you have your [bold type]backpack[roman type] and your [bold type]watch[roman type]. How bad could it be?";
	else if scenario is "Rescuer Stranded":
		say "     You remember how it went down. Satellite, gone, Internet, offline. The power was the last thing to go, just a precious hour later. There were growing reports of monsters and freaks spreading across the city, attacking the citizens. You had been part of the military's fast response team sent in just hours after the outbreak. Your initial task was reconnaissance with the hopes of setting up a rally point for helicopter evacuation of any non-infected survivors. You were sent in with little preparation and no idea at all of what you were truly in for.";
		say "     Your team was moving on foot through the streets of downtown when you were set upon by creatures out of a pervert's nightmare. All discipline was lost as your team disintegrated into panic and fled unthinkingly into the city, pursued by the nightmares...";
		say "     You awoke in what appears to be a disused bunker. You have no idea how you even got here or how long you've been out of it, but you are uninfected. In your panicked flight, you lost all of your supplies. No food. No water. No weapons. No radio. At least you have your backpack and your watch. Heaven only knows what awaits you outside, but you have to find a way back.";
	else if scenario is "Forgotten":
		say "     You remember how it went down. Satellite, gone, Internet, offline. The power was the last thing to go, just a precious hour later. People wandered the streets, confused, panicked. Then they came. Monsters. Freaks. They'd grab people. Some got mauled on the spot and others were dragged off. You managed to escape to safety here - the old bunker. You remember seeing that stupid bunker sign for years, who knew remembering it would save your life? You waited for others to come. Surely you were not the only one to remember?";
		say "     Terrified, you've waited in the dark, subsisting as long as you've can on your supplies for as long as you've been able. While the noise of chaos died away for a long time, they picked up again with the addition of explosions and gunfire. Fearing to exit, you remained in the safety of the bunker until it was peaceful again. You wish you could continue to remain hidden, but you're finished off the very last of your supplies and you'll have to risk venturing out with only your [bold type]backpack[roman type], and your [bold type]watch[roman type]. Still... how bad could it be?";
	else if scenario is "Researcher":
		say "     You remember how it went down. Satellite, gone, Internet, offline. The power was the last thing to go. Thankfully, you weren't in one of the outbreak zones when it happened, but your life's been thrown upside down like everyone else's by the ensuing chaos. Seeing an opportunity to help, or at least make some money off the situation, you agreed to enter one of the hotspots through a military contractor. The city's been cordoned off by the military while they gather intel and plan, giving you some time to gather samples and investigate what's happening.";
		say "     The helicopter brought you into the devastated city. Ruin and strange creatures milled about beneath you as you flew over at high speed. This place has been written off as a loss, but there was rumor they'd take it back. You only have so much time to investigate, and you plan to make the most of it.";
		say "     You're let down beside an old bunker. It would serve as your base of operations, and would be where they'd pick you up when it was over. You should be scared, but you just can't seem to muster that sensation. They gave you booster shots against the nanites as well as a few supplies and a promise of others joining you soon. You know what you are doing. They will be so proud of what you find. Maybe you can figure out a way to stop this from happening again in other cities.";
	say "     No one else ever arrived, so you're on your own out here. Ah well, you're an American of the 21st century. What's a little Apocalypse to keep you down? Steeling your nerves and readying what you have, you break the seal and prepare to set out.";
	WaitLineBreak;
	LineBreak;
	say "Welcome to...";
	[display the figure of title_graphic;]
	zephyrad rule in 1 turn from now;

[Silent starting protocol that launches restore game. Included as part of restore on the main menu because of issues with the graphical window creation.]
to say silent_start:
	say "Please wait while we complete some background work prior to restoring.";
	WaitLineBreak;
	now started is 1;
	[
	if gspg is 1: [male]
		now Cock Count of Player is 1;
		now Cock Length of Player is 6;
		now the Ball Size of Player is 3;
		now Nipple Count of Player is 2;
		now Breast Size of Player is 0;
		remove womanhood from Player;
	else: [defaults to female]
		now Cunt Count of Player is 1;
		now Cunt Depth of Player is 6;
		now Cunt Tightness of Player is 4;
		now Nipple Count of Player is 2;
		now Breast Size of Player is 2;
		remove manhood from Player;
	if glstart is 1:
		startgenderlockshift;
	]
	gs_stats;
	now Morale of Player is Charisma of Player plus Perception of Player;
	now HP of Player is Stamina of Player times two;
	increase HP of Player by 5;
	now MaxHP of Player is HP of Player;
	now the Capacity of Player is five times Strength of Player;
	now humanity of Player is 100;
	if gsgl > 1, startgenderlockget;
	follow the SetPlayerPronouns rule;
	startfreefeats;
	startcreatureban;
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	sort Table of Random Critters in lev order;
	if scenario is "Caught Outside": [processes infection data first, then clears so intro text can remain intact]
		randominfect;
		randominfect;
		randominfect;
		randominfect;
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	[Code for letting player select graphics window size]
	say "[bold type]Graphic Settings[roman type][line break]";
	say "Before restoring, please specify the graphic settings.[line break]";
	say "[bold type] No graphics - 1 [roman type][line break]";
	say "[bold type] Old inline graphics only - 2 [roman type][line break]";
	say "[bold type] New graphics side-window - 3 [roman type][line break]";
	while 1 is 1:
		say "Please enter the number that matches your choice (1-3)>[run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber < 4:
			break;
		else:
			say "Invalid Entry. Please enter a number between 1 and 3";
	now NewGraphicsInteger is calcnumber - 1; [Direct set]
	if NewGraphicsInteger is 1: [now evaluate]
		now graphics is true;
		now NewGraphics is false;
	else if NewGraphicsInteger is 2:
		now graphics is true;
		now NewGraphics is true;
	else if NewGraphicsInteger is 0:
		now graphics is false;
		now NewGraphics is false;
	if NewGraphics is true: [Defined when play begins below, but MUST be here to alter the view when restoring from the menu]
		now the graphics window proportion is NewGraphicsRatio;
		build graphics window;
		[now the graphics window pixel count is 1;]
		follow the ngraphics_blank rule;
		follow the current graphics drawing rule;
		now NewGraphicsOpened is true;
	clear the screen;
	if NewGraphics is true:
		say "[bold type]Graphic Window Proportion[roman type][line break]";
		say "You have enabled the new graphics window. This will be on the right side of your screen and will always take up a proportion of the main screen.[line break]";
		say "Please choose this value now. Enter a number between 5 - 90. This will represent the percentage of your main screen that the graphics side-window will take up. We recommend somewhere around 30.[line break]";
		while 1 is 1:
			say "(5-90)>[run paragraph on]";
			get a number;
			if calcnumber > 4 and calcnumber < 91:
				break;
			else:
				say "Invalid Entry. Please enter a number between 5 and 90";
		now NewGraphicsRatio is calcnumber;
		clear the screen;
	say "	Just a moment. There are a few more things to prepare...";
	WaitLineBreak;
	if scenario is "Bunker":
		ItemGain black t-shirt by 1 silently;
		now black t-shirt is equipped;
		ItemGain dark-blue jeans by 1 silently;
		now dark-blue jeans are equipped;
		ItemGain white briefs by 1 silently;
		now white briefs is equipped;
		ItemGain brown loafers by 1 silently;
		now brown loafers is equipped;
	else if scenario is "Caught Outside":
		ItemGain white t-shirt by 1 silently;
		now white t-shirt is equipped;
		ItemGain black jeans by 1 silently;
		now black jeans are equipped;
	else if scenario is "Rescuer Stranded":
		ItemGain camo shirt by 1 silently;
		now camo shirt is equipped;
		ItemGain green camo pants by 1 silently;
		now green camo pants are equipped;
		ItemGain black boxer briefs by 1 silently;
		now black boxer briefs are equipped;
		ItemGain black combat boots by 1 silently;
		now black combat boots is equipped;
	else if scenario is "Forgotten":
		ItemGain blue sleeveless shirt by 1 silently;
		now blue sleeveless shirt is equipped;
		ItemGain ripped black jeans by 1 silently;
		now ripped black jeans are equipped;
		ItemGain white briefs by 1 silently;
		now white briefs is equipped;
		ItemGain brown loafers by 1 silently;
		now brown loafers is equipped;
	else if scenario is "Researcher":
		ItemGain white t-shirt by 1 silently;
		now white t-shirt is equipped;
		ItemGain dark-blue jeans by 1 silently;
		now dark-blue jeans are equipped;
		ItemGain black boxer briefs by 1 silently;
		now black boxer briefs are equipped;
		ItemGain black combat boots by 1 silently;
		now black combat boots is equipped;
	if scenario is not "Bunker":
		if scenario is "Caught Outside":
			add "Spartan Diet" to feats of Player;
		if scenario is "Rescuer Stranded":
			now invent of bunker is { };
			add "cot" to invent of bunker;
			increase score by 300;
		if scenario is "Forgotten":
			now invent of bunker is { };
			add "cot" to invent of bunker;
			now the printed name of Doctor Matt is "Left Behind Recording of Doctor Matt";
			now the initial appearance of Doctor Matt is "A small recorder labeled 'Doctor Matt' remains abandoned.";
			now Description of Doctor Matt is "A small recorder labeled 'Doctor Matt' remains abandoned.";
			now the HP of Doctor Matt is 100;
			now the icon of Doctor Matt is figure of pixel;
			now Orthas is nowhere;
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Deer":
					now area entry is "Park";
					break;
			increase score by 600;
			extend game by 240;
	if gshm is true: [Hard mode alteration]
		increase score by 300;
		now hardmode is true;
	if gsnhm is true: [No-heal mode alteration]
		increase score by 150;
		now nohealmode is true;
	if gsbm is true: [Blind mode alteration]
		increase score by 100;
		now blindmode is true;
	AddNavPoint Zephyr Lobby;
	WaitLineBreak;

to say set_invcolumns:
	now calcnumber is -1;
	let gsexit be 0;
	say "     How many columns would you like the inventory to display (1 - 4) or (0) to abort?";
	say "     [if invcolumns is not 1][link][bracket]1[close bracket][as]1[end link][else][bold type][bracket]1[close bracket][roman type][end if]  [if invcolumns is not 2][link][bracket]2[close bracket][as]2[end link][else][bold type][bracket]2[close bracket][roman type][end if]  [if invcolumns is not 3][link][bracket]3[close bracket][as]3[end link][else][bold type][bracket]3[close bracket][roman type][end if]  [if invcolumns is not 4][link][bracket]4[close bracket][as]4[end link][else][bold type][bracket]4[close bracket][roman type][end if]  [link][bracket]0[close bracket] - Abort[as]0[end link][line break]";
	while gsexit is 0:
		say "Choice? (0-4)>[run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber < 5:
			now invcolumns is calcnumber;
			now gsexit is 1;
		else if calcnumber is 0:
			now gsexit is 1;
		else:
			say "Invalid: Choose between 0 and 4.";


Book 10 - Let the Games Begin

to say promptsay:
	let x be the location of the player;
	if companionList of Player is not empty:
		repeat with y running through companionList of Player:
			if NPCObject of y is not Nullpet:
				now NPCObject of y is in location of Player;
	let z be the number of entries in invent of x;
	if z > 0:
		say "Visible Objects: ";
		repeat with q running through invent of x:
			if there is a name of q in the Table of Game Objects:
				choose a row with name of q in the Table of Game Objects;
				now object entry is part of Player;
			say "[link][q][as]get [q][end link] ";
		say " [link]get everything[as]get all[end link]";
		say "[line break]";
	else:
		repeat with k running through grab objects:
			now k is nowhere;
	[invisibly attaching the carried objects to keep the rickety FS inventory system going]
	repeat with j running through owned grab objects:
		now j is a part of Player;
	if Player is in Bunker:
		repeat with j running through stored grab objects:
			now j is a part of Player;
	say "Status: ";
	if hunger of Player > 30:
		say "[link][bracket]HUNGRY[close bracket][as]eat food[end link] ";
	if thirst of Player > 30:
		say "[link][bracket]THIRSTY[close bracket][as]drink water[end link] ";
	if humanity of Player < 50:
		say "[link][bracket]UNHINGED[close bracket][as]use journal[end link] ";
	say "[link][bracket]Inv[close bracket][as]inventory[end link] ";
	if scenario is "Researcher" or nanitemeter > 0:
		say "[link][bracket]Vial[close bracket][as]Vial Inventory[end link] ";
	say "[link][bracket]Rest[close bracket][as]rest[end link] ";
	say "[link][bracket]Save[close bracket][as]save[end link] ";
	say "[link][bracket]Restore[close bracket][as]restore[end link] ";
	say "[link][bracket]Export Progress[close bracket][as]export progress[end link] ";
	say "[link][bracket]Import Progress[close bracket][as]import progress[end link] ";
	if "Unerring Hunter" is listed in feats of Player and (there is a visible dangerous door or earea of location of Player is not "void"):
		say "[link][bracket]Hunt[close bracket][as]huntinglist[end link] ";
	if NewTypeInfectionActive is true:
		say "[link][bracket]Enemy Stats[close bracket][as]ShowEncounteredEnemies[end link] ";
	say "[line break]";
	say "Exits:";
	repeat with nam running through valid directions:
		say " [link][printed name of nam][end link]";
	if location of Player is fasttravel and earea of location of Player is "void":
		say " [bracket][link]nav[end link][close bracket]";
	else if location of Player is fasttravel:
		say " [bracket][link]nav[end link], [link]scavenge[end link], [link]explore[end link][close bracket]";
	else if earea of location of Player is not "void":
		say " [bracket][link]scavenge[end link], [link]explore[end link][close bracket]";
	say ", Visible Things: ";
	repeat with y running through the things in the Location of Player:
		if y is a door, next;
		if y is the player:
			say "[link][y][as]look me[end link] ";
			next;
		say "[link][y][as]look [y][end link] ";
	say "[link]area[as]look[end link]";
	say "[line break]>";

When play begins:
	now the command prompt is "[promptsay]";

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
		now hypernull is hypernull;
	else:
		now hypernull is 1;
	repeat with x running through featsets:
		now x is a part of Player;
	if gsgt is 1: [sets name of scenario for menu based on preset]
		now scenario is "Bunker";
	else if gsgt is 2:
		now scenario is "Caught Outside";
	else if gsgt is 3:
		now scenario is "Rescuer Stranded";
	else if gsgt is 4:
		now scenario is "Forgotten";
	else if gsgt is 5:
		now scenario is "Researcher";
	else:
		now gsgt is 1;
		now scenario is "Bunker";
	if anallevel < 1 or anallevel > 3, now anallevel is 2;
	if WSlevel < 1 or WSlevel > 3, now WSlevel is 2;
	if ovipreglevel is not 1, now ovipreglevel is 2;
	increase the score by 10;
	let pointlessbump be 0;
	now MonsterID is a random number from 1 to number of filled rows in the Table of Random Critters;
	choose row MonsterID in Table of Random Critters;
	regularstart; [original start method. easier to move everything then leave here]

When play begins (this is the graphics window construction rule):
	if NewGraphics is true: [Build window regardless in case player decides to turn it on later]
		now the graphics window proportion is NewGraphicsRatio;
		build graphics window;
		[now the graphics window pixel count is 1;]
		follow the ngraphics_blank rule;
		follow the current graphics drawing rule;
		now NewGraphicsOpened is true;
