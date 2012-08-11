"Flexible Survival" by Nuku Valente

Book 0 - Pre game prep stuff

Release along with an interpreter.
Use memory economy.
Use slow route-finding.
Use MAX_INDIV_PROP_TABLE_SIZE of 500000.
Use MAX_PROP_TABLE_SIZE of 500000.
use MAX_STATIC_DATA of 1250000.
Use MAX_OBJ_PROP_COUNT of 128.
use MAX_SYMBOLS of 80000. [increase if "Translating the Source - Failed " and "Compiler finished with code 10" error occurs.]
use MAX_NUM_STATIC_STRINGS of 40000.
use ALLOC_CHUNK_SIZE of 95000.
use MAX_OBJECTS of 1000.
use MAX_ACTIONS of 300.
Use maximum indexed text length of at least 5000.
Include Basic Help Menu by Emily Short.
Include Version 4 of Menus by Emily Short.
Include Basic Screen Effects by Emily Short.

To say a/an (T - text):
	let Txt be indexed text;
	let Txt be T;
	if Txt matches the regular expression "^<aeiouAEIOU>":
		say "an ";
	otherwise:
		say "a ";
	say T.

To wait for any key:
	if hypernull is 0:
		say "[link]more[as] [end link][run paragraph on]";
	keypause;

to clear the screen and hyperlink list:
	clear the screen;
	now hyperlink list is {}.
[This must remain whole or errors from cleared hyperlinks can occur!]


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
"Items"	"You will come to have a variety of items. Here are some useful commands.[line break][line break]Item: See a list of items you own.[line break]look (item): Look at a specific item.[line break]use (item): Use an item[line break]get (item): grab a specific item.[line break]get all: get everything in the room."
"Weapons"	"Some items you find make good weapons! Be sure to [bold type]use (weapon)[roman type] before a battle to have them at hand."
"Scavenging"	"Type [bold type]scavenge[roman type] in any room you can fast travel from to hunt for food and water."
"Socializing"	"You can [bold type]talk (person)[roman type] to chat it up. If they are of more personal interest with you, you can also [bold type]fuck (person)[roman type]"
"Ending Early"	"Type [bold type]end now[roman type] to cause the game to end early."
"Play On"	"You want to skip that ending? Go for it. Type [bold type]play on[roman type] and time will cease to be a concern. You will not get endings though."
"Wait Less"	"Tired of having to click more to continue much of the text?. Type [bold type]Waits Off[roman type] to skip many delays.[line break]Don't like the change and want to go back?  Type [bold type]Waits On[roman type] to return to the default."
"Clear Less"	"Don't like the page clearing of text?  Want the combat interface at the bottom of the screen?  Type [bold type]Clears Off[roman type] to stop screen clearing.[line break]Don't like the change and want to go back?  Type [bold type]Clears On[roman type] to return to the default."
"Auto Attack"	"If you have the [']Instinctive Combat['] feat you can use different automatic attacks.  These are the same as picking the same option over and over again during combat.  No different results, just less typing for faster gameplay.[line break]Type [bold type]auto attack normal[roman type] for the default method of combat (choose each action).[line break]Type [bold type]auto attack berserk[roman type] to always attack in combat.[line break]Type [bold type]auto attack pass[roman type] to always pass in combat.[line break]Type [bold type]auto attack coward[roman type] to always flee in combat.[line break]Type [bold type]auto attack submit[roman type] to always submit in combat."

To adjustdefaulthelp: [changes table from Basic Help Menu by Emily Short to better fit this game, without changing that extension, as it may be used by other games]
	now the title in row 2 of Table of Instruction Options is "What to do with >";
	now the description in row 2 of Table of Instruction Options is "The > sign is where the game says, 'Okay, what do you want to do now?'  You may respond by typing an instruction -- usually an imperative verb, possibly followed by prepositions and objects.  So, for instance, LOOK, LOOK AT FISH, TAKE FISH.";
	now the title in row 1 of Table of Basic Help Options is "Q to quit help, enter to select entry";
	now the description in row 1 of Table of Basic Help Options is "Use arrows to navigate the help menu.[line break]Enter selects the entry that is marked with the >[line break]Q will take you back one level of help, or leave the help system if your at the top.";

Include (-

[ YesOrNo i j;
	PrintText((+ yes or no message +));
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
	      }	      PrintText((+ yes or no message +));
	}
];
-) instead of "Yes/No Questions" in "Parser.i6t".

The yes or no message is a text that varies. The yes or no message is "[link]yes[end link] or [link]no[end link]> [run paragraph on]".

playerinput is a snippet variable that varies.

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
The player has a text called skin. Skin is usually "smooth";
The player has a text called Cock. Cock is usually "";
The player has a text called face. Face is usually "charmingly human";
The player has a text called tail. tail is usually "";
The player has a text called body. Body is usually "charmingly human";
The player has a text called bodyname. Bodyname is usually "human";
The player has a text called facename. Facename is usually "human";
The player has a text called skinname. Skinname is usually "human";
The player has a text called cockname. cockname is usually "human";
The child has a text called bodyname. Bodyname is usually "human";
The child has a text called facename. Facename is usually "human";
The child has a text called skinname. Skinname is usually "human";
The child has a text called cockname. cockname is usually "human";
The child has a text called tailname. Tailname is usually "human";
The player has text called Cock Size Desc.
The player has text called Cunt Size Desc.
The player has text called Breast Size Desc.
The player has a text called tailname. Tailname is usually "human";
The player has a text called weapon. Weapon is usually "[one of]your quick wit[or]your fists[or]a quick kick[or]your body[or]some impromptu wrestling[or]an unarmed strike[at random]";
The player has a text called weapon type. Weapon type is usually "Melee";
A person has a number called Weapon damage. Weapon damage is usually 4.
A person has a list of text called conversation.

[See the BFandI extension for an explanation on these new variables.]
The player has a number called scalevalue.  The scalevalue is usually 3.						[value for body size]
The player has a text called bodydesc.  The bodydesc is usually "[one of]average[or]normal[or]unchanged[at random]";	[adjective for body type/appearance]
The player has a text called bodytype.  The bodytype is usually "human";						[broad adjective for species]
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
The player has a grab object called weapon object. A weapon object is usually journal;
A armament is a kind of grab object.
A armament has a text called weapon.
A armament has a text called weapon type.
A armament has a number called Weapon Damage.
An armament can be ranged or melee. An armament is usually melee.
Equipment is a kind of grab object.
Equipment can be equipped or not equipped. Equipment is usually not equipped.
Equipment has a text called descmod. The descmod of equipment is usually "";
Equipment has a text called placement. The placement of equipment is usually "end";
Equipment has a text called slot. The slot of equipment is usually "";
Equipment has a number called AC. The AC of equipment is usually 0.
A grab object can be temporary. A grab object is usually temporary.
A grab object can be fast. A grab object is usually not fast.
A grab object can be infectious. 
A grab object has a text called strain.
A grab object has a text called trade.
A grab object has a text called purified.
A grab object has a text called usedesc.
Turns is a number that varies. Turns is 240.
Hardmode is a truth state that varies. Hardmode is usually false;
Levelwindow is a number that varies. Levelwindow is 3;
Lastjournaluse is a number that varies. Lastjournaluse is 248;
Targetturns is a number that varies.
Started is a number that varies.
Freefeats is a number that varies.
Lost is a number that varies.
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
A featset is a kind of thing.
inasituation is a truth state that varies.  inasituation is normally false.

Definition: A grab object(called X) is wielded:
	if weapon object of player is x, yes;
	no;

Definition: A situation(called X) is close:
	if sarea of X matches the text battleground, case insensitively:
		if hardmode is true:
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

Definition: A person(called X) is male:
	if cocks of x is greater than 0, yes;

Definition: A person(called X) is female:
	if cunts of x is greater than 0, yes;
	
A person can be booked. A person can be bunkered. A person is usually not booked. A person is usually not bunkered.

Definition: A person(Called X) is booked:
	If x is the player, no;
	if the location of x is Grey Abbey Library, yes;
	no;

Definition: A person(Called X) is bunkered:
	If x is the player, no;
	if the location of x is Bunker, yes;
	no;


A thing can be rooted in place. A thing is usually not rooted in place.
A thing can be restful. A thing is usually not restful.
A door can be dangerous.
A door has a text called marea.
A room can be known or unknown. A room is usually unknown.
A room can be fasttravel. A room is usually not fasttravel.
A room can be private. A room is usually not private.
The player is wearing a watch.
The player is wearing a backpack. The description of the backpack is "A backpack, full of stuff. To look inside, type [bold type]item[roman type] To look at an item, type [bold type]look (item name)[roman type] To use an item, type [bold type]use (item name)[roman type]. Do you see something in the room you want to take with you? Type [bold type]grab (item name)[roman type] to snatch it up.";

instead of examining a grab object(called x):
	say "[the desc corresponding to a object of x in the table of game objects]";
	if "Weaponsmaster" is listed in feats of player and x is an armament:
		say "  Looking over the weapon with your expert knowledge, you assess it to be a [weapon damage of x] damage weapon.";

Does the player mean examining a situation: it is very unlikely.


Section Starting Variables

[ See the Default Settings/Presets.i7x file for personalizing your defaults. ]

startgenderchoice is a number that varies.
startstatbonus is a number that varies.
startscenariochoice is a number that varies.
freefeatgeneral is a text that varies.
freefeatfun is a text that varies.
hypernull is a number that varies. 


Book 2 - Places

Grey Abbey Library is a room.  Grey Abbey Library is fasttravel.
The description of Grey Abbey Library is "[abbey desc]".
Bunker is a room.  The description of Bunker is "[bunker desc]";

The invent of Bunker is { "face mask", "medkit","medkit","water bottle","water bottle","water bottle","food","food","pocketknife","cot" }.
Library door is a door. "Solid oak doors lend a stately appearance to the library.". Library door is dangerous.
East of 7th Street & Main is the Library Door. "Solid oak doors lend a stately appearance to the library.".
East of library door is Grey Abbey Library.
Inside of Grey Abbey Library is Bunker.
The player is in Bunker.
The marea of library door is "Outside";

to say bunker desc:
	say "     Sparsely appointed, the bunker was built back during the Cold War, then abandoned to become a forgotten curiosity at best.  Its walls are solid concrete and the shelves are at least in good repair.  There are several cots bolted to the floor and walls for those taking shelter here to [bold type]rest[roman type] upon";
	if "cot" is listed in invent of Bunker:
		say ".  One of the cots was poorly installed and the bolts attaching it to the floor have come loose.  You could take along if you'd like";
	say ".  The small sink seems to be broken, producing no water no matter how much the knob is turned. There is a secure looking door leading [bold type]outside[roman type].";
	if "old boombox" is listed in invent of Bunker:
		say "     You have set up the old boombox in one corner where it continues to play without power, providing a mix of tunes and the occasional weather report on the continuing heat wave.  Fiddling with the dials can get different songs and genres of music, but no actual news or broadcast radio.  The radio broadcaster you hear seems the same across the stations, though his tone and delivery suits the format of the current [']station['].  Its dials and settings change on their own from time to time as if to provide music to suit the situation or dropping its volume when you're taking a nap.";


to say abbey desc:
	say "     This converted abbey has been made into a small library and the architecture and design shows its origins despite the renovations made.  The simple columns, the wall sconces and several of the original features have been kept to give the library some 'character'.  The central room houses the stacks and a few desks, with side rooms set aside for reading and a couple of computers.  The computers would be more useful if there was power in the building.  You're still not entirely sure what knocked them out, but they're very out now.  You came here because you remembered there was a disused bunker in the basement.  It's kept you alive, so far.";
	if Fang is in the Grey Abbey Library:
		say "     Fang is on guard here by the door on his rope leash, tied to a [one of]column[or]desk[or]water fountain[or]metal staircase[or]wall sconce[at random].";

[
Smith Haven Mall Lot is a room. "A vast and sprawling parking lot puts you within walking distance of a large mall to the north. You remember coming here a lot more often when you were in school. It was 'the place' to be. Ah well, it's a fine [time of day], may as well go shopping."
It is fasttravel.
Mall Foodcourt is a room. "Just inside the exit to the parking lot to the south is the food court. There are many metal tables with uncomfortable looking plastic chairs. There are also many tiny eateries here, with the smaller stores arrayed out from them, beckoning your eyes towards them in consumeristic joy.".
The invent of Mall FoodCourt is { "chair","food" }.
North of Smith Haven Mall Lot is Mall FoodCourt. 
Mall Atrium is a room. "A large open area, oppressively gloomy without the light. Furtive movements can be seen. When one focuses, the mall rats are not hard to spot. They are harmless enough at least, even offering a nod or wave at times. There are some benches laid out for sitting on, half the time occupied by several mall rats. There is also a fountain, but no water gurgles, and what is left looks too dirty to drink.".
North of Mall Foodcourt is Mall Atrium.
Sewer Grating is a door. Sewer Grating is dangerous. 
Down of Mall Foodcourt is Sewer Grating.
Down of sewer grating is Sewers A7.
The marea of Sewer Grating is "Mall". The sewer grating is open. The description of sewer grating is "A sewer grate, broken open with bits of somewhat rusted iron strewn everywhere, some slime splattered about. Looks dangerous down there, but nothing ventured, nothing gained, right?"; understand "grate" and "grating" as the sewer grating.
]

Outside Trevor Labs is a room. "You[apostrophe]ve heard of Trevor Labs. They are, or is that were? a biopharm setup. Kind of new on the block, made a big stink over the local news with their willingness to skirt as close to the edge of most laws in the name of science. Well here[apostrophe]s the headquarters, rising as a sleek and tall glass building to your west. You[apostrophe]re not certain but you think you can see some light in one of the windows, visible in the [time of day] light. Curious.".
understand "lab" or "labs" as Outside Trevor Labs.
Outside Trevor Labs is fasttravel.
Away from Labs is a door. "East of here lays the rest of the city." It is dangerous. The marea of Away from Labs is "Outside". Away from labs is east of Outside Trevor Labs and west of Wandering the City.
Trevor Labs Lobby is a room. "The ground floor of Trevor Labs. New age furniture has been ripped to shreds and thrown around and unknown liquid is splattered all over the place. The smell is somewhere between burnt plastic and sweaty humanity in an unappealing mixture. Fortunately, the scent is fading with time. It's somewhat dark, but not too dark as to see the emergency stairs are still accessible going up and down.".
West of Outside Trevor Labs is Trevor Labs Lobby.
2F Trevor Labs is a room. "The second floor of the labs. The lighting is dim, except for brilliant light shining from beneath a closed door at the end of the hallway. It casts a cone of brightness into the gloom. The area is silent, and smells of disuse and long old disinfectant. There does not seem to be much here to look at besides a broken water cooler and a motivational poster with a kitten, encouraging you to hang in there.";
Trevor Labs Lobby is below 2F Trevor Labs.
Primary Lab is a room. "One of the few places in the city with working power, this lab is brilliantly lit, showing off banks of busy computer terminals displaying dizzying amounts of information, largely obscure and technical. Overhead, soft humming of air conditioning is the likely reason that the room feels just a bit chilly. There is an especially comfy chair resting before the largest computer. There is only one window here, and it is mostly blocked by filing cabinets. Perhaps it is the light you saw outside.";
Primary Lab is north of 2F Trevor Labs.
There is an Infection Terminal in Primary Lab. "A glowing infection terminal quietly lists all the infections in the corner.".

Park Entrance is a room. "Ah, the city park. Smell that fresh pine air, and the scent of, wait no, that grass has not been mowed for a while. Just how long were you in that bunker anyway? The grass is just starting to creep up onto the pavement that leads further into the park, Northwards. The wall remains largely intact, with a sign that welcomes you into the park, except during night hours, not that anyone is enforcing this rule at the moment.".
Park Entrance is fasttravel.
Park Trail is a room. "Following this North/South trail, you can see dense woods to either side. You could easily become lost in them, though perhaps exploring might have its own rewards. You can hear soft clopping sounds just beyond sight, and the occasional buzz of insects. The air is fresh here under the [short time of day] sky.".
North of Park Entrance is Park Trail.
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

There is a Cola Vending Machine in Mall Foodcourt. "A broken down vending machine lurks nearby with several, large, soda brands brightly painted onto it." It is fixed in place. It has a description "A vending machine. It appears to dispense soda, but it's broken.".
Cola Vending Machine has a number called dispensed.
understand "vending machine" as Cola Vending machine.

Vending is an action applying to one thing.
understand "use [cola vending machine]" as vending.

Carry out vending:
	say "It's broken! Damn. All that soda. How to get it out?" ;
	
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
		increase dispensed by 1;
	otherwise:
		say "Nothing happens...";
	if ( a random chance of 5 in 100 succeeds ) or dispensed of noun is greater than 9:
		say "The machine gives a final spark of defeat. You are certain there is no more soda to be had.";
		remove Cola Vending machine from play;

Section - Nanofab

[Nanofabricator: fabbing, consuming, stats, etc]

Table of Fabbable Items
object
water bottle
food
with 100 blank rows.
[this table is a work around, eventually a better fix should to be found.  perhaps a new column in the table of game objects? ]

There is a Nanofabricator in dark basement. [should be safely out of the way here until activated.  by a quest? gathering stuff? whatever]["The library computer is wired into the infection scanner and nanite transmitter.  All of which are spliced to the Zephyr Sanity Containment Module (patent pending).  Generous amounts of duct tape cover the contraption." unneeded text?] It is fixed in place. It has a description "The nanofabricator.  You can barely identify the parts that went into it, covered as they are in the layers of duct tape which holds the monstrosity together.  But at least it works, sort of, mostly, once in a while.[line break]Material stockpile is currently: [bold type][GenericNanoPastePool][roman type][line break]To increase stockpile: [bold type]Consume {item name}[roman type][line break]To make a known item: [bold type]Fab {item name}[roman type][line break]To list all known items: [bold type]Fablist[roman type][line break]".
understand "nanofab" as Nanofabricator.
GenericNanoPastePool is a number that varies.  GenericNanoPastePool is usually 0. [pool of material used for fabricating, starts empty]
FabricatingRateMultiplier is a number that varies.  FabricatingRateMultiplier is usually 11. [base cost of making things, should be above breaking cost \/]
FeedingRateMultiplier is a number that varies.  FeedingRateMultiplier is usually 9. [base cost of breaking things, should be below making cost ^]
nanofabnumtemp is a number that varies. [temporary number used to simplify fabricator logic]
nanofabrowtemp is a number that varies. [needed to know a row number later, so held here]
nanofabnametemp is a text that varies. [temporary name used to simplify fabricator logic]

FabKnownList is an action applying to nothing.
Understand "Fablist" as FabKnownList.

Carry out FabKnownList:
	say "Nanofabricator knows how to make the following items:[line break]";
	sort Table of Fabbable Items in object order;
	repeat with X running from 1 to number of filled rows in Table of Fabbable Items:
		choose row X from the Table of Fabbable Items;
		if there is a object entry:
			say "Name: [object entry][line break]";
	say "End of list.[line break]";

SuperSecretNanoFabCheat is an action applying to nothing. [test command, do not list in help. eventually move to debug?]
understand "Cheat Me A NanoFab" as SuperSecretNanoFabCheat.

carry out SuperSecretNanoFabCheat:
	Move Nanofabricator to Grey Abbey Library;
	increase GenericNanoPastePool by 50;
	say "Nanofabricator created in library, GNP set to 50.  Happy fabbing :)";

Nanofabbing is an action applying to one thing.
understand "Fab [grab object]" as Nanofabbing.

[ Letter variables and what they mean (at least for nanofab stuff)
x = grab object input by player
y = object entry from table of game objects
z = row of object from table of game objects
]

Before Nanofabbing:
	if the Nanofabricator is not visible:
		say "You can't find a Nanofabricator here.";
		stop the action; [fails if no fabricator][to test]

