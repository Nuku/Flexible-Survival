"Flexible Survival" by Nuku Valente

Book 0 - Pre game prep stuff

Release along with an interpreter.
Use memory economy.
Use slow route-finding.
[ The following adjust Informs compiler settings so that it allocates enough space. If these values are incorrect, inform will fail to compile.]
[ To determine if one of these is your issue, Use the Errors tab in the inform 7 window. ]
Use MAX_INDIV_PROP_TABLE_SIZE of 500000.
Use MAX_PROP_TABLE_SIZE of 51000000.
use MAX_STATIC_DATA of 12500000.
Use MAX_OBJ_PROP_COUNT of 1280.
use MAX_SYMBOLS of 13000000. ["Compiler finished with code 10"]
use MAX_NUM_STATIC_STRINGS of 200000. [ Code 10 ]
use SYMBOLS_CHUNK_SIZE of 25000. [ Code 10 ]
use ALLOC_CHUNK_SIZE of 1450000.
use MAX_OBJECTS of 1600.
use MAX_ACTIONS of 350.
use MAX_VERBS of 350.
use MAX_ARRAYS of 100000.
Use MAX_ZCODE_SIZE of 1000000.
Use MAX_DICT_ENTRIES OF 2400.
Use maximum text length of at least 2000.
Use Scoring.
[ End compiler settings. ]

Include Basic Help Menu by Emily Short.
Include Version 4 of Menus by Emily Short.
Include Basic Screen Effects by Emily Short.
include FS Graphics by Core Mechanics.

[To decide which number is the absolute value of (N - a number):
	if N is less than 0:
		let N be 0 minus N;
	decide on N.] [enable this to compile on older versions of inform]

To say a/an (T - text):
	let Txt be indexed text;
	let Txt be T;
	if Txt matches the regular expression "^<aeiouAEIOU>":
		say "an ";
	otherwise:
		say "a ";
	say T.

To end the game saying (T - text):
	end the story saying T;

Instead of sniffing something (called x):
	if the scent of x is empty:
		say "It smells pretty normal for a/an [x].";
	otherwise:
		say "[scent of x][line break]";

To wait for any key:
	if hypernull is 0:
		say "[link]more[as] [end link][run paragraph on]";
	keypause;
	if hypernull is 0:
		say "[line break]";


To change the current menu to (X - table name):
	now the current menu is x;

to clear the screen and hyperlink list:
	clear the screen;
	now invlinklistfilled is zero; [this changes the inventorying mode to not look for existing inventory links again]
	now hyperlink list is {}.
[This must remain whole or errors from cleared hyperlinks can occur!]

To say row of (N - number) spaces: (- spaces {N}; -).

To decide what indexed text is (orig - text) formatted to (len - number) characters:
	let T be an indexed text;
	now T is orig;
	let N be the number of characters in T;
	if N < len:
		repeat with Z running from 1 to len - N:
			now T is "[T] ";
	else if N > len:
		replace the regular expression ".{[N - len]}$" in T with "";
	decide on T.

To keypause:
	(- KeyPause(); -)

The release number is 57.
The story creation year is 2010.
The maximum score is 2500.

[include Glulx Entry Points by Nuku Valente.]
Include Text Capture by Eric Eve.
Include Inline Hyperlinks by Nuku Valente.

Section Help Menu

Table of Basic Help Options (continued)
title	description
"Contacting the author"	"If you have any difficulties with [story title], please contact me at: http://blog.flexiblesurvival.com/"
"Hunting"	"You can hunt for specific creatures. Go to a place you can explore from, like the library.[line break][line break]You there? Ok, now type [bold type]hunt (creature)[roman type].[line break][line break]You are not assured success, but a critter is 3 times more likely to show up when actively looked for.[line break][line break]You can also hunt for locations, if you know their name."
"Trading"	"You can trade with certain denizens of the city. Simple [bold type]give x to y[roman type], like give soda to bob. If they want it, they'll give you something back for it. Trades are final, but usually worth it."
"Scoring"	"Staying alive, making friends, and unearthing the mysteries of the city get you points. Losing battles saps points. See how high a score you can manage!"
"Items"	"You will come to have a variety of items. Here are some useful commands.[line break][line break]Item: See a list of items you own.[line break]look (item): Look at a specific item.[line break]use (item): Use an item[line break]get (item): grab a specific item.[line break]get all: get everything in the room.[line break]junk (item): destroy an item forever."
"Weapons"	"Some items you find make good weapons! Be sure to [bold type]use (weapon)[roman type] before a battle to have them at hand."
"Graphics"	"Graphics can be enabled or disabled by typing [bold type]graphics[roman type]."
"Scavenging"	"Type [bold type]scavenge[roman type] in any room you can fast travel from to hunt for food and water."
"Socializing"	"You can [bold type]talk (person)[roman type] to chat it up. If they are of more personal interest with you, you can also [bold type]fuck (person)[roman type]"
"Ending Early"	"Type [bold type]end now[roman type] to cause the game to end early."
"Play On"	"You want to skip that ending? Go for it. Type [bold type]play on[roman type] and time will cease to be a concern. You will not get endings though."
"Wait Less"	"Tired of having to click more to continue much of the text?. Type [bold type]Waits Off[roman type] to skip many delays.[line break]Don't like the change and want to go back?  Type [bold type]Waits On[roman type] to return to the default."
"Clear Less"	"Don't like the page clearing of text?  Want the combat interface at the bottom of the screen?  Type [bold type]Clears Off[roman type] to stop screen clearing.[line break]Don't like the change and want to go back?  Type [bold type]Clears On[roman type] to return to the default."
"Auto Attack"	"If you have the [']Instinctive Combat['] feat you can use different automatic attacks.  These are the same as picking the same option over and over again during combat.  No different results, just less typing for faster gameplay.[line break]Type [bold type]auto attack normal[roman type] for the default method of combat (choose each action).[line break]Type [bold type]auto attack berserk[roman type] to always attack in combat.[line break]Type [bold type]auto attack pass[roman type] to always pass in combat.[line break]Type [bold type]auto attack coward[roman type] to always flee in combat.[line break]Type [bold type]auto attack submit[roman type] to always submit in combat."
"Patron Credits"	"[patroncredits]"

To adjustdefaulthelp: [changes table from Basic Help Menu by Emily Short to better fit this game, without changing that extension, as it may be used by other games]
	now the title in row 2 of Table of Instruction Options is "What to do with >";
	now the description in row 2 of Table of Instruction Options is "The > sign is where the game says, 'Okay, what do you want to do now?'  You may respond by typing an instruction -- usually an imperative verb, possibly followed by prepositions and objects.  So, for instance, LOOK, LOOK AT FISH, TAKE FISH.";
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

The yes or no message is a text that varies. The yes or no message is "[link]yes[end link] or [link]no[end link]> [run paragraph on]".

playerinput is a snippet that varies.

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
		otherwise:
			say "Invalid Selection.";

To get typed command as (S - a snippet): (-
	KeyboardPrimitive(buffer, parse);
	{S} = 100 + WordCount();  -)

To get next key as (S - a snippet): (-
	{S} = VM_KeyChar();  -)

Book 1 - Variable Definitions

The file of flexiblestory is called "flexible1".

monster is a number that varies.
The player has text called name.
The player has a number called Energy.
A person has a number called HP.
The player has a number called MaxHP.
A person has a number called XP.
A person has a number called Level.
The player has a number called Strength.
A person has a number called Dexterity.
The player has a number called Stamina.
The player has a number called Charisma.
The player has a number called Intelligence.
The player has a number called Perception.
The player has a number called Hunger.
A person has a number called Thirst.
The player has a number called Morale.
A person has a number called Lust.
The player has a number called Humanity.
The player has a number called Hunger.
The player has a number called cocks.
The player has a number called testes.
The player has a number called breasts.
The player has a number called cunts.
The player has a number called Breast Size.
The player has a number called Cock length.
The player has a number called Cock Width.
The player has a number called Cunt length.
The player has a number called Cunt width.
The player has a number called armor.
The player has a number called capacity.
A person has a number called libido.
A person has a text called linkaction.

The player has a text called skin. Skin is usually "smooth".
The player has a text called Cock. Cock is usually "[one of]normal[or]flesh-toned[or]uninfected[or]human[at random]".
The player has a text called face. Face is usually "charmingly human".
The player has a text called tail. tail is usually "".
The player has a text called body. Body is usually "charmingly human".
The player has a text called bodyname. Bodyname is usually "human".
The player has a text called facename. Facename is usually "human".
The player has a text called skinname. Skinname is usually "human".
The player has a text called cockname. cockname is usually "human".
The player has a text called tailname. Tailname is usually "human".
The child has a text called bodyname. Bodyname is usually "human".
The child has a text called facename. Facename is usually "human".
The child has a text called skinname. Skinname is usually "human".
The child has a text called cockname. cockname is usually "human".
The child has a text called tailname. Tailname is usually "human".
The player has text called Cock Size Desc.
The player has text called Cunt Size Desc.
The player has text called Breast Size Desc.
The player has text called Short Breast Size Desc.
The player has a text called weapon. Weapon is usually "[one of]your quick wit[or]your fists[or]a quick kick[or]your body[or]some impromptu wrestling[or]an unarmed strike[at random]".
The player has a text called weapon type. Weapon type is usually "Melee".
A person has a number called Weapon damage. Weapon damage is usually 4.
A person has a list of text called conversation.

[See the BFandI extension for an explanation on these new variables.]
The player has a number called scalevalue.  The scalevalue is usually 3.						[value for body size]
The player has a text called bodydesc.  The bodydesc is usually "[one of]average[or]normal[or]unchanged[at random]".	[adjective for body type/appearance]
The player has a text called bodytype.  The bodytype is usually "human".						[broad adjective for species]
The player has a number called daycycle.												[day/night bias]

freecred is a number that varies.
playon is a number that varies.
the player has a list of text called invent.
the player has a list of text called vials.
Rooms has a list of text called invent.
The player has a list of text called feats.
A person can be a trader.
Scenario is a text that varies.
Allobjs is a list of text that varies.
Grab Object is a kind of thing.
a grab object has a number called objsize. The objsize of grab object is usually 3.	[Used only for armaments and journal.]
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
Equipment has a text called descmod. The descmod of equipment is usually "".
Equipment has a text called placement. The placement of equipment is usually "end".
Equipment has a text called slot. The slot of equipment is usually "".
Equipment has a number called AC. The AC of equipment is usually 0.
Equipment has a number called effectiveness.  The effectiveness of equipment is usually 0.
Equipment has a number called dodgebonus.  The dodgebonus of equipment is usually 0.	[Rare, usually magic]
Equipment has a number called damagebonus.  The damagebonus of equipment is usually 0.	[Rare, usually magic]
Equipment has a number called fleebonus.  The fleebonus of equipment is usually 0.		[Usually a penalty]
A grab object can be temporary. A grab object is usually temporary.
A grab object can be fast. A grab object is usually not fast.
A grab object can be infectious.
A grab object can be milky. A grab object is usually not milky.
A grab object can be cum. A grab object is usually not cum.
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
Levelwindow is a number that varies. Levelwindow is 3.
Lastjournaluse is a number that varies. Lastjournaluse is 248.
Targetturns is a number that varies.
Started is a number that varies.
Freefeats is a number that varies.
Lost is a number that varies.
showlocale is a truth state that varies.  showlocale is usually true.
Child is a person.
Child has a number called Gestation.
Child can be born. Child is not born.
Childrenfaces is a list of text that varies.
Childrenskins is a list of text that varies.
Childrenbodies is a list of text that varies.

A situation is a kind of thing.
A situation can be resolved or unresolved. A situation is usually unresolved.
A situation has a text called sarea. The sarea of a situation is usually "Outside".
A situation has a number called level. The level of a situation is usually 0.
A situation has a number called minscore. The minscore of a situation is usually -2147483648.
A featset is a kind of thing.
inasituation is a truth state that varies.  inasituation is normally false.

Definition: A grab object(called X) is wielded:
	if weapon object of player is x, yes;
	no;

Definition: A grab object (called x) is unwieldy:		[applies to armaments only]
	if grab object is journal, no;
	if the absolute value of ( scalevalue of player - objsize of x ) > 1, yes;
	no;

A person can be submissive.  A person is usually not submissive.

Definition: A person (called x) is submissive:
	if "Submissive" is listed in feats of x, yes;
	no;

A person can be dominant.  A person is usually not dominant.

Definition: A person (called x) is dominant:
	if "Dominant" is listed in feats of x, yes;
	no;

A person can be twistcapped.  A person is usually not twistcapped.

Definition: A person (called x) is twistcapped:
	if "Twisted Capacity" is listed in feats of x, yes;
	no;

A person can be internal. A person is usually not internal.

internalbypass is a truth state that varies. internalbypass is usually false.

Definition: A person (called x) is internal:
	if cockname of x is listed in infections of internallist and internalbypass is false, yes;
	no;

a person can be knotted. a person is usually not knotted.

Definition: A person (called x) is knotted:
	if cockname of player is listed in infections of knotlist, yes;
	no;

Definition: A person (called x) is perminfected:
	if ( jackalmantf > 0 or jackalboytf > 0 ) or nightmaretf > 0 or HellHoundlevel > 0 or ( wrcursestatus >= 7 and wrcursestatus < 100 ), yes;
	no;

Definition: A situation(called X) is available:
	if x is resolved, no;
	if x is close:
		if score < minscore of x:
			no;
		otherwise if hardmode is true:
			yes;
		otherwise if the level of X is less than (the level of the player plus levelwindow plus 1):
			yes;
	no;

Definition: A situation(called X) is close:
	if ( sarea of X matches the text battleground, case insensitively ) or ( battleground is "Outside" and ( the sarea of X is "Allzones" or the sarea of x is "allzones" ) ):
		yes;
	no;

Definition: A scavevent(called X) is scavable:
	if ( sarea of X matches the text battleground, case insensitively ) or ( sarea of X is "Allzones" or the sarea of X is "allzones" ):
		if score < minscore of x:
			no;
		otherwise if hardmode is true:
			yes;
		otherwise if the level of X is less than (the level of the player plus levelwindow plus 1):
			yes;
	no;


Definition: A person(Called X) is pure:
	if bodyname of x is facename of X:
		if bodyname of x is tailname of X:
			if bodyname of x is skinname of X:
				if bodyname of x is cockname of X:
					yes;
	no;

Definition: A person (called x) is purehuman:
	if bodyname of player is "human" or bodyname of player is "herm human":
		if facename of player is "human" or facename of player is "herm human":
			if tailname of player is "human" or tailname of player is "herm human":
				if skinname of player is "human" or skinname of player is "herm human":
					if cockname of player is "human" or cockname of player is "herm human":
						yes;
	no;

Definition: A person(called X) is male:			[note: this is both male and herm]
	if cocks of x is greater than 0, yes;

Definition: A person(called X) is female:			[note: this is both female and herm]
	if cunts of x is greater than 0, yes;

Definition: A person(called X) is herm:
	if cocks of x > 0 and cunts of x > 0, yes;

Definition: A person(called X) is neuter:
	if cocks of x is 0 and cunts of x is 0, yes;

A person can be booked. A person can be bunkered. A person is usually not booked. A person is usually not bunkered.

Definition: A person(Called X) is booked:
	If x is the player, no;
	If x is Trixie, no;
	if x is Velos, no;
	if the location of x is Grey Abbey Library, yes;
	if the location of x is Grey Abbey 2F, yes;
	no;

Definition: A person(Called X) is bunkered:
	If x is the player, no;
	if x is Velos, no;
	if the location of x is Bunker, yes;
	no;



A thing can be rooted in place. A thing is usually not rooted in place.
A thing can be restful. A thing is usually not restful.
A door can be dangerous.
A door has a text called marea.
A room can be known or unknown. A room is usually unknown.
A room can be fasttravel. A room is usually not fasttravel.
A room can be private. A room is usually not private.
A room can be sleepsafe.  A room is usually not sleepsafe.
The player is wearing a watch.
The player is wearing a backpack. The description of the backpack is "A backpack, full of stuff. To look inside, type [bold type]item[roman type] To look at an item, type [bold type]look (item name)[roman type] To use an item, type [bold type]use (item name)[roman type]. Do you see something in the room you want to take with you? Type [bold type]grab (item name)[roman type] to snatch it up.".

instead of examining a grab object(called x):
	say "[the desc corresponding to a object of x in the table of game objects]";
	if "Weaponsmaster" is listed in feats of player and x is an armament:
		say "  Looking over the weapon with your expert knowledge, you assess it to be a [weapon damage of x] damage weapon.";

Does the player mean examining a situation: it is very unlikely.


Section Starting Variables

[ See the Core Mechanics/Presets.i7x file for personalizing your defaults. ]

[
startgenderchoice is a number that varies.
startstatbonus is a number that varies.
startscenariochoice is a number that varies.
freefeatgeneral is a text that varies.
freefeatfun is a text that varies.
hypernull is a number that varies.
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
ovipregnant is a truth state that varies.  ovipregnant is usually false.		[marks if ovi-pregnant now]
ovipregalways is a truth state that varies.  ovipregalways is usually false.	[marks if allowed to pick always ovi]

Book 2 - Places

Grey Abbey Library is a room.  Grey Abbey Library is fasttravel.  Grey Abbey Library is sleepsafe.
The description of Grey Abbey Library is "[abbey desc]".
Bunker is a room.  The description of Bunker is "[bunker desc]".
The invent of Bunker is { "face mask","medkit","medkit","water bottle","water bottle","water bottle","food","food","pocketknife","cot" }.
Library door is a door. "Solid oak doors lend a stately appearance to the library.". Library door is dangerous.
East of 7th Street & Main is the Library Door. "Solid oak doors lend a stately appearance to the library.".
East of library door is Grey Abbey Library.
Inside of Grey Abbey Library is Bunker.
Bunker is below Grey Abbey Library.
The player is in Bunker.
The marea of library door is "Outside".

Instead of going down from Grey Abbey Library:
	try going inside;

Instead of going up from Bunker:
	try going outside;

to say bunker desc:
	say "     Sparsely appointed, this bunker was built as a fallout shelter back during the Cold War, then abandoned to become a forgotten curiosity at best. You are standing in the main bunker room, a rectangular chamber measuring about 60 feet in length and 30 feet in width. Its walls are solid concrete and long rows of shelves are built into the back wall. There are several large storage lockers in the bunker as well. They look like a good place to store all your extra stuff. A long double row of simple metal beds is bolted to the floor and walls for those taking shelter here to [bold type]rest[roman type] upon";
	if "cot" is listed in invent of Bunker:
		say ".  One of the cots apparently was poorly installed and the bolts attaching it to the floor have come loose. You could take it along if you'd like";
	say ". The small sink taking up a corner of the room seems to be broken, producing no water no matter how much the knob is turned. Two doorways to the north and northeast lead to adjoining rooms - showers and a small restroom, while a thicker, secure-looking door opens to the stairwell used to go [bold type]outside[roman type].";
	if "old boombox" is listed in invent of Bunker:
		say "     You have set up the old boombox in one corner where it continues to play despite not being plugged into anything. Maybe it has really amazing batteries - or draws energy some other way. No matter what, it provides a mix of tunes and the occasional weather report on the continuing heat wave. Fiddling with the dials can get different songs and genres of music, but no actual news or broadcast radio. The radio broadcaster you hear seems the same across the stations, though his tone and delivery suits the format of the current [']station[']. Its dials and settings change on their own from time to time as if to provide music to suit the situation or dropping its volume when you're taking a nap.";

North of Bunker is Communal Shower.
Communal Shower is a room. The description of Communal Shower is "[bshower desc]".
lastShowerUse is a number that varies. lastShowerUse is usually 10000.

to say bshower desc:
	say "     The bunker has a small communal shower with a pretty simple setup. The first thing one sees when entering is a short bench for people to sit on as they undress. Walking to the end of a short dividing wall and then stepping over a raised border that keeps the water in, you're in the actual shower cabin a few seconds later - a tiled space with five showerheads on the walls all around and a large drain in the middle.";
	if library computer is powered:
		say "     Experimentally turning the knobs under one of the showerheads, you get a light spray of water coming out of it. Seems like you can at least wash here now. Drinking the water wouldn't be advisable though, as you vaguely remember mentions of the use of lead piping from the tour you once took through the place. As corroded as that has to be by now, you decide not to risk lead poisoning on top of all your other problems.";
	otherwise:
		say "     Experimentally turning the knobs under one of the showerheads, you get... nothing. Seems like the showers are out of commission for the moment. Thinking back to the tour of the place you joined a year back (which is why you knew of the bunker in the first place), you remember them saying that there is a large water tank somewhere in the underground nearby. A pump powered by batteries is supposed to supply the bunker - but those will be long deterioated by now. Maybe you can get the water running by [bold type]supplying the library with power[roman type] instead.";

Northeast of Bunker is Underground Restroom.
Underground Restroom is a room. The description of Underground Restroom is "[brestroom desc]".

to say brestroom desc:
	say "     This room is very bare bones - just a small chamber with several stalls containing toilets. Checking one out, you realize that it isn't a typical piece of bathroom installation. There is no water or anything really under the tightly closing lid... just what seems like a long drop into darkness. You try not to imagine how the lower end of the shaft might look like, or smell.";

to say abbey desc:
	say "     This former abbey has been rebuilt to become a mid-sized library. The architecture and design shows its origins despite the renovations made - a number of simple yet elegant columns, wall sconces and several other of the original features have been kept to give the library some 'character'. The central room has a reception desk at the front, with long rows of bookshelves stretching out behind it and to the sides. Small seating groups chairs and sofas make the library quite a nice place to hang out in and read. There is an upper story to the library too, overhanging the ground floor with about a third of the floor left open in the middle, allowing people to look down into the main stacks over the wooden railings. A stairway leads up there not too far from where you're standing. High above, thick wooden beams form the rafters of the building's roof.";
	say "     [if library computer is powered]Now that the building has power, the overhead lights glow, although they sometimes flicker and dim as whatever goes on in the rest of the city right now causes fluctuations. The computer on the front desk has power as well now and might be of some use[otherwise]A computer sits on the front desk, although without power it isn't of any help right now[end if]. You came here because you remembered there was a disused bunker in the basement. It's kept you alive, so far.";
	if Fang is booked and Alexandra is booked:
		say "     Fang and Alexandra are on guard here, taking shifts watching by the door";
		if hp of Fang < 3:
			say ".  The wolf tied to a [one of]column[or]desk[or]water fountain[or]metal staircase[or]wall sconce[at random]";
		otherwise:
			say ".  The powerful male wolf watches in stoic silence";
		say ".  The doberwoman paces around, running her paw along her nightstick as if hoping for an opportunity to use it.";
	otherwise if Fang is booked:
		if hp of Fang < 3:
			say "     Fang is on guard here by the door on his rope leash, tied to a [one of]column[or]desk[or]water fountain[or]metal staircase[or]wall sconce[at random].";
		otherwise:
			say "     Fang is on guard here by the door, the powerful male wolf watching in stoic silence.";
	otherwise if Alexandra is booked:
		say "     Alexandra is on guard here, watching by the door for trouble. The doberwoman paces around, running her paw along her nightstick as if hoping for an opportunity to use it.";

Grey Abbey Library is below Grey Abbey 2F.
Grey Abbey 2F is a room.  The description of Grey Abbey 2F is "[abbey 2F desc]".
the scent of Grey Abbey 2F is "The smell of books permeates the air in the library, the musty odour is slightly more noticeable up here on the second floor thanks to the older, less frequently used tomes.".

to say abbey 2F desc:
	say "     The spacious second story of the library opens up in the middle, with the floor of about a third of the width of the building missing and surrounded by well-crafted wooden railings. They clearly are a part of the old abbey's features that was kept in the renovation, giving the place quite a nice atmosphere. From what therefore is basically a huge balcony, you can overlook the main stacks below. As in the rest of the building, rows of bookshelves take up most of the space, though small seating groups with sofas and cushioned chairs promise comfortable places to rest too. There are a few secluded desks here and there, serving as quiet study places.";

Outside Trevor Labs is a room. "Like about everyone in this city, you've heard of Trevor Labs. They are - or were - a biopharm setup. Kind of new on the block, and the local news made a big stink a little while ago over accusations of skirting the edge of numerous laws in the name of science. The company's headquarters rise as a sleek and tall glass building to your west. You're not certain but you think you can see some light in one of the windows, visible in the [time of day] light. Curious. Definitively something to investigate...".
understand "lab" or "labs" as Outside Trevor Labs.
Outside Trevor Labs is fasttravel.

Away from Labs is a door. "East of here lays the rest of the city." It is dangerous. The marea of Away from Labs is "Outside". Away from labs is east of Outside Trevor Labs and west of Wandering the City.

Trevor Labs Lobby is a room. "You're standing in the ground floor lobby of Trevor Labs. New age furniture has been ripped to shreds and thrown around, while the walls and floor are splattered in unknown liquids. Most of the gunk is creamy white, with some reddish-brown and even green streaks mixed in... all of it well dried by now thankfully. It is somewhat dark in here, but some emergency lights draw your attention to the stairs leading up and down.".

West of Outside Trevor Labs is Trevor Labs Lobby.

2F Trevor Labs is a room. "You're standing in a hallway on the second floor of the Trevor Labs. The lighting is dim, except for brilliant light shining from beneath a closed door at the end of the hallway. It casts a cone of brightness into the gloom. The area is silent and smells of disinfectant. There does not seem to be much here to look at besides a broken water cooler and a motivational poster with a kitten, encouraging you to hang in there.".
Trevor Labs Lobby is below 2F Trevor Labs.

Primary Lab is a room. "One of the few places in the city with working power, this lab is brilliantly lit, showing off banks of busy computer terminals displaying dizzying amounts of information, largely obscure and technical. Overhead, soft humming of air conditioning is the likely reason that the room feels just a bit chilly. There is an especially comfy chair resting before the largest computer. There is only one window here, and it is mostly blocked by filing cabinets. Perhaps it is the light you saw outside.".
Primary Lab is north of 2F Trevor Labs.
There is an Infection Terminal in Primary Lab. "A glowing infection terminal quietly lists all the infections in the corner.".

Park Entrance is a room. "Ah, the city park. Smell that fresh pine air, and the scent of - wait no, that grass has not been mowed for quite a while. Just how long ago did all this trouble start anyway? Time seems fluid these days, making it hard for you to remember. No matter what, the grass has started to creep up onto the pavement that leads further into the park (north) and all the other plants seem pretty overgrown and untamed too. The park's boundary wall remains largely intact, with a sign that welcomes you into the park, except during night hours, not that anyone is enforcing this rule at the moment.".
Park Entrance is fasttravel.
Park Trail is a room. "Following this North/South trail, you can see the severely overgrown state of the park all around you. All this can't be purely natural - it'd take ages to have gotten this bad. Seems like some of the spreading nanites decided to create a section of untamed wilderness right in the middle of the city. There are dense woods in almost every direction, including to the North, where the paved trail ends at a tree that must have literally exploded out of the ground under it. In the Northwest, there is a small expanse of bamboo forest, with a Torii arch forming the start of a narrow gravel trail leading into it.[line break]The path northwest looks safe and strangely peaceful, but it'll be easy to become lost in the rest of the thick woods of the park - though perhaps exploring might have its own rewards. You can hear soft clopping sounds just beyond sight, and the occasional buzz of insects. The air is fresh here under the [short time of day] sky.".
North of Park Entrance is Park Trail.
Park Exit is a door. Park Exit is dangerous. The marea of Park Exit is "Outside". Park Exit is undescribed. Park Exit is south of Park Entrance. South of Park Exit is Outside Exploration.
East of Park Trail is Faint Trail.
East of Faint Trail is Lost in the Woods.
Faint Trail is a door.
The description of a faint trail is "A faint trail that heads eastwards into the deep woods. Looks dangerous, who knows what is lurking out there...".
Faint Trail is dangerous.
The marea of Faint Trail is "Park".

Part 2 - Things

The cot is rooted in place. The cot is restful.
Microwave is a thing. "A small microwave lays, almost hidden, in the corner, perhaps you could [bold type]microwave[roman type] something."

Section - Vending Machine

To add (item - a text)  to invent of player:
	repeat with x running through grab objects:
		if the printed name of x matches the text item:
			increase carried of x by 1;
			break;

To add (item - a text)  to the invent of player:
	repeat with x running through grab objects:
		if the printed name of x matches the text item:
			increase carried of x by 1;
			break;

To add (item - a text)  to the invent of the player:
	repeat with x running through grab objects:
		if the printed name of x matches the text item:
			increase carried of x by 1;
			break;

To add (item - a text)  to invent of the player:
	repeat with x running through grab objects:
		if the printed name of x matches the text item:
			increase carried of x by 1;
			break;

To remove (item - a text)  from invent of player:
	repeat with x running through grab objects:
		if the printed name of x matches the text item:
			now carried of x is 0;
			break;

To remove (item - a text)  from the invent of player:
	repeat with x running through grab objects:
		if the printed name of x matches the text item:
			now carried of x is 0;
			break;

To remove (item - a text)  from the invent of the player:
	repeat with x running through grab objects:
		if the printed name of x matches the text item:
			now carried of x is 0;
			break;

To remove (item - a text)  from invent of the player:
	repeat with x running through grab objects:
		if the printed name of x matches the text item:
			now carried of x is 0;
			break;

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
		if C is "1" begin; let D be 1; otherwise if C is "2"; let D be 2;
		otherwise if C is "3"; let D be 3; otherwise if C is "4"; let D be 4;
		otherwise if C is "5"; let D be 5; otherwise if C is "6"; let D be 6;
		otherwise if C is "7"; let D be 7; otherwise if C is "8"; let D be 8;
		otherwise if C is "9"; let D be 9; otherwise if C is "0"; let D be 0;
		otherwise; decide on 0; end if;
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
	let the bonus be (( the strength of the player minus 10 ) divided by 2);
	let the dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] -- [dice plus bonus]: ";
	increase dice by bonus;
	if dice is greater than 15:
		say "A soda can pops out!";
		add "soda" to invent of player;
		increase score by 1;
		increase dispensed of cola vending machine by 1;
	otherwise:
		say "Nothing happens...";
	if ( a random chance of 5 in 100 succeeds ) or dispensed of noun is greater than 9:
		say "The machine gives a final spark of defeat. You are certain there is no more soda to be had.";
		remove Cola Vending machine from play;


Book 3 - Definitions

Definition: a direction (called D) is valid if the room D from the location of the player is a room.
Definition: A grab object (called D) is owned:
	if there is a name corresponding to a object of d in the table of game objects:
		if the carried of d is greater than 0, yes;
	no;

Definition: A grab object (called D) is stored:
	if there is a name corresponding to a object of d in the table of game objects:
		if the stashed of d is greater than 0, yes;
	no;

Definition: A grab object (called D) is present:
	if there is a name corresponding to a object of d in the table of game objects:
		if the name corresponding to a object of  d in the table of game objects is listed in the invent of the location of the player, yes;
	no;

before examining the grab object(called x):
	let good be 0;
	if x is owned, now good is 1;
	if x is present, now good is 1;
	if good is 0, say "I don't see any [x] around here..." instead;

[ ]

Book 5 - Tables

Table of Game Objects
name	desc	weight	object	sortname (indexed text)
"medkit"	"A small white plastic box with a red cross on it. It has all the things needed for basic medical needs on the go! Using it will restore a lot of HP, more with good intelligence."	3	medkit
"water bottle"	"A bottle of water. Good for slaking thirst."	1	water bottle
"dirty water"	"A bottle of contaminated water. Drinker beware."	1	dirty water
"food"	"Some food. Nothing fancy. Maybe a sandwich, or a husky girl leg, whatever happens to be handy."	2	food
"journal"	"A small leather clad book. Spending some time writing in it can help clear your thoughts and recenter your troubled mind."	2	journal
"pocketknife"	"Mighty big for a pocket knife, nice and solid too. Could be handy."	1	pocketknife
"chair"	"A metal folding chair that belongs in a food court. It could serve as a weapon in a pinch!"	10	chair
"gryphon milk"	"A small bottle filled with fluid taken from one of those gryphons. You are fairly certain drinking it would be a poor idea, but maybe there is a use for it?"	2	gryphon milk
"distilled milk"	"Gryphon milk boiled down to a concentrated, powdery, form? That can't be dangerous!"	1	distilled milk
"glob of goo"	"A small bottle of strange, neon colored, goop"	1	glob of goo
"soda"	"A can of some soda or another. Somehow, it is still cool to the touch"	1	soda
"chips"	"Not always literally potato chips, but any kind of junk food. Not the best food, but hey, edible."	1	chips
"cot"	"A folding cot. You could carry it around and [bold type]rest[roman type] anywhere!"	25	cot
"dog milk"	"A bottle of dog milk? Man you will take anything."	3	dog milk
"face mask"	"A basic filtered face mask.  Maybe it will help?  Probably not[first time].  You doubt it was designed with this madness in mind[only]."	3	face mask
[
"heuristic processor"	"A small electronic circuit.  You've been told it's amazingly adaptive and can learn anything.  Probably nonsense, but maybe you can find a use for it, somehow."	1	heuristic processor
"reprogramming device"	"An attempt by Dr. Mouse to build a device to reprogram the nanites.  It's too bulky, and doesn't have the processing capacity to be of any use in the field.  Perhaps you could find a way around those limitations?"	13	reprogramming device
"infection scanner"	"Upgraded Infection Monitor.  Or it would have been, it's clearly not finished.  It's missing any sort of display to show what it finds.  Perhaps you could use it's scanner parts elsewhere?"	7	infection scanner
]

face mask is equipment. It is a part of the player. It is not temporary.
The descmod of face mask is "A filtered mask covers nose and mouth in a vain attempt to help. ".
The placement of face mask is "face".
journal is a grab object. It is a part of the player. It is not temporary. The carried of journal is 1.
journal has a number called hitbonus.  hitbonus of journal is usually 0.
cot is a grab object. It is a part of the player. It is not temporary.
understand "Bed" as cot.
Understand "book" as journal.
medkit is a grab object. It is a part of the player. It is fast. It is not temporary.
dirty water is a grab object. It is a part of the player. The trade of dirty water is "chips". The purified of dirty water is "water bottle".
understand "water" as dirty water.
water bottle is a grab object. It is a part of the player. The trade of water bottle is "chips".
Does the player mean using the dirty water: it is unlikely.
Does the player mean stashing the dirty water: it is unlikely.
Does the player mean retrieving the dirty water: it is unlikely.
dog milk is a grab object. It is a part of the player.  it is milky.
The purified of dog milk is "water bottle".
The purified of wyvern goop is "food".
soda is a grab object. It is a part of the player.
chips is a grab object. It is a part of the player.
glob of goo is a grab object. It is a part of the player. glob of Goo is infectious. The strain of glob of goo is "Goo Girl".
food is a grab object. It is a part of the player. The trade of food is "soda".
pocketknife is a armament. It is a part of the player. It has a weapon "[one of]your large knife[or]your blade[or]your trusty pocket knife[or]flashing steel[at random]". The weapon damage of pocketknife is 5. The weapon type of pocketknife is "Melee". It is not temporary.  the objsize of pocketknife is 2.
understand "knife" as pocketknife.
chair is a armament. It is a part of the player. It has a weapon "[one of]a folding chair[or]your improvised weapon[or]that move you saw on WWE[or]a metal chair to the eyes[at random]". The weapon damage of chair is 5. The weapon type of chair is "Melee". It is not temporary.  the objsize of chair is 4.
understand "seat" as chair.
gryphon milk is a grab object. It is a part of the player. Understand "milk" as gryphon milk. Gryphon milk is infectious. The strain of gryphon milk is "Hermaphrodite Gryphon". The trade of Gryphon Milk is "distilled milk".  gryphon milk is milky.
distilled milk is a grab object. It is a part of the player.  it is not milky.


The invent of the player is { "journal" }.

Table of Start Game
title	subtable	description	toggle
"Strength: [strength of player]"	--	"Your ability to exert force. Helps deal damage with melee weapons, and to carry heavy objects."	finish stats rule
"Dexterity: [Dexterity of player]"	--	"Speed, agility. Dexterity  helps to land hits with melee weapons and avoid being hit in kind."	finish stats rule
"Stamina: [stamina of player]"	--	"Your ability to withstand punishment. Stamina also helps to resist the physical aspects of infection."	finish stats rule
"Charisma: [Charisma of player]"	--	"Your ability to exert social force. Deal with NPCs favorably, also helps resist mental aspects of infection."	finish stats rule
"Perception: [Perception of player]"	--	"Your ability to detect things. Also helps resist mental aspects of infection."	finish stats rule
"Intelligence: [Intelligence of player]"	--	"Your ability to logically compute things. Helps with activities that require 'book smarts'."	finish stats rule
["Reroll Stats"	--	"Randomize your stats. Do this as often as you want."	random stats rule]
"Select a Stat to gain [if started is 0]+5[otherwise]+1[end if]"	--	"You are satisfied with your stats"	--
"Restore a save"	--	"Restore a save game!"	prerestore the game rule

This is the prerestore the game rule:
	decrease the menu depth by 1;
	try restoring the game;
	if maxhp of player is 0, try restarting the game;

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
"Strength: [strength of the player], Dexterity: [dexterity of the player], Stamina: [stamina of the player], Charisma: [Charisma of the player], Perception: [perception of the player], Intelligence: [intelligence of the player]."	--	"Stats"	--
"Health: [hp of player]/[maxhp of player], Lust: [lust of player], Morale: [morale of player], Humanity: [Humanity of player]"	--	"More stats"	--
"Time Remaining: [( turns minus targetturns ) divided by 8] days, [(remainder after dividing ( turns minus targetturns ) by 8 ) times 3] hours, Score: [score]"	--	"Time until the game ends."	Turnpass rule

Table of Help
title	subtable	description	toggle
"Is this all?"	--	"Yep, more to come later, promise!"
"Exit"	--	"Previous Menu"	menu exit rule

Table of random critters
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp (a number)	lev (a number)	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot (text)	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
"Dragoness"	""	""	""	""	"reptilian snout and great teeth. Two horns spiral backwards over your"	"large and reptilian, covered in [skin of player] flesh. You are forced to all fours except for brief, awkward, moments. It reminds you of a dragon, if you had to guess."	"[one of]dull red[or]dull orange[or]lustrous blue[sticky random] scaled"	"You have a wide, tapered, dragon's tail with a spade at the tip."	"[one of]draconic[or]normally internal[or]reptilian[at random]"	"your face draws forward into a reptilian snout, covered in [skin of player] flesh."	"Your body grows to larger than human norm, becoming quadrupedal, with great spikes along your back. You look very much like a dragon."	"Your skin breaks out in large armored scales that rapidly spread over your body"	"Your spine tingles before it explosively expands backwards into a great, thick, tail with spikes along the top."	"Your cock tingles as it becomes draconic in shape, a vent forming to hold it within you."	20	10	12	12	12	12	"Female"	--	--	20	"Nowhere"	0	0	0	2	10	0	1	15	10	40	--	0	4	"[one of]monstrous[or]large[or]powerful[at random]"	"draconic"	false	false	false	--	"default"

understand the command "feed" as something new.

Definition: A person is fastlearning:
	if "Fast Learner" is listed in feats of player, yes;
	no;

To say level up needed:
	say "[if player is fastlearning][((level of player plus 1) times 8)][otherwise][(level of player plus 1) times 10][end if]";

Table of Fancy Status
left	central	right
"Location: [the player's surroundings]"	"Time: [time of day] Lvl: [level of player]"	"HP:[hp of player]/[maxhp of player]"
"Freecred: [freecred]"	"Hunger: [hunger of player] Thirst: [thirst of player] Libido: [libido of player]"	"Score:[score]/[maximum score]"
"Sanity: [humanity of player]/100"	"Evac: [( turns minus targetturns ) divided by 8] d, [(remainder after dividing ( turns minus targetturns ) by 8 ) times 3] h[if number of entries in childrenfaces is greater than 0]  Kids: [number of entries in childrenfaces][end if]"	"XP:[xp of player]/[level up needed]"
[" You are:[Player_Status],[Player_Gender_Status]"	""	""]


to say exitlist:
	repeat with nam running through valid directions:
		say "[link][printed name of nam][end link] ";


Book 6 - Rules, Obey them!

Part 1 - Flags

flag is a kind of thing.
A flag has a list of text called infections.
A flag has a list of situations called badspots.
A flag can be banned. A flag is usually not banned.
A flag can be warded. A flag is usually not warded.
Furry is a flag.
Guy is a flag.
Girl is a flag.
Humorous is a flag.
Hermaphrodite is a flag.
Hellspawn is a flag.
Feral is a flag.
[Cub is a flag.  Cub is usually warded.	]
when play begins:
	add { "Awesome tree", "Cock Cannon" } to infections of humorous;
	add { "Slut Rat", "Female Husky", "Black Equinoid", "Ashen Breeder", "Lizard Girl", "Skunk", "Shemale Smooth Collie", "Bovine", "Feline", "Herm Hyena", "Bear", "Pit bull", "Painted Wolf Herm", "sewer gator", "Deer", "sea otter", "Ebonflame Draken", "red kangaroo", "German Shepherd", "Chinchilla" } to infections of furry;
	add { "Skunk", "Shemale Smooth Collie", "Bovine", "Tentacle Horror", "Demon Brute", "Cock Cannon", "Feral Sea Dragon", "German Shepherd", "Feline", "Felinoid" } to infections of guy;
	add { "Ashen Breeder", "Ebonflame Draken", "Slut Rat", "Parasitic Plant", "Herm Hyena", "Painted Wolf Herm", "sewer gator", "Deer", "Black Equinoid", "spidergirl", "Mothgirl" } to infections of hermaphrodite;
	add { "Female Husky", "Lizard Girl", "Tentacle Horror", "Feline", "Bear", "Skunk", "spidergirl", "Mothgirl", "red kangaroo", "City Sprite", "Feral Sea Dragoness", "Bovine" } to infections of girl;
	add { "Wyvern", "Yamato Dragon", "Yamato Dragoness", "Feral Sea Dragon", "Feral Sea Dragoness", "Snake","Sierrasaur", "Feral Wolf", "Latex Wolf", "Ebonflame Whelp", "Ebonflame Dragator", "Manticore", "Quilled Tousky", "Hydra Beast", "Feral Shaft Beast", "Flaming Lynx", "Cerberus", "Sabretooth", "Friendship Pony", "Pegasus", "Feral Gryphon", "Shadow Beast", "Behemoth", "Feral Cheetah", "Peculiar Dragon" } to infections of feral;

[corollary]
marker is a kind of thing.
A marker has a list of text called infections.
Tailweapon is a marker.
when play begins:
	add { "Drone Wasp", "red kangaroo", "Skunk", "Wyvern", "Anthro Shaft Beast", "Feral Shaft Beast", "Hermaphrodite Dolphin", "Dragon", "Dragoness", "Yamato Dragon", "Yamato Dragoness", "sewer gator", "pirate shark", "Ebonflame Dragator", "Ebonflame Draken", "Ebonflame Whelp", "spidergirl", "Feral Sea Dragon", "Feral Sea Dragoness", "Naga", "Lizard Girl" } to infections of Tailweapon;

Felinelist is a marker.	[list of feline infections]
when play begins:
	add { "Feral Cheetah", "cheetah woman", "Cougar", "Feline", "Felinoid", "Jaguar", "Leopardman", "Manticore", "Margay", "Ninja Cat", "Pantherherm", "Panther Taur", "Plush lion", "Rubber tigress", "Sabretooth", "Siamese Cat", "sphinx", "Snow Leopard", "Tiger", "tigertaur", "Tigress Hooker", "Wildcat" } to infections of Felinelist;

Caninelist is a marker.	[list of canine/lupine infections]
when play begins:
	add { "Alpha Husky", "Alpha Wolf", "Ashen Breeder", "Cerberus", "Chocolate Lab", "Coyote", "Dalmation", "Female Husky", "Feral Wolf", "German Shepherd", "jackalboy", "jackalman", "Latex Wolf", "Painted Wolf Herm", "Pit bull", "Retriever", "Shemale Smooth Collie", "Werewolf Costume", "Wolftaur", "Wrestling Wolf" } to infections of Caninelist;

Equinelist is a marker.	[list of equine infections]
when play begins:
	add { "Black Equinoid", "Centaur Mare", "Centaur Stallion", "Horseman", "Mareslut", "Mutant Centaur", "Nightmare", "Pegasus", "Stallionboi", "Unicorn", "Zebra", "Red Horse" } to infections of Equinelist;

Vulpinelist is a marker.	[list of vulpine infections]
when play begins:
	add { "Clockwork Fox", "hermaphrodite latex vixen", "Latex Fox", "Vixen Nurse", "Arctic fox", "Vulpogryph", "Kitsune" } to infections of Vulpinelist;

Reptilelist is a marker.	[list of reptiles/snakes/dragons/dinosaurs/etc... infections]
when play begins:
	add { "Ebonflame Dragator", "Ebonflame Draken", "Ebonflame Whelp", "Feral Sea Dragon", "Feral Sea Dragoness", "Lizard Girl", "sewer gator", "Triceratops", "Wyvern", "Yamato Dragoness", "Yamato Dragoness", "Slutty Dragoness", "Horny Dragon", "Dragon", "Dragoness", "Naga", "Snake", "Reptaur", "Sierrasaur" } to infections of Reptilelist;

Insectlist is a marker.	[list of insectile/arachnid/bug infections]
when play begins:
	add { "Black Wasp", "Drone Wasp", "Butterfly", "Mothgirl", "spidergirl", "Spidertaur" } to infections of Insectlist;

Plantlist is a marker.	[list of plant infections]
when play begins:
	add { "Awesome tree", "Dryad", "Parasitic Plant", "Mushroom Men" } to infections of Plantlist;

Avianlist is a marker.	[list of avian/bird infections]
when play begins:
	add { "Bald Eagle", "Fluffy Owl", "harpy", "Hermaphrodite Gryphon", "peacock", "Quilled Tousky", "Hawkman", "Siren", "Vulpogryph", "Bird of Paradise" } to infections of Avianlist;

Avianpredlist is a marker.	[list of predatory avian/bird infections]
when play begins:
	add { "Bald Eagle", "Fluffy Owl", "Hermaphrodite Gryphon", "Hawkman" } to infections of Avianpredlist;

Rodentlist is a marker.	[list of rodent infections]
when play begins:
	add { "Slut Rat", "squirrel" } to infections of Rodentlist;

Taurlist is a marker.	[list of tauric infections]
when play begins:
	add { "Reptaur", "Centaur Mare", "Centaur Stallion", "Mutant Centaur", "Panther Taur", "tigertaur", "Wolftaur", "Skunk Taur" } to infections of Taurlist;
[Note, this does not contain the special tauric version of the Skunkbeast Lord form, as that is conditional.  It also does not include the spidergirl and Spidertaur forms, as their genitals are located in the front where the human pelvis would be, and therefore would not match with scenes specifically designed for taur anatomy.]

Knotlist is a marker.	[list of infections w/knotted cock]
when play begins:
	add { "Alpha Husky", "Alpha Wolf", "Ashen Breeder", "Doberman", "jackalboy", "jackalman", "Wolftaur", "Arctic fox", "Retriever", "Herm Hyena", "Coyote", "Latex Wolf", "Pit bull", "Hermaphrodite Gryphon", "Latex Fox", "Dalmation", "Painted Wolf Herm", "Female Husky", "Feral Wolf", "Vixen Nurse", "Werewolf Costume", "Vixentaur", "Vulpogryph", "Dracovixentaur", "Clockwork Fox", "Fennec", "Cerberus", "Chocolate Lab", "Black Wolf", "Hellhound", "German Shepherd", "hermaphrodite latex vixen", "Kitsune", "Shemale Smooth Collie", "Wrestling Wolf", "Football Wolfman" } to infections of Knotlist;

Latexlist is a marker.	[list of infections w/latex/rubber/plastic skin]
when play begins:
	add { "Latex Wolf", "Latex Fox", "hermaphrodite latex vixen", "Rubber tigress", "Bottlenose Toy", "Latex Mistress" } to infections of Latexlist;

Internallist is a marker.	[list of infections w/internal male genitals]
when play begins:
	add { "Wyvern", "Yamato Dragon", "Yamato Dragoness", "Feral Sea Dragon", "Feral Sea Dragoness", "Snake", "Naga", "Sierrasaur" } to infections of Internallist;

BarbedCocklist is a marker. [List of creatures with a barbed cock]
when play begins:
	add { "Panther Taur", "Shadow Beast", "Ninja Cat", "cheetah woman", "Tigress Hooker", "Ashen Breeder", "Rubber tigress", "Cougar", "Tiger", "Margay", "Tiger Cop", "Plush lion", "Sabretooth", "Catgirl", "tigertaur", "Leopardman", "Wildcat", "Feral Gryphon", "Pantherherm", "Ebonflame Dragator", "Manticore", "Feline Gymnast", "Jaguar Warrior", "Ebonflame Draken", "sphinx", "Ebonflame Whelp", "Snow Bat", "Anthro Shaft Beast", "Corota", "Feral Shaft Beast", "Fire Elemental", "Feral Cheetah", "Felinoid" } to infections of BarbedCocklist;

Firebreathlist is a marker. [List of fire breathing creatures]
when play begins:
	add { "Wyvern", "Dracovixentaur", "Dragontaur", "Feral Sea Dragoness", "Feral Sea Dragon", "Ebonflame Whelp", "Ebonflame Dragator", "Ebonflame Draken", "Fire Sprite", "Fire Elemental", "Flaming Lynx", "Yamato Dragoness", "Yamato Dragon" } to infections of Firebreathlist;

Bluntlist is a marker.	[list of infections w/blunt cock]
when play begins:
	add { "Black Equinoid", "Centaur Mare", "Centaur Stallion", "Horseman", "Mareslut", "Mutant Centaur", "Nightmare", "Pegasus", "Stallionboi", "Unicorn", "Zebra", "Sierrasaur", "Wyvern", "Donkeyman", "Donkeywoman", "Giraffe", "Nightmare", "Palomino", "Friendship Pony", "Reindeer" } to infections of Bluntlist;


Part 2 - Rules

First for constructing the status line (this is the bypass status line map rule):
	fill status bar with table of fancy status;

d18 is a number that varies.
descr is text that varies.
sh-descr is text that varies.
cupsize is an indexed text that varies. Cupsize is "ABCDEFGHIJKLMNOPQRSTUVWXYZ".
battleground is a text that varies.
Lusting is a text that varies.

Hunting is an action applying to one topic.
ishunting is a truth state that varies.  ishunting is usually false.

understand "hunt [text]" as hunting.

check hunting:
	if there is no dangerous door in the location of the player:
		say "I don't see any good hunting grounds around here." instead;
	otherwise if blindmode is true:
		say "You're playing in blind-mode, so hunting is not allowed.  You'll have to try exploring to find what you seek." instead;
	otherwise:
		let y be a random dangerous door in the location of the player;
		now battleground is the marea of y;

carry out hunting:
	let Q be a list of numbers;
	let found be 0;
	let sitfound be 0;
	let foundbadtime be 0;
	let scorefound be 0;
	if ( bodyname of player is "Mental Mouse" or mousecurse is 1 ) and companion of player is not mouse girl:		[hunted by the mouse collective]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Mental Mouse":
				add y to q;
				add y to q;
				if "Like Attracts Like" is listed in feats of player:
					add y to q;
				if humanity of player < 75:
					repeat with x running from 1 to ( ( 100 - humanity of player ) / 25 ):
						add y to q;
				break;
	if insectlarva is true and larvaegg is 1 and gestation of child is 0:		[hunted by wasp hive anywhere outdoors]
		if battleground is not "Mall" and battleground is not "Stables" and battleground is not "Hospital" and battleground is not "Museum" and battleground is not "Sealed":
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Black Wasp":
					add y to q;
					if "Like Attracts Like" is listed in feats of player:
						add y to q;
					if libido of player > 30:
						repeat with x running from 1 to ( libido of player / 30 ):
							add y to q;
					if larvacounter > 3:
						repeat with x running from 1 to ( larvacounter / 3 ):
							add y to q;
					break;
	repeat with X running from 1 to number of filled rows in table of random critters:
		choose row X from the table of random critters;
		if there is no area entry, next;