Carry out Nanofabbing something(called x):
	say "You tell the nanofabricator to make you a [x].[line break]";
	if x is an object listed in the Table of Fabbable Items: [it knows how to make this item]
		repeat with z running from 1 to the number of rows in the table of game objects:
			choose row z in the table of game objects;
			if name entry matches the regular expression printed name of x, case insensitively:
				let y be object entry;
				break;
		now nanofabnumtemp is weight entry times [fabvalue entry of y times] FabricatingRateMultiplier;
		if GenericNanoPastePool is less than nanofabnumtemp: [GNP too low to fab, error message]
			say "The nanofabricator gives off an angry ding, as the computer screen displays the message: [line break][bold type]ERRORCODE: 51 (insuffienct matter in pool, unable to fabricate)[roman type][line break]";
			say "Stockpile currently at [bold type][GenericNanoPastePool][roman type].  [special-style-2][nanofabnumtemp][roman type] material needed for requested action.";
		otherwise if a random chance of 1 in nanofabnumtemp succeeds: [random failure makes dirty water]
			say "The nanofabricator starts chugging away.  It creaks and groans for a few minutes, before dinging as bottle falls out.  The computer screen displays the message: [line break][bold type]ERRORCODE: 13 (transmitter calibration failure, improper fabrication)[roman type][line break]";
			say "[special-style-2][nanofabnumtemp][roman type] material removed from stockpile.  Stockpile currently at [bold type][GenericNanoPastePool][roman type].";
			decrease GenericNanoPastePool by (1[weight entry of dirty water] times [fabvalue entry of dirty water times] FabricatingRateMultiplier);
			add "dirty water" to the invent of the player;
		otherwise: [everything works as it's supposed to]
			say "The nanofabricator starts chugging away.";
			decrease GenericNanoPastePool by nanofabnumtemp;
			say "[special-style-2][nanofabnumtemp][roman type] material removed from stockpile.  Stockpile currently at [bold type][GenericNanoPastePool][roman type].";
			say "An off humming gradual increases before the nanofabricator gives off a happy ding.  Your [x] falls out as the computer displays the message: [line break][bold type][x] Fabricated Successfully[roman type][line break]";
			add name entry to the invent of the player;
	otherwise: [item not known by fabber, error message]
		say "The nanofabricator gives off an angry ding, as the computer screen displays the message: [line break][bold type]ERRORCODE: 27 ([x] unknown, unable to fabricate)[roman type][line break]";
	say "It's work completed, the nanofabricator shuts down."; [message to confirm all done]

Nanofeeding is an action applying to one thing.
understand "Consume [grab object]" as Nanofeeding.

Before Nanofeeding:
	if the Nanofabricator is not visible:
		say "You can't find a Nanofabricator here.";
		stop the action; [fails if no fabricator]
	if noun is not owned:
		say "You do not have a [noun], therefore you cannot put it in the Nanofabricator.";
		stop the action; [fails if item not in inventory]

Carry out Nanofeeding something(called x):
	say "You feed a [noun] into the nanofabricator.";
	repeat with z running from 1 to the number of rows in the table of game objects:
		choose row z in the table of game objects;
		now nanofabrowtemp is z;
		if name entry matches the regular expression printed name of x, case insensitively:
			let y be name entry;
			break;
	if x is an object listed in the Table of Fabbable Items: [it knows how to make this item]
		say "The computer screen displays the message: [line break][bold type][x] is a known item.  Consuming input for raw material.[roman type][line break]";
		delete x;
		choose row nanofabrowtemp in the table of game objects;
		now nanofabnumtemp is weight entry [in row nanofabrowtemp of table of game objects] times [fabvalue entry of nanofabnametemp times] FeedingRateMultiplier;
		increase GenericNanoPastePool by nanofabnumtemp;
		say "[special-style-1][nanofabnumtemp][roman type] material added to stockpile.  Stockpile currently at [bold type][GenericNanoPastePool][roman type].";
[	otherwise if a random chance of 1 in 4 succeeds: [attempt to learn new item]
		say "The computer screen displays the message: [line break][bold type][x] is an unknown item.  Scanning...[roman type][line break]";
		Choose a blank row from Table of Fabbable Items;
		now object entry is the noun;[important bit, adds new stuff to fabbable item list]
		say "The computer screen displays the message: [line break][bold type]Scan successful.  Make up of [x] is now known.  More can be frabricated with sufficent material.[roman type][line break]";
		delete x;]
	otherwise: [learning failed, consume item]
		say "The computer screen displays the message: [line break][bold type][x] is an unknown item.  Consuming input for raw material.[roman type][line break]";
		choose row nanofabrowtemp in the table of game objects;
		now nanofabnumtemp is weight entry times [fabvalue entry of nanofabnametemp times] FeedingRateMultiplier;
		increase GenericNanoPastePool by nanofabnumtemp;
		[say "The computer screen displays the message: [line break][bold type]ERRORCODE: 3 (Failure of sensor array.  Please try again.).  Consuming input for raw material.[roman type][line break]";]
		delete x;
		say "[special-style-1][nanofabnumtemp][roman type] material added to stockpile.  Stockpile currently at [bold type][GenericNanoPastePool][roman type].";
	say "It's work completed, the nanofabricator shuts down."; [message to confirm all done]

Book 3 - Definitions

Definition: a direction (called D) is valid if the room D from the location of the player is a room.
Definition: A grab object (called D) is owned:
	if there is a name corresponding to a object of d in the table of game objects:
		if the name corresponding to a object of d in the table of game objects is listed in the invent of the player, yes;
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
"gryphon milk"	"A small bottle filled with fluid taken from one of those gryphons. You are fairly certain drinking it would be a poor idea, but maybe there is a use for it?"	3	gryphon milk
"distilled milk"	"Gryphon milk boiled down to a concentrated, powdery, form? That can[apostrophe]t be dangerous!"	1	distilled milk
"glob of goo"	"A small bottle of strange, neon colored, goop"	1	glob of goo
"soda"	"A can of some soda or another. Somehow, it is still cool to the touch"	1	soda
"chips"	"Not always literally potato chips, but any kind of junk food. Not the best food, but hey, edible."	1	chips
"cot"	"A folding cot. You could carry it around and [bold type]rest[roman type] anywhere!"	25	cot
"dog milk"	"A bottle of dog milk? Man you will take anything."	3	dog milk
"face mask"	"A simple, flimsy, thing you wear on your face. Maybe it will help? Probably not."	3	face mask

face mask is equipment. It is a part of the player. It is not temporary.
The descmod of face mask is "A mask covers nose and mouth, made popular during the swine flu scare. ";
The placement of face mask is "face";
journal is a grab object. It is a part of the player. It is not temporary.
cot is a grab object. It is a part of the player. It is not temporary.
understand "Bed" as cot.
Understand "book" as journal.
medkit is a grab object. It is a part of the player. It is fast. It is not temporary.
dirty water is a grab object. It is a part of the player. The trade of dirty water is "chips". The purified of dirty water is "water bottle".
understand "water" as dirty water.
water bottle is a grab object. It is a part of the player. The trade of water bottle is "chips".
Does the player mean using the dirty water: it is unlikely.
dog milk is a grab object. It is a part of the player.
The purified of dog milk is "water bottle".
The purified of Wyvern Goop is "food".
soda is a grab object. It is a part of the player.
chips is a grab object. It is a part of the player.
glob of goo is a grab object. It is a part of the player. glob of Goo is infectious. The strain of glob of goo is "Goo Girl".
food is a grab object. It is a part of the player. The trade of food is "soda".
pocketknife is a armament. It is a part of the player. It has a weapon "[one of]your large knife[or]your blade[or]your trusty pocket knife[or]flashing steel[at random]". The weapon damage of pocketknife is 5. The weapon type of pocketknife is "Melee". It is not temporary.
understand "knife" as pocketknife.
chair is a armament. It is a part of the player. It has a weapon "[one of]a folding chair[or]your improvised weapon[or]that move you saw on WWE[or]a metal chair to the eyes[at random]". The weapon damage of chair is 5. The weapon type of chair is "Melee". It is not temporary.
understand "seat" as chair.
gryphon milk is a grab object. It is a part of the player. Understand "milk" as gryphon milk. Gryphon milk is infectious. The strain of gryphon milk is "Hermaphrodite Gryphon"; The trade of Gryphon Milk is "distilled milk".
distilled milk is a grab object. It is a part of the player.


The invent of the player is { "journal" };

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
"Load a save"	--	"Load a save game!"	prerestore the game rule

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



To say gryphon fuck:
	if cocks of player is greater than 0:
		if cock length of player is less than 7:
			say "[one of]The gryphon shoves you to the ground roughly and seems disappointed about something. She sniffs at you once more before snorting loudly. With a disdainful kick of a foot, she leaves some dust on you, then departs.[or]The gryphon pushes you back with one hand while the other grabs at you, removing any clothing you may have. She speaks haltingly, as if she is not used to speaking anymore, 'You are too small, but maybe, later. For now, a gift.' She kneels before you and takes your [cock size desc of player] [cock of player] member into her beak, lapping over it with soft, wet, tongue. Her firm paw hands hold to your ass as she begins to bob slowly against you, making your flesh tingle with delight as she works at you expertly. All too soon you are spilling seed across that tongue, grunting with your own satisfaction. She rises, licking her beak. With a wink, she saunters off.[at random]";
		otherwise:
			say "Eyeing something she wants, the gryphon pushes you back a little before turning around and raising her tail high into the air, exposing her pouting lips to your view. Unable to resist, you move up and seize her well muscled hips and are soon pushing against her. With every sink of your [cock size desc of player] [cock of player] meat into her, she gives a pleasured,  keening sound. Her cunt squeezes around your hefty member, encouraging it until you blow your load deep inside of her dripping snatch. Your bodies tremble against one another as passions ebb and she lets you slide off to the ground. Before leaving, she turns to gently lick over your face, then cleans your [cock size desc of player] tool dutifully.";
	otherwise:
		if cunts of player is greater than 0:
			if cunt length of player is less than 12:
				say "The gryphon nudges you over onto your belly with suddenly gentle hands, holding you in place as she scrambles on top of you, pressing her warm furry bulk against your [skin of player] back. You feel a shaft that's far too large for your [cunt size desc of player] passageway. Before you can wriggle away, it shoves up into you, pounding deeply and making your entire body shudder and quake. You can feel yourself being stretched painfully by the huge member as it batters against your cervix. The gryphon calls out above you, squeezing you close to her curvy front as hot seed rushes into you, directly injected into your womb with powerful cannon blasts. You can feel the heat washing off her immense balls as she makes your belly swell with potential life.[impregchance] Sated, she gently sets you down, licks your cheek, and moves off, semi stiff member wagging between her thighs.";
				increase cunt length of player by 1;
			otherwise:
				say "The gryphon, victorious, pushes you onto your back and buries her face into your crotch. She pulls your clothes free before she starts to lap at your [cunt size desc of player] lips. Her soft tongue has you squirming in pleasure, growing wet under her skillful ministrations. Detecting you're ready, she slips up over you, pressing her large breasts to your [skin of player] [breast size desc of player] chest, smoothly slipping her black shaft into your eager and ready body. She kisses and licks at you, pressing that beak expertly to your lips, managing a fierce and passionate exchange despite it. You find your hands wandering over her sides, then drawing her closer as her love making becomes more and more intense. Your body grows tense before pleasure washes over you, but the gryphon is not yet sated, pistoning smoothly against you and crooning in an ear as she begins to bump you with the thick knot of her shaft. A firm shove, and it pops into place, locking her to you as your belly begins to swell with fertile seed. She shivers and buries her face into your neck as she peaks, remaining on top of you, hugging, for the minute it takes for her huge balls to unload.[impregchance] You are stuck to her, snuggling quietly, for what feels like an hour before she slips from you, kisses one last time, and departs.";
		
To say gootemp:
	if a random number from 1 to 100 is less than the libido of the player:
		if a random number from 1 to 2 is 1: [ give it]
			if cocks of player is greater than 0:
				if cock length of player is greater than 20:
					say "Following the brain in your [cock size desc of player] [cock of player] lower head instead of the one above, you march up to the prone jelly lady and lower the huge tool to her exposed lips. Some resistance is felt, but you press more firmly, and she begins to spread out around the tool. You push further, deeper, marveling at the deliciously tight, snug, fit her body offers to your sensitive body. Rearing back, she cries out, lifted entirely from the ground, impaled on your [cock size desc of player] pole.[line break][line break]Your throbbing tool has stretched her round, making her look like a colored condom more than a girl, though her assets do jiggle quite nicely against your raging tool. You grab for them and start to caress, jerking off yourself while teasing the goo girl, you can feel yourself rising rapidly toward release. As cum billows up your spear, you can see the huge gobs running along before exploding into her, making her mouth bulge, then spew out of her, running down her front in a messy drizzle of your fertile seed. Her entire form goes murky with the volume of seed you inject into her. She squirms on your great pole before she melts free of it, becoming a limp pool on the ground before you, worn out from the session.";
				otherwise:
					say "Your [cock size desc of player] [cock of player] shaft swells in your clothes uncomfortably at the sight. You consider leaving it alone, but your libido gets the best of you and you move over towards her, your cock throbbing anxiously. You expose yourself eagerly as you move in over the girl. Your mouth finds a translucent nipple and you find a [one of]strawberry[or]grape[or]cherry[at random] flavor dancing across your tongue as you suckle firmly. She awakens with a soft moan that raises in pitch as you start to ease your firm [cock of player] tool into her quivering passage.[line break][line break]She rocks up against you, her hands grabbing at your sides, pulling you closer as you thrust faster, harder, her body able to take you with scarcely any effort at all. She trembles as hot honey runs down your length, climaxing powerfully against you. The taste in your mouth seems to grow more intense and the passage holding your cock firmly ripples delightfully. You can feel yourself tensing, then exploding into the jellied female, staining her pristine flesh with blasts of milky grey.[line break][line break] As you come down from your high, she kisses you on either cheek, then melts into the ground, gone.";
			otherwise if cunts of player is greater than 0:
				say "You feel flush with lust and swiftly approach the prone goo girl. Your cunt is hungry and you intend to solve that problem. You reach for her form and grab a hand, rubbing it between your own before pressing it between your thighs. The contact seems to rouse the girl, who blinks open her largely featureless eyes. As if understanding your intent, she smiles all the more and presses up into you. Her warm, thick, hand surges up, spreading you and exploring into your welcoming [cunt size desc of player] hole.";
				if cunt length of player is greater than 12:
					say "She gives a delighted giggle when she notices just how big your passage is, and surges forth. She seems to melt before you as her entire form flows warm and rippling into your waiting body. She fills your trembling folds even as she leaks and penetrates your innermost womb, making your belly become round with her presence. The sensation of being fucked from the inside grows stronger by the moment as your body rocks, your [breast size desc of player] breasts shuddering as you grab at your now full belly, moaning and almost senseless in the overload of it all.[line break][line break]When you regain consciousness, you feel the sensation, but subtly different. Opening your eyes shows the goo girl over you, rocking into you with a gooey shaft, rutting you with wild abandon. Your awakening startles you, however, and she suddenly goes red as if caught in the act. She flows away rapidly.";
				otherwise:
					say "She fills up your tight sex to the brim, then pushes harder. The feel of her undulating flesh inside of you sends wild spikes of pleasure through your body even as she works at stretching you with every crashing wave she sends against your cervix and along your over stimulated walls. You're soon on the ground under the gooey creature as she works you over. As it becomes too much, she draws from you, reforming to her usual human like shape. She leans over to kiss your cheek, a soft peck, and she flows away swiftly.";
					increase cunt length of player by 2;
					increase cunt width of player by 2;
			otherwise:
				say "Falling victim to a sudden urge of lusting, you approach the fallen goo girl. Having no penis or vagina, you settle for molestation. You crouch down beside the female creature and set your hands on her jiggly breasts, kneading them firmly, sure that your caresses will do little harm to the pliable flesh.[line break][line break]She comes to with a soft moan, looking up at you with those featureless eyes and reaching for your hands as they wander her front. She guides one down to her winking vulva and presses it firmly. You gently brush along the sensitive flesh, feeling it shudder and jiggle beneath your fingers as you slowly part it and slip a finger into her depths, rubbing your [skin of player] flesh against her. She arches her back and cries out in delight, pressing your hand closer, a second finger slipping in.[line break][line break]Emboldened, you press your fist in easily, her sex gobbling it up, then your forearm, thrusting it into the depths of the jellied girl to her obvious satisfaction. You lose track of yourself, fascinated with her capacity as you shove in the rest of your arm, the area filled with loud squelching sounds.[line break][line break]Her wail almost hurts your ears as she seems to have a full body earthquake of an orgasm, your arm and torso drenched in her fluids before she melts beneath you, passing out with that smile on her face, lost to the intense climax.";
		otherwise: [take it]
			if cunts of player is greater than 0:
				say "You feel flush with lust and swiftly approach the prone goo girl. Your cunt is hungry and you intend to solve that problem. You reach for her form and grab a hand, rubbing it between your own before pressing it between your thighs. The contact seems to rouse the girl, who blinks open her largely featureless eyes. As if understanding your intent, she smiles all the more and presses up into you. Her warm, thick, hand surges up, spreading you and exploring into your welcoming [cunt size desc of player] hole.";
				if cunt length of player is greater than 12:
					say "She gives a delighted giggle when she notices just how big your passage is, and surges forth. She seems to melt before you as her entire form flows warm and rippling into your waiting body. She fills your trembling folds even as she leaks and penetrates your innermost womb, making your belly become round with her presence. The sensation of being fucked from the inside grows stronger by the moment as your body rocks, your [breast size desc of player] breasts shuddering as you grab at your now full belly, moaning and almost senseless in the overload of it all.[line break][line break]When you regain consciousness, you feel the sensation, but subtly different. Opening your eyes shows the goo girl over you, rocking into you with a gooey shaft, rutting you with wild abandon.[impregchance] Your awakening startles you, however, and she suddenly goes red as if caught in the act. She flows away rapidly.";
				otherwise:
					say "She fills up your tight sex to the brim, then pushes harder. The feel of her undulating flesh inside of you sends wild spikes of pleasure through your body even as she works at stretching you with every crashing wave she sends against your cervix and along your over stimulated walls. You're soon on the ground under the gooey creature as she works you over. As it becomes too much, she draws from you, reforming to her usual human like shape. She leans over to kiss your cheek, a soft peck, and she flows away swiftly.";
					increase cunt length of player by 2;
					increase cunt width of player by 2;
			otherwise if cocks of player is greater than 0:
				if cock length of player is greater than 20:
					say "Following the brain in your [cock size desc of player] [cock of player] lower head instead of the one above, you march up to the prone jelly lady and lower the huge tool to her exposed lips. Some resistance is felt, but you press more firmly, and she begins to spread out around the tool. You push further, deeper, marveling at the deliciously tight, snug, fit her body offers to your sensitive body. Rearing back, she cries out, lifted entirely from the ground, impaled on your [cock size desc of player] pole.[line break][line break]Your throbbing tool has stretched her round, making her look like a colored condom more than a girl, though her assets do jiggle quite nicely against your raging tool. You grab for them and start to caress, jerking off yourself while teasing the goo girl, you can feel yourself rising rapidly toward release. As cum billows up your spear, you can see the huge gobs running along before exploding into her, making her mouth bulge, then spew out of her, running down her front in a messy drizzle of your fertile seed. Her entire form goes murky with the volume of seed you inject into her. She squirms on your great pole before she melts free of it, becoming a limp pool on the ground before you, worn out from the session.";
				otherwise:
					say "Your [cock size desc of player] [cock of player] shaft swells in your clothes uncomfortably at the sight. You consider leaving it alone, but your libido gets the best of you and you move over towards her, your cock throbbing anxiously. You expose yourself eagerly as you move in over the girl. Your mouth finds a translucent nipple and you find a [one of]strawberry[or]grape[or]cherry[at random] flavor dancing across your tongue as you suckle firmly. She awakens with a soft moan that raises in pitch as you start to ease your firm [cock of player] tool into her quivering passage.[line break][line break]She rocks up against you, her hands grabbing at your sides, pulling you closer as you thrust faster, harder, her body able to take you with scarcely any effort at all. She trembles as hot honey runs down your length, climaxing powerfully against you. The taste in your mouth seems to grow more intense and the passage holding your cock firmly ripples delightfully. You can feel yourself tensing, then exploding into the jellied female, staining her pristine flesh with blasts of milky grey.[line break][line break] As you come down from your high, she kisses you on either cheek, then melts into the ground, gone.";
			otherwise:
				say "Falling victim to a sudden urge of lusting, you approach the fallen goo girl. Having no penis or vagina, you settle for molestation. You crouch down beside the female creature and set your hands on her jiggly breasts, kneading them firmly, sure that your caresses will do little harm to the pliable flesh.[line break][line break]She comes to with a soft moan, looking up at you with those featureless eyes and reaching for your hands as they wander her front. She guides one down to her winking vulva and presses it firmly. You gently brush along the sensitive flesh, feeling it shudder and jiggle beneath your fingers as you slowly part it and slip a finger into her depths, rubbing your [skin of player] flesh against her. She arches her back and cries out in delight, pressing your hand closer, a second finger slipping in.[line break][line break]Emboldened, you press your fist in easily, her sex gobbling it up, then your forearm, thrusting it into the depths of the jellied girl to her obvious satisfaction. You lose track of yourself, fascinated with her capacity as you shove in the rest of your arm, the area filled with loud squelching sounds.[line break][line break]Her wail almost hurts your ears as she seems to have a full body earthquake of an orgasm, your arm and torso drenched in her fluids before she melts beneath you, passing out with that smile on her face, lost to the intense climax.";
		infect;
		decrease libido of player by 10;
		say "Playing around with that goo girl seems to have helped reign in some of your lustful urges.";
	otherwise:
		say "You resist the urge to act on the situation.";

to say felitaur rape:
	if cunts of player is 0:
		say "The feline shoves you roughly to the ground, her lower forepaws on your shoulders as she inches up to you, thrusting her long, barbed, shaft against your lips and growling with an obvious desire. Her powerful rear hips rock forward, nudging you until you open your mouth and permit the salty pole across your tongue. The barbs prove soft, caressing over your mouth  as she begins to rock into you, purring all the louder with approval. Her paw hands caress over your head, stroking ears and running down over your cheek and [skin of player] skin. You can see her balls bouncing with each thrust, her many breasts jiggling just in front of you.[line break][line break]She draws you forward, pressing the shaft as far into your mouth as she can, trying to wedge it down your throat as she goes tense, flooding you with great rushes of feline pudding. Most of it arrives in your belly, a direct injection of protein, some of it backwashes, splattering across her own thick member and across your front. With a satisfied mew, she draws back, freeing herself from your lips with a pop before she settles. She looks at you a moment, then turns and leaves without word, tail swaying.";
		decrease hunger of player by 5;
		if hunger of player is less than 0, now hunger of player is 0;
	otherwise:
		if cunt length of player is less than 10 or cunt width of player is less than 8:
			say "She moves up behind you, giving a soft purr of approval as she bowls you over onto your back. She clambers over you easily, many soft breasts along her belly rubbing against your [breast size desc of player ] chest. She thrusts her hips forward, and you can feel her thick, spined, member rubbing along your left leg, then your right as she rocks, trying to find the target. Her powerful lower paws pin you in place as she gets the aim right, nudging the massive head to your [cunt size desc of player] lips and shoves forward.[line break][line break]Pain and pleasure alternate as she tries to wedge herself into your resisting passage. Though you are too small to take her, she gives it her best try despite, stretching you and rubbing your walls with her soft spines, sending flashes before your eyes at the overwhelming sensations radiating from your overfilled pussy. As she finds your bottom, she starts to rock as hard as she can, battering against your cervix, her large balls swaying potently with every thrust, her breasts mashing against you. With a loud howl, she explodes thickly into you, feline cum spraying everywhere, splashing your thighs and messing up the ground as most of it back washes even as your womb swells with what does make it in.[impregchance][line break][line break]Satisfied, the feline uses a paw to gently rub your chest a moment, then slides free, spines tickling faintly along the way. With a happy sigh, she slips away, leaving you in the puddle.";
			if cunt length of player is less than 10, increase cunt length of player by 2;
			if cunt width of player is less than 8, increase cunt width of player by 1;
		otherwise:
			say "The feline brushes her paw like hands across your [skin of player] body, pressing to your front with her two heavy milk bags. Her hands reach for your sides, caressing as she bites at your ears gently, whispering, 'You will do just fine.'[line break][line break]She prowls about you to your back, then her forepaws hook around your torso, hefting you up as she eases herself forward. You can feel her firm spear press against your thick lips, then push smoothly into your trembling form. Despite its mass, the cat has no issue fucking your huge pussy, holding you firmly to her lower torso as she rocks against you powerfully, letting her heavy balls slap against you with potent thuds.[line break][line break]The barbs of the shaft tickle and pull at your inner walls with every withdraw of the firm tool, sending ecstatic tingles along your spine and keeping your paralyzed form locked in one fitful release after another. Those barbs press harder suddenly, digging softly against your flesh as great floods of seed rush out into your body, rounding your belly with molten heat spreading through you, and pouring in a waterfall back down along the shaft and your thighs, dripping to the ground below.[impregchance] The cat, roaring her satisfaction, is slow to gently pull you free, and set you to your shaking feet.";
 
To say felitaur tempt:
	if a random number from 1 to 100 is less than the libido of the player:
		if cocks of player is less than 1 and cunts of player is greater than 0:
			say "[felitaur rape]";
		otherwise if cocks of player is greater than 0:
			say "As if bowing to her superior, the cat turns away from you, flipping up her tail to expose her large feral sex to your hungry eyes. You can feel your [cock size desc of player] [cock of player] equipment rising to readiness as you approach, quickly shedding anything that would keep you from this graceful, claimed, being.[line break][line break]Your hands seize at her powerful rear hips as you press up against her, running the tip of your [cock of player] tool up and down against her sex, covering it in the hot, wet dew that she is leaking for you. The smell of it makes your [ball size] ache with need. Her soft mewl snaps you back into focus. You give the majestic beast what she desires, pressing the firm head of your tool to head, then easing it in slowly.[line break][line break] She looks over her back, almost frowning at your slowness. You pull her back and lunge forward. Her yowl echoes as she screams her approval, and there is nothing to hold either of you back. You rock against her, and she grinds against you, bodies meeting in violent passion. Her honey splatters against the ground as you slam home into her as if every movement were your last, [ball size] rocking under you as you plunge into that hot tight channel.[if cock length of player is greater than 15] Her cunt is spread lewdly wide around your mammoth cock, but she appears to be in heaven, despite, or even because of it, every wet slap making her mewl and tremble.[end if][line break][line break]At last, you cannot hold back the tide any longer. Your cry mixes with hers, filling her with seed, making her wet cunt go into spasms around your shaft. She presses back into you powerfully, holding you tight as you release, looking at you over shoulder as if daring you to not fill her all the way.[if cock width of player is less than 5] Your insufficient deposit angers the cat, she gives a displeased growl, then surges forward, leaving your cock glistening as she flees off, disappointed.[otherwise if cock width of player is greater than 10] Your huge balls explode in an amazing torrent of seed. Her tongue extends as her lower belly begins to sag under the weight of your offering. When your orgasm tapers off, she slowly pulls free and begins to, on shaking feet, pad off, satisfied and dizzy.[otherwise] You fire several powerful blasts into her waiting womb. She draws cleanly from you and turns, kissing your cheek, then prowling off.[end if]";
		otherwise:
			say "[felitaur rape]";
	otherwise:
		say "The cat gives a soft huff, almost a hiss, then flees on quick feline paws, her shapely rump the last thing seen.";

to say latexfoxrape:
	if libido of player is 0:
		say "The latex fox gets an odd expression before a soft hissing is heard. The poor creature slowly sinks to the ground as the air escapes it, softly whining until it is an inanimate pile of latex.";
		stop the action;
	if a random number from 1 to 100 is greater than libido of player:
		let c be 1;
	otherwise:
		say "The latex fox gets an odd expression before a soft hissing is heard. The poor creature slowly sinks to the ground as the air escapes it, softly whining until it is an inanimate pile of latex.";
		stop the action;
	if cunts of player is greater than 0 and a random chance of 1 in 2 succeeds:
		say "[latexfoxrapee]";
		stop the action;
	if cocks of player is 0 and cunts of player is greater than 0:
		say "[latexfoxrapee]";
		stop the action;
	say "The Latex Fox slumps to the ground defeated. Instead of popping like your used to, the fox rolls onto its stomach, presents it ass to you and lets out a plaintive whimper. Needing no more invitation you dive right in.";
	say "Positioning your [cock size desc of player] cock at the puckered hole, you are amazed as you realize the little fox is leaking what appears to be a small dribble of lubricant from its asshole.";
	if cock length of player is less than 6:
		say "Your diminutive [cock of player] cock slips right into the foxes waiting asshole. With little effort you start pistoning away, what you lack in size you are more than making up for in force and speed.";
	otherwise if cock length of player is less than 10:
		say "Your [cock of player] cock slides into the fox with little effort, the tight well lubed hole seems to suck you in even deeper as the Fox whimpers in pleasure.";
	otherwise if cock length of player is less than 15:
		say "You place the head of your ample [cock of player] cock at the Foxes dribbling asshole slowly increasing the pressure. With a small yelp from the Fox you are in, you get the feeling that this little guy could stretch to accommodate a much larger member than you are currently packing.";
	otherwise:
		say "With a sadistic grin you point your gargantuan [cock of player] missile at its target. The Foxes eyes go wide when it realizes how large you are and starts trying to crawl away. Having none of that, you grab the Fox by its ankles and start pulling him towards you. The Foxes legs stretch elastically as you pull, his poor little asshole straining against your rod. Finally the Foxes rubbery sphincter relaxes enough to let you in, and like a slingshot the Fox is instantly impaled on your gigantic penis, obscenely stretching the poor creature all the way to his head. You realize the Fox is just fine as he lets out a euphoric yelp and his eyes glaze over lost in the pleasurable fullness.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	say "As you start sliding your [cock size desc of player] shaft in and out you notice the Fox's ass seems to be adjusting to you, stretching and tightening in just the right places to fit your [cock of player] penis perfectly. As this is happening the Fox switches from whimpers and yelps to long low moans of pleasure as you press your [bodydesc of player] body over his and pound away, his red knotted shaft starts growing and leaking rubbery precum.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	say "Nearing orgasm you pick up the pace, your little red toy drooling in bliss. Fucking the Fox like a wild man, you let out a roar as torrents of cum pour forth from your tool, lewdly distending the belly of your victim. Not to be left out, the Fox starts shooting gobs of thick rubbery cum onto the ground, pooling around him. With some effort you pull your cock out of the little Fox with an audible pop. The seed you just planted come spilling out of the abused hole adding the the already large pool of cum the Fox is laying in.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	say "With your lust sated you put on your clothes. Walking away you smile as you see the little Fox lustily wallows in the pool of cum, occasionally dipping its head to the pool and taking loud slurpy gulps of semen, coo-ing with satisfaction.";
	decrease libido of player by 30;
	if libido of player is less than 0, now libido of player is 0;


to say latexfoxrapee:
	say "The Latex Fox slumps to the ground defeated. The critter lays on the ground, his big red knotted cock looking painfully erect. Not wanting to waste such a perfect opportunity you straddle the fox and slowly ease yourself down.  His paws move to your hips, then up to your [bodytype of player] body as you get into position.";
	if cunt length of player is less than 6:
		say "As the tip of the Foxes shaft reaches your opening, you realize it is far too big for you to accommodate. Seeing your frustration the Fox lets out a long hissing sigh, and seems to shrink in size, You now easily take him right down to the knot.";
	otherwise if cunt length of player is less than 10:
		say "The fox's shaft slides into you smoothly as you take him all the way to the knot.";
	otherwise:
		say "The fox's little erection slides into you easily, a bit too easily for your liking as it seems too small to give you any real pleasure. Seeing your frustration the Fox takes a large breath and seems to grow in size, filling you completely.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	say "Resting comfortably on the fox's knot you start sliding up and down on his red latex shaft, gradually increasing speed. You feel the knot trying to sneak in on every thrust, but it seems like the knot is just too big to tie to you. You start to think it's a lost cause when suddenly a sharp blinding pain, and a yelp from the Fox lets you know that the knot made it inside and you are indeed tied.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	say "As the pain subsides you are left with an amazing feeling of fullness, as gob after gob of thick rubbery jism starts filling you. The feeling of the thick cum churning inside you is too much and sends you into a screaming orgasm.[impregchance]";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	say "Eventually the swollen knot starts to shrink and the fox's spent member slides out of you. Still not satisfied you position your swollen moist pussy over the fox's face and descend slowly dribbling his own cum onto his face. To your surprise the Fox starts eagerly lapping it up burying his face in your crotch. Bolts of lightning travel through your body as the rubbery tongue seems to find all the right places to lick you. His bright red nose rubbing against your clit is all it takes to send you into another earth shattering orgasm, spilling the last of the rubbery Fox seed into his waiting mouth.";
	say "Letting out happy little chirps the Fox bounds away, as you stand knees still shaking from your multiple orgasms. You get dressed and head off on your way.";
	decrease libido of player by 30;
	if libido of player is less than 0, now libido of player is 0;

To say gryphon lose:
	let nolust be 0;
	if libido of player is 0, now nolust is 1;
	if nolust is 0:
		if a random chance of libido of player in 100 succeeds:
			now nolust is 0;
		otherwise:
			now nolust is 1;
	if nolust is 1:
		say "[one of]The once proud beast is knocked to the ground, her wings drawn protectively. Victorious, you move on.[or]Succumbing to her wounds, the gryphon collapses at your feet, posing no further threat.[at random]";
	otherwise:
		if cunt length of player is greater than 5 and cock length of player is greater than 7:
			say "Your opponent hits the ground with a loud *thud* and a squawk. Lying defeated and on her back, the Gryphon awaits her fate with more than a little anticipation. You straddle your fallen blue playmate and start to ease the tip of the long black shaft past your moistening lips. You feel every inch as you slide all the way down to the knot. Unable to take the cock in any further you start to move your hips, grinding against the Gryphons mighty black knot. The Gryphons eyes start to roll back, your opponent lost in bliss from your grinding, occasionally emitting a low rolling squawk.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			say "Realizing that knot is not going in without a bit more force than gravity can provide, you get an idea. Taking your large [cock of player] rod you push it down between your lovers massive blue furred tits. You take the Gryphons arms and have her cross her chest, under her breasts but over your cock, effectively locking you in place. 'Hold on tight!' you say as you lean back, using the leverage your giant cock provides to force the knot inside. you both moan loudly as the pain quickly transforms to intense pleasure, the Gryphon starting to rock back and forth as you become accustomed to her size.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			say "Enjoying the sensation you join in, rocking your hips back and forth, causing your cock to start fucking the Gryphons ample cleavage. You feel something moist start rubbing the tip of your rock hard shaft, you look down to see the Gryphons beak encasing the head of your cock. Worrying that the Gryphons impressive beak is about to take a bite our of your favorite organ you start to withdraw, but you quickly realize there is nothing to worry about as her tongue starts to dance across the head of your engorged member. You feel the your [ball size] sized balls start to contract as you near orgasm. Sensing your near the Gryphon pick up the pace of her fucking, pounding your abused pussy mercilessly.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			say "'HARDER, FASTER!' you scream as you feel your orgasm approaching. With a guttural yell you climax, releasing gob after gob of hot thick cum straight down the Gryphons throat. Not to be left out the Gryphon gives one last hard thrust and starts dumping what feels like gallons of hot seed into your belly. Knowing that you are tied on that knot and not going anywhere until the Gryphon is done cumming you ease yourself forward and rest your head on one of her bountiful blue breasts.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			say "You absentmindedly start sucking on one of your lover's dark blue nipples and your tongue is greeted with the sweetest, most delicious milk you have ever tasted. You start suckling greedily, taking your fill of the Gryphons magnificent nectar. Once your thirst has been quenched you notice that the Gryphons cock has shrunk down and can now be easily removed. As you rise to your feet the Gryphons cock pops out of you like the cork on a champagne bottle, your gaping pussy spraying Gryphon seed everywhere.[impregchance]";
			decrease thirst of player by 5;
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			say "'Call me!' the Gryphon squawks plaintively as you stumble away, dressing yourself as you go.";
		if cock length of player is less than 8 and cunts of player is greater than 0:
			say "Your opponent hits the ground with a loud *thud* and a squawk. Lying defeated and on her back, the Gryphon awaits her fate with more than a little anticipation. You straddle your fallen blue playmate and start to ease the tip of the long black shaft past your moistening lips. You feel every inch as you slide all the way down to the knot. Unable to take the cock in any further you start to move your hips, grinding against the Gryphons mighty black knot. The Gryphons eyes start to roll back, your opponent lost in bliss from your grinding, occasionally emitting a low rolling squawk.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			say "As you increase your pace, you see what appears to be milk dribbling from the beast's large nipples. You bend down and take one of the nipples into your mouth. As you greedily suck up all the milk these wonderful teats will produce a hot wave of desire floods through you, and you start to really want that knot inside you. Grinding harder and harder, faster and faster, you try and get that bulb to pass your slick pink lips. You feel climax approaching, so you pull down as hard as you can trying to force that knot inside.";
			decrease thirst of player by 5;
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			if cunt length of player is less than 6:
				say "It's no use, you are just too small to take it all in. The Gryphon chirps soothingly understanding your frustration. Suddenly you let out a startled yelp as you feel an electrifying tickling sensation on your clit, you look down to see the puffed end of a blue tail to be the cause.";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
				say "'Perhaps this will help ease your suffering' your lover says softly, and help it does! The added sensation of that blue tail proves too much for you. As your body shakes with orgasm, you involuntarily clench your jaw, clamping down on the tasty milk squirting nipple. The added pain is apparently just what she needed, your azure mate letting out a loud squawk as she climaxes, filling you with cum from one end and milk from the other.[impregchance]";
			otherwise:
				say "Seeing what your are trying to do, your blue lover waits for the right moment and with one masterful thrust, she firmly wedges her massive black knot deep inside your trembling pussy. The mixed feelings of pain and pleasure overcome you, your knees buckle and you collapse into the soft furry warmth of the Gryphon's bosom. You are still conscious, but you are too overwhelmed to do anything but enjoy the ride.";
				say "'It's alright baby, mama's here' the Gryphon coos as she softly wraps her furry blue arms around you, placing her leaking nipple back into your mouth. As you resume suckling the Gryphon starts to rock her hips back and forth, causing her knot to stretch you to your limits. The pleasure is so intense that you barely notice as you achieve orgasm after orgasm thanks to your lover's exceptional skills. After what seems like seconds (although you realize it's more like half an hour) the Hermaphroditic Gryphon lets out a loud squawk as she climaxes, filling you with cum from one end and milk from the other.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			say "You lie there for a few minutes, not wanting to move after that marathon fucking, and also enjoying the softness of your partners massive furry blue breasts. Eventually the Gryphon's swollen knot shrinks down and she finishes filling you with seed. You slowly get to your feet, still impaled on Gryphon cock. You start gingerly sliding the bulbous black shaft out and as it passes your abused nether lips a torrent of cum spills out, drenching the almost unconscious Gryphon below. You get dressed and leave, the Gryphon still on the ground, eyes closed, moaning, and idly fondling her ample breasts.[impregchance]";
			decrease libido of player by 30;
			if libido of player is less than 0, now libido of player is 0;
		if cocks of player is greater than 0 and cunt length of player is less than 6:
			say "Your opponent hits the ground with a loud *thud* and a squawk. Lying defeated and on her back, the Gryphon awaits her fate with more than a little anticipation. You move to your knee's positioning your [cock size desc of player] member at your victims quivering slit.";
			if cock length of player is less than 6:
				say "With almost no effort Her massive pussy swallows your entire cock. With what could almost pass for a smirk, the gryphon squawks 'I guess your just not Man enough...'. Anger and lust getting the better of you, you pull your cock out of her voluminous cunt and repositioning slightly you place the tip at the entrance to her back door. Her eyes going wide with fear, your prey is about to voice her dissent, but too late, your lust won't be denied. With some effort you push past her tightly clenched sphincter, drawing loud pained squawks from your victim. You start slowly fucking her tight asshole, in and out, gradually picking up speed. Eventually the Gryphons squawking changes pitch; however she felt before, she definitely seems to be enjoying this now.";
			otherwise:
				say "With what almost sounds like a combination of a squawk and purring the Gryphon spreads her legs further apart, her blue lips trembling against your [cock of player] manhood. She stares up at you expectantly, as you slowly enter her accommodating tunnel. A look of absolute pleasure crosses the Gryphons face as you start to slide in and out. You pick up speed, your balls slapping against her on every thrust.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			say "As your rhythmic fucking continues, your victim starts to squeeze her gigantic blue breasts. You see a small dribble of milk escape both of her nipples as she roughly fondles herself. Continuing with your assault, you start to get annoyed by her massive erection. Its so big that it manages to slap your chin on each thrust. On one thrust a bit of precum escapes the Gryphons cock and hits your tongue, the taste is magical, and you need more. Shifting a bit, you manage to take the tip of the Gryphons knotted black cock into your mouth, and your start wildly pumping away at it with both hand's, while still fucking her abused hole furiously. ";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			say "The combined stimulation is too much for the Gryphon as her body is wracked with orgasm. Gob after gob of the most delicious cum starts pouring down your throat, while at the same time milk gushes from the Gryphons massive breasts, soaking the both of you. Your blue partners orgasm causes her muscles to involuntarily clamp down on your throbbing cock, this increased friction is all it takes as you start to pump her full of your seed.";
			decrease hunger of player by 5;
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			say "Spent and exhausted you get dressed and walk away, leaving the Hermaphroditic Gryphon to lie in a pool of her own milk.";
			decrease libido of player by 30;
			if libido of player is less than 0, now libido of player is 0;


Table of random critters
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
"Drone Wasp"	"[one of]The drone attacks with its small claws, leaving tiny furrows that sting slightly.[or]The drone dive bombs through the air with its stinger at the ready, spreading its venom into your body causing you to shudder in pain and lust.[or]The drone flies in close and hugs you, not harming you but seeming to gaze longingly into your eyes.[at random]"	"[one of]The drone flutters off with a tattered wing, crying as she flies away, leaving you with a slight sense of guilt.[or]The drone falls to the ground and begins to cry, as you hear buzzing nearby you think its best to get away as you run quickly.[at random]"	"[one of]The drone slips her lips onto yours, kissing deeply as she lets a small amount of honey in her mouth slip into your own.[or]The drone flies around happily before flying off to brag to its sisters.[or]The drone pins you down to the ground as she grins forcing your lips onto her sex as she rubs her small mound against you, moaning softly before she finally cums, and giggles flying off as quickly as she came.[at random]"	"A small , shy of four feet, wasp like girl, small delicate buzzing wings on her back, her skin colored in yellow and brown marking. Her hands only having three fingers and small claws. Out of her rear extends her wasp like abdomen with a small stinger on the end. Her face seeming cute with her short brown/blond hair. She looks at you with a soft smile on her lips buzzing left and right.[line break][line break]Written by asani."	"charmingly human"	"largely human, except for the new abdomen protruding from your rump, sporting a new stinger. You are also a lot shorter, shy of four feet at best."	"black and brown striped"	""	""	"Your face tingles softly, but not much physically changes from the human norm, except that it is now cute, and female looking."	"You feel a bulging from your bottom that expands out to a whole new segment of body, a stinger slipping free."	"Your skin changes colour as it changes to yellow and brown, the striped markings covering your body."	"You feel something internal shifting around."	"You feel something internal shifting around."	10	10	14	12	10	10	"Female"	20	1	3	"Park"	0	0	0	2	3	0	1	6	4	50	--	0
"Dragoness"	""	""	""	""	"reptilian snout and great teeth. Two horns spiral backwards over your"	"large and reptilian, covered in [skin of player] flesh. You are forced to all fours except for brief, awkward, moments. It reminds you of a dragon, if you had to guess."	"[one of]dull red[or]dull orange[or]lustrous blue[sticky random] scaled"	"You have a wide, tapered, dragon's tail with a spade at the tip."	"[one of]draconic[or]normally internal[or]reptilian[at random]"	"your face draws forward into a reptilian snout, covered in [skin of player] flesh."	"Your body grows to larger than human norm, becoming quadrupedal, with great spikes along your back. You look very much like a dragon."	"Your skin breaks out in large armored scales that rapidly spread over your body"	"Your spine tingles before it explosively expands backwards into a great, thick, tail with spikes along the top."	"Your cock tingles as it becomes draconic in shape, a vent forming to hold it within you."	20	10	12	12	12	12	"Female"	--	--	20	"Nowhere"	0	0	0	2	10	0	1	15	10	40	--	0
"Panther Taur"	"[one of]She leaps at you and catches you between her heavy breasts, applying the softest crushing you've ever had.[or]She rears up and plants her forward lower paws on your shoulders while her hind paws kick up, cutting into you with sharp claws in a painful rake.[or]She lashes out with a powerful set of sharp claws.[or]She rushes right at you, forcing you to back against a wall.[at random]"	"[one of]The cat looks entirely irritated at the constant abuse on her perfect body. With a haughty harumph, she suddenly turns tail, raising it to expose her thick, furry, netherlips, then bolts off.[or]The cat mewls sadly, backing away before she raises her hands to her heavy breasts, pressing them together as she gives you a smoldering look. Wouldn't it be nice to make love instead of war?[felitaur tempt][at random]"	"[felitaur rape][line break]"	"An almost pure black panther creature, with a humanoid torso. Her face has some human features, like that snarl, and her pretty [one of]blue[or]brown[or]green[at random] slitted eyes, but is, overall, feline in make. She has two large breasts on her upper chest, bouncing lightly with her steps. On her undercarriage rest six more heavy bumps, swaying with every powerful step of those large paws of hers.  Behind her, tucked between her hindlegs, is a thick sheath, large as a can of Pringles, with large seed factories to match, all jostling as she moves. Despite her bulk, she moves with grace and agility, which is a shame, since she seems to think you'd be good prey.[line break][line break]Commissioned by AsureaSkie"	"feline face, with blunt snout, wet black nose and pointed ears above your"	"is bent into a whole new shape, with the body of a black panther attached at your midsection, extending out behind you with four powerful paws.[if breasts of player is greater than 2] All your breasts except the first two rest on the chest of that lower torso, swaying with each step.[end if]"	"[one of]furry[or]black furred[at random]"	"You have a long, black, feline tail that likes to curl and uncurl at its own whim. "	"[one of]black sheathed[or]barbed[at random]"	"You can feel warmth as your face begins to reshape into a muzzle, long teeth filling your new mouth, tongue becoming rougher. Your ears are tugged as if by an angry mother, soon perched at the top of your head, pointed and twitching."	"You stagger in place, almost toppling backwards as new legs sprout out, ruining your balance. Fortunately, those new legs dig into the ground, helping to restore your equilibrium as you rapidly grow the torso of a panther from the hips down. Your hands become somewhat paw like, claws sliding free.[if breasts of player is greater than 2] Your breasts quiver as all but the top two migrate downward, settling on the undercarriage of your new torso.[end if]"	"soft ticklish sensation greets the arrival of a thick pelt of pure black fur across your [bodytype of player] body."	"you shake it, a new limb extending from it, becoming a long tail, clearly feline in build."	"Your cock draws up against your belly as a sheath wraps around it. It also grows soft barbs around the head, sure to stimulate any partner."	12	18	10	12	10	10	"Both"	20	3	6	"Outside"	1	14	15	6	8	0	1	14	8	90	--	0
"Goo Girl"	"[one of][if cocks of player is greater than 0]With a swipe of a flexible hand she bypasses your clothes, slithering under them to grab at your [cock size desc of player] [cock of player] shaft and starts squeezing, causing pain and pleasure in equal parts.[otherwise if cunts of player is greater than 0 and cunt length of player is less than 12]She surges towards you and grabs at your crotch. Her fluid body flows through creases and cracks, finding your [cunt size desc of player] pussy and diving into it with great zeal, stretching and buzzing harshly, almost making you dizzy with forced pleasure.[otherwise if cunts of player is greater than 0 and cunt length of player is greater than 11]The goo girl grabs at your crotch, and suddenly seems to be shrinking. Your [cunt size desc of player] cunt suddenly sings in pleasure as she flows into you rapidly, making your belly bloat wide for a moment as she fully inhabits your womb before she spills back out in a great warm rush of thick fluids.[otherwise]She swats at you with a flexible hand, bruising you between the legs.[end if][or]She hugs you into her soft bosom. It would be kind of nice if you could breathe![or]A thousand tiny tendrils suddenly spread from her body, slapping at you wildly. It's fortunate they are not too hard.[at random]"	"[one of]The gooey girl falls back onto her bottom, panting, or just quivering, it's hard to tell. Her thighs are parted, exposing her gently undulating folds to your eyes. [gootemp][or]The girl loses cohesion with a gurgling cry of dismay, becoming a pool of unmoving ichor at your feet.[or]The goo girl suddenly dives for a nearby liquid and vanishes into it instantly, gone.[at random]"	"[one of]The girl laughs in soft bubbles at your defeat, but takes mercy on you, leaving you to peace.[or]The goo girl moves up to you and hugs you suddenly, drawing you into a firm embrace against her soft body. She shakes her head silently, then spreads her semi solid nethers before your eyes, leaning back and offering herself. [gootemp][or]Victorious, the goo creature lashes you a few times with a whip like hand for good measure, then loses interest.[at random]"	"A jiggling girl of [one of]blue[or]green[or]purple[at random] color. You can see through her, mostly, her gelatin like flesh tinting the area behind her with its lustrous shade. Her upper torso is well defined, with large breasts somehow jiggling just a little more noticeably than the rest of her. Her lower body seems to meld into a grand base of goop just past her thighs, her legs permanently held together. She seems to notice you and turns to you. With soft slurping sounds, she propels herself at you like an incoming wave, hands outstretched for you with an unwavering smile."	"curiously disquieting smile on a pretty human face"	"melded together just at your thighs, flowing together into a large and bulbous base of [skin of player] flesh"	"[one of]jellied[or]gelatin like[or]translucent[at random] [one of]blue[or]red[or]purple[sticky random]"	""	"[one of]partially fluid[or]flexibly semi-solid[or]jellied[at random]"	"you can feel your face reshaping into rather pretty proportions. An urge overtakes you and you smile, and never stop"	"you feel your feet drawn to one another as strange throbbing builds in your shins. Your lower legs flow into one another, creating a [skin of player] base of flesh that goes up to your lower thighs"	"a ripple of tingles rushes through your entire body as you sink towards the ground, then rise again, wobbling along the way. A glance at a hand shows that you can see right through your now jello-like flesh"	"you get an odd feeling, but see no change"	"your [cock size desc of player] dick gives a powerful lurch as strange fluid rushes up into it, making it swell a moment before the former color drains, leaving the new, somewhat flexible, gelatin behind. A squeeze confirms that it is still quite solid enough to get the job done"	8	10	10	10	10	5	"Both"	30	2	3	"Mall"	0	6	4	2	3	0	1	20	20	40	"glob of goo"	100
"Naga"	"[one of]The snake swipes at you with its pipe with alarming accuracy.[or]With a loud hiss, the snake lashes at you, sinking a few fangs painfully into your [skin of player] body.[or]The snake lashes out with its tail, striking you solidly with the heavy mass.[at random]"	"[one of]The snake staggers from its many wounds and collapses to the ground, unmoving.[or]Your last blow draws a shuddering hiss before the snake falls to the ground and ceases fighting.[or]Detecting the fight lost, the snake suddenly flees on quick scales, abandoning the struggle.[at random]"	"[first time]The snake laughs, like a dry hiss, tongue flicking as it moves over your defeated form, 'You should go back to where you came from, human, your kind is finished in this city. Remember it or you will be punished fresh.' [only][one of]The snake prods you with its club to ensure the fight has left you before slithering off, seemingly satisfied with its victory.[or]The great naga throws its coils about you in a warm, soft, crushing embrace. Breathing becomes hard as it constricts. Consciousness fades to black. When you awaken, the snake man has departed.[or]With a cruel sounding laugh, the naga grabs you and throws you over a coil, wrenching free your clothes to expose your bottom to it. It coils about you, warm and trapping, as it becomes a he, twice so, two thick human like shafts sliding free of some internal sheath. Intent on punishment over breeding, he grabs you to pull you back as he thrusts firmly into your back door, lancing you on the thick tool and rocking without concern for your comfort.[line break][line break]Your ass sends guilty pangs of pain and pleasure through you as the snake keeps your wriggling form under control, pounding eagerly at your [skin of player] flesh. The tool within you swells suddenly, then begins to explode, filling your bowels with thick gouts of snake seed. Satisfied, the snake rolls you off of himself to the ground, and slithers away.[at random] "	"Human and snake blended together in an intimidating mixture. It has [one of]brown and black[or]bright red and yellow[or]grey and tan[at random] scales, fine and soft looking. Two muscular arms are its only limbs, if one discounts the great tail that makes up most of its body. Clenched in its right hand is a pipe. A crude, but likely effective, makeshift weapon. Of course, it also has great jaws that likely contain sharp, possible venomous, teeth. Its human torso is well muscled and sleek, well built all around and lacking in blemish. Its head and face is entirely that of a huge snake, staring unblinkingly and tasting the air with flickering forked tongue.[line break][line break][line break]Commissioned by AsureaSkie."	"a snake's head, with unblinking eyes and huge venomous fangs. Your [skin of player] hide is sleek across your majestic hood, flaring wide when excited or worked up, framing your head from behind your face"	"extremely long. You can feel the powerful rings of your muscles drawing you forward quietly across the ground. It almost feels like you're floating along, moving with a sublime confidence in your snake like body"	"[one of]scaly[or]softly scaled[or]scaled[at random]"	""	""	"you feel your [skin of player] skin stretching out as your skull flattens out into a snake-like face. Your eyes blink for the last time before the lids become clear. You find you can now taste the air"	"your legs snap together, almost toppling you as they flow together quickly. Strange numbing pleasure radiates down along your torso as you can feel your spine extending down along your fused legs, then beyond, forming a powerful tube-like body that trails along behind you"	"soft [one of]brown and black[or]bright red and yellow[or]gray and tan[at random] scales begin to spread quickly from your palms. As they settle, soft itching warmth follows, then fades, leaving you with a new hide to admire"	"you feel something settle in your lower torso, but nothing physically changes that you can see"	"your cock becomes achingly erect for a moment before settling down, seemingly unchanged."	14	10	12	12	12	8	"Male"	25	3	6	"Mall"	2	16	9	2	3	0	0	0	0	20	--	0
"Hermaphrodite Gryphon"	"[one of]She throws her impressive, and somewhat jiggly, bulk against you.[or]She snaps at you with that razor sharp beak, leaving a thin red line as it cuts your [skin of player] body.[or]She presses up against you suddenly and grinds her huge shaft against your belly. While you are distracted, you can feel her grabbing at your sides, squeezing painfully.[or]She charges at you, wings pulling her free of the ground just moments before she crashes bodily into you.[at random]"	"[gryphon lose]"	"[gryphon fuck]"	"She is a tall and striking blue gryphon. She has wide hips and huge blue breasts, implying she leans more on her mammal half than her avian, though her large blue wings are quite a sight to behold. Between her white-furred thighs is a huge, knotted, black cock and tightly drawn balls. From behind, the pinkened folds of her female gender are visible under the lion-like tail she sports. Her feet are digitigrade, and sport huge wicked claws that clack on hard surfaces."	"powerful beak that protrudes in a clean curve. Above, feline ears twitch and turn above your altered"	"dramatically altered, with powerful digitigrade legs of leonine musculature, great claws on your [skin of player] feetpaws. Behind you, two large feathery wings flutter on occasion"	"[one of]soft, blue, and furry[or]softly furred[at random]"	"You have a thin leonine tail swaying over your ass. Its [skin of player] length has a tuft of blue fur at the end."	"[one of]sheathed and black[or]knotted[or]dense, black[or]inhumanly bulging[at random]"	"your ears are drawn upwards to the top of your head and a wicked beak pushes forward"	"you feel surges of alien power building in your thighs as they grow with new muscles. The oddly pleasant sensation flows downwards into your shins as they smoothly shift to a digitigrade stance. Your feet become [skin of player] paws, large, with dangerous looking curved claws. You glance back as your back itches, then in a burst of brief pain, parts to admit two large, feathery, wings"	"a flush of arousal stirs through you as a dense carpet of blue fur engulfs you in its warm, encouraging, presence"	"you feel a new weight. A glance shows a long [skin of player] tube growing over your ass. The end blossoms out into a blue, furry, tuft. You have a tail"	"pleasure builds in your cock as it deepens to a midnight black, a large swollen knot forming towards the base and a [skin of player] sheath overtaking the very base of it"	12	10	12	14	10	12	"Both"	22	2	5	"Outside"	1	13	7	2	8	0	1	13	7	80	"gryphon milk"	50	3	"[one of]winged[or]alluring[or]curvaceous[at random]"	"[one of]gryphon[or]feline[or]hybrid[at random]"	false	false	false	--	"hump"
"Latex Fox"	"[one of]The latex fox lunges at you with gleaming rubber fangs and sinks them into your body, growling as it does so.[or]The fox leaps on you, raking several bloody lines with its claws.[or]The fox bowls into you, knocking you back painfully as it snarls, exposing sharp rubber teeth.[at random]"	"[latexfoxrape]"	"[one of]Yipping victoriously, the fox chews at you with loud squeaky noises. It would be adorable if you weren't in pain everywhere. Eventually the beast tires of chewing at your [bodydesc of player] body with its suddenly soft and noisy teeth, and wanders off, leaving you to pick yourself up and wander back to the bunker, defeated.[or]The fox rolls you over and clambers up on top of your [bodytype of player] form with a feral snarl.[if the cunts of the player is greater than 0]The fox slips his suddenly erect rubber cock into you without further delay, rutting into your [one of]cunt[or]pussy[or]passage[at random] with eager pumps of his hips. You feel something warm and tingling rushing into your body as he knots to your abused gender, remaining on top of you, holding you still until it diminishes.[impregchance] Sated, he rises and departs into the city.[otherwise] He thrusts up against your ass, probing with his hard canine rubber pecker until he finds his target and sends a whole new pain into your already abused form, starting to claim his dominance over you with happy yelps and growls. He floods your bowels with thick, tingling, seed, but does not knot with you. He draws back and flees, leaving a trail of rubbery looking seed.[end if][at random]"	"You encounter a creature made of glistening latex. It is largely red in color, but white along its belly and groin. A fox, making squeaking sounds as it moves. It looks happy to see you. By happy we mean hungry."	"mixture of canine and human, in a perpetual sneer of exposed teeth, making for an interesting"	"mostly human, except for the digitigrade stance of your feet, er, or is that paws? And those claws look dangerous."	"red, black, and white latex"	"You have a long tail, shaped like a fox tail, but made entirely of rubber. It squeaks as it sways back and forth. "	"[one of]canine[or]knotted[or]bright red doggy[or]bestial[at random]"	"your face reforms, vision blocked by a narrow fox like snout, and new ears twitching on top of your head"	"a wave of itching runs through the meat of your body as your legs pop into a new, digitigrade, configuration. Your feet begin to feel cramped before they snap loudly, becoming entirely paws. Your fingers are still itching as sharp little claws slip free of them"	"smooth latex seems to rush out over your body, covering every inch of you, inside and out, leaving you shivering and somewhat flush"	"a sudden loud FWOOMF has you looking over your shoulder just in time to see a new, large, fox like tail curling and flicking energetically"	"your cock grows steel hard as it begins to throb urgently. It grows increasingly red as it becomes slightly more slender. Soon a [cock width of player] inch knot forms at the base, ready to tie you to a willing, or not, partner"	10	12	8	10	6	6	"Male"	15	1	4	"Outside"	1	8	6	2	5	0	4	8	6	20	""	0	3	"[one of]altered[or]animalistic[or]sexy[at random]"	"vulpine"	false	false	false	--	"hump"


understand the command "feed" as something new.



Definition: A person is fastlearning:
	if "Fast Learner" is listed in feats of player, yes;
	no;

To say level up needed:
	say "[if player is fastlearning][((level of player plus 1) times 8)][otherwise][(level of player plus 1) times 10][end if]";

Table of Fancy Status
left	central	right
"Location: [the player's surroundings]"	"XP:[xp of player]/[level up needed] Lvl: [level of player]"	"HP:[hp of player]/[maxhp of player]"
"Freecred: [freecred]"	"Hunger: [hunger of player] Thirst: [thirst of player] Libido: [libido of player]"	"Score:[score]/[maximum score]"
"Sanity: [humanity of player]/100"	"Remaining: [( turns minus targetturns ) divided by 8] days, [(remainder after dividing ( turns minus targetturns ) by 8 ) times 3] hours"	"[if number of entries in childrenfaces is greater than 0]Children: [number of entries in childrenfaces][end if]"
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
Furry is a flag.
Guy is a flag.
Girl is a flag.
Humorous is a flag.
Hermaphrodite is a flag.
Hellspawn is a flag.
when play begins:
	add { "Awesome tree", "Cock Cannon" } to infections of humorous;
	add { "Slut Rat", "Panther Taur", "Hermaphrodite Gryphon", "Female Husky", "Latex Fox", "black equinoid", "Ashen Breeder", "lizard girl", "Skunk", "Shemale Smooth Collie", "Felinoid", "Bovine", "Feline", "Herm Hyena", "Bear", "Pit bull", "Painted Wolf Herm", "sewer gator", "doe", "sea otter", "Ash Drakenoid", "red kangaroo", "feral sea dragon", "German Shepherd", "Cute Chinchilla Woman", "feral sea dragoness"  } to infections of furry;
	add { "Naga", "Latex Fox", "Skunk", "Shemale Smooth Collie", "Bovine", "Tentacle Horror", "Demon Brute", "Cock Cannon", "Ash Drakenoid", "feral sea dragon", "German Shepherd", "Feline", "Felinoid" } to infections of guy;
	add { "Ashen Breeder", "Slut Rat", "Panther Taur", "Hermaphrodite Gryphon", "Parasitic Plant", "Herm Hyena", "Painted Wolf Herm", "sewer gator", "doe", "black equinoid", "spidergirl", "Cute Chinchilla Woman", "Mothgirl" } to infections of hermaphrodite;
	add { "Drone Wasp", "Goo Girl", "Female Husky", "lizard girl", "Tentacle Horror", "Feline", "Bear", "Skunk", "spidergirl", "Mothgirl", "red kangaroo", "city sprite", "Pit bull", "feral sea dragoness", "Bovine", "Wyvern" } to infections of girl;

[corollary]
marker is a kind of thing.
A marker has a list of text called infections.
Tailweapon is a marker.
when play begins:
	add { "Drone Wasp", "red kangaroo", "Skunk", "Wyvern", "Anthro Shaft Beast", "Feral Shaft Beast", "hermaphrodite dolphin", "Dragon", "Dragoness", "Yamato Dragon", "Yamato Dragoness", "sewer gator", "pirate shark", "Ash Dragator", "Ash Drakenoid", "Ash Whelp", "spidergirl", "feral sea dragon", "feral sea dragoness", "Naga", "lizard girl" } to infections of Tailweapon;


Part 2 - Rules

First for constructing the status line (this is the bypass status line map rule):
	fill status bar with table of fancy status;
	

d18 is a number that varies.
descr is text that varies.
cupsize is an indexed text that varies. Cupsize is "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
battleground is a text that varies.
Lusting is a text that varies.

Hunting is an action applying to one topic.

understand "hunt [text]" as hunting.

check hunting:
	if there is no dangerous door in the location of the player:
		say "I don't see any good hunting grounds around here." instead;
	otherwise:
		let y be a random dangerous door in the location of the player;
		now battleground is the marea of y;
		
carry out hunting:
	let Q be a list of numbers;
	let found be 0;
	let sitfound be 0;
	let foundbadtime be 0;
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
	if insectlarva is true and larvaegg is 1 and gestation of child is 0 and battleground is not "Mall" and battleground is not "Stables" and battleground is not "Hospital" and battleground is not "Museum":		[hunted by wasp hive anywhere outdoors]
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
				repeat with N running from 1 to ( perception of player / 4 ):
					add x to q;
				if "Curious" is listed in feats of player:
					add x to q;
				if "Expert Hunter" is listed in feats of player:
					add x to q;
					add x to q;
				if "Master Baiter" is listed in feats of player:
					repeat with N running from 1 to ( perception of player / 3 ):
						add x to q;
				if "Like Attracts Like" is listed in the feats of the player and skinname of player is name entry and a random chance of 1 in 2 succeeds:
					add x to q;
				if "Like Attracts Like" is listed in the feats of the player and bodyname of player is name entry and a random chance of 1 in 2 succeeds:
					add x to q;
				if "Like Attracts Like" is listed in the feats of the player and cockname of player is name entry and a random chance of 1 in 2 succeeds:
					add x to q;
				if "Like Attracts Like" is listed in the feats of the player and facename of player is name entry and a random chance of 1 in 2 succeeds:
					add x to q;
			otherwise:
				if there is a lev entry:
					if lev entry is greater than level of player plus levelwindow, next;
				otherwise:
					next;
				if "Expert Hunter" is listed in feats of player and a random chance of 1 in 3 succeeds:
					if name entry matches the text topic understood, case insensitively:
						now x is x;
					otherwise:
						next;
				add x to q;
				if "Like Attracts Like" is listed in the feats of the player and skinname of player is name entry and a random chance of 1 in 2 succeeds:
					add x to q;
				if "Like Attracts Like" is listed in the feats of the player and bodyname of player is name entry and a random chance of 1 in 2 succeeds:
					add x to q;
				if "Like Attracts Like" is listed in the feats of the player and cockname of player is name entry and a random chance of 1 in 2 succeeds:
					add x to q;
				if "Like Attracts Like" is listed in the feats of the player and facename of player is name entry and a random chance of 1 in 2 succeeds:
					add x to q;
	if the number of entries in q is not 0 and found is 1:
		sort Q in random order;
		repeat with Z running through q:
			choose row z from the table of random critters;
			if there is a name entry:
				now monster is Z;
			otherwise:
				next;
			break;
		choose row monster from the table of random critters;
		now monsterhp is hp entry;
		challenge;
		if ( ( hardmode is true and a random chance of 1 in 10 succeeds ) or ( "Bad Luck" is listed in feats of player and a random chance of 1 in 12 succeeds ) ) and battleground is not "void":
			say "As you are trying to recover from your last encounter, another roving creature finds you.";
			Fight;
		follow the turnpass rule;
	otherwise:
		now found is 0;
		repeat with z running through unknown fasttravel rooms:
			if z is private, next;
			if printed name of z matches the text topic understood, case insensitively:
				say "It should be somewhere....";
				now found is 1;
				let dice be a random number from 1 to 20;
				let the bonus be (( the perception of the player minus 10 ) divided by 2);
				if "Curious" is listed in feats of player, increase bonus by 2;
				increase dice by bonus;
				if dice is greater than 15:
					say "You manage to find your way to [z]!";
					move the player to z;
					now z is known;
					now dice is a random number from 1 to 20;
					if "Bad Luck" is listed in feats of player, increase dice by 1;
					if "Curious" is listed in feats of player, increase dice by 2;
					if dice is greater than 14 and battleground is not "void":
						Fight;
						if ( ( hardmode is true and a random chance of 1 in 10 succeeds ) or ( "Bad Luck" is listed in feats of player and a random chance of 1 in 12 succeeds ) ) and battleground is not "void":
							say "As you are trying to recover from your last encounter, another roving creature finds you.";
							Fight;
				otherwise:
					say "Despite your searches, you fail to find it.[line break]";
					now dice is a random number from 1 to 20;
					if "Bad Luck" is listed in feats of player, increase dice by 1;
					if "Curious" is listed in feats of player, increase dice by 2;
					if dice is greater than 14 and battleground is not "void":
						Fight;
						if ( ( hardmode is true and a random chance of 1 in 10 succeeds ) or ( "Bad Luck" is listed in feats of player and a random chance of 1 in 12 succeeds ) ) and battleground is not "void":
							say "As you are trying to recover from your last encounter, another roving creature finds you.";
							Fight;
				break;
		if found is 0:
			repeat with z running through situations:
				[ if hardmode is false and the level of z is greater than (the level of the player plus levelwindow), next; ]
				if z is resolved, next;
				if sarea of z matches the text battleground, case insensitively:		[Only situations in this zone can be hunted]
					let tempnum be 0;			[do-nothing action]
				otherwise:
					if printed name of z matches the text topic understood, case insensitively:
						now sitfound is 1;
					next;
				if printed name of z matches the text topic understood, case insensitively:
					say "It should be somewhere....";
					now found is 1;
					let dice be a random number from 1 to 20;
					let the bonus be (( the perception of the player minus 10 ) divided by 2);
					if "Curious" is listed in feats of player, increase bonus by 2;
					increase dice by bonus;
					if dice is greater than 15:
						now inasituation is true;
						say "You manage to find your way to [z]!";
						try resolving z;
						now inasituation is false;
						now dice is a random number from 1 to 20;
						if "Bad Luck" is listed in feats of player, increase dice by 1;
						if "Curious" is listed in feats of player, increase dice by 2;
						if dice is greater than 14 and battleground is not "void":
							now combat abort is 0;
							now lost is 0;
							Fight;
							if ( ( hardmode is true and a random chance of 1 in 10 succeeds ) or ( "Bad Luck" is listed in feats of player and a random chance of 1 in 12 succeeds ) ) and battleground is not "void":
								now combat abort is 0;
								now lost is 0;
								say "As you are trying to recover from your last encounter, another roving creature finds you.";
								Fight;
					otherwise:
						now inasituation is false;
						say "Despite your searches, you fail to find it.[line break]";
						now dice is a random number from 1 to 20;
						if "Bad Luck" is listed in feats of player, increase dice by 1;
						if "Curious" is listed in feats of player, increase dice by 2;
						if dice is greater than 14 and battleground is not "void":
							Fight;
							if ( ( hardmode is true and a random chance of 1 in 10 succeeds ) or ( "Bad Luck" is listed in feats of player and a random chance of 1 in 12 succeeds ) ) and battleground is not "void":
								say "As you are trying to recover from your last encounter, another roving creature finds you.";
								Fight;
					break;
		if found is 0:
			if foundbadtime is 1:
				say "[bold type]There doesn't seem to be any of them around right now...[roman type]";
			otherwise if sitfound is 0:
				say "[bold type]You don't think what you're looking for can be found here...[roman type]";
			otherwise if sitfound is 1:
				say "[bold type]Perhaps you should try looking somewhere closer to what you seek...[roman type]";
			let dice be a random number from 1 to 20;
			if "Bad Luck" is listed in feats of player, increase dice by 1;
			if "Curious" is listed in feats of player, increase dice by 2;
			if dice is greater than 14 and battleground is not "void":
				Fight;
				if ( ( hardmode is true and a random chance of 1 in 10 succeeds ) or ( "Bad Luck" is listed in feats of player and a random chance of 1 in 12 succeeds ) ) and battleground is not "void":
					say "As you are trying to recover from your last encounter, another roving creature finds you.";
					Fight;
		follow the turnpass rule;

to ban menu:
	blank out the whole of table of combat items;
	let X be 1;
	repeat with Q running through flags:
		choose a blank row in table of combat items;
		now title entry is printed name of Q;
		now description entry is printed name of Q;
		if q is banned:
			now title entry is "BANNED";
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
		change the current menu to table of Combat Items;
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
	otherwise:
		now z is banned;
	decrease the menu depth by 1;
	ban menu;


	
destinationcheck is an action applying to nothing.

understand "navigate" as destinationcheck.
understand "nav" as destinationcheck.

carry out destinationcheck:
	let L be a list of rooms;
	repeat with Q running through known fasttravel rooms:
		add q to L;
	say "You know how to get to the following places: [line break]";
	if the number of entries in L is 0:
		say "Nowhere.";
	otherwise:
		repeat with q running through L:
			say "[link][Q][as]nav [Q][end link][line break]";
	
navigating is an action applying to one thing.

understand "navigate [any known fasttravel room]" as navigating;
understand "navigate to [any known fasttravel room]" as navigating;
understand "nav [any known fasttravel room]" as navigating;
understand "travel to [any known fasttravel room]" as navigating;
understand "travel [any known fasttravel room]" as navigating;
understand "go to [any known fasttravel room]" as navigating;
understand "return to [any known fasttravel room]" as navigating;


carry out navigating:
	if location of player is not fasttravel:
		say "You can't navigate from here.";
		stop the action;
	if noun is location of player:
		say "You're already there.";
		stop the action;
	let the bonus be (( the perception of the player minus 10 ) divided by 2);
	now battleground is "Outside";
	if a random number from 1 to 20 is less than 10 minus bonus:
		if there is a area of Battleground in the table of random critters:
			Fight;
			if ( ( hardmode is true and a random chance of 1 in 10 succeeds ) or ( "Bad Luck" is listed in feats of player and a random chance of 1 in 12 succeeds ) ) and battleground is not "void":
				say "As you are trying to recover from your last encounter, another roving creature finds you.";
				Fight;
	otherwise:
		say "You travel to [the noun], avoiding trouble as best you can.";
	move the player to the noun;
	follow turnpass rule;

understand "vialdrop [text]" as vialdropping.

Vialdropping is an action applying to one topic.

Carry out vialdropping:
 	let t be the topic understood;
	let target be text;
	let found be 0;
	let z be 1;
	let q be a topic;
	repeat with x running through vials of player:
		now q is x;
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
	repeat with x running from 1 to the number of entries in vials of player:
		if t in lower case is entry x in vials of player in lower case:
			now target is entry x in vials of player;
			remove entry x from vials of player;
			decrease x by 1;
			now found is 1;
	if found is 0:
		say "You don't seem to have any such vial.";
	otherwise:
		say "You chuck all your [target] vials away.";


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
		now q is x;
		if t in lower case is x in lower case:
			now target is x;
			now found is 1;
			break;
		increase z by 1;
	if found is 0:
		say "You don't seem to have any such vial.";
		continue the action;
	say "What harm could a terribly infectious bio nanite be? Down the hatch!";
	now researchbypass is 1;
	infect target;
	now researchbypass is 0;
	remove entry z from vials of player;

understand the command "i" and "inv" and "inventory" as something new.

Inventorying is an action applying to nothing.

understand "item" as Inventorying.
understand "i" as Inventorying.
understand "inv" as Inventorying.
understand "inventory" as Inventorying.

does the player mean doing something with the medkit: it is very likely.

carry out Inventorying:
	sort invent of player;
	let dseed be 0;
[	let tempname be indexed text;
	repeat with x running from 1 to the number of rows in the table of game objects:
		choose row x in the table of game objects;
		now tempname is name entry in lower case;
		now sortname entry is tempname;
	sort the table of game objects in sortname order;	]
	if "demon seed" is listed in invent of player, let dseed be 1;
	say "Peeking into your backpack, you see: [if the number of entries in invent of player is 0]Nothing[otherwise][line break][end if]";
	if the number of entries in invent of player is greater than 0:
		say "[bold type][bracket]U[close bracket][roman type]se, [bold type][bracket]L[close bracket][roman type]ook, [bold type][bracket]S[close bracket][roman type]mell, [bold type][bracket]D[close bracket][roman type]rop[if the number of trader in the location of the player > 0 or ( Ronda is visible and hp of Ronda is 0 and dseed is 1 )], [bold type][bracket]T[close bracket][roman type]rade[end if][if the number of smither in the location of the player > 0], [bold type][bracket]I[close bracket][roman type]mprove[end if].";
		let weight be 0;
		repeat with x running from 1 to the number of rows in the table of game objects:
			choose row x in the table of game objects;
			if object entry is owned:
				say "[link][bracket][bold type]U[roman type][close bracket][as]use [name entry][end link]";
				say " [link][bracket][bold type]L[roman type][close bracket][as]look [name entry][end link]";
				say " [link][bracket][bold type]S[roman type][close bracket][as]smell [name entry][end link]";
				say " [link][bracket][bold type]D[roman type][close bracket][as]drop [name entry][end link]";
				if trade of object entry is "":
					let notval be 0;
					if Ronda is visible and hp of Ronda is 0 and name entry is "demon seed":
						say " [link][bracket][bold type]T[roman type][close bracket][as]give [name entry] to Ronda[end link]";
				otherwise if the number of trader in the location of the player is greater than 0:
					let tradeguy be a random trader in the location of the player;
					say " [link][bracket][bold type]T[roman type][close bracket][as]give [name entry] to [tradeguy][end link]";
				if object entry is armament and object entry is not improved and the number of smither in the location of the player is greater than 0:
					say " [link][bracket][bold type]I[roman type][close bracket][as]upgrade [name entry][end link]";
				say " [name entry]";
				if object entry is wielded and object entry is armament:
					say "(wielded)";
					if object entry is improved:
						say "(improved)";
				if object entry is equipment:
					if object entry is equipped:
						say "(equipped)";
				say " x ";
				let number be 0;
				repeat with  y running through invent of player:
					if y is name entry, increase number by 1;
				say "[number]([weight entry times number] lbs)";
				increase weight by weight entry times number;
				say "[line break]";
		if the player is overburdened, say "*OVERBURDENED* ";
		say "Total Weight: [weight]/[capacity of player] lbs.";
	if scenario is "Researcher" or nanitemeter is 1:
		say "(You may see your collection of vials using [link][bold type]vial inventory[roman type][end link] or [link][bold type]vinv[roman type][end link] for short.)";

Definition: A grab object (called D) is fiveowned:
	let count be 0;
	if there is a name corresponding to a object of d in the table of game objects:
		if the name corresponding to a object of d in the table of game objects is listed in the invent of the player:
			repeat with y running through invent of player:
				if y is the name corresponding to a object of d in the table of game objects, increase count by 1;
			if count > 4, yes;
	no;

understand the command "vint" and "vial inventory" and "vial inv" and "vinv" as something new.

VialInventorying is an action applying to nothing.

understand "vint" as VialInventorying.
understand "vinv" as VialInventorying.
understand "vial inventory" as VialInventorying.
understand "vial inv" as VialInventorying.

carry out VialInventorying:
	sort vials of player;
	if scenario is not "Researcher" and nanitemeter is not 1:
		say "You don't possess anything of that nature.";
		continue the action;
	if the number of entries in vials of player is 0:
		say "Your collection of infection vials is empty.";
	if the number of entries in vials of player is greater than 0:
		say "Type [bold type]vial <name>[roman type] to [bold type][bracket]U[close bracket][roman type]se a vial, [bold type]vialdrop <name>[roman type] to [bold type][bracket]D[close bracket][roman type]estroy a vial, [bold type]vialalldrop <name>[roman type] to [bold type][bracket]D[close bracket][roman type]estroy [bracket]A[close bracket]ll of a vial";
		if ( scenario is "Researcher" or nanitemeter is 1 ) and Larissa is visible:
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
			if ( scenario is "Researcher" or nanitemeter is 1 ) and Larissa is visible:
				say "[link][bracket][bold type]S[roman type][close bracket][as]vialsell [x][end link] ";
			say "[X] x [count][line break]";


strongbacked is a number that varies.

definition: A person is overburdened:
	let weight be 0;
	if the number of entries in invent of player is greater than 0:
		repeat with x running from 1 to the number of rows in the table of game objects:
			choose row x in the table of game objects;
			if object entry is owned:
				let number be 0;
				repeat with  y running through invent of player:
					if y is name entry, increase number by 1;
				increase weight by weight entry times number;
	if "Strong Back" is listed in feats of player and strongbacked is 0:
		now strongbacked is 1;
		increase capacity of player by 50;
	if weight is greater than capacity of player, yes;
	no;


To Birth:
	let infection be "";
	if "Maternal" is listed in feats of player:
		increase morale of player by 3;
	if ( a random chance of 1 in 2 succeeds or "Breeding True" is listed in feats of player ) and "They Have Your Eyes" is not listed in feats of player:
		now infection is skinname of child;
	otherwise:
		now infection is skinname of player;
	now skinname of child is infection;
	if ( a random chance of 1 in 2 succeeds or "Breeding True" is listed in feats of player ) and "They Have Your Eyes" is not listed in feats of player:
		now infection is bodyname of child;
	otherwise:
		now infection is bodyname of player;
	now bodyname of child is infection;
	if ( a random chance of 1 in 2 succeeds or "Breeding True" is listed in feats of player ) and "They Have Your Eyes" is not listed in feats of player:
		now infection is tailname of child;
	otherwise:
		now infection is tailname of player;
	now tailname of child is infection;
	if ( a random chance of 1 in 2 succeeds or "Breeding True" is listed in feats of player ) and "They Have Your Eyes" is not listed in feats of player:
		now infection is facename of child;
	otherwise:
		now infection is facename of player;
	now facename of child is infection;
	if cunts of player > 0:
		say "Your child suckles at your [breast size desc of player] breast, growing rapidly against you as strange sensations sweep over your [bodytype of player] body. Not only nutrition but personality and knowledge seep through the teat into the newborn, who is not newborn for long, soon a young adult. They pop free and stand, smiling. With a slow turn, they show off their [facename of child] face and [bodyname of child] body, covered in [skinname of child] skin.";
	otherwise if breasts of player > 0:
		say "Your child pushes free of the shell enclosing it and you gather into your arms, feeling a strong affection for your bizarrely born child.  It starts to suckle at your [breast size desc of player] breast, growing rapidly against you as strange sensations sweep over your [bodytype of player] body.  Not only nutrition but personality and knowledge seep through the teat into the newborn, who is not newborn for long, soon a young adult. They pop free and stand, smiling. With a slow turn, they show off their [facename of child] face and [bodyname of child] body, covered in [skinname of child] skin.";
	otherwise:
		say "Your child pushes free of the shell enclosing it and you gather into your arms, feeling a strong affection for your bizarrely born child.  It nuzzles at your chest and starts nursing, struggling for a while to draw milk from your flat chest, but your [bodytype of player] body strives to complete its task and begins to lactate temporarily to feed your offspring.  As it feeds, it grows rapidly against you as strange sensations sweep over your body.  Not only nutrition but personality and knowledge seep through the nipple into the newborn, who is not newborn for long, soon a young adult. They pop free and stand, smiling. With a slow turn, they show off their [facename of child] face and [bodyname of child] body, covered in [skinname of child] skin.";
		increase hunger of player by 3;
		increase thirst of player by 3;
	add facename of child to childrenfaces;
	add bodyname of child to childrenbodies;
	add skinname of child to childrenskins;
	increase score by 5;		[15 base +5/child]
	if perception of player < 24, increase perception of player by 1;
	now the child is not born;
	now the gestation of child is 0;

To impregnate with (x - text):
	if child is born or gestation of child is greater than 0 or "Sterile" is listed in feats of player or larvaegg is 2 or ( cunts of player is 0 and "MPreg" is not listed in feats of player ):
		stop the action;
	if "Selective Mother" is listed in feats of player:
		say "Do you wish to be impregnated with a [x] child?";
		if the player consents:
			let q be 1;
		otherwise:
			say "You choose not to accept the seed.";
			stop the action;
	now gestation of child is a random number from 24 to 48;
	let infection be "";
	if ( a random chance of 1 in 2 succeeds or "Breeding True" is listed in feats of player ) and "They Have Your Eyes" is not listed in feats of player:
		now infection is x;
	otherwise:
		now infection is skinname of player;
	now skinname of child is infection;
	if ( a random chance of 1 in 2 succeeds or "Breeding True" is listed in feats of player ) and "They Have Your Eyes" is not listed in feats of player:
		now infection is x;
	otherwise:
		now infection is bodyname of player;
	now bodyname of child is infection;
	if ( a random chance of 1 in 2 succeeds or "Breeding True" is listed in feats of player ) and "They Have Your Eyes" is not listed in feats of player:
		now infection is x;
	otherwise:
		now infection is tailname of player;
	now tailname of child is infection;
	if ( a random chance of 1 in 2 succeeds or "Breeding True" is listed in feats of player ) and "They Have Your Eyes" is not listed in feats of player:
		now infection is x;
	otherwise:
		now infection is facename of player;
	now facename of child is infection;
	if cunts of player > 0:
		say "[line break]     You have an odd feeling, a palpable wave of contentment from within your lower belly.";
	otherwise:
		say "[line break]     There is a pleasant sense of warmth from your lower belly, filling an emptiness you did not know was there.";


to say impregchance:		[to be used when either female or MPreg would work]
	if ( cunts of player > 0 or "MPreg" is listed in feats of player ) and "Sterile" is not listed in feats of player and larvaegg is not 2:
		let target be 10;
		if insectlarva is true:
			increase target by 2 + larvaegg;
		if "Fertile" is listed in feats of player, decrease target by 3;
		if inheat is true, decrease target by 3;
		choose row monster from the table of random critters;
		if a random chance of 2 in target succeeds, impregnate with name entry;
		now the libido of the player is (the libido of the player) / 2;


to say mimpregchance:		[to be used when only MPreg would work]
	if "MPreg" is listed in feats of player and "Sterile" is not listed in feats of player and larvaegg is not 2:
		let target be 10;
		if insectlarva is true:
			increase target by 2 + larvaegg;
		if "Fertile" is listed in feats of player, decrease target by 3;
		if inheat is true, decrease target by 3;
		choose row monster from the table of random critters;
		if a random chance of 2 in target succeeds, impregnate with name entry;
		now the libido of the player is (the libido of the player) / 2;


to say fimpregchance:		[to be used when only female pregnancy would work]
	if cunts of player > 0 and "Sterile" is not listed in feats of player and larvaegg is not 2:
		let target be 10;
		if insectlarva is true:
			increase target by 2 + larvaegg;
		if "Fertile" is listed in feats of player, decrease target by 3;
		if inheat is true, decrease target by 3;
		choose row monster from the table of random critters;
		if a random chance of 2 in target succeeds, impregnate with name entry;
		now the libido of the player is (the libido of the player) / 2;


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
	let found be 0;
	let number be 0;
	repeat with Q running through invent of the the player:
		increase number by 1;
		if q matches the regular expression printed name of x, case insensitively:
			now found is 1;
			remove entry number from invent of the player;
			break;

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

[Seems to be working now]

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
		
To process (X - a grab object):
	if x is temporary:
		say "You eagerly use up the [x]! ";
		let found be 0;
		let number be 0;
		repeat with Q running through invent of the the player:
			increase number by 1;
			if q matches the regular expression printed name of x, case insensitively:
				now found is 1;
				remove entry number from invent of the player;
				break;
	otherwise:
		say "You use the [x]. ";
	if usedesc of x is "":
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
		if "Junk Food Junky" is listed in feats of player:
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
			say "Awesome!  Soda!  You it down, a delicious can of [if player is sugarbodied][one of]cola[or]Dr Pibbston[or]Mountain Don't[or]Burkes['] root beer[at random][otherwise][one of]lemon lime[or]strawberry[or]Dr Pibbston[or]cola[or]orange[or]ginger ale[at random][end if].  YUM!";
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
			increase humanity of player by healed;
			if humanity of player is greater than 100:
				decrease healed by humanity of player minus 100;
				now humanity of player is 100;
			say "([humanity of the player]/100).";
			now Lastjournaluse is turns;
		follow turnpass rule;
	if x is a armament:
		if weapon of player is weapon of x: [ unequip]
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
			say "You ready your [x].";
	if x is equipment:
		if x is equipped:
			say "You stop using the [x].";
			now x is not equipped;
		otherwise:
			if slot of x is "":
				let zq be 0;
			otherwise:
				repeat with z running through equipped equipment:
					if slot of z is slot of object entry:
						say "Your [z] is in the way!";
						continue the action;
			say "You start using the [x].";
			now x is equipped;
	if x is a medkit:
		let healed be 10 + level of player + ( ( intelligence of player minus 10 ) divided by 2 );
		if "Expert Medic" is listed in the feats of the player:
			now healed is ( healed times 125 ) divided by 100;
		if "Rapid Healing" is listed in the feats of the player:
			now healed is ( healed times 110 ) divided by 100;
		if "Regeneration" is listed in the feats of the player:
			now healed is ( healed times 110 ) divided by 100;
		increase hp of player by healed;
		if hp of player is greater than maxhp of player:
			decrease healed by hp of player minus maxhp of player;
			now hp of player is maxhp of player;
		say "Using your medkit, [one of]You spray your cuts with anesthetic[or]You bandage your worst wounds[at random]. You regain [special-style-1][healed][roman type] hit points.";
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
		if "Rapid Healing" is listed in the feats of the player:
			increase healed by 2;
		if "Regeneration" is listed in the feats of the player:
			increase healed by 3;
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
[names can be changed if desired, also need to change matching name in table below.  choose color in hex, then convert to decimal for assigned number.]

Table of User Styles (continued)
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

Part 3 - Item Code

Understand the command "get" as something new.
Understand the command "take" as something new.

Grabbing is an action applying to one thing.

understand "get [present grab object]" as grabbing.
understand "take [present grab object]" as grabbing.
understand "grab [present grab object]" as grabbing.

carry out grabbing something(called x):
	let found be 0;
	let number be 0;
	repeat with Q running through invent of the location of the player:
		increase number by 1;
		if q matches the regular expression printed name of x, case insensitively:
			now found is 1;
			add q to the invent of the player;
			remove entry number from invent of the location of the player;
			say "You pick up the [q] and tuck it in your backpack.";
			break;
	if found is 0:
		say "You don't see any [x] around here.";
		if x is owned, say "You do see one in your backpack though. Did you mean to [bold type]use[roman type] it?";

Understand the command "drop" as something new.

littering is an action applying to one thing.

understand "drop [owned grab object]" as littering.

carry out littering something(called x):
	let found be 0;
	let number be 0;
	if x is wielded:
		say "You're wielding that, take it off first.";
		stop the action;
	repeat with Q running through invent of the the player:
		increase number by 1;
		if q exactly matches the text printed name of x, case insensitively:
			increase found by 1;
	now number is 0;
	if x is an equipment:
		if x is equipped:
			if found is less than 2:
				say "You're using that right now. Stop using it before you drop it.";
				continue the action;
	repeat with Q running through invent of the the player:
		increase number by 1;
		if q exactly matches the text printed name of x, case insensitively:
			now found is 1;
			add q to the invent of the location of the player;
			remove entry number from invent of the player;
			say "You set down the [q].";
			break;	
	if found is 0:
		now number is 0;
		repeat with Q running through invent of the the player:
			increase number by 1;
			if q matches the regular expression printed name of x, case insensitively:
				now found is 1;
				add q to the invent of the location of the player;
				remove entry number from invent of the player;
				say "You set down the [q].";
				break;				
	if found is 0:
		say "You don't see any [x] in your backpack.";

Looting is an action applying to nothing.

understand "get all" as looting.
understand "get everything" as looting.
understand "take all" as looting.
understand "take everything" as looting.
understand "grab all" as looting.

carry out looting:
	let found be 0;
	let number be 0;
	repeat with Q running through invent of the location of the player:
		increase number by 1;
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
	if purified of noun is "":
		say "You don[apostrophe]t think that can get any more pure, at least not this way.";
		stop the action;
	let number be 0;
	repeat with Q running through invent of the the player:
		increase number by 1;
		if q matches the regular expression printed name of the noun, case insensitively:
			remove entry number from invent of the player;
			break;
	say "After purifying the [noun], you are left with [purified of the noun].";
	add purified of the noun to the invent of the player;
	

Trading is an action applying to two things.

Understand "give [owned grab object] to [person]" as trading.

Check trading:
	if second noun is the player, say "Do you think you will get a good deal from yourself? That[apostrophe]s a hard bargain, man." instead;
	if second noun is not a trader, say "They do not look interested in trading." instead;
	if the noun is not owned, say "You can[apostrophe]t offer what you don[apostrophe]t have." instead;
	if trade of the noun is "", say "They don[apostrophe]t seem interested in that specific item." instead;

Carry out trading:
	say "You offer up [the noun] to [second noun] and they look it over for a moment before nodding and drawing out a [trade of the noun] and handing it to you. A fair trade, right?";
	add trade of the noun to the invent of the player;
	if "Haggler" is listed in feats of player and a random chance of 1 in 3 succeeds:
		say "You get a second one free with your amazing negotiating skills.";
		add trade of noun to the invent of the player;
	let number be 0;
	repeat with Q running through invent of the the player:
		increase number by 1;
		if q matches the regular expression printed name of the noun, case insensitively:
			remove entry number from invent of the player;
			break;

This is the sex change rule:
	choose row monster from the table of random critters;
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
			say "You can see your [if cocks of player is 1][one of]cock[or]penis[or]shaft[or]maleness[at random][otherwise][one of]cocks[or]penises[or]shafts[or]malenesses[at random][end if] [one of]engorge[or]swell[or]throb[at random] as it gains in length, becoming [descr]!";
	otherwise if ( the sex entry is "Male" or the sex entry is "Both" ) and cock length of player > ( ( cock length entry times 150 ) / 100 ) and "One Way" is not listed in feats of player:
		let prevcock be cock length of player;
		decrease cock length of player by 1;
		decrease cock length of player by ( cock length of player - ( ( cock length entry times 150 ) / 100 ) ) divided by 3;
		if "Male Preferred" is listed in feats of player or "Herm Preferred" is listed in feats of player:
			if cock length of player is less than 4, now cock length of player is 4;
		if "Modest Organs" is listed in feats of player and cock length of player is greater than 8:
			now cock length of player is 8;
		if "Single Sexed" is listed in feats of player:
			now cock length of player is 0;
			now cocks of player is 0;
			now cock width of player is 0;
		if prevcock > cock length of player:		[did cock actually shrink?]
			follow the cock descr rule;
			say " Strong [one of]erotic tingles[or]cold waves[or]hot flashes[at random] run over your impressive [cockname of player] [one of]cock[or]penis[or]shaft[or]pole[at random] begins to diminish somewhat to better suit your new infection. [if cocks of player is greater than 1]They dwindle[otherwise]It dwindles[end if] in size, becoming [descr].";
	if ( the sex entry is "Male" or the sex entry is "Both" ) and cock width of player is less than cock width entry and cocks of player is not 0 and "Female Preferred" is not listed in feats of player:
		let prevcock be cock width of player;
		increase cock width of player by 1;
		increase cock width of player by ( cock width entry minus cock width of player ) divided by 3;
		if "Modest Organs" is listed in feats of player and cock width of player is greater than 4:
			now cock width of player is 4;
		if prevcock < cock width of player:		[did balls actually grow?]
			follow the cock descr rule;
			say "You can see your [one of]sac[or]balls[or]orbs[or]cum factories[at random] [one of]tingle[or]churn audibly[or]throb[at random] as it grows larger, your flesh growing taught with the expansion, leaving you with [ball size]!";
	otherwise if ( the sex entry is "Male" or the sex entry is "Both" ) and cock width of player > ( ( cock width entry times 150 ) / 100 ) and "One Way" is not listed in feats of player:
		let prevcock be cock width of player;
		decrease cock width of player by 1;
		decrease cock width of player by ( cock width of player - ( ( cock width entry times 150 ) / 100 ) ) divided by 3;
		if "Male Preferred" is listed in feats of player or "Herm Preferred" is listed in feats of player:
			if cock width of player is less than 2, now cock width of player is 2;
		if "Modest Organs" is listed in feats of player and cock width of player is greater than 4:
			now cock width of player is 4;
		if "Single Sexed" is listed in feats of player:
			now cock length of player is 0;
			now cocks of player is 0;
			now cock width of player is 0;
		if prevcock > cock width of player:		[did cock actually shrink?]
			follow the cock descr rule;
			say "You can feel a [one of]draining of[or]tightness around[or]pressure dropping in[at random] your impressive [cockname of player] [one of]balls[or]testes[or]gonads[or]cum factories[at random] as they begin to diminish somewhat to better suit your new infection.  You cum hard to drain their seed as they dwindle in size, becoming [ball size].";
	if cocks of player is less than cocks entry and ( the sex entry is "Male" or the sex entry is "Both" ) and "Female Preferred" is not listed in feats of player:
		let prevcock be cocks of player;
		if cocks of player is 0:
			increase the cocks of player by 1;
			now the cock length of player is 1;
			now the cock width of player is 1;
			increase the cock length of player by ( cock length entry  ) divided by 3;
			increase the cock width of player by ( cock width entry ) divided by 3;
			now cockname of player is name entry;
			now cock of player is cock entry;
			if "Modest Organs" is listed in feats of player and cock length of player is greater than 8:
				now cock length of player is 8;
			if "Modest Organs" is listed in feats of player and cock width of player is greater than 4:
				now cock width of player is 4;
		otherwise if a random chance of 2 in 3 succeeds:	[Extra cocks at 67%]
			increase cocks of player by 1;
		if prevcock < cocks of player:		[did new cock appear?]
			follow the cock descr rule;
			say " Your groin throbs with intense sensations as a [descr] [cock entry] [one of]cock[or]penis[or]shaft[or]maleness[at random] erupts from you, spurting a few excited streams of fluid as it settles into place.";
	if cocks of player is not 0 and the sex entry is "Female" and "One Way" is not listed in feats of player:
		let prevcock be cock length of player;
		let prevcock2 be cock width of player;
		decrease cock length of player by 1;
		decrease cock length of player by cock length of player divided by 3;
		decrease cock width of player by 1;
		decrease cock width of player by cock width of player divided by 4;
		if "Male Preferred" is listed in feats of player or "Herm Preferred" is listed in feats of player:
			if cock length of player is less than 4, now cock length of player is 4;
			if cock width of player is less than 2, now cock width of player is 2;
		if "Single Sexed" is listed in feats of player:
			now cock length of player is 0;
			now cocks of player is 0;
			now cock width of player is 0;
		if prevcock > cock length of player or prevcock2 > cock width of player:		[did cock actually shrink?]
			follow the cock descr rule;
			say " Strange [one of]erotic tingles[or]cold waves[or]hot flashes[at random] run over your [one of]cock[or]man meat[or]shaft[or]pole[at random] begins to shrink. [if cocks of player is greater than 1]They dwindle[otherwise]It dwindles[end if] in size, becoming [descr] while your [one of]balls[or]testes[or]cum factories[or]gonads[at random] become [ball size]. ";
			if cock length of player is less than 1 or cock width of player is less than 1:
				say "You barely have time to give a whimper as you cease to be a male.";
				now the cocks of the player is 0;
			otherwise:
				say "[line break]";
		if cocks of player > 1 and a random chance of 2 in 5 succeeds and "All The Things" is not listed in feats of player:
			say "Sudden pleasure runs through one of your doomed [cock of player] cock as it sprays the last of its seed, dwindling down to nothing at all and vanishing, leaving only the powerful orgasm to remember it by.";
			decrease cocks of player by 1;
	otherwise if cocks of player > cocks entry and a random chance of 1 in 3 succeeds and "One Way" is not listed in feats of player and (sex entry is "Male" or sex entry is "Both" ) and "All The Things" is not listed in feats of player:
		say "Sudden pleasure runs through one of your doomed [cock of player] cocks as it sprays the last of its seed, dwindling down to nothing at all and vanishing, leaving only the powerful orgasm to remember it by.";
		decrease cocks of player by 1;
	if ( the sex entry is "Female" or the sex entry is "Both" ) and cunt length of player is less than cunt length entry and cunts of player is not 0 and "Male Preferred" is not listed in feats of player:
		let prevcunt be cunt length of player;
		increase cunt length of player by 1;
		increase cunt length of player by ( cunt length entry minus cunt length of player ) divided by 3;
		if "Modest Organs" is listed in feats of player and cunt length of player is greater than 8:
			now cunt length of player is 8;
		if prevcunt < cunt length of player:	[did cunt actually grow?]
			follow the cunt descr rule;
			say "You can see your [if cunts of player is 1][one of]cunt[or]pussy[or]vagina[or]cleft[at random] [one of]engorges[or]swells[or]throbs[at random][otherwise][one of]cunts[or]pussies[or]vaginas[or]clefts[at random] [one of]engorge[or]swell[or]throb[at random][end if] as it grows deeper into your body, becoming [descr]!";
	otherwise if ( the sex entry is "Female" or the sex entry is "Both" ) and cunt length of player > ( ( cunt length entry times 150 ) / 100 ) and "One Way" is not listed in feats of player:
		let prevcunt be cunt length of player;
		decrease cunt length of player by 1;
		decrease cunt length of player by ( cunt length of player - ( ( cunt length entry times 150 ) / 100 ) ) divided by 3;
		if "Female Preferred" is listed in feats of player or "Herm Preferred" is listed in feats of player:
			if cunt length of player is less than 4, now cunt length of player is 4;
		if "Modest Organs" is listed in feats of player and cunt length of player is greater than 8:
			now cunt length of player is 8;
		if "Single Sexed" is listed in feats of player:
			now cunt length of player is 0;
			now cunts of player is 0;
			now cunt width of player is 0;
		if prevcunt > cunt length of player:		[did cunt actually shrink?]
			follow the cunt descr rule;
			say " Strong [one of]erotic tingles[or]cold waves[or]hot flashes[at random] flow into your ample [one of]cunt[or]pussy[or]vagina[or]cleft[at random] as it begins to diminish somewhat to better suit your new infection. [if cunts of player is greater than 1]They dwindle[otherwise]It dwindles[end if] in size, becoming [descr].";
	if ( the sex entry is "Female" or the sex entry is "Both" ) and cunt width of player is less than cunt width entry and cunts of player is not 0 and "Male Preferred" is not listed in feats of player:
		let prevcunt2 be cunt width of player;
		increase cunt width of player by 1;
		increase cunt width of player by ( cunt width entry minus cunt width of player ) divided by 3;
		if "Modest Organs" is listed in feats of player and cunt width of player is greater than 4:
			now cunt width of player is 4;
		if prevcunt2 < cunt width of player:	[did cunt actually widen?]
			follow the cunt descr rule;
			say "You can see your [if cunts of player is 1][one of]cunt[or]pussy[or]vagina[or]cleft[at random] [one of]engorges[or]swells[or]throbs[at random][otherwise][one of]cunts[or]pussies[or]vaginas[or]clefts[at random] [one of]engorge[or]swell[or]throb[at random][end if] as your thighs are nudged apart to make room for those thickening lips, growing wider!";
	otherwise if ( the sex entry is "Female" or the sex entry is "Both" ) and cunt width of player > ( ( cunt width entry times 150 ) / 100 ) and "One Way" is not listed in feats of player:
		let prevcunt be cunt width of player;
		decrease cunt width of player by 1;
		decrease cunt width of player by ( cunt width of player - ( ( cunt width entry times 150 ) / 100 ) ) divided by 3;
		if "Female Preferred" is listed in feats of player or "Herm Preferred" is listed in feats of player:
			if cunt width of player is less than 2, now cunt width of player is 2;
		if "Modest Organs" is listed in feats of player and cunt width of player is greater than 4:
			now cunt width of player is 4;
		if "Single Sexed" is listed in feats of player:
			now cunt length of player is 0;
			now cunts of player is 0;
			now cunt width of player is 0;
		if prevcunt > cunt width of player:		[did cock actually shrink?]
			follow the cunt descr rule;
			say "You can feel a [one of]tightening[or]snugness[or]clenching[at random] from your accommodating [one of]cunt[or]pussy[or]vagina[or]cleft[at random] as you are hit by an unexpected orgasm.  The squeezing does not release fully as your wet hole shrinks somewhat to better suit your new infection by becoming tighter.";
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
			if "Modest Organs" is listed in feats of player and cunt width of player is greater than 4:
				now cunt width of player is 4;
		otherwise if a random chance of 2 in 3 succeeds:	[2nd+ cunt at 67%]
			increase the cunts of player by 1;
		if prevcunt < cunts of player:		[did new cunt appear?]
			follow the cunt descr rule;
			say " Your groin throbs with intense sensations as a [descr] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] wetly forms, Leaking along a thigh as you quiver.";
	if cunts of player is not 0 and the sex entry is "Male" and "One Way" is not listed in feats of player:
		let prevcunt be cunt length of player;
		let prevcunt2 be cunt width of player;
		decrease cunt length of player by 1;
		decrease cunt length of player by cunt length of player divided by 3;
		decrease cunt width of player by 1;
		decrease cunt width of player by cunt width of player divided by 4;
		if "Female Preferred" is listed in feats of player or "Herm Preferred" is listed in feats of player:
			if cunt length of player is less than 4, now cunt length of player is 4;
			if cunt width of player is less than 2, now cunt width of player is 2;
		if "Single Sexed" is listed in feats of player:
			now cunt length of player is 0;
			now cunts of player is 0;
			now cunt width of player is 0;
		if prevcunt > cunt length of player or prevcunt2 > cunt width of player:		[did cunt actually shrink?]
			follow the cunt descr rule;
			say " Strange [one of]erotic tingles[or]cold waves[or]hot flashes[at random] run over your [one of]cunt[or]pussy[or]vagina[or]cleft[at random] begins to shrink. [if cunts of player is greater than 1]They dwindle[otherwise]It dwindles[end if] in size, becoming [descr]. ";
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


To grow breasts by (x - a number):
	if "Flat Chested" is listed in feats of player:
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
[	while there is no name entry or ( there is a non-infectious in row monster of table of random critters and non-infectious entry is true ):
		now monster is a random number from 1 to number of filled rows in table of random critters;
		choose row monster from the table of random critters;
		if there is no name entry or ( there is a non-infectious in row monster of table of random critters and non-infectious entry is true ):
			next;
		break;	]
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
			stop the action;
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
		if breasts of player is not breasts entry:
			decrease breast size of player by 2;
			follow the breast descr rule;
			if ( breasts entry is greater than breasts of player and "One Pair" is not listed in feats of player ) or breasts of player is 0:
				increase breasts of player by 2;
				say " Your chest tingles intensely as two new sensitive points form up, announcing the arrival of two new [descr] breasts, pressing out of your [skin of player] hide.";
			otherwise if breasts entry < breasts of player and "Bouncy Bouncy" is not listed in feats of player:
				decrease breasts of player by 2;
				say " You look down just in time to see two nipples, [descr] breasts included, be reabsorbed into your body, leaving nothing but [skin of player] flesh behind.";
			increase breast size of player by 2;
		if ( the sex entry is "Female" or the sex entry is "Both") and breast size of player is less than breast size entry and ( ( "Male Preferred" is not listed in feats of player and "Flat Chested" is not listed in feats of player )  or "Breasts" is listed in feats of player ):
			follow the breast descr rule;
			let oldbreast be descr;
			say "You [one of]groan and grab at your chest[or]give a loud moan, shuddering[or]almost tip forward in surprise[or]look down fearfully as sensation builds[at random], [skin of player] skin glistening as your [oldbreast] breasts[run paragraph on]";
			increase breast size of player by 1;
			increase breast size of player by ( breast size entry minus breast size of player ) divided by 3;
			follow the breast descr rule;
			say " become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]! [run paragraph on]";
		if breast size of player is greater than breast size entry and "One Way" is not listed in feats of player:
			follow the breast descr rule;
			let oldbreast be descr;
			say "You [one of]groan and grab at your chest[or]give a loud moan, shuddering[or]almost tip forward in surprise[or]look down fearfully as sensation builds[at random], [skin of player] skin glistening as your [oldbreast] breasts[run paragraph on]";
			decrease breast size of player by 1;
			decrease breast size of player by ( breast size of player minus breast size entry ) divided by 3;
			follow the breast descr rule;
			say " become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]! [run paragraph on]";
		if bodyname of player is not name entry:
			say "Your body [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [body change entry].";
			now bodyname of player is name entry;
			now body of player is body entry;
		attributeinfect;			[sets the new attributes]
		follow the sex change rule;
	if x is 5:
		follow the sex change rule;
		if cockname of player is not name entry:
			if cocks of player is greater than 0, say " Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [cock change entry].";
			now cockname of player is name entry;
			now cock of player is cock entry;
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
			if breasts of player is not breasts entry:
				decrease breast size of player by 2;
				follow the breast descr rule;
				if ( breasts entry is greater than breasts of player and "One Pair" is not listed in feats of player ) or ( breasts entry > 0 and breasts of player is 0 ):
					increase breasts of player by 2;
					say " Your chest tingles intensely as two new sensitive points form up, announcing the arrival of two new [descr] breasts, pressing out of your [skin of player] hide.";
				otherwise if breasts entry < breasts of player and "Bouncy Bouncy" is not listed in feats of player:
					decrease breasts of player by 2;
					say " You look down just in time to see two nipples, [descr] breasts included, be reabsorbed into your body, leaving nothing but [skin of player] flesh behind.";
				increase breast size of player by 2;
			if ( the sex entry is "Female" or the sex entry is "Both") and breast size of player is less than breast size entry and ( "Male Preferred" is not listed in feats of player or "Breasts" is listed in feats of player):
				follow the breast descr rule;
				let oldbreast be descr;
				say "You [one of]groan and grab at your chest[or]give a loud moan, shuddering[or]almost tip forward in surprise[or]look down fearfully as sensation builds[at random], [skin of player] skin glistening as your [oldbreast] breasts[run paragraph on]";
				increase breast size of player by 1;
				increase breast size of player by ( breast size entry minus breast size of player ) divided by 3;
				follow the breast descr rule;
				say " become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]! [run paragraph on]";
			if breast size of player is greater than breast size entry and "One Way" is not listed in feats of player:
				follow the breast descr rule;
				let oldbreast be descr;
				say "You [one of]groan and grab at your chest[or]give a loud moan, shuddering[or]almost tip forward in surprise[or]look down fearfully as sensation builds[at random], [skin of player] skin glistening as your [oldbreast] breasts[run paragraph on]";
				decrease breast size of player by 1;
				decrease breast size of player by ( breast size of player minus breast size entry ) divided by 3;
				follow the breast descr rule;
				say " become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]! [run paragraph on]";
			if bodyname of player is not name entry:
				say "Your body [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [body change entry].";
				now bodyname of player is name entry;
				now body of player is body entry;
			attributeinfect;			[sets the new attributes]
			follow the sex change rule;
		if x is 5:
			follow the sex change rule;
			if cockname of player is not name entry:
				if cocks of player is greater than 0, say " Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [cock change entry].";
				now cockname of player is name entry;
				now cock of player is cock entry;				[** end of addition for 'Mutable']
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
			say "You now have trouble thinking of anything but sexual satisfaction![no line break][if cocks of player is 1]  Your cock is fully erect constantly and drools precum steadily.[no line break][otherwise if cocks of player > 1]  Your cocks is fully erect constantly and drools precum steadily.[no line break][end if][if cunts of player is 1]  Your cunt overflows with hot juices that run down your thighs.[no line break][otherwise if cunts of player > 1]  Your cunts overflow with hot juices that run down your thighs.[no line break][end if][line break]";
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
		let vialcollectible be 10 + ( 2 * intelligence of player );
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
	change the text of the player's command to x;
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
	increase level of companion of player by 1;
	decrease xp of companion of player by ( level of companion of player minus 1 ) times 10;
	if "Good Teacher" is listed in feats of player:
		increase xp of companion of player by ( level of companion of player minus 1 ) times 4;
	say "Your [companion of player] has gained level [level of companion of player]! Congratulations!";
	if remainder after dividing level of companion of player by 2 is 0:
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
		say "Pick a stat to increase.";
		wait for any key;
		change the current menu to Table of Start Game;
		carry out the displaying activity;
		if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	increase maxhp of player by ( stamina of player minus 10 ) divided by 2;
	increase maxhp of player by 2;
	now hp of player is maxhp of player;
	if the remainder after dividing level of the player by 5 is 0:
		funfeatget;
	increase score by level of the player times level of the player;
	
Before combat is a number that varies.

To fight:
	now combat abort is 0;
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
	repeat with X running from 1 to number of filled rows in table of random critters:
		choose row X from the table of random critters;
		if there is a lev entry:
			if lev entry is greater than level of player plus levelwindow and hardmode is false:
				next;
		otherwise:
			next;
		if area entry matches the text battleground:
			if there is a nocturnal in row X of table of random critters:
				if (nocturnal entry is true and daytimer is day) or (nocturnal entry is false and daytimer is night):
					next;		[skips if day/night doesn't match]
			add x to q;
			if "Like Attracts Like" is listed in the feats of the player and skinname of player is name entry:
				add x to q;
			if "Like Attracts Like" is listed in the feats of the player and bodyname of player is name entry:
				add x to q;
			if "Like Attracts Like" is listed in the feats of the player and cockname of player is name entry:
				add x to q;
			if "Like Attracts Like" is listed in the feats of the player and facename of player is name entry:
				add x to q;
	if the number of entries in q is not 0:
		sort Q in random order;
		repeat with Z running through q:
			now monster is Z;
			break;
		choose row monster from the table of random critters;
		if lev entry is less than level of player and hardmode is true:
			hardmodeboost;
		now monsterhp is hp entry;
		say "You run into a [name entry].[line break][desc entry].";
		if "Experienced Scout" is listed in feats of player and a random chance of 2 in 10 succeeds and combat abort is not 1 and inasituation is false:
			say "You notice an avenue of escape! Do you want to abort the combat?";
			if the player consents:
				now combat abort is 1;
				say "You slip away before [name entry] can begin their assault.";
		now lost is 0;
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
		let needed be ( level of player plus one ) times 10;
		if "Fast Learner" is listed in feats of player:
			now needed is ( level of player plus one ) times 8;
		if xp of player is greater than needed:
			level up;
		now needed is ( level of companion of player ) times 10;
		if "Good Teacher" is listed in feats of player:
			now needed is ( level of companion of player ) times 6;
		if xp of companion of player is greater than needed and level of companion of player is less than level of player:
			pet level up;
	rule succeeds;

To challenge:
	now combat abort is 0;
	let debit be 0;
	choose row monster from the table of random critters;
	if lev entry is less than level of player and hardmode is true:
		hardmodeboost;
	now monsterhp is hp entry;
	say "You run into a [name entry].[line break][desc entry].";
	now lost is 0;
	if combat abort is 1:
		now combat abort is 0;
		rule succeeds;
		stop the action;
	wait for any key;
	Combat Menu;
	now inafight is 0;
	if xp of player is greater than ( level of player plus one ) times 10:
		level up;
	if "Fast Learner" is listed in feats of player and xp of player is greater than ( level of player plus one ) times 8:
		level up;
	[try looking;]
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
			[This provides + 1 dmg to the creature for every time it reaches a level divisible by 2 ABOVE its base level]
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
	end the game saying "You waited for rescue.";

Punying is an action applying to nothing.
understand "Puny" as punying.

carry out punying:
	now dexterity of player is 1;
	now stamina of player is 1;
	now perception of player is 18;
	say "You feel puny, but perceptive.";

Resting is an action applying to nothing.
understand "Rest" as resting;

check resting:
	if caffeinehigh of player > 0:
		say "You try to settle down to rest, but you are filled with manic, hyperactive energy and unable to rest.  Your body just won't settle down and any time to try to relax, you find yourself only thinking of going out and looking for more soda to drink." instead;
	if "cot" is listed in invent of player:
		say "You pull out your cot and lay it out before resting for a while.";
		continue the action;
	otherwise if "cot" is listed in invent of location of player:
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

carry out resting:
	Rest;

To Rest:
	if "cot" is listed in invent of player or "cot" is listed in invent of location of player or the player is in the Bunker:
		let num1 be maxhp of the player divided by 4;
		let num2 be ( stamina of the player * 2 ) + level of the player;
		if num1 >= num2, increase hp of player by num1;		[best value chosen]
		if num2 > num1, increase hp of player by num2;
		increase the hp of the player by (the stamina of the player times 2) plus the level of the player;
	otherwise if "Roughing It" is listed in feats of player:
		let num1 be maxhp of the player divided by 4;
		let num2 be ( stamina of the player * 2 ) + level of the player;
		increase hp of player by ( num1 + num2 ) / 2;		[average value chosen]
	follow the turnpass rule;
	follow the player injury rule;
	say "You are [descr]([hp of player]/[maxhp of player]).";


This is the explore rule:
	let something be 0;
	let roomfirst be 1;
	let the bonus be (( the perception of the player minus 10 ) divided by 2);
	if "Curious" is listed in feats of player, increase bonus by 3;
	if a random chance of 2 in 5 succeeds, now roomfirst is 0;		[Will it check for a room or situation first?]
	if something is 0 and a random number from 1 to 20 is less than 6 plus bonus and there is an unknown fasttravel room and battleground is "Outside" and roomfirst is 1:
		let L be a random unknown fasttravel not private room;
		if L is not nothing:
			say "[one of]After wandering aimlessly for hours, you happen across[or]Following your faint memories, you manage to find[or]Following movement, you end up at[at random] [L].";
			move player to L;
			now something is 1;
			plot;
			wait for any key;
	if something is 0 and a random number from 1 to 20 is less than 6 plus bonus and there is an unresolved situation :
		let L be a random close unresolved situation;
		If L is not nothing:
			say "[one of]After wandering aimlessly for hours, you happen across[or]Following your faint memories, you manage to find[or]Following movement, you end up at[at random] [L].";
			now something is 1;
			now inasituation is true;
			try resolving L;
			now inasituation is false;
			wait for any key;
	now inasituation is false;
	if something is 0 and a random number from 1 to 20 is less than 6 plus bonus and there is an unknown fasttravel room and battleground is "Outside" and roomfirst is 0:
		let L be a random unknown fasttravel not private room;
		if L is not nothing:
			say "[one of]After wandering aimlessly for hours, you happen across[or]Following your faint memories, you manage to find[or]Following movement, you end up at[at random] [L].";
			move player to L;
			now something is 1;
			plot;
			wait for any key;
	if "Stealthy" is listed in feats of player, decrease bonus by 2 plus (( the perception of the player minus 10 ) divided by 2);
	if "Bad Luck" is listed in feats of player, increase bonus by 1;
	if a random number from 1 to 20 is less than 10 plus bonus:
		if there is a area of Battleground in the table of random critters:
			now something is 1;
			Fight;
			if ( ( hardmode is true and a random chance of 1 in 10 succeeds ) or ( "Bad Luck" is listed in feats of player and a random chance of 1 in 12 succeeds ) ) and battleground is not "void":
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


restoration is a number that varies.
balloversize is a number that varies.
skipturnblocker is a number that varies.
mpregcount is a number that varies.

Everyturn rules is a rulebook.

This is the turnpass rule:
	follow the cock descr rule;
	follow the cunt descr rule;
	follow the breast descr rule;
	now gascloud is 0;
	if breast size of player is greater than 26, now breast size of player is 26;
	let oldlib be libido of player;
	if libido of player is less than 100 and "Horny Bastard" is listed in feats of player:
		increase libido of player by square root of ( 55 - ( libido of player / 2 ) );
		if libido of player > 100, now libido of player is 100;
	if libido of player is greater than 20 and "Cold Fish" is listed in feats of player and libido of player is not 100:
		decrease libido of player by square root of ( libido of player - 15 );
	if oldlib is less than 80 and libido of player is greater than 79:
		say "You now have trouble thinking of anything but sexual satisfaction![no line break][if cocks of player is 1]  Your cock is fully erect constantly and drools precum steadily.[no line break][otherwise if cocks of player > 1]  Your cocks is fully erect constantly and drools precum steadily.[no line break][end if][if cunts of player is 1]  Your cunt overflows with hot juices that run down your thighs.[no line break][otherwise if cunts of player > 1]  Your cunts overflow with hot juices that run down your thighs.[no line break][end if][line break]";
	otherwise if oldlib is less than 50 and libido of player is greater than 49:
		say "Your thoughts have sunk to almost constant depravity![no line break][if cocks of player is 1]  Your cock remains perpetually hard and leaking precum.[no line break][otherwise if cocks of player > 1]  Your cocks remain perpetually hard and leaking precum.[no line break][end if][if cunts of player is 1]  Your cunt is hot and dripping juices as your arousal builds.[no line break][otherwise if cunts of player > 1]  Your cunts are hot and dripping juices as your arousal builds.[no line break][end if][line break]";
	if the hunger of player is less than 0, now the hunger of player is 0;
	if the thirst of player is less than 0, now the thirst of player is 0;
	if the hp of the player is less than the maxhp of the player:
		increase the hp of the player by the stamina of the player divided by 2;
	if "Regeneration" is listed in feats of player:
		increase the hp of the player by (level of player divided by 3);
	if "Rapid Healing" is listed in feats of player:
		increase the hp of the player by 2;
	let yy be 4;
	if "Resistant" is listed in feats of player, increase yy by 2;
	if "Mutable" is listed in feats of player, decrease yy by 1;
	now yy is 1;
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
			sort table of random critters in random order;
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y from the table of random critters;
				if name entry is bodyname of player:
					now monster is y;
					say "You can feel the nanites inside you working voraciously to convert your flesh to one whole form.";
					now researchbypass is 1;
					infect;
					now researchbypass is 0;
					break;
	if "Passing Grade Chest" is listed in feats of player and breast size of player is greater than 4:
		now breast size of player is 4;
		say "You feel the pressure in your chest suddenly abate with a rush of relief.";
	if cock width of player >= 32 and balloversize is 0 and cockname of player is not "Tanuki":	[super-sized balls]
		decrease Dexterity of player by 1 + (dexterity of player / 10 );
		now balloversize is 1 + (dexterity of player / 10 );
		say "     Your balls, so huge they hang to the ground, are so big and heavy that it's difficult to drag them around, hindering your ability to move around somewhat.";
	if balloversize > 0 and cock width of player < 32:
		increase dexterity of player by balloversize;
		now balloversize is 0;
		say "     Your balls, having shrunk down somewhat, no longer hinder you.  Your legs definitely feel better for not having to drag them around anymore.";
	otherwise if balloversize > 0 and cockname of player is "Tanuki":
		increase dexterity of player by balloversize;
		now balloversize is 0;
		say "     Your mystical, Tanuki nature allows you to carry your oversize balls with ease, no longer hindered by their massive size.";
	if libido of player >= 100 and humanity of player > 0 and skipturnblocker is 0:
		say "[spontaneousorgasm]";
		decrease humanity of player by a random number between 1 and 2;
		if "Pure" is listed in feats of player, increase humanity of player by a random number between 0 and 1;
		now libido of player is 75;
		if "Horny Bastard" is listed in feats of player, now libido of player is 80;
		if "Cold Fish" is listed in feats of player, now libido of player is 60;
	if the hp of the player is greater than the maxhp of the player, now the hp of the player is the maxhp of the player;
	if a random number from 1 to 20 is greater than ( ( the stamina of the player divided by 2 ) minus 1 ):
		increase hunger of player by 1;
		if number of entries in childrenfaces is greater than 0 and a random chance of 1 in 2 succeeds, increase hunger of player by 1;
		if "Spartan Diet" is listed in feats of player and a random chance of 1 in 2 succeeds, decrease hunger of player by 1;
	if a random number from 1 to 20 is greater than ( ( the stamina of the player divided by 3 ) minus 1 ):
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
		if "Physical Booster" is listed in feats of player:
			if Strength of player < 14 and a random chance of 1 in 2 succeeds and restoration is 0:
				increase Strength of player by 1;
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
		if "Mental Booster" is listed in feats of player:
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
			end the game saying "You have died of hunger.";
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
			end the game saying "You have died of thirst.";
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
		if "Corrupt" is listed in feats of player:
			increase corruption by a random number from 0 to 1;
			increase corruption by a random number from 0 to 1;
		if "Pure" is listed in feats of player:
			decrease corruption by a random number from 0 to 2;
		decrease corruption by a random number from 0 to ( ( Perception of the player minus 10) divided by 2 );
		decrease corruption by a random number from 0 to ( ( Charisma of the player minus 10) divided by 2 );
	if corruption is greater than 0:
		decrease the humanity of the player by corruption;
		follow the brain descr rule;
		say "The nanites inside you work at rewiring your stubborn brain, leaving you with [descr] ([humanity of the player]/100)[line break]";
		if humanity of the player is less than 50:
			say "Maybe you should [bold type]use[roman type] that [bold type]journal[roman type] to help collect your thoughts.";
	if child is not born and gestation of child is greater than 0:
		decrease gestation of child by 1;
		if "Fertile" is listed in feats of player and a random chance of 1 in 2 succeeds, decrease gestation of child by 1;
		if "Maternal" is listed in feats of player and a random chance of 1 in 3 succeeds, decrease gestation of child by 1;
		if gestation of child is less than 5:
			if cunts of player > 0:
				say "Your [bodytype of player] belly protrudes in a firm dome of pregnancy, full of some unborn being, waiting to see the world, such as it is. Somehow, perhaps due to the nanites, you don't feel at all hindered despite being bloated.";
			otherwise:				[MPreg]
				say "Your [bodytype of player] belly protrudes in a firm dome from your [if cocks of player > 0]male[otherwise]neuter[end if] pregnancy, full with growing life which will soon emerge into the world.  Somehow, perhaps due to the nanites, you don't feel at all hindered despite being bloated.";
			if a random chance of 1 in 10 succeeds and ( cunts of player > 0 or breast size of player > 0 ):
				increase breast size of player by 1;
				follow breast descr rule;
				if cunts of player > 0:
					say "Your breasts feel especially tender, swollen with your condition, now [breast size desc of player], the mammary flesh stretched lightly.  Pinching your nipples causes a little of the milk to feed the child growing inside you to dribble out.";
				otherwise:
					say "Your breasts feel especially tender and you are surprised to find them swelling larger despite being [if cocks of player > 0]male[otherwise]neuter[end if], now [breast size desc of player] breasts on your [bodytype of player] body.  Pinching your nipples causes a little of the milk to feed the child growing inside you to dribble out.";
		otherwise if gestation of child is less than 10:
			if cunts of player > 0:
				say "Your [bodydesc of player] body is somewhat rounded with the effects of your oncoming pregnancy. It is progressing with worrying speed, but a warm sense of fulfillment keeps fear at bay.";
			otherwise:
				say "Your [bodydesc of player] body is somewhat enlarged by the effects of your unusual pregnancy.  It is progressing with worrying speed, but a strange sense of fulfillment keeps fear at bay.";
			increase morale of player by 1;
			if a random chance of 1 in 20 succeeds and ( cunts of player > 0 or breast size of player > 0 ):
				increase breast size of player by 1;
				follow breast descr rule;
				if cunts of player > 0:
					say "Your breasts feel especially tender, swollen with your condition, now [breast size desc of player], the mammary flesh stretched lightly.";
				otherwise:
					say "Your breasts feel especially tender and you are surprised to find them swelling larger despite being [if cocks of player > 0]male[otherwise]neuter[end if], now [breast size desc of player] breasts on your [bodytype of player] body.";
		otherwise if gestation of child is less than 30:
			if a random chance of 1 in 2 succeeds:
				if cunts of player > 0:
					say "Warm tingles gently run through your lower belly.";
				otherwise:
					say "You feel a soft shifting of something inside your lower belly.";
			if a random chance of 1 in 30 succeeds and ( cunts of player > 0 or breast size of player > 0 ):
				increase breast size of player by 1;
				follow breast descr rule;
				if cunts of player > 0:
					say "Your breasts feel especially tender, swollen with your condition, now [breast size desc of player], the mammary flesh stretched lightly.";
				otherwise:
					say "Your breasts feel especially tender and you are surprised to find them swelling larger despite being [if cocks of player > 0]male[otherwise]neuter[end if], now [breast size desc of player] breasts.";
		if gestation of child is less than 1 and ( cunts of player is greater than 0 or "MPreg" is listed in feats of the player ) and skipturnblocker is 0:
			if cunts of player > 0:
				say "With a sudden pouring of fluids, birth is upon you. You settle without much choice, breathing quickly as your body spasms in readiness. ";
			otherwise:
				say "There is a shifting in your lower belly as your special incubation chamber opens, releasing something large and heavy into your bowels.  With the completion of your unusual pregnancy fast approaching, you settle without much choice, breathing quickly as your body spasms in readiness.";
			follow cunt descr rule;
			if cunts of player > 0:
				if cunt width of player is greater than 10:
					say "Your [descr] sex almost laughs at the idea of birth. You recline and concentrate and can feel your mutated [bodytype of player] body easily slipping the child free of you, slipping almost effortlessly along your well lubricated tunnel to reach your caring embrace.";
					increase morale of player by 5;
				otherwise if cunt width of player is greater than 3:
					say "You begin to realize why labor is called that, huffing and pushing as best as you can, slowly nudging the newborn from your [descr] birthing canal. It is not as painful as the movies make out, and after about twenty minutes, the child is ready to be held by you. You feel tired, but whole, and satisfied.";
					increase morale of player by 5;
				otherwise:
					say "Horrible pain lances through your body as your [descr] sex disgorges the child only after what feels like hours of struggle. Your [bodydesc of player] body covered in sweat, you are left exhausted and winded, but bearing a newborn.";
					now hp of player is 1;
					decrease morale of player by 10;
			otherwise if cunts of player > 0:
				if mpregcount < 3:			[First few times, painful]
					say "Shifting the large mass through your lower colon and sends horrible pain through your body as it struggles to adapt to this method of birthing.  You claw at the ground and moan as your tight asshole is stretched and forced to open for the large egg.  Your body squeezes and pushes as your [bodydesc of player] body is covered in sweat and you have a grimace of pain on your [facename of player] face with each painful shifting inside you.  By the time you manage to push it free, you are left exhausted and winded, but have somehow managed to lay the soccer-ball-sized egg from your ass.  Collapsed on your side, you gently caress the rocking egg as the shell which protected your child through this difficult passage starts to crack.";
					now hp of player is 1;
					decrease morale of player by 10;
					increase mpregcount by 1;
				otherwise if mpregcount < 6:		[Next few times, struggle]
					say "As you struggle with your unusual birthing, you huff and push as best you can during your unnatural labour, working to nudge the large egg onwards, working to expell it from your anus.  It is not nearly as painful as your first few were, your [bodytype of player] body having become more adjusted to the process.  After about twenty minutes of pushing and grunting, the egg is pushed free with a little discomfort and even some pleasure as your [if cocks of player > 0]male[otherwise]neuter[end if] body feels a rush of pride at having created a new life.  You hold the big egg in your arms, cradling it as the shell starts to crack.";
					increase morale of player by 5;
					increase mpregcount by 1;
				otherwise:					[After that, easy]
					say "Your well-practiced body has little trouble with the shifting and releasing of the egg within you.  You recline and concentrate, feeling your [bodytype of player] body easily working the large egg along your lower bowels, into your rectum before spreading your legs wide to pop it free of your anus.  The egg pops free with some effort at the last step, but process actually comes with considerable pleasure[if cocks of player > 0], and you can't help but stroke yourself into cumming as the firm shell grinds and presses against your prostate as it moves[end if].  As you pull the rocking, cracking egg into your arms, you can't help but feel considerable pride at what your [if cocks of player > 0]male[otherwise]neuter[end if] body has accomplished.";
					increase morale of player by 5;
					increase mpregcount by 1;
			let z be 1;
			let fer be 0;
			if "Fertile" is listed in feats of player:
				increase fer by 3;
			if "Litter Bearer" is listed in feats of player:
				increase fer by 12;
			if a random chance of (1 + fer) in 100 succeeds:
				increase z by 1;
			if a random chance of (3 + fer) in 100 succeeds:
				increase z by 1;
			if a random chance of (5 + fer) in 100 succeeds:
				increase z by 1;
			if a random chance of fer in 100 succeeds:
				increase z by 1;
			if a random chance of fer in 100 succeeds:
				increase z by 1;
			if z > 4, now z is 4;		[extra chance, still limited to 4]
			if z is 2:
				say "Twins![line break]";
			otherwise if z is 3:
				say "Triplets![line break]";
				if cunts of player is 0, increase mpregcount by 1;	[more mpreg practice]
			otherwise if z is 4:
				say "Quadruplets![line break]";
				if cunts of player is 0, increase mpregcount by 1;	[more mpreg practice]
			repeat with y running from 1 to z:
				now child is born;
				Birth;
			increase score by 15;		[15 base +5/child]
			extend game by 4;
		otherwise:
			if gestation of child is less than 0, now gestation of child is 1;
	if the humanity of the player is less than 1 and Scenario is not "Researcher" and skipturnblocker is 0:
		end the game saying "Your mind is lost to the infection.";
	if the humanity of the player < 1 and scenario is "Researcher", now humanity of player is 1;
	decrease turns by 1;
	if ( turns minus targetturns ) <= 0 and playon is 0 and skipturnblocker is 0:
		end the game saying "You survived until the rescue came.";
	otherwise if ( turns minus targetturns ) is less than 20 and a random chance of 1 in 3 succeeds and skipturnblocker is 0 and playon is 0:
		say "[one of]You see an airplane soar overhead at jet speeds.[or]A peek from a roof shows what looks like some kind of vehicle approaching the city.[or]You have an unending sense of anticipation.[or]It's all coming to a close soon, just hang in there![at random]";
	follow the everyturn rules;
	rule succeeds;

to say spontaneousorgasm:
	if cocks of player > 0 and cunts of player > 0:
		say "     Your groin, overflowing with unsatisfied lustful needs, erupts spontaneously that knocks you to your knees.  Your [if cocks of player is 1]cock[otherwise]cocks[end if] spray your hot seed across your clothes and the ground while your hot, feminine juices soak your thighs.  You leave a [if cock width of player + ( 2 * cunt width of player ) < 18]messy splotch[otherwise if cock width of player + ( 2 * cunt width of player ) < 25]messy puddle[otherwise]large puddle[end if] of sexual fluids behind from your outburst, feeling only slightly relieved.";
	otherwise if cocks of player > 0:
		say "     Your groin, overflowing with unsatisfied lustful needs, erupts spontaneously that knocks you to your knees.  Your [if cocks of player is 1]cock[otherwise]cocks[end if] spray your hot seed across your clothes and the ground.  Your blasted cum leaves a [if cock width of player < 18]messy splotch[otherwise if cock width of player < 25]messy puddle[otherwise]large puddle[end if] of sexual fluids behind from your outburst, feeling only slightly relieved.";
	otherwise if cunts of player > 0:
		say "     Your groin, overflowing with unsatisfied lustful needs, erupts spontaneously that knocks you to your knees.  Your [if cunts of player is 1]cunt[otherwise]cunts[end if] overflows with hot, feminine juices that soak your thighs.  You leave a [if ( 2 * cunt width of player ) < 18]messy splotch[otherwise if ( 2 * cunt width of player ) < 25]messy puddle[otherwise]large puddle[end if] of sexual fluids behind from your outburst, feeling only slightly relieved.";
	otherwise:		[neuter]
		say "     Your body, consumed with a lust it is unable to satisfy, drops to its knees and trembles with an painful, aching need.  Lacking any other means, you rub over your body until it finally passes, leaving you weak, tired and largely unsatisfied.";
		now hp of player is ( 3 * hp of player ) / 4;

This is the monster injury rule:
	choose row monster from the table of random critters;
	let per be ( monsterhp times 100 ) divided by hp entry;
	if per is less than 10:
		now descr is "[one of]on death[apostrophe]s door[or]almost defeated[or]barely mobile[at random]";
	otherwise if per is less than 40:
		now descr is "[one of]wounded[or]bashed around[or]significantly harmed[at random]";
	otherwise if per is less than 80:
		now descr is "[one of]scuffed[or]bruised[or]still in the fight[at random]";
	otherwise:
		now descr is "[one of]healthy[or]energetic[or]largely unharmed[at random]";
	rule succeeds;

This is the player injury rule:
	choose row monster from the table of random critters;
	let per be ( hp of the player times 100 ) divided by maxhp of the player;
	if per is less than 10:
		now descr is "[one of]on death[apostrophe]s door[or]almost defeated[or]barely mobile[at random]";
	otherwise if per is less than 40:
		now descr is "[one of]wounded[or]bashed around[or]significantly harmed[at random]";
	otherwise if per is less than 80:
		now descr is "[one of]scuffed[or]bruised[or]still in the fight[at random]";
	otherwise:
		now descr is "[one of]healthy[or]energetic[or]largely unharmed[at random]";
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
		if skinname of player is not "human":
			now descr is "increasingly [skinname of player] perspective[lusting]";
		if cockname of player is not "human":
			now descr is "increasingly [cockname of player] perspective[lusting]";
		if tailname of player is not "human":
			now descr is "increasingly [tailname of player] perspective[lusting]";
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
	otherwise if breast size of player is less than 3:
		now descr is "[one of]palmable[or]small[or]dainty[or]slender[or]perky[at random] [character number breast size of player in cupsize] cup";
	otherwise if breast size of player is less than 5:
		now descr is "[character number breast size of player in cupsize] cup";
	otherwise if breast size of player is less than 7:
		now descr is "[one of]large[or]jiggling[or]well-shaped[or]plump[at random] [character number breast size of player in cupsize] cup";
	otherwise if breast size of player is less than 9:
		now descr is "[one of]massive[or]huge[or]heavy[at random] [character number breast size of player in cupsize] cup";
	otherwise if breast size of player is less than 12:
		now descr is "[one of]enormous[or]giant[or]hulking[or]head sized[or]basketball sized[at random] [character number breast size of player in cupsize] cup";
	otherwise:
		now descr is "[one of]gargantuan[or]beachball sized[or]mountainous[or]colossal[or]gigantic[at random] [character number breast size of player in cupsize] cup";
	now breast size desc of player is descr;
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
	otherwise if cock length of player is less than 13:
		now descr is "foot long";
	otherwise if cock length of player is less than 18:
		now descr is "[one of]huge[or]heavy[or]ponderous[or]massive[or]forearm length[at random]";
	otherwise:
		now descr is "[one of]giant[or]hulking[or]hypertrophied[or]monstrous[or]mammoth[or]gigantic[or]colossal[or]titanic[or]third leg[or]elephantine[at random]";
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
	otherwise:
		now descr is "[one of]titanic[or]seemingly bottomless[or]elephantine[at random]";
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

to linkaction (x - Person):
	if the number of entries in the conversation of x is greater than 0:
		say "Possible Actions: [link]talk[as]talk [x][end link], [link]smell[as]smell [x][end link], [link]fuck[as]fuck [x][end link][line break]";
	otherwise if x is companion of player:
		say "Possible Actions: [link]smell[as]smell [x][end link], [link]dismiss[as]dismiss[end link][line break]";
	otherwise:
		say "Possible Action: [link]smell[as]smell [x][end link][line break]";

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
			now cocktext is "have [cocks of the player] [cock size desc of player] [cock length of player]-inch-long [cock of the player] [one of]cocks[or]penises[or]shafts[or]manhoods[at random].  They are [if libido of player <= 25]only somewhat aroused at the moment[otherwise if libido of player <= 50]partially hard and dribbling a little pre[otherwise if libido of player <= 75]erect and leaking precum[otherwise]fully erect and drooling precum steadily[end if].  Underneath them hang [ball size]. ";
		otherwise:
			now cocktext is "have a [cock size desc of player] [cock length of player]-inch-long [cock of the player] [one of]cock[or]penis[or]shaft[or]maleness[at random].  It is [if libido of player <= 25]only somewhat aroused at the moment[otherwise if libido of player <= 50]partially hard and dribbling a little pre[otherwise if libido of player <= 75]erect and leaking precum[otherwise]fully erect and drooling precum steadily[end if].  Underneath it hang [ball size]. ";
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
			say " [descmod of x][run paragraph on]";
	say " Your body is [body of the player].[run paragraph on]";
	repeat with x running through equipped owned equipment:
		if descmod of x is "", next;
		if placement of x is "body":
			say " [descmod of x][run paragraph on]";
	if tail of player is "":
		say "";
	otherwise:
		say " [tail of the player][run paragraph on]";
	repeat with x running through equipped owned equipment:
		if descmod of x is "", next;
		if placement of x is "end":
			say " [descmod of x]";
	say "[line break]";
	if cocktext is not "":
		if cunttext is "":
			say "A private peek shows that you [cocktext]";
		otherwise:
			say "A private peek shows that you [cocktext]";
			say " Also, you[cunttext]";
	otherwise if cunttext is not "":
		say " You[cunttext]";
	follow the breast descr rule;
	if breasts of player is greater than 0:
		if breast size of player is 0:
			say "You have [breasts of player] nipples.";
		otherwise:
			if breasts of player is greater than 2:
				say "You have [breasts of player] breasts. The first pair looks [descr] and curves out [breast size of player] inch[if breast size of player is not 1]es[end if] from your chest. The second pair curves out [breast size of player times three divided by five] inch[if breast size of player times three divided by 5 is not 1]es[end if] from your chest. ";
				if breasts of player is greater than 4, say "The rest jostle for space [breast size of player divided by three] inch[if breast size of player divided by 3 is not 1]es[end if] from your belly.";
			otherwise:
				say "You have two [descr] breasts, curving out [breast size of player] inch[if breast size of player is not 1]es[end if] from your chest.";
	if child is not born and gestation of child is greater than 0:
		if gestation of child is less than 10:
			say "Your [skin of player] swollen belly looks ready to spill forth life at any moment.";
		otherwise if gestation of child is less than 20:
			say "You have a noticeable bulge, a soft roundness to your belly that speaks of too many nights with a tub of ice cream, or an incoming child.";
		otherwise if gestation of child is less than 30:
			say "You feel a soft subtle glow somewhere in your belly.";
	if the number of entries in childrenfaces is greater than 0:
		if the number of entries in childrenfaces is 1:
			now facename of child is entry 1 of childrenfaces;
			now bodyname of child is entry 1 of childrenbodies;
			now skinname of child is entry 1 of childrenskins;
			if ( skinname of child is not bodyname of child ) or ( skinname of child is not facename of child ):
				say "Trailing behind you, your child has a [facename of child] face, and a [bodyname of child] body covered in [skinname of child] skin.";
			otherwise:
				say "Trailing behind you, your child is a pure blood [facename of child].";
			say "They look as alert and human as you are, taking after you eagerly. Despite their age, they are already grown to young adults, both physically and in apparent emotional and mental development.";
		otherwise :
			say "Trailing behind you come your children.";
			repeat with x running from 1 to number of entries in childrenfaces:
				now facename of child is entry x of childrenfaces;
				now bodyname of child is entry x of childrenbodies;
				now skinname of child is entry x of childrenskins;
				if ( skinname of child is not bodyname of child ) or ( skinname of child is not facename of child ):
					say "One has a [facename of child] face, and a [bodyname of child] body covered in [skinname of child] skin.";
				otherwise:
					say "One is a pure blood [facename of child].";
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
			remove orthas from play;
			increase score by 900;
			extend game by 240;
			now hardmode is true;
			now levelwindow is 99999;
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
	change the current menu to table of Basic Actions;
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
	change the current menu to table of Basic Actions;
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
	wait for any key; [don't apply waiterhater, used to seperate monsters from credits]
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

understand "Scavenge" as scavenging.
understand "Scav" as scavenging.
understand "Scavenge [text]" as tscavenging.
understand "Scav [text]" as tscavenging.

check tscavenging:
	if location of player is not fasttravel, say "You can only scavenge from quick travel points." instead;
	
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
	if dice plus bonus is greater than 10:
		now inasituation is true;
		try resolving potential resources;
	otherwise:
		say "Your search turns up empty.";
	now inasituation is false;
	if battleground is "", now battleground is "Outside";
	let z be 7;
	if "Stealthy" is listed in feats of player, decrease z by 2;
	if "Bad Luck" is listed in feats of player, increase z by 1;
	if a random number from 1 to 20 is less than z:
		if there is a area of Battleground in the table of random critters:
			Fight;
			if ( ( hardmode is true and a random chance of 1 in 10 succeeds ) or ( "Bad Luck" is listed in feats of player and a random chance of 1 in 12 succeeds ) ) and battleground is not "void":
				say "As you are trying to recover from your last encounter, another roving creature finds you.";
				Fight;
	follow turnpass rule;

To Challenge (x - text):	
	sort table of random critters in random order;
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
			infect;
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


to say randomimpreg:		[Use when either would work]
	sort table of random critters in random order;
	now monster is 1;
	choose row monster from table of random critters;
	while there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
		increase monster by 1;
		choose row monster from table of random critters;
		if there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
			next;
		break;
	say "     [Impregchance]";


to say randommimpreg:		[Use when only MPreg would work]
	sort table of random critters in random order;
	now monster is 1;
	choose row monster from table of random critters;
	while there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
		increase monster by 1;
		choose row monster from table of random critters;
		if there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
			next;
		break;
	say "     [mimpregchance]";


to say randomfimpreg:		[Use when only female pregnancy would work]
	sort table of random critters in random order;
	now monster is 1;
	choose row monster from table of random critters;
	while there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
		increase monster by 1;
		choose row monster from table of random critters;
		if there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
			next;
		break;
	say "     [fimpregchance]";


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


When play ends:
	follow the self examine rule;
	if hp of player is less than 1:
		say "You did not survive, but at least you did not join the monstrous masses. There is something to be said for that, right?";
		increase score by 10;
	say "In Scenario: [scenario], You have achieved a score of [score].";
	say "This rates you as ";
	if score is less than 60:
		say "inanimate pool toy.";
	otherwise if the score is less than 120:
		say "small barking dog.";
	otherwise if the score is less than 240:
		say "Talented Child";
	otherwise if the score is less than 500:
		say "College Student";
	otherwise if the score is less than 700:
		say "Grad Student";
	otherwise if the score is less than 960:
		say "Professor";
	otherwise if the score is less than 1400:
		say "Grand Scholar";
	otherwise:
		say "Ultimate Master";
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
	if the score is greater than 9000:
		say "What, 9000?!";
	say "[line break]";
	if hp of player is less than 1:
		stop the action;
	if humanity of the player is less than 10 and hp of the player is greater than 0:
		if bodyname of player is "Dragoness" and hp of doctor matt <= 100:
			say "Following some unknown instinct, you seek out another of your own, and home in on Orthas, the dragon that was guarding the lab. She pets you gently along your neck and makes soothing sounds that has you almost purring. She proves to be a loving and kind mistress and you protect her fiercely for the remainder of your long life.";
		if bodyname of player is "Panther Taur":
			say "You get the sudden urge to prowl, and begin seeking an ideal mate. Something within you does not allow you to accept any but the strongest.[if cocks of player is greater than 1] Oddly enough, exposed and vulnerable females seem to always be acceptable. Just the thought of pinning a female down and shoving your [cock size desc of player] [cock of player] rod into their depths is enough to give you a raging hard on.[end if]";
		if bodyname of player is "Naga":
			say "Suddenly, it all becomes clear. You return to the mall and rejoin your reptilian brothers and sisters. The world will be yours in time, it simply requires patience. Fortunately, patience is something that your new kind has in abundance.";
		if bodyname of player is "Goo Girl":
			say "With a body of jello, your prospects of benevolent rescue are slim, not that you feel much urge for that anymore anyway. You descend into the darkness and [apostrophe]greet[apostrophe] those foolish enough to follow. Your undulating form and increasingly skillful teases draw a few more curious souls to your bosom than might otherwise be tempted to go looking.";
			if cunt length of player is greater than 20:
				say "One day you capture a woman poking around. You wrestle her to the ground and draw her up into your greedy form. The experience is like one extended orgasm, and her every struggling motion is a spike of sensation. You keep her inside for a month before you release her, but by then the damage was done. What emerged was another goo creature like yourself, and she no longer wished to leave. You grew to enjoy the company.";
		if bodyname of player is "Hermaphrodite Gryphon":
			say "Possessed with a sudden need to fly, you beat your powerful wings and launch to the air. You eventually roost with a few other gryphon sorts and remain out of sight, even after the city is eventually dealt with. You and the other gryphons live in a large open family, affectionate, loving, and tender.";
		if bodyname of player is "Drone Wasp":
			if bee girl is not tamed:
				say "     Hearing a faint buzzing in your mind, you are drawn back to the park, followed at a distance by a worried Honey.  There you meet up with several others of wasp nest and join them.  When Honey is spotted in the bushes nearby, the other drones charge in to attack to kill the rival insect, but you stop them.  Still sensing a faint connection in your failing mind, you are able to coax the scared bee girl into your arms and, with the help of the others, help her to become a lovely wasp like yourselves.  She moans in ecstasy, climaxing repeatedly as a new, permanent stinger grows in to replace her lost one as she becomes a strong and beautiful member of the wasp nest and a lifelong companion to you.";
			otherwise:
				say "     Hearing a faint buzzing in your mind, you are drawn back to the park.  There you meet up with several others of wasp nest and join them, lustfully giving yourself over to the pleasure of your insectile bodies.  You go along with them, following the buzzing sound you're sensing back to the wasp nest which has been set up in one of the park maintenance buildings.  There you enjoy a pleasant life of work and sex with the other beautiful wasps.";
		if bodyname of player is "Latex Fox":
			say "     Driven mad with your new, rubbery instincts, you leave the bunker and wander the city looking for further victims";
			if the cocks of the player is greater than 0:
				follow the cock descr rule;
				say ".  You find a few females to practice your [descr] manliness on, enjoying your new knot as it ties you to them and they become another yapping fox beneath you";
			if the cunts of the player is greater than 0:
				say ".  A strange pain paralyzes you a few days later and you squat. A small rubbery ball escapes your distended vulva, rapidly growing into another fox being. Driven mad with jealousy, you give the young thing a nip, and it flees off to find its own victims";
			say ".  You set up a den at an adult toy manufacturing plant.  The stores of latex are wonderfully tasty and you drink some down every day, making you extra [if cocks of player > 0]virile[otherwise]fertile[end if], increasing the number of other latex foxes you are able to create.  The large collection of unshipped products are quite enjoyable as well, both as snacks and as playthings.  Despite being relatively weak, the surge in numbers help the latex foxes survive and spread.  And while you have little urge to leave your new den, you're quite certain many of your offspring have escaped to spread beyond the city and create dens of their own.";
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
		if "Fertile" is listed in feats of player and number of entries in childrenfaces is greater than 5 and cunts of player is greater than 0:
			say "You've been pregnant so many times and given birth to so many children that the nanites make a very strange change to your reproductive organs. Your body automatically stored a large amount of cum from the last creature that screwed you. Each time you give birth, a small amount of the cum is used to re-impregnate you automatically. You spend the rest of your life in a constant state of pregnancy. At first, you're alarmed by this, but your ever growing brood of children cares for your every whim so you quickly begin to enjoy your new life.";
		if bodyname of player is "Goo Girl" and skinname of player is "Goo Girl":
			say "Your jello like form proves to be quite a curiosity, especially seeing how it seems immune to the usual signs of aging. You discover that those you absorb for a few hours can be renewed within your undulating form, and offer the service out to the wealthy, who enjoy a false second youth. They don't live any longer, but they do it as a fit and healthy twenty something year old body.";
		if bodyname of player is "Latex Fox":
			say "Your vulpine body draws little concern from the military, classified as a weak and inoffensive form.  Despite it making your processing much simpler, this does rankle you a little for some reason.  After your release, you find work at a toy factory and save some money, eventually opening your own toy manufacturing business - an adult toy company.  Running it out of your basement at first, you design and create a variety of molds and toys for the needs of a new, altered customer base among the infected.  You get several other transformed individuals to act as models for some of your toys, which is a fun and enjoyable process for all concerned.  You also enjoy testing each and every design on yourself, often multiple times, to make sure that it meets your approval.  Your small business does well and grows quickly, soon hiring several other latex foxes to help your fledgling enterprise grow to meet the enormous demand for toys of all shapes, sizes and species.";
		if bodyname of player is "Drone Wasp":
			say "     Your unusual body is analyzed by the military scientists, but you are given little concern.  You do happen to befriend a helicopter pilot, chatting with him while you're in a waiting area and he's come in with reports after another extraction.  He chats with you a while and even visits you a few times at the compound where you're being held with a large group of others";
			if cunts of player > 0:
				say ".  Claiming that you've been called over for consulting on some of the areas you witnessed in the city, he manages to get some alone time with you in his chopper one evening.  There he makes sweet love to you, a wonderfully exciting time with the risk of being caught looming over you to make it all the more invigorating.";
				say "     But at the moment of climax, you instinctively sting him.  You apologize profusely and, after his initial anger wears off, he kisses you and promises he'll not tell anyone.  He quickly makes up a plan to claim he'd gotten stung on his next mission.  Keeping his helmet on over his growing antennae and his fatigues over the chitin covering his legs, he returns you to the compound.";
				say "     When he does not return from his next mission, fallen prey to the drone wasps drawn to his altered body, you are heartbroken.  The only solace you can find is that he joined the wasps he found so sexy as is probably very happy with them.  To assuage your guilt, you join the military's air force, training to be a helicopter pilot to replace the one you cost them through your foolishness.  You are much more cautious in the future and, even after being rendered non-infectious, you make sure to get regular treatments to prevent it from ever happening again.  The child he gave you that one night grows up to become a lovely wasp girl who turns the heads of all the boys at the military academy.";
			otherwise:
				say ".  You become fast friends and he convinces you to join the military.  Becoming a gunner, you join his helicopter crew, helping to defend your friend on his missions into infected zones.";
		if bodyname of player is "Panther Taur":
			say "Your feline body draws stares, mixed between envy and disgust. You eventually gather a bit of a following, all too eager to see to your needs as they worship you as some kind of strange new god. Not that you mind much, it's nice to be waited on.";
			if cocks of player is greater than 0:
				say "Strangely enough, some woman travel a distance to find you. It seems people are remembering that felines are ancient caretakers of mothers, and ask for your blessings over their bellies, usually pregnant already, sometimes now.[line break][line break]Those that are not often present themselves, begging to be filled with your [cock size desc of player] [cock of player] shaft. You are only too pleased to comply, filling such supplicants to overflowing with thick seed, then life. They become as priests to you, remaining faithfully at your side as they birth litters of healthy kittens.";
			if cunts of player is greater than 0:
				say "You have your fair share of male suitors, most filled with empty praise and grabbing hands. They are pleasing for satisfying itches but little else. It is not until one arrives with the strength to topple you that you feel the stirrings of something close to love. You welcome the man to your bosom, and at your side, for the rest of your lives, producing a large, healthy, family of cats.";
		if bodyname of player is "Dragoness":
			say "Your dragon like body proves as much a curiosity as repulsion in those around you. You find gainful employment as a mascot for a theme park, where you are paid to wander the park and entertain the clients within. The job proves largely enjoyable, especially since the more annoying people are intimidated by your bulk and claws.";

			
Book 8 - People

[Rod and Ronda Mallrat have been moved to the RodAndRonda file]

To Extend game by (x - a number):
	decrease targetturns by x;
	say "[bold type]((You have earned additional time: [x divided by 8] days, [(remainder after dividing x by 8) times 3] hours))[roman type]";
	
When play ends:
	say "----------";
	say "I hope you enjoyed playing that as much as I enjoyed coding/writing it! It doesn[apostrophe]t have to end here though! Come join other mutants and play in the Flexible Survival universe with us!";
	say "http://flexiblesurvival.com/[line break]";
	say "Once you have a character, click [apostrophe]direct control[apostrophe], and we[apostrophe]ll be there, waiting to give a hand!";
	say "Already have a MUD/MUCK/MUSH client? We're at flexiblesurvival.com port 2000[line break][line break]";
	

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


panther milk is a grab object. It is a part of the player. Understand "milk" as panther milk. panther milk is infectious. The strain of panther milk is "Panther Taur". The trade of panther milk is "distilled milk".
chocolate milk is a grab object. It is a part of the player. Understand "milk" as chocolate milk. chocolate milk is infectious. The strain of chocolate milk is "Chocolate Lab". The purified of chocolate milk is "soda".
vixen milk is a grab object. It is a part of the player. Understand "milk" as vixen milk. vixen milk is infectious. The strain of vixen milk is "Vixen Nurse". The purified of vixen milk is "distilled milk".


check milking:
	if breasts of player is 0:
		say "You don't appear to have anything worth milking." instead;
	if breast size of player is less than 2:
		say "You don't appear to have anything worth milking." instead;
	if cunts of player is less than 1:
		say "Your breasts don't seem ready to lactate." instead;
	if lastmilking - turns is less than 8:
		say "Your breasts have been drained recently.  You'll need to wait before another worthwhile milking." instead;

Carry out milking:
	if the bodyname of the player is "Hermaphrodite Gryphon":
		say "You milk your massive blue furred tits, reveling in the pleasant sensations.";
		repeat with T running from one to the breasts of the player:
			add "gryphon milk" to the invent of the player;
		if breast size of player > 8:
			repeat with T running from one to ( ( the breasts of the player ) / 2 ):
				add "gryphon milk" to the invent of the player;
		now lastmilking is turns;
	otherwise if the bodyname of the player is "Shemale Smooth Collie":
		say "You milk your many large, furred breasts, placing the milk in your bag while recuperating.";
		repeat with T running from one to the breasts of the player:
			add "dog milk" to the invent of the player;
		if breast size of player > 8:
			repeat with T running from one to ( ( the breasts of the player ) / 2 ):
				add "dog milk" to the invent of the player;
		now lastmilking is turns;
	otherwise if the bodyname of the player is "Panther Taur":
		say "It takes a while to milk your black furred globes, but you manage to do so.";
		repeat with T running from one to ( ( the breasts of the player ) / 2 ):
			add "panther milk" to the invent of the player;
		if breast size of player > 8:
			repeat with T running from one to ( ( the breasts of the player ) / 2 ):
				add "panther milk" to the invent of the player;
		now lastmilking is turns;
	otherwise if the bodyname of the player is "Chocolate Lab":
		say "It takes little effort to draw some white chocolate flavoured milk from your breasts.";
		repeat with T running from one to the breasts of the player:
			add "chocolate milk" to the invent of the player;
		if breast size of player > 8:
			repeat with T running from one to ( ( the breasts of the player ) / 2 ):
				add "chocolate milk" to the invent of the player;
		now lastmilking is turns;
	otherwise if the bodyname of the player is "Vixen Nurse":
		say "It takes a while to milk your silvery furred breasts.  You do not get much, but you manage to do so.";
		add "vixen milk" to the invent of the player;
		if breast size of player > 8:
			add "vixen milk" to the invent of the player;
		now lastmilking is turns;
	otherwise if the bodyname of the player is "hermaphrodite dolphin":
		say "Stroking your cetacean breasts, you manage to draw out a small sample of your thick milk.";
		add "dolphin milk" to the invent of the player;
		if breast size of player > 8:
			add "dolphin milk" to the invent of the player;
		now lastmilking is turns;
	otherwise if the bodyname of the player is "Reindeer":
		say "Stroking your caribou breasts, you manage to draw out a tasty sample of your egg-nog milk.";
		repeat with T running from one to ( ( the breasts of the player ) / 2 ):
			add "egg nog" to the invent of the player;
		if breast size of player > 8:
			repeat with T running from one to ( ( the breasts of the player ) / 2 ):
				add "egg nog" to the invent of the player;
		now lastmilking is turns;
	otherwise if the bodyname of the player is "Bovine":
		say "Squeezing your soft bovine breasts, you moan and moo as you coax out a nice stream of bovine milk.";
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
Include Presets by Default Settings.
Include Shifting by Hellerhound.
Include Qytat Shifters by Hellerhound.
Include Fucking by Nuku Valente.
Include Needy Heat for FS by Telanda Softpaw.
Include Church Of The Maternal Beast For Fs by Telanda Softpaw.
Include Pets by Nuku Valente.
Include Computers by Hellerhound.
Include Feats by Nuku Valente.
Include Pepperspray by Stripes.
Include Masturbate by Stripes.
Include Alt Combat by Stripes.
Include BFandI by Stripes.
Include Parasite by Stripes.


[Locations]
Include Zephyr Inc by Nuku Valente.
Include Red Light by Hiccup.
Include High Rise District by Batroo.
Include Stables by Sarokcat.
Include New Ewe Store by Sarokcat.
Include Hyena Hideout by Sarokcat.
Include Museum by Sarokcat.
Include Tiger Den by Sarokcat.
Include Pirate Island by Sarokcat.
Include Tattoo Parlor by Sarokcat.
Include Stablemasters by Sarokcat.
Include Approaching the Capitol Building for FS by Sweraptor.
[Include Training center by Zero.]
[Include GYM by Zero.]
[Include Complex by Zero.]
Include Underwater Zone For Fs by Hellerhound.
Include Power Plant by Hellerhound.
Include Zoo by Hellerhound.
Include Qytat a'th Lundrues by hellerhound.
Include Campus For Fs by Stripes.
Include Hospital For Fs by Stripes.
Include Medical Checkups by Hellerhound.
Include Junkyard and Warehouse by Rimme.
Include State Fair by Sarokcat.
Include Down Under Pub by Stripes.
Include Kitsune Hide Away by Kaleem mcintyre.

[Quests & Events]
[Include Researcher Studio by Kaleem Mcintyre.]
Include Warehouse District by Kaleem Mcintyre.
[Include Pursuit of Science by Kaleem Mcintyre.]
Include Fire House by Kaleem Mcintyre.
[Include Important Research Quests by Kaleem Mcintyre.]
[Include Reservoir by Kaleem Mcintyre.]
Include Misc 4 by Kaleem mcintyre.
Include Main Storyline by Stripes.
Include Candy Shop by Stripes.
Include Bouncy Castle by Stripes.
Include Random Events by Hiccup.
Include High Rise Events by Stripes.
Include Hyena Bikers by Stripes.
Include Stable Related Events by Sarokcat.
Include Red Events by Stripes.
Include Dry Plains Events by Stripes.
Include Junkyard Events by Stripes.
Include Campus Events by Stripes.
Include Latex Quad Husky by Stripes.
Include New Events by Sarokcat.
Include Fair Events by Sarokcat.
Include Mall Events by Sarokcat.
Include Beach Events by Sarokcat.
Include Park Events by Sarokcat.
Include Museum Events by Sarokcat.
Include Zoo Events by Sarokcat.
Include Fair Events by Sarokcat.
Include Stable Related Quests by Sarokcat.
Include Infected Pool for FS by Hellerhound.
Include Hyena Situations by Hellerhound.
Include Catapult Encounter by Hellerhound.
Include Toy Store by Hellerhound.
Include Assorted Events by Stripes.
Include Food and Water Finding by Nuku Valente.
Include Combat Helmet by Nuku Valente.
Include Odd Weapons for FS by Hellerhound.
Include Control Pills by Hellerhound.
Include giving in by Hellerhound.
Include Addiction by Hellerhound.
Include Smell by Hellerhound.
Include Inventory Management Enhancements for FS by mirumu.
Include Story Skipper by Nuku Valente.
[Include items by Zero.]
Include Central Library by Stripes.
Include Smith Haven Mall by Anon E Mouse.
Include Brookstone Books by Anon E Mouse.
Include Kitsune by Kaleem mcintyre.
Include Old BoomBox by Kaleem mcintyre.
Include Little Old Woman by Kaleem mcintyre.
Include Extra Added Scenes by Kaleem mcintyre.
Include More Misc Events by Kaleem mcintyre.
Include Misc 3 by Kaleem mcintyre.
Include Misc Scene 5 by Kaleem mcintyre.
Include Misc 6 by Kaleem mcintyre.
Include Misc 7 by Kaleem mcintyre.
Include How High by Kaleem mcintyre.
Include Disorganization by Kaleem mcintyre.
Include Soldier Event by Wahn.
Include Endings by Darthan.


[Monsters/Infections]
Include Blob by Kaleem Mcintyre.
Include Chocolate Lab by Stripes.
Include Skunkbeast Lord by Stripes.
Include Hyperskunk for FS by Stripes.
Include Female Husky by Nuku Valente.
Include Yamato Dragon For FS by Kohryu.
Include Yamato Dragoness For FS by Kohryu.
Include Equine for FS by Nuku Valente.
Include Ashen Breeder For Fs by Stripes.
Include Lizard Girl For Fs by Damaged.
Include Skunk For Fs by Damaged.
Include Random Shemale Smooth Collie For Fs by Voldine.
Include Alien Felinoid For FS by Damaged.
Include Bovine For Fs by Damaged.
Include Small Feline And Lion For Fs by Damaged.
Include Random Tentacle Horror For Fs by Kazard.
Include Demon Brute For Fs by Leo X.
Include Parasitic Plant For Fs by Xeylef.
Include Awesome Tree For Fs by Damaged.
Include Herm Hyena for FS by Anony Mouse.
Include Wyvern For Fs by Damaged.
Include Cannon by Hiccup.
Include Spidergirl For Fs by Tentacle Specialist.
Include Bear For Fs by Nuku Valente.
Include Pit Bull For FS by Ilovecock.
Include Painted Wolf Herm by Kyvi Stormbreaker.
Include Lusty Skunk by Nuku Valente.
Include Gator by Nuku Valente.
Include MothGirl for Fs by Soren.
Include otter by Nuku Valente.
Include Ash Drakenoid by Sweraptor.
Include Kangaroo by batroo.
Include Feral Sea Dragon by Tunalord Sefont.
Include Feral Sea Dragoness by Tunalord Sefont.
Include Tigress Hooker for FS by Stripes.
Include Tiger Cop for FS by stripes.
Include Wolverine Guard for FS by Stripes.
Include Feral Wolf for FS by Shadowwolf94.
Include Anthro Shaft Beast for FS by Dragonflayer.
Include Feral Shaft Beast for FS by Dragonflayer.
Include Wrestling Wolf For Fs by Volcblaze.
Include Donkeywoman by Sarokcat n Verath.
Include Mareslut by Sarokcat.
Include Stallionboi by Sarokcat n Verath.
Include Donkeyman by Sarokcat n Verath.
Include Horseman by Sarokcat n Verath.
Include sprite by Nuku Valente.
Include Harpy by Nuku Valente.
Include Slutrat by Nuku Valente.
Include Cute Chinchilla Girl For FS by Trav.
Include Ewe by Sarokcat.
Include Ram by Sarokcat.
Include Teddy Bear by Sarokcat.
Include Hyena Matriarch by Sarokcat.
Include Alpha Wolf by Sarokcat.
Include Plush Lion by Sarokcat.
Include Rubber Tigress by Sarokcat.
Include Satyr by Sarokcat.
Include Greek Nymph by Sarokcat.
Include Panda by Sarokcat.
Include Gazelle by Sarokcat.
Include Zebra by Sarokcat.
Include Cheetah by Sarokcat.
Include Tiger by Sarokcat.
Include Tigertaur by Sarokcat.
Include Sphinx by Sarokcat.
Include Pirate Shark by Sarokcat.
Include Sabretooth by Sarokcat.
Include Jackalboy by Sarokcat.
Include Wolftaur by Sarokcat.
Include jackalman by Sarokcat.
Include Panther Herm by Sarokcat.
Include Succubus by Sarokcat.
Include Twisted Pimp by Sarokcat.
Include Alpha Husky by Sarokcat.
Include Leopardman by Sarokcat.
Include Hawkman by sarokcat.
Include Unicorn by Sarokcat.
Include Arctic Fox by Sarokcat.
Include Nightmare by Sarokcat.
Include Ash Dragator for FS by Sweraptor.
Include Ash Whelp For FS by Sweraptor.
Include Male Peacock for FS By Lago Moro.
Include Gryphons Plot for FS by Hellerhound.
Include Dolphin for FS by Hellerhound.
Include Centaur by Hellerhound.
Include Nymph for FS by Hellerhound.
Include Latex Wolf for FS by Hellerhound.
Include Hermaphrodite Latex Vixen for FS by Tentabear.
Include Butterfly for FS by mirumu.
Include Rabbit Pack for FS by Lago Moro.
Include Jaguar Orderly For Fs by Stripes.
Include Mismatched Chimera For Fs by Stripes.
Include Naughty Nurse by Stripes.
Include Triceratops For Fs by Stripes.
Include Siamese Cats by Stripes.
Include Albino Mouse by Stripes.
Include Cat Ninjas by Stripes.
Include Reindeer by Stripes.
Include Snow Leopard for FS by Stripes.
[Include Strange Slut by Zero.]
[Include Dominator by Zero.]
Include Random German Shepherd For Fs by Telanda Softpaw.
Include Messy Pig for Fs by anonymous.
Include Elf by Nuku Valente.
Include Cougar by Stripes.
Include Margay For Fs by Stripes.
Include Clockwork Fox For Fs by Stripes.
Include Killer Whale For Fs by Stripes.
Include Cerberus For Fs by Stripes.
Include Rodeo Clown For Fs by Stripes.
Include Fluffy Owl For Fs by Stripes.
Include Rhino For Fs by Stripes.
Include Siren For Fs by Stripes.
Include Werewolf Costume For Fs by Stripes.
Include Hippo Strongman For Fs by Stripes.
Include Squid For Fs by Stripes.
Include Centaur Mare For Fs by Stripes.
Include Centaur Stallion For Fs by Stripes.
Include Prairie Dog For Fs by Stripes.
Include Snake For Fs by Stripes.
Include Bald Eagle For Fs by Stripes.
Include Wildcat For Fs by Stripes.
Include Goblin For FS by Stripes.
Include Junkman For FS by Stripes.
Include Trash Coon For FS by Stripes.
Include Snow Bat For Fs by Stripes.
Include Bottlenose Toy For Fs by Stripes.
Include Mental Mouse For Fs by Stripes.
Include Vulpogryph For Fs by Stripes.
Include Psycho Weasel For Fs by Stripes.
Include Incubus For Fs by Stripes.
Include Bunny Jock For Fs by Stripes.
Include Elven Hunter For Fs by Wahn.
Include Hulking Cheerleader by Wahn.
Include Gargoyle by Kaleem mcintyre.
Include Manticore by Kaleem mcintyre.
Include Minotaur by Kaleem mcintyre.
Include Retriever by AGentlemanCalledB.
Include Doberman for FS by Stripes.
Include Sugar Ferret for FS by Stripes.
Include Candy Striper by Stripes.


[NPCs]
Include Stuck Dragon by Hiccup.
Include DrMoffatt by Stripes.
Include RodAndRonda by Stripes.
Include Tanuki by Nuku Valente.
Include Mouse Taur by Nuku Valente.
Include Deer by Nuku Valente.
Include Lance by Verath.
Include Palomino by Verath.
Include Tristian by Verath.
Include Fancy by Sarokcat n Verath.
Include Daisy by Sarokcat n Verath.
Include Onyx by Sarokcat n Verath.
Include Zoo People by Sarokcat.
Include Sarah by Sarokcat&Hellerhound.
Include Coleen by Sarokcat.
Include Nermine by Sarokcat.
Include Lindsey by Sarokcat.
Include Midnight by Sarokcat.
Include Harold by Sarokcat.
Include Kara by Sarokcat.
Include Janice by Sarokcat.
Include Alex by Nuku Valente.
Include Hadiya by Kaxin.
Include Desperate Bunny by Nuku Valente.
Include Hyper Squirrel by Nuku Valente.
Include Hungry Boar Man by Hiccup.
Include Orthas by Nuku Valente.
Include Sven by Stripes.
Include Frank by Stripes.
Include Sally by Stripes.
[Include Max by Zero.]
Include Fang by Stripes.
Include Joanna by Stripes.
Include Solstice by Stripes.
Include Leonard by Stripes.
Include Athanasia by Stripes.
Include Alpha Fang Scenes by Nuku Valente.
Include Elijah by Wahn.
Include Eric by Wahn.
Include RexxyEvent by AGentlemanCalledB.


[Pets]
Include Gryphon Companion by Sarokcat.
Include Little Fox by Sarokcat.
Include Felinoid Companion by Sarokcat.
Include Kitty Cat by Sarokcat.
Include Skunk Pet by Sarokcat.
Include Exotic Bird by Sarokcat.
Include Rachel Mouse by Stripes.
Include Honey by Stripes.


Book Start the Game

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


Part Game Options

Game Options is a room.  The description of Game Options is "     Game start settings:[roman type][line break][startstatsstatus][line break][startgenderstatus][line break][startscenariostatus][line break][startfeatsstatus][line break][startbannedstatus][line break]Game start settings take effect when you [bold type][link]push start button[end link].[line break][roman type]     [header-style]Display settings:[roman type][line break][starthyperstatus][line break][startwaitsstatus][line break][startclearsstatus][line break]Display settings take effect instantly and can be toggled on and off as you see fit.";

Stat Bonus is in Game Options. The description of Stat Bonus is "[startstatsstatus][startstatsoptions]";
Gender is in Game Options. The description of Gender is "[startgenderstatus][startgenderoptions]";
Scenario Choice is in Game Options. The description of Scenario Choice is "[startscenariostatus][startscenariooptions]";
Free Feats is in Game Options. The description of Free Feats is "[startfeatsstatus][startfeatsoptions]";
Banned Creatures is in Game Options. The description of Banned Creatures is "[startbannedstatus][startbannedoptions]";
Hyperlinks is in Game Options. The description of Hyperlinks is "[starthyperstatus][starthyperoptions]";
Waits is in Game Options. The description of Waits is "[startwaitsstatus][startwaitoptions]";
Clears is in Game Options. The description of Clears is "[startclearsstatus][startclearoptions]";
Start Button is in Game Options.  The description of Start Button is "[bold type][link]Push start button[end link][roman type] will start play, using current settings.";

Section Option Says

To say starthyperstatus:
	say "Hyperlinks are currently: [if hypernull is 0]On[otherwise if hypernull is 1]Off[end if]";
To say starthyperoptions:
	say "[line break]Type [bold type][link]Hyper On[end link][roman type] or [bold type][link]Hyper Off[end link][roman type]";

To say startwaitsstatus:
	say "Waiting for input is currently: [if waiterhater is 0]On[otherwise if waiterhater is 1]Off[end if]";
To say startwaitoptions:
	say "[line break]Type [bold type][link]Waits On[end link][roman type] or [bold type][link]Waits Off[end link][roman type]";

To say startclearsstatus:
	say "Screen clears are currently: [if clearnomore is 0]On[otherwise if clearnomore is 1]Off[end if]";
To say startclearoptions:
	say "[line break]Type [bold type][link]Clears On[end link][roman type] or [bold type][link]Clears Off[end link][roman type]";

To say startstatsstatus:
	say "Stat bonus is currently: [if startstatbonus is 1]Strength[otherwise if startstatbonus is 2]Dexterity[otherwise if startstatbonus is 3]Stamina[otherwise if startstatbonus is 4]Charisma[otherwise if startstatbonus is 5]Perception[otherwise if startstatbonus is 6]Intelligence[otherwise if startstatbonus is 7]Randomized stats[end if]";
To say startstatsoptions:
	say "[line break]Type [bold type][link]set Stat Bonus to Strength[end link][roman type] or [bold type][link]set Stat Bonus to Dexterity[end link][roman type] or [bold type][link]set Stat Bonus to Stamina[end link][roman type] or [bold type][link]set Stat Bonus to Charisma[end link][roman type] or [bold type][link]set Stat Bonus to Perception[end link][roman type] or [bold type][link]set Stat Bonus to Intelligence[end link][roman type] or [bold type][link]set Stat Bonus to Random[end link][roman type]";
	
To say startgenderstatus:
	say "Player gender is currently: [if startgenderchoice is 0]Male[otherwise if startgenderchoice is 1]Female[end if]";
To say startgenderoptions:
	say "[line break]Type [bold type][link]set Gender to Male[end link][roman type] or [bold type][link]set Gender to Female[end link][roman type]";
	
To say startscenariostatus:
	say "Scenario is currently: [if startscenariochoice is 1]Bunker[otherwise if startscenariochoice is 2]Caught Outside[otherwise if startscenariochoice is 3]Rescuer Stranded[otherwise if startscenariochoice is 4]Forgotten[otherwise if startscenariochoice is 5]Researcher[otherwise if startscenariochoice is 6]Hard mode[end if]";
To say startscenariooptions:
	say "[line break]Type [bold type][link]set Scenario Choice to Bunker[end link][roman type] or [bold type][link]set Scenario Choice to Caught Outside[end link][roman type] or [bold type][link]set Scenario Choice to Rescuer Stranded[end link][roman type] or [bold type][link]set Scenario Choice to Forgotten[end link][roman type] or [bold type][link]set Scenario Choice to Researcher[end link][roman type] or [bold type][link]set Scenario Choice to Hard mode[end link][roman type]";

To say startfeatsstatus:
	say "Free feats are currently: [freefeatgeneral]  [freefeatfun]";
To say startfeatsoptions:
	say "[line break]Type [bold type][link]set Free Feats to general[end link][roman type] or [bold type][link]set Free Feats to fun[end link][roman type]";

To say startbannedstatus:
	say "The following creatures types are currently banned: [startbannedflags]";
To say startbannedflags:
	blank out the whole of table of combat items;
	let X be 1;
	repeat with Q running through flags:
		choose a blank row in table of combat items;
		now title entry is printed name of Q;
		now description entry is printed name of Q;
		if q is banned:
			say title entry;
			say "  ";
		now toggle entry is flag ban rule;
To say startbannedoptions:
	say "[line break]Type [bold type][link]set Banned Creatures to configure[end link][roman type]";

Section Setting Options

Understand "set [something] to [text]" as setting it to.
Understand "set [something] [text]" as setting it to.

[start settings]
Instead of setting Stat Bonus to "Strength": now startstatbonus is 1; say "Your strength is your specialty."; prealternatestartstats;
Instead of setting Stat Bonus to "Dexterity": now startstatbonus is 2; say "Your dexterity is your specialty."; prealternatestartstats;
Instead of setting Stat Bonus to "Stamina": now startstatbonus is 3; say "Your stamina is your specialty."; prealternatestartstats;
Instead of setting Stat Bonus to "Charisma": now startstatbonus is 4; say "Your charisma is your specialty."; prealternatestartstats;
Instead of setting Stat Bonus to "Perception": now startstatbonus is 5; say "Your perception is your specialty."; prealternatestartstats;
Instead of setting Stat Bonus to "Intelligence": now startstatbonus is 6; say "Your intelligence is your specialty."; prealternatestartstats;
Instead of setting Stat Bonus to "Random": now startstatbonus is 7; say "Your stats will be randomized.  If you no longer qualify for your selected feat, you'll be given the option to take a new one after starting the game."; prealternatestartstats;
Instead of setting Gender to "Male": now startgenderchoice is 0; say "Gender is now Male.";
Instead of setting Gender to "Female": now startgenderchoice is 1; say "Gender is now Female.";
Instead of setting Scenario Choice to "Bunker": now startscenariochoice is 1; say "Scenario is now Bunker.";
Instead of setting Scenario Choice to "Caught Outside": now startscenariochoice is 2; say "Scenario is now Caught Outside.";
Instead of setting Scenario Choice to "Rescuer Stranded": now startscenariochoice is 3; say "Scenario is now Rescuer Stranded.";
Instead of setting Scenario Choice to "Forgotten": now startscenariochoice is 4; say "Scenario is now Forgotten.";
Instead of setting Scenario Choice to "Researcher": now startscenariochoice is 5; say "Scenario is now Researcher.";
Instead of setting Scenario Choice to "Hard mode": now startscenariochoice is 6; say "Scenario is now Hard mode.";
Instead of setting Free Feats to "general": startFeatget; say "General Feat chosen.";
Instead of setting Free Feats to "fun": startFunFeatget; say "Fun Feat chosen.";
Instead of setting Banned Creatures to "configure": ban menu; say "Banned Creatures configured.";
Instead of pushing Start Button: start button;
[display settings]
Instead of setting Hyperlinks to "On": now hypernull is 0; say "Hyperlinks enabled.";
Instead of setting Hyperlinks to "Off": now hypernull is 1; say "Hyperlinks disabled.";
Instead of setting Waits to "On": WaitLoveFunction;
Instead of setting Waits to "Off": WaitHateFunction;
Instead of setting Clears to "On": ClearMoreFunction;
Instead of setting Clears to "Off": ClearLessFunction;

Section Alternate Start

To prealternatestartstats: [set any stats that need to be set to keep the player's time in the options room working]
	now the strength of the player is 12;		[sets all to 12, then applies selected bonus]
	now the Dexterity of the player is 12;
	now the Stamina of the player is 12;
	now the Charisma of the player is 12;
	now the Perception of the player is 12;
	now the Intelligence of the player is 12;
	now the humanity of the player is 100;		[prevents endgame from sanity before game starts]
	startstatbonus;						[applies the current, pre-selected stat boost]


To startFeatget: [alternate featget used for start]
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
				now freefeatgeneral is the title in row calcnumber of table of gainable feats; [important change from regular featget]
				now featqualified is 0;
				break; [if featqualified is 0, ]
			otherwise if playerinput matches "0":	[do not use calcnumber, as non-numbers will return 0]
				say "Selection aborted.";
				continue the action;
			otherwise:
				say "Invalid Feat.";

To startFunFeatget: [alternate funfeatget used for start]
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
				now freefeatfun is the title in row calcnumber of table of gainable feats; [important change from regular featget]
				now featqualified is 0;
				break; [if featqualified is 0, ]
			otherwise if playerinput matches "0":	[do not use calcnumber, as non-numbers will return 0]
				say "Selection aborted.";
				continue the action;
			otherwise:
				say "Invalid Feat.";

To start button: [options are set, begin game]
	now started is 1; [make start as being done.  makes leveling/etc work right]
	follow the random stats rule; [set stats to base for game]
	move player to bunker, without printing a room description; [relocate for start]
	startstatbonus; [apply stat bonus]
	startgender; [apply gender stats]
	startscenario; [sets scenario for use in introstorytext]
	startfreefeats; [gives free feats]
	startcreatureban; [bans creatures, as requested]
	if waiterhater is 0, wait for any key; [waits so status text is shown.  could be removed?]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	introstorytext; [plays intro text and starts game]

To startstatbonus: [apply stat bonus]
	if startstatbonus is 1:
		increase strength of player by 5;
	otherwise if startstatbonus is 2:
		increase dexterity of player by 5;
	otherwise if startstatbonus is 3:
		increase stamina of player by 5;
	otherwise if startstatbonus is 4:
		increase charisma of player by 5;
	otherwise if startstatbonus is 5:
		increase perception of player by 5;
	otherwise if startstatbonus is 6:
		increase intelligence of player by 5;
	otherwise if startstatbonus is 7 and started is 1:
		randomstatstart;
	otherwise if started is 1:
		say "Invalid stat choice - defaulting to random.";
		randomstatstart;
	if started is 1, say "[line break]You have decided your physical talents.";
[	follow the prerestore the game rule;] [for loading?]

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


To startgender: [apply gender stats]
	if startgenderchoice is 0:
		now the cocks of the player is 1;
		now the cock length of the player is 6;
		now the cock width of the player is 4;
		now the breasts of the player is 2;
		now the breast size of the player is 0;
		say "You are a man.";
	otherwise:
		now the cunts of the player is 1;
		now the cunt length of the player is 6;
		now the cunt width of the player is 4;
		now the breasts of the player is 2;
		now the breast size of the player is 2;
		say "You are a woman.";
	now the morale of the player is the charisma of the player plus the perception of the player;
	now the HP of the player is the stamina of the player times two;
	increase the HP of the player by 5;
	now the maxhp of the player is the hp of the player;
	now the humanity of the player is 100;
	now the capacity of the player is five times the strength of the player;
	now the menu depth is 0;[unneded?]
[	follow the location choice rule;][unneded?]

To startscenario: [sets scenario for use in introstorytext]
	if startscenariochoice is 1:
		now scenario is "Bunker";
	otherwise if startscenariochoice is 2:
		now scenario is "Caught Outside";
	otherwise if startscenariochoice is 3:
		now scenario is "Rescuer Stranded";
	otherwise if startscenariochoice is 4:
		now scenario is "Forgotten";
	otherwise if startscenariochoice is 5:
		now scenario is "Researcher";
	otherwise if startscenariochoice is 6:
		now scenario is "Hard mode";
	otherwise:
		say "Invalid scenario choice, defaulting to [']Bunker['][line break]";
		now scenario is "Bunker";

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

To introstorytext: [plays intro text and starts game.  also applies most (all?) of the scenario relayed settings]
	if scenario is "Caught Outside":	[processes infection data first, then clears so intro text can remain intact]
		randominfect;
		randominfect;
		randominfect;
		randominfect;
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	if scenario is "Bunker":
		say "You managed to find your way to a bunker, where you hid away for some time. No special perks, default start.";
	otherwise if scenario is "Caught Outside":
		say "You were forced to survive outside. You have already been mutated a bit, though your practice has hardened you.(Gain Spartan Diet)[line break]";
	otherwise if scenario is "Rescuer Stranded":
		say "You arrived late, looking for survivors, when you got cut off from your team mates, now you just want to survive!(Start with no supplies, an iron man mode, can you survive?)[line break]";
	otherwise if scenario is "Forgotten":
		say "You stayed in hiding too long. Your supplies have run dry, and the rescue already came and left. It will be a long time before any more arrive![line break]";
	otherwise if scenario is "Hard mode":
		say "You always had a desire to challenge yourself so purposely waited for some stronger opponents to appear before venturing out. Your supplies have run dry, and the rescue already came and left. It will be a long time before any more arrive![line break]";
	otherwise if scenario is "Researcher":
		say "You are not stranded at all. You came to explore, catalog, and interact with this absolutely fascinating outbreak. You've been given immunizations to casual infection(You won't transform from losing battles) and have specialized equipment that allows you to collect the infection vials of those you defeat.[line break]";
	if scenario is not "Bunker":
		say "What luck. After looking around desperately, you come across a library with a mostly intact bunker in it. This will serve well as a refuge while you wait for rescue.";
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
			remove orthas from play;
			increase score by 600;
			extend game by 240;
		if scenario is "Hard mode":
			now invent of bunker is { };
			add "cot" to invent of bunker;
			now the printed name of Doctor Matt is "Left Behind Recording of Doctor Matt";
			now the initial appearance of Doctor Matt is "A small recorder labeled 'Doctor Matt' remains abandoned.";
			now the description of Doctor Matt is "A small recorder labeled 'Doctor Matt' remains abandoned.";
			now the hp of doctor matt is 100;
			remove orthas from play;
			increase score by 900;
			extend game by 240;
			now hardmode is true;
			now levelwindow is 99999;
	if scenario is "Rescuer Stranded":
		say "Hours after the outbreak, you had been part of the military's fast response team. Your initial task was reconnaissance with the hopes of setting up a rally point for helicopter evacuation of any non-infected survivors.";
		say "Your team was moving on foot through the streets of downtown when you were set upon by creatures out of a pervert's nightmare. All discipline was lost as your team disintegrated into panic and fled unthinkingly into the city, pursued by the nightmares...";
		say "You awake in what appears to be a disused bunker. You have no idea how you even got here, but you are uninfected. In your panicked flight you lost all of your supplies. No food. No water. No weapons. No radio. At least you have your backpack, and your watch.";
		say "Heaven only knows what awaits you outside but, you have to find a way back.";
		say "Taking a deep breath you open the door to your sanctuary...";
	otherwise:
		say "Phew, you barely made it in here, then the lights went out. You waited, in the dark. You're not sure how long you've been down here, but the sounds have long since died away. You've eaten a good portion of the food and water. No choice but to go out and greet the city. At least you have your [bold type]backpack[roman type], and your [bold type]watch[roman type]. How bad could it be?[line break][line break]((Hey there! Some tips for you. Type [bold type]look backpack[roman type], and type [bold type]look watch[roman type]. Also, try [bold type]look me[roman type]! Your description will probably change as you play.  Or [bold type]help[roman type] for more detailed help.))[line break][line break]";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	if scenario is "Researcher":
		say "The helicopter brought you into the devastated city. Ruin and strange creatures milled about beneath you as you flew over at high speed. This place has been written off as a loss, but there was rumor they[']d take it back. You only have so much time to investigate, and you plan to make the most of it.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "You're let down beside an old bunker. It would serve as your base of operations, and would be where they[']d pick you up when it was over. You should be scared, but you just can[']t seem to muster that sensation. They gave you booster shots against the nanites. You know what you are doing. They will be so proud of what you find. Maybe you can figure out a way to stop this from happening again in other cities.[line break][line break]";
	otherwise:
		say "You remember how it went down. Satellite, gone, Internet, offline. The power was the last thing to go, just a precious hour later. People wandered the streets, confused, panicked. Then they came. Monsters. Freaks. They'd grab people. Some got mauled on the spot. Some fought back. You did what you could, but you managed to get here, to safety. The bunker. You remember seeing that stupid bunker sign for years, who knew remembering it would save your life? You waited for others to come. Surely you were not the only one to remember?";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "No one else ever arrived. Ah well, you're an American of the 21st century. What's a little Apocalypse to keep you down? Steeling your nerves and readying what little supplies you have, you break the seal and prepare to set out.[line break][line break]";
	try looking;
	zephyrad rule in 1 turn from now;

To regularstart: [normal start method]
	follow the random stats rule;
	increase the score by 10;
[	follow the finish stats rule;]
	while 1 is 1:
		repeat with y running from 1 to number of filled rows in table of start game:
			choose row y from the table of start game;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "Type the number corresponding to the stat you want +5 in> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= 6:
			now current menu selection is calcnumber;
			follow the finish stats rule;
			if rule succeeded:
				break;
			otherwise:
				if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
		otherwise if calcnumber is 8:
			follow the prerestore the game rule;
			break;
		otherwise:
			say "Invalid Selection.";
	repeat with x running through featsets:
		now x is a part of the player;
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	say "Select your first two, free, feats, by clicking one of the below:[line break]";
	featget;
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	say "And now the second.";
	funfeatget;
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	say "[line break]Would you like to select types of creatures to NOT appear in the game?";
	if the player consents:
		ban menu;
	repeat through the table of random critters:
		let bad be 0;
		repeat with n running through all banned flags:
			if name entry is listed in infections of n:
				now bad is 1;
		if bad is 1:
			blank out the whole row;
	repeat with n running through situations:
		let bad be 0;
		repeat with q running through all banned flags:
			if n is listed in badspots of q:
				say "[n] removed due to [q].";
				now bad is 1;
		if bad is 1:
			now n is resolved;
	sort table of random critters in lev order;
	if scenario is "Caught Outside":
		randominfect;
		randominfect;
		randominfect;
		randominfect;
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	say "Want more details on the game and updates? ----- [bold type]http://nukuv.blogspot.com/[roman type]  ------[line break][line break]";[moved to after start questions and before ingame text]
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	if scenario is "Rescuer Stranded":
		say "Hours after the outbreak, you had been part of the military's fast response team. Your initial task was reconnaissance with the hopes of setting up a rally point for helicopter evacuation of any non-infected survivors.";
		say "Your team was moving on foot through the streets of downtown when you were set upon by creatures out of a pervert's nightmare. All discipline was lost as your team disintegrated into panic and fled unthinkingly into the city, pursued by the nightmares...";
		say "You awake in what appears to be a disused bunker. You have no idea how you even got here, but you are uninfected. In your panicked flight you lost all of your supplies. No food. No water. No weapons. No radio. At least you have your backpack, and your watch.";
		say "Heaven only knows what awaits you outside but, you have to find a way back.";
		say "Taking a deep breath you open the door to your sanctuary...";
	otherwise:
		say "Phew, you barely made it in here, then the lights went out. You waited, in the dark. You're not sure how long you've been down here, but the sounds have long since died away. You've eaten a good portion of the food and water. No choice but to go out and greet the city. At least you have your [bold type]backpack[roman type], and your [bold type]watch[roman type]. How bad could it be?[line break][line break]((Hey there! Some tips for you. Type [bold type]look backpack[roman type], and type [bold type]look watch[roman type]. Also, try [bold type]look me[roman type]! Your description will probably change as you play.  Or [bold type]help[roman type] for more detailed help.))[line break][line break]";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	if scenario is "Researcher":
		say "The helicopter brought you into the devastated city. Ruin and strange creatures milled about beneath you as you flew over at high speed. This place has been written off as a loss, but there was rumor they[']d take it back. You only have so much time to investigate, and you plan to make the most of it.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "You're let down beside an old bunker. It would serve as your base of operations, and would be where they[']d pick you up when it was over. You should be scared, but you just can[']t seem to muster that sensation. They gave you booster shots against the nanites. You know what you are doing. They will be so proud of what you find. Maybe you can figure out a way to stop this from happening again in other cities.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	otherwise:
		say "You remember how it went down. Satellite, gone, Internet, offline. The power was the last thing to go, just a precious hour later. People wandered the streets, confused, panicked. Then they came. Monsters. Freaks. They'd grab people. Some got mauled on the spot. Some fought back. You did what you could, but you managed to get here, to safety. The bunker. You remember seeing that stupid bunker sign for years, who knew remembering it would save your life? You waited for others to come. Surely you were not the only one to remember?";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "No one else ever arrived. Ah well, you're an American of the 21st century. What's a little Apocalypse to keep you down? Steeling your nerves and readying what little supplies you have, you break the seal and prepare to set out.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	say "[line break]Welcome to...";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	zephyrad rule in 1 turn from now;

Book 10 - Let the Games Begin

understand "saveword" as savewording;

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
	if scenario is "Researcher" or nanitemeter is 1:
		say "[link][bracket]Vial[close bracket][as]Vial Inventory[end link] ";
	say "[link][bracket]Rest[close bracket][as]rest[end link] ";
	say "[link][bracket]Save[close bracket][as]saveword[end link] ";
	say "[line break]";
	say "Exits: ";
	repeat with nam running through valid directions:
		say "[link][printed name of nam][end link] ";
	say "[if location of player is fasttravel][bracket][link]nav[end link], [link]scavenge[end link], [link]explore[end link][close bracket][end if]";
	say ", Visible Things: ";
	repeat with y running through the things in the location of the player:
		if y is a door, next;
		say "[link][y][as]look [y][end link] ";
	say "[link]area[as]look[end link]";
	say "[line break]>";

When play begins:
	repeat with x running through situations:
		now x is a part of the player;
	repeat with x running through grab objects:
		now x is a part of the player;
	now the command prompt is "[promptsay]";
[	now the command prompt is "Location: [the player's surroundings] XP:[xp of player]/[level up needed] Lvl: [level of player] HP:[hp of player]/[maxhp of player][line break]Exits: [List of Valid Directions] Hunger: [hunger of player] Thirst: [thirst of player] Score:[score]/[maximum score][line break][list of valid directions][if location of player is fasttravel], [bracket]nav, scavenge, explore[close bracket][end if]>";]


When play begins:
	adjustdefaulthelp; [adjusts help menu]
	let tempname be indexed text;
	repeat with q running from 1 to the number of rows in the table of game objects:
		add name in row Q of table of game objects to allobjs;
		choose row q in the table of game objects;
		now tempname is name entry in lower case;
		now sortname entry is tempname;
	sort the table of game objects in sortname order;
	change the right hand status line to "[list of valid directions]";
	say "Some questions before getting into the game...";[warn the player what to expect next]
	say "Do you want hyperlinks? (Y/n)";
	if player consents:
		let x be 0;
	otherwise:
		now hypernull is 1;
		say "Hyperlinks disabled.";
	say "Do you want to use the alternate (experimental) start method? (y/n)";
	if player consents:
		increase the score by 10;
		repeat with x running through featsets:
			now x is a part of the player;
		prealternatestartstats; [sets stats to prevent oddities from alternate start]
		say "Want more details on the game and updates? ----- [bold type]http://nukuv.blogspot.com/[roman type]  ------";
		say "[line break]Welcome to...";
		move the player to Game Options, without printing a room description; [puts player in room for options, prevents displaying of look text?]
	otherwise:
		regularstart; [original start method.  easier to move everything then leave here]