[		if area entry is "Everywhere":		[***]
			if there is a nocturnal in row X of table of random critters:
				if (nocturnal entry is true and daytimer is day) or (nocturnal entry is false and daytimer is night), next;
			if name entry matches the text topic understood, case insensitively:
				say "You are almost certain you saw some [name entry] tracks...";
				now found is 1;
				add x to q;
				let zed be perception of player / 4;
				if zed > 8, now zed is 8;
				repeat with N running from 1 to zed:
					add x to q;
				if "Curious" is listed in feats of player:
					add x to q;
				if "Expert Hunter" is listed in feats of player:
					add x to q;
					add x to q;
				if "Master Baiter" is listed in feats of player:
					repeat with N running from 1 to ( perception of player / 3 ):
						add x to q;
			otherwise:
				if there is a lev entry:
					if lev entry is greater than level of player plus levelwindow, next;
				otherwise:
					next;
				add x to q;
				add x to q;
			if "Like Attracts Like" is listed in the feats of the player:
				if bodyname of player is name entry and a random chance of 1 in 2 succeeds, add x to q;
				if facename of player is name entry and a random chance of 1 in 2 succeeds, add x to q;
				if skinname of player is name entry and a random chance of 1 in 2 succeeds, add x to q;
				if tailname of player is name entry and a random chance of 1 in 2 succeeds, add x to q;
				if cockname of player is name entry and a random chance of 1 in 2 succeeds, add x to q;	]
		if area entry matches the text battleground, case insensitively:
			if there is a nocturnal in row X of table of random critters:
				if (nocturnal entry is true and daytimer is day) or (nocturnal entry is false and daytimer is night):
					if name entry matches the text topic understood, case insensitively:
						now foundbadtime is 1;
					next;		[skips if day/night doesn't match]
			if name entry matches the text topic understood, case insensitively:
				say "You are almost certain you saw some [name entry] tracks...";
				now found is 1;
				add x to q;
				let zed be perception of player / 3;
				if zed > 8, now zed is 8;
				repeat with N running from 1 to zed:
					add x to q;
				if "Curious" is listed in feats of player:
					add x to q;
				if "Expert Hunter" is listed in feats of player:
					add x to q;
					add x to q;
				if "Master Baiter" is listed in feats of player:
					repeat with N running from 1 to ( perception of player / 3 ):
						add x to q;
			otherwise:
				if there is a lev entry:
					if lev entry is greater than level of player plus levelwindow, next;
				otherwise:
					next;
				if "Expert Hunter" is listed in feats of player and a random chance of 1 in 3 succeeds:
					next;
				let skipit be 0;
				repeat with s running through warded flags:
					if name entry is listed in infections of s:
						now skipit is 1;
						break;
				if skipit is 1, next;
				add x to q;
			if "Like Attracts Like" is listed in the feats of the player:
				if bodyname of player is name entry and a random chance of 1 in 2 succeeds, add x to q;
				if facename of player is name entry and a random chance of 1 in 2 succeeds, add x to q;
				if skinname of player is name entry and a random chance of 1 in 2 succeeds, add x to q;
				if tailname of player is name entry and a random chance of 1 in 2 succeeds, add x to q;
				if cockname of player is name entry and a random chance of 1 in 2 succeeds, add x to q;
	if the number of entries in q is not 0 and found is 1:
		sort Q in random order;
		repeat with Z running through q:
			choose row z from the table of random critters;
			if "Unerring Hunter" is listed in the feats of the player and there is a name entry:
				if name entry matches the text topic understood, case insensitively:
					increase score by 0;
				otherwise:
					next;
			if there is a name entry:
				now monster is Z;
			otherwise:
				next;
			break;
		choose row monster from the table of random critters;
		now monsterhp is hp entry;
		if name entry matches the text topic understood, case insensitively:
			now ishunting is true;
		challenge;
		now ishunting is false;
		if ( ( hardmode is true and a random chance of 1 in 8 succeeds ) or ( "Bad Luck" is listed in feats of player and a random chance of 1 in 8 succeeds ) ) and battleground is not "void":
			say "As you are trying to recover from your last encounter, another roving creature finds you.";
			Fight;
		follow the turnpass rule;
	otherwise:
		now found is 0;
		repeat with z running through unknown fasttravel rooms:
			if z is private, next;
			if printed name of z matches the text topic understood, case insensitively:
				say "It should be somewhere...";
				now found is 1;
				let dice be a random number from 1 to 20;
				let the bonus be (( the perception of the player minus 10 ) divided by 2);
				if "Curious" is listed in feats of player, increase bonus by 2;
				increase dice by bonus;
				if dice >= 15 or "Unerring Hunter" is listed in feats of player:
					say "You manage to find your way towards [z]!";
					huntingfightchance;
					move the player to z;
					now z is known;
					now battleground is "void";
				otherwise:
					say "Despite your searches, you fail to find it.[line break]";
					huntingfightchance;
					now battleground is "void";
				break;
		if found is 0:
			repeat with z running through unresolved situations:
				if z is not close:
					if sitfound is 0:
						if printed name of z matches the text topic understood, case insensitively:
							now sitfound is 1;
					next;
				if score < minscore of z:
					if scorefound is 0:
						if printed name of z matches the text topic understood, case insensitively:
							now scorefound is 1;
				if printed name of z matches the text topic understood, case insensitively:
					say "It should be somewhere...";
					now found is 1;
					let dice be a random number from 1 to 20;
					let the bonus be (( the perception of the player minus 10 ) divided by 2);
					if "Curious" is listed in feats of player, increase bonus by 2;
					increase dice by bonus;
					if dice >= 15 or "Unerring Hunter" is listed in feats of player:
						now inasituation is true;
						say "You manage to find your way to [z]!";
						try resolving z;
						now inasituation is false;
						huntingfightchance;
					otherwise:
						now inasituation is false;
						say "Despite your searches, you fail to find it.[line break]";
						huntingfightchance;
					break;
		if found is 0:
			if foundbadtime is 1:
				say "[bold type]There doesn't seem to be any of them around right now...[roman type][line break]";
			otherwise if scorefound is 1:
				say "[bold type]You have not accomplished enough to find this yet...[roman type][line break]";
			otherwise if sitfound is 0:
				say "[bold type]You don't think what you're looking for can be found here...[roman type][line break]";
			otherwise if sitfound is 1:
				say "[bold type]Perhaps you should try looking somewhere closer to what you seek...[roman type][line break]";
			huntingfightchance;
		follow the turnpass rule;

to new ban menu:
	now calcnumber is -1;
	let gsexit be 0;
	while gsexit is 0:
		say "[bold type]Select which categories you want banned/warded:[roman type][line break]";
		say "[bold type]Warding a monster will mean you can only find them by hunting for them, banning them removes them from the game entirely.[roman type][line break]";
		say "[line break]";
		say "(1) [link]Feral[as]1[end link]: 		[bracket][if feral is not banned and feral is not warded][bold type]None[roman type][otherwise][link]None[as]11[end link][end if][close bracket] [bracket][if feral is warded][bold type]Ward[roman type][otherwise][link]Ward[as]12[end link][end if][close bracket] [if feral is banned][bold type]Ban[roman type][otherwise][link]Ban[as]13[end link][end if][close bracket] [bold type][bracket]Caution: Early Implementation![close bracket][roman type][line break]";
		say "(2) [link]Furry[as]2[end link]:		[bracket][if furry is not banned and furry is not warded][bold type]None[roman type][otherwise][link]None[as]21[end link][end if][close bracket] [bracket][if furry is warded][bold type]Ward[roman type][otherwise][link]Ward[as]22[end link][end if][close bracket] [if furry is banned][bold type]Ban[roman type][otherwise][link]Ban[as]23[end link][end if][close bracket][line break]";
		say "(3) [link]Guy[as]3[end link]:		[bracket][if guy is not banned and guy is not warded][bold type]None[roman type][otherwise][link]None[as]31[end link][end if][close bracket] [bracket][if guy is warded][bold type]Ward[roman type][otherwise][link]Ward[as]32[end link][end if][close bracket] [if guy is banned][bold type]Ban[roman type][otherwise][link]Ban[as]33[end link][end if][close bracket][line break]";
		say "(4) [link]Girl[as]4[end link]:		[bracket][if girl is not banned and girl is not warded][bold type]None[roman type][otherwise][link]None[as]41[end link][end if][close bracket] [bracket][if girl is warded][bold type]Ward[roman type][otherwise][link]Ward[as]42[end link][end if][close bracket] [if girl is banned][bold type]Ban[roman type][otherwise][link]Ban[as]43[end link][end if][close bracket][line break]";
		say "(5) [link]Hermaphrodite[as]6[end link]: 	[bracket][if hermaphrodite is not banned and hermaphrodite is not warded][bold type]None[roman type][otherwise][link]None[as]61[end link][end if][close bracket] [bracket][if hermaphrodite is warded][bold type]Ward[roman type][otherwise][link]Ward[as]62[end link][end if][close bracket] [if hermaphrodite is banned][bold type]Ban[roman type][otherwise][link]Ban[as]63[end link][end if][close bracket][line break]";
		say "(6) [link]Humanoid[as]6[end link]: 	[bracket]NYI[close bracket][line break]";
		say "(7) [link]Humorous[as]7[end link]: 	[bracket][if humorous is not banned and humorous is not warded][bold type]None[roman type][otherwise][link]None[as]71[end link][end if][close bracket] [bracket][if humorous is warded][bold type]Ward[roman type][otherwise][link]Ward[as]72[end link][end if][close bracket] [if humorous is banned][bold type]Ban[roman type][otherwise][link]Ban[as]73[end link][end if][close bracket][line break]";
		say "(8) [link]Hellspawn[as]8[end link]: 	[bracket][if hellspawn is not banned and hellspawn is not warded][bold type]None[roman type][otherwise][link]None[as]81[end link][end if][close bracket] [bracket][if hellspawn is warded][bold type]Ward[roman type][otherwise][link]Ward[as]82[end link][end if][close bracket] [if hellspawn is banned][bold type]Ban[roman type][otherwise][link]Ban[as]83[end link][end if][close bracket][line break]";
		say "[line break]";
		say "(0) [link]Return to main menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-83)>[run paragraph on]";
			get a number;
			if (calcnumber >= 0 and calcnumber <= 7) or (calcnumber >= 11 and calcnumber <= 13) or (calcnumber >= 21 and calcnumber <= 23) or (calcnumber >= 31 and calcnumber <= 33) or (calcnumber >= 41 and calcnumber <= 43) or (calcnumber >= 61 and calcnumber <= 63) or (calcnumber >= 71 and calcnumber <= 73) or (calcnumber >= 81 and calcnumber <= 83):
				break;
			otherwise:
				say "Invalid Entry";
		if calcnumber is 1:
			if clearnomore is 0, clear the screen;
			if feral is not banned and feral is not warded:
				now feral is warded;
				if clearnomore is 0, clear the screen;
				say "Warding Feral.";
			otherwise if feral is warded:
				now feral is banned;
				now feral is not warded;
				if clearnomore is 0, clear the screen;
				say "Banning Feral.";
			otherwise:
				now feral is not banned;
				now feral is not warded;
				if clearnomore is 0, clear the screen;
				say "Unbanning/Warding Feral.";
		otherwise if calcnumber is 2:
			if furry is not banned and furry is not warded:
				now furry is warded;
				if clearnomore is 0, clear the screen;
				say "Warding Furry.";
			otherwise if furry is warded:
				now furry is banned;
				now furry is not warded;
				if clearnomore is 0, clear the screen;
				say "Banning Furry.";
			otherwise:
				now furry is not banned;
				now furry is not warded;
				if clearnomore is 0, clear the screen;
				say "Unbanning/Warding Furry.";
		otherwise if calcnumber is 3:
			if guy is not banned and guy is not warded:
				now guy is warded;
				if clearnomore is 0, clear the screen;
				say "Warding Guy.";
			otherwise if guy is warded:
				now guy is banned;
				now guy is not warded;
				if clearnomore is 0, clear the screen;
				say "Banning Guy.";
			otherwise:
				now guy is not banned;
				now guy is not warded;
				if clearnomore is 0, clear the screen;
				say "Unbanning/Warding Guy.";
		otherwise if calcnumber is 4:
			if girl is not banned and girl is not warded:
				now girl is warded;
				if clearnomore is 0, clear the screen;
				say "Warding Girl.";
			otherwise if girl is warded:
				now girl is banned;
				now girl is not warded;
				if clearnomore is 0, clear the screen;
				say "Banning Girl.";
			otherwise:
				now girl is not banned;
				now girl is not warded;
				if clearnomore is 0, clear the screen;
				say "Unbanning/Warding Girl.";
		otherwise if calcnumber is 5:
			say "Not yet Implemented!";
		otherwise if calcnumber is 6:
			if hermaphrodite is not banned and hermaphrodite is not warded:
				now hermaphrodite is warded;
				if clearnomore is 0, clear the screen;
				say "Warding Hermaphrodite.";
			otherwise if hermaphrodite is warded:
				now hermaphrodite is banned;
				now hermaphrodite is not warded;
				if clearnomore is 0, clear the screen;
				say "Banning Hermaphrodite.";
			otherwise:
				now hermaphrodite is not banned;
				now hermaphrodite is not warded;
				if clearnomore is 0, clear the screen;
				say "Unbanning/Warding Hermaphrodite.";
		otherwise if calcnumber is 7:
			if humorous is not banned and humorous is not warded:
				now humorous is warded;
				if clearnomore is 0, clear the screen;
				say "Warding Humorous.";
			otherwise if humorous is warded:
				now humorous is banned;
				now humorous is not warded;
				if clearnomore is 0, clear the screen;
				say "Banning Humorous.";
			otherwise:
				now humorous is not banned;
				now humorous is not warded;
				if clearnomore is 0, clear the screen;
				say "Unbanning/Warding Humorous.";
		otherwise if calcnumber is 8:
			if hellspawn is not banned and hellspawn is not warded:
				now hellspawn is warded;
				if clearnomore is 0, clear the screen;
				say "Warding Hellspawn.";
			otherwise if hellspawn is warded:
				now hellspawn is banned;
				now hellspawn is not warded;
				if clearnomore is 0, clear the screen;
				say "Banning Hellspawn.";
			otherwise:
				say "Unbanning/Warding Hellspawn.";
				if clearnomore is 0, clear the screen;
				now hellspawn is not banned;
				now hellspawn is not warded;
		otherwise if calcnumber is 11:
			if feral is not banned and feral is not warded:
				if clearnomore is 0, clear the screen;
				say "Feral is already available!";
			otherwise:
				now feral is not banned;
				now feral is not warded;
				if clearnomore is 0, clear the screen;
				say "Unbanning/Warding Feral.";
		otherwise if calcnumber is 12:
			if feral is warded:
				if clearnomore is 0, clear the screen;
				say "Feral is already Warded!";
			otherwise:
				now feral is warded;
				now feral is not banned;
				if clearnomore is 0, clear the screen;
				say "Warding Feral.";
		otherwise if calcnumber is 13:
			if feral is banned:
				if clearnomore is 0, clear the screen;
				say "Feral is already Banned!";
			otherwise:
				now feral is banned;
				now feral is not warded;
				if clearnomore is 0, clear the screen;
				say "Banning Feral.";
		otherwise if calcnumber is 21:
			if furry is not banned and furry is not warded:
				if clearnomore is 0, clear the screen;
				say "Furry is already available!";
			otherwise:
				now furry is not banned;
				now furry is not warded;
				if clearnomore is 0, clear the screen;
				say "Unbanning/Warding Furry.";
		otherwise if calcnumber is 22:
			if furry is warded:
				if clearnomore is 0, clear the screen;
				say "Furry is already Warded!";
			otherwise:
				now furry is warded;
				now furry is not banned;
				if clearnomore is 0, clear the screen;
				say "Warding Furry.";
		otherwise if calcnumber is 23:
			if furry is banned:
				if clearnomore is 0, clear the screen;
				say "Furry is already Banned!";
			otherwise:
				now furry is banned;
				now furry is not warded;
				if clearnomore is 0, clear the screen;
				say "Banning Furry.";
		otherwise if calcnumber is 31:
			if guy is not banned and guy is not warded:
				if clearnomore is 0, clear the screen;
				say "Guy is already available!";
			otherwise:
				now guy is not banned;
				now guy is not warded;
				if clearnomore is 0, clear the screen;
				say "Unbanning/Warding Guy.";
		otherwise if calcnumber is 32:
			if guy is warded:
				if clearnomore is 0, clear the screen;
				say "Guy is already Warded!";
			otherwise:
				now guy is warded;
				now guy is not banned;
				if clearnomore is 0, clear the screen;
				say "Warding Guy.";
		otherwise if calcnumber is 33:
			if guy is banned:
				if clearnomore is 0, clear the screen;
				say "Guy is already Banned!";
			otherwise:
				now guy is banned;
				now guy is not warded;
				if clearnomore is 0, clear the screen;
				say "Banning Guy.";
		otherwise if calcnumber is 41:
			if girl is not banned and girl is not warded:
				if clearnomore is 0, clear the screen;
				say "Girl is already available!";
			otherwise:
				now girl is not banned;
				now girl is not warded;
				if clearnomore is 0, clear the screen;
				say "Unbanning/Warding Girl.";
		otherwise if calcnumber is 42:
			if girl is warded:
				if clearnomore is 0, clear the screen;
				say "Girl is already Warded!";
			otherwise:
				now girl is warded;
				now girl is not banned;
				if clearnomore is 0, clear the screen;
				say "Warding Girl.";
		otherwise if calcnumber is 43:
			if girl is banned:
				if clearnomore is 0, clear the screen;
				say "Girl is already Banned!";
			otherwise:
				now girl is banned;
				now girl is not warded;
				if clearnomore is 0, clear the screen;
				say "Banning Girl.";
		otherwise if calcnumber is 61:
			if hermaphrodite is not banned and hermaphrodite is not warded:
				if clearnomore is 0, clear the screen;
				say "Hermaphrodite is already available!";
			otherwise:
				now hermaphrodite is not banned;
				now hermaphrodite is not warded;
				if clearnomore is 0, clear the screen;
				say "Unbanning/Warding Hermaphrodite.";
		otherwise if calcnumber is 62:
			if hermaphrodite is warded:
				if clearnomore is 0, clear the screen;
				say "Hermaphrodite is already Warded!";
			otherwise:
				now hermaphrodite is warded;
				now hermaphrodite is not banned;
				if clearnomore is 0, clear the screen;
				say "Warding Hermaphrodite.";
		otherwise if calcnumber is 63:
			if hermaphrodite is banned:
				if clearnomore is 0, clear the screen;
				say "Hermaphrodite is already Banned!";
			otherwise:
				now hermaphrodite is banned;
				now hermaphrodite is not warded;
				if clearnomore is 0, clear the screen;
				say "Banning Hermaphrodite.";
		otherwise if calcnumber is 71:
			if humorous is not banned and humorous is not warded:
				if clearnomore is 0, clear the screen;
				say "Humorous is already available!";
			otherwise:
				now humorous is not banned;
				now humorous is not warded;
				if clearnomore is 0, clear the screen;
				say "Unbanning/Warding Humorous.";
		otherwise if calcnumber is 72:
			if humorous is warded:
				if clearnomore is 0, clear the screen;
				say "Humorous is already Warded!";
			otherwise:
				now humorous is warded;
				now humorous is not banned;
				if clearnomore is 0, clear the screen;
				say "Warding Humorous.";
		otherwise if calcnumber is 73:
			if humorous is banned:
				if clearnomore is 0, clear the screen;
				say "Humorous is already Banned!";
			otherwise:
				now humorous is banned;
				now humorous is not warded;
				if clearnomore is 0, clear the screen;
				say "Banning Humorous.";
		otherwise if calcnumber is 81:
			if hellspawn is not banned and hellspawn is not warded:
				if clearnomore is 0, clear the screen;
				say "Hellspawn is already available!";
			otherwise:
				now hellspawn is not banned;
				now hellspawn is not warded;
				if clearnomore is 0, clear the screen;
				say "Unbanning/Warding Hellspawn.";
		otherwise if calcnumber is 82:
			if hellspawn is warded:
				if clearnomore is 0, clear the screen;
				say "Hellspawn is already Warded!";
			otherwise:
				now hellspawn is warded;
				now hellspawn is not banned;
				if clearnomore is 0, clear the screen;
				say "Warding Hellspawn.";
		otherwise if calcnumber is 83:
			if hellspawn is banned:
				if clearnomore is 0, clear the screen;
				say "Hellspawn is already Banned!";
			otherwise:
				now hellspawn is banned;
				now hellspawn is not warded;
				if clearnomore is 0, clear the screen;
				say "Banning Hellspawn.";
		otherwise:
			now gsexit is 1;

to ban menu:
	blank out the whole of table of combat items;
	let X be 1;
	repeat with Q running through flags:
		choose a blank row in table of combat items;
		now title entry is printed name of Q;
		now description entry is printed name of Q;
		if q is banned:
			now title entry is "BANNED";
		if q is warded:
			now title entry is "WARDED";
		now toggle entry is flag ban rule;
[	let z be the number of rows in table of combat items;
	say "[Z].";]
	if there is no title in row 1 of table of combat items:
		say "There are no flags!";
		wait for any key;
	otherwise:
		choose a blank row in table of combat items;
		now title entry is "Begin Game";
		now description entry is "Begin Game";
		now toggle entry is flag ban rule;
		now the current menu is table of Combat Items;
		carry out the displaying activity;

This is the flag ban rule:
	choose row Current Menu Selection in table of combat items;
	let nam be description entry;
	if nam is "Begin Game":
		decrease the menu depth by 1;
		rule succeeds;
	let z be furry;
	repeat with y running through flags:
		if nam matches the text printed name of y:
			now z is y;
			break;
	if z is banned:
		now z is not banned;
	otherwise if z is warded:
		now z is banned;
		now z is not warded;
	otherwise:
		now z is warded;
	decrease the menu depth by 1;
	ban menu;

destinationcheck is an action applying to nothing.

understand "navigate" as destinationcheck.
understand "nav" as destinationcheck.

carry out destinationcheck:
	[ Note: The city areas and locations within are sorted alphabetically, please put new rooms in the right spots as you add them ]
	[ Start of primary rooms - Grey Abbey Library and Trevor Labs ]
	say "[bold type]Primary Rooms[roman type]: [link][bracket]Grey Abbey Library[close bracket][as]nav Grey Abbey Library[end link]";
	if Outside Trevor Labs is known:
		say "| [link][bracket]Trevor Labs[close bracket][as]nav Outside Trevor Labs[end link] ";
	say "[line break]";
	[start of the capitol area]
	if Approaching the Capitol Building is known or Disused Garage is known or Office Den is known or Orc Lair Side Entrance is known:
		say "[bold type]Capitol District[roman type]: ";
		if Approaching the Capitol Building is known:
			say "[link][bracket]Approaching the Capitol Building[close bracket][as]nav Approaching the Capitol Building[end link] - ";
		if Disused Garage is known:
			say "| [link][bracket]Disused Garage[close bracket][as]nav Disused Garage[end link] ";
		if Office Den is known:
			say "| [link][bracket]Office Den[close bracket][as]nav Office Den[end link] ";
		if Orc Lair Side Entrance is known:
			say "| [link][bracket]Orc Lair[close bracket][as]nav Orc Lair Side Entrance[end link] ";
		say "[line break]";
	[a subsection of the 'outside' area (named Central City here)]
	if Camp Bravo Entrance is known or Green Apartment is known or Fire Station 86 is known or Mini-Lab is known or Pediatrics Lobby is known or Pig Pen is known or Police Station is known or Rabbit Den is known or Red Apartment is known or Tyr's Club is known:
		say "[bold type]Central City[roman type]: ";
		if Camp Bravo Entrance is known:
			say "| [link][bracket]Camp Bravo[close bracket][as]nav Camp Bravo Entrance[end link] ";
		if Green Apartment is known:
			say "| [link][bracket]Green Apartment[close bracket][as]nav Green Apartment[end link] ";
		if Fire Station 86 is known:
			say "| [link][bracket]Fire Station 86[close bracket][as]nav Fire Station 86[end link] ";
		if Mini-Lab is known:
			say "| [link][bracket]Mini-Lab[close bracket][as]nav Mini-Lab[end link] ";
		if Pediatrics Lobby is known:
			say "| [link][bracket]Pediatrics Lobby[close bracket][as]nav Pediatrics Lobby[end link] ";
		if Pig Pen is known:
			say "| [link][bracket]Pig Pen[close bracket][as]nav Pig Pen[end link] ";
		if Police Station is known:
			say "| [link][bracket]Police Station[close bracket][as]nav Police Station[end link] ";
		if Rabbit Den is known:
			say "| [link][bracket]Rabbit Den[close bracket][as]nav Rabbit Den[end link] ";
		if Red Apartment is known:
			say "| [link][bracket]Red Apartment[close bracket][as]nav Red Apartment[end link] ";
		if Tyr's Club is known:
			say "| [link][bracket]Tyr's Club[close bracket][as]nav Tyr's Club[end link] ";
		say "[line break]";
	[start of the park area]
	if Park Entrance is known or Equinoid Camp is known or Lion's Den is known:
		say "[bold type]City Park[roman type]: ";
		if Park Entrance is known:
			say "[link][bracket]Park Entrance[close bracket][as]nav Park Entrance[end link] - ";
		if Equinoid Camp is known:
			say "| [link][bracket]Equinoid Camp[close bracket][as]nav Equinoid Camp[end link] ";
		if Lion's Den is known:
			say "| [link][bracket]Lion's Den[close bracket][as]nav Lion's Den[end link] ";
		say "[line break]";
	[another sub-section of the 'outside' area (named Commercial District here)]
	if Smith Haven Mall Lot South is known or Back Alley is known or Comic Shop is known or Isolated Street is known or Kristen's Hideout is known or Lingerie Store is known or New Ewe Storeroom is known or The Palomino is known or SlutRat Den is known or K9 Vans is known:
		say "[bold type]Commercial District[roman type]: ";
		if Smith Haven Mall Lot South is known:
			say "[link][bracket]Smith Haven Mall[close bracket][as]nav Smith Haven Mall Lot South[end link] - ";
		if Back Alley is known:
			say "| [link][bracket]Back Alley[close bracket][as]nav Back Alley[end link] ";
		if Comic Shop is known:
			say "| [link][bracket]Comic Shop[close bracket][as]nav Comic Shop[end link] ";
		if Isolated Street is known:
			say "| [link][bracket]Isolated Street[close bracket][as]nav Isolated Street[end link] ";
		if K9 Vans is known:
			say "| [link][bracket]K9 Vans[close bracket][as]nav K9 Vans[end link] ";
		if Kristen's Hideout is known:
			say "| [link][bracket]Kristen's Hideout[close bracket][as]nav Kristen's Hideout[end link] ";
		if Lingerie Store is known:
			say "| [link][bracket]Lingerie Store[close bracket][as]nav Lingerie Store[end link] ";
		if New Ewe Storeroom is known:
			say "| [link][bracket]New Ewe Store[close bracket][as]nav New Ewe Storeroom[end link] ";
		if The Palomino is known:
			say "| [link][bracket]The Palomino[close bracket][as]nav The Palomino[end link] ";
		if SlutRat Den is known:
			say "| [link][bracket]SlutRat Den[close bracket][as]nav SlutRat Den[end link] ";
		say "[line break]";
	[start of the dry plains area]
	if Dry Plains is known or McDermott Farm Entrance is known or Researcher Studio is known or Rocky Outcropping is known:
		say "[bold type]Dry Plains[roman type]: ";
		if Dry Plains is known:
			say "[link][bracket]Dry Plains[close bracket][as]nav Dry Plains[end link] - ";
		if McDermott Farm Entrance is known:
			say "| [link][bracket]McDermott Farm Entrance[close bracket][as]nav McDermott Farm Entrance[end link] ";
		if Researcher Studio is known:
			say "| [link][bracket]Researcher Studio[close bracket][as]nav Researcher Studio[end link] ";
		if Rocky Outcropping is known:
			say "| [link][bracket]Rocky Outcropping[close bracket][as]nav Rocky Outcropping[end link] ";
		say "[line break]";
	[another sub-section of the 'outside' area (named Industrial Sector here)]
[	if Nutso Factory is known or Plant Overview is known or Power Lines is known or Reservoir is known:	[*** - Kaleem]	]
	if Nutso Factory is known or Plant Overview is known or Power Lines is known:
		say "[bold type]Industrial Sector[roman type]: ";
		if Nutso Factory is known:
			say "| [link][bracket]Nutso Factory[close bracket][as]nav Nutso Factory[end link] ";
		if Plant Overview is known:
			say "| [link][bracket]Plant Overview[close bracket][as]nav Plant Overview[end link] ";
		if Power Lines is known:
			say "| [link][bracket]Power Lines[close bracket][as]nav Power Lines[end link] ";
[		if Reservoir is known:
			say "| [link][bracket]Reservoir[close bracket][as]nav Reservoir[end link] ";	]
		say "[line break]";
	[start of the fairgrounds area]
	if State Fair is known or Sweet Tooth is known:
		say "[bold type]Fairgrounds[roman type]: ";
		if State Fair is known:
			say "| [link][bracket]State Fair[close bracket][as]nav State Fair[end link] ";
		if Sweet Tooth is known:
			say "| [link][bracket]Sweet Tooth[close bracket][as]nav Sweet Tooth[end link] ";
		say "[line break]";
	[start of the high rise area]
	if Entrance to the High Rise District is known or Agency is known or Alex's Condo is known or Bone-Appetit is known or Butterfly Grove is known or Butterfly Grove is known or Flower Garden is known or Lizard Parlor is known or Rex's Place is known or Zephyr Lobby is known:
		say "[bold type]High Rise District[roman type]: ";
		if Entrance to the High Rise District is known:
			say "[link][bracket]Entrance to the High Rise District[close bracket][as]nav Entrance to the High Rise District[end link] - ";
		if Agency is known:
			say "| [link][bracket]Agency[close bracket][as]nav Agency[end link] ";
		if Alex's Condo is known:
			say "| [link][bracket]Alex's Condo[close bracket][as]nav Alex's Condo[end link] ";
		if Bone-Appetit is known:
			say "| [link][bracket]Bone-Appetit[close bracket][as]nav Bone-Appetit[end link] ";
		if Butterfly Grove is known:
			say "| [link][bracket]Butterfly Grove[close bracket][as]nav Butterfly Grove[end link] ";
		if Flower Garden is known:
			say "| [link][bracket]Flower Garden[close bracket][as]nav Flower Garden[end link] ";
		if Lizard Parlor is known:
			say "| [link][bracket]Lizard Parlor[close bracket][as]nav Lizard Parlor[end link] ";
		if Rex's Place is known:
			say "| [link][bracket]Rex's Place[close bracket][as]nav Rex's Place[end link] ";
		if Zephyr Lobby is known:
			say "| [link][bracket]Zephyr[close bracket][as]nav Zephyr Lobby[end link] ";
		say "[line break]";
	[start of the Hospital area]
	if City Hospital is known or Psych Department is known:
		say "[bold type]Hospital[roman type]: ";
		if City Hospital is known:
			say "[link][bracket]City Hospital[close bracket][as]nav City Hospital[end link] - ";
		if Psych Department is known:
			say "| [link][bracket]Psych Department[close bracket][as]nav Psych Department[end link] ";
		say "[line break]";
	[start of Junkyard area]
	if Abandoned Lot is known or Hyena Shack is known or Steven's home is known:
		say "[bold type]Junkyard[roman type]: ";
		if Abandoned Lot is known:
			say "[link][bracket]Abandoned Lot[close bracket][as]nav Abandoned Lot[end link] - ";
		if Hyena Shack is known:
			say "| [link][bracket]Hyena Shack[close bracket][as]nav Hyena Shack[end link] ";
		if Steven's home is known:
			say "| [link][bracket]Steven's home[close bracket][as]nav Steven's home[end link] ";
		say "[line break]";
	[start of the misc area]
	if Foxy Hideaway is known or Shifting Room is known or Qytat Plaza is known:
		say "[bold type]Misc[roman type]: ";
		if Foxy Hideaway is known:
			say "| [link][bracket]Foxy Hideaway[close bracket][as]nav Foxy Hideaway[end link] ";
		if Qytat Plaza is known:
			say "| [link][bracket]Qytat Plaza[close bracket][as]nav Qytat Plaza[end link] ";
		if Shifting Room is known:
			say "| [link][bracket]Shifting Room[close bracket][as]nav Shifting Room[end link] ";
		say "[line break]";
	[start of the Museum area]
	if Museum Foyer is known or Egypt Wing Entrance is known:
		say "[bold type]Museum[roman type]: ";
		if Museum Foyer is known:
			say "[link][bracket]Museum Foyer[close bracket][as]nav Museum Foyer[end link] - ";
		if Egypt Wing Entrance is known:
			say "| [link][bracket]Egypt Wing Entrance[close bracket][as]nav Egypt Wing Entrance[end link] ";
		say "[line break]";
	[start of the red light area]
	if Entrance to the Red Light District is known or Bradford's Camp is known or Bright Alley is known or Burned-Out Chapel is known or Cuero Lobo is known or Down Under Pub is known or Gillian's Flat is known or Police Car is known or Porn Store is known or Sven's Place is known or Tattoo Parlor is known:
		say "[bold type]Red Light District[roman type]: ";
		if Entrance to the Red Light District is known:
			say "[link][bracket]Entrance to the Red Light District[close bracket][as]nav Entrance to the Red Light District[end link] - ";
		if Bradford's Camp is known:
			say "| [link][bracket]Bradford's Camp[close bracket][as]nav Bradford's Camp[end link] ";
		if Bright Alley is known:
			say "| [link][bracket]Bright Alley[close bracket][as]nav Bright Alley[end link] ";
		if Burned-Out Chapel is known:
			say "| [link][bracket]Burned-Out Chapel[close bracket][as]nav Burned-Out Chapel[end link] ";
		if Cuero Lobo is known:
			say "| [link][bracket]Cuero Lobo[close bracket][as]nav Cuero Lobo[end link] ";
		if Down Under Pub is known:
			say "| [link][bracket]Down Under Pub[close bracket][as]nav Down Under Pub[end link] ";
		if Gillian's Flat is known:
			say "| [link][bracket]Gillian's Flat[close bracket][as]nav Gillian's Flat[end link] ";
		if Police Car is known:
			say "| [link][bracket]Police Car[close bracket][as]nav Sven's Place[end link] ";
		if Porn Store is known:
			say "| [link][bracket]Porn Store[close bracket][as]nav Porn Store[end link] ";
		if Sven's Place is known:
			say "| [link][bracket]Sven's Place[close bracket][as]nav Sven's Place[end link] ";
		if Tattoo Parlor is known:
			say "| [link][bracket]Tattoo Parlor[close bracket][as]nav Tattoo Parlor[end link] ";
		say "[line break]";
	[start of the seaside area]
	if Beach Plaza is known or Bouncy Castle is known or Pirate Island is known or Viking Ship is known:
		say "[bold type]Seaside[roman type]: ";
		if Beach Plaza is known:
			say "[link][bracket]Beach Plaza[close bracket][as]nav Beach Plaza[end link] - ";
		if Bouncy Castle is known:
			say "| [link][bracket]Bouncy Castle[close bracket][as]nav Bouncy Castle[end link] ";
		if Pirate Island is known:
			say "| [link][bracket]Pirate Island[close bracket][as]nav Pirate Island[end link] ";
		if Viking Ship is known:
			say "| [link][bracket]Viking Ship[close bracket][as]nav Viking Ship[end link] ";
		say "[line break]";
	[start of the Stables area]
	if Stables Hotel is known or Master's Office is known:
		say "[bold type]The Stables[roman type]: ";
		if Stables Hotel is known:
			say "[link][bracket]Stables Hotel[close bracket][as]nav Stables Hotel[end link] - ";
		if Master's Office is known:
			say "| [link][bracket]Master's Office[close bracket][as]nav Master's Office[end link] ";
		say "[line break]";
	[start of the college area]
	if College Campus is known or Campus Gym is known or Paleontology Office is known or Phi Iota Gamma is known or Sports Arena Lockerroom is known or Astroslide Field Lockerroom is known:
		say "[bold type]Tenvale College[roman type]: ";
		if College Campus is known:
			say "[link][bracket]College Campus[close bracket][as]nav College Campus[end link] - ";
		if Astroslide Field Lockerroom is known:
			say "| [link][bracket]Astroslide Field Lockerroom[close bracket][as]nav Astroslide Field Lockerroom[end link] ";
		if Campus Gym is known:
			say "| [link][bracket]Campus Gym[close bracket][as]nav Campus Gym[end link] ";
		if Paleontology Office is known:
			say "| [link][bracket]Paleontology Office[close bracket][as]nav Paleontology Office[end link] ";
		if Phi Iota Gamma is known:
			say "| [link][bracket]Phi Iota Gamma[close bracket][as]nav Phi Iota Gamma[end link] ";
		if Sports Arena Lockerroom is known:
			say "| [link][bracket]Sports Arena Lockerroom[close bracket][as]nav Sports Arena Lockerroom[end link] ";
		say "[line break]";
	[start of the forest area]
	if Urban Forest is known or Bunny House is known or Happy Puppy Kennel is known:
		say "[bold type]Urban Forest[roman type]: ";
		if Urban Forest is known:
			say "[link][bracket]Urban Forest[close bracket][as]nav Urban Forest[end link] - ";
		if Bunny House is known:
			say "[link][bracket]Bunny House[close bracket][as]nav Bunny House[end link] ";
		if Happy Puppy Kennel is known:
			say "[link][bracket]Happy Puppy Kennel[close bracket][as]nav Happy Puppy Kennel[end link] ";
		say "[line break]";
	[start of the warehouse area]
	if Warehouse District is known or Hyena Hideout is known or Mike's Home is known or Wolfman Lair is known:
		say "[bold type]Warehouse District[roman type]: ";
		if Warehouse District is known:
			say "[link][bracket]Warehouse District[close bracket][as]nav Warehouse District[end link] - ";
		if Hyena Hideout is known:
			say "| [link][bracket]Hyena Hideout[close bracket][as]nav Hyena Hideout[end link] ";
		if Mike's Home is known:
			say "| [link][bracket]Mike's Home[close bracket][as]nav Mike's Home[end link] ";
		if Spider's Web is known:
			say "| [link][bracket]Spider's Web[close bracket][as]nav Spider's Web[end link] ";
		if Wolfman Lair is known:
			say "| [link][bracket]Wolfman Lair[close bracket][as]nav Wolfman Lair[end link] ";
		say "[line break]";
	[start of the zoo area]
	if Zoo Entrance is known or Gator Den is known or Tiger den is known:
		say "[bold type]Zoo[roman type]: ";
		if Zoo Entrance is known:
			say "| [link][bracket]Zoo Entrance[close bracket][as]nav Zoo Entrance[end link] ";
		if Gator Den is known:
			say "| [link][bracket]Gator Den[close bracket][as]nav Gator Den[end link] ";
		if Tiger den is known:
			say "| [link][bracket]Tiger den[close bracket][as]nav Tiger den[end link] ";
		say "[line break]";


navigating is an action applying to one thing.

understand "navigate [any known fasttravel room]" as navigating.
understand "navigate to [any known fasttravel room]" as navigating.
understand "nav [any known fasttravel room]" as navigating.
understand "travel to [any known fasttravel room]" as navigating.
understand "travel [any known fasttravel room]" as navigating.
understand "go to [any known fasttravel room]" as navigating.
understand "return to [any known fasttravel room]" as navigating.

carry out navigating:
	if location of player is not fasttravel:
		say "You can't navigate from here.";
		stop the action;
	if noun is location of player:
		say "You're already there.";
		stop the action;
	let the bonus be (( the perception of the player minus 10 ) divided by 2);
	now battleground is "Outside";
	if a random number from 1 to 20 is less than 10 minus bonus and battleground is not "void":
		if there is a area of Battleground in the table of random critters:
			Fight;
			if ( ( hardmode is true and a random chance of 1 in 8 succeeds ) or ( "Bad Luck" is listed in feats of player and a random chance of 1 in 8 succeeds ) ) and battleground is not "void":
				say "As you are trying to recover from your last encounter, another roving creature finds you.";
				Fight;
	otherwise:
		say "You travel to [the noun], avoiding trouble as best you can.";
	if hp of Velos > 2, move Velos to the noun;
	move the player to the noun;
	follow turnpass rule;

understand "vial [text]" as vialing.

Vialing is an action applying to one topic.

Researchbypass is a number that varies. Researchbypass is normally 0.

carry out vialing:
	let t be the topic understood;
	let target be text;
	let found be 0;
	let z be 1;
	let q be a topic;
	repeat with x running through vials of player:
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
	now monster is 0;
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is target:
			now monster is y;
			break;
	if monster is 0:
		say "ERROR: That creature infection ([target]) could not be found.";
		now monster is 1;
	otherwise:
		choose row monster from the table of random critters;
		now researchbypass is 1;
		if non-infectious entry is true:
			now non-infectious entry is false;
			infect target;
			now non-infectious entry is true;
		otherwise:
			infect target;
		now researchbypass is 0;
		remove entry z from vials of player;

to deletevial (x - text):	[removes 1 vial of a given type from the player's inventory]
	let found be 0;
	let z be 0;
	repeat with y running through vials of player:
		increase z by 1;
		if x in lower case is y in lower case:
			now found is 1;
			break;
	if found is 0:
		say "Error - [x] - Expected vial not found.";
		stop the action;
	otherwise:
		remove entry z from vials of player;

understand "vialdrop [text]" as vialdropping.

Vialdropping is an action applying to one topic.

Carry out vialdropping:
	let t be the topic understood;
	let target be text;
	let found be 0;
	if vials of player is empty, say "You have no vials." instead;
	let z be 1;
	let q be a topic;
	repeat with x running through vials of player:
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
	remove entry z from vials of player;

understand "vialalldrop [text]" as vialalldropping.

Vialalldropping is an action applying to one topic.

Carry out vialalldropping:
	let t be the topic understood;
	let target be text;
	let found be 0;
	if the number of entries in vials of player is 0:
		say "You have no vials.";
		stop the action;
	let y be number of entries in vials of player;
	increase y by 1;
	let q be number of entries in vials of player;
	repeat with x running from 1 to q:
		decrease y by 1;
		if t in lower case is entry y in vials of player in lower case:
			now target is entry y in vials of player;
			remove entry y from vials of player;
			now found is 1;
	if found is 0:
		say "You don't seem to have any such vial.";
	otherwise:
		say "You chuck all your [target] vials away.";


[understand the command "set inventory columns" and "inventory columns" and "set inventory" and "set columns" as something new.]

settinginvcolumns is an action applying to nothing.

understand "set inventory columns" as settinginvcolumns.
understand "inventory columns" as settinginvcolumns.
understand "set inventory" as settinginvcolumns.
understand "set columns" as settinginvcolumns.

invcolumns is a number that varies.  [invcolumns is usually 2. - set as part of Presets in Core Mechanics]

carry out settinginvcolumns:
	say "[set_invcolumns]";


understand the command "i" and "inv" and "inventory" as something new.

Inventorying is an action applying to nothing.

understand "item" as Inventorying.
understand "i" as Inventorying.
understand "inv" as Inventorying.
understand "inventory" as Inventorying.

invcolumns is a number that varies.  invcolumns is usually 2.

does the player mean doing something with the medkit: it is very likely.

carry out Inventorying:
	if invcolumns < 1 or invcolumns > 4, now invcolumns is 2;
	sort invent of player;
	let dseed be 0;
[	let tempname be indexed text;
	repeat with x running from 1 to the number of rows in the table of game objects:
		choose row x in the table of game objects;
		now tempname is name entry in lower case;
		now sortname entry is tempname;
	sort the table of game objects in sortname order;	]
	let jblouse be 0;
	if demon seed is owned, now dseed is 1;
	if Janice's blouse is owned, now jblouse is 1;
	say "Peeking into your backpack, you see: [if the number of owned grab objects is 0]Nothing[otherwise][line break][end if]";
	[apparently adding entries to a list is faster than looking for it, so we clear the previous item actions in one call]
	[now hyperlink list is {};]
	[these are the default item actions in front of the item name]
	let itemactions be {{"U", "use"}, {"L", "look"}, {"S", "smell"}, {"D", "drop"}, {"J", "junk"}, {"X", "junkall"}};
	if the number of owned grab objects is greater than 0:
		say "[bold type][bracket]U[close bracket][roman type]se, [bold type][bracket]L[close bracket][roman type]ook, [bold type][bracket]S[close bracket][roman type]mell, [bold type][bracket]D[close bracket][roman type]rop, [bold type][bracket]J[close bracket][roman type]unk, [bold type][bracket]X[close bracket][roman type]Junkall, [if the number of trader in the location of the player > 0 or ( Ronda is visible and hp of Ronda is 0 and dseed is 1 ) or ( Kristen is visible and hp of Kristen is 10 and jblouse is 1 ) or ( Christy is visible and carried of super spicy sausage > 0 and hp of Christy > 1 and hp of Christy < 50 )], [bold type][bracket]T[close bracket][roman type]rade[end if][if the number of smither in the location of the player > 0], [bold type][bracket]I[close bracket][roman type]mprove[end if], [bold type](*)[roman type] equipped/wielded, [bold type](+)[roman type] improved. ";
		let weight be 0;
		[5 more than in the original version, but therefore the indicators will not add to it anymore]
		let baseavailcolumns be a number;
		if invcolumns > 1:
			now baseavailcolumns is 20;
		otherwise:
			now baseavailcolumns is 29;
		let owneditemindex be a number;
		[preparations, put all calculations here that would slow down the loop]
		[! for every "trade if" you have to add a corresponding "needstradechek if" here !]
		let needstradecheck be 0;
		if Ronda is visible and hp of Ronda is 0:
			now needstradecheck is 1;
		otherwise if Xerxes is visible and lust of Xerxes is 2:
			now needstradecheck is 1;
		otherwise if Helen is visible and lust of Helen is 2:
			now needstradecheck is 1;
		otherwise if Kristen is visible and hp of Kristen is 10:
			now needstradecheck is 1;
		otherwise if Christy is visible and hp of Christy > 1:
			now needstradecheck is 1;
		[generic trader check]
		let traderavailable be 0;
		let tradeguy be a person;
		if the number of trader in the location of the player is greater than 0:
			now tradeguy is a random trader in the location of the player;
			let traderavailable be 1;
		[go through all the stuff]
		repeat with x running from 1 to the number of rows in the table of game objects:
			choose row x in the table of game objects;
			let ownedCount be carried of object entry;
			if ownedCount > 0:
				increase owneditemindex by 1;
				let itemname be name entry;
				[line feed or switch to next column]
				if (invcolumns is 1) or (remainder after dividing owneditemindex by invcolumns is 1):
					say "[line break]";
				otherwise:
					say "  --  ";
				[new (old) linking without text capturing]
				say "[variable letter spacing]";
				if hypernull is not 1:
					repeat with itemaction running through itemactions:
						say "[invquicklink (itemname) for (itemaction)]";
				if needstradecheck is 1 and trade of object entry is empty:
					let notval be 0;
					[! for every if block here there has to be a corresponding if before the loop !]
					if Ronda is visible and hp of Ronda is 0 and itemname is "demon seed":
						say " [link][bracket][bold type]T[roman type][close bracket][as]give [itemname] to Ronda[end link]";
					if Xerxes is visible and lust of Xerxes is 2 and itemname is "awesome fruit":
						say " [link][bracket][bold type]T[roman type][close bracket][as]give [itemname] to Xerxes[end link]";
					if Helen is visible and lust of Helen is 2 and itemname is "awesomer fruit":
						say " [link][bracket][bold type]T[roman type][close bracket][as]give [itemname] to Helen[end link]";
					if Kristen is visible and hp of Kristen is 10 and itemname is "Janice's blouse":
						say " [link][bracket][bold type]T[roman type][close bracket][as]give [itemname] to Kristen[end link]";
					if Christy is visible and hp of Christy > 1 and hp of Christy < 50 and itemname is "super spicy sausage":
						say " [link][bracket][bold type]T[roman type][close bracket][as]give [itemname] to Christy[end link]";
				otherwise if traderavailable is 1:
					say " [link][bracket][bold type]T[roman type][close bracket][as]give [itemname] to [tradeguy][end link]";
				if (((object entry is armament or (object entry is equipment and AC of object entry > 0 and effectiveness of object entry > 0)) and object entry is not improved) or the itemname is "nanite collector") and the number of smither in the location of the player is greater than 0:
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
		say "[variable letter spacing]Total Weight: [weight]/[capacity of player] lbs. [if the player is overburdened]*OVERBURDENED*[line break][end if]";
	if scenario is "Researcher" or nanitemeter > 0:
		say "(You may see your collection of vials using [link][bold type]vial inventory[roman type][end link] or [link][bold type]vinv[roman type][end link] for short.)";
	now invlinklistfilled is one;

[used to speed up link command lookup inbetween clears on the hyperlink list, because we know something about the list:
 the order of items is in all likelihood the same that we are now creating links in
]
lastinvfoundindex is a number that varies.
[another speed up: if we know that the link list is empty (or at least not filled with inventory links) we can skipping searching through it]
invlinklistfilled is a number that varies.
To say invquicklink (itemname - a text) for (itemaction - a list of texts):
	let linkcommand be the substituted form of "[entry 2 of itemaction] [itemname]";
	let the invlinkindex be zero;
	if invlinklistfilled is zero:
		add linkcommand to hyperlink list;
		let invlinkindex be the number of entries of hyperlink list;
	otherwise:
		if lastinvfoundindex > 0 and lastinvfoundindex <= number of entries of hyperlink list and linkcommand exactly matches the text entry (lastinvfoundindex) of the hyperlink list:
			now invlinkindex is lastinvfoundindex;
		otherwise:
			repeat with linktext running through the hyperlink list:
				decrease invlinkindex by 1;
				if linkcommand is linktext:
					now invlinkindex is 0 - invlinkindex;
					break;
		if the invlinkindex <= 0:
			add linkcommand to hyperlink list;
			let invlinkindex be the number of entries of hyperlink list;
		otherwise:
			now lastinvfoundindex is invlinkindex + 1;
	say "[set link (invlinkindex)][bracket][entry 1 of itemaction][close bracket][terminate link] ";

Definition: A grab object (called D) is fiveowned:
	let count be 0;
	if there is a name corresponding to a object of d in the table of game objects:
		if the carried of D is greater than 4, yes;
	no;

[understand the command "vint" and "vial inventory" and "vial inv" and "vinv" as something new.]

VialInventorying is an action applying to nothing.

understand "vint" as VialInventorying.
understand "vinv" as VialInventorying.
understand "vial inventory" as VialInventorying.
understand "vial inv" as VialInventorying.

carry out VialInventorying:
	sort vials of player;
	if scenario is not "Researcher" and nanitemeter is 0:
		say "You don't possess anything of that nature.";
		continue the action;
	if the number of entries in vials of player is 0:
		say "Your collection of infection vials is empty.";
	if the number of entries in vials of player is greater than 0:
		say "Type [bold type]vial <name>[roman type] to [bold type][bracket]U[close bracket][roman type]se a vial, [bold type]vialdrop <name>[roman type] to [bold type][bracket]D[close bracket][roman type]estroy a vial, [bold type]vialalldrop <name>[roman type] to [bold type][bracket]D[close bracket][roman type]estroy [bracket]A[close bracket]ll of a vial";
		if ( scenario is "Researcher" or nanitemeter > 0) and Larissa is visible:
			say " or [bold type]vialsell[roman type] to [bold type][bracket]S[close bracket][roman type]ell a vial";
		say ".";
		say "Your infection vial collection consists of:[line break]";
		let norepeat be a list of text;
		repeat with x running through vials of player:
			if x is listed in norepeat, next;
			add x to norepeat;
			let count be 0;
			repeat with z running through vials of player:
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
	if the number of owned grab objects is greater than 0:
		repeat with x running from 1 to the number of rows in the table of game objects:
			choose row x in the table of game objects;
			if object entry is owned:
				let num be carried of object entry;
				increase weight by weight entry times num;
	if "Strong Back" is listed in feats of player and strongbacked is 0:
		now strongbacked is 1;
		increase capacity of player by 50;
	if weight is greater than capacity of player, yes;
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
understand "use cot" as resting.

Check using a grab object(called x):
	if hardmode is true and x is journal and (LastJournaluse minus 8) is less than turns:
		say "You can't use your [x] for another [(remainder after dividing (turns minus (LastJournaluse minus 8)) by 8 ) times 3] hours.";
		stop the action;
	continue the action;

Carry out using a grab object(called x):
	if x is owned:
		process x;
	otherwise:
		say "You don't see any [x] in your backpack.";

[MassUsing is an action applying to a number and one thing.

Understand "use [number] [owned grab object]" as massusing.

Carry out massusing:
	repeat with z running from 1 to number:
		if second noun is owned:
			process second noun;
		otherwise:
			say "You don't see any [second noun] in your backpack.";
]


Resolving is an action applying to one thing.

Carry out resolving a situation(called X):
	say "This situation has not been properly written!";

After resolving a situation:
	try looking;

to delete (X - a grab object):
	decrease the carried of x by 1;
	if carried of x is less than 0:
		now carried of x is 0;
		say "ERROR: There was no [x] to remove.  Please report where this occurred.";

instead of waiting:
	follow the turnpass rule;

To say time of day:
	if remainder after dividing turns by 8 is 7:
		say "early morning";
	if remainder after dividing turns by 8 is 6:
		say "mid morning";
	if remainder after dividing turns by 8 is 5:
		say "noon";
	if remainder after dividing turns by 8 is 4:
		say "mid after noon";
	if remainder after dividing turns by 8 is 3:
		say "evening";
	if remainder after dividing turns by 8 is 2:
		say "early night";
	if remainder after dividing turns by 8 is 1:
		say "midnight";
	if remainder after dividing turns by 8 is 0:
		say "pre dawn";
	if remainder after dividing turns by 8 is -1:
		say "early morning";
	if remainder after dividing turns by 8 is -2:
		say "mid morning";
	if remainder after dividing turns by 8 is -3:
		say "noon";
	if remainder after dividing turns by 8 is -4:
		say "mid after noon";
	if remainder after dividing turns by 8 is -5:
		say "evening";
	if remainder after dividing turns by 8 is -6:
		say "early night";
	if remainder after dividing turns by 8 is -7:
		say "midnight";
	if remainder after dividing turns by 8 is -8:
		say "pre dawn";

To say short time of day:
	if remainder after dividing turns by 8 is 7:
		say "morning";
	if remainder after dividing turns by 8 is 6:
		say "morning";
	if remainder after dividing turns by 8 is 5:
		say "day";
	if remainder after dividing turns by 8 is 4:
		say "afternoon";
	if remainder after dividing turns by 8 is 3:
		say "evening";
	if remainder after dividing turns by 8 is 2:
		say "evening";
	if remainder after dividing turns by 8 is 1:
		say "evening";
	if remainder after dividing turns by 8 is 0:
		say "morning";
	if remainder after dividing turns by 8 is -1:
		say "morning";
	if remainder after dividing turns by 8 is -2:
		say "morning";
	if remainder after dividing turns by 8 is -3:
		say "day";
	if remainder after dividing turns by 8 is -4:
		say "afternoon";
	if remainder after dividing turns by 8 is -5:
		say "evening";
	if remainder after dividing turns by 8 is -6:
		say "evening";
	if remainder after dividing turns by 8 is -7:
		say "evening";
	if remainder after dividing turns by 8 is -8:
		say "morning";

daytimer is a thing.
daytimer can be day or night.  [daytimer is normally true.	[True/False variable for to indicate if day or night] ]

definition: Daytimer is day:
	if remainder after dividing turns by 8 > 3 or ( remainder after dividing turns by 8 < 0 and remainder after dividing turns by 8 > -5 ):
		yes;
	otherwise:
		no;

definition: Daytimer is night:
	if remainder after dividing turns by 8 > 3 or ( remainder after dividing turns by 8 < 0 and remainder after dividing turns by 8 > -5 ):
		no;
	otherwise:
		yes;

to guesstimate time at (x - a number):
	if x < 0:
		say "ERROR: Negative time period.";
	otherwise if x is 0:
		say "under three hour";
	otherwise if x <= 10:
		say "[x * 3] hours";	[up to 30 hrs]
	otherwise if x <= 14:
		say "a day and a half or so";	[up to 42 hrs]
	otherwise if x <= 18:
		say "two days or so";		[up to 54 hrs]
	otherwise if x <= 22:
		say "two and a half days or so";	[up to 66 hrs]
	otherwise if x <= 28:
		say "three days or so";	[up to 84 hrs]
	otherwise:
		say "[( x / 8 )] days";


To Extend game by (x - a number):
	decrease targetturns by x;
	say "[bold type]((You have earned additional time: [x divided by 8] days, [(remainder after dividing x by 8) times 3] hours))[roman type]";


To process (X - a grab object):
	if x is temporary and x is owned:
		say "You eagerly use up the [x]! ";
		let found be 0;
		let num be 0;
		delete x;
	otherwise:
		say "You use the [x]. ";
	if usedesc of x is empty:
		now x is x;
	otherwise:
		say "[usedesc of x]";
	if x is food:
		if "Junk Food Junky" is listed in feats of player:
			if hunger of player is greater than 8:
				increase score by 2;
			decrease hunger of player by 9;
			if hunger of player is less than 0, now hunger of player is 0;
			say "You eat the food, feeling a little disappointed it's not junk food!";
			if morale of player is less than 0:
				increase morale of player by 10;
				if morale of player is greater than 0, now morale of player is 0;
				say "You feel a little better having eaten some boring food.";
		otherwise:
			if hunger of player is greater than 11:
				increase score by 4;
			decrease hunger of player by 12;
			if hunger of player is less than 0, now hunger of player is 0;
			say "You feel less hungry after wolfing down some food, yum!";
			if morale of player is less than 0:
				increase morale of player by 30;
				if morale of player is greater than 0, now morale of player is 0;
				say "You feel better having eaten.";
	if x is chips:
		if labhost > 0 and bodyname of player is "Chocolate Lab" and a random chance of labhost in 4 succeeds:
			say "[line break]     As you begin unwrapping your snack a powerful rumbling begins in your stomach, you release a low groan as the churning inside your body increases, the [if labhost is 2]labs[otherwise]lab[end if] clearly excited about something.  There is a sudden pressure at your chest as your feel the churning begin to focus at a single point, before you have a chance to react, or even realize what's happening, a canine snout pushes out of your chocolaty chest, grabbing the [one of]chocolate bar[or]chocolate[or]M&Ms[at random] from your hand and swallowing it whole.  You stand there shocked for a moment as the lab spits up the chewed remains of your treat's wrapper before releasing a happy bark and receding into your body.  Dissappointed at the loss of your snack, you release a heavy sigh and continue on your way.";
		otherwise if "Junk Food Junky" is listed in feats of player:
			if hunger of player is greater than 14:
				increase score by 5;
			decrease hunger of player by 15;
			if hunger of player is less than 0, now hunger of player is 0;
			say "Snack time!  You wolf down some [one of]potato chips[or]somehow still warm fries[or]Doritos[or]trail mix[or]M&Ms[or]hard candy[at random] with delight.  YUM!";
			if morale of player is less than 0:
				increase morale of player by 36;
				if morale of player is greater than 0, now morale of player is 0;
				say "You feel much better after having a snack.";
			increase morale of player by 1;
		otherwise:
			if hunger of player is greater than 5:
				increase score by 2;
			decrease hunger of player by 6;
			if hunger of player is less than 0, now hunger of player is 0;
			say "You feel less hungry after wolfing down some [one of]potato chips[or]somehow still warm fries[or]Doritos[or]trail mix[or]M&Ms[or]hard candy[at random], yum!";
			if morale of player is less than 0:
				increase morale of player by 15;
				if morale of player is greater than 0, now morale of player is 0;
				say "You feel better having eaten.";
	if x is glob of goo:
		if hunger of player is greater than 5:
			increase score by 2;
		decrease hunger of player by 6;
		if hunger of player is less than 0, now hunger of player is 0;
		say "You slurp up the neon colored goo and find that it tastes delicious, and even helps slake your hunger somewhat as you chew at it, mmm...";
		if morale of player is less than 0:
			increase morale of player by 15;
			if morale of player is greater than 0, now morale of player is 0;
			say "You feel better having eaten.";
	if x is water bottle:
		if "Junk Food Junky" is listed in feats of player:
			if thirst of player is greater than 0:
				increase score by thirst of player divided by 3;
				if thirst of player is greater than 15:
					decrease score by ( thirst of player minus 15 ) divided by 3;
			decrease thirst of player by 15;
			if thirst of player is less than 0, now thirst of player is 0;
			say "You feel a little less thirty after drinking some bland water!";
			if morale of player is less than 0:
				increase morale of player by 20;
				if morale of player is greater than 0, now morale of player is 0;
				say "After drinking something, you feel a little better.";
		otherwise:
			if thirst of player is greater than 0:
				increase score by thirst of player divided by 3;
				if thirst of player is greater than 25:
					decrease score by ( thirst of player minus 25 ) divided by 3;
			decrease thirst of player by 25;
			if thirst of player is less than 0, now thirst of player is 0;
			say "You feel less thirsty after guzzling some water, yum!";
			if morale of player is less than 0:
				increase morale of player by 62;
				if morale of player is greater than 0, now morale of player is 0;
				say "After drinking something, you feel better.";
	if x is dirty water:
		if "Junk Food Junky" is listed in feats of player:
			if thirst of player is greater than 0:
				increase score by thirst of player divided by 3;
				if thirst of player is greater than 15:
					decrease score by ( thirst of player minus 15 ) divided by 3;
			decrease thirst of player by 15;
			if thirst of player is less than 0, now thirst of player is 0;
			say "You feel a little less thirty after drinking some bland water!";
			if morale of player is less than 0:
				increase morale of player by 20;
				if morale of player is greater than 0, now morale of player is 0;
				say "After drinking something, you feel a little better.";
		otherwise:
			if thirst of player is greater than 0:
				increase score by thirst of player divided by 3;
				if thirst of player is greater than 25:
					decrease score by ( thirst of player minus 25 ) divided by 3;
			decrease thirst of player by 25;
			if thirst of player is less than 0, now thirst of player is 0;
			say "You feel less thirsty after guzzling some water, yum!";
			if morale of player is less than 0:
				increase morale of player by 62;
				if morale of player is greater than 0, now morale of player is 0;
				say "After drinking something, you feel better.";
		sort table of random critters in random order;
		now monster is 1;
		if "Iron Stomach" is not listed in feats of player, infect;
	if x is soda:
		if "Junk Food Junky" is listed in feats of player:
			if thirst of player is greater than 0:
				increase score by thirst of player divided by 3;
				if thirst of player is greater than 30:
					decrease score by ( thirst of player minus 30 ) divided by 3;
			decrease thirst of player by 30;
			if thirst of player is less than 0, now thirst of player is 0;
			say "Awesome!  Soda!  You down the delicious can of [if player is sugarbodied][one of]cola[or]Dr Pibbston[or]Mountain Don't[or]Burkes['] root beer[at random][otherwise][one of]lemon lime[or]strawberry[or]Dr Pibbston[or]cola[or]orange[or]ginger ale[at random][end if].  YUM!";
			if morale of player is less than 0:
				increase morale of player by 75;
				if morale of player is greater than 0, now morale of player is 0;
				say "You feel much better having had a soda.";
			increase morale of player by 1;
		otherwise:
			if thirst of player is greater than 0:
				increase score by thirst of player divided by 3;
				if thirst of player is greater than 12:
					decrease score by ( thirst of player minus 12 ) divided by 3;
			decrease thirst of player by 12;
			if thirst of player is less than 0, now thirst of player is 0;
			say "You feel less thirsty after guzzling some soda, [if player is sugarbodied][one of]cola[or]Dr Pibbston[or]Mountain Don't[or]Burkes['] root beer[at random][otherwise][one of]lemon lime[or]strawberry[or]Dr Pibbston[or]cola[or]orange[or]ginger ale[at random][end if] yum!";
			if morale of player is less than 0:
				increase morale of player by 30;
				if morale of player is greater than 0, now morale of player is 0;
				say "You feel better having drunken something.";
		sfsodadrink;
	if x is gryphon milk:
		say "The milk is thick, like a shake, but warmer, flowing down your throat in sweet creamy waves that send tingles of pleasure through your body as you guzzle it down. Only after you've drunk it all down do you notice that some has run down your chin in your excitement. That is some good milk!";
		decrease thirst of player by 15;
		if thirst of player is less than 0, now thirst of player is 0;
	if x is dog milk:
		say "Somehow still warm, you guzzle it down without thinking too hard about its origins. A prickly warmth fills your belly as the cream flows along your gullet.";
		decrease thirst of player by 15;
		if thirst of player is less than 0, now thirst of player is 0;
		repeat with Z running from 1 to number of filled rows in table of random critters:
			choose row Z from the table of random critters;
			let zed be "collie";
			if name entry matches the text zed, case insensitively:
				now monster is Z;
				break;
		if "Iron Stomach" is not listed in feats of player, follow the sex change rule;
	if x is distilled milk:
		say "Ugh, dry milk. It takes some effort to force the almost sickeningly sweet powder down your throat, but once it hits your belly, your body is wracked with powerful waves of alternating lust and breathlessness.";
		increase thirst of player by 5;
		grow breasts by 3;
		say "[line break]";
	if x is infectious and "Iron Stomach" is not listed in feats of player:
		let found be 0;
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is strain of x:
				now monster is y;
				now found is 1;
				break;
		if found is 1, infect;
	if x is a journal:
		follow the brain descr rule;
		say "You settle down and start scribbling in your journal about your [descr]. ";
		if the humanity of the player is less than 100:
			let healed be 10 + ( ( level of player + perception of player - 10 ) / 2 );
			if caffeinehigh of player > 0:
				now healed is healed / 2;
				say " Filled with excess, manic energy, you have difficulty sitting still and focusing on your journal. ";
			if ssmb is true:
				now healed is ( healed * 3 ) / 2;
			increase humanity of player by healed;
			if humanity of player is greater than 100:
				decrease healed by humanity of player minus 100;
				now humanity of player is 100;
			say "([humanity of the player]/100).";
			now Lastjournaluse is turns;
		follow turnpass rule;
	if x is a armament:
		if weapon of player is weapon of x:		[unequip]
			now weapon of player is "[one of]your quick wit[or]your fists[or]a quick kick[or]your body[or]some impromptu wrestling[or]an unarmed strike[at random]";
			now weapon damage of player is 4;
			now weapon type of player is "Melee";
			now weapon object of player is journal;
			say "You stop holding your [x].";
		otherwise: [equip]
			now weapon object of player is x;
			now weapon of player is weapon of x;
			now weapon damage of player is weapon damage of x;
			now weapon type of player is weapon type of x;
			if x is ranged:
				now weapon type of player is "Ranged";
			say "You ready your [x]";
			if x is unwieldy:
				if scalevalue of player > objsize of x:
					say ".  Your [if scalevalue of player is 3]normal-size[otherwise if scalevalue of player is 4]large[otherwise]massive[end if] [bodyname of player] hand dwarfs the [x], making it [if scalevalue of player - objsize of x > 3]very[otherwise if scalevalue of player - objsize of x is 3]rather[otherwise]somewhat[end if] [one of]unwieldy[or]awkward[or]difficult[at random] to use accurately";
				otherwise:
					say ".  Your [if scalevalue of player is 3]normal-size[otherwise if scalevalue of player is 2]small[otherwise]tiny[end if] [bodyname of player] hands are just too small to comfortably grip your [x], making swinging it a [if objsize of x - scalevalue of player > 3]very[otherwise if objsize of x - scalevalue of player is 3]quite[otherwise]a little[end if] [one of]unwieldy[or]awkward[or]difficult[at random]";
			say ".";
	if x is equipment:
		if x is equipped:		[unequip]
			say "You stop using the [x].";
			now x is not equipped;
		otherwise:
			if slot of x is empty:
				increase score by 0;
			otherwise:
				repeat with z running through equipped equipment:
					if slot of z is slot of x:
						say "Your [z] is in the way!";
						continue the action;
			say "You start using the [x].";
			now x is equipped;
	if x is a medkit:
		let healed be 10 + level of player + ( ( intelligence of player minus 10 ) divided by 2 );
		if "Expert Medic" is listed in the feats of the player:
			if Paula is visible:
				now healed is ( healed * 133 ) / 100;
			otherwise:
				now healed is ( healed times 125 ) divided by 100;
		otherwise if Paula is visible:
			now healed is ( healed times 125 ) divided by 100;
		otherwise if carried of First Aid Manual > 0:
			increase healed by 2;
		if "Rapid Healing" is listed in the feats of the player:
			now healed is ( healed times 115 ) divided by 100;
		if "Regeneration" is listed in the feats of the player:
			now healed is ( healed times 115 ) divided by 100;
		if nohealmode is true:
			now healed is ( healed * 125 ) / 100;
		if ssmb is true:
			now healed is ( healed * 3 ) / 2;
		increase hp of player by healed;
		if hp of player is greater than maxhp of player:
			decrease healed by hp of player minus maxhp of player;
			now hp of player is maxhp of player;
		say "Using your medkit, [if Paula is visible]Paula helps you [one of]treat the worst of your wounds[or]bandage up the worst of your wounds[or]spray your cuts with anesthetic[or]clean and dress your wounds[at random], making sure to kiss them to make it all better[otherwise][one of]you spray your cuts with anesthetic[or]you bandage your worst wounds[at random][end if]. You regain [special-style-1][healed][roman type] hit points.";
		if a random chance of 1 in 10 succeeds:
			say "You have used up the last of the medkit.";
			if "Expert Medic" is listed in the feats of the player and a random chance of 2 in 10 succeeds:
				say "You manage to save the medkit with your amazing skills.";
			otherwise:
				delete medkit;
	if x is a pepperspray:
		if inafight is 1:
			say "[line break][usepepperspray]";
		otherwise:
			say "It would not be good idea to use that on yourself.  Spicy eyes!";
	if x is a healing booster:
		let healed be 20;
		if "Expert Medic" is listed in the feats of the player:
			now healed is 25;
		otherwise if carried of First Aid Manual > 0:
			increase healed by 2;
		if "Rapid Healing" is listed in the feats of the player:
			increase healed by 2;
		if "Regeneration" is listed in the feats of the player:
			increase healed by 3;
		if nohealmode is true:
			now healed is ( healed * 125 ) / 100;
		increase hp of player by healed;
		if hp of player is greater than maxhp of player:
			decrease healed by hp of player minus maxhp of player;
			now hp of player is maxhp of player;
		say "Using your healing booster, you inject the mix into your body, giving a quick boost to your infected body's healing rate.  You regain [special-style-1][healed][roman type] hit points.";
		delete healing booster;


understand "talk [person]" as conversing.
understand "talk to [person]" as conversing.
understand "chat [person]" as conversing.
understand "chat with [person]" as conversing.
understand "talk with [person]" as conversing.

Conversing is an action applying to one thing.

Check Conversing:
	if the noun is the player, say "I know this is stressful, but talking to yourself will not help." instead;
	if the number of entries in conversation of noun is 0, say "They have nothing to say" instead.

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
	if "Instinctive Combat" is listed in feats of player:
		now autoattackmode is 0; [default combat, make choices at normal]
		say "You calm your instincts and regain control of your actions.";
	otherwise:
		say "You feel you are missing the instincts to do this.";

carry out autoattackberserk:
	if "Instinctive Combat" is listed in feats of player:
		now autoattackmode is 1; [autoattack, no choice, always attack]
		say "You let your aggressive instincts take the forefront, knowing you will attack at any chance.";
	otherwise:
		say "You feel you are missing the instincts to do this.";

carry out autoattackpass:
	if "Instinctive Combat" is listed in feats of player:
		now autoattackmode is 3; [autopass, no choice, always pass]
		say "You feel calm.  Your sure everything will work out in the end.  Don't mind the monsters attacking you.";
	otherwise:
		say "You feel you are missing the instincts to do this.";

carry out autoattackcoward:
	if "Instinctive Combat" is listed in feats of player:
		now autoattackmode is 4; [autoflee, no choice, always flee]
		say "You focus on the need to escape the monsters, the need to run away.";
	otherwise:
		say "You feel you are missing the instincts to do this.";

carry out autoattacksubmit:
	if "Instinctive Combat" is listed in feats of player:
		now autoattackmode is 5; [autosubmit, no choice, always submit]
		say "Your increased libido clouds your thinking, wouldn't it be fun to let the monsters play with you.";
	otherwise:
		say "You feel you are missing the instincts to do this.";

Section Hyperlinks

[creates method to toggle hyperlinks on/off at any point in game.]
[HyperToggle is an action applying to nothing.
understand "Hyper Toggle" as HyperToggle.

carry out HyperToggle:
	if hypernull is 0:
		now hypernull is 1;
	otherwise if hypernull is 1:
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

To AttemptToWaitAndClearHyper: [use where you want a wait and clear.  Much like AttemptToWaitBeforeClear, but this includes the clear as part of it]
	if clearnomore plus waiterhater is not 2: [waits if either waiting or clearing is active, only skips them if both are turned off]
		wait for any key;
		clear the screen;
	now invlinklistfilled is zero; [this changes the inventorying mode to not look for existing inventory links again]
	now hyperlink list is {}. [empties hyperlink list regardless of clear status]

Section Waithate

[creates (and sets) flag for skipping many wait for any key;]
[i had difficulty setting it so that the player could directly toggle this, as well as have other chunks of code do the same thing.  made a command, which is for when the player types it out, and a function, which is for when code calls it.  the command just calls the code.  i'm sure there is a better way to do this, but it seems to work properly.]
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

[creates (and sets) flag for skipping most(all?) clear the screen]
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

Include Glulx Text Effects by Emily Short.

To say special-style-1: [name can be changed if desired, just adjust calls to it as well]
	(- glk_set_style(style_User1); -)

To say special-style-2: [name can be changed if desired, just adjust calls to it as well]
	(- glk_set_style(style_User2); -)

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

[
Table of Common Color Values [(continued)]
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
[names can be changed if desired, also need to change matching name in table below.  choose color in hex, then convert to decimal for assigned number.]
]

Table of User Styles (continued)
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
[to change style: replace -- with desired change.  see Glulx Text Effects.i7x for options]
[blockquote, input, and fixed letter appear to be unused.  they could be redefined as desired for more colors/formating.]
[alert, header, and note are used for a few game functions.  if you wanted to change those you could]
[italics and bold are currently in a variety of places.  just a few italics, but bold is all over the place.  be aware if you choose to change them]
]
style name (a glulx text style)	background color (a text)	color (a text)	first line indentation (a number)	fixed width (a truth state)	font weight (a font weight)	indentation (a number)	italic (a truth state)	justification (a text justification)	relative size (a number)	reversed (a truth state)
special-style-1	--	"#00CC00"	--	--	bold-weight	--	--	--	--	--
special-style-2	--	"#CC0000"	--	--	bold-weight	--	--	--	--	--



Part 3 - Item Code

Understand the command "get" as something new.
Understand the command "take" as something new.

Grabbing is an action applying to one thing.

understand "get [present grab object]" as grabbing.
understand "take [present grab object]" as grabbing.
understand "grab [present grab object]" as grabbing.

carry out grabbing something(called x):
	let found be 0;
	let num be 0;
	repeat with Q running through invent of the location of the player:
		increase num by 1;
		if q matches the regular expression printed name of x, case insensitively:
			now found is 1;
			add q to the invent of the player;
			remove entry num from invent of the location of the player;
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

carry out burninating something(called x):
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
			if found is less than 2:
				say "You're using that right now. Stop using it before you drop it.";
				continue the action;
	delete x;


Understand the command "trashall" as something new.
Understand the command "junkall" as something new.

allburninating is an action applying to one thing.

understand "trashall [owned grab object]" as allburninating.
understand "junkall [owned grab object]" as allburninating.

carry out allburninating something(called x):
	let found be carried of x;
	if x is not owned:
		say "You don't seem to be holding any.";
	otherwise:
		say "Do you wish to permanently trash all of the '[x]' you have?";
		if the player consents:
			if x is journal:
				say "You really don't think that's a good idea.";
			otherwise if x is an armament:
				if x is wielded:
					if found is 1:
						say "You're wielding that, so you'd best stop using it first.";
					otherwise:
						say "You trash all of them but the [x] you're using.  Bye-bye.";
						now carried of x is 1;
				otherwise:
					say "You trash them all.  Bye-bye.";
					now carried of x is 0;
			otherwise if x is an equipment:
				if x is equipped:
					if found is 1:
						say "You're using that right now.  You need to take it off to trash it.";
					otherwise:
						say "You trash all of them but the [x] you're wearing.  Bye-bye.";
						now carried of x is 1;
				otherwise:
					say "You trash them all.  Bye-bye.";
					now carried of x is 0;
			otherwise:
				say "You trash them all.  Bye-bye.";
				now carried of x is 0;
		otherwise:
			say "You change your mind.";


Understand the command "drop" as something new.

littering is an action applying to one thing.

understand "drop [owned grab object]" as littering.

carry out littering something(called x):
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
			if found is less than 2:
				say "You're using that right now. Stop using it before you drop it.";
				continue the action;
	repeat through table of game objects:
		if printed name of x matches the text name entry:
			add name entry to the invent of the location of the player;
			break;
	delete x;

Looting is an action applying to nothing.

understand "get all" as looting.
understand "get everything" as looting.
understand "take all" as looting.
understand "take everything" as looting.
understand "grab all" as looting.

carry out looting:
	let found be 0;
	let num be 0;
	repeat with Q running through invent of the location of the player:
		increase num by 1;
		now found is 1;
		add q to the invent of the player;
		say "You pick up the [q] and tuck it in your backpack.";
	if found is 0:
		say "You don't see anything around here.";
	otherwise:
		now the invent of the location of the player is { };

before taking a thing:
	if noun is rooted in place:
		say "You can't take that.";
		stop the action;
	say "That seems secured in place.";

understand the command "give" and "offer" as something new.

Purifying is an action applying to one thing.

understand "microwave [owned grab object]" as purifying.

Check Purifying:
	if the microwave is not visible, say "You see nothing to purify with." instead;

Carry out Purifying:
	if purified of noun is empty:
		say "You don't think that can get any more pure, at least not this way.";
		stop the action;
	let num be 0;
	delete noun;
	say "After purifying the [noun], you are left with [purified of the noun].";
	add purified of the noun to the invent of the player;


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
	add trade of the noun to the invent of the player;
	if "Haggler" is listed in feats of player and a random chance of 1 in 3 succeeds:
		say "You get a second one free with your amazing negotiating skills.";
		add trade of noun to the invent of the player;
	let num be 0;
	delete noun;

skipcockchange is a truth state that varies.  skipcockchange is usually false.

This is the sex change rule:
	choose row monster from the table of random critters;
	let singlesexadjust be 0;
	if "Single Sexed" is listed in feats of player:
		if cocks of player > 0 and cunts of player > 0:
			let singlesexadjust be 1;	[currently herm]
		otherwise if cocks of player > 0:
			let singlesexadjust be 2;	[currently male]
		otherwise if cunts of player > 0:
			let singlesexadjust be 3;	[currently female]
	if "Just One" is listed in feats of player:
		if cocks entry is greater than 1:
			now cocks entry is 1;
		if cunts entry is greater than 1:
			now cunts entry is 1;
	if ( the sex entry is "Male" or the sex entry is "Both" ) and cock length of player is less than cock length entry and cocks of player is not 0 and "Female Preferred" is not listed in feats of player:
		let prevcock be cock length of player;
		increase cock length of player by 1;
		increase cock length of player by ( cock length entry minus cock length of player ) divided by 3;
		if "Modest Organs" is listed in feats of player and cock length of player is greater than 8:
			now cock length of player is 8;
		if prevcock < cock length of player:		[did cock actually grow?]
			follow the cock descr rule;
			say "You can see your [if cocks of player is 1][one of]cock[or]penis[or]shaft[or]maleness[at random][otherwise][one of]cocks[or]penises[or]shafts[or]malenesses[at random][end if] [one of]engorge[or]swell[or]throb[at random] as [if cocks of player > 1]they gain[otherwise]it gains[end if] in length, becoming [descr]!";
	otherwise if ( the sex entry is "Male" or the sex entry is "Both" ) and cock length of player > ( ( cock length entry times 150 ) / 100 ) and "One Way" is not listed in feats of player:
		let prevcock be cock length of player;
		decrease cock length of player by 1;
		decrease cock length of player by ( cock length of player - ( ( cock length entry times 150 ) / 100 ) ) divided by 3;
		if "Male Preferred" is listed in feats of player or "Herm Preferred" is listed in feats of player or "Always Cocky" is listed in feats of player:
			if cock length of player is less than 5, now cock length of player is 5;
		if "Modest Organs" is listed in feats of player and cock length of player is greater than 8:
			now cock length of player is 8;
		if prevcock > cock length of player:		[did cock actually shrink?]
			follow the cock descr rule;
			say " Strong [one of]erotic tingles[or]cold waves[or]hot flashes[at random] run over your impressive [cockname of player] [if cocks of player > 1][one of]cocks[or]penises[or]shafts[or]poles[at random] as they begin[otherwise][one of]cock[or]penis[or]shaft[or]pole[at random] as it begins[end if] to diminish somewhat to better suit your new infection. [if cocks of player is greater than 1]They dwindle[otherwise]It dwindles[end if] in size, becoming [descr].";
	if ( the sex entry is "Male" or the sex entry is "Both" ) and cock width of player is less than cock width entry and cocks of player is not 0 and "Female Preferred" is not listed in feats of player:
		let prevcock be cock width of player;
		increase cock width of player by 1;
		increase cock width of player by ( cock width entry minus cock width of player ) divided by 3;
		if "Modest Organs" is listed in feats of player and cock width of player is greater than 5:
			now cock width of player is 5;
		if prevcock < cock width of player:		[did balls actually grow?]
			follow the cock descr rule;
			say "You can [if player is internal]feel your internal[otherwise]see your[end if] [one of]testes[or]balls[or]orbs[or]nuts[at random] [one of]tingle[or]churn audibly[or]throb[at random] as they grow larger, [if player is internal]body straining to abide this[otherwise]your flesh growing taught with the[end if] expansion, leaving you with a [one of]pair[or]set[at random] of [ball size]!";
	otherwise if ( the sex entry is "Male" or the sex entry is "Both" ) and cock width of player > ( ( cock width entry times 150 ) / 100 ) and "One Way" is not listed in feats of player:
		let prevcock be cock width of player;
		decrease cock width of player by 1;
		decrease cock width of player by ( cock width of player - ( ( cock width entry times 150 ) / 100 ) ) divided by 3;
		if "Male Preferred" is listed in feats of player or "Herm Preferred" is listed in feats of player or "Always Cocky" is listed in feats of player:
			if cock width of player is less than 3, now cock width of player is 3;
		if "Modest Organs" is listed in feats of player and cock width of player is greater than 5:
			now cock width of player is 5;
		if prevcock > cock width of player:		[did cock actually shrink?]
			follow the cock descr rule;
			say "You can feel a [one of]draining of[or]tightness around[or]pressure dropping in[at random] your [if player is internal]internal[otherwise]impressive[end if] [cockname of player] [one of]balls[or]testes[or]gonads[or]nuts[at random] as they begin to diminish somewhat to better suit your new infection.  You cum hard to drain their seed as they dwindle in size, becoming [ball size].";
	if cocks of player is less than cocks entry and ( the sex entry is "Male" or the sex entry is "Both" ) and "Female Preferred" is not listed in feats of player:
		let prevcock be cocks of player;
		if cocks of player is 0:
			increase the cocks of player by 1;
			now the cock length of player is 1;
			now the cock width of player is 1;
			increase the cock length of player by ( cock length entry  ) divided by 3;
			increase the cock width of player by ( cock width entry ) divided by 3;
			if skipcockchange is false:
				now cockname of player is name entry;
				now cock of player is cock entry;
			if "Modest Organs" is listed in feats of player and cock length of player is greater than 8:
				now cock length of player is 8;
			if "Modest Organs" is listed in feats of player and cock width of player is greater than 5:
				now cock width of player is 5;
		otherwise if a random chance of 2 in 3 succeeds and "Just One" is not listed in feats of player:	[Extra cocks at 67%]
			increase cocks of player by 1;
		if singlesexadjust is 3 and sex entry is "Both":	[female remains female if herm infection]
			now cocks of player is 0;
			now cock length of player is 0;
			now cock width of player is 0;
		if prevcock < cocks of player:		[did new cock appear?]
			follow the cock descr rule;
			say " Your groin throbs with intense sensations as a [descr] [cock entry] [one of]cock[or]penis[or]shaft[or]maleness[at random] erupts from you, spurting a few excited streams of fluid as it settles into place.";
	if cocks of player is not 0 and ( the sex entry is "Female" or the sex entry is "Neuter" ) and "One Way" is not listed in feats of player:
		let prevcock be cock length of player;
		let prevcock2 be cock width of player;
		decrease cock length of player by 1;
		decrease cock length of player by cock length of player divided by 3;
		decrease cock width of player by 1;
		decrease cock width of player by cock width of player divided by 4;
		if "Male Preferred" is listed in feats of player or "Herm Preferred" is listed in feats of player or "Always Cocky" is listed in feats of player:
			if cock length of player is less than 5, now cock length of player is 5;
			if cock width of player is less than 3, now cock width of player is 3;
		if (singlesexadjust is 1 or singlesexadjust is 2) and sex entry is "Female":		[male/herm becomes female if female infection]
			now cocks of player is 0;
			now cock length of player is 0;
			now cock width of player is 0;
		if prevcock > cock length of player or prevcock2 > cock width of player:		[did cock actually shrink?]
			follow the cock descr rule;
			say " Strange [one of]erotic tingles[or]cold waves[or]hot flashes[at random] run over your [if cocks of player > 1][one of]cocks[or]penises[or]shafts[or]poles[at random] as they begin[otherwise][one of]cock[or]man meat[or]shaft[or]pole[at random] as it begins[end if] to shrink. [if cocks of player is greater than 1]They dwindle[otherwise]It dwindles[end if] in size, becoming [descr] while[if player is internal] you imagine[end if] your [one of]balls[or]testes[or]nuts[or]gonads[at random] become [ball size]. ";
			if cock length of player is less than 1 or cock width of player is less than 1:
				say "You barely have time to give a whimper as you cease to be a male.";
				now the cocks of the player is 0;
			otherwise:
				say "[line break]";
		if cocks of player > 1 and a random chance of 2 in 5 succeeds and "All The Things" is not listed in feats of player:
			say "Sudden pleasure runs through one of your doomed [cock of player] cocks as it sprays the last of its seed, dwindling down to nothing at all and vanishing, leaving only the powerful orgasm to remember it by.";
			decrease cocks of player by 1;
	otherwise if cocks of player > cocks entry and a random chance of 1 in 3 succeeds and "One Way" is not listed in feats of player and (sex entry is "Male" or sex entry is "Both" ) and "All The Things" is not listed in feats of player:
		say "Sudden pleasure runs through one of your doomed [cock of player] cocks as it sprays the last of its seed, dwindling down to nothing at all and vanishing, leaving only [one of]the powerful[or]that final[at random] orgasm to remember it by.";
		decrease cocks of player by 1;
	if ( the sex entry is "Female" or the sex entry is "Both" ) and cunt length of player is less than cunt length entry and cunts of player is not 0 and "Male Preferred" is not listed in feats of player:
		let prevcunt be cunt length of player;
		increase cunt length of player by 1;
		increase cunt length of player by ( cunt length entry minus cunt length of player ) divided by 3;
		if "Modest Organs" is listed in feats of player and cunt length of player is greater than 8:
			now cunt length of player is 8;
		if prevcunt < cunt length of player:	[did cunt actually grow?]
			follow the cunt descr rule;
			say "You can see your [if cunts of player is 1][one of]cunt[or]pussy[or]vagina[or]cleft[at random][otherwise][one of]cunts[or]pussies[or]vaginas[or]clefts[at random] [one of]pulse[or]quiver[or]throb[at random][end if] as [if cunts of player is 1]it grows[otherwise]they grow[end if] deeper into your body, becoming [descr]!";
	otherwise if ( the sex entry is "Female" or the sex entry is "Both" ) and cunt length of player > ( ( cunt length entry times 150 ) / 100 ) and "One Way" is not listed in feats of player:
		let prevcunt be cunt length of player;
		decrease cunt length of player by 1;
		decrease cunt length of player by ( cunt length of player - ( ( cunt length entry times 150 ) / 100 ) ) divided by 3;
		if "Female Preferred" is listed in feats of player or "Herm Preferred" is listed in feats of player or "Always A Pussy" is listed in feats of player:
			if cunt length of player is less than 5, now cunt length of player is 5;
		if "Modest Organs" is listed in feats of player and cunt length of player is greater than 8:
			now cunt length of player is 8;
		if prevcunt > cunt length of player:		[did cunt actually shrink?]
			follow the cunt descr rule;
			say "Strong [one of]erotic tingles[or]cold waves[or]hot flashes[at random] flow into your ample [if cunts of player > 1][one of]cunts[or]pussies[or]vaginas[or]clefts[at random] as they begin[otherwise][one of]cunt[or]pussy[or]vagina[or]cleft[at random] as it begins[end if] to diminish somewhat to better suit your new infection. [if cunts of player is greater than 1]They dwindle[otherwise]It dwindles[end if] in size, becoming [descr].";
	if ( the sex entry is "Female" or the sex entry is "Both" ) and cunt width of player is less than cunt width entry and cunts of player is not 0 and "Male Preferred" is not listed in feats of player:
		let prevcunt2 be cunt width of player;
		increase cunt width of player by 1;
		increase cunt width of player by ( cunt width entry minus cunt width of player ) divided by 3;
		if "Modest Organs" is listed in feats of player and cunt width of player is greater than 5:
			now cunt width of player is 5;
		if prevcunt2 < cunt width of player:	[did cunt actually widen?]
			follow the cunt descr rule;
			say "You can see your [if cunts of player is 1][one of]cunt[or]pussy[or]vagina[or]cleft[at random][otherwise][one of]cunts[or]pussies[or]vaginas[or]clefts[at random][end if] [one of]engorge[or]swell[or]throb[at random] as your thighs are nudged apart to make room for those thickening lips, growing wider!";
	otherwise if ( the sex entry is "Female" or the sex entry is "Both" ) and cunt width of player > ( ( cunt width entry times 150 ) / 100 ) and "One Way" is not listed in feats of player:
		let prevcunt be cunt width of player;
		decrease cunt width of player by 1;
		decrease cunt width of player by ( cunt width of player - ( ( cunt width entry times 150 ) / 100 ) ) divided by 3;
		if "Female Preferred" is listed in feats of player or "Herm Preferred" is listed in feats of player or "Always A Pussy" is listed in feats of player:
			if cunt width of player is less than 3, now cunt width of player is 3;
		if "Modest Organs" is listed in feats of player and cunt width of player is greater than 5:
			now cunt width of player is 5;
		if prevcunt > cunt width of player:		[did cock actually shrink?]
			follow the cunt descr rule;
			say "You can feel a [one of]tightening[or]snugness[or]clenching[at random] from your accommodating [if cunts of player > 1][one of]cunts[or]pussies[or]vaginas[or]clefts[at random][otherwise][one of]cunt[or]pussy[or]vagina[or]cleft[at random][end if] as you are hit by an unexpected orgasm.  The squeezing does not release fully as your wet hole[sfn] shrink[sfv] somewhat to better suit your new infection by becoming tighter.";
	if cunts of player is less than cunts entry and ( the sex entry is "Female" or the sex entry is "Both" ) and "Male Preferred" is not listed in feats of player:
		let prevcunt be cunts of player;
		if cunts of player is 0 or cunt length of player is 0 or cunt width of player is 0:
			increase the cunts of player by 1;
			now the cunt length of player is 1;
			now the cunt width of player is 1;
			increase the cunt length of player by ( cunt length entry  ) divided by 3;
			increase the cunt width of player by ( cunt width entry  ) divided by 3;
			if "Modest Organs" is listed in feats of player and cunt length of player is greater than 8:
				now cunt length of player is 8;
			if "Modest Organs" is listed in feats of player and cunt width of player is greater than 5:
				now cunt width of player is 5;
		otherwise if a random chance of 2 in 3 succeeds and "Just One" is not listed in feats of player:	[2nd+ cunt at 67%]
			increase the cunts of player by 1;
		if singlesexadjust is 2 and sex entry is "Both":	[male remains male if herm infection]
			now cunts of player is 0;
			now cunt length of player is 0;
			now cunt width of player is 0;
		if prevcunt < cunts of player:		[did new cunt appear?]
			follow the cunt descr rule;
			say "Your groin throbs with intense sensations as a [descr] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] wetly forms, Leaking along a thigh as you quiver.";
	if cunts of player is not 0 and ( the sex entry is "Male" or the sex entry is "Neuter" ) and "One Way" is not listed in feats of player:
		let prevcunt be cunt length of player;
		let prevcunt2 be cunt width of player;
		decrease cunt length of player by 1;
		decrease cunt length of player by cunt length of player divided by 3;
		decrease cunt width of player by 1;
		decrease cunt width of player by cunt width of player divided by 4;
		if "Female Preferred" is listed in feats of player or "Herm Preferred" is listed in feats of player or "Always A Pussy" is listed in feats of player:
			if cunt length of player is less than 5, now cunt length of player is 5;
			if cunt width of player is less than 3, now cunt width of player is 3;
		if (singlesexadjust is 1 or singlesexadjust is 3) and sex entry is "Male":	[female/herm becomes male if male infection]
			now cunts of player is 0;
			now cunt length of player is 0;
			now cunt width of player is 0;
		if prevcunt > cunt length of player or prevcunt2 > cunt width of player:		[did cunt actually shrink?]
			follow the cunt descr rule;
			say " Strange [one of]erotic tingles[or]cold waves[or]hot flashes[at random] run over your [if cunts of player is greater than 1][one of]cunts[or]pussies[or]vaginas[or]clefts[at random] as they begin to shrink. They dwindle[otherwise][one of]cunt[or]pussy[or]vagina[or]cleft[at random] as it begins to shrink. It dwindles[end if] in size, becoming [descr]. ";
			if cunt length of player is less than 1 or cunt width of player is less than 1:
				say "With a sickening noise, you cease to be female all together.";
				now the cunts of the player is 0;
			otherwise:
				say "[line break]";
		if cunts of player > 1 and a random chance of 2 in 5 succeeds and "All The Things" is not listed in feats of player:
			say "An odd, wet noise has you peeking in time to see one of your [one of]cunts[or]pussies[at random] has vanished!";
			decrease cunts of player by 1;
			follow the cock descr rule;
			follow the cunt descr rule;
	otherwise if cunts of player > cunts entry and a random chance of 1 in 3 succeeds and "One Way" is not listed in feats of player and (sex entry is "Female" or sex entry is "Both" ) and "All The Things" is not listed in feats of player:
		say "An odd, wet noise has you peeking in time to see one of your [one of]cunts[or]pussies[at random] has vanished!";
		decrease cunts of player by 1;
	follow the cock descr rule;
	follow the cunt descr rule;
	now skipcockchange is false;


This is the breast change rule:
	choose row monster from the table of random critters;
	if breasts of player is not breasts entry:
		decrease breast size of player by 2;
		follow the breast descr rule;
		if ( breasts entry is greater than breasts of player and "One Pair" is not listed in feats of player ) or ( breasts of player is 0 and breasts entry > 0 ):
			say " Your chest tingles intensely as two new sensitive points form up, announcing the arrival of two new [descr] breasts, pressing out of your [skin of player] hide.";
			increase breasts of player by 2;
		otherwise if breasts entry < breasts of player and "Bouncy Bouncy" is not listed in feats of player:
			decrease breasts of player by 2;
			say " You look down just in time to see two nipples, [descr] breasts included, be reabsorbed into your body, leaving nothing but [skin of player] flesh behind.";
		increase breast size of player by 2;
	if breasts of player is 0:
		increase score by 0;		[do nothing]
	otherwise if the sex entry is "Female" or the sex entry is "Both":
		if breast size of player < breast size entry and ( ( "Male Preferred" is not listed in feats of player and "Flat Chested" is not listed in feats of player ) or "Breasts" is listed in feats of player ):
			follow the breast descr rule;
			let oldbreast be descr;
			say "You [one of]groan and grab at your chest[or]give a loud moan, shuddering[or]almost tip forward in surprise[or]look down fearfully as sensation builds[at random], [skin of player] skin glistening as your [oldbreast] breasts[run paragraph on]";
			increase breast size of player by 1;
			increase breast size of player by ( breast size entry minus breast size of player ) divided by 3;
			follow the breast descr rule;
			say " become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]! [run paragraph on]";
		otherwise if breast size of player > breast size entry and "One Way" is not listed in feats of player:
			follow the breast descr rule;
			let oldbreast be descr;
			say "You [one of]groan and grab at your chest[or]give a loud moan, shuddering[or]almost tip forward in surprise[or]look down fearfully as sensation builds[at random], [skin of player] skin glistening as your [oldbreast] breasts[run paragraph on]";
			decrease breast size of player by 1;
			decrease breast size of player by ( breast size of player minus breast size entry ) divided by 3;
			follow the breast descr rule;
			say " become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]! [run paragraph on]";
	otherwise if the sex entry is "Male":
		let breasttarget be male breast size entry;
		if "Breasts" is listed in feats of player:
			if male breast size entry is 0, now breasttarget is breast size entry;
		otherwise if "Male Preferred" is listed in feats of player or "Flat Chested" is listed in feats of player:
			now breasttarget is 0;
		if breast size of player < breasttarget:
			follow the breast descr rule;
			let oldbreast be descr;
			say "You [one of]groan and grab at your chest[or]give a loud moan, shuddering[or]almost tip forward in surprise[or]look down fearfully as sensation builds[at random], [skin of player] skin glistening as your [oldbreast] breasts[run paragraph on]";
			increase breast size of player by 1;
			increase breast size of player by ( breasttarget minus breast size of player ) divided by 3;
			follow the breast descr rule;
			say " become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]! [run paragraph on]";
		otherwise if breast size of player > breasttarget and "One Way" is not listed in feats of player:
			follow the breast descr rule;
			let oldbreast be descr;
			say "You [one of]groan and grab at your chest[or]give a loud moan, shuddering[or]almost tip forward in surprise[or]look down fearfully as sensation builds[at random], [skin of player] skin glistening as your [oldbreast] breasts[run paragraph on]";
			decrease breast size of player by 1;
			decrease breast size of player by ( breast size of player minus breasttarget ) divided by 3;
			follow the breast descr rule;
			say " become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]! [run paragraph on]";


To grow breasts by (x - a number):
	if "Flat Chested" is listed in feats of player or breast size of player >= 26:
		continue the action;
	follow the breast descr rule;
	let oldbreast be descr;
	say "You [one of]groan and grab at your chest[or]give a loud moan, shuddering[or]almost tip forward in surprise[or]look down fearfully as sensation builds[at random], [skin of player] skin glistening as your [oldbreast] breasts[run paragraph on]";
	increase breast size of player by a random number from 1 to x;
	if breast size of player is greater than 26, now breast size of player is 26;
	follow the breast descr rule;
	say " become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]! [run paragraph on]";


To Infect:
	choose row monster from the table of random critters;
	if there is no name entry or ( there is a non-infectious in row monster of table of random critters and non-infectious entry is true):
		continue the action;
	if ( scenario is "Researcher" or nanite collector is equipped ) and ( there is no resbypass in row monster of table of random critters or resbypass entry is false ):
		vialchance name entry;
	if scenario is "Researcher" and researchbypass is 0 and ( there is no resbypass in row monster of the table of random critters or resbypass entry is false ):
		continue the action;
	let x be a random number from 1 to 5;
	let bodyparts be { 1, 2, 3, 4, 5 };
	sort bodyparts in random order;
	let found be 0;
	repeat with y running through bodyparts:
		now x is y;
		if y is 1:
			if skinname of player is name entry:
				next;
			otherwise:
				now found is 1;
				break;
		if y is 2:
			if facename of player is name entry:
				next;
			otherwise:
				now found is 1;
				break;
		if y is 3:
			if tailname of player is name entry:
				next;
			otherwise:
				now found is 1;
				break;
		if y is 4:
			if bodyname of player is name entry:
				next;
			otherwise:
				now found is 1;
				break;
		if y is 5:
			if cockname of player is name entry:
				next;
			otherwise:
				now found is 1;
				break;
	if found is 0:
		now x is 4;
	if "Resistant" is listed in feats of player and a random chance of 1 in 3 succeeds:
		now x is 6;	[33% chance of no mutation]
		if x is 6:
			say "Your nanites['] programmed resistance to change prevents further mutation.";
			continue the action;
	if "Microwaved" is listed in feats of player:
		say "WARNING: [name entry] nanites detected!";
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
		if the player consents:
			say "Ok.";
		otherwise:
			say "You wave a tiny microwave transmitter over the affected area. Ahhh, all clean!";
			stop the action;
	if x is 1:
		if skinname of player is not name entry:
			say " Your skin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [skin change entry].";
			now skinname of player is name entry;
			now skin of player is skin entry;
	if x is 2:
		if facename of player is not name entry:
			say " Your face [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [face change entry].";
			now facename of player is name entry;
			now face of player is face entry;
	if x is 3:
		if tailname of player is not name entry:
			say " Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [ass change entry].";
			now tailname of player is name entry;
			now tail of player is tail entry;
	if x is 4:
		follow the breast change rule;
		if bodyname of player is not name entry:
			say "Your [one of][bodytype of player] [or][bodydesc of player] [or][bodydesc of player] [or][bodytype of player] [or][at random]body [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [body change entry].";
			now bodyname of player is name entry;
			now body of player is body entry;
		attributeinfect;			[sets the new attributes]
		follow the sex change rule;
		say "[line break]";
	if x is 5:
		follow the sex change rule;
		if cockname of player is not name entry:
			if cocks of player is greater than 0, say " Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [cock change entry].";
			now cockname of player is name entry;
			now cock of player is cock entry;
			if name entry is listed in infections of internallist and internalbypass is true:
				say "[italic type]...After some time, it appears that your balls re-emerge, in spite of this strain's normally internal anatomy.[roman type]";
	if "Mutable" is listed in feats of player and a random chance of 1 in 2 succeeds:		[** Repeat of above code for physical change]
		let x be a random number from 1 to 5;
		let bodyparts be { 1, 2, 3, 4, 5 };
		sort bodyparts in random order;
		repeat with y running through bodyparts:
			now x is y;
			if y is 1:
				if skinname of player is name entry:
					next;
				otherwise:
					break;
			if y is 2:
				if facename of player is name entry:
					next;
				otherwise:
					break;
			if y is 3:
				if tailname of player is name entry:
					next;
				otherwise:
					break;
			if y is 4:
				if bodyname of player is name entry:
					next;
				otherwise:
					break;
			if y is 5:
				if cockname of player is name entry:
					next;
				otherwise:
					break;
		if "Microwaved" is listed in feats of player:
			say "WARNING: [name entry] nanites detected!";
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
			if the player consents:
				say "Ok.";
			otherwise:
				say "You wave a tiny microwave transmitter over the affected area. Ahhh, all clean!";
				now x is 6;			[skips body tf, but stat change is still possible from first infection]
		if x is 1:
			if skinname of player is not name entry:
				say " Your skin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [skin change entry].";
				now skinname of player is name entry;
				now skin of player is skin entry;
		if x is 2:
			if facename of player is not name entry:
				say " Your face [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [face change entry].";
				now facename of player is name entry;
				now face of player is face entry;
		if x is 3:
			if tailname of player is not name entry:
				say " Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [ass change entry].";
				now tailname of player is name entry;
				now tail of player is tail entry;
		if x is 4:
			follow the breast change rule;
			if bodyname of player is not name entry:
				say "Your [one of][bodytype of player] [or][bodydesc of player] [or][bodydesc of player] [or][bodytype of player] [at random]body [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [body change entry].";
				now bodyname of player is name entry;
				now body of player is body entry;
			attributeinfect;			[sets the new attributes]
			follow the sex change rule;
			say "[line break]";
		if x is 5:
			follow the sex change rule;
			if cockname of player is not name entry:
				if cocks of player is greater than 0, say " Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [cock change entry].";
				now cockname of player is name entry;
				now cock of player is cock entry;		[** end of addition for 'Mutable']
				if name entry is listed in infections of internallist and internalbypass is true:
					say "[italic type]...After some time, it appears that your balls re-emerge, in spite of this strain's normally internal anatomy.[roman type]";
	now x is a random number from 1 to 6;
	if "Mighty Mutation" is not listed in feats of player:
		now x is 0;
	if x is 1:
		if strength of player is not str entry:
			if strength of player is greater than str entry and a random chance of 1 in 10 succeeds:
				if "Bestial Power" is not listed in feats of player:
					if "Mighty Mutation" is listed in feats of player and a random chance of 1 in 2 succeeds:
						now x is 0;		[do nothing placeholder]
					otherwise:
						say "Your muscles feel weaker as the infection spreads through you.";
						decrease strength of player by 1;
						decrease capacity of player by 5;
			if strength of player is less than str entry:
				say "You feel your muscles swelling with [name entry] [one of]strength[or]physique[or]power[at random].";
				increase strength of player by 1;
				increase capacity of player by 5;
	if x is 2:
		if Intelligence of player is not Int entry:
			if Intelligence of player is greater than Int entry and a random chance of 1 in 10 succeeds:
				if "Bestial Power" is not listed in feats of player:
					if "Mighty Mutation" is listed in feats of player and a random chance of 1 in 2 succeeds:
						now x is 0;		[do nothing placeholder]
					otherwise:
						say "Your head aches as the infection spreads through you.";
						decrease Intelligence of player by 1;
			if Intelligence of player is less than Int entry:
				say "You feel your mind swelling with [name entry] [one of]Intelligence[or]wit[or]complexity[at random].";
				increase Intelligence of player by 1;
	if x is 3:
		if Dexterity of player is not Dex entry:
			if Dexterity of player is greater than Dex entry and a random chance of 1 in 10 succeeds:
				if "Bestial Power" is not listed in feats of player:
					if "Mighty Mutation" is listed in feats of player and a random chance of 1 in 2 succeeds:
						now x is 0;		[do nothing placeholder]
					otherwise:
						say "Your coordination feels weaker as the infection spreads through you.";
						decrease Dexterity of player by 1;
			if Dexterity of player is less than Dex entry:
				say "You feel your hand eye coordination swelling with [name entry] [one of]Dexterity[or]physique[or]accuracy[at random].";
				increase Dexterity of player by 1;
	if x is 4:
		if Stamina of player is not Sta entry:
			if Stamina of player is greater than Sta entry and a random chance of 1 in 10 succeeds:
				if "Bestial Power" is not listed in feats of player:
					if "Mighty Mutation" is listed in feats of player and a random chance of 1 in 2 succeeds:
						now x is 0;		[do nothing placeholder]
					otherwise:
						say "Your constitution feels weaker as the infection spreads through you.";
						decrease Stamina of player by 1;
				if remainder after dividing stamina of player by 2 is 1:
					decrease maxhp of player by level of player plus 1;
			if Stamina of player is less than Sta entry:
				say "You feel your body toughening with [name entry] [one of]Stamina[or]physique[or]power[at random].";
				increase Stamina of player by 1;
				if remainder after dividing stamina of player by 2 is 0:
					increase maxhp of player by level of player plus 1;
	if x is 5:
		if Perception of player is not Per entry:
			if Perception of player is greater than Per entry and a random chance of 1 in 10 succeeds:
				if "Bestial Power" is not listed in feats of player:
					if "Mighty Mutation" is listed in feats of player and a random chance of 1 in 2 succeeds:
						now x is 0;		[do nothing placeholder]
					otherwise:
						say "Your senses dull as the infection spreads through you.";
						decrease Perception of player by 1;
			if Perception of player is less than Per entry:
				say "You feel your senses swelling with [name entry] [one of]Perception[or]aptitude[or]feral attention[at random].";
				increase Perception of player by 1;
	if x is 6:
		if Charisma of player is not Cha entry:
			if Charisma of player is greater than Cha entry and a random chance of 1 in 10 succeeds:
				if "Bestial Power" is not listed in feats of player:
					if "Mighty Mutation" is listed in feats of player and a random chance of 1 in 2 succeeds:
						now x is 0;		[do nothing placeholder]
					otherwise:
						say "You feel more isolated as the infection spreads through you.";
						decrease Charisma of player by 1;
			if Charisma of player is less than Cha entry:
				say "You feel your social sense swelling with [name entry] [one of]Charisma[or]natural charm[or]pheromones[at random].";
				increase Charisma of player by 1;
	if the libido of the player is less than libido entry:
[		say "You can't help but [one of]feel your thoughts drifting towards sex[or]notice that the attributes of [name entry] were very appealing[or]wonder if getting to know these creatures in the biblical sense would be all that bad[at random].";]
		let oldlib be libido of player;
		increase libido of player by 1;
		increase libido of player by ( libido entry minus libido of player ) divided by 3;
		if oldlib is less than 80 and libido of player is greater than 79:
			say "You now have trouble thinking of anything but sexual satisfaction![no line break][if cocks of player is 1]  Your cock is fully erect constantly and drools precum steadily.[no line break][otherwise if cocks of player > 1]  Your cocks are fully erect constantly and drool precum steadily.[no line break][end if][if cunts of player is 1]  Your cunt overflows with hot juices that run down your thighs.[no line break][otherwise if cunts of player > 1]  Your cunts overflow with hot juices that run down your thighs.[no line break][end if][line break]";
		otherwise if oldlib is less than 50 and libido of player is greater than 49:
			say "Your thoughts have sunk to almost constant depravity![no line break][if cocks of player is 1]  Your cock remains perpetually hard and leaking precum.[no line break][otherwise if cocks of player > 1]  Your cocks remain perpetually hard and leaking precum.[no line break][end if][if cunts of player is 1]  Your cunt is hot and dripping juices as your arousal builds.[no line break][otherwise if cunts of player > 1]  Your cunts are hot and dripping juices as your arousal builds.[no line break][end if][line break]";


to attributeinfect:		[sets the player values from the new attributes]
	choose row monster from the table of random critters;
	if there is a scale in row monster of the table of random critters:
		now scalevalue of player is scale entry;
	otherwise:
		now scalevalue of player is 3;
	if there is a body descriptor in row monster of the table of random critters:
		now bodydesc of player is body descriptor entry;
	otherwise:
		now bodydesc of player is name entry;
	if there is a type in row monster of the table of random critters:
		now bodytype of player is type entry;
	otherwise:
		now bodytype of player is name entry;
	if there is a nocturnal in row monster of the table of random critters:
		if nocturnal entry is true:
			now the daycycle of player is 2;		[night-preferred]
		if nocturnal entry is false:
			now the daycycle of player is 1;		[day-preferred]
	otherwise:
		now the daycycle of player is 0;			[standard]

To attributeinfect (x - text):
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is x:
			now monster is y;
			attributeinfect;
			break;


To Vialchance (x - a text):
	choose row monster from table of random critters;
	if researchbypass is 1, continue the action;
	if there is a non-infectious in row monster of table of random critters and non-infectious entry is true, continue the action;
	if there is a resbypass in row monster of table of random critters and resbypass entry is true, continue the action;
	if scenario is "Researcher" or nanite collector is equipped:
		let vialcollectible be 10 + ( 2 * intelligence of player ) + ( level of player / 2 );
		if nanitemeter is 1:
			decrease vialcollectible by 10;
			if vialcollectible > 65, now vialcollectible is 65;
		otherwise if nanitemeter is 3:
			increase vialcollectible by 10;
			if vialcollectible > 75, now vialcollectible is 75;
		otherwise:
			if vialcollectible > 70, now vialcollectible is 70;
		let vcoll be 0;
		if a random number between 1 and 100 <= vialcollectible:
			now vcoll is 1;
		otherwise if "Expert Researcher" is listed in feats of player and a random number between 1 and 100 <= vialcollectible:
			now vcoll is 1;
		if vcoll is 1:
			say "You manage to extract a vial of [special-style-1][x][roman type] nanites for study and use.";
			add x to vials of player;
			now vcoll is 0;


predestiny is a number that varies.		[use unknown]

calcnumber is a number that varies.

To get a number:
	get typed command as playerinput;
	numberfy playerinput;

to numberfy (x - a snippet):
	change  the text of the player's command to x;
	if the player's command matches "[number]":
		now calcnumber is the number understood;
	otherwise:
		now calcnumber is 0;

keychar is a text that varies.

To translate (k - a number):
	if k is 13 or k is -6:
		now keychar is "return";
	otherwise if k is 31 or k is 32:
		now keychar is " ";
	otherwise if k is 48:
		now keychar is "0";
	otherwise if k is 49:
		now keychar is "1";
	otherwise if k is 50:
		now keychar is "2";
	otherwise if k is 51:
		now keychar is "3";
	otherwise if k is 52:
		now keychar is "4";
	otherwise if k is 53:
		now keychar is "5";
	otherwise if k is 54:
		now keychar is "6";
	otherwise if k is 55:
		now keychar is "7";
	otherwise if k is 56:
		now keychar is "8";
	otherwise if k is 57:
		now keychar is "9";
	otherwise if k is 65 or k is 97:
		now keychar is "a";
	otherwise if k is 66 or k is 98:
		now keychar is "b";
	otherwise if k is 67 or k is 99:
		now keychar is "c";
	otherwise if k is 68 or k is 100:
		now keychar is "D";
	otherwise if k is 69 or k is 101:
		now keychar is "E";
	otherwise if k is 70 or k is 102:
		now keychar is "F";
	otherwise if k is 71 or k is 103:
		now keychar is "G";
	otherwise if k is 72 or k is 104:
		now keychar is "H";
	otherwise if k is 73 or k is 105:
		now keychar is "I";
	otherwise if k is 74 or k is 106:
		now keychar is "J";
	otherwise if k is 75 or k is 107:
		now keychar is "K";
	otherwise if k is 76 or k is 108:
		now keychar is "L";
	otherwise if k is 77 or k is 109:
		now keychar is "M";
	otherwise if k is 78 or k is 110:
		now keychar is "N";
	otherwise if k is 79 or k is 111:
		now keychar is "O";
	otherwise if k is 80 or k is 112:
		now keychar is "P";
	otherwise if k is 81 or k is 113:
		now keychar is "Q";
	otherwise if k is 82 or k is 114:
		now keychar is "R";
	otherwise if k is 83 or k is 115:
		now keychar is "S";
	otherwise if k is 84 or k is 116:
		now keychar is "T";
	otherwise if k is 85 or k is 117:
		now keychar is "U";
	otherwise if k is 86 or k is 118:
		now keychar is "V";
	otherwise if k is 87 or k is 119:
		now keychar is "W";
	otherwise if k is 88 or k is 120:
		now keychar is "X";
	otherwise if k is 89 or k is 121:
		now keychar is "Y";
	otherwise if k is 90 or k is 122:
		now keychar is "Z";
	otherwise:
		now keychar is "INVALID";


to Pet level up:
	if companion of player is nullpet:
		increase score by 0;
	otherwise:
		increase level of companion of player by 1;
		decrease xp of companion of player by ( level of companion of player minus 1 ) times 10;
		if "Good Teacher" is listed in feats of player:
			increase xp of companion of player by ( level of companion of player minus 1 ) times 4;
		say "Your [companion of player] has gained level [level of companion of player]! Congratulations!";
		if remainder after dividing level of companion of player by 3 is 0:
			increase weapon damage of companion of player by 1;
		if remainder after dividing level of companion of player by 5 is 0:
			increase dexterity of companion of player by 1;

To level up:
	increase level of player by 1;
	decrease xp of player by level of player times 10;
	if "Fast Learner" is listed in feats of player:
		increase xp of player by ( level of player times 2 );
	say "You have gained level [level of player]! Congratulations!";
	if remainder after dividing level of player by 2 is 0:
		say "Current stats:[line break]";
		say "Strength: [strength of player], Dexterity: [dexterity of player], Stamina: [stamina of player], Charisma: [Charisma of player], Perception: [perception of player], Intelligence: [intelligence of player].";
		say "Pick a stat to increase.";
		say "[link]1 - Strength[as]1[end link][line break]";
		say "[link]2 - Dexterity[as]2[end link][line break]";
		say "[link]3 - Stamina[as]3[end link][line break]";
		say "[link]4 - Charisma[as]4[end link][line break]";
		say "[link]5 - Perception[as]5[end link][line break]";
		say "[link]6 - Intelligence[as]6[end link][line break]";
		say "[link]7 - Random[as]7[end link][line break]";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 7:
			say "Choice? (1-7)>[run paragraph on]";
			get a number;
		if calcnumber is 7:
			now calcnumber is a random number between 1 and 6;
		if calcnumber is 1:
			increase strength of player by 1;
			increase capacity of player by 5;
			say "Your strength grows.";
		otherwise if calcnumber is 2:
			increase dexterity of player by 1;
			say "Your dexterity grows.";
		otherwise if calcnumber is 3:
			increase Stamina of player by 1;
			say "Your stamina grows.";
		otherwise if calcnumber is 4:
			increase charisma of player by 1;
			say "Your charisma grows.";
		otherwise if calcnumber is 5:
			increase perception of player by 1;
			say "Your perception grows.";
		otherwise if calcnumber is 6:
			increase intelligence of player by 1;
			say "Your intelligence grows.";
	otherwise:
		increase ssstash by 1;
	increase maxhp of player by ( stamina of player minus 10 ) divided by 2;
	increase maxhp of player by 2;
	now hp of player is maxhp of player;
	if the remainder after dividing level of the player by 5 is 0 and "Ultimatum" is not listed in feats of player:
		funfeatget;
	increase score by level of the player times level of the player;

Before combat is a number that varies.

To fight:
	now monster is a random number from 1 to number of filled rows in the table of random critters;
	let Q be a list of numbers;
	if ( bodyname of player is "Mental Mouse" or mousecurse is 1 ) and mouse girl is not tamed:		[hunted by the mouse collective]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Mental Mouse":
				add y to q;
				add y to q;
				if "Like Attracts Like" is listed in feats of player:
					add y to q;
				if humanity of player < 85:
					repeat with x running from 1 to ( ( 100 - humanity of player ) / 16 ):
						add y to q;
				break;
	if insectlarva is true and larvaegg is 1 and gestation of child is 0:		[hunted by wasp hive anywhere outdoors]
		if battleground is not "Mall" and battleground is not "Stables" and battleground is not "Hospital" and battleground is not "Museum" and battleground is not "Sealed":
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Black Wasp":
					add y to q;
					if "Like Attracts Like" is listed in feats of player:
						add y to q;
					if libido of player > 30:
						repeat with x running from 1 to ( libido of player / 30 ):
							add y to q;
					if larvacounter > 3:
						repeat with x running from 1 to ( larvacounter / 3 ):
							add y to q;
					break;
	repeat with X running from 1 to number of filled rows in table of random critters:
		choose row X from the table of random critters;
		if there is a lev entry:
			if lev entry is greater than level of player plus levelwindow and hardmode is false:
				next;
		otherwise:
			next;
		if there is no area entry, next;
[		if area entry is "Everywhere":		[***]
			if there is a nocturnal in row X of table of random critters:
				if (nocturnal entry is true and daytimer is day) or (nocturnal entry is false and daytimer is night), next;
			add x to q;
			if "Like Attracts Like" is listed in the feats of the player:
				if bodyname of player is name entry, add x to q;
				if facename of player is name entry, add x to q;
				if skinname of player is name entry, add x to q;
				if tailname of player is name entry, add x to q;
				if cockname of player is name entry, add x to q;	]
		if area entry matches the text battleground:
			if there is a nocturnal in row X of table of random critters:
				if (nocturnal entry is true and daytimer is day) or (nocturnal entry is false and daytimer is night):
					next;		[skips if day/night doesn't match]
			let skipit be 0;
			repeat with s running through warded flags:
				if name entry is listed in infections of s:
					now skipit is 1;
					break;
			if skipit is 1, next;
			add x to q;
			if "Like Attracts Like" is listed in the feats of the player:
				if bodyname of player is name entry, add x to q;
				if facename of player is name entry, add x to q;
				if skinname of player is name entry, add x to q;
				if tailname of player is name entry, add x to q;
				if cockname of player is name entry, add x to q;
	if the number of entries in q is not 0:
		sort Q in random order;
		repeat with Z running through q:
			now monster is Z;
			break;
		choose row monster from the table of random critters;
		prepforfight;
		if "Experienced Scout" is listed in feats of player and a random chance of 2 in 10 succeeds and combat abort is not 1 and inasituation is false:
			say "You notice an avenue of escape! Do you want to abort the combat?";
			if the player consents:
				now combat abort is 1;
				say "You slip away before [name entry] can begin their assault.";
		if combat abort is 1:
			now combat abort is 0;
			rule succeeds;
			continue the action;
		let bonus be ( perception of player minus 10 ) divided by 2;
		decrease bonus by ( dex entry minus 10 ) divided by 2;
		increase bonus by a random number from 1 to 20;
		if bonus is less than 6:
			if "Wary Watcher" is listed in feats of player:
				say "The creature is about to get the drop on you, but your vigilance spots it just in time!  You ready yourself for battle.";
			otherwise:
				say "The creature gets the drop on you!";
				follow the monster combat mode rule;		[select the combat mode for first-strike]
				choose row monstercom from table of Critter Combat;
				if there is a continuous in row monstercom of the table of Critter Combat:
					follow the continuous entry;
				follow the combat entry;
				if hp of player is less than 1 or lost is 1, stop the action;
		choose row monster from table of random critters;
		if weapon object of player is ranged:
			now bonus is ( perception of player minus 10 ) divided by 2;
			decrease bonus by ( dex entry minus 10 ) divided by 2;
			increase bonus by a random number from 1 to 20;
			if bonus is greater than 15:
				say "You manage to fire your [weapon object of player] quickly before the melee can begin!";
				now before combat is 1;
				follow the player attack rule;
				now before combat is 0;
		wait for any key;
		Combat Menu;
		now inafight is 0;
		let needed be 0;
		if player is fastlearning:
			let needed be (level of player plus 1) times 8;
		otherwise:
			let needed be (level of player plus 1) times 10;
		if xp of player >= needed and humanity of player > 0:
			level up;
		now needed is ( level of companion of player ) times 10;
		if "Good Teacher" is listed in feats of player:
			now needed is ( level of companion of player ) times 6;
		if xp of companion of player >= needed and level of companion of player is less than level of player and humanity of player > 0 and player is not lonely:
			pet level up;
	rule succeeds;

To challenge:
	choose row monster from the table of random critters;
	prepforfight;
	if combat abort is 1:
		now combat abort is 0;
		rule succeeds;
		stop the action;
	wait for any key;
	Combat Menu;
	now inafight is 0;
	let needed be 0;
	if player is fastlearning:
		let needed be (level of player plus 1) times 8;
	otherwise:
		let needed be (level of player plus 1) times 10;
	if xp of player >= needed and humanity of player > 0:
		level up;
	now needed is ( level of companion of player ) times 10;
	if "Good Teacher" is listed in feats of player:
		now needed is ( level of companion of player ) times 6;
	if xp of companion of player >= needed and level of companion of player is less than level of player and humanity of player > 0 and player is not lonely:
		pet level up;
	rule succeeds;

to hardmodeboost:			[Controls level boosting for hard mode, runs BEFORE any internal creature adjustments]
	let debit be 0;
	choose row monster from the table of random critters;
	if lev entry is less than level of player and hardmode is true:
		now debit is ( level of player ) - lev entry;
		increase lev entry by debit;
		increase hp entry by debit * 4;
		repeat with D running from 1 to debit:
			if remainder after dividing ( lev entry + 1 - D ) by 3 is 0, increase wdam entry by 1;
			[This provides + 1 dmg to the creature for every time it reaches a level divisible by 3 ABOVE its base level]
			[This keeps the damage level of lower monsters more sane as they progress to match higher monsters]
		repeat with D running from 1 to debit:
			if remainder after dividing ( lev entry + 1 - D ) by 5 is 0, increase dex entry by 1;
			[This provides + 1 dex to the creature for every time it reaches a level divisible by 5 ABOVE its base level]
			[This equates to a player putting only two of his points into Dex for every 10 levels to keep pace with them]

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
	now dexterity of player is 1;
	now stamina of player is 1;
	now perception of player is 18;
	say "You feel puny, but perceptive.";

Resting is an action applying to nothing.
understand "Rest" as resting.
roughing is a truth state that varies.  roughing is usually false.

check resting:
	now roughing is false;
	if caffeinehigh of player > 0:
		say "You try to settle down to rest, but you are filled with manic, hyperactive energy and unable to rest.  Your body just won't settle down and any time to try to relax, you find yourself only thinking of going out and looking for more soda to drink.";
		stop the action;
	if location of player is PALOMINO or location of player is Private Booths:
		say "Why are you even trying to sleep here?  Everyone's partying like it's the end of the world.";
		stop the action;
	if cot is owned:
		say "You pull out your cot and lay it out before resting for a while.";
	otherwise if cot is present:
		say "You rest on the cot.";
	otherwise if the player is in the bunker:
		say "You rest on one of the cots available.";
	otherwise if the player is in Slave Cell 1 or player is in Slave Cell 2:
		say "You rest on the bed in the back of the cell.";
	otherwise if silk hammock is owned or silk hammock is present:
		say "You set up your silken hammock at the next appropriate spot and lie in it, resting for a while.";
	otherwise if "Roughing It" is listed in feats of player:
		say "You hunker down somewhere secluded for a quick nap.";
		now roughing is true;
	otherwise:
		say "You have nothing to rest on.";
		stop the action;
	if companion of player is not rubber tigress:
		if ( there is a dangerous door in the location of the player or the location of player is fasttravel ) and location of player is not sleepsafe:
			let l be a random visible dangerous door;
			if l is not nothing, now battleground is the marea of l;
			if l is nothing, now battleground is "Outside";	[***]
			say "...";
			attempttowait;
			let intodds be 3;
			if "Bad Luck" is listed in feats of player, increase intodds by 1;
			if a random chance of intodds in 20 succeeds:
				say "...but your nap is interrupted by the arrival of a creature.";
				fight;
				stop the action;
			otherwise:
				say "...and you thankfully complete your nap in peace.";
		otherwise if roughing is true:
			say "You are thankfully able to complete your nap in peace.";

[  --old version - to be removed--
	if cot is owned:
		say "You pull out your cot and lay it out before resting for a while.";
		continue the action;
	otherwise if cot is present:
		say "You rest on the cot.";
		continue the action;
	otherwise if the player is in the bunker:
		say "You rest on one of the cots available.";
		continue the action;
	otherwise if "Roughing It" is listed in feats of player:
		say "You hunker down somewhere secluded for a quick nap...";
		if there is a dangerous door in the location of the player:
			if a random chance of 3 in 20 succeeds:
				say "...but your nap is interrupted by the arrival of a creature.";
				fight;
				stop the action;
			otherwise:
				say "...and you complete your nap in peace.";
				continue the action;
		otherwise:
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			say "...and you complete your nap in peace.";
			continue the action;
	say "You have nothing to rest on.";
	stop the action;
]

carry out resting:
	if companion of player is rubber tigress:
		artemisnap;
		if nohealmode is true:
			increase hp of player by (level of rubber tigress) / 3;	[grants additional rest]
		otherwise:
			increase hp of player by (level of rubber tigress) / 2;	[grants additional rest]
	Rest;
	follow the turnpass rule;
	follow the player injury rule;
	say "You are [descr]([hp of player]/[maxhp of player]).";

To Rest:
	let num1 be maxhp of the player divided by 4;
	let num2 be ( ( stamina of the player * 3 ) / 2 ) + level of the player;
	if cot is owned or cot is present or the player is in the Bunker or silk hammock is owned or silk hammock is present:
		if num1 >= num2, increase hp of player by num1;		[best value chosen]
		if num2 > num1, increase hp of player by num2;
	otherwise if "Roughing It" is listed in feats of player:
		increase hp of player by ( num1 + num2 ) / 2;		[average value chosen]
	otherwise:		[accessible only when events induce resting]
		if num1 <= num2, increase hp of player by num1;		[lowest value chosen]
		if num2 < num1, increase hp of player by num2;


This is the explore rule:
	let something be 0;
	let roomfirst be 1;
	let the bonus be (( the perception of the player minus 10 ) divided by 2);
	if "Curious" is listed in feats of player, increase bonus by 3;
	if blindmode is true, increase bonus by 3;		[increased odds of finding something interesting]
	if a random chance of 2 in 5 succeeds, now roomfirst is 0;		[Will it check for a room or situation first?]
	if something is 0 and a random number from 1 to 20 is less than ( bonus + 7 ) and there is an unknown fasttravel room and battleground is "Outside" and roomfirst is 1:
		let L be a random unknown fasttravel not private room;
		if L is not nothing:
			randomfightchance;
			say "[one of]After wandering aimlessly for hours, you happen across[or]Following your faint memories, you manage to find[or]Following movement, you end up at[or]Going off towards a previously unexplored part of the city, you find yourself at[at random] [L].";
			move player to L;
			now something is 1;
			plot;
			now battleground is "void";
			wait for any key;
	if something is 0 and a random number from 1 to 20 is less than ( bonus + 8 ) and there is an unresolved situation:
		let L be a random available situation;
		If L is not nothing:
			say "[one of]After wandering aimlessly for hours, you happen across[or]Following your faint memories, you manage to find[or]Following movement, you end up at[at random] [L].";
			now something is 1;
			now inasituation is true;
			try resolving L;
			now inasituation is false;
			wait for any key;
	now inasituation is false;
	if something is 0 and a random number from 1 to 20 is less than ( bonus + 7 ) and there is an unknown fasttravel room and battleground is "Outside" and roomfirst is 0:
		let L be a random unknown fasttravel not private room;
		if L is not nothing:
			randomfightchance;
			say "[one of]After wandering aimlessly for hours, you happen across[or]Following your faint memories, you manage to find[or]Following movement, you end up at[or]Going off towards a previously unexplored part of the city, you find yourself at[at random] [L].";
			move player to L;
			now something is 1;
			plot;
			now battleground is "void";
			wait for any key;
	if "Stealthy" is listed in feats of player, decrease bonus by 2 plus (( the perception of the player minus 10 ) divided by 2);
	if "Bad Luck" is listed in feats of player, increase bonus by 1;
	if something is 1 and blindmode is true, decrease bonus by 3;	[already found something, so normal chance of a critter]
	if a random number from 1 to 20 is less than 10 plus bonus and battleground is not "void":
		if there is a area of Battleground in the table of random critters:
			now something is 1;
			Fight;
			if ( ( hardmode is true and a random chance of 1 in 8 succeeds ) or ( "Bad Luck" is listed in feats of player and a random chance of 1 in 8 succeeds ) ) and battleground is not "void":
				say "As you are trying to recover from your last encounter, another roving creature finds you.";
				Fight;
	if something is 0, say "You decide to go exploring, but after three long hours of wandering the ruined, monster infested city you return to the relative safety of the [location of the player].";
	follow the turnpass rule;
[	wait for any key;
	now the menu depth is 0;]
	[try looking;]
	rule succeeds.

exploring is an action applying to nothing.
understand "explore" as exploring

check exploring:
	if location of player is not fasttravel, say "You can not explore from here." instead;

carry out exploring:
	let l be a random visible dangerous door;
	if l is not nothing, now battleground is the marea of l;
	if l is nothing, now battleground is "Outside";	[***]
	follow the explore rule;

to randomfightchance:
	let the bonus be (( the perception of the player minus 10 ) divided by 2);
	if "Stealthy" is listed in feats of player, now bonus is -1;
	if "Curious" is listed in feats of player, increase bonus by 2;
	if "Bad Luck" is listed in feats of player, increase bonus by 1;
	if a random number from 1 to 20 is less than 10 plus bonus and battleground is not "void":
		if there is a area of Battleground in the table of random critters:
			Fight;
			if ( ( hardmode is true and a random chance of 1 in 8 succeeds ) or ( "Bad Luck" is listed in feats of player and a random chance of 1 in 8 succeeds ) ) and battleground is not "void":
				say "As you are trying to recover from your last encounter, another roving creature finds you.";
				Fight;

to huntingfightchance:
	let the bonus be (( the perception of the player minus 10 ) divided by 2);
	if "Stealthy" is listed in feats of player, now bonus is -1;
	if "Curious" is listed in feats of player, increase bonus by 2;
	if "Bad Luck" is listed in feats of player, increase bonus by 1;
	if a random number from 1 to 20 is less than 7 plus bonus and battleground is not "void":
		if there is a area of Battleground in the table of random critters:
			Fight;
			if ( ( hardmode is true and a random chance of 1 in 8 succeeds ) or ( "Bad Luck" is listed in feats of player and a random chance of 1 in 8 succeeds ) ) and battleground is not "void":
				say "As you are trying to recover from your last encounter, another roving creature finds you.";
				Fight;

restoration is a number that varies.
balloversize is a number that varies.
skipturnblocker is a number that varies.
mpregcount is a number that varies.

Everyturn rules is a rulebook.

This is the turnpass rule:
	follow the cock descr rule;
	if "Sanity Saver" is listed in the feats of the player:
		now humanity of the player is 100;
	follow the cunt descr rule;
	follow the breast descr rule;
	now fightstatus is 0;
	now looknow is 0;
	now ishunting is false;
	now showlocale is true;
	if hp of Velos > 2:
		if Velos is not in the location of the player:		[travelling w/player]
			Now Velos is in the location of the player;
	if breast size of player is greater than 26, now breast size of player is 26;
	let oldlib be libido of player;
	if libido of player is less than 100 and "Horny Bastard" is listed in feats of player:
		increase libido of player by square root of ( 55 - ( libido of player / 2 ) );
		if libido of player > 100, now libido of player is 100;
	if libido of player is greater than 20 and "Cold Fish" is listed in feats of player and libido of player < 100:
		decrease libido of player by square root of ( libido of player - 15 );
	if oldlib is less than 80 and libido of player is greater than 79:
		say "You now have trouble thinking of anything but sexual satisfaction![no line break][if cocks of player is 1]  Your cock is fully erect constantly and drools precum steadily.[no line break][otherwise if cocks of player > 1]  Your cocks are fully erect constantly and drool precum steadily.[no line break][end if][if cunts of player is 1]  Your cunt overflows with hot juices that run down your thighs.[no line break][otherwise if cunts of player > 1]  Your cunts overflow with hot juices that run down your thighs.[no line break][end if][line break]";
	otherwise if oldlib is less than 50 and libido of player is greater than 49:
		say "Your thoughts have sunk to almost constant depravity![no line break][if cocks of player is 1]  Your cock remains perpetually hard and leaking precum.[no line break][otherwise if cocks of player > 1]  Your cocks remain perpetually hard and leaking precum.[no line break][end if][if cunts of player is 1]  Your cunt is hot and dripping juices as your arousal builds.[no line break][otherwise if cunts of player > 1]  Your cunts are hot and dripping juices as your arousal builds.[no line break][end if][line break]";
	if the hunger of player is less than 0, now the hunger of player is 0;
	if the thirst of player is less than 0, now the thirst of player is 0;
	if the hp of the player is less than the maxhp of the player and nohealmode is false:
		increase the hp of the player by the stamina of the player divided by 2;
		if carried of First Aid Manual > 0, increase hp of player by 1;
	if "Regeneration" is listed in feats of player:
		increase the hp of the player by (level of player divided by 3);
	if "Rapid Healing" is listed in feats of player:
		increase the hp of the player by 2;
[	let yy be 4;
	if "Resistant" is listed in feats of player, increase yy by 2;
	if "Mutable" is listed in feats of player, decrease yy by 1;
	now yy is 1;	]
	let yy be 1;
	if "Singular" is listed in feats of player and a random chance of 1 in yy succeeds:
		let z be 0;
		if facename of player is bodyname of player:
			now z is z;
		otherwise:
			now z is 1;
		if tailname of player is bodyname of player:
			now z is z;
		otherwise:
			now z is 1;
		if skinname of player is bodyname of player:
			now z is z;
		otherwise:
			now z is 1;
		if cockname of player is bodyname of player:
			now z is z;
		otherwise:
			now z is 1;
		if bodyname of player is "human" or ( shiftable is 2 and humanity of player > 49 ):		[blocked for humans and active shifters]
			now z is 0;
		if z is 1:
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y from the table of random critters;
				if name entry is bodyname of player:
					if ( there is no resbypass in row monster of table of random critters or resbypass entry is false ) and ( there is no non-infectious in row monster of table of random critters or non-infectious entry is false ):
						now monster is y;
						say "You can feel the nanites inside you working voraciously to convert your flesh to one whole form.";
						now researchbypass is 1;
						infect;
						now researchbypass is 0;
					break;
	if "Passing Grade Chest" is listed in feats of player and breast size of player is greater than 4:
		now breast size of player is 4;
		say "You feel the pressure in your chest suddenly abate with a rush of relief.";
	if "Always Cocky" is listed in feats of player and cocks of player is 0:
		now cocks of player is 1;
		now cock length of player is 5;
		now cock width of player is 3;
		say "You feel a pressure at your groin that soon bursts forth as a brand new cock.  This [cock of player] shaft spurts and dribbles with cum from its orgasmic formation.";
	otherwise if "Always A Pussy" is listed in feats of player and cunts of player is 0:
		now cunts of player is 1;
		now cunt length of player is 5;
		now cunt width of player is 3;
		say "You feel a tingling dampness at your groin that soon turns into a wet gush of fluids as your flesh splits open into a brand new pussy.  This dripping cunny with sopping with feminine juices from its orgasmic formation.";
	if balloversize is 0:
		if ( scalevalue of player is 1 or scalevalue of player is 2 ) and cock width of player >= 25:
			if cockname of player is not "Tanuki" and player is not internal:
				decrease Dexterity of player by 1 + (dexterity of player / 10 );
				now balloversize is 1 + (dexterity of player / 10 );
				say "     Your balls, so huge when compared to your [body size of player] frame, are so big and heavy that it's difficult to drag them around, hindering your ability to move around somewhat.";
		otherwise if ( scalevalue of player is 3 or scalevalue of player is 4 ) and cock width of player >= 32:
			if cockname of player is not "Tanuki" and player is not internal:
				decrease Dexterity of player by 1 + (dexterity of player / 10 );
				now balloversize is 1 + (dexterity of player / 10 );
				say "     Your balls, so huge they hang to the ground, are so big and heavy that it's difficult to drag them around, hindering your ability to move around somewhat.";
		otherwise if cock width of player >= 40:
			if cockname of player is not "Tanuki" and player is not internal:
				decrease Dexterity of player by 1 + (dexterity of player / 10 );
				now balloversize is 1 + (dexterity of player / 10 );
				say "     Your balls, so huge even when compared to your huge frame, are so massive and heavy that it's difficult to drag them around, hindering your ability to move around somewhat.";
	otherwise:
		if ( ( scalevalue of player is 1 or scalevalue of player is 2 ) and cock width of player < 25 ) or ( ( scalevalue of player is 3 or scalevalue of player is 4 ) and cock width of player < 32 ) or ( cock width of player < 40 ):
			increase dexterity of player by balloversize;
			now balloversize is 0;
			say "     Your balls, no longer quite so huge compared to your [if scalevalue of player is not 3][body size of player] [end if]body, no longer hinder you.  Your legs definitely feel better for not having to drag them around anymore.";
		otherwise if cockname of player is "Tanuki":
			increase dexterity of player by balloversize;
			now balloversize is 0;
			say "     Your mystical, Tanuki nature allows you to carry your oversize balls with ease, no longer hindered by their massive size.";
		otherwise if player is internal:
			increase dexterity of player by balloversize;
			now balloversize is 0;
			say "     Your massive balls, having become internalized, no longer hinder your movement quite so much.  You can still feel them there, heavily resting inside you, but they're no longer in the way at least.";
	follow the check heat rule;
	if libido of player >= 99 and humanity of player > 0 and skipturnblocker is 0:
		say "[spontaneousorgasm]";
		decrease humanity of player by a random number between 1 and 2;
		if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 1;
		now libido of player is 75;
		if "Horny Bastard" is listed in feats of player, now libido of player is 80;
		if "Cold Fish" is listed in feats of player, now libido of player is 60;
	if the hp of the player is greater than the maxhp of the player, now the hp of the player is the maxhp of the player;
	if the hp of the player < 0, now the hp of the player is 1;
	if ( a random number from 1 to 20 ) > ( a random number between 1 and ( stamina of player + 1 ) ):
		increase hunger of player by 1;
		if number of entries in childrenfaces is greater than 0 and a random chance of 1 in 2 succeeds, increase hunger of player by 1;
		if "Spartan Diet" is listed in feats of player and a random chance of 1 in 2 succeeds, decrease hunger of player by 1;
	if "Vore Predator" is listed in feats of player:
		increase hunger of player by a random number between 1 and 5;
		if "Spartan Diet" is listed in feats of player and a random chance of 1 in 2 succeeds, decrease hunger of player by 1;
	if a random number from 1 to 25 is greater than ( a random number between 1 and ( stamina of player + 1 ) ):
		increase thirst of player by 3;
		if number of entries in childrenfaces is greater than 0, increase thirst of player by 1;
		if "Spartan Diet" is listed in feats of player, decrease thirst of player by 1;
	if "Automatic Survival" is listed in feats of player:
		now thirst of player is 0;
		now hunger of player is 0;
	if the remainder after dividing turns by 3 is 0:
		if "Perky" is listed in feats of player:
			increase morale of player by 1;
		now restoration is 0;
		if "Physical Booster" is listed in feats of player and wrcursestatus is not 5:
			if Strength of player < 14 and a random chance of 1 in 2 succeeds and restoration is 0:
				increase Strength of player by 1;
				increase capacity of player by 5;
				increase hunger of player by 6;
				say "Your body strives to restore its lost might and rebuilds your muscles.  Your stomach grumbles with hunger at this sudden effort.  [bold type]Strength increased by 1.[roman type][line break]";
				now restoration is 1;
			if Stamina of player < 14 and a random chance of 1 in 2 succeeds and restoration is 0:
				increase Stamina of player by 1;
				if remainder after dividing stamina of player by 2 is 0:
					increase maxhp of player by level of player plus 1;
				increase hunger of player by 6;
				say "Your body strives to restore its lost hardiness and toughens your body.  Your stomach grumbles with hunger at this sudden effort.  [bold type]Stamina increased by 1.[roman type][line break]";
				now restoration is 1;
			if Dexterity of player < 14 and a random chance of 1 in 2 succeeds and restoration is 0:
				increase Dexterity of player by 1;
				increase hunger of player by 6;
				say "Your body strives to regain its lost agility and restores your flexibility.  Your stomach grumbles with hunger at this sudden effort.  [bold type]Dexterity increased by 1.[roman type][line break]";
				now restoration is 1;
		if "Mental Booster" is listed in feats of player and wrcursestatus is not 5:
			if Intelligence of player < 14 and a random chance of 1 in 2 succeeds and restoration is 0:
				increase Intelligence of player by 1;
				increase hunger of player by 3;
				increase thirst of player by 5;
				say "Your body strives to restore your mental functions.  You stomach churns and you sweat profusely from the effort of this process.  [bold type]Intelligence increased by 1.[roman type][line break]";
				now restoration is 1;
			if Charisma of player < 14 and a random chance of 1 in 2 succeeds and restoration is 0:
				increase Charisma of player by 1;
				increase hunger of player by 3;
				increase thirst of player by 5;
				now restoration is 1;
				say "Your body strives to restore your natural charm and allure.  You stomach churns and you sweat profusely from the effort of this process.  [bold type]Charisma increased by 1.[roman type][line break]";
				now restoration is 1;
			if Perception of player < 14 and a random chance of 1 in 2 succeeds and restoration is 0:
				increase Perception of player by 1;
				increase hunger of player by 3;
				increase thirst of player by 5;
				say "Your body strives to restore your enhance perceptive abilities.  You stomach churns and you sweat profusely from the effort of this process.  [bold type]Perception increased by 1.[roman type][line break]";
				now restoration is 1;
		if hunger of player is greater than 90:
			say "You will die if you don't eat soon.";
		otherwise if hunger of player is greater than 50:
			say "Your stomach feels like a black hole of pain.";
		otherwise if hunger of player is greater than 30:
			say "You're famished.";
		otherwise if hunger of player is greater than 3:
			say "You feel a little hungry.";
		if hunger of player is greater than 30:
			decrease the morale of the player by ( hunger of the player minus 30 ) divided by 5;
		if hunger of player is greater than 99:
			now hp of player is -9999;
			end the story saying "You have died of hunger.";
		if thirst of player is greater than 90:
			say "You will die if you don't drink something soon.";
		otherwise if thirst of player is greater than 50:
			say "Your throat is parched and your lips cracking.";
		otherwise if thirst of player is greater than 30:
			say "You're really thirsty!";
		otherwise if thirst of player is greater than 12:
			say "You feel a little thirsty.";
		if thirst of player is greater than 30:
			decrease the morale of the player by ( thirst of the player minus 30 ) divided by 5;
		if thirst of player is greater than 99:
			now hp of player is -9999;
			end the story saying "You have died of thirst.";
		if hunger of player is greater than 50 or thirst of player is greater than 50:
			say "Maybe you should [bold type]scavenge[roman type] for food! Go to a quick travel location and find something quick.";
		let maxmorale be ( the charisma of the player plus the perception of the player );
		let moralereset be ( maxmorale plus the level of the player );
		if "Perky" is listed in feats of player:
			increase moralereset by ( moralereset divided by 5);
			increase maxmorale by ( maxmorale divided by 5);
		if "Proud Parent" is listed in feats of player:
			let SP be sarahpups / 5;
			if SP > 20, now SP is 20;
			increase moralereset by SP;
			increase maxmorale by SP;
		otherwise if the morale of the player is greater than moralereset:
			say "The rush of giddiness leaves you as your morale normalizes, leaving you feeling confident but no longer manic.";
			now the morale of the player is maxmorale;
	let corruption be 0;
	if the skinname of the player is not "human", increase corruption by a random number from 0 to 1;
	if the cockname of the player is not "human", increase corruption by a random number from 0 to 1;
	if the bodyname of the player is not "human", increase corruption by a random number from 0 to 1;
	if the tailname of the player is not "human", increase corruption by a random number from 0 to 1;
	if the facename of the player is not "human", increase corruption by a random number from 0 to 1;
	if corruption is greater than 0:
		if "Weak Psyche" is listed in feats of player:
			increase corruption by a random number from 0 to 1;
			increase corruption by a random number from 0 to 1;
		if "Strong Psyche" is listed in feats of player:
			decrease corruption by a random number from 0 to 2;
		decrease corruption by a random number from 0 to ( ( Perception of the player minus 10) divided by 2 );
		decrease corruption by a random number from 0 to ( ( Charisma of the player minus 10) divided by 2 );
	if corruption is greater than 0:
		decrease the humanity of the player by corruption;
		follow the brain descr rule;
		say "The nanites inside you work at rewiring your stubborn brain, leaving you with [descr] ([humanity of the player]/100)[line break]";
		if humanity of the player is less than 50:
			say "Maybe you should [bold type]use[roman type] that [bold type]journal[roman type] to help collect your thoughts.";
	pregprotocol; [Moved to pregnancy in core mechanics]
	if the humanity of the player is less than 1 and Scenario is not "Researcher" and skipturnblocker is 0:
		end the story saying "Your mind is lost to the infection.";
	if the humanity of the player < 1 and scenario is "Researcher", now humanity of player is 1;
	decrease turns by 1;
	if ( turns minus targetturns ) <= 0 and playon is 0 and skipturnblocker is 0:
		end the story saying "You survived until the rescue came.";
	otherwise if ( turns minus targetturns ) is less than 20 and a random chance of 1 in 3 succeeds and skipturnblocker is 0 and playon is 0:
		say "[one of]You see an airplane soar overhead at jet speeds.[or]A peek from a roof shows what looks like some kind of vehicle approaching the city.[or]You have an unending sense of anticipation.[or]It's all coming to a close soon, just hang in there![at random]";
	follow the everyturn rules;
	rule succeeds;

to say spontaneousorgasm:
	if cocks of player > 0 and cunts of player > 0:
		say "     Your groin, overflowing with unsatisfied lustful needs, erupts spontaneously that knocks you to your knees.  Your [if cocks of player is 1]cock sprays[otherwise]cocks spray[end if] your hot seed across your clothes and the ground while your hot, feminine juices soak your thighs.  You leave a [if cock width of player + ( 2 * cunt width of player ) < 18]messy splotch[otherwise if cock width of player + ( 2 * cunt width of player ) < 25]messy puddle[otherwise]large puddle[end if] of sexual fluids behind from your outburst, feeling only slightly relieved.";
	otherwise if cocks of player > 0:
		say "     Your groin, overflowing with unsatisfied lustful needs, erupts spontaneously that knocks you to your knees.  Your [if cocks of player is 1]cock sprays[otherwise]cocks spray[end if] your hot seed across your clothes and the ground.  Your blasted cum leaves a [if cock width of player < 18]messy splotch[otherwise if cock width of player < 25]messy puddle[otherwise]large puddle[end if] of sexual fluids behind from your outburst, feeling only slightly relieved.";
	otherwise if cunts of player > 0:
		say "     Your groin, overflowing with unsatisfied lustful needs, erupts spontaneously that knocks you to your knees.  Your [if cunts of player is 1]cunt overflows[otherwise]cunts overflow[end if] with hot, feminine juices that soak your thighs.  You leave a [if ( 2 * cunt width of player ) < 18]messy splotch[otherwise if ( 2 * cunt width of player ) < 25]messy puddle[otherwise]large puddle[end if] of sexual fluids behind from your outburst, feeling only slightly relieved.";
	otherwise:		[neuter]
		say "     Your body, consumed with a lust it is unable to satisfy, drops to its knees and trembles with an painful, aching need.  Lacking any other means, you rub over your [bodytype of player] body until it finally passes, leaving you weak, tired and largely unsatisfied.";
		now hp of player is ( 3 * hp of player ) / 4;

This is the monster injury rule:
	choose row monster from the table of random critters;
	let per be ( monsterhp times 100 ) divided by hp entry;
	if per is less than 10:
		now descr is "[one of]on death's door[or]almost defeated[or]barely mobile[at random]";
	otherwise if per is less than 40:
		now descr is "[one of]wounded[or]bashed around[or]significantly harmed[at random]";
	otherwise if per is less than 80:
		now descr is "[one of]scuffed[or]bruised[or]still in the fight[at random]";
	otherwise:
		now descr is "[one of]healthy[or]energetic[or]largely unharmed[at random]";
	rule succeeds;

This is the player injury rule:
	let per be ( hp of the player times 100 ) divided by maxhp of the player;
	if per <= 10:
		now descr is "[if playerpoison > 0][special-style-1]poisoned[roman type] and [end if][one of]on death's door[or]almost defeated[or]barely mobile[at random]";
	otherwise if per <= 40:
		now descr is "[if playerpoison > 0][special-style-1]poisoned[roman type] and [end if][one of]wounded[or]bashed around[or]significantly harmed[at random]";
	otherwise if per <= 80:
		now descr is "[one of]scuffed[or]bruised[or]still in the fight[at random][if playerpoison > 0], but [special-style-1]poisoned[roman type]";
	otherwise:
		now descr is "[one of]healthy[or]energetic[or]largely unharmed[at random][if playerpoison > 0], but [special-style-1]poisoned[roman type]";
	rule succeeds;

This is the brain descr rule:
	if humanity of player is greater than 90:
		now descr is "[one of]clean[or]pristine[or]perfectly normal[at random][lusting]";
	otherwise if humanity of player is greater than 70:
		now descr is "[one of]lightly tainted[or]occasionally plagued with odd instinctual[at random][lusting]";
	otherwise if humanity  of player is greater than 30:
		if facename of player is not "human":
			now descr is "increasingly [facename of player] perspective[lusting]";
		otherwise if bodyname of player is not "human":
			now descr is "increasingly [bodyname of player] perspective[lusting]";
		otherwise if skinname of player is not "human":
			now descr is "increasingly [skinname of player] perspective[lusting]";
		otherwise if cockname of player is not "human":
			now descr is "increasingly [cockname of player] perspective[lusting]";
		otherwise if tailname of player is not "human":
			now descr is "increasingly [tailname of player] perspective[lusting]";
		otherwise:
			now descr is "increasingly corrupted perspective[lusting]";
	otherwise:
		now descr is "almost entirely subsumed[lusting]";
	if libido of player is less than 21, now lusting is " thoughts.";
	if libido of player is greater than 80:
		let mun be a random number from 1 to number of filled rows in table of random critters;
		now lusting is " thoughts. You are almost entirely subsumed with a random thought of [one of]fucking[or]being fucked by[at random] a [name in row monster of the table of random critters] [one of]wildly[or]slowly[or]for hours[or]forever[or]until you pass out[at random], the daydream distracting you for half an hour.";
	otherwise if libido of player is greater than 40:
		now lusting is " thoughts. You are [one of]distracted by doodling a big breasted monster[or]distracted by doodling a big cocked monster[or]distracted by taking a moment to rub at yourself[at random].";
	otherwise if libido of player is greater than 20:
		now lusting is " thoughts. You are riddled with occasionally dirty lapses.";

This is the breast descr rule:
	if breast size of player is less than 1:
		now descr is "[one of]nonexistent[or]entirely flat[or]manly[at random]";
		now sh-descr is "[one of]nonexistent[or]entirely flat[or]manly[at random]";
	otherwise if breast size of player is less than 3:
		now descr is "[one of]palmable[or]small[or]dainty[or]slender[or]perky[at random] [character number breast size of player in cupsize] cup";
		now sh-descr is "[one of]palmable[or]small[or]dainty[or]slender[or]perky[at random]";
	otherwise if breast size of player is 3:
		now descr is "[character number breast size of player in cupsize] cup";
		now sh-descr is "[one of]reasonably-sized[or]average[or]moderate[at random]";
	otherwise if breast size of player is 4:
		now descr is "[character number breast size of player in cupsize] cup";
		now sh-descr is "[one of]eye-catching[or]substantive[or]shapely[at random]";
	otherwise if breast size of player is less than 5:
		now descr is "[character number breast size of player in cupsize] cup";
		now sh-descr is "[one of]average-sized[or]normal-sized[or]healthy-sized[or][character number breast size of player in cupsize] cup[at random]";
	otherwise if breast size of player is less than 7:
		now descr is "[one of]large[or]jiggling[or]well-shaped[or]plump[at random] [character number breast size of player in cupsize] cup";
		now sh-descr is "[one of]large[or]jiggling[or]well-shaped[or]plump[at random]";
	otherwise if breast size of player is less than 9:
		now descr is "[one of]massive[or]huge[or]heavy[at random] [character number breast size of player in cupsize] cup";
		now sh-descr is "[one of]massive[or]huge[or]heavy[at random]";
	otherwise if breast size of player is less than 12:
		now descr is "[one of]enormous[or]giant[or]hulking[or]head sized[or]basketball sized[at random] [character number breast size of player in cupsize] cup";
		now sh-descr is "[one of]enormous[or]giant[or]hulking[or]head sized[or]basketball sized[at random]";
	otherwise:
		now descr is "[one of]gargantuan[or]beachball sized[or]mountainous[or]colossal[or]gigantic[at random] [character number breast size of player in cupsize] cup";
		now sh-descr is "[one of]gargantuan[or]beachball sized[or]mountainous[or]colossal[or]gigantic[at random]";
	now breast size desc of player is descr;
	now short breast size desc of player is sh-descr;
	rule succeeds;

This is the cock descr rule:
	if cock length of player is less than 3:
		now descr is "[one of]tiny[or]very small[or]puny[at random]";
	otherwise if cock length of player is less than 6:
		now descr is "[one of]smaller than average[or]small[or]below average[at random]";
	otherwise if cock length of player is less than 8:
		now descr is "[one of]average in size[or]normal sized[at random]";
	otherwise if cock length of player is less than 12:
		now descr is "[one of]large[or]sizable[or]well-built[or]longer than average[at random]";
	otherwise if cock length of player is 12:
		now descr is "foot long";
	otherwise if cock length of player is less than 18:
		now descr is "[one of]huge[or]heavy[or]ponderous[or]massive[or]forearm length[at random]";
	otherwise if cock length of player is less than 25:
		now descr is "[one of]giant[or]hulking[or]hypertrophied[or]elephantine[or]monstrous[or]towering[at random]";
	otherwise:
		now descr is "[one of]mammoth[or]gigantic[or]colossal[or]titanic[or]third leg[or]devastating[at random]";
	now cock size desc of player is descr;
	rule succeeds;

To say ball size:
	if cock width of player is greater than 0:
		if cock width of player is less than 3:
			say "[one of]marble-sized[or]tiny[or]very small[at random]";
		otherwise if cock width of player is less than 6:
			say "[one of]plum-sized[or]golf-ball-sized[or]apricot-sized[or]average[at random]";
		otherwise if cock width of player is less than 12:
			say "[one of]lemon-sized[or]large[at random]";
		otherwise if cock width of player is less than 16:
			say "[one of]baseball-sized[or]orange-sized[or]hand-filling[at random]";
		otherwise if cock width of player is less than 20:
			say "[one of]grapefruit-sized[or]massive[at random]";
		otherwise if cock width of player is less than 25:
			say "[one of]cantaloupe-sized[or]giant[or]knee-knocking[at random]";
		otherwise if cock width of player is less than 32:
			say "[one of]basketball-sized[or]ginormous[or]super-inflated[or]watermelon-huge[at random]";
		otherwise:
			say "[one of]floor-dragging[or]beachball-sized[or]gargantuan[or]ground-hanging[at random]";
		say " [one of]balls[or]testicles[or]gonads[at random]";

To say short ball size:
	if cock width of player is greater than 0:
		if cock width of player is less than 3:
			say "[one of]marble-sized[or]tiny[or]very small[at random]";
		otherwise if cock width of player is less than 6:
			say "[one of]plum-sized[or]golf-ball-sized[or]apricot-sized[or]average[at random]";
		otherwise if cock width of player is less than 12:
			say "[one of]lemon-sized[or]large[at random]";
		otherwise if cock width of player is less than 16:
			say "[one of]baseball-sized[or]orange-sized[or]hand-filling[at random]";
		otherwise if cock width of player is less than 20:
			say "[one of]grapefruit-sized[or]massive[at random]";
		otherwise if cock width of player is less than 25:
			say "[one of]cantaloupe-sized[or]giant[or]knee-knocking[at random]";
		otherwise if cock width of player is less than 32:
			say "[one of]basketball-sized[or]ginormous[or]super-inflated[or]watermelon-huge[at random]";
		otherwise:
			say "[one of]floor-dragging[or]beachball-sized[or]gargantuan[or]ground-hanging[at random]";

to say cum load size of ( x - a person ):
	if cock width of x > 0:
		if cock width of x is less than 3:			[1, 2]
			say "[one of]piddling[or]tiny[or]minuscule[or]feeble[or]small[or]meager[at random]";
		otherwise if cock width of x is less than 6:	[3 - 5]
			say "[one of]average[or]normal-sized[or]fair-sized[or]moderate[or]adequate[or]regular-sized[at random]";
		otherwise if cock width of x is less than 12:	[6 - 11]
			say "[one of]triple-dose[or]half-cup[or]cupfull[or]ample[or]above-average[or]generous[or]sizable[at random]";
		otherwise if cock width of x is less than 16:	[12 - 15]
			say "[one of]half-litre[or]considerable[or]impressive[or]pint-full[or]copious[or]substantial[or]large[or]abundant[or]plentiful[at random]";
		otherwise if cock width of x is less than 20:	[16 - 19]
			say "[one of]one-litre[or]flowing[or]heavy[or]quart-sized[or]drenching[or]jumbo[or]whopping[at random]";
		otherwise if cock width of x is less than 25:	[20 - 24]
			say "[one of]two-litre[or]half-gallon[or]giant[or]huge[or]blasting[or]enormous[or]immense[at random]";
		otherwise if cock width of x is less than 32:	[25 - 31]
			say "[one of]overflowing[or]bucket-filling[or]excessive[or]gushing[or]massive[at random]";
		otherwise:								[32+]
			say "[one of]torrential[or]monumental[or]colossal[or]gigantic[or]immeasurable[or]devastating[or]near-unending[at random]";

This is the cunt descr rule:
	if cunt length of player is less than 3:
		now descr is "[one of]infantile[or]extremely small[or]puny[at random]";
	otherwise if cunt length of player is less than 6:
		now descr is "[one of]smaller than average[or]small[or]below average[at random]";
	otherwise if cunt length of player is less than 8:
		now descr is "[one of]average[or]normal sized[at random]";
	otherwise if cunt length of player is less than 12:
		now descr is "[one of]large[or]thick lipped[or]above average[at random]";
	otherwise if cunt length of player is less than 18:
		now descr is "[one of]belly bulgingly huge[or]inhumanly deep[or]forearm length[at random]";
	otherwise if cunt length of player is less than 25:
		now descr is "[one of]titanic[or]astonishingly deep[or]elephantine[at random]";
	otherwise:
		now descr is "[one of]cavernous[or]seemingly bottomless[or]canyonlike[at random]";
	now cunt size desc of player is descr;
	rule succeeds;

to say body size of ( x - a person ):
	if scalevalue of x is 1:			[~3 ft in height or less]
		say "tiny";
	otherwise if scalevalue of x is 2:		[4-5 ft in height]
		say "small";
	otherwise if scalevalue of x is 3:		[5-7 ft in height]
		say "average";
	otherwise if scalevalue of x is 4:		[8-12 ft in height]
		say "large";
	otherwise:						[12+ ft in height]
		say "huge";


looknow is a number that varies.

Afterexamine rules is a rulebook.

instead of examining a person(called x):
	if x is the player:
		follow the self examine rule;
		follow the afterexamine rules;
	otherwise:
		say "[The description of x]";
		if hypernull is 0:
			try linkactioning x;

linkactioning is an action applying to one thing.

understand "linkaction [person]" as linkactioning.

carry out linkactioning:
	linkaction noun;

linkcheck is a person that varies.
The linkaction of a person is usually "Possible Actions: [if number of entries of conversation of linkcheck is greater than 0][link]talk[as]talk [linkcheck][end link], [end if][link]smell[as]smell [linkcheck][end link][if linkcheck is companion of player], [link]dismiss[as]dismiss[end link][otherwise], [link]fuck[as]fuck [linkcheck][end link][end if][line break]";

to linkaction (x - Person):
	now linkcheck is x;
	say "[linkaction of x]";

[NOTE: For characters w/different action options, use a 'instead of linkactioning <name>' clause.]

instead of linkactioning Doctor Matt when hp of Doctor Matt > 0:
	say "Possible Actions: [link]talk[as]talk Doctor Matt[end link], [link]smell[as]smell Doctor Matt[end link], [link]fuck[as]fuck Doctor Matt[end link], [link]volunteer[end link][line break]";


Showstatting is an action applying to nothing.

Understand "stat" as showstatting.
Understand "stats" as showstatting.

carry out showstatting:
	showstats player;

To showstats (x - Person):
	say "Strength: [strength of the x], Dexterity: [dexterity of the x], Stamina: [stamina of the x], Charisma: [Charisma of the x], Perception: [perception of the x], Intelligence: [intelligence of the x].";
	say "Humanity: [humanity of the x]/100, Morale: [morale of the x], HP: [hp of x]/[maxhp of x] Libido: [libido of x]/100, Hunger: [hunger of x]/100, Thirst: [thirst of x]/100.";
	let z be ( level of x plus one) times 10;
	if "Fast Learner" is listed in feats of x:
		now z is ( level of x plus one) times 8;
	say "Level: [level of x], XP: [xp of x]/[z]";
	if the number of entries in the feats of the x is greater than 0:
		say ", Feats: [feats of the x][line break]";

This is the self examine rule:
	now looknow is 1;
	showstats player;
	let cocktext be "";
	follow the cock descr rule;
	if the cocks of the player is greater than 0:
		if the cocks of the player is greater than 1:
			now cocktext is "have [cocks of the player] [cock size desc of player] [cock length of player]-inch-long [cock of the player] [one of]cocks[or]penises[or]shafts[or]manhoods[at random].  They are [if libido of player <= 25]only somewhat aroused at the moment[otherwise if libido of player <= 50]partially hard and dribbling a little pre[otherwise if libido of player <= 75]erect and leaking precum[otherwise]fully erect and drooling precum steadily[end if].  [if player is internal]Though they are not outwardly apparent, you wager you have[otherwise]Underneath them hangs[end if] [one of]a pair of[or]a set of[at random] [ball size]. ";
		otherwise:
			now cocktext is "have a [cock size desc of player] [cock length of player]-inch-long [cock of the player] [one of]cock[or]penis[or]shaft[or]maleness[at random].  It is [if libido of player <= 25]only somewhat aroused at the moment[otherwise if libido of player <= 50]partially hard and dribbling a little pre[otherwise if libido of player <= 75]erect and leaking precum[otherwise]fully erect and drooling precum steadily[end if].  [if player is internal]Though they are not outwardly apparent, you wager you have[otherwise]Underneath it hangs[end if] [one of]a pair of[or]a set of[at random] [ball size]. ";
	let cunttext be "";
	follow the cunt descr rule;
	if the cunts of the player is greater than 0:
		if the cunts of the player is greater than 1:
			now cunttext is " have [cunts of the player] [cunt size desc of player] [one of]cunts[or]pussies[or]vaginas[at random].  Further probing shows them to be [cunt length of player] inches deep and able to stretch to about [cunt width of player] around.  They are [if libido of player <= 25]a little damp at the moment[otherwise if libido of player <= 50]wet with your juices[otherwise if libido of player <= 75]hot and dripping juices[otherwise]drooling musky nectar down your thighs[end if]. ";
		otherwise:
			now cunttext is "r [one of]cunt[or]pussy[or]vagina[or]cleft[at random] looks [cunt size desc of player], and further probing shows it to be [cunt length of player] inches deep and able to stretch to [cunt width of player] around.  It is [if libido of player <= 25]a little damp at the moment[otherwise if libido of player <= 50]wet with your juices[otherwise if libido of player <= 75]hot and dripping juices[otherwise]drooling musky nectar down your thighs[end if]. ";
	say "Looking over yourself, your body is covered in [skin of the player] skin. Your face is [face of the player].[run paragraph on]";
	repeat with x running through equipped owned equipment:
		if descmod of x is "", next;
		if placement of x is "face":
			say "  [descmod of x][run paragraph on]";
	say " Your body is [body of the player].[run paragraph on]";
	repeat with x running through equipped owned equipment:
		if descmod of x is "", next;
		if placement of x is "body":
			say "  [descmod of x][run paragraph on]";
	repeat with x running through equipped owned equipment:
		if descmod of x is "", next;
		if placement of x is "waist":
			say "  [descmod of x][run paragraph on]";
	if "Angie's Mate" is listed in feats of player:
		say "  Thin lines of healed claw-marks run down your back, marking you as Angie's mate.";
	if "Boghrim's Mark" is listed in feats of player:
		say "  Two small scars from Boghrim's tusks mark your shoulder, a reminder of the first time the big orc fucked you.";
	if weapon object of player is not journal:
		say "  You are carrying a/an [weapon object of player] just in case of trouble";
		if weapon object of player is unwieldy:
			say ".  Due to its comparatively [if scalevalue of player > objsize of weapon object of player]small[otherwise]big[end if] size, it is [if absolute value of ( scalevalue of player - objsize of weapon object of player ) > 3]very unwieldy[otherwise if absolute value of ( scalevalue of player - objsize of weapon object of player ) is 3]rather unwieldy[otherwise]somewhat unwieldy[end if] for you to use at the moment";
		say ".[run paragraph on]";
	if tail of player is empty:
		say "";
	otherwise:
		say " [tail of the player][run paragraph on]";
	repeat with x running through equipped owned equipment:
		if descmod of x is "", next;
		if placement of x is "end":
			say " [descmod of x]";
	say "[line break]";
	if cocktext is not empty:
		if cunttext is empty:
			say "A private peek shows that you [cocktext]";
		otherwise:
			say "A private peek shows that you [cocktext]";
			say " Also, you[cunttext]";
	otherwise if cunttext is not "":
		say " You[cunttext]";
	follow the breast descr rule;
	if breasts of player is greater than 0:
		if breast size of player is 0:
			say "You have [breasts of player] nipples on your [bodydesc of player] chest.";
		otherwise:
			if breasts of player is greater than 2:
				say "You have [breasts of player] breasts on your [bodydesc of player] chest. The first pair looks [descr] and curves out [breast size of player] inch[if breast size of player is not 1]es[end if] from your chest. The second pair curves out [(breast size of player times three) divided by five] inch[if ( breast size of player times three ) divided by 5 is not 1]es[end if] from your chest. ";
				if breasts of player is greater than 4, say "The rest jostle for space [breast size of player divided by three] inch[if breast size of player divided by 3 is not 1]es[end if] from your belly.";
			otherwise:
				say "You have two [descr] breasts on your [bodydesc of player] chest, curving out [breast size of player] inch[if breast size of player is not 1]es[end if] from your chest.";
	if child is not born and gestation of child is greater than 0:
		if gestation of child is less than 10:
			now looknow is 0;
			say "Your [skin of player] swollen belly looks ready to spill forth life at any moment.";
			now looknow is 1;
		otherwise if gestation of child is less than 20:
			say "You have a noticeable bulge, a soft roundness to your belly that speaks of too many nights with a tub of ice cream, or an incoming child.";
		otherwise if gestation of child is less than 30:
			say "You feel a soft subtle glow somewhere in your belly.";
	otherwise if heat enabled is true:
		if inheat is true:
			say "You also feel [if heatlevel is 3]an intense[otherwise]a[end if] need to be on the receiving end of a good, hard fuck because of your presently heated state.";
		otherwise if heatlevel is 1 and player is impreg_able and cockname of player is not "human":
			say "You are thankfully spared some undo sexual yearning because you've prevented your tainted womb from going into heat.";
		otherwise if heatlevel is 3 and player is impreg_able and cockname of player is not "human":
			say "Your tainted womb is not troubling you unduly at the moment, though you're unsure when your next intensified heat may strike you.";
	if the number of entries in childrenfaces is greater than 0:
		if the number of entries in childrenfaces is 1:
			if ( entry 1 of childrenskins is not entry 1 of childrenbodies ) or ( entry 1 of childrenskins is not entry 1 of childrenfaces ): 
				say "Trailing behind you, your child has a [entry 1 of childrenfaces] face, and a [entry 1 of childrenbodies] body covered in [entry 1 of childrenskins] skin.";
			otherwise:
				say "Trailing behind you, your child is a pure blood [entry 1 of childrenfaces].";
			say "They look as alert and human as you are, taking after you eagerly. Despite their age, they are already grown to young adults, both physically and in apparent emotional and mental development.";
		otherwise:
			say "Trailing behind you come your children.";
			repeat with x running from 1 to number of entries in childrenfaces:
				if ( entry x of childrenskins is not entry x of childrenbodies ) or ( entry x of childrenskins is not entry x of childrenfaces ):
					say "One has a [entry x of childrenfaces] face, and a [entry x of childrenbodies] body covered in [entry x of childrenskins] skin.";
				otherwise:
					say "One is a pure blood [entry x of childrenfaces].";
			say "They all are as alert and human as you are, taking after you eagerly. Despite their age, they are already grown to young adults, both physically and in apparent emotional and mental development.";
	if the player is not lonely:
		say "Accompanying you, you have a level [level of companion of player] [link][companion of player][as]look [companion of player][end link]. [initial appearance of companion of player]";
	now looknow is 0;
	rule succeeds;

This is the location choice rule:
	choose row current menu selection in the table of starting location;
	if title entry is "Bunker":
		say "You managed to find your way to a bunker, where you hid away for some time. No special perks, default start.";
	otherwise if title entry is "Caught Outside":
		say "You were forced to survive outside. You have already been mutated a bit, though your practice has hardened you.(Gain Spartan Diet)[line break]";
	otherwise if title entry is "Rescuer Stranded":
		say "You arrived late, looking for survivors, when you got cut off from your team mates, now you just want to survive!(Start with no supplies, an iron man mode, can you survive?)[line break]";
	otherwise if title entry is "Forgotten":
		say "You stayed in hiding too long. Your supplies have run dry, and the rescue already came and left. It will be a long time before any more arrive![line break]";
	otherwise if title entry is "Hard mode":
		say "You always had a desire to challenge yourself so purposely waited for some stronger opponents to appear before venturing out. Your supplies have run dry, and the rescue already came and left. It will be a long time before any more arrive![line break]";
	otherwise if title entry is "Researcher":
		say "You are not stranded at all. You came to explore, catalog, and interact with this absolutely fascinating outbreak. You've been given immunizations to casual infection(You won't transform from losing battles) and have specialized equipment that allows you to collect the infection vials of those you defeat.[line break]";
	say "Continue?";
	if the player consents:
		now looknow is 0;
	otherwise:
		the rule fails;
	if title entry is not "Bunker":
		say "What luck. After looking around desperately, you come across a library with a mostly intact bunker in it. This will serve well as a refuge while you wait for rescue.";
		if title entry is "Caught Outside":
			add "Spartan Diet" to feats of player;
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
			now the description of Doctor Matt is "A small recorder labeled 'Doctor Matt' remains abandoned.";
			now the hp of doctor matt is 100;
			now the icon of doctor matt is figure of pixel;
			remove orthas from play;
			increase score by 600;
			extend game by 240;
		if title entry is "Hard mode":
			now invent of bunker is { };
			add "cot" to invent of bunker;
			now the printed name of Doctor Matt is "Left Behind Recording of Doctor Matt";
			now the initial appearance of Doctor Matt is "A small recorder labeled 'Doctor Matt' remains abandoned.";
			now the description of Doctor Matt is "A small recorder labeled 'Doctor Matt' remains abandoned.";
			now the hp of doctor matt is 100;
			now the icon of doctor matt is figure of pixel;
			remove orthas from play;
			increase score by 900;
			extend game by 240;
			now hardmode is true;
			now levelwindow is 99999;
		if hardmode is false:
			say "Would you like to play hard mode?";
			if the player consents:
				now hardmode is true;
				now levelwindow is 99999;
				say "Hardmode activated!";
	now scenario is title entry;
	now the menu depth is 0;
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	rule succeeds;

This is the final stats rule:
	now the morale of the player is the charisma of the player plus the perception of the player;
	now the HP of the player is the stamina of the player times two;
	increase the HP of the player by 5;
	now the maxhp of the player is the hp of the player;
	now the humanity of the player is 100;
	now the capacity of the player is five times the strength of the player;
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
		otherwise:
			say "Invalid Selection.";
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
[	try looking;]
	try looking;
	rule succeeds;

This is the male choice rule:
	now the cocks of the player is 1;
	now the cock length of the player is 6;
	now the cock width of the player is 4;
	now the breasts of the player is 2;
	now the breast size of the player is 0;
	now  the current menu is table of Basic Actions;
	say "You are a man.";
	wait for any key;
	follow the final stats rule;
	rule succeeds;

This is the female choice rule:
	now the cunts of the player is 1;
	now the cunt length of the player is 6;
	now the cunt width of the player is 4;
	now the breasts of the player is 2;
	now the breast size of the player is 2;
	now the current menu is table of Basic Actions;
	say "You are a woman.";
	wait for any key;
	follow the final stats rule;
	rule succeeds;

This is the d18 rule:
	now d18 is 0;
[	increase d18 by a random number from 1 to 6;
	increase d18 by a random number from 1 to 6;
	increase d18 by a random number from 1 to 6;
]
	now d18 is 12;
	rule succeeds;

This is the random stats rule:
	follow the d18 rule;
	now the strength of the player is d18;
	follow the d18 rule;
	now the Dexterity of the player is d18;
	follow the d18 rule;
	now the Stamina of the player is d18;
	follow the d18 rule;
	now the Charisma of the player is d18;
	follow the d18 rule;
	now the Perception of the player is d18;
	follow the d18 rule;
	now the Intelligence of the player is d18;
	decrease the score by 1;
	rule succeeds.

This is the Menu Exit Rule:
	decrease the menu depth by 1;
[	carry out the displaying activity;
	clear the screen;
	try looking;]
	rule succeeds.


Instead of examining the infection terminal:
	say "Filled with glowing characters, the terminal lists all identified infections with some stats beside:[line break]";
	let z be 0;
	sort table of random critters in lev order;
	repeat with X running from 1 to number of filled rows in table of random critters:
		choose row X from the table of random critters;
		if there is a lev entry:
			increase z by 1;
			say "[Name Entry]: Danger Level: [lev entry], Typical Environment: [area entry][line break]";
			if z is 15:
				[say "Press any key to continue.";] [unneeded with 'more' link]
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
				now z is 0;
	say "End Infection list.[line break]";
	wait for any key; [don't apply waiterhater, used to separate monsters from credits]
	say "Under it is something called a 'credit' list, how odd.";
	say "[complete list of extension credits]";
	say "End Credit list.[line break]";

To Plot:
	let x be the location;
	if x is unknown:
		now x is known;
		increase score by 1;
		if x is fasttravel:
			say "You feel you could [bold type]navigate[roman type] back to here easily from other such rooms.";

After going:
	try looking;
	plot;

This is the finish stats rule:
	if started is 1:
		if Current menu selection is 1:
			increase strength of player by 1;
			increase capacity of player by 5;
			say "Your strength grows.";
		if Current menu selection is 2:
			increase dexterity of player by 1;
			say "Your dexterity grows.";
		if Current menu selection is 3:
			increase Stamina of player by 1;
			say "Your Stamina grows.";
		if Current menu selection is 4:
			increase charisma of player by 1;
			say "Your charisma grows.";
		if Current menu selection is 5:
			increase perception of player by 1;
			say "Your perception grows.";
		if Current menu selection is 6:
			increase intelligence of player by 1;
			say "Your intelligence grows.";
		decrease menu depth by 1;
		rule succeeds;
	if Current menu selection is 1:
		say "Your strength is your specialty.";
		say "Are you sure?";
		if the player consents:
			increase strength of player by 5;
		otherwise:
			rule fails;
	if Current menu selection is 2:
		say "Your dexterity is your specialty.";
		say "Are you sure?";
		if the player consents:
			increase dexterity of player by 5;
		otherwise:
			rule fails;
	if Current menu selection is 3:
		say "Your stamina is your specialty.";
		say "Are you sure?";
		if the player consents:
			increase stamina of player by 5;
		otherwise:
			rule fails;
	if Current menu selection is 4:
		say "Your charisma is your specialty.";
		say "Are you sure?";
		if the player consents:
			increase charisma of player by 5;
		otherwise:
			rule fails;
	if Current menu selection is 5:
		say "Your perception is your specialty.";
		say "Are you sure?";
		if the player consents:
			increase perception of player by 5;
		otherwise:
			rule fails;
	if Current menu selection is 6:
		say "Your intelligence is your specialty.";
		say "Are you sure?";
		if the player consents:
			increase intelligence of player by 5;
		otherwise:
			rule fails;
	now started is 1;
	say "[line break]You have decided your physical talents, but are you a man or a woman?";
	say "Do you want to be [link][bracket]m[close bracket][as]m[end link]ale or [link][bracket]f[close bracket][as]f[end link]emale?>[run paragraph on]";
	now tempnum is 0;
	while tempnum is 0:
		get typed command as playerinput;
		if playerinput matches "m" or playerinput matches "1":
			now tempnum is 1;
			follow male choice rule;
		otherwise if playerinput matches "f" or playerinput matches "2":
			now tempnum is 1;
			follow female choice rule;
		otherwise:
			say "Type 'm' or 'f'.> [run paragraph on]";
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
[	try looking;]
	rule succeeds;

scavenging is an action applying to nothing.
tscavenging is an action applying to one topic.
Scavengetarget is an indexed text that varies.
A scavevent is a kind of situation.

understand "Scavenge" as scavenging.
understand "Scav" as scavenging.
understand "Scavenge [text]" as tscavenging.
understand "Scav [text]" as tscavenging.

check tscavenging:
	if location of player is not fasttravel, say "You can only scavenge from quick travel points." instead;
	if blindmode is true, say "You're playing in blind-mode, so hunting is not allowed - even scavenge-hunting.  You'll have to try scavenging normally to find what you seek." instead;

Carry out tscavenging:
	now scavengetarget is the topic understood;
	try scavenging;
	now scavengetarget is "";


check scavenging:
	if location of player is not fasttravel, say "You can only scavenge from quick travel points." instead;

carry out scavenging:
	let x be a random visible dangerous door;
	if x is not nothing:
		now battleground is marea of x;
	otherwise:
		now battleground is "Outside";
	say "You set out in the desperate search of food and water.";
	let the bonus be (( the perception of the player minus 10 ) divided by 2);
	if "Survivalist" is listed in feats of the player, increase bonus by 4;
	if "Three Bags Full" is listed in feats of the player, increase bonus by 1;
	let the dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 10: ";
	if dice plus bonus is greater than 9:
		now inasituation is true;
		if a random chance of 3 in 4 succeeds:
			try resolving potential resources;
		otherwise:
			now tempnum is 1;
			let L be a random scavable unresolved scavevent;
			If L is not nothing:
				say "[one of]During your search for supplies, you end up at[or]Searching systematically for resources, you locate[or]Following signs of recent activity, you end up at[or]Doing a slow circuit while scavenging, you manage to find[or]Wandering around aimlessly in search of supplies, you locate[at random] [L].";
				try resolving L;
			otherwise if L is nothing:
				try resolving potential resources;
		now inasituation is false;
		say "[line break]";
	otherwise:
		say "Your search turns up empty.";
	now inasituation is false;
	if battleground is "", now battleground is "Outside";
	let z be 7;
	if "Stealthy" is listed in feats of player, decrease z by 2;
	if "Bad Luck" is listed in feats of player, increase z by 1;
	randomfightchance;
	follow turnpass rule;

To Challenge (x - text):
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y from the table of random critters;
		if name entry is x:
			now monster is y;
			now monsterhp is hp entry;
			challenge;
			break;

To Infect (x - text):
	if scenario is "Researcher" and researchbypass is 0:
		vialchance x;
		continue the action;
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is x:
			now monster is y;
			let reset be 0;
			if researchbypass is 1 and  non-infectious entry is true:
				now reset is 1;
				now non-infectious entry is false;
			infect;
			if reset is 1:
				now non-infectious entry is true;
			break;

to randominfect:				[bypasses researcher protection]
	now researchbypass is 1;
	weakrandominfect;
	now researchbypass is 0;

to weakrandominfect:			[does not bypass researcher protection]
	sort table of random critters in random order;
	now monster is 1;
	choose row monster from table of random critters;
	while there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
		increase monster by 1;
		choose row monster from table of random critters;
		if there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
			next;
		break;
	infect;


to setmonster ( x - text ):		[puts an infection (named x) as lead monster for later use]
	let found be 0;
	choose row monster from the table of random critters;
	if name entry is x:
		now found is 1;
	otherwise:
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is x:
				now found is 1;
				now monster is y;
				break;
	if found is 0:
		say "ERROR - Creature '[x]' not found. (setmonster)";
	otherwise if debugactive is 1:
		say "DEBUG: Current [']monster['] set to: [monster] = [name entry]";

Section x - Debug Commands - Not for release

[ Since 'not for release' is in the heading, these commands will not be included in Release versions! great for debugging & testing commands]

Spawnmonster is an action applying to one topic.

understand "spawn [text]" as spawnmonster.

carry out spawnmonster:
	repeat with X running from 1 to number of filled rows in table of random critters:
		choose row X from the table of random critters;
		if name entry matches the text topic understood, case insensitively:
			now monster is X;
			now monsterhp is hp entry;
			challenge;
			break;

levelcheat is an action applying to nothing.

understand "givelevel" as levelcheat.

carry out levelcheat:
	now xp of the player is (10 + (level of player times 10));
	if "Fast Learner" is listed in feats of player:
		decrease xp of player by ( level of player times 2 );
	level up;
	decrease score by level of the player times level of the player;

Section Lists of Tables - Not for release

[intends to list stuff for debuging (or any other activity needing a list of whats in the game).  output is formatted as CSV to simplify exporting.  appears to be working properly.]
TableListing is an action applying to one topic.
Understand "tlist [text]" as TableListing.

Carry out tablelisting:
	let t be the topic understood;
	if t in lower case is "object":
		say "Name,Weight:[line break]";
		sort table of game objects in object order;
		repeat with X running from 1 to number of filled rows in table of game objects:
			choose row X from the table of game objects;
			if there is a name entry:
				say "[name Entry],[weight entry][line break]";
		say "End of list of objects.";
		stop the action;
	otherwise if t in lower case is "creature":
		say "Name,Level,Area:[line break]";
		sort table of random critters in lev order;
		repeat with X running from 1 to number of filled rows in table of random critters:
			choose row X from the table of random critters;
			if there is a lev entry:
				say "[name entry],[lev entry],[area entry][line break]";
		say "End of list of random critters.";
		stop the action;
	otherwise if t in lower case is "critcombat":
		say "Critter Combats:[line break]";
		sort Table of Critter Combat in combat order;
		repeat with X running from 1 to number of filled rows in Table of Critter Combat:
			choose row X from the Table of Critter Combat;
			if there is a name entry:
				say "[name entry][line break]";
		say "End of list of critter combats.";
		stop the action;
	otherwise if t in lower case is "room":
		say "Rooms:[line break]";
		repeat with n running through rooms:
			say "[n][line break]";
		say "End of list of rooms.";
		stop the action;
	otherwise if t in lower case is "npc":
		say "NPC: [line break]";
		repeat with n running through person:
			say "[n][line break]";
		say "End of list of NonPlayerCharacters.";
		stop the action;
	otherwise if t in lower case is "grab":
		say "Grab Object:[line break]";
		repeat with n running through Grab Object:
			say "[n][line break]";
		say "End of list of Grab Objects.";
		stop the action;
	otherwise if t in lower case is "weapon":
		say "Weapon:[line break]";
		repeat with n running through A armament:
			say "[n][line break]";
		say "End of list of weapons.";
		stop the action;
	otherwise if t in lower case is "equipment":
		say "Equipment:[line break]";
		repeat with n running through Equipment:
			say "[n][line break]";
		say "End of list of Equipment.";
		stop the action;
	otherwise if t in lower case is "heat":
		say "Name, Heat Cycle, Heat Duration, Female Heat, MPreg Heat:[line break]";
		sort Table of infection heat in infect name order;
		repeat with X running from 1 to number of filled rows in Table of infection heat:
			choose row X from the Table of infection heat;
			if there is a infect name entry:
				if there is a fheat entry and there is a mpregheat entry:
					say "[infect name entry]: [heat cycle entry],[heat duration entry], F: [if there is a fheat entry and fheat entry is true]Yes[otherwise]No[end if], MPreg: [if there is a mpregheat entry and mpregheat entry is true]Yes[otherwise]No[end if][line break]";
				otherwise:
					say "[infect name entry]: [heat cycle entry],[heat duration entry] - not updated to F/MPreg[line break]";
		say "End of list of heat.";
		stop the action;
	otherwise if t in lower case is "zephyr":
		say "Zephyr Goods,Price[line break]";
		sort Table of Zephyr Goods in price order;
		repeat with X running from 1 to number of filled rows in Table of Zephyr Goods:
			choose row X from the Table of Zephyr Goods;
			if there is a price entry:
				say "[name entry],[price entry][line break]";
		say "End of list of Zephyr Goods.";
		stop the action;
	otherwise if t in lower case is "biker":
		say "Biker Destination,Sort Order[line break]";
		sort Table of Biker Destinations in sortorder order;
		repeat with X running from 1 to number of filled rows in Table of Biker Destinations:
			choose row X from the Table of Biker Destinations;
			if there is a title entry:
				say "[title entry],[sortorder entry][line break]";
		say "End of list of Biker Destinations.";
		stop the action;
	otherwise if t in lower case is "loot":
		say "Creature,Loot,Lootchance:[line break]";
		sort table of random critters in loot order;
		repeat with X running from 1 to number of filled rows in table of random critters:
			choose row X from the table of random critters;
			if there is a loot entry:
				say "[name Entry],[loot entry],[lootchance entry][line break]";
		say "End of list of loot.";
		stop the action;
	otherwise if t in lower case is "situation":
		say "Situations:[line break]";
		repeat with n running through situations:
			say "[n][line break]";
		say "End of list of Situations.";
		stop the action;
	otherwise:
		say "nothing to list, try again.";

Book 7 - Endings

vetcheat is an action applying to nothing.
understand "i am a pro" as vetcheat.

vetcheater is a number that varies.
carry out vetcheat:
	if vetcheater is not 0:
		say "You can only use this once.";
		stop the action;
	increase vetcheater by 1;
	increase xp of player by 200;
	if level of player is less than 5:
		if xp of player is greater than ( level of player plus one ) times 10:
			level up;
		if xp of player is greater than ( level of player plus one ) times 10:
			level up;
		if xp of player is greater than ( level of player plus one ) times 10:
			level up;
		if xp of player is greater than ( level of player plus one ) times 10:
			level up;
		if xp of player is greater than ( level of player plus one ) times 10:
			level up;
		otherwise if "Fast Learner" is listed in feats of player and xp of player is greater than ( level of player plus one ) times 8:
			level up;
	decrease score by 400;

understand "heat" as supersponsor.

When play ends:
	clear the screen;
	say "[bold type]Game Over![roman type][line break]";
	ratetheplayer;
	say "----------";
	follow the self examine rule;
	say "[line break]";

to ratetheplayer:
	if gsgl is 1 and score > 0:
		now tempnum is (score / 20);
		increase score by tempnum;
	if "Ultimatum" is listed in feats of player and score > 0:
		now tempnum2 is (score / 10);
	say "In Scenario: [bold type][scenario][roman type], You have achieved a score of [bold type][score][roman type].";
	if gsgl is 1 and score > 0, say "For choosing no gender lock, you received a bonus of [tempnum] points.";
	if "Ultimatum" is listed in feats of player and score > 0, say "Your Ultimatum perk grants you a bonus of [tempnum2] points.";
	say "You've achieve the rank of: [bold type]";
	if score is less than 0:
		say "A used, broken condom!";
	otherwise if score is less than 120:
		say "A used condom!";
	otherwise if the score is less than 240:
		say "Post-Apocalyptic Passaround!";
	otherwise if the score is less than 500:
		say "Salacious Scavenger!";
	otherwise if the score is less than 1000:
		say "Wanton Wastewanderer!";
	otherwise if the score is less than 1500:
		say "Serpent Blisskin!";
	otherwise if the score is less than 2000:
		say "Maester Baster!";
	otherwise if the score is less than 2500:
		say "Baude Warrior!";
	otherwise if score is greater than 9000:
		say "Th -- What, 9000?!";
	otherwise:
		say "The Lord Humungus!";
	say "[roman type]";
	if the score is greater than 999:
		say "Your performance was so excellent, we'll give you a little... help, for your next run through. Type 'I am a pro' to gain 200 XP. It only works once per character";
		if bookfound is not 0:
			let tempnum be 0;
			sort table of library books in booknum order;
			repeat with y running from 1 to number of rows in table of library books:
				choose row y in table of library books;
				if booknum entry is bookfound:
					now tempnum is y;
					break;
			choose row tempnum from table of library books;
			if humanity of player < 10:
				say ".  Your confused, instinctual thoughts are sometimes broken by strange thoughts or images from a book you once read";
			otherwise:
				say ".  With all the excitement you went through at the library, the book you found remains firmly in your mind";
			say ".  In the Abbey, type [']dewey [bookcode entry]['] to find it again in your next game";
		say ".";
	say "[line break]";

when play ends:
	if thirst of player >= 100 or hunger of player >= 100:	[blocking regular endings]
		now bodyname of player is "starvation";
		now facename of player is "starvation";
		now skinname of player is "starvation";
		now tailname of player is "starvation";
		now cockname of player is "starvation";
		say "     You have perished from [if hunger of player >= 100 and thirst of player >= 100]starvation and thirst[otherwise if hunger of player >= 100]starvation[otherwise]thirst[end if] and are no more.  Your body becomes a meal for another of the more predatory creatures roaming the city.";
	otherwise if bodyname of player is "DBrute Slave":
		say "     Your new reality in hell focuses on satisfying the relentless lusts of your demon brute masters, as well as being shared around for any other hellspawn he feels like allowing a ride...";
		stop the action;
	otherwise if bodyname of player is "Demon Slave":
		say "     Your new reality in hell focuses on satisfying Skarnoth's every desire - of which there are many, mostly carnal ones. As the overlord of his own little demonic realm, your master has the power to play with your body shape too, transforming you as he wishes to better enjoy breaking you to his will...";
		stop the action;
	otherwise if bodyname of player is "dead":
		stop the action;
	otherwise if humanity of the player is less than 10 and hp of the player is greater than 0:
		if bodyname of player is "Dragoness" and hp of doctor matt <= 100:
			say "Following some unknown instinct, you seek out another of your own, and home in on Orthas, the dragon that was guarding the lab. She pets you gently along your neck and makes soothing sounds that has you almost purring. She proves to be a loving and kind mistress and you protect her fiercely for the remainder of your long life.";
	otherwise:
		say "You emerge from your harrowing experience with your mind intact, with your [bodyname of player] form and [facename of player] face.";
		if bodyname is "Human":
			say "Despite the traumas set on you, you do your best to fit back in with humanity after the rescue arrives.";
		if cock length of player is greater than 10 or cock width of player is greater than 6 and cocks of player is greater than 0:
			say "Your extreme masculine attributes prove to be more than a little awkward. As society puts itself back together, you do find a niche. Others, changed as you, require the services of such studs, and you never lack for something to do on the weekends.";
			if cocks of player is greater than 1:
				say "Your multiple endowments become quite popular amongst some infected, whom come from some great distance to be serviced by you. Though it is illegal to charge for such services, many leave you a 'gift' regardless, even a marriage proposal or two.";
		if skinname of player matches the text "human", case insensitively:
			increase score by 0;
		otherwise:
			say "Your unnatural [skin of player] flesh makes you stand out in a crowd. You find it difficult to keep friends outside of other infected, even after you're declared safe for contact.";
		if "Fertile" is listed in feats of player and ( number of entries in childrenfaces  + FeralBirths) is greater than 5:
			if cunts of player is greater than 0:
				say "You've been pregnant so many times and given birth to so many children that the nanites make a very strange change to your reproductive organs. Your body automatically stored a large amount of cum from the last creature that screwed you. Each time you give birth, a small amount of the cum is used to re-impregnate you automatically. You spend the rest of your life in a constant state of pregnancy. At first, you're alarmed by this, but your ever-growing brood of children cares for your every whim so you quickly begin to enjoy your new life.";
			otherwise if "MPreg" is listed in feats of player and mpregcount >= 6:
				if "Breeding True" is not listed in feats of player and "They Have Your Eyes" is not listed in feats of player:
					say "You've been pregnant so many times and given birth to so many children with your unusually altered body that the nanites make further changes to your reproductive organs.  Your body begins automatically storing some cum from anyone or anything that's screwed you.  Soon after you give birth, a small amount of the stored cum is automatically leaked out from a few of these storage chambers to be used to re-impregnate you if someone hasn't yet mated you.  This medley of semen is somehow mixed together to give you children from several sires.  You spend the rest of your life in a constant state of male pregnancy.  At first, you're alarmed by this, but soon you're seeking out diverse lovers to add their semen to your stores, loving the beautiful array of hybrid children you birth.  Your ever-growing brood cares for your every whim, allowing you to enjoy your new life as a male breeder.  Most of your children turn out as males as well, many capable of male pregnancy like you, though lacking your body's ability to be eternally pregnant.";
				otherwise:
					say "You've been pregnant so many times and given birth to so many children with your unusually altered body that the nanites make further changes to your reproductive organs.  Your body begins automatically storing a large cum from the last creatures that screwed you.  Each time you give birth, a small amount of the cum is used to re-impregnate you automatically.  You spend the rest of your life in a constant state of male pregnancy.  At first, you're alarmed by this, but your ever-growing brood of children cares for your every whim so you quickly begin to enjoy your new life.  Most of your children turn out as males as well, many capable of male pregnancy like you, though lacking your body's ability to be eternally pregnant.";
			if "Wild Womb" is listed in feats of player:
				say "However, thanks to your unusual tendency to birth feral children, many of your young soon strike out on their own, often sneaking away in the night, as their instinct to breed and spread their infection takes control.";
		if bodyname of player is "Dragoness":
			say "Your dragon like body proves as much a curiosity as repulsion in those around you. You find gainful employment as a mascot for a theme park, where you are paid to wander the park and entertain the clients within. The job proves largely enjoyable, especially since the more annoying people are intimidated by your bulk and claws.";


Book 8 - People

[Rod and Ronda Mallrat have been moved to the RodAndRonda file]

Milking is an action applying to nothing.
understand "milkme" as milking.
understand "milk me" as milking.
understand "milk myself" as milking.
lastmilking is a number that varies.  lastmilking is usually 500.

Table of Game Objects (continued)
name	desc	weight	object
"panther milk"	"The thick, luscious milk of one of the panther taurs."	1	panther milk
"chocolate milk"	"The creamy milk with a white chocolate taste."	1	chocolate milk
"vixen milk"	"A thin milk with a faintly medicinal taste, like the silvery vixens it is from."	1	vixen milk

panther milk is a grab object. It is a part of the player. Understand "milk" as panther milk. panther milk is infectious. The strain of panther milk is "Panther Taur". The trade of panther milk is "distilled milk".  panther milk is milky.
chocolate milk is a grab object. It is a part of the player. Understand "milk" as chocolate milk. chocolate milk is infectious. The strain of chocolate milk is "Chocolate Lab". The purified of chocolate milk is "soda".  chocolate milk is milky.
vixen milk is a grab object. It is a part of the player. Understand "milk" as vixen milk. vixen milk is infectious. The strain of vixen milk is "Vixen Nurse". The purified of vixen milk is "distilled milk".  vixen milk is milky.


check milking:
	if breasts of player is 0:
		say "You don't appear to have anything worth milking." instead;
	if breast size of player is less than 2:
		say "You don't appear to have anything worth milking." instead;
	if cunts of player is less than 1 and "MPreg" is not listed in feats of player:
		say "Your breasts don't seem ready to lactate." instead;
	if lastmilking - turns is less than 8:
		say "Your breasts have been drained recently.  You'll need to wait before another worthwhile milking." instead;

Carry out milking:
	if the bodyname of the player is "Hermaphrodite Gryphon":
		say "Using both hands, you cup the curves of your [if breasts of player is 2]two[otherwise][breasts of player][end if] [breast size desc of player] blue-furred tits, reveling in the pleasant sensations. Caressing their nipples with your fingers, it doesn't take long till small beads of milk form at their tips. Gently milking yourself, you gather the rich gryphon milk in an empty plastic bottle, all the while imagining how amazing it would be to have your own gryphlets to suckle on your breasts.";
		repeat with T running from one to the breasts of the player:
			add "gryphon milk" to the invent of the player;
		if breast size of player > 8:
			repeat with T running from one to ( ( the breasts of the player ) / 2 ):
				add "gryphon milk" to the invent of the player;
		now lastmilking is turns;
	otherwise if the bodyname of the player is "Shemale Smooth Collie":
		say "Moving your hands to touch and caress your [if breasts of player is 2]two[otherwise][breasts of player][end if] [breast size desc of player] furred breasts, you wake deep maternal urges in your canine body. Images of a whole litter of your own puppies nuzzling your breasts fill your mind while you touch yourself, panting in arousal and need. It doesn't take long till small beads of milk form at the nipples as your breasts get ready to feed your imaginary brood. You're lost in the pleasurable dream for a moment before you remember what you wanted to do and quickly grab an empty bottle from your pack to fill it, gently milking yourself into it.";
		repeat with T running from one to the breasts of the player:
			add "dog milk" to the invent of the player;
		if breast size of player > 8:
			repeat with T running from one to ( ( the breasts of the player ) / 2 ):
				add "dog milk" to the invent of the player;
		now lastmilking is turns;
	otherwise if the bodyname of the player is "Panther Taur":
		if breasts of player > 2:
			say "Running a hand-paw over your upper body's [breast size desc of player] black-furred breasts, you revel in the pleasant sensations that gives you, then lie on your side and reach down to give your lower breasts a caress too. Touching yourself like this wakes deep maternal urges in your panther body, calling to mind a whole litter of cute panther kits suckling at your breasts. It doesn't take long till small beads of milk form at the nipples as your body gets ready to feed your imaginary brood. You're lost in the pleasurable dream for a moment before you remember what you wanted to do and quickly grab an empty bottle from your pack to fill it, gently milking yourself into it.";
		otherwise:
			say "Running your hand-paws over your two [breast size desc of player] black-furred breasts, you revel in the pleasant sensations that gives you. Caressing their nipples with your fingers, it doesn't take long till small beads of milk form at their tips. Gently milking yourself, you gather the rich panther milk in an empty plastic bottle, all the while imagining how amazing it would be to have your own little panther kits to suckle on your breasts.";
		repeat with T running from one to ( ( the breasts of the player ) / 2 ):
			add "panther milk" to the invent of the player;
		if breast size of player > 8:
			repeat with T running from one to ( ( the breasts of the player ) / 2 ):
				add "panther milk" to the invent of the player;
		now lastmilking is turns;
	otherwise if the bodyname of the player is "cheetah woman":
		say "Using both hands, you cup your [if breasts of player is 2]two[otherwise][breasts of player][end if] [breast size desc of player] feline breasts, caressing their sensitive curves. Touching yourself like this wakes deep maternal urges in your cheetah body, calling to mind a whole litter of cute little kits suckling at your breasts. This leads to small beads of milk forming at their nipples within moments, your transformed body almost instantly getting ready to provide sustenance for your imaginary offspring. Quickly grabbing an empty plastic bottle, you gently milk yourself into it, panting at the pleasurable feelings this gives you.";
		repeat with T running from one to ( ( the breasts of the player ) / 2 ):
			add "cheetah milk" to the invent of the player;
		if breast size of player > 8:
			add "cheetah milk" to the invent of the player;
		now lastmilking is turns;
	otherwise if the bodyname of the player is "Chocolate Lab":
		say "Moving your hands to caress the soft curves of your [if breasts of player is 2]two[otherwise][breasts of player][end if] [breast size desc of player] breasts, you revel in the sensations that wakes in you. Soon they start leaking white chocolate syrup, revealing to anyone watching that your chocolate body has a creamy filling. It takes little effort to draw some white chocolate flavoured milk from your breasts, carefully squirting it into an empty water bottle before packing the now milk-filled container away.";
		repeat with T running from one to the breasts of the player:
			add "chocolate milk" to the invent of the player;
		if breast size of player > 8:
			repeat with T running from one to ( ( the breasts of the player ) / 2 ):
				add "chocolate milk" to the invent of the player;
		now lastmilking is turns;
	otherwise if the bodyname of the player is "Vixen Nurse":
		say "Using both hands, you cup your [if breasts of player is 2]two[otherwise][breasts of player][end if] [breast size desc of player] silvery furred breasts, caressing their sensitive curves. Touching yourself like this wakes deep maternal urges in your vulpine body, calling to mind a whole litter of cute little kits suckling at your breasts. This leads to small beads of milk forming at their nipples within moments, your transformed body almost instantly getting ready to provide sustenance for your imaginary offspring. Quickly grabbing an empty plastic bottle, you gently milk yourself into it and gather a small amount of milk, panting at the pleasurable feelings this gives you.";
		add "vixen milk" to the invent of the player;
		if breast size of player > 8:
			add "vixen milk" to the invent of the player;
		now lastmilking is turns;
	otherwise if the bodyname of the player is "Hermaphrodite Dolphin":
		say "Running both hands over your [if breasts of player is 2]two[otherwise][breasts of player][end if] [breast size desc of player] cetacean breasts, you revel in the pleasant sensations that gives you. As you caress their nipples with your fingers, it doesn't take long till small beads of milk form at their tips. Gently milking yourself, you gather the thick dolphin milk in an empty plastic bottle, all the while imagining how amazing it would be to have your own little kids to suckle on your breasts.";
		add "dolphin milk" to the invent of the player;
		if breast size of player > 8:
			add "dolphin milk" to the invent of the player;
		now lastmilking is turns;
	otherwise if the bodyname of the player is "Reindeer":
		say "Running both hands over your [if breasts of player is 2]two[otherwise][breasts of player][end if] [breast size desc of player] caribou breasts, you revel in the pleasant sensations that gives you. As you caress their nipples with your fingers, it doesn't take long till small beads of milk form at their tips. Gently milking yourself, you gather the tasty egg-nog milk in an empty plastic bottle, then pack it away to enjoy yourself or use later.";
		repeat with T running from one to ( ( the breasts of the player ) / 2 ):
			add "egg nog" to the invent of the player;
		if breast size of player > 8:
			repeat with T running from one to ( ( the breasts of the player ) / 2 ):
				add "egg nog" to the invent of the player;
		now lastmilking is turns;
	otherwise if the bodyname of the player is "Bovine":
		say "Squeezing your [if breasts of player is 2]two[otherwise][breasts of player][end if] soft bovine breasts, you moan and moo as you coax out a nice stream of bovine milk. While your mind strays to imagining a calf suckling at your nipples, you quickly grab an empty water bottle from your pack, catching squirt after squirt of milk in it until the bottle is full, then start on another...";
		repeat with T running from one to the breasts of the player:
			add "cow milk" to invent of the player;
		if breast size of player > 6:
			repeat with T running from one to ( ( the breasts of the player ) / 2 ):
				add "cow milk" to invent of the player;
		if breast size of player > 12:
			repeat with T running from one to ( ( the breasts of the player ) / 2 ):
				add "cow milk" to invent of the player;
		if breast size of player > 18:
			repeat with T running from one to ( ( the breasts of the player ) / 2 ):
				add "cow milk" to invent of the player;
		now lastmilking is turns;
	otherwise if the bodyname of the player is "Margay":
		say "You start lactating shortly after you begin playing with your breasts. Besides the pleasurable sensations that wakes inside yourself, you're also rewarded with a slow but steady flow of milk as you pinch your nipples. You gather your milk into bottles and store it away in you pack.";
		let Z be square root of ( breasts of player * breast size of player );
		repeat with T running from one to Z:
			increase carried of margay milk by 1;
		now lastmilking is turns;
	otherwise if bodyname of player is "Xeno":
		say "Bringing your clawed hands to your [if player is xenoskinned]black, [end if]green-veined breasts, you pinch and squeeze your nipples, drawing out green, acidic milk that sizzles where it falls.  You manage to contain some in a jar that it doesn't seem to be able to eat through right away";
		let z be the square root of ( breasts of player * breast size of player );
		let z be z / 2;
		increase carried of acid milk by z;
		now lastmilking is turns;
	otherwise:
		say "Your milk wouldn't be that interesting.";

The parser error count is a number that varies. The parser error count is 0.

After printing a parser error when the parser error count is at least 0:
	increment the parser error count;
	if the turn count divided by the parser error count is less than three:
		say "(If you are feeling lost, try typing [italic type]help[roman type] for suggestions.)";
		now the parser error count is -1. [This ensures that we don't keep printing the message.]


Book 9 - Add-Ons

[Special]
Include Patron Credits by Nuku Valente.
Include Presets by Core Mechanics.
Include Shifting by Hellerhound.
Include Qytat Shifters by Hellerhound.
Include Fucking by Core Mechanics.
Include Needy Heat for FS by Core Mechanics.
Include Church Of The Maternal Beast For Fs by Guest Writers.
Include Wereraptor for FS by Stripes.
Include Pets by Core Mechanics.
[Include Computers by Hellerhound.]		[***Removed due to holding lots of unused code. Terminal reworked to not need]
Include Feats by Core Mechanics.
Include Pepperspray by Stripes.
Include E-shocker by Stripes.
Include Masturbate by Core mechanics.
Include Alt Combat by Core Mechanics.
Include Alt Vore by Core Mechanics.
Include BFandI by Core Mechanics.
Include Parasite by Stripes.
Include NPC Debug by Wahn.
Include Pregnancy by Core Mechanics.
Include Gender Pronouns by Core Mechanics.
Include Bound State Universals by Core Mechanics.
Include Assorted Items by Stripes.
Include Janus by Wahn.

[Locations]
Include Zephyr Inc by Nuku Valente.
Include Red Light by Hiccup.
Include High Rise District by Guest Writers.
Include Stables Hotel by Sarokcat.
Include New Ewe Store by Sarokcat.
Include Hyena Hideout by Stripes.
Include Museum by Sarokcat.
Include Tiger Den by Sarokcat.
Include Pirate Island by Sarokcat.
Include Tattoo Parlor by Sarokcat.
Include Stablemasters by Sarokcat.
Include Approaching the Capitol Building for FS by Guest Writers.
[Include Training center by Zero.]
[Include GYM by Zero.]
[Include Complex by Zero.]
Include Underwater Zone For Fs by Hellerhound.
Include Power Plant by Hellerhound.
Include Zoo by Hellerhound.
Include Qytat a'th Lundrues by hellerhound.
Include Campus For Fs by Stripes.
Include Urban Forest For Fs by Stripes.
Include Hospital For Fs by Stripes.
Include Equinoid Camp For FS by Stripes.
Include PIG Frat by Stripes.
Include Medical Checkups by Stripes.
Include Junkyard and Warehouse by Guest Writers.
Include State Fair by Sarokcat.
Include Down Under Pub by Stripes.
Include Kitsune Hide Away by Kaleem mcintyre.
Include Dog House by Kaleem mcintyre.
Include Tyr's Club by Kaleem mcintyre.
Include Farm by Wahn.
Include Camp Bravo by Wahn.
Include Apocalypse Store by DrGryphon.
Include Shag Shack by Wahn.
Include Branson & Partner by Wahn.
Include Mall Expansion by Wahn.

[Quests & Events]
Include Researcher Studio by Kaleem Mcintyre.
Include Warehouse District by Kaleem Mcintyre.
Include Pursuit of Science by Kaleem Mcintyre.
Include Save the Dame by Kaleem Mcintyre.
Include Fire House by Kaleem Mcintyre.
Include Lizard Parlor by Kaleem Mcintyre.
Include Apartment 319 by Kaleem Mcintyre.
Include Important Research Quests by Kaleem Mcintyre.
Include Reservoir by Kaleem Mcintyre.
Include Misc 4 by Kaleem mcintyre.
Include Main Storyline by Stripes.
Include Candy Shop by Stripes.
Include Bouncy Castle by Stripes.
Include Sea Lion and Orca for FS by Stripes.
Include Random Events by Hiccup.
Include High Rise Events by Stripes.
Include Hyena Bikers by Stripes.
Include Stable Related Events by Sarokcat.
Include Red Events by Stripes.
Include Dry Plains Events by Stripes.
Include Junkyard Events by Stripes.
Include Campus Events by Stripes.
Include Leonard Events by Stripes.
Include Latex Quad Husky by Stripes.
Include CEOutside by Stripes.
Include CEPark by Stripes.
Include New Events by Sarokcat.
Include Fair Events by Sarokcat.
Include Mall Events by Sarokcat.
Include Beach Events by Sarokcat.
Include Park Events by Sarokcat.
Include Museum Events by Sarokcat.
Include Museum Rounds for FS by Stripes.
Include Zoo Events by Sarokcat.
Include Fair Events by Sarokcat.
Include Stable Related Quests by Sarokcat.
Include Capitol Events by Blue Bishop.
Include Warehouse Events by StripeGuy.
Include Infected Pool for FS by Hellerhound.
Include Hyena Situations by Hellerhound.
Include Catapult Encounter by Hellerhound.
Include Toy Store by Hellerhound.
Include Assorted Events by Stripes.
Include Food and Water Finding by Nuku Valente.
Include Scavevents by Stripes.
Include Combat Helmet by Nuku Valente.
Include Odd Weapons for FS by Hellerhound.
Include Control Pills by Hellerhound.
Include giving in by Core Mechanics.
[Include Addiction by Hellerhound.]		[***removed as largely unused and kinda broken]
Include Smell by Core Mechanics.
Include Inventory Management Enhancements for FS by Core Mechanics.
Include Storage Locker for FS by Core Mechanics.
Include Story Skipper by Core Mechanics.
Include Settings Menus by Core Mechanics.
Include Patreon Menu by Stripes.
[Include items by Zero.]
Include Central Library by Stripes.
Include Smith Haven Mall by Guest Writers.
Include Brookstone Books by Guest Writers.
Include Kitsune by Kaleem mcintyre.
Include Old BoomBox by Kaleem mcintyre.
Include Little Old Woman by Kaleem mcintyre.
Include Extra Added Scenes by Kaleem mcintyre.
Include More Misc Events by Kaleem mcintyre.
Include Misc 3 by Kaleem mcintyre.
Include Misc Scene 5 by Kaleem mcintyre.
Include Misc 6 by Kaleem mcintyre.
Include Misc 7 by Kaleem mcintyre.
Include Misc 8 by Kaleem mcintyre.	[***content temporarily closed for space]
Include Misc 9 by Kaleem mcintyre.
Include Misc 10 by Kaleem mcintyre.
Include How High by Kaleem mcintyre.
Include Disorganization by Kaleem mcintyre.
Include Soldier Events by Wahn.
Include Endings by Darthan.
Include Underground Events by Wahn.
Include Sugar Feud by AGentlemanCalledB.
Include Satyr Frat by Wahn.
Include Pet Shop Event by Stripes.
Include Zoo Events by Wahn.
Include Shrinking Shrooms by Defth.
Include Forest Events by Aureas Gigas.
Include Ancient Tome by Wahn.
Include Dmitri the Peacock by Aureas Gigas.
Include Forest Gang Bang by Defth.
Include Forest Events by Defth.
[Monsters/Infections]
Include Easter Bunny by Stripes.
Include Wyvern For Fs by Damaged.
Include Candy Striper by Stripes.
Include Equine for FS by Nuku Valente.
Include Demon Brute For Fs by Wahn.
Include Mul by Wahn.
Include Awesome Tree For Fs by Damaged.
Include Centaur by Hellerhound.
Include Skunk For Fs by Damaged.
Include Skunkbeast Lord by Stripes.
Include Mental Mouse For Fs by Stripes.
Include Sierrasaur by Blue Bishop.
Include Lusty Skunk by Nuku Valente.
Include Tigress Hooker for FS by Stripes.
Include Parasitic Plant For Fs by Guest Writers.
Include Alpha Husky by Sarokcat.
Include Hyena Matriarch by Stripes.
Include Bald Eagle For Fs by Stripes.
Include Jaguar Orderly For Fs by Stripes.
Include Wolverine Guard for FS by Stripes.
Include Kangaroo by Guest Writers.
Include Ewe by Sarokcat.
Include Ram by Sarokcat.
Include Naughty Nurse by Stripes.
Include Sabretooth by Sarokcat.
Include Anime Babe for FS by Stripes.
Include Small Feline And Lion For Fs by Damaged.
Include Spidergirl For Fs by Guest Writers.
Include Bottlenose Toy For Fs by Stripes.
Include otter by Nuku Valente.
Include Sugar Glider by AGentlemanCalledB.
Include Slutrat by Nuku Valente.
Include Mall Rat For Fs by Stripes.
Include Random Tentacle Horror For Fs by Guest Writers.
Include Mismatched Chimera For Fs by Stripes.
Include Enhanced Chimera by Stripes.
Include Rubber Tigress by Sarokcat.
Include Vulpogryph For Fs by Stripes.
Include Cerberus For Fs by Stripes.
Include Cheetah by Sarokcat.
Include Rhino For Fs by Stripes.
Include Gels by Darthan.
Include Pirate Shark by Sarokcat.
Include Bear For Fs by Nuku Valente.
Include Hulking Cheerleader by Wahn.
Include Friendship Pony for FS by Stripes.
Include Satyr by Sarokcat.
Include Centaur Stallion For Fs by Stripes.
Include Orc Infections by Wahn.
Include Tiger Cop for FS by Stripes.
Include Spidertaur Male by Wahn.
Include Butterfly for FS by Guest Writers.
Include Viking by Wahn.
Include Wolfman by Wahn.
Include Gator by Nuku Valente.
Include Margay For Fs by Stripes.
Include Xeno for FS by Stripes.
Include Alien Felinoid For FS by Damaged.
Include Jaguar Warrior by AGentlemanCalledB.
Include Catgirl by Wahn.
Include Male Peacock for FS By Guest Writers.
Include Cute Chinchilla Girl For FS by Guest Writers.
Include Fire Sprite by AGentlemanCalledB.
Include sprite by Nuku Valente.
Include Reindeer by Stripes.
Include Snake For Fs by Stripes.
Include Feral Wolf for FS by Stripes.
Include Panther Taur by Nuku Valente.
Include Chocolate Lab by Stripes.
Include Leopardman by Sarokcat.
Include jackalman by Sarokcat.
Include Twisted Pimp by Sarokcat.
Include Amazonian for FS by Stripes.
Include Pewter Consort By Blue Bishop.
Include Maternity Lamia By Blue Bishop.
Include Queen Bee for FS by Stripes.
Include Saber Kitty by Blaydrex.
Include Naga by Nuku Valente.
Include Goo Girl by Nuku Valente.
Include Latex Fox by Nuku Valente.
Include Hermaphrodite Gryphon by Nuku Valente.
Include Drone Wasp by Nuku Valente.
Include Blob by Kaleem Mcintyre.
Include Great Dane Rouge by Kaleem Mcintyre.
Include Hyperskunk for FS by Stripes.
Include Female Husky by Nuku Valente.
Include Yamato Dragon For FS by Blue Bishop.
Include Yamato Dragoness For FS by Blue Bishop.
Include Ashen Breeder For Fs by Stripes.
Include Lizard Girl For Fs by Damaged.
Include Random Shemale Smooth Collie For Fs by Guest Writers.
Include Bovine For Fs by Damaged.
Include Herm Hyena for FS by Guest Writers.
Include Cannon by Hiccup.
Include Pit Bull For FS by Guest Writers.
Include Painted Wolf Herm by Guest Writers.
Include MothGirl for Fs by Guest Writers.
Include Feral Sea Dragon by Blue Bishop.
Include Feral Sea Dragoness by Blue Bishop.
Include Anthro Shaft Beast for FS by Guest Writers.
Include Feral Shaft Beast for FS by Guest Writers.
Include Wrestling Wolf For Fs by Guest Writers.
Include Donkeywoman by Sarokcat n Verath.
Include Mareslut by Sarokcat.
Include Stallionboi by Sarokcat n Verath.
Include Donkeyman by Sarokcat n Verath.
Include Horseman by Sarokcat n Verath.
Include Harpy by Nuku Valente.
Include Feline Gymnast by Guest Writers.
Include Teddy Bear by Sarokcat.
Include Alpha Wolf by Sarokcat.
Include Plush Lion by Sarokcat.
Include Greek Nymph by Sarokcat.
Include Panda by Sarokcat.
Include Gazelle by Sarokcat.
Include Zebra by Sarokcat.
Include Tiger by Sarokcat.
Include Tigertaur by Sarokcat.
Include Sphinx by Sarokcat.
Include Jackalboy by Sarokcat.
Include Wolftaur by Sarokcat.
Include Panther Herm by Sarokcat.
Include Succubus by Sarokcat.
Include Hawkman by Sarokcat.
Include Unicorn by Sarokcat.
Include Arctic Fox by Sarokcat.
Include Nightmare by Sarokcat.
Include Mannequin by Wahn.
Include Sand Man by Wahn.
Include Naiad by Wahn.
Include Furling by Wahn.
Include Spartan by Wahn.
Include Helot by Wahn.
Include Gryphons Plot for FS by Hellerhound.
Include Dolphin for FS by Hellerhound.
Include Dryad for FS by Hellerhound.
Include Feral Cheetah for FS by Hellerhound.
Include Latex Wolf for FS by Stripes.
Include Hermaphrodite Latex Vixen for FS by Guest Writers.
Include Rabbit Pack for FS by Guest Writers.
Include Fennec For Fs by Stripes.
Include Triceratops For Fs by Stripes.
Include Siamese Cats by Stripes.
Include Albino Mouse by Stripes.
Include Cat Ninjas by Stripes.
Include Flaming Lynx for FS by Stripes.
Include Komodo Dragon for FS by Stripes.
Include Beaver for FS by Stripes.
Include Giant for FS by Stripes.
Include Snow Leopard for FS by Stripes.
Include Grey Squirrel for FS by Stripes.
Include Dragontaur for FS by Stripes.
Include Vixentaur for FS by Stripes.
Include Dracovixentaur for FS by Stripes.
Include Flesh Blob for FS by Stripes.
Include Corrupted Spawner for FS by Stripes.
Include Salamander by Stripes.
Include Inflatable Vulpine for FS by Stripes.
Include German Shepherd for FS by Stripes.	[replaces 'Random German Shepherd for Fs']
[Include Strange Slut by Zero.]
[Include Dominator by Zero.]
[Include Random German Shepherd For Fs by Guest Writers.]
Include Messy Pig for Fs by Guest Writers.
Include Piggy by Stripes.
Include Elf by Nuku Valente.
Include Cougar by Stripes.
Include Megakitty For Fs by Stripes.
Include Clockwork Fox For Fs by Stripes.
Include Killer Whale For Fs by Stripes.
Include Rodeo Clown For Fs by Stripes.
Include Fluffy Owl For Fs by Stripes.
Include Siren For Fs by Stripes.
Include Werewolf Costume For Fs by Stripes.
Include Hippo Strongman For Fs by Stripes.
Include Squid For Fs by Stripes.
Include Centaur Mare For Fs by Stripes.
Include Prairie Dog For Fs by Stripes.
Include Wildcat For Fs by Stripes.
Include Goblin For FS by Blue Bishop.
Include Junkman For FS by Stripes.
Include Trash Coon For FS by Stripes.
Include Snow Bat For Fs by Stripes.
Include Psycho Weasel For Fs by Stripes.
Include Incubus For Fs by Stripes.
Include Bunny Jock For Fs by Stripes.
Include Mammoth For Fs by Stripes.
Include Black Wolf For Fs by Stripes.
Include Latex Mistress For Fs by Stripes.
Include Math Teacher For Fs by Stripes.
Include Dark Elf for FS by Stripes.
Include Automaton for FS by Stripes.
Include Hentai Fan for FS by Stripes.
Include Quilled Tousky for FS by Stripes.
Include Giraffe for FS by Stripes.
Include Bird of Paradise for FS by Stripes.
Include Fire Elemental for FS by Stripes.
Include Corota for FS by Stripes.
Include Ocelot for FS by Stripes.
Include Blue Chaffinch for FS by Stripes.
Include Latex Ermine for FS by Stripes.
Include Hydra Beast for FS by Stripes.
Include Red Oni for FS by Stripes.
Include Elk for FS by Stripes.
Include Voodoo Gecko for FS by Stripes.
Include Magic Drake by Stripes.
Include Rubber Drake by Stripes.
Include Koballoon by Stripes.
Include Horny Doctor for FS by Stripes.
Include Fruit Bat for FS by Stripes.
Include Knight for FS by Stripes.
Include Squire for FS by Stripes.
Include Breederslut by Stripes.
Include Bobcat for FS by Stripes.
Include Gunbunny for FS by Stripes.
Include Elven Hunter For Fs by Wahn.
Include Human Infections by Wahn.
Include Reptaur by Kaleem mcintyre.
Include Pegasus by Kaleem mcintyre.
Include Gargoyle by Kaleem mcintyre.
Include Manticore by Kaleem mcintyre.
Include Minotaur by Kaleem mcintyre.
Include Dalmatian by Kaleem mcintyre.
Include Behemoth by Kaleem mcintyre.
Include Goat Janitor by McRabid.
Include Nerdy Mouse by McRabid.
Include Coyote by Darthan.
Include Mushroom Men by AGentlemanCalledB.
Include Retriever by AGentlemanCalledB.
Include Cum Girl by AGentlemanCalledB.
Include Francois Infections by AGentlemanCalledB.
Include Pink Poodle by AGentlemanCalledB.
Include Doberman for FS by Stripes.
Include Sugar Ferret for FS by Stripes.
Include Badger by StripeGuy.
Include Opossum Sailor by StripeGuy.
Include Tenrec by StripeGuy.
Include Yuppie Mink by StripeGuy.
Include Caveman by TheRecipe.
Include Seraphim by Wahn.
Include Cowboy Cuntboy by Wahn.
Include Thought Eater by Wahn.
Include Batcubus for FS by Blaydrex.
Include Horse-Hung Nerd by Wahn.
Include Grizzly Bear by UrsaOmega.
Include Impala by UrsaOmega.
Include Feral Gryphon by UrsaOmega.
Include Shadow Beast by UrsaOmega.
Include Hermaid by Xenophiliac.
Include Foul Scuttler by Xenophiliac.
Include Monkey King by Kln.
Include Gorilla by Wahn.
Include Mpreg Platypus by Sapphire.
Include Erica by Wahn.
Include Jackal Guard by Xenophiliac.
Include Scarab Beetle by Xenophiliac.
Include Ebonflame Dragator by Blue Bishop.
Include Ebonflame Whelp by Blue Bishop.
Include Ebonflame Draken by Blue Bishop.
Include Homo Sapiens by Wahn.
Include Satyress by Wahn.
Include Razorback Boar by Wahn.
Include Imp by Wahn.
Include Taurus by Defth.

[NPCs]
Include Velos by Blue Bishop.
Include Doran by Blue Bishop.
Include Phantom Dolphin by Blue Bishop.
Include Phantom Pony by Blue Bishop.
Include Stuck Dragon by Stripes.
Include DrMoffatt by Stripes.
Include DrUtah by Stripes.
Include RodAndRonda by Stripes.
Include Lucy by Stripes.
Include Larissa for FS by Stripes.
Include Matriarch NPC by Stripes.
Include Garrett by Stripes.
Include Tanuki by Nuku Valente.
Include Mouse Taur by Nuku Valente.
Include Deer by Stripes.
Include Informant by Kaleem mcintyre.
Include Lance by Verath.
Include Palomino by Verath.
Include Tristian by Verath.
Include Fancy by Sarokcat n Verath.
Include Daisy by Sarokcat n Verath.
Include Onyx by Sarokcat n Verath.
Include Brian by Sarokcat.
Include Diego by Wahn.
Include Timothy by Sarokcat.
Include Sarah by Wahn.
Include Nermine by Sarokcat.
Include Lindsey by Sarokcat.
Include Angie by Sarokcat.
Include Midnight by Sarokcat.
Include Harold by Sarokcat.
Include Kara by Sarokcat.
Include Janice by Sarokcat.
Include Kristen by Stripes.
Include Alex by Stripes.
Include Hadiya by Stripes.
Include Desperate Bunny by Nuku Valente.
Include Hyper Squirrel by Nuku Valente.
Include Hungry Boar Man by Stripes.
Include Orthas by Stripes.
Include Sven by Stripes.
Include Frank by Stripes.
Include Sally by Stripes.
Include Alexandra by Stripes.
Include Jimmy by Stripes.
Include Paula by Stripes.
Include Master Mind by Stripes.
Include Icarus by Stripes.
Include Hayato by Stripes.
Include Zigor by Stripes.
Include Yolanda by Stripes.
[Include Max by Zero.]
Include Fang by Stripes.
Include Blanche by Stripes.
Include Joanna by Stripes.
Include Solstice by Stripes.
Include Leonard by Stripes.
Include Athanasia by Stripes.
Include Newt by Stripes.
Include Andrew by Stripes.
Include Brooke by Stripes.
Include Sam for FS by Stripes.
Include Mack for FS by Stripes.
Include Meredith by Stripes.
Include Stella by Stripes.
Include Bubble by Stripes.
Include G-Shep Squad by Stripes.
Include Micaela by Stripes.
Include Sidney by Stripes.
Include Dominick by Stripes.
Include Bradford by Stripes.
Include Cindy by Stripes.
Include Alpha Fang Scenes by Nuku Valente.
Include Elijah by Wahn.
Include Eric by Wahn.
Include Stag by Wahn.
Include Thomas by Wahn.
Include RexxyEvent by AGentlemanCalledB.
Include Francois by AGentlemanCalledB.
Include Karen by AGentlemanCalledB.
Include Felix by Wahn.
Include Campus Gym by UrsaOmega.
Include Lilith by Wahn.
Include Coleen by Sarokcat.
Include Vanessa by Stripes.
Include Gwen by Stripes.
Include Nadia by Wahn.
Include Zephias by Wahn.
Include David by Wahn.
Include Amy by Wahn.
Include Carl by Wahn.
Include HornyHorsey by femtoAmpere.
Include Rane by Wahn.
Include Orc Lair by Wahn.
Include Val by Wahn.
Include Chris by Wahn.
Include NPC Interactions by Wahn.
Include Pretty Kitty by Xenophiliac.
Include Santa Claws by Wahn.
Include Erica by Wahn.
Include Egyptian Wing by Xenophiliac.
Include Wild Mustang by Wahn.
Include Boghrim by Wahn.
Include Bastet by Wahn.
Include Denise by Wahn.
Include Danny by Wahn.
Include Ares by Wahn.
Include Urik by Wahn.
Include Finn by Wahn.
Include Wendy by Wahn.
Include Corbin by Wahn.
Include Anthony by Wahn.
Include Duke by Wahn.
Include Skarnoth by Wahn.
Include Farmhands by Wahn.
Include Alexandra Cuckolding by Wahn.
Include Orc Female by Wahn.
Include LiquidShifter by ssely.
Include Blake by Ssely.

[Pets]
Include Gryphon Companion by Sarokcat.
Include Little Fox by Sarokcat.
Include Felinoid Companion by Sarokcat.
Include Kitty Cat by Sarokcat.
Include Skunk Pet by Sarokcat.
Include Exotic Bird by Sarokcat.
Include Rachel Mouse by Stripes.
Include Honey by Stripes.
Include Artemis by Stripes.
Include Hobo by Stripes.
Include Aurora by Stripes.
Include Ryousei by Wahn.
Include Korvin by Stripes.

When play ends:
	say "----------[line break]";
	say "I hope you enjoyed playing that as much as we enjoyed coding/writing it! It doesn't have to end here though! Come join other mutants and play in the Flexible Survival universe with us!";
	say "http://flexiblesurvival.com/[line break]";
	say "Once you have a character, click [']direct control['], and we'll be there, waiting to give a hand!";
	say "Already have a MUD/MUCK/MUSH client? We're at flexiblesurvival.com port 2222";

Book - Start the Game

instead of going somewhere while player is overburdened:
	say "You are too over burdened to move. Drop some of that junk!";

instead of going through a dangerous door(called X):
	if the hp of the player is less than 1:
		say "You are too injured to go far. You rest instead.";
		Rest;
	otherwise:
		now battleground is marea of x;
		follow the explore rule;
[		change the current menu to the table of Basic Actions;
		carry out the displaying activity;
		clear the screen;]
	[try looking.]


gsgl is a number that varies. gsgl is usually 1.

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
		say "(5) [link]Shemale[as]5[end link] - You will trend to the configuration of a herm -- however lacking female genitalia.";
		say "(6) [link]Cuntboy[as]6[end link] - You will trend to the configuration of a female -- however lacking any breasts.";
		say "(7) [link]Male Herm[as]7[end link] - You will trend to the configuration of a herm -- however lacking any breasts.";
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
			otherwise:
				say "Invalid Entry";
		if calcnumber is not 0:
			now gsgl is calcnumber;
			now gsexit is 1;
		otherwise:
			now gsexit is 1;

to startgenderlockget:
	say "Locking Gender...";
	if gsgl is 2:
		now gsgl is a random number between 3 and 11;
	if gsgl is not 1 or gsgl is not 0:
		if gsgl is 3:
			say "Locked to male gender.";
			add "Male Preferred" to feats of player;
		otherwise if gsgl is 4:
			say "Locked to female gender.";
			add "Female Preferred" to feats of player;
		otherwise if gsgl is 5:
			say "Locked to shemale configuration.";
			add "Male Preferred" to feats of player;
			add "Breasts" to feats of player;
		otherwise if gsgl is 6:
			say "Locked to cuntboy configuration.";
			add "Female Preferred" to feats of player;
			add "Flat Chested" to feats of player;
		otherwise if gsgl is 7:
			say "Locked to male herm configuration.";
			add "Herm Preferred" to feats of player;
			add "Flat Chested" to feats of player;
		otherwise if gsgl is 8:
			say "Locked to herm configuration.";
			add "Herm Preferred" to feats of player;
		otherwise if gsgl is 9:
			say "Male anatomy locked in.";
			add "Always Cocky" to feats of player;
		otherwise if gsgl is 10:
			say "Female anatomy locked in.";
			add "Always A Pussy" to feats of player;
		otherwise if gsgl is 11:
			say "Locked to a singular gender at a time.";
			add "Single Sexed" to feats of player;
		otherwise if gsgl is 12:
			say "Locked to be flat chested.";
			add "Flat Chested" to feats of player;
		otherwise if gsgl is 13:
			say "Locked to male or cuntboy.";
			add "Single Sexed" to feats of player;
			add "Flat Chested" to feats of player;

To startFeatget: [alternate featget used for start] [Checkpoint-]
	say "Select a basic feat.  This represents a skill or innate ability you have.";
	blank out the whole of table of gainable feats;
	repeat with x running through functional featsets:
		try addfeating x;
	if there is no title in row 1 of table of gainable feats:
		say "There are no feats to gain!";
		wait for any key;
	otherwise:
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
				say "[title entry]: [description entry][line break]";
				say "Is this what you want?";
				if the player consents:
					now freefeatgeneral is the title in row calcnumber of table of gainable feats; [important change from regular featget]
					now featqualified is 0;
				break; [if featqualified is 0, ]
			otherwise if playerinput matches "0":	[do not use calcnumber, as non-numbers will return 0]
				say "Selection aborted.";
				continue the action;
			otherwise:
				say "Invalid Feat.";

To startFunFeatget: [alternate funfeatget used for start]
	say "Select a fun feat.  This represents some strange quirk or effect induced by the nanites.";
	blank out the whole of table of gainable feats;
	repeat with x running through not functional featsets:
		try addfeating x;
	if there is no title in row 1 of table of gainable feats:
		say "There are no feats to gain!";
		wait for any key;
	otherwise:
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
				say "[title entry]: [description entry][line break]";
				say "Is this what you want?";
				if the player consents:
					now freefeatfun is the title in row calcnumber of table of gainable feats; [important change from regular featget]
					now featqualified is 0;
				break; [if featqualified is 0, ]
			otherwise if playerinput matches "0":	[do not use calcnumber, as non-numbers will return 0]
				say "Selection aborted.";
				continue the action;
			otherwise:
				say "Invalid Feat.";

to randomstatstart:	[same total points, but spread randomly between 10 to 18]
	now the strength of the player is 10;
	now the Dexterity of the player is 10;
	now the Stamina of the player is 10;
	now the Charisma of the player is 10;
	now the Perception of the player is 10;
	now the Intelligence of the player is 10;
	[Boost two stats for increased spread in results]
	let T be a random number between 1 and 6;
	if T is 1:
		increase strength of player by 3;
	if T is 2:
		increase dexterity of player by 3;
	if T is 3:
		increase stamina of player by 3;
	if T is 4:
		increase charisma of player by 3;
	if T is 5:
		increase perception of player by 3;
	if T is 6:
		increase intelligence of player by 3;
	now T is a random number between 1 and 6;
	if T is 1:
		increase strength of player by 2;
	if T is 2:
		increase dexterity of player by 2;
	if T is 3:
		increase stamina of player by 2;
	if T is 4:
		increase charisma of player by 2;
	if T is 5:
		increase perception of player by 2;
	if T is 6:
		increase intelligence of player by 2;
	now tempnum is 12;	[remaining 12 points applied randomly one at a time]
	while tempnum is not 0:
		now T is a random number between 1 and 6;
		decrease tempnum by 1;
		if T is 1:
			increase strength of player by 1;
			if strength of player > 18:
				now strength of player is 18;
				increase tempnum by 1;
		if T is 2:
			increase dexterity of player by 1;
			if dexterity of player > 18:
				now dexterity of player is 18;
				increase tempnum by 1;
		if T is 3:
			increase stamina of player by 1;
			if stamina of player > 18:
				now stamina of player is 18;
				increase tempnum by 1;
		if T is 4:
			increase charisma of player by 1;
			if charisma of player > 18:
				now charisma of player is 18;
				increase tempnum by 1;
		if T is 5:
			increase perception of player by 1;
			if perception of player > 18:
				now perception of player is 18;
				increase tempnum by 1;
		if T is 6:
			increase intelligence of player by 1;
			if intelligence of player > 18:
				now intelligence of player is 18;
				increase tempnum by 1;

To startfreefeats: [gives free feats]
	now autofeatloading is true;			[temporarily skips asking permission to add preset feats]
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
		featget;		[reverts to standard method]
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
			decrease featgained of player by 1;
			break;
	if current menu selection is 0:
		say "Invalid Feat: Select a new choice now.";
		now autofeatloading is false;
		funfeatget;		[reverts to standard method]
		now autofeatloading is true;
	now autofeatloading is false;


To startcreatureban: [bans creatures, as requested]
	say "Banning creatures...";
	repeat through the table of random critters:
		let bad be 0;
		repeat with n running through all banned flags:
			if name entry is listed in infections of n:
				now bad is 1;
		if bad is 1:
			blank out the whole row;
	say "Banning situations...";
	repeat with n running through situations:
		let bad be 0;
		repeat with q running through all banned flags:
			if n is listed in badspots of q:
				say "[n] removed due to [q].";
				now bad is 1;
		if bad is 1:
			now n is resolved;
	say "Sorting creatures...";
	sort table of random critters in lev order;


Section Story Start Text

To regularstart: [normal start method]
	if invcolumns < 1 or invcolumns > 4, now invcolumns is 2;
	follow the random stats rule;
	now calcnumber is -1;
	let trixieexit be 0;
	while trixieexit is 0:
		clear the screen;
		say "[bold type]Character Creation:[roman type][line break]";
		say "(1) [link]Main Stat[as]1[end link] - [bold type][if gsms is 1]Strength[otherwise if gsms is 2]Dexterity[otherwise if gsms is 3]Stamina[otherwise if gsms is 4]Charisma[otherwise if gsms is 5]Perception[otherwise if gsms is 6]Intelligence[otherwise]Random[end if][roman type][line break]";
		say "(2) [link]Player Gender[as]2[end link] - [bold type][if gspg is 1]Male[otherwise]Female[end if][roman type][line break]";
		say "(3) [link]Game Type[as]3[end link] - [bold type][scenario][roman type][line break]";
		say "(4) [link]Difficulty Modes[as]4[end link] - [if gshm is false and gsnhm is false and gsbm is false][bold type]Normal[roman type][otherwise if gshm is true][bold type]Hard[roman type][end if][if gshm is true and ( gsnhm is true or gsbm is true )] | [end if][if gsnhm is true][bold type]No-Heal[roman type][end if][if gsnhm is true and gsbm is true] | [end if][if gsbm is true][bold type]Blind[roman type][end if][line break]";
[		say "(4) [link]Hard Mode[as]4[end link] - [bold type][if gshm is true]On[otherwise]Off[end if][roman type][line break]";	]
		say "(5) [link]Main Feat[as]5[end link] - [bold type][freefeatgeneral][roman type][line break]";
		say "(6) [link]Fun Feat[as]6[end link] - [bold type][freefeatfun][roman type][line break]";
		say "(7) [link]Gender Lock[as]7[end link] - [bold type][if gsgl is 1]None[otherwise if gsgl is 2]Random[otherwise if gsgl is 3]Male[otherwise if gsgl is 4]Female[otherwise if gsgl is 5]Shemale[otherwise if gsgl is 6]Cuntboy[otherwise if gsgl is 7]Male Herm[otherwise if gsgl is 8]Herm[otherwise if gsgl is 9]Always Cocky[otherwise if gsgl is 10]Always a Pussy[otherwise if gsgl is 11]Single Sexed[otherwise if gsgl is 12]Flat Chested[otherwise if gsgl is 13]Simplified Masculine[otherwise]ERROR[end if][roman type][line break]";
		say "[line break]";
		say "[bold type]Gameplay Options:[roman type][line break]";
		say "(8) [link]Banned/Warded Types[as]8[end link] - [menuwardlist] & [menubanlist] [line break]";
		say "(9) [link]Anal Content[as]9[end link] - [bold type][if anallevel is 1]Less[otherwise if anallevel is 2]Normal[otherwise if anallevel is 3]More[end if][roman type][line break]";
		say "(10) [link]WS Content[as]10[end link] - [bold type][if wslevel is 1]None[otherwise if wslevel is 2]Normal[otherwise if wslevel is 3]Full[end if][roman type][line break]";
		say "(11) [link]Vore/UB Content[as]11[end link] - Vore: [bold type][if vorelevel is 1]None[otherwise if vorelevel is 2]Normal[otherwise if vorelevel is 3]Full[end if][roman type] - Unbirth: [bold type][if ublevel is 1]None[otherwise if ublevel is 2]Normal[otherwise if ublevel is 3]Full[end if][roman type][line break]";
		say "(12) [link]Ovi Pregnancy[as]12[end link] - [bold type][if ovipreglevel is 1]Never[otherwise]Normal[end if][roman type][line break]";
		say "[line break]";
		say "[bold type]Display Options:[roman type][line break]";
		say "(13) [link]Hyperlinks[as]13[end link] - [bold type][if hypernull is 0]On[otherwise if hypernull is 1]Off[end if][roman type][line break]";
		say "(14) [link]Waiting for Input[as]14[end link] - [bold type][if waiterhater is 0]On[otherwise if waiterhater is 1]Off[end if][roman type][line break]";
		say "(15) [link]Screen Clearing[as]15[end link] - [bold type][if clearnomore is 0]On[otherwise if clearnomore is 1]Off[end if][roman type][line break]";
		say "(16) [link]Graphics[as]16[end link] - [bold type][if graphics is true]On[otherwise]Off[end if][roman type][line break]";
		say "(17) [link]Inventory Columns[as]17[end link] - [bold type][invcolumns][roman type][line break]";
		say "[line break]";
		say "(99) [link]Restore a save[as]99[end link][line break]";
		say "(0) [link]Start Game[as]0[end link][line break]";
		while 1 is 1:
			say "(0-17)>[run paragraph on]";
			get a number;
			if ( calcnumber >= 0 and calcnumber <= 17 ) or calcnumber is 99:
				break;
			otherwise:
				say "Invalid Entry";
		if calcnumber is 1:
			say "[gsopt_1]";
		otherwise if calcnumber is 2:
			say "[gsopt_2]";
		otherwise if calcnumber is 3:
			say "[gsopt_3]";
		otherwise if calcnumber is 4:
			say "[gsopt_4]";
		otherwise if calcnumber is 5:
			startFeatget;
		otherwise if calcnumber is 6:
			startFunFeatget;
		otherwise if calcnumber is 7:
			genderlockmenu;
		otherwise if calcnumber is 8:
			if clearnomore is 0, clear the screen;
			new ban menu;
		otherwise if calcnumber is 9:
			try analadjusting;
		otherwise if calcnumber is 10:
			try WSadjusting;
		otherwise if calcnumber is 11:
			try voremenuing;
		otherwise if calcnumber is 12:
			try oviadjusting;
		otherwise if calcnumber is 13:
			if hypernull is 0:
				now hypernull is 1;
			otherwise:
				now hypernull is 0;
		otherwise if calcnumber is 14:
			if waiterhater is 0:
				now waiterhater is 1;
			otherwise:
				now waiterhater is 0;
		otherwise if calcnumber is 15:
			if clearnomore is 0:
				now clearnomore is 1;
			otherwise:
				now clearnomore is 0;
		otherwise if calcnumber is 16:
			if graphics is true:
				now graphics is false;
			otherwise:
				now graphics is true;
		otherwise if calcnumber is 17:
			say "[set_invcolumns]";
		otherwise if calcnumber is 99:
			now trixieexit is 1;
			try restoring the game;
			if maxhp of player is 0:
				now trixieexit is 0;
				try restarting the game;
		otherwise if calcnumber is 0:
			say "Confirm game start?";
			if player consents:
				say "[gsopt_start]";
				now trixieexit is 1;

to say menuwardlist:
	if furry is warded or guy is warded or girl is warded or humorous is warded or hellspawn is warded or hermaphrodite is warded:
		say "[bold type]Warded: [bracket] ";
		if feral is warded:
			say "Feral ";
		if furry is warded:
			say "Furry ";
		if guy is warded:
			say "Guy ";
		if girl is warded:
			say "Girl ";
		if hermaphrodite is warded:
			say "Hermaphrodite ";
		if humorous is warded:
			say "Humorous ";
		if hellspawn is warded:
			say "Hellspawn ";
		say "[close bracket][roman type]";
	otherwise:
		say "[bold type]None Warded[roman type]";

to say menubanlist:
	if furry is banned or guy is banned or girl is banned or humorous is banned or hellspawn is banned or hermaphrodite is banned:
		say "[bold type]Banned: [bracket] ";
		if feral is banned:
			say "Feral ";
		if furry is banned:
			say "Furry ";
		if guy is banned:
			say "Guy ";
		if girl is banned:
			say "Girl ";
		if hermaphrodite is banned:
			say "Hermaphrodite ";
		if humorous is banned:
			say "Humorous ";
		if hellspawn is banned:
			say "Hellspawn ";
		say "[close bracket][roman type]";
	otherwise:
		say "[bold type]None Banned[roman type]";

to say gsopt_1:
	now calcnumber is -1;
	let gsexit be 0;
	while gsexit is 0:
		say "[bold type]Select your main stat (+5 bonus):[roman type][line break]";
		say "(1) [link]Strength[as]1[end link] = [if gsms is 1][bold type]17[roman type][otherwise if gsms is 7]??[run paragraph on][otherwise]12[end if]: Represents your raw physical might and your ability to deal damage.";
		say "(2) [link]Dexterity[as]2[end link] = [if gsms is 2][bold type]17[roman type][otherwise if gsms is 7]??[run paragraph on][otherwise]12[end if]: Affects your likelihood to hit and dodge.";
		say "(3) [link]Stamina[as]3[end link] = [if gsms is 3][bold type]17[roman type][otherwise if gsms is 7]??[run paragraph on][otherwise]12[end if]: Increases your total health pool and your overall endurance.";
		say "(4) [link]Charisma[as]4[end link] = [if gsms is 4][bold type]17[roman type][otherwise if gsms is 7]??[run paragraph on][otherwise]12[end if]: Deals with social interactions with NPCs and your pets, and affects your morale.";
		say "(5) [link]Perception[as]5[end link] = [if gsms is 5][bold type]17[roman type][otherwise if gsms is 7]??[run paragraph on][otherwise]12[end if]: Influences your success while scavenging and hunting, success with ranged weapons and affects your morale.";
		say "(6) [link]Intelligence[as]6[end link] = [if gsms is 6][bold type]17[roman type][otherwise if gsms is 7]??[run paragraph on][otherwise]12[end if]: Increases the efficacy of healing medkits, your chances of vial collection (if able) and your success at escaping.";
		say "(7) [link]Random[as]7[end link]: Randomize your stat points upon creation.";
		say "[line break]";
		say "(0) [link]Return to main menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-7)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 7:
				break;
			otherwise:
				say "Invalid Entry";
		if calcnumber is not 0:
			now gsms is calcnumber;
			gs_stats;
			now gsexit is 1;
		otherwise:
			now gsexit is 1;


To gs_stats: [apply stat bonus]
	follow the random stats rule;	[resets all to 12]
	if gsms is 1:
		increase strength of player by 5;
	otherwise if gsms is 2:
		increase dexterity of player by 5;
	otherwise if gsms is 3:
		increase stamina of player by 5;
	otherwise if gsms is 4:
		increase charisma of player by 5;
	otherwise if gsms is 5:
		increase perception of player by 5;
	otherwise if gsms is 6:
		increase intelligence of player by 5;
	otherwise if gsms is 7 and started is 1:
		randomstatstart;
	otherwise if started is 1:
		say "Invalid stat choice - defaulting to random.";
		randomstatstart;


to say gsopt_2:
	if gspg is 1:
		now gspg is 2;
	otherwise:
		now gspg is 1;


to say gsopt_3:
	now calcnumber is -1;
	let gsexit be 0;
	while gsexit is 0:
		say "[bold type]Game Type:[roman type][line break]";
		say "(1) [link]Bunker[as]1[end link]: You managed to find your way to a bunker, where you hid away for some time. No special perks, default start.[bold type][if gsgt is 1]-Set[end if][roman type][line break]";
		say "(2) [link]Caught Outside[as]2[end link]: You were forced to survive outside. You have already been mutated a bit, though your practice has hardened you (Gain Spartan Diet).[bold type][if gsgt is 2]-Set[end if][roman type][line break]";
		say "(3) [link]Rescuer Stranded[as]3[end link]: You arrived late, looking for survivors, when you got cut off from your team mates, now you just want to survive (Start with no supplies, an iron man mode, can you survive?)![bold type][if gsgt is 3]-Set[end if][roman type][line break]";
		say "(4) [link]Forgotten[as]4[end link]: You stayed in hiding too long. Your supplies have run dry, and the rescue already came and left. It will be a long time before any more arrive![bold type][if gsgt is 4]-Set[end if][roman type][line break]";
		say "(5) [link]Researcher[as]5[end link]: You are not stranded at all. You came to explore, catalog, and interact with this absolutely fascinating outbreak. You've been given immunizations to casual infection(You won't transform from losing battles) and have specialized equipment that allows you to collect the infection vials of those you defeat.[bold type][if gsgt is 5]-Set[end if][roman type][line break]";
		say "[line break]";
		say "(0) [link]Return to main menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-5)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 5:
				break;
			otherwise:
				say "Invalid Entry";
		if calcnumber is 1:
			now scenario is "Bunker";
			now gsgt is 1;
			now gsexit is 1;
		otherwise if calcnumber is 2:
			now scenario is "Caught Outside";
			now gsgt is 2;
			now gsexit is 1;
		otherwise if calcnumber is 3:
			now scenario is "Rescuer Stranded";
			now gsgt is 3;
			now gsexit is 1;
		otherwise if calcnumber is 4:
			now scenario is "Forgotten";
			now gsgt is 4;
			now gsexit is 1;
		otherwise if calcnumber is 5:
			now scenario is "Researcher";
			now gsgt is 5;
			now gsexit is 1;
		otherwise:
			now gsexit is 1;

to say gsopt_4:
	now calcnumber is -1;
	let gsexit be 0;
	while gsexit is 0:
		say "[bold type]Difficulty Modes:[roman type][line break]";
		say "(1) [link]Hard Mode[as]1[end link]: [bold type][if gshm is true]On[otherwise]Off[end if][roman type][line break]     Hard Mode causes the powerful monsters to be randomly roaming, levels the monsters up alongside you, limits your use of the journal and adds other difficulties to further challenge you.";
		say "(2) [link]No-Heal Mode[as]2[end link]: [bold type][if gsnhm is true]On[otherwise]Off[end if][roman type][line break]     No-Heal Mode turns off the accelerated healing at the end of the turn.  Medkits and healing boosters heal more though.";
		say "(3) [link]Blind Mode[as]3[end link]: [bold type][if gsbm is true]On[otherwise]Off[end if][roman type][line break]     Blind Mode prevents hunting and scavenging for specific supplies.  You have a significantly increased chance of encountering something of interest while exploring though.";
		say "(0) [link]Return to main menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-3)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 3:
				break;
			otherwise:
				say "Invalid Entry";
		if calcnumber is 1:
			if gshm is false:
				now gshm is true;
				say "Hard Mode activated.";
			otherwise:
				now gshm is false;
				say "Hard Mode de-activated.";
		otherwise if calcnumber is 2:
			if gsnhm is false:
				now gsnhm is true;
				say "No-Heal Mode activated.";
			otherwise:
				now gsnhm is false;
				say "No-Heal Mode de-activated.";
		otherwise if calcnumber is 3:
			if gsbm is false:
				now gsbm is true;
				say "Blind Mode activated.";
			otherwise:
				now gsbm is false;
				say "Blind Mode de-activated.";
		otherwise:
			now gsexit is 1;


to say gsopt_start:
	now started is 1;
	if gspg is 1:	[male]
		now the cocks of the player is 1;
		now the cock length of the player is 6;
		now the cock width of the player is 4;
		now the breasts of the player is 2;
		now the breast size of the player is 0;
	otherwise:		[defaults to female]
		now the cunts of the player is 1;
		now the cunt length of the player is 6;
		now the cunt width of the player is 4;
		now the breasts of the player is 2;
		now the breast size of the player is 2;
	gs_stats;
	now the morale of the player is the charisma of the player plus the perception of the player;
	now the HP of the player is the stamina of the player times two;
	increase the HP of the player by 5;
	now the maxhp of the player is the hp of the player;
	now the capacity of the player is five times the strength of the player;
	now humanity of player is 100;
	if gsgl > 1, startgenderlockget;
	startfreefeats;
	startcreatureban;
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	sort table of random critters in lev order;
	if scenario is "Caught Outside":	[processes infection data first, then clears so intro text can remain intact]
		randominfect;
		randominfect;
		randominfect;
		randominfect;
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	say "Want more details on the game and updates? ----- [bold type]http://blog.flexiblesurvival.com/[roman type]  ------[line break][line break]";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	if scenario is not "Bunker":
		if scenario is "Caught Outside":
			add "Spartan Diet" to feats of player;
		if scenario is "Rescuer Stranded":
			now invent of bunker is { };
			add "cot" to invent of bunker;
			increase score by 300;
		if scenario is "Forgotten":
			now invent of bunker is { };
			add "cot" to invent of bunker;
			now the printed name of Doctor Matt is "Left Behind Recording of Doctor Matt";
			now the initial appearance of Doctor Matt is "A small recorder labeled 'Doctor Matt' remains abandoned.";
			now the description of Doctor Matt is "A small recorder labeled 'Doctor Matt' remains abandoned.";
			now the hp of doctor matt is 100;
			now the icon of doctor matt is figure of pixel;
			remove orthas from play;
			increase score by 600;
			extend game by 240;
	if gshm is true: [Hard mode alteration]
		increase score by 300;
		now hardmode is true;
		now levelwindow is 99999;
	if gsnhm is true: [No-heal mode alteration]
		increase score by 150;
		now nohealmode is true;
	if gsbm is true: [Blind mode alteration]
		increase score by 100;
		now blindmode is true;
	if scenario is "Bunker":
		say "You remember how it went down. Satellite, gone, Internet, offline. The power was the last thing to go, just a precious hour later. People wandered the streets, confused, panicked. Then they came. Monsters. Freaks. They'd grab people. Some got mauled on the spot and others were dragged off. You managed to escape to safety here - the old bunker. You remember seeing that stupid bunker sign for years, who knew remembering it would save your life? You waited for others to come. Surely you were not the only one to remember?";
		say "You've waited in the dark for others or rescue to come, but to no avail. You're not sure how long you've been down here, but the sounds have long since died away. You've eaten a good portion of the food and water. No choice but to go out and greet the city. At least you have your [bold type]backpack[roman type] and your [bold type]watch[roman type]. How bad could it be?";
	otherwise if scenario is "Caught Outside":
		say "You remember how it went down. Satellite, gone, Internet, offline. The power was the last thing to go, just a precious hour later. People wandered the streets, confused, panicked. Then they came. Monsters. Freaks. They'd grab people. Some got mauled on the spot and others were dragged off. Some fought back. You tried to resist, but did not escape unscathed.  In the end, you managed to get to safety here - the old bunker. You remember seeing that stupid bunker sign for years, who knew remembering it would save your life? You waited for others to come. Surely you were not the only one to remember?";
		say "You've waited in the dark for others or rescue to come, but to no avail. You're not sure how long you've been down here, but the sounds have long since died away. You've eaten a good portion of the food and water. No choice but to go out and greet the city. At least you have your [bold type]backpack[roman type] and your [bold type]watch[roman type]. How bad could it be?";
	otherwise if scenario is "Rescuer Stranded":
		say "You remember how it went down. Satellite, gone, Internet, offline. The power was the last thing to go, just a precious hour later. There were growing reports of monsters and freaks spreading across the city, attacking the citizens. You had been part of the military's fast response team sent in just hours after the outbreak. Your initial task was reconnaissance with the hopes of setting up a rally point for helicopter evacuation of any non-infected survivors.  You were sent in with little preparation and no idea at all of what you were truly in for.";
		say "Your team was moving on foot through the streets of downtown when you were set upon by creatures out of a pervert's nightmare. All discipline was lost as your team disintegrated into panic and fled unthinkingly into the city, pursued by the nightmares...";
		say "You awoke in what appears to be a disused bunker. You have no idea how you even got here or how long you've been out of it, but you are uninfected. In your panicked flight, you lost all of your supplies. No food. No water. No weapons. No radio. At least you have your backpack and your watch.";
		say "Heaven only knows what awaits you outside but, you have to find a way back.";
	otherwise if scenario is "Forgotten":
		say "You remember how it went down. Satellite, gone, Internet, offline. The power was the last thing to go, just a precious hour later. People wandered the streets, confused, panicked. Then they came. Monsters. Freaks. They'd grab people. Some got mauled on the spot and others were dragged off. You managed to escape to safety here - the old bunker. You remember seeing that stupid bunker sign for years, who knew remembering it would save your life? You waited for others to come. Surely you were not the only one to remember?";
		say "Terrified, you've waited in the dark, subsisting as long as you've can on your supplies for as long as you've been able.  While the noise of chaos died away for a long time, they picked up again with the addition of explosions and gunfire.  Fearing to exit, you remained in the safety of the bunker until it was peaceful again.  You wish you could continue to remain hidden, but you're finished off the very last of your supplies and you'll have to risk venturing out with only your [bold type]backpack[roman type], and your [bold type]watch[roman type].";
		say "Still... how bad could it be?";
	otherwise if scenario is "Researcher":
		say "You remember how it went down. Satellite, gone, Internet, offline. The power was the last thing to go.  Thankfully, you weren't in one of the outbreak zones when it happened, but your life's been thrown upside down like everyone else's by the ensuing chaos.  Seeing an opportunity to help, or at least make some money off the situation, you agreed to enter one of the hotspots through a military contractor.  The city's been cordoned off by the military while they gather intel and plan, giving you some time to gather samples and investigate what's happening.";
		say "The helicopter brought you into the devastated city. Ruin and strange creatures milled about beneath you as you flew over at high speed. This place has been written off as a loss, but there was rumor they'd take it back. You only have so much time to investigate, and you plan to make the most of it.";
		say "You're let down beside an old bunker. It would serve as your base of operations, and would be where they'd pick you up when it was over. You should be scared, but you just can't seem to muster that sensation. They gave you booster shots against the nanites as well as a few supplies and a promise of others joining you soon. You know what you are doing. They will be so proud of what you find. Maybe you can figure out a way to stop this from happening again in other cities.";
	say "No one else ever arrived, so you're on your own out here. Ah well, you're an American of the 21st century. What's a little Apocalypse to keep you down? Steeling your nerves and readying what you have, you break the seal and prepare to set out.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	say "[line break]";
	say "Welcome to...";
	[display the figure of title_graphic;]
	zephyrad rule in 1 turn from now;


to say set_invcolumns:
	now calcnumber is -1;
	let gsexit be 0;
	say "     How many columns would you like the inventory to display (1 - 4) or (0) to abort?";
	say "     [if invcolumns is not 1][link][bracket]1[close bracket][as]1[end link][otherwise][bold type][bracket]1[close bracket][roman type][end if]  [if invcolumns is not 2][link][bracket]2[close bracket][as]2[end link][otherwise][bold type][bracket]2[close bracket][roman type][end if]  [if invcolumns is not 3][link][bracket]3[close bracket][as]3[end link][otherwise][bold type][bracket]3[close bracket][roman type][end if]  [if invcolumns is not 4][link][bracket]4[close bracket][as]4[end link][otherwise][bold type][bracket]4[close bracket][roman type][end if]  [link][bracket]0[close bracket] - Abort[as]0[end link][line break]";
	while gsexit is 0:
		say "Choice? (0-4)>[run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber < 5:
			now invcolumns is calcnumber;
			now gsexit is 1;
		otherwise if calcnumber is 0:
			now gsexit is 1;
		otherwise:
			say "Invalid: Choose between 0 and 4.";


Book 10 - Let the Games Begin

understand "saveword" as savewording.
understand "save" as savewording.
understand "oldsave" as saving the game.

savewording is an action applying to nothing.

Carry out savewording:
	say "You can hear Trixie's voice in your mind, whispering the reality spell for the world as it is...";
	say "[magic word]";

to say promptsay:
	let x be the location of the player;
	let z be the number of entries in invent of x;
	if z is greater than 0:
		say "Visible Objects: ";
		repeat with q running through invent of x:
			say "[link][q][as]get [q][end link] ";
		say " [link]get everything[as]get all[end link]";
		say "[line break]";
	say "Status: ";
	if hunger of player is greater than 30:
		say "[link][bracket]HUNGRY[close bracket][as]eat food[end link] ";
	if thirst of player is greater than 30:
		say "[link][bracket]THIRSTY[close bracket][as]drink water[end link] ";
	if humanity of player is less than 50:
		say "[link][bracket]UNHINGED[close bracket][as]use journal[end link] ";
	say "[link][bracket]Inv[close bracket][as]inventory[end link] ";
	if scenario is "Researcher" or nanitemeter > 0:
		say "[link][bracket]Vial[close bracket][as]Vial Inventory[end link] ";
	say "[link][bracket]Rest[close bracket][as]rest[end link] ";
	say "[link][bracket]Save[close bracket][as]save[end link] ";
	say "[link][bracket]Restore[close bracket][as]restore[end link] ";
	say "[link][bracket]Saveword[close bracket][as]saveword[end link] ";
	if "Unerring Hunter" is listed in feats of player and there is a visible dangerous door:
		say "[link][bracket]Hunt[close bracket][as]huntinglist[end link] ";
	say "[line break]";
	say "Exits: ";
	repeat with nam running through valid directions:
		say "[link][printed name of nam][end link] ";
	say "[if location of player is fasttravel][bracket][link]nav[end link], [link]scavenge[end link], [link]explore[end link][close bracket][end if]";
	say ", Visible Things: ";
	repeat with y running through the things in the location of the player:
		if y is a door, next;
		if y is the player:
			say "[link][y][as]look me[end link] ";
			next;
		say "[link][y][as]look [y][end link] ";
	say "[link]area[as]look[end link]";
	say "[line break]>";

When play begins:
	repeat with x running through situations:
		now x is a part of the player;
	repeat with x running through grab objects:
		now x is a part of the player;
	now the command prompt is "[promptsay]";


When play begins:
	adjustdefaulthelp; [adjusts help menu]
	let tempname be indexed text;
	repeat with q running from 1 to the number of rows in the table of game objects:
		add name in row Q of table of game objects to allobjs;
		choose row q in the table of game objects;
		now tempname is name entry in lower case;
		now sortname entry is tempname;
	sort the table of game objects in sortname order;
	now the right hand status line is "[list of valid directions]";
	say "Before the game begins...";[warn the player what to expect next]
	say "Do you want hyperlinks? (Y/N)[line break]";
	if player consents:
		now hypernull is hypernull;
	otherwise:
		now hypernull is 1;
	repeat with x running through featsets:
		now x is a part of the player;
	if gsgt is 1:		[sets name of scenario for menu based on preset]
		now scenario is "Bunker";
	otherwise if gsgt is 2:
		now scenario is "Caught Outside";
	otherwise if gsgt is 3:
		now scenario is "Rescuer Stranded";
	otherwise if gsgt is 4:
		now scenario is "Forgotten";
	otherwise if gsgt is 5:
		now scenario is "Researcher";
	otherwise:
		now gsgt is 1;
		now scenario is "Bunker";
	if anallevel < 1 or anallevel > 3, now anallevel is 2;
	if WSlevel < 1 or WSlevel > 3, now WSlevel is 2;
	if ovipreglevel is not 1, now ovipreglevel is 2;
	increase the score by 10;
	let pointlessbump be 0;
	regularstart; [original start method.  easier to move everything then leave here]
