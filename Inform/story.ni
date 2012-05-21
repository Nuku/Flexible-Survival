"Flexible Survival" by Nuku Valente

Book 0 - Pre game prep stuff

Release along with an interpreter. 
Use memory economy.
Use slow route-finding.
Use MAX_INDIV_PROP_TABLE_SIZE of 500000.
Use MAX_PROP_TABLE_SIZE of 500000.
use MAX_STATIC_DATA of 950000.
Use MAX_OBJ_PROP_COUNT of 128.
use MAX_SYMBOLS of 65000.
use MAX_NUM_STATIC_STRINGS of 40000.
use ALLOC_CHUNK_SIZE of 75000.
use MAX_OBJECTS of 1000.
use MAX_ACTIONS of 250.
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
		say "[link]more[as] [end link]";
	keypause;

to clear the screen and hyperlink list:
	clear the screen;
	now hyperlink list is {}.
[This must remain whole or errors from cleared hyperlinks can occur!]


To keypause:
	(- KeyPause(); -)

The release number is 55.
The story creation year is 2010.
The maximum score is 2500.

[include Glulx Entry Points by Nuku Valente.]
Include Text Capture by Eric Eve.
Include Inline Hyperlinks by Nuku Valente.

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
"Wait Less"	"Tired of having to click more to continue much of the text?. Type [bold type]i hate to wait[roman type] to skip many delays.[line break]Don't like the change and want to go back?  Type [bold type]i love to wait[roman type] to return to the default."
"Clear Less"	"Don't like the page clearing of text?  Want the combat interface at the bottom of the screen?[line break]Type [bold type]the clears are gone[roman type] to stop screen clearing.[line break]Don't like the change and want to go back?  Type [bold type]the clears are back[roman type] to return to the default."
"Auto Attack"	"If you have the Instinctive Combat feat you can use different automatic attacks.  These are the same as picking the same option over and over again during combat.  No different results, just less typing.[line break]Type [bold type]auto attack normal[roman type] for the default method of combat (choose each action).[line break]Type [bold type]auto attack berserk[roman type] to always attack in combat.[line break]Type [bold type]auto attack pass[roman type] to always pass in combat.[line break]Type [bold type]auto attack coward[roman type] to always flee in combat.[line break]Type [bold type]auto attack submit[roman type] to always submit in combat."


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


to say abbey desc:
	say "     This converted abbey has been made into a small library and the architecture and design shows its origins despite the renovations made.  The simple columns, the wall sconces and several of the original features have been kept to give the library some 'character'.  The central room houses the stacks and a few desks, with side rooms set aside for reading and a couple of computers.  The computers would be more useful if there was power in the building.  You're still not entirely sure what knocked them out, but they're very out now.  You came here because you remembered there was a disused bunker in the basement.  It's kept you alive, so far.";
	if Fang is in the Grey Abbey Library:
		say "     Fang is on guard here by the door on his rope leash, tied to a [one of]column[or]desk[or]water fountain[or]metal staircase[or]wall sconce[at random].";

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
There is a Cola Vending Machine in Mall Foodcourt. "A broken down vending machine lurks nearby with several, large, soda brands brightly painted onto it." It is fixed in place. It has a description "A vending machine. It appears to dispense soda, but it's broken.".
Cola Vending Machine has a number called dispensed.
understand "vending machine" as Cola Vending machine.
Microwave is a thing. "A small microwave lays, almost hidden, in the corner, perhaps you could [bold type]microwave[roman type] something."

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

Book 4 - Start the Game

	
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

Book 5 - Tables

Table of Game Objects
name	desc	weight	object
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
	say "As you start sliding your [cock size desc of player] shaft in and out you notice the Foxes ass seems to be adjusting to you, stretching and tightening in just the right places to fit your [cock of player] penis perfectly. As this is happening the Fox switches from whimpers and yelps to long low moans of pleasure, his red knotted shaft starts growing and leaking rubbery precum.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "Nearing orgasm you pick up the pace, your little red toy drooling in bliss. Fucking the Fox like a wild man you let out a roar as torrents of cum pour forth from your tool, lewdly distending the belly of your victim. Not to be left out, the Fox starts shooting gobs of thick rubbery cum onto the ground, pooling around him. With some effort you pull your cock out of the little Fox with an audible pop. The seed you just planted come spilling out of the abused hole adding the the already large pool of cum the Fox is laying in.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "With your lust sated you put on your clothes. Walking away you smile as you see the little Fox lustily wallows in the pool of cum, occasionally dipping its head to the pool and taking loud slurpy gulps of semen, coo-ing with satisfaction.";
	decrease libido of player by 30;
	if libido of player is less than 0, now libido of player is 0;


to say latexfoxrapee:
	say "The Latex Fox slumps to the ground defeated. The critter lays on the ground, his big red knotted cock looking painfully erect. Not wanting to waste such a perfect opportunity you straddle the fox and slowly ease yourself down.";
	if cunt length of player is less than 6:
		say "As the tip of the Foxes shaft reaches your opening, you realize it is far too big for you to accommodate. Seeing your frustration the Fox lets out a long hissing sigh, and seems to shrink in size, You now easily take him right down to the knot.";
	otherwise if cunt length of player is less than 10:
		say "The fox's shaft slides into you smoothly as you take him all the way to the knot.";
	otherwise:
		say "The fox's little erection slides into you easily, a bit too easily for your liking as it seems too small to give you any real pleasure. Seeing your frustration the Fox takes a large breath and seems to grow in size, filling you completely.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "Resting comfortably on the fox's knot you start sliding up and down on his red latex shaft, gradually increasing speed. You feel the knot trying to sneak in on every thrust, but it seems like the knot is just too big to tie to you. You start to think it's a lost cause when suddenly a sharp blinding pain, and a yelp from the Fox lets you know that the knot made it inside and you are indeed tied.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "As the pain subsides you are left with an amazing feeling of fullness, as gob after gob of thick rubbery jism starts filling you. The feeling of the thick cum churning inside you is too much and sends you into a screaming orgasm.[impregchance]";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
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
			say "Realizing that knot is not going in without a bit more force than gravity can provide, you get an idea. Taking your large [cock of player] rod you push it down between your lovers massive blue furred tits. You take the Gryphons arms and have her cross her chest, under her breasts but over your cock, effectively locking you in place. 'Hold on tight!' you say as you lean back, using the leverage your giant cock provides to force the knot inside. you both moan loudly as the pain quickly transforms to intense pleasure, the Gryphon starting to rock back and forth as you become accustomed to her size.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "Enjoying the sensation you join in, rocking your hips back and forth, causing your cock to start fucking the Gryphons ample cleavage. You feel something moist start rubbing the tip of your rock hard shaft, you look down to see the Gryphons beak encasing the head of your cock. Worrying that the Gryphons impressive beak is about to take a bite our of your favorite organ you start to withdraw, but you quickly realize there is nothing to worry about as her tongue starts to dance across the head of your engorged member. You feel the your [ball size] sized balls start to contract as you near orgasm. Sensing your near the Gryphon pick up the pace of her fucking, pounding your abused pussy mercilessly.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "'HARDER, FASTER!' you scream as you feel your orgasm approaching. With a guttural yell you climax, releasing gob after gob of hot thick cum straight down the Gryphons throat. Not to be left out the Gryphon gives one last hard thrust and starts dumping what feels like gallons of hot seed into your belly. Knowing that you are tied on that knot and not going anywhere until the Gryphon is done cumming you ease yourself forward and rest your head on one of her bountiful blue breasts.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "You absentmindedly start sucking on one of your lovers dark blue nipples and your tongue is greeted with the sweetest, most delicious milk you have ever tasted. You start suckling greedily, taking your fill of the Gryphons magnificent nectar. once your thirst has been quenched you notice that the Gryphons cock has shrunk down and can now be easily removed. As you rise to your feet the Gryphons cock pops out of you like the cork on a champagne bottle, your gaping pussy spraying Gryphon seed everywhere.";
			decrease thirst of player by 5;
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "'Call me!' the Gryphon squawks plaintively as you stumble away, dressing yourself as you go.";
		if cock length of player is less than 8 and cunts of player is greater than 0:
			say "Your opponent hits the ground with a loud *thud* and a squawk. Lying defeated and on her back, the Gryphon awaits her fate with more than a little anticipation. You straddle your fallen blue playmate and start to ease the tip of the long black shaft past your moistening lips. You feel every inch as you slide all the way down to the knot. Unable to take the cock in any further you start to move your hips, grinding against the Gryphons mighty black knot. The Gryphons eyes start to roll back, your opponent lost in bliss from your grinding, occasionally emitting a low rolling squawk.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "As you increase your pace, you see what appears to be milk dribbling from the beast's large nipples. You bend down and take one of the nipples into your mouth. As you greedily suck up all the milk these wonderful teats will produce a hot wave of desire floods through you, and you start to really want that knot inside you. Grinding harder and harder, faster and faster, you try and get that bulb to pass your slick pink lips. You feel climax approaching, so you pull down as hard as you can trying to force that knot inside.";
			decrease thirst of player by 5;
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if cunt length of player is less than 6:
				say "It's no use, you are just too small to take it all in. The Gryphon chirps soothingly understanding your frustration. Suddenly you let out a startled yelp as you feel an electrifying tickling sensation on your clit, you look down to see the puffed end of a blue tail to be the cause.";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				say "'Perhaps this will help ease your suffering' your lover says softly, and help it does! The added sensation of that blue tail proves too much for you. As your body shakes with orgasm, you involuntarily clench your jaw, clamping down on the tasty milk squirting nipple. The added pain is apparently just what she needed, your azure mate letting out a loud squawk as she climaxes, filling you with cum from one end and milk from the other.";
			otherwise:
				say "Seeing what your are trying to do, your blue lover waits for the right moment and with one masterful thrust, she firmly wedges her massive black knot deep inside your trembling pussy. The mixed feelings of pain and pleasure overcome you, your knees buckle and you collapse into the soft furry warmth of the Gryphon's bosom. You are still conscious, but you are too overwhelmed to do anything but enjoy the ride.";
				say "'It's alright baby, mama's here' the Gryphon coos as she softly wraps her furry blue arms around you, placing her leaking nipple back into your mouth. As you resume suckling the Gryphon starts to rock her hips back and forth, causing her knot to stretch you to your limits. The pleasure is so intense that you barely notice as you achieve orgasm after orgasm thanks to your lover's exceptional skills. After what seems like seconds (although you realize it's more like half an hour) the Hermaphroditic Gryphon lets out a loud squawk as she climaxes, filling you with cum from one end and milk from the other.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "You lie there for a few minutes, not wanting to move after that marathon fucking, and also enjoying the softness of your partners massive furry blue breasts. Eventually the Gryphon's swollen knot shrinks down and she finishes filling you with seed. You slowly get to your feet, still impaled on Gryphon cock. You start gingerly sliding the bulbous black shaft out and as it passes your abused nether lips a torrent of cum spills out, drenching the almost unconscious Gryphon below. You get dressed and leave, the Gryphon still on the ground, eyes closed, moaning, and idly fondling her ample breasts.";
			decrease libido of player by 30;
			if libido of player is less than 0, now libido of player is 0;
		if cocks of player is greater than 0 and cunt length of player is less than 6:
			say "Your opponent hits the ground with a loud *thud* and a squawk. Lying defeated and on her back, the Gryphon awaits her fate with more than a little anticipation. You move to your knee's positioning your [cock size desc of player] member at your victims quivering slit.";
			if cock length of player is less than 6:
				say "With almost no effort Her massive pussy swallows your entire cock. With what could almost pass for a smirk, the gryphon squawks 'I guess your just not Man enough...'. Anger and lust getting the better of you, you pull your cock out of her voluminous cunt and repositioning slightly you place the tip at the entrance to her back door. Her eyes going wide with fear, your prey is about to voice her dissent, but too late, your lust won't be denied. With some effort you push past her tightly clenched sphincter, drawing loud pained squawks from your victim. You start slowly fucking her tight asshole, in and out, gradually picking up speed. Eventually the Gryphons squawking changes pitch; however she felt before, she definitely seems to be enjoying this now.";
			otherwise:
				say "With what almost sounds like a combination of a squawk and purring the Gryphon spreads her legs further apart, her blue lips trembling against your [cock of player] manhood. She stares up at you expectantly, as you slowly enter her accommodating tunnel. A look of absolute pleasure crosses the Gryphons face as you start to slide in and out. You pick up speed, your balls slapping against her on every thrust.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "As your rhythmic fucking continues, your victim starts to squeeze her gigantic blue breasts. You see a small dribble of milk escape both of her nipples as she roughly fondles herself. Continuing with your assault, you start to get annoyed by her massive erection. Its so big that it manages to slap your chin on each thrust. On one thrust a bit of precum escapes the Gryphons cock and hits your tongue, the taste is magical, and you need more. Shifting a bit, you manage to take the tip of the Gryphons knotted black cock into your mouth, and your start wildly pumping away at it with both hand's, while still fucking her abused hole furiously. ";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "The combined stimulation is too much for the Gryphon as her body is wracked with orgasm. Gob after gob of the most delicious cum starts pouring down your throat, while at the same time milk gushes from the Gryphons massive breasts, soaking the both of you. Your blue partners orgasm causes her muscles to involuntarily clamp down on your throbbing cock, this increased friction is all it takes as you start to pump her full of your seed.";
			decrease hunger of player by 5;
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "Spent and exhausted you get dressed and walk away, leaving the Hermaphroditic Gryphon to lie in a pool of her own milk.";
			decrease libido of player by 30;
			if libido of player is less than 0, now libido of player is 0;

to say huskybeaten:
	if cocks of player is greater than 0 and libido of player is greater than 40:
		say "Having bested her, you shove her back. She yelps as she falls and twists, landing on all fours. You grab her wide hips and, without hesitation, slam your [cock size desc of player] [cock of player] pole into her hot depths and begin to breed her on the spot. She barks and shudders with pleasure, rocking against you as you pump into her round form, caressing her large breasts greedily as you rock her forward. Her furry flesh rubs against your [skin of player] skin, sending tingles through your body.";
		say "You feel climax strike like a lightning bolt, and you fill her wanting womb with thick squirts of hot fertile seed. She arches under you, trembling in pleasure. Satisfied, you pull from her, slapping her furry ass before leaving.";
	otherwise:
		say "[one of]She whimpers and falls back, stumbling onto her ass as she looks up at you fearfully. Her wide, doe like eyes glisten with terror before she squeezes them shut, and spreads her thighs. Despite temptation, you decide to not take on her offer, and leave her there, whining[or]Exhausted, she slumps against you, tears streaming along her furry cheeks. Her paws gently brush at you as she mutters something of an apology. You push her away, but decide against hurting her further, simply leaving her there[at random].";

to say huskywinner:
	if cocks of player is greater than 0:
		say "[one of]Having defeated you, the husky begins to pant heavily. She rolls you onto your back and clambers on top of you. Her deft fingers soon have you free of your clothing, tossed to the side as she barks in your face. She slips up and waves her excited furry snatch in your face before settling back, pressing your [cock size desc of player] [cock of player] shaft into her quivering cunt. She howls and yips as she rises and falls against you, her many breast jiggling about with every pound down against you. Her sex is a hot, wet, oven, clenching powerfully and pulling you right over the edge.[line break][line break]As you catch your breath, she rubs over her softly furred belly, glowing with satisfaction at your seeding. Finally, she draws up from you with a wet sucking noise from her sated cunt, and she prowls off, leaving you in a puddle of sweat to recover at your own pace[or]She kneels down and nuzzles into your crotch, biting at you until she has direct access, then running her long, wet, tongue across your increasingly excited [cock size desc of player] [cock of player] cock. Her long snout descends, taking it in entirely as she bobs slowly, suckling and milking your balls with a softly furred hand. It is not long before you are filling her snout, watching her swallow most of it, a little dribbling down her black lips, just to be lapped right back up. She sits up, smiles at you, and quietly departs[at random].";
	otherwise:
		say "She lays down on top of you and grinds lustfully, but you lack the parts she so urgently needs. She does think of one part you have she can use and slides up against you, pressing her hot, musky, snatch against your face, grinding insistently, grunting and whimpering with need. Her hot juices flow down across your nose and mouth, though you are unable to participate much in your current state. Suddenly she arcs her back and howls, almost drowning you in thick husky honeys as she hits peak. She slumps back, panting loudly, and slowly rolls off of you, slinking off into the city.";


Table of random critters
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
"Drone Wasp"	"[one of]The drone attacks with its small claws, leaving tiny furrows that sting slightly.[or]The drone dive bombs through the air with its stinger at the ready, spreading its venom into your body causing you to shudder in pain and lust.[or]The drone flies in close and hugs you, not harming you but seeming to gaze longingly into your eyes.[at random]"	"[one of]The drone flutters off with a tattered wing, crying as she flies away, leaving you with a slight sense of guilt.[or]The drone falls to the ground and begins to cry, as you hear buzzing nearby you think its best to get away as you run quickly.[at random]"	"[one of]The drone slips her lips onto yours, kissing deeply as she lets a small amount of honey in her mouth slip into your own.[or]The drone flies around happily before flying off to brag to its sisters.[or]The drone pins you down to the ground as she grins forcing your lips onto her sex as she rubs her small mound against you, moaning softly before she finally cums, and giggles flying off as quickly as she came.[at random]"	"A small , shy of four feet, wasp like girl, small delicate buzzing wings on her back, her skin colored in yellow and brown marking. Her hands only having three fingers and small claws. Out of her rear extends her wasp like abdomen with a small stinger on the end. Her face seeming cute with her short brown/blond hair. She looks at you with a soft smile on her lips buzzing left and right.[line break][line break]Written by asani."	"charmingly human"	"largely human, except for the new abdomen protruding from your rump, sporting a new stinger. You are also a lot shorter, shy of four feet at best."	"black and brown striped"	""	""	"Your face tingles softly, but not much physically changes from the human norm, except that it is now cute, and female looking."	"You feel a bulging from your bottom that expands out to a whole new segment of body, a stinger slipping free."	"Your skin changes colour as it changes to yellow and brown, the striped markings covering your body."	"You feel something internal shifting around."	"You feel something internal shifting around."	10	10	14	12	10	10	"Female"	20	1	3	"Park"	0	0	0	2	3	0	1	6	4	50	--	0
"Dragoness"	""	""	""	""	"reptilian snout and great teeth. Two horns spiral backwards over your"	"large and reptilian, covered in [skin of player] flesh. You are forced to all fours except for brief, awkward, moments. It reminds you of a dragon, if you had to guess."	"[one of]dull red[or]dull orange[or]lustrous blue[sticky random] scaled"	"You have a wide, tapered, dragon's tail with a spade at the tip."	"[one of]draconic[or]normally internal[or]reptilian[at random]"	"your face draws forward into a reptilian snout, covered in [skin of player] flesh."	"Your body grows to larger than human norm, becoming quadrupedal, with great spikes along your back. You look very much like a dragon."	"Your skin breaks out in large armored scales that rapidly spread over your body"	"Your spine tingles before it explosively expands backwards into a great, thick, tail with spikes along the top."	"Your cock tingles as it becomes draconic in shape, a vent forming to hold it within you."	20	10	12	12	12	12	"Female"	--	--	20	"Nowhere"	0	0	0	2	10	0	1	15	10	40	--	0
"Panther Taur"	"[one of]She leaps at you and catches you between her heavy breasts, applying the softest crushing you've ever had.[or]She rears up and plants her forward lower paws on your shoulders while her hind paws kick up, cutting into you with sharp claws in a painful rake.[or]She lashes out with a powerful set of sharp claws.[or]She rushes right at you, forcing you to back against a wall.[at random]"	"[one of]The cat looks entirely irritated at the constant abuse on her perfect body. With a haughty harumph, she suddenly turns tail, raising it to expose her thick, furry, netherlips, then bolts off.[or]The cat mewls sadly, backing away before she raises her hands to her heavy breasts, pressing them together as she gives you a smoldering look. Wouldn't it be nice to make love instead of war?[felitaur tempt][at random]"	"[felitaur rape][line break]"	"An almost pure black panther creature, with a humanoid torso. Her face has some human features, like that snarl, and her pretty [one of]blue[or]brown[or]green[at random] slitted eyes, but is, overall, feline in make. She has two large breasts on her upper chest, bouncing lightly with her steps. On her undercarriage rest six more heavy bumps, swaying with every powerful step of those large paws of hers.  Behind her, tucked between her hindlegs, is a thick sheath, large as a can of Pringles, with large seed factories to match, all jostling as she moves. Despite her bulk, she moves with grace and agility, which is a shame, since she seems to think you'd be good prey.[line break][line break]Commissioned by AsureaSkie"	"feline face, with blunt snout, wet black nose and pointed ears above your"	"is bent into a whole new shape, with the body of a black panther attached at your midsection, extending out behind you with four powerful paws.[if breasts of player is greater than 2] All your breasts except the first two rest on the chest of that lower torso, swaying with each step.[end if]"	"[one of]furry[or]black furred[at random]"	"You have a long, black, feline tail that likes to curl and uncurl at its own whim. "	"[one of]black sheathed[or]barbed[at random]"	"You can feel warmth as your face begins to reshape into a muzzle, long teeth filling your new mouth, tongue becoming rougher. Your ears are tugged as if by an angry mother, soon perched at the top of your head, pointed and twitching."	"You stagger in place, almost toppling backwards as new legs sprout out, ruining your balance. Fortunately, those new legs dig into the ground, helping to restore your equilibrium as you rapidly grow the torso of a panther from the hips down. Your hands become somewhat paw like, claws sliding free.[if breasts of player is greater than 2] Your breasts quiver as all but the top two migrate downward, settling on the undercarriage of your new torso.[end if]"	"soft ticklish sensation greets the arrival of a thick pelt of pure black fur across your body."	"you shake it, a new limb extending from it, becoming a long [skin of player] tail, clearly feline in build."	"Your cock draws up against your belly as a [skin of player] sheath wraps around it. It also grows soft barbs around the head, sure to stimulate any partner."	12	18	10	12	10	10	"Both"	20	3	6	"Outside"	1	14	15	6	8	0	1	14	8	90	--	0
"Goo Girl"	"[one of][if cocks of player is greater than 0]With a swipe of a flexible hand she bypasses your clothes, slithering under them to grab at your [cock size desc of player] [cock of player] shaft and starts squeezing, causing pain and pleasure in equal parts.[otherwise if cunts of player is greater than 0 and cunt length of player is less than 12]She surges towards you and grabs at your crotch. Her fluid body flows through creases and cracks, finding your [cunt size desc of player] pussy and diving into it with great zeal, stretching and buzzing harshly, almost making you dizzy with forced pleasure.[otherwise if cunts of player is greater than 0 and cunt length of player is greater than 11]The goo girl grabs at your crotch, and suddenly seems to be shrinking. Your [cunt size desc of player] cunt suddenly sings in pleasure as she flows into you rapidly, making your belly bloat wide for a moment as she fully inhabits your womb before she spills back out in a great warm rush of thick fluids.[otherwise]She swats at you with a flexible hand, bruising you between the legs.[end if][or]She hugs you into her soft bosom. It would be kind of nice if you could breathe![or]A thousand tiny tendrils suddenly spread from her body, slapping at you wildly. It's fortunate they are not too hard.[at random]"	"[one of]The gooey girl falls back onto her bottom, panting, or just quivering, it's hard to tell. Her thighs are parted, exposing her gently undulating folds to your eyes. [gootemp][or]The girl loses cohesion with a gurgling cry of dismay, becoming a pool of unmoving ichor at your feet.[or]The goo girl suddenly dives for a nearby liquid and vanishes into it instantly, gone.[at random]"	"[one of]The girl laughs in soft bubbles at your defeat, but takes mercy on you, leaving you to peace.[or]The goo girl moves up to you and hugs you suddenly, drawing you into a firm embrace against her soft body. She shakes her head silently, then spreads her semi solid nethers before your eyes, leaning back and offering herself. [gootemp][or]Victorious, the goo creature lashes you a few times with a whip like hand for good measure, then loses interest.[at random]"	"A jiggling girl of [one of]blue[or]green[or]purple[at random] color. You can see through her, mostly, her gelatin like flesh tinting the area behind her with its lustrous shade. Her upper torso is well defined, with large breasts somehow jiggling just a little more noticeably than the rest of her. Her lower body seems to meld into a grand base of goop just past her thighs, her legs permanently held together. She seems to notice you and turns to you. With soft slurping sounds, she propels herself at you like an incoming wave, hands outstretched for you with an unwavering smile."	"curiously disquieting smile on a pretty human face"	"melded together just at your thighs, flowing together into a large and bulbous base of [skin of player] flesh"	"[one of]jellied[or]gelatin like[or]translucent[at random] [one of]blue[or]red[or]purple[sticky random]"	""	"[one of]partially fluid[or]flexibly semi-solid[or]jellied[at random]"	"you can feel your face reshaping into rather pretty proportions. An urge overtakes you and you smile, and never stop"	"you feel your feet drawn to one another as strange throbbing builds in your shins. Your lower legs flow into one another, creating a [skin of player] base of flesh that goes up to your lower thighs"	"a ripple of tingles rushes through your entire body as you sink towards the ground, then rise again, wobbling along the way. A glance at a hand shows that you can see right through your now jello-like flesh"	"you get an odd feeling, but see no change"	"your [cock size desc of player] dick gives a powerful lurch as strange fluid rushes up into it, making it swell a moment before the former color drains, leaving the new, somewhat flexible, gelatin behind. A squeeze confirms that it is still quite solid enough to get the job done"	8	10	10	10	10	5	"Both"	30	2	3	"Mall"	0	6	4	2	3	0	1	20	20	40	"glob of goo"	100
"Naga"	"[one of]The snake swipes at you with its pipe with alarming accuracy.[or]With a loud hiss, the snake lashes at you, sinking a few fangs painfully into your [skin of player] body.[or]The snake lashes out with its tail, striking you solidly with the heavy mass.[at random]"	"[one of]The snake staggers from its many wounds and collapses to the ground, unmoving.[or]Your last blow draws a shuddering hiss before the snake falls to the ground and ceases fighting.[or]Detecting the fight lost, the snake suddenly flees on quick scales, abandoning the struggle.[at random]"	"[first time]The snake laughs, like a dry hiss, tongue flicking as it moves over your defeated form, 'You should go back to where you came from, human, your kind is finished in this city. Remember it or you will be punished fresh.' [only][one of]The snake prods you with its club to ensure the fight has left you before slithering off, seemingly satisfied with its victory.[or]The great naga throws its coils about you in a warm, soft, crushing embrace. Breathing becomes hard as it constricts. Consciousness fades to black. When you awaken, the snake man has departed.[or]With a cruel sounding laugh, the naga grabs you and throws you over a coil, wrenching free your clothes to expose your bottom to it. It coils about you, warm and trapping, as it becomes a he, twice so, two thick human like shafts sliding free of some internal sheath. Intent on punishment over breeding, he grabs you to pull you back as he thrusts firmly into your back door, lancing you on the thick tool and rocking without concern for your comfort.[line break][line break]Your ass sends guilty pangs of pain and pleasure through you as the snake keeps your wriggling form under control, pounding eagerly at your [skin of player] flesh. The tool within you swells suddenly, then begins to explode, filling your bowels with thick gouts of snake seed. Satisfied, the snake rolls you off of himself to the ground, and slithers away.[at random] "	"Human and snake blended together in an intimidating mixture. It has [one of]brown and black[or]bright red and yellow[or]grey and tan[at random] scales, fine and soft looking. Two muscular arms are its only limbs, if one discounts the great tail that makes up most of its body. Clenched in its right hand is a pipe. A crude, but likely effective, makeshift weapon. Of course, it also has great jaws that likely contain sharp, possible venomous, teeth. Its human torso is well muscled and sleek, well built all around and lacking in blemish. Its head and face is entirely that of a huge snake, staring unblinkingly and tasting the air with flickering forked tongue.[line break][line break][line break]Commissioned by AsureaSkie."	"a snake's head, with unblinking eyes and huge venomous fangs. Your [skin of player] hide is sleek across your majestic hood, flaring wide when excited or worked up, framing your head from behind your face"	"extremely long. You can feel the powerful rings of your muscles drawing you forward quietly across the ground. It almost feels like you're floating along, moving with a sublime confidence in your snake like body"	"[one of]scaly[or]softly scaled[or]scaled[at random]"	""	""	"you feel your [skin of player] skin stretching out as your skull flattens out into a snake-like face. Your eyes blink for the last time before the lids become clear. You find you can now taste the air"	"your legs snap together, almost toppling you as they flow together quickly. Strange numbing pleasure radiates down along your torso as you can feel your spine extending down along your fused legs, then beyond, forming a powerful tube-like body that trails along behind you"	"soft [one of]brown and black[or]bright red and yellow[or]gray and tan[at random] scales begin to spread quickly from your palms. As they settle, soft itching warmth follows, then fades, leaving you with a new hide to admire"	"you feel something settle in your lower torso, but nothing physically changes that you can see"	"your cock becomes achingly erect for a moment before settling down, seemingly unchanged."	14	10	12	12	12	8	"Male"	25	3	6	"Mall"	2	16	9	2	3	0	0	0	0	20	--	0
"Hermaphrodite Gryphon"	"[one of]She throws her impressive, and somewhat jiggly, bulk against you.[or]She snaps at you with that razor sharp beak, leaving a thin red line as it cuts your [skin of player] body.[or]She presses up against you suddenly and grinds her huge shaft against your belly. While you are distracted, you can feel her grabbing at your sides, squeezing painfully.[or]She charges at you, wings pulling her free of the ground just moments before she crashes bodily into you.[at random]"	"[gryphon lose]"	"[gryphon fuck]"	"She is a tall and striking blue gryphon. She has wide hips and huge blue breasts, implying she leans more on her mammal half than her avian, though her large blue wings are quite a sight to behold. Between her white-furred thighs is a huge, knotted, black cock and tightly drawn balls. From behind, the pinkened folds of her female gender are visible under the lion-like tail she sports. Her feet are digitigrade, and sport huge wicked claws that clack on hard surfaces."	"powerful beak that protrudes in a clean curve. Above, feline ears twitch and turn above your altered"	"dramatically altered, with powerful digitigrade legs of leonine musculature, great claws on your [skin of player] feetpaws. Behind you, two large feathery wings flutter on occasion"	"[one of]soft, blue, and furry[or]softly furred[at random]"	"You have a thin leonine tail swaying over your ass. Its [skin of player] length has a tuft of blue fur at the end."	"[one of]sheathed and black[or]knotted[or]dense, black[or]inhumanly bulging[at random]"	"your ears are drawn upwards to the top of your head and a wicked beak pushes forward"	"you feel surges of alien power building in your thighs as they grow with new muscles. The oddly pleasant sensation flows downwards into your shins as they smoothly shift to a digitigrade stance. Your feet become [skin of player] paws, large, with dangerous looking curved claws. You glance back as your back itches, then in a burst of brief pain, parts to admit two large, feathery, wings"	"a flush of arousal stirs through you as a dense carpet of blue fur engulfs you in its warm, encouraging, presence"	"you feel a new weight. A glance shows a long [skin of player] tube growing over your ass. The end blossoms out into a blue, furry, tuft. You have a tail"	"pleasure builds in your cock as it deepens to a midnight black, a large swollen knot forming towards the base and a [skin of player] sheath overtaking the very base of it"	12	10	12	14	10	12	"Both"	22	2	5	"Outside"	1	13	7	2	8	0	1	13	7	80	"gryphon milk"	50
"Female Husky"	"[one of]The sex crazed husky manages to pin you against some debris as she gnaws at your shoulder. You're sure she means it as a come on, but it just hurts.[or]The husky howls in frustration and slices with her dull claws. It seems awkward, but it stings![or]She manages to get her hands on you and squeezes tightly, pressing her delightful assets to you even as she denies you breath in the tight embrace.[at random]"	"[huskybeaten]"	"[huskywinner]"	"A slutty husky, a beautiful anthro canine covered in soft, snowy fur. She has a slim, feminine muzzle and perky, overly large ears along with a large, fluffy husky tail. Her chest bears two firm and grope-able C cup breasts along with two B cup pairs of breasts underneath them, all of them oozing small droplets of milk. Her creamy colored tummy is slightly swollen as if she is barely pregnant, though that will probably change soon due to the aching need oozing from her swollen slit as it's obvious she's become nothing more than a needy whore."	"slim, feminine muzzle and perky, overlarge ears over a canine"	"that of a bipedal dog, with digitigrade legs and paw-like hands"	"[one of]soft white fur[or]dense white fur[at random]"	"You have a long and fluffy dog[apostrophe]s tail swaying behind you"	"[one of]canine[or]knotted[or]bright red doggy[or]bestial[at random]"	"your face draws forward into a slender canine snout. Your elongated tongue slips free of your new lips, lolling in the air wetly a moment"	"your legs bend and twist into digitigrade form with soft subtle snaps of flowing bones. You look down to see your feet becoming entirely paw like and your hands become somewhat paw-like"	"your skin prickles from head to toes as fur begins to push through from underneath, soon covering you in a soft, almost comforting, layer of fluffy white fur"	"a long tail pushes from your spine, uplifting in a stiff arc, it begins to sway slowly without your input"	"your shaft tapers out, becoming slender, though a huge swelling comes into being towards the base, a knot. The skin turns reddish before the whole thing slowly withdraws into a sheath you didn't have a moment ago"	6	12	6	6	2	16	"Female"	15	1	3	"Outside"	0	0	0	4	6	0	1	10	6	90	--	0
"Latex Fox"	"[one of]The latex fox lunges at you with gleaming rubber fangs and sinks them into your body, growling as it does so.[or]The fox leaps on you, raking several bloody lines with its claws.[or]The fox bowls into you, knocking you back painfully as it snarls, exposing sharp rubber teeth.[at random]"	"[latexfoxrape]"	"[one of]Yipping victoriously, the fox chews at you with loud squeaky noises. It would be adorable if you weren't in pain everywhere. Eventually the beast tires of chewing at you with its suddenly soft and noisy teeth, and wanders off, leaving you to pick yourself up and wander back to the bunker, defeated.[or]The fox rolls you over and clambers up on top of you with a feral snarl.[if the cunts of the player is greater than 0]The fox slips his suddenly erect rubber cock into you without further delay, rutting into your [one of]cunt[or]pussy[or]passage[at random] with eager pumps of his hips. You feel something warm and tingling rushing into your body as he knots to your abused gender, remaining on top of you, holding you still until it diminishes.[impregchance] Sated, he rises and departs into the city.[otherwise] He thrusts up against your ass, probing with his hard canine rubber pecker until he finds his target and sends a whole new pain into your already abused form, starting to claim his dominance over you with happy yelps and growls. He floods your bowels with thick, tingling, seed, but does not knot with you. He draws back and flees, leaving a trail of rubbery looking seed.[end if][at random]"	"You encounter a creature made of glistening latex. It is largely red in color, but white along its belly and groin. A fox, making squeaking sounds as it moves. It looks happy to see you. By happy we mean hungry."	"mixture of canine and human, in a perpetual sneer of exposed teeth, making for an interesting"	"mostly human, except for the digitigrade stance of your feet, er, or is that paws? And those claws look dangerous."	"red, black, and white latex"	"You have a long tail, shaped like a fox tail, but made entirely of rubber. It squeaks as it sways back and forth. "	"[one of]canine[or]knotted[or]bright red doggy[or]bestial[at random]"	"your face reforms, vision blocked by a narrow fox like snout, and new ears twitching on top of your head"	"a wave of itching runs through the meat of your body as your legs pop into a new, digitigrade, configuration. Your feet begin to feel cramped before they snap loudly, becoming entirely paws. Your fingers are still itching as sharp little claws slip free of them"	"smooth latex seems to rush out over your body, covering every inch of you, inside and out, leaving you shivering and somewhat flush"	"a sudden loud FWOOMF has you looking over your shoulder just in time to see a new, large, fox like tail curling and flicking energetically"	"your cock grows steel hard as it begins to throb urgently. It grows increasingly red as it becomes slightly more slender. Soon a [cock width of player] inch knot forms at the base, ready to tie you to a willing, or not, partner"	10	12	8	10	6	6	"Male"	15	1	4	"Outside"	1	8	6	2	5	0	4	8	6	20	""	0


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
		if there is no area entry, next;
		if area entry matches the text battleground, case insensitively:
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
					if dice is greater than 14:
						Fight;
						if ( ( hardmode is true and a random chance of 1 in 10 succeeds ) or ( "Bad Luck" is listed in feats of player and a random chance of 1 in 12 succeeds ) ) and battleground is not "void":
							say "As you are trying to recover from your last encounter, another roving creature finds you.";
							Fight;
				otherwise:
					say "Despite your searches, you fail to find it.[line break]";
					now dice is a random number from 1 to 20;
					if "Bad Luck" is listed in feats of player, increase dice by 1;
					if "Curious" is listed in feats of player, increase dice by 2;
					if dice is greater than 14:
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
						say "You manage to find your way to [z]!";
						try resolving z;
						now dice is a random number from 1 to 20;
						if "Bad Luck" is listed in feats of player, increase dice by 1;
						if "Curious" is listed in feats of player, increase dice by 2;
						if dice is greater than 14:
							now combat abort is 0;
							now lost is 0;
							Fight;
							if ( ( hardmode is true and a random chance of 1 in 10 succeeds ) or ( "Bad Luck" is listed in feats of player and a random chance of 1 in 12 succeeds ) ) and battleground is not "void":
								now combat abort is 0;
								now lost is 0;
								say "As you are trying to recover from your last encounter, another roving creature finds you.";
								Fight;
					otherwise:
						say "Despite your searches, you fail to find it.[line break]";
						now dice is a random number from 1 to 20;
						if "Bad Luck" is listed in feats of player, increase dice by 1;
						if "Curious" is listed in feats of player, increase dice by 2;
						if dice is greater than 14:
							Fight;
							if ( ( hardmode is true and a random chance of 1 in 10 succeeds ) or ( "Bad Luck" is listed in feats of player and a random chance of 1 in 12 succeeds ) ) and battleground is not "void":
								say "As you are trying to recover from your last encounter, another roving creature finds you.";
								Fight;
					break;
		if found is 0:
			if sitfound is 0, say "[bold type]You don't think what you're looking for can be found here...[roman type]";
			if sitfound is 1, say "[bold type]Perhaps you should try looking somewhere closer to what you seek...[roman type]";
			let dice be a random number from 1 to 20;
			if "Bad Luck" is listed in feats of player, increase dice by 1;
			if "Curious" is listed in feats of player, increase dice by 2;
			if dice is greater than 14:
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
	let z be 1;
	let q be a topic;
	let y be a list of numbers;
	repeat with x running through vials of player:
		now q is x;
		if t in lower case is x in lower case:
			add z to y;
			now found is 1;
		increase z by 1;
	if found is 0:
		say "You don't seem to have any such vial.";
		continue the action;
	otherwise:
		repeat with cur running through y:
			say "You chuck [an target] vial away.";
			remove entry cur from vials of player;

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
	if "demon seed" is listed in invent of player, let dseed be 1;
	say "Peeking into your backpack, you see: [if the number of entries in invent of player is 0]Nothing[otherwise][line break][end if]";
	if the number of entries in invent of player is greater than 0:
		say "[bold type][bracket]U[close bracket][roman type]se, [bold type][bracket]L[close bracket][roman type]ook, [bold type][bracket]S[close bracket][roman type]mell, [bold type][bracket]D[close bracket][roman type]rop[if the number of trader in the location of the player > 0 or ( Ronda is visible and dseed is 1 )], [bold type][bracket]T[close bracket][roman type]rade[end if][if the number of smither in the location of the player > 0], [bold type][bracket]I[close bracket][roman type]mprove[end if].";
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
					if Ronda is visible and name entry is "demon seed":
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
		say "(You may see your collection of vials using [link][bold type]vial inventory[roman type][end link] or [link][bold type]vint[roman type][end link] for short.)";

understand the command "vint" and "vial inventory" and "vial inv" as something new.

VialInventorying is an action applying to nothing.

understand "vint" as VialInventorying.
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
	if a random number from 1 to 100 is greater than 50 and "They Have Your Eyes" is not listed in feats of player:
		now infection is skinname of child;
	otherwise:
		now infection is skinname of player;
	now skinname of child is infection;
	if a random number from 1 to 100 is greater than 50 and "They Have Your Eyes" is not listed in feats of player:
		now infection is bodyname of child;
	otherwise:
		now infection is bodyname of player;
	now bodyname of child is infection;
	if a random number from 1 to 100 is greater than 50 and "They Have Your Eyes" is not listed in feats of player:
		now infection is tailname of child;
	otherwise:
		now infection is tailname of player;
	now tailname of child is infection;
	if a random number from 1 to 100 is greater than 50 and "They Have Your Eyes" is not listed in feats of player:
		now infection is facename of child;
	otherwise:
		now infection is facename of player;
	now facename of child is infection;
	say "Your child suckles at your [breast size desc of player] breast, growing rapidly against you as strange sensations sweep over your body. Not only nutrition but personality and knowledge seep through the teat into the newborn, who is not newborn for long, soon a young adult. They pop free and stand, smiling. With a slow turn, they show off their [facename of child] face and [bodyname of child] body, covered in [skinname of child] skin.";
	add facename of child to childrenfaces;
	add bodyname of child to childrenbodies;
	add skinname of child to childrenskins;
	increase score by 5;		[15 base +5/child]
	increase perception of player by 1;
	now the child is not born;
	now the gestation of child is 0;

To impregnate with (x - text):
	if child is born or gestation of child is greater than 0 or "Sterile" is listed in feats of player:
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
	if a random number from 1 to 100 is greater than 50:
		now infection is x;
	otherwise:
		now infection is skinname of player;
	now skinname of child is infection;
	if a random number from 1 to 100 is greater than 50:
		now infection is x;
	otherwise:
		now infection is bodyname of player;
	now bodyname of child is infection;
	if a random number from 1 to 100 is greater than 50:
		now infection is x;
	otherwise:
		now infection is tailname of player;
	now tailname of child is infection;
	if a random number from 1 to 100 is greater than 50:
		now infection is x;
	otherwise:
		now infection is facename of player;
	now facename of child is infection;
	say "[line break]You have an odd feeling, a palpable wave of contentment from within your lower belly.";
	
to say impregchance:
	if cunts of player > 0 and "Sterile" is not listed in feats of player:
		choose row monster from the table of random critters;
		if a random chance of 1 in 5 succeeds, impregnate with name entry;
		if "Fertile" is listed in feats of the player:
			if a random chance of 1 in 5 succeeds, impregnate with name entry;
		if inheat is True:
			if a random chance of 1 in 5 succeeds, impregnate with name entry;
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
			say "Awesome!  Soda!  You it down, a delicious can of [one of]lemon lime[or]strawberry[or]Dr Pibbston[or]cola[or]orange[or]ginger ale[at random].  YUM!";
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
			say "You feel less thirsty after guzzling some soda, [one of]lemon lime[or]strawberry[or]Dr Pibbston[or]cola[or]orange[or]ginger ale[at random] yum!";
			if morale of player is less than 0:
				increase morale of player by 30;
				if morale of player is greater than 0, now morale of player is 0;
				say "You feel better having drunken something.";
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
			let healed be 10 + level of player + ( ( perception of player minus 10 ) divided by 2 );
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
		say "Using your medkit, [one of]You spray your cuts with anesthetic[or]You bandage your worst wounds[at random]. You regain [healed] hit points.";
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
		say "Using your healing booster, you inject the mix into your body, giving a quick boost to your infected body's healing rate.  You regain [healed] hit points.";
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

Section Waithate

[creates (and sets) flag for skipping many wait for any key;]
waithate is an action applying to nothing.
understand "i hate to wait" as waithate.

waiterhater is a number that varies.
carry out waithate:
	now waiterhater is 1; [yes, you do hate to wait]
	say "Your impatience has paid off, you no longer wait.";

waitlove is an action applying to nothing.
understand "i love to wait" as waitlove.

carry out waitlove:
	now waiterhater is 0; [returns waiting to normal]
	say "You are patient once again.";

Section Clearless

[creates (and sets) flag for skipping most(all?) clear the screen]
clearless is an action applying to nothing.
understand "the clears are gone" as clearless.

clearnomore is a number that varies.
carry out clearless:
	now clearnomore is 1; [turns off clears]
	say "Your vision is cluttered, no more clearing.";

clearmore is an action applying to nothing.
understand "the clears are back" as clearmore.

carry out clearmore:
	now clearnomore is 0; [returns clearing to normal]
	say "You can see clearly, the clears are back.";

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

instead of trading the demon seed when the current action involves the ronda:
	say "Ronda looks confused at the gift, 'What the heck is this gunk?' she asks, sniffing at it, then flicking a tongue out to taste it. The moment her tongue caresses the surface, she tenses, then lets out a long, airy groan. Other rats nearby come to investigate the noise, and she is soon sharing with about half a dozen of them, licking and lapping until there's none left.[line break][line break]The six rats are all panting loudly now as their breasts starts to swell up dramatically and their pants bulge with new found virility. A sudden shout breaks their reverie. The other mall rats have noticed the goings on, and converge to drive off the infected, Ronda included, forcing the changed rats off into the sewers.";
	remove ronda from play;
	now hp of ronda is 1;
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Slut Rat":
			now area entry is "Mall";
			break;
	extend game by 16;
	increase score by 20;
	now lastfuck of Rod is turns;


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
			say "You can see your [one of]sac[or]balls[or]orbs[or]cum factories[at random] [one of]tingle[or]churn audibly[or]throb[at random] as it grows larger, [skin of player] flesh growing taught with the expansion, leaving you with [ball size]!";
	otherwise if ( the sex entry is "Male" or the sex entry is "Both" ) and cock width of player > ( ( cock width entry times 150 ) / 100 ) and "One Way" is not listed in feats of player:
		let prevcock be cock width of player;
		decrease cock width of player by 1;
		decrease cock width of player by ( cock width of player - ( ( cock width entry times 150 ) / 100 ) ) divided by 3;
		if "Male Preferred" is listed in feats of player or "Herm Preferred" is listed in feats of player:
			if cock width of player is less than 2, now cock width of player is 2;
		if "Modest Organs" is listed in feats of player and cock width of player is greater than 4:
			now cock width of player is 4;
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
		if prevcock > cock length of player or prevcock2 > cock width of player:		[did cock actually shrink?]
			follow the cock descr rule;
			say " Strange [one of]erotic tingles[or]cold waves[or]hot flashes[at random] run over your [one of]cock[or]man meat[or]shaft[or]pole[at random] begins to shrink. [if cocks of player is greater than 1]They dwindle[otherwise]It dwindles[end if] in size, becoming [descr] while your [one of]balls[or]testes[or]cum factories[or]gonads[at random] become [ball size]. ";
			if cock length of player is less than 1 or cock width of player is less than 1:
				say "You barely have time to give a whimper as you cease to be a male.";
				now the cocks of the player is 0;
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
		if prevcunt > cunt length of player or prevcunt2 > cunt width of player:		[did cunt actually shrink?]
			follow the cunt descr rule;
			say " Strange [one of]erotic tingles[or]cold waves[or]hot flashes[at random] run over your [one of]cunt[or]pussy[or]vagina[or]cleft[at random] begins to shrink. [if cunts of player is greater than 1]They dwindle[otherwise]It dwindles[end if] in size, becoming [descr]. ";
			if cunt length of player is less than 1 or cunt width of player is less than 1:
				say "With a sickening noise, you cease to be female all together.";
				now the cunts of the player is 0;
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
	while there is no name entry:
		now monster is a random number from 1 to number of filled rows in table of random critters;
		choose row monster from the table of random critters;
		if there is no name entry:
			next;
		break;
	if scenario is "Researcher" or nanite collector is equipped:
		vialchance name entry;
	if scenario is "Researcher" and researchbypass is 0:
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
	if researchbypass is 1, continue the action;
	if scenario is "Researcher" or nanite collector is equipped:
		let vialcollectible be 10 + ( 2 * intelligence of player );
		if vialcollectible > 70, now vialcollectible is 70;
		let vcoll be 0;
		if a random number between 1 and 100 <= vialcollectible:
			now vcoll is 1;
		otherwise if "Expert Researcher" is listed in feats of player and a random number between 1 and 100 <= vialcollectible:
			now vcoll is 1;
		if vcoll is 1:
			say "You manage to extract a vial of [x] nanites for study and use.";
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
	if battleground is "void", stop the action;
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
		if "Experienced Scout" is listed in feats of player and a random chance of 2 in 10 succeeds and combat abort is not 1:
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

carry out early birding:
	if playon is 1:
		say "You are already in play on mode. There is no rescue to wait for.";
		stop the action;
	decrease the score by 100;
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
			try resolving L;
			wait for any key;
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

Everyturn rules is a rulebook.

This is the turnpass rule:
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
					infect;
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
		if child is born and a random chance of 1 in 2 succeeds, increase hunger of player by 1;
		if "Spartan Diet" is listed in feats of player and a random chance of 1 in 2 succeeds, decrease hunger of player by 1;
	if a random number from 1 to 20 is greater than ( ( the stamina of the player divided by 3 ) minus 1 ):
		increase thirst of player by 3;
		if child is born, increase thirst of player by 1;
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
			say "Your belly protrudes in a firm dome of pregnancy, full of some unborn being, waiting to see the world, such as it is. Somehow, perhaps due to the nanites, you don't feel at all hindered despite being bloated.";
			if a random chance of 1 in 10 succeeds:
				increase breast size of player by 1;
				follow breast descr rule;
				say "Your breasts feel especially tender, swollen with your condition, now [descr], the [skin of player] flesh stretched lightly.";
		otherwise if gestation of child is less than 10:
			say "Your body is somewhat rounded with the effects of your oncoming pregnancy. It is progressing with worrying speed, but a warm sense of fulfillment keeps fear at bay.";
			increase morale of player by 1;
			if a random chance of 1 in 20 succeeds:
				increase breast size of player by 1;
				follow breast descr rule;
				say "Your breasts feel especially tender, swollen with your condition, now [descr], the [skin of player] flesh stretched lightly.";
		otherwise if gestation of child is less than 30:
			if a random chance of 1 in 2 succeeds, say "Warm tingles gently run through your lower belly.";
			if a random chance of 1 in 30 succeeds:
				increase breast size of player by 1;
				follow breast descr rule;
				say "Your breasts feel especially tender, swollen with your condition, now [descr], the [skin of player] flesh stretched lightly.";
		if gestation of child is less than 1 and cunts of player is greater than 0 and skipturnblocker is 0:
			say "With a sudden pouring of fluids, birth is upon you. You settle  without much choice, breathing quickly as your body spasms in readiness. ";
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
			follow cunt descr rule;
			if cunt width of player is greater than 10:
				say "Your [descr] sex almost laughs at the idea of birth. You recline and concentrate and can feel your mutated body easily slipping the child free of you, slipping almost effortlessly along your well lubricated tunnel to reach your caring embrace.";
				increase morale of player by 5;
			otherwise if cunt width of player is greater than 3:
				say "You begin to realize why labor is called that, huffing and pushing as best as you can, slowly nudging the newborn from your [descr] birthing canal. It is not as painful as the movies make out, and after about twenty minutes, the child is ready to be held by you. You feel tired, but whole, and satisfied.";
				increase morale of player by 5;
			otherwise:
				say "Horrible pain lances through your body as your [descr] sex disgorges the child only after what feels like hours of struggle. Your [skin of player] body covered in sweat, you are left exhausted and winded, but bearing a newborn.";
				now hp of player is 1;
				decrease morale of player by 10;
			if z is 2:
				say "Twins![line break]";
			otherwise if z is 3:
				say "Triplets![line break]";
			otherwise if z is 4:
				say "Quadruplets![line break]";
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
[			process dirty water;
			process dirty water;
			process dirty water;
			process dirty water;	]
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
				say "Press any key to continue.";
				wait for any key;
				now z is 0;
	say "End List.";
	wait for any key;
	say "Under it is something called a 'credit' list, how odd.";
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
		if playerinput matches "m":
			now tempnum is 1;
			follow male choice rule;
		otherwise if playerinput matches "f":
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
		try resolving potential resources;
	otherwise:
		say "Your search turns up empty.";
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
	if bodyname of player is "Female Husky":
		if humanity of player is greater than 10:
			say "In this strange new world, there are a hell of a lot worse things to end up as than a husky. Once things settle down, you move up north, ending up as a bartender in a small city bar frequented by the locals.";
			if cocks of player is greater than 0 and cunts of player is greater than 0:
				say  "Life isn't bad; it takes a while, but you fit in just fine here. The regular humans accept you, and the mutants appreciate having a good representative in town. One slow weekday night, another herm saunters in and asks for a drink. Shi's beautiful, your heart skipping a beat as hir eyes meet yours. All that practice of keeping your cool behind the heavy oak bar melt away, and you stammer like a teenager as you get hir beer. Shi just smiles, and it isn't long at all till you are off of work, and tangled up in hir arms. The relationship lasts, both of you settling into your dual roles without too much trouble, taking turns bearing pups. Even humans envy the equanimity and quality of your relationship.";
			otherwise if cocks of player is greater than 0:
				say "The endless tug-of-war between your rational mind and your instincts make adapting to life 'in the normal world' a bit tougher than you expected. Humans and other mutants don't quite follow the same pack mentality your instincts demands. You struggle and it's hard, make no mistake, but you rise above. Of course, it helps that once word gets out just how much fun a male canine is in bed, that you are never short of female company of all shapes and species. With that urge taken care of at least, fitting in becomes a hell of a lot easier. Of course, the universe has a sense of a humor, and not three months later, a group of canines having the same issues as you start a co-op on the west side of town. This proves to be a great place for you, rising to the top of the pack and having your pick of the females-in heat, no less, many of the next generation call you sire.";
			otherwise:
				say  "Initially, things go quite smoothly. Everyone loves dogs, and your lovely female figure earns more than a few warm smiles and invitations to coffee. Then, unexpectedly, your heat strikes, the rush of pheromones and hormones nearly toppling the fragile life you'd built for yourself. Luckily, you had become friends with a male dragon who understood better than most what you were going through. After a desperate phone call, you go over there, nearly tackling him onto the ground in your rush to soothe the burning need between your legs. The next week is spent in the throes of passion, impaling yourself on his thick shaft every chance you get. The heat passes, but it leaves behind a certain... emptiness, that you know won't be fulfilled till you find a male canine. That little search takes longer than you expected, and two more heats slam into you, driving you into the arms of a menagerie of humans and mutants, their spurts of seed dousing the fire enough for you to function. On a cool summer night, he saunters into the bar: a tall, strong male canine, just perfect. After a few weeks of getting to know each other, your relationship deepens. Everything is going just fine, and then your heat strikes again, and you find yourself in his apartment, on your hands and knees, offering yourself up to him. After what feels like an eternity, he takes you up on, your howls of pleasure mingling as he drives into your needy body. You climax again and again as his thick knot ties you together, his fertile seed flooding your ready womb. It isn't long till your belly rounds with his pups. You feel... fulfilled.";
		otherwise:
			say "You are completely lost to your urges, an alpha predator, stalking the ruins of the city. Ah, but you are not alone, a pack coalesces around you, a dozen of so like minded canines, howling their madness and need to an uncaring sky. Superior numbers and ferocity make you more than a match for the other beasts loose in the city. It doesn't take long before the echoing howls, calling your fellows to hunt, causing even the most ferocious mutants and monsters to look for a place to hide. Those caught were either devoured, or subdued and dragged back to your dens, their bodies changed and their minds worn down by a furious night of animal passion. Thick cum filled their every hole, the slick passion of the females coating their cocks and muzzles. Any female captured is pregnant by dawn, the high birth rate needed to keep up with the attrition rate, the city is not safe. You are the absolute ruler of your domain, a pity your mind is too far gone to appreciate it.";
				
Book  8 - People

Rod Mallrat is a person. "A relatively harmless looking mallrat named Rod is lounging around [one of]the pizza place[or]McDonalds[or]one of the tables[or]the broken sewer drain[at random].".
The description of rod mallrat is "Rod is a tall handsome figure of a man, if you ignore the fact that he's half rat[if Ronda is not in Mall Atrium].  He's looking a little dishevelled of late[end if]. A long narrow snout has a twitching wet nose, and a long naked pink tail flickers behind him. He wears clothes that look like they belong in a Hot Topic, and he is usually just chilling out, propped up against something and looking to be in no great hurry at all.".
Rod is a trader.
Rod Mallrat is in Mall FoodCourt.

The conversation of Rod Mallrat is { "empty" };

instead of conversing Rod Mallrat:
	if hp of Ronda is 0:
		say "[one of]'Did I introduce myself yet? I'm Rod, Rod Mallrat.'[or]'You got stuff to trade? I love tinkering with stuff. Just give it to me and watch me in action.'[or]'Dude, you see those nagas? They hunt us mall rats, you know.  Scary shit, no joke.'[or]'Like the threads? My girl picked them out for me.'[or]'Dude, just chillin['].'[or]'Sup?'[at random]";
	otherwise if hp of Ronda is 1 or hp of Ronda is 2:
		say "[one of]'Oh, hey there.'[or]'You got stuff to trade? I love tinkering with stuff. Just give it to me and watch me in action.'[or]'I miss my sweet Ronda.'[or]'Oh, hey there,' he says with a sigh.[or]'Watch out for those infected rats.   Dunno where they came from, but they're bad news.  The rats they get don't come back.'[or]'Sup?'[at random]";
	otherwise if hp of Ronda is 3:
		say "     [one of]'So, will you help me out?'[or]'Have you gone to find out what the dog-woman in the shop needs to help Ronda?'[or]'You should go visit Nermine and see what she needs.  You promised you'd help fix Ronda.'[at random]";
	otherwise if hp of Ronda is 4 or hp of Ronda is 5:
		say "     [one of]'Don't give up.  Please keep looking for the stuff Nermine needs.'[or]'Thanks for helping me out.'[or]'Have you had any luck in finding the stuff to help Ronda?'[or]'Remember, she wanted something from a lizard girl at the park and the awesomest fruit you can find.'[at random]";
	otherwise if hp of Ronda is 6:
		say "     'Thanks for helping me out.  Good luck finding that other stuff.'[line break]";
	otherwise if hp of Ronda is 7:
		say "     'Dude!  Bring that to Nermine.";
	otherwise if hp of Ronda is 8:
		if Slutrat den is unknown:
			say "     'Now comes the tough part, dude.  You'll need to find the nest of those infected rats and all like black-ops infiltrate the place.  They drag off anyone they beat, so the best way would be to let them catch you and see if you can learn the way there.  I'd totally do it myself, but no rat they take ever makes it back.'";
		otherwise:
			say "     'Well, since you know how to find them, now we need to figure out which one of them is Ronda.  That'll be trickier.  She's got a tattoo of a red heart on her thigh right by her... you know.  She did it back when we started going out, before we became professional mall rats instead of just human ones.  But the tattoo's still there, giving her a red patch of fur[if pooltable of slutrat den is 3].'  Having gotten well acquainted with both Eight-Ball and Skeeball, you know neither of them have a mark like that.  Nor have any of the others you've spotted.  But that's only a handful of slut rats out of a few dozen[otherwise].'  Having spent some time with several of the slut rats, you've not spotted any of them with a mark like that yet.  But that's only a handful out of a few dozen[end if].";
			say "     'You'll need to cozy up to the rats until you find Ronda,' he continues.  'Once you find her, get her somewhere alone and give her the stuff.  Use these chocolates, bud.  They're her fave.  Just be careful.  We'll only get one shot at this.'";
			now hp of Ronda is 9;
	otherwise if hp of Ronda is 9:
		say "     'Please keep looking for my dear, sweet Ronda.  She's got a heart-shaped mark right here,' he says, tapping at his inner thigh.";
	otherwise:
		say "[one of]'Oh, hey there.'[or]'You got stuff to trade? I love tinkering with stuff. Just give it to me and watch me in action.'[or]'I miss my sweet Ronda.'[or]'Oh, hey there,' he says with a sigh.[or]'Sup?'[at random]";



Ronda Mallrat is a person. "A shapely mallrat female is reclining on [one of]one of the benches[or]a box in front of a Hot Topic[or]her back on the rim of the fountain[or]a wall, preening her long tail[at random]. Ronda is her name, or so the other mallrats helpfully note."
The description of Ronda Mallrat is "You have no idea if she was shapely before her infection, but she is now, with wide hips, narrow waist, and the latest of mall rat fashions. She wears a bright button that declares, 'I am a taken girl.' Aww. Her naked pink tail flickers with an unending energy as she looks about with active interest. Her lips are stained a deep red and her claws are all manicured and covered in sparkling motes. She takes care of herself, clearly. Even her white and spotted fur is glossy and healthy looking.".
The conversation of Ronda is { "Hey there, sugar, you just call me Ronda.", "You meet Rod? He's my boy. You be nice to him, or I will be very... upset.", "Those clothes are out of date hon, you should update your wardrobe.", "Being a mall rat is way better than being a human, no offense or anything to humans.", "We can find anything we need here in the mall; it is our Eden." }.
Ronda Mallrat is in Mall Atrium.


Orthas is a person. "A dragon person, clearly female, is watching the area. If her name badge is accurate, her name is 'Orthas'.".
The description of Orthas is "A black scaled dragon woman. She stands about six and a half feet tall, with wings that are about three feet long each folded to her back. She watches the area intently, her arms crossed half the time. Behind her, a slender reptilian tail sways slowly. Her overall shape is human, especially those huge, F cup knockers that heave distractingly with every breath she takes.".
The conversation of Orthas is { "[if orthasstart is greater than 3]Hey there, how's momma?[otherwise]Hello there.[end if]", "[if orthasstart is greater than 2]Hey there, hot stuff.[otherwise]The good doctor is upstairs. You can see him. Don't cause trouble.[end if]", "You are pretty brave to wander the city right now.", "I would explore too if I wasn't guarding the doctor.", "What is it like out there?" }.
Orthas is in Trevor Labs Lobby.

Doctor Matt is a person. "A figure in a full hazmat suit is busily working at the various terminals, wandering from one to the other when he isn't sitting in that comfy chair. His name badge declares him to be [']Doctor Matt['].";
The description of Doctor Matt is "[if hp of doctor matt is 100]There is a small tape recorder with a sticky note on it, labeled as [']Doctor Matt['] on one of the lab tables[otherwise]Doctor Matt is working away at the various terminals, wandering from one to another when not working at his lab table or seated in his comfy chair.  He has a full environment suit on, covering his whole body, with only a glass visor to show his human face[end if].";
Doctor Matt is in Primary Lab.
understand "Matt" as doctor matt.
understand "Left Behind Recording of Doctor Matt " as doctor matt.

the conversation of Doctor Matt is { "empty" };
 
Instead of conversing the doctor matt:
	if hp of testerbot is 0 and testerbot is in Primary Lab:
		now hp of testerbot is 1;
		say "'The military has returned my testing robot, wanting more data on the affects of the infection upon a person's lustful urges and sexual proclivities,' he says, pointing to the boxy robot slumped against the wall.  'The testing robot has been built for the use in this regard.  Please feel free to use it as you see fit.  I want a wide sample of data, so come back often.  The robot will only be available briefly though before I have to send it off to the military's scientists so they may analyze the data.'";
		say "'When they returned it, they also included a note about its [']unfriendly disposition['].  So I've given it a nice smile,' he says, pointing to the poorly aligned smile on the robot's boxy face.  The edges of the large sticker seem scratched and frayed, as if the robot tried to pull it off, but couldn't with its pincher hands.  Either ordered to stop or resigned to leave it there, the robot now has a big, friendly grin stuck to its face.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if hp of doctor matt is 100:
		say "'If you are listening to this, you are probably still in the city. My condolences. I have left behind some facilities for you. You will find they can enhance your abilities due to the nanite infection.";
		say "[bold type]((Every 3 levels, starting at level 3, you may gain one feat by coming here and typing volunteer))[roman type]";
		say "'God Speed and Good Luck,' says the recording before clicking off.";
		stop the action;
	if hp of doctor matt is 0:
		say "'Welcome to Trevor Labs,' says the man in the hazmat suit, 'I am Doctor Salacious, but most just call me Doctor Matt. Since I didn't hear any scuffling, I presume Orthas let you in, so you are probably not a crazy mutant.'";
		if scenario is "Researcher":
			say "He looks you over a moment, 'You don[']t look nearly as lost and confused as most.' He turns back to his computer a moment, tapping quickly, 'Are you another researcher? Excellent. I[']m looking into a cure for this plague, but I haven[']t made much progress. But I did find something else...";
		otherwise:
			say "He laughs a little, nervous and forced. 'Anyway, before you ask, no, we did not have anything to do with the nanite infestation. You didn[apostrophe]t know it was nanites? Now you do. I have been studying them for some time since the grid went dark. I[apostrophe]m not much closer to a cure... but I did find something you're probably interested in,' he says, pausing for effect.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "'I can manipulate existing strains, just a little, for those already infected, like you. Don[apostrophe]t look at me like that. Anyone not in a fully sealed environment is infected by now.[if humanity of player is less than 80] In fact I'd say you[apostrophe]ve already been pretty badly infected, interesting...[end if] But now for the good news. As you develop resistances to the nanite infection and your system becomes stronger, I can redirect that growth to amazing, and planned, almost superhuman abilities,' he declares, sounding quite proud of himself, 'Only one catch...'";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "'I haven[apostrophe]t had any test subjects. Until you. So you come in here, [bold type]volunteer[roman type], and we[apostrophe]ll make you better than when you started. In return, you can help us save the city. A fair deal, right?' he says, but he[apostrophe]s already turning back to his monitors, not actually listening for your reply.";
		now hp of doctor matt is 1;
		say "[bold type]((Every 3 levels, starting at level 3, you may gain one feat by coming here and typing volunteer))[roman type]";
		extend game by 16;
	if hp of doctor matt is 1:
		say "'Alright, we have a limited amount of time. I have been doing my best to delay the military, but without something concrete to report, they will be here soon, and they will pave this thing as hard as they can, leaving all mysteries unsolved. Now that you are here, we can get to work and keep them off our backs,' explains the hazmat suited man as he pushes his chair towards another terminal and starts typing.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "'The first problem is a lack of test subjects. I can[apostrophe]t send Orthas out to collect samples, that would leave me unprotected. You, on the other hand, are not so limited. Go to the mall and get some samples from the amorphous transformatives there, and some nutritive secretions from one of those raptor slash panthera leo transformatives. I would prefer two of each, enough to be able to experiment without risking the whole of the subject matter,' he explains, turning to face you.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "'Once you have them, just come back here and we will be that much closer to solving this.'";
		say "You get the idea you[apostrophe]ve been dismissed, as he goes quiet, and eventually turns back to his work. Not much of a socialite.";
		now hp of doctor matt is 2;
		now level of doctor matt is 0;
	if hp of doctor matt is 2:
		let milkfound be 0;
		let goofound be 0;
		repeat with x running through invent of player:
			if x is "glob of goo", increase goofound by 1;
			if x is "gryphon milk", increase milkfound by 1;
		if girl is banned:
			now goofound is 2;
		if hermaphrodite is banned or furry is banned:
			now milkfound is 2;
		if milkfound is less than 2:
			say "'You do not have enough nutritive secretions,' he chastises.";
			stop the action;
		if goofound is less than 2:
			say "'You do not have enough amorphous samples,' he chastises.";
			stop the action;
		extend game by 5;
		let number be 0;
		repeat with Q running through invent of the the player:
			increase number by 1;
			if q matches the text "glob of goo":
				remove entry number from invent of the player;
				break;
		now number is 0;
		repeat with Q running through invent of the the player:
			increase number by 1;
			if q matches the text "glob of goo":
				remove entry number from invent of the player;
				break;
		now number is 0;
		repeat with Q running through invent of the the player:
			increase number by 1;
			if q matches the text "gryphon milk":
				remove entry number from invent of the player;
				break;
		now number is 0;
		repeat with Q running through invent of the the player:
			increase number by 1;
			if q matches the text "gryphon milk":
				remove entry number from invent of the player;
				break;
		say "'Ah, exemplary work,' he murmurs, already taking your goo and milk and quickly getting them into a deep freeze box that glows ominous blue. Chill white mist escapes for the moment he pops it open to place the precious objects inside, 'Now then, we shall see what can be seen. Come back tomorrow.'";
		now level of doctor matt is turns;
		increase score by 20;
		now hp of doctor matt is 3;
	if hp of doctor matt is 3:
		if level of doctor matt minus turns is less than 8:
			say "'Still working on those samples you brought, come back later.'";
			stop the action;
		extend game by 24;
		increase score by 5;
		say "'Simply amazing. There is no other word for it,' says Doctor matt, looking excited through his hazmat faceplate, 'The adaptability of the nanites is simply... I would have said it was impossible if I hadn't laid my own eyes on it. I sent out my results and the military have grudgingly agreed to a three day extension on their plans.'";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "'The nanites seem to come in a few varieties that cooperate. The most important ones, the ones that allow the miracle work, are the... brain... nanites, for lack of better word. They link with neighboring brain nanites like nerve endings and seem capable of forming neural patterns of astonishing complexity! The nanites stopped receiving directives a long time ago, but they can adjust and make up their own choices independently. It is little wonder this is causing so much trouble,' he gushes with bubbling enthusiasm, like a young boy having caught a creepy looking insect.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		now hp of doctor matt is 4;
	if hp of doctor matt is 4:
		say "'Oh, one thing of more immediate use. I discovered how to neutralize the nanites. A limited area of them at least. They do not like being microwaved. I have one in the corner there, feel free to [bold type]microwave[roman type] anything you want to bake the infection out.'";
		move the microwave to the location of doctor matt;
		now hp of doctor matt is 5;
	if hp of doctor matt is 5:
		say "'Up for another task? Good. Orthas spotted something interesting while hunting. A singular creature. You must understand, one of the standard impulses the infection seems to give on its infectees is the desire to spread the infection. To see just one is unusual. A trait I have only seen in Orthas so far. Go to the park and find this creature, bring it to me for study.'";
		now unusual creature is unresolved;
		now hp of doctor matt is 6;
	otherwise if hp of doctor matt is 6 and unusual creature is unresolved:
		say "'Did you forget already?' asks Matt, 'Go to the park, find the unusual creature. Bring it here. Orthas said it was intersexed, if that helps.'";
	otherwise if hp of doctor matt is 6:
		say "'Ah ha, yes, she is an interesting creature, is she not?' he says, looking at the deer through his face plate. 'She says her name is Susan, just so you know.'";
		if deerconsent is 1:
			say "'And she[apostrophe]s taken a fancy to you. This is good.";
		say "'I was hoping you could test her for infectiousness, in a controlled situation. You don't have to if you don[apostrophe]t want to, just talk to her and decide for yourself. Don[apostrophe]t look at me that way. I can[apostrophe]t very well do it from inside this suit, now can I?";
		now hp of doctor matt is 7;
		increase score by 20;
		extend game by 24;
	if hp of doctor matt is 7 and deerconsent is not 2:
		say "'Go on, talk to her.'";
	otherwise if hp of doctor matt is 7:
		if susan is visible:
			say "'Excellent work. I will observe. You can proceed at whatever rate is comfortable. You are doing a great service for science,' says Matt as he raises a finger towards the sky.";
			now deerhappy is 2;
		otherwise:
			say "'Poor news. The specimen escaped, went running off back towards the park. She probably went feral. Nothing to do about it now, just look out for her. Probably dangerous.";
			now deerhappy is 1;
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "doe":
					now monster is y;
					break;
			now area entry is "Park";
		now hp of doctor matt is 8;
	if hp of doctor matt is 9 and hospquest < 8:
		say "'Please continue to assist Dr Mouse.  And let me know what you find out.'  Dr Matt then turns back to his work, intent on continuing his research.";
	if hp of doctor matt is 8 and hospquest is 8:
		say "     You decide to tell Dr Matt about what you've been doing for Dr Mouse.  You leave out what really happened to the scientific device he gave you and he doesn't seem to notice, instead focusing on the fact that he has a competitor.  And one that you've been helping.";
		say "     'I had been wondering what you'd been up to for the last few days in the city while I had nothing for you to do.  Idle hands, as they say.  This is quite unexpected.  You have found another person in the city searching into the mysteries of the nanite infection, but through a different avenue of research.  And using the infected as test subjected is...' he coughs as he notices the stern look you [if susan is visible]and Susan [end if]give him.  'That is, possibly using them as unwilling test subjects in such surgical experiments.  Most disturbing and unethical, even in such a crisis.'";
		say "     'I suggest you continue to assist this Dr Mouse individual.  It will further ingratiate you to him and allow you to find out more about what's going on with his research.  Hopefully, I am wrong about my concerns and this doctor may be of help to us.  As well, we do need to know if his concerns about the nanites are valid.";
		now hp of doctor matt is 9;
	if hp of doctor matt is 9 and hospquest > 7 and mattcollection is 0:
		say "     'Now, you say that Dr Mouse has been having you collect samples from the city?  And from more and more powerful creatures?  This is worrisome.  I wonder what secrets he may be uncovering.  May I see what he's asked you to collect?' he asks.";
		if triclamped is 0 and triclampedmatt is 0:
			let tricllfound be 0;
			repeat with x running through invent of player:
				if x is "lava lamp", increase tricllfound by 1;
			if tricllfound is 0:
				say "     Once you find a usable sample from this possible dinosaur, please bring it to me first, so that I may obtain a sample as well.";
			if tricllfound is 1:
				say "     Doctor Matt eyes the lava lamp suspiciously, noting the sticky film coating it.  Using several sterile swabs, he wipes a samples of the fluids from the improvised toy and sets them in a sample dish.  'It was fortunate that you brought this here so I could gain a sample before you turned it over to him.'";
				increase score by 10;
				now triclampedmatt is 1;
		otherwise if triclamped is 1 and triclamped is 0:
			say "     'It is unfortunate that you have turned the sample over to Dr Mouse already,' Dr Matt says.  Unfortunately, I don't think it would be wise to try to obtain another.'";
			now triclampedmatt is 2;
		if sabtoothed is 0 and sabtoothedmatt is 0:
			let sabertoothfound be 0;
			repeat with x running through invent of player:
				if x is "Chipped tooth", increase sabertoothfound by 1;
			if sabertoothfound is 0:
				say "     'I would like to ask you to obtain a sample from one of these creatures for me as well.  I know this means you may need to fight a second one, but I want to look into this matter as well.'";
			if sabertoothfound > 0:
				say "     'I should like to keep this sample of the sabretooth tiger.  I know this means you must obtain another for Dr Mouse, but I would like to take this one for my research.  If you were able to obtain this one, surely you can get another for your other employer.'  Do you give it to him? (Y/N)";
				if the player consents:
					delete Chipped tooth;
					increase score by 10;
					say "     'It is good to see that you appreciate the important of my work.'  He picks up the large fang in his gloves and places it in a sample dish.";
					now sabtoothedmatt is 1;
				otherwise:
					say "     'I am disappointed that you don't appreciate the importance of my work.  I hope you will at least continue to keep me appraised of Dr Mouse's activities.";
					now sabtoothedmatt is 2;
		otherwise if sabtoothed is 1 and sabtoothedmatt is 0:
			let sabertoothfound be 0;
			repeat with x running through invent of player:
				if x is "Chipped tooth", increase sabertoothfound by 1;
			if sabertoothfound is 0:
				say "     'I would like to ask you to obtain a sample from one of these creatures for me as well before Dr Mouse gets too far ahead.  I know this means you may need to fight a second one, but my research cannot fall behind.'";
			if sabertoothfound > 0:
				say "     'As you have already given Dr Mouse his sample, I should like to keep this sample for myself,' he says as he places the one you have into a sample dish.";
				delete Chipped tooth;
				increase score by 10;
				now sabtoothedmatt is 1;
		if nerminepackage < 5 and nerminepackagematt is 0:
			let nermpack be 0;
			repeat with x running through invent of player:
				if x is "package", increase nermpack by 1;
			if nermpack is 0:
				say "     'I should like a chance to examine whatever object you are retrieving from this mysterious shop.  I want you to bring it here before delivering it to Dr Mouse.'";
			if nermpack is 1:
				say "     You pull out the dusty package and set it on one of tables.  Dr Matt opens it carefully, using tongs to pull the strings to untie them.  When they drop away, he lifts the flaps with his tongs.  Peeking inside, you both see a large piece of golden fur.  The doctor, relaxing a little, pulls it out and holds it up.";
				say "     'It seems to be a very old animal hide.  Lion, I should guess.  I'm not sure why he is interested in this ratty, old thing.  But I should take a sample just in case.  Dr Matt takes a scalpel to cut a small corner from the old lionskin.  But after several tries, he's only made a small notch in it.  He grunts and pulls out a larger knife and tries again, eventually managing to slice a small corner from it.";
				say "     He looks down at the small cutting he's placed in the sample tray.  'That was most perplexing.  From all appearances, the hide is very old and should be quite fragile.'  He turns the box around, finding the Greek writing on it.  'Nemea?  What does that... the Nemean Lion!'  Dr Matt stiffly folds up the pelt and puts it back in the box, very slowly tying it back up.  'It... makes no sense.  But what else could it be?'  The poor doctor seems quite out of sorts and it appears that no further explanation will be forthcoming.";
				increase score by 10;
				now nerminepackagematt is 1;
		if nerminepackage is 5 and nerminepackagematt is 0:
			say "     It is regrettable that you turned over the package to Dr Mouse before I had a chance to examine its contents.  I want you to keep me better informed of his activities going forward.";
			now nerminepackagematt is 2;
		if nerminepackagematt > 0 and sabtoothedmatt > 0 and triclampedmatt > 0:
			if nerminepackagematt is 1 and sabtoothedmatt is 1 and triclampedmatt is 1:
				say "     Having given the scientist a sample from each of the three items Dr Matt had you collect, he at least seems a little pleased.  'These do only represent the samples he's asked you specifically to gather.  It is apparent that his at least partial control of the hospital denizens has allowed him to collect specimens from many of the creatures in the city.  It is unclear to me what directions his research is taking and so I want to you continue to assist and monitor him.  Hopefully he can discover something to help us deal with this outbreak.'";
				say "     'For your assistance in this matter and for ensuring I received a sample from them as well, I should give you something in payment.  I had been working on this device.  It is only a prototype, but it may be of assistance to you.  I am working on an improved model to eventually be used when the military comes in to rescue the infected survivors.'";
				say "     From one of the worktables, Dr Matt gathers up a cobbled together device that looks like it was made from an array of wires and lights on a Velcro wristband connected to a handheld game console.  'I had to make its case from the items I had available, but it is quite functional, if a little slow.  It acts as a personalized infection status monitor, or PISM.  Should you make contact with an unknown infection source, you can see to what degree and which strain has infected your body.  While many strains are obvious, others are harder to diagnose until further secondary features or behaviors arise.'";
				say "     The strap can be placed around your wrist, ankle or other limb.  It could even be used with the contacts pressed to your body, if you were ever changed to such a radical degree.  To check yourself, simply connect it to the analysis unit and press these buttons,' he says as he indicates them, 'to show you how the infection has spread through your body.  It has a catalog drawn from this terminal, but unfortunately must remain keyed to you to work and so it presently can't be used to check others.  I hope my larger model for the military will overcome this issue so they can do a quick scan at the base of the people they rescue to be aware of the strains infecting each individual.'";
				say "     'As I stated, you may have this prototype, as I am working on an improved model for the military.  Perhaps it may be of some use to you.  If you can continue to help me, I may be able to upgrade its programming later,' he adds, clearly paying you to act as his double-agent.";
				say "     Infection monitor obtained.  (Quick command: [bold type]pism[roman type])[line break]";
				add "infection monitor" to invent of player;
				now mattcollection is 1;
				increase score by 10;
			otherwise:
				now mattcollection is 2;
	if mattcollection > 0 and hp of doctor matt < 10:
		say "     'I suggest you continue to assist Dr Mouse.  It will further ingratiate you to him and allow you to monitor his activities.  I want you to keep me informed on what he's receiving and please bring a sample for me as well.  Nor do I wish to fall behind in my research to this little upstart.";
	if hp of doctor matt is 10:
		say "     'A mind like Dr Mouse's cannot be allowed to continue to exploit the nanite infection unhindered.  I will need you to take care of him.  And be sure to bring back what research materials you can.'";
	if hp of doctor matt is 8 and hospquest is 13:		[Doc completely unawares, hospital finished]
		say "     Having much to tell Dr Matt, you begin with your discovery of the unusual activity at the hospital and then the lab within.  You go on to talk about the strange doctor you found there, working away at solving the nanite mystery.  This gets his attention and he becomes much more interested in your tale.  As you continue, you summarize what the mouse related to you about his findings and hypotheses about the infection.  You tell him these were what prompted you to assist him with the tasks he asked you to perform.";
		say "     You describe the apparent control he had over the creatures of the hospital.  You relate to him how the research coming from the samples you were collecting began to manifest as changes and increased power in the hospital denizens.  Dr Matt is perturbed to hear about this news, both that such experiments were happening and that he was not made aware of another potential source of information on the nanites.";
		say "     But you do not dwell on that, instead moving on to the most recent incident and the doctor's offer.  Dr Matt is quite stunned by it and stammers some thanks for your decision to side with him over the mouse doctor.";
		if susan is visible:
			say "     Susan moves up beside you as you talk about what happened at the hospital, putting her arms around you and hugging you tightly.  She doesn't say anything, only listening and being there for her chosen mate.";
		if hp of doctor mouse is 2:
			say "     You relate to Dr Matt the events of the fight that began as you refused to help the mouse and incurred his wrath.  Dr Matt seems unsurprised by the doctor's monstrous transformation, given what you related about his research, and is pleased to hear that he was dispatched so thoroughly.  You pull dump out the accumulated research you were able to abscond from the lab, offering it all to the scientist to help him deal with the infection.";
			say "     Dr Matt is quite intrigued by what he sees in the documents and samples he glances over.  'This is quite a substantial find, my brave assistant.  I can see several results that I can put into place immediately and will be able to offer you several more options, should you wish to [bold type]volunteer[roman type] for nanite adjustments.'";
			now featunlock is 1;
		otherwise:
			say "     You relate to Dr Matt the events of the fight that began as you refused to help the mouse and incurred his wrath.  Unable to defeat the mouse, you were not able to stop him, but survived the encounter and have returned to assist the scientist.";
			say "     'It is unfortunate that this mad doctor was not stopped, but given the resources at his disposal, it is not surprising that you alone could not defeat him.  I shall inform the military of these events, as well as the increased threat level at the hospital.  They may attempt something to deal with him when the final push is made, but I suspect Dr Mouse will escape in the confusion.  He seems too intelligent to not have an exit strategy already formulated.'";
		now hp of doctor matt is 12;
	otherwise if hp of doctor matt is 9 and hospquest is 13:		[Doc partially unawares, hospital finished]
		say "     As you start to tell Dr Matt about the recent events at the hospital, at first he believes you to simply be reporting again on another request for samples.  But as you tell him about Dr Mouse's plan to have you infected and steal his research, he is quite stunned.  He stammers some thanks for your decision to side with him over the mouse doctor.";
		if susan is visible:
			say "     Susan moves up beside you as you talk about what happened at the hospital, putting her arms around you and hugging you tightly.  She doesn't say anything, only listening and being there for her chosen mate.";
		if hp of doctor mouse is 2:
			say "     You relate to Dr Matt the events of the fight that began as you refused to help the mouse and incurred his wrath.  Dr Matt seems unsurprised by the doctor's monstrous transformation, given what you related about his research, and is pleased to hear that he was dispatched so thoroughly.  You pull dump out the accumulated research you were able to abscond from the lab, offering it all to the scientist to help him deal with the infection.";
			say "     Dr Matt is quite intrigued by what he sees in the documents and samples he glances over.  'This is quite a substantial find, my brave assistant.  I can see several results that I can put into place immediately and will be able to offer you several more options, should you wish to [bold type]volunteer[roman type] for nanite adjustments.'";
			now featunlock is 1;
		otherwise:
			say "     You relate to Dr Matt the events of the fight that began as you refused to help the mouse and incurred his wrath.  Unable to defeat the mouse, you were not able to stop him, but survived the encounter and have returned to assist the scientist.";
			say "     'It is unfortunate that this mad doctor was not stopped, but given the resources at his disposal, it is not surprising that you alone could not defeat him.  I shall inform the military of these events, as well as the increased threat level at the hospital.  They may attempt something to deal with him when the final push is made, but I suspect Dr Mouse will escape in the confusion.  He seems too intelligent to not have an exit strategy already formulated.'";
	if hp of doctor matt is 11:
		if susan is visible:
			say "     Susan moves up beside you as you talk about what happened at the hospital, putting her arms around you and hugging you tightly.  She doesn't say anything, only listening and being there for her chosen mate.";
		if hp of doctor mouse is 2:
			say "     You relate to Dr Matt the events of the fight that began as you refused to help the mouse and incurred his wrath.  Dr Matt seems unsurprised by the doctor's monstrous transformation, given what you related about his research, and is pleased to hear that he was dispatched so thoroughly.  You pull dump out the accumulated research you were able to abscond from the lab, offering it all to the scientist to help him deal with the infection.";
			say "     Dr Matt is quite intrigued by what he sees in the documents and samples he glances over.  'This is quite a substantial find, my brave assistant.  I can see several results that I can put into place immediately and will be able to offer you several more options, should you wish to [bold type]volunteer[roman type] for nanite adjustments.'";
			now featunlock is 1;
		otherwise:
			say "     You relate to Dr Matt the events of the fight that began as you refused to help the mouse and incurred his wrath.  Unable to defeat the mouse, you were not able to stop him, but survived the encounter and have returned to assist the scientist.";
			say "     'It is unfortunate that this mad doctor was not stopped, but given the resources at his disposal, it is not surprising that you alone could not defeat him.  I shall inform the military of these events, as well as the increased threat level at the hospital.  They may attempt something to deal with him when the final push is made, but I suspect Dr Mouse will escape in the confusion.  He seems too intelligent to not have an exit strategy already formulated.'";
		now hp of doctor matt is 12;
		now level of doctor matt is turns;
	if hospquest is 13 and "Mental Booster" is not listed in feats of player:
		say "     As thanks for your willingness to side with me over this impudent upstart mouse, I shall provide you with something I have been working on.  Trying to deal with the infected city can be mentally harrowing as well as physically harrowing.  It is easy to neglect the need to be intellectually able to deal with this crisis over the more obvious need for physical prowess.  As such, I have found a way to stimulate the mind, increasing one's reasoning abilities to make them better able to notice significant events, interpret that information and then relate it to others.  This treatment will also strive to keep these mental faculties strong after mentally debilitating infections.'";
		say "     The doctor injects you with the nanite adjustment.  At first you feel little, but as you start to consider what may be happening, you notice that you're interpreting stimuli faster and drawing conclusions about them more readily.  You don't suddenly know more information, but you can better process all that you have learned to make more out of it.  You also feel a little more confident in dealing with the world because of it.";
		add "Mental Booster" to the feats of the player;
		increase intelligence of player by 2;
		increase perception of player by 2;
		increase charisma of player by 2;
		increase morale of player by 4;
		say "[bold type]Your Intelligence, Perception and Charisma are all increased by 2.[roman type][line break]";
	if hp of doctor matt is 12 and "Automatic Survival" is listed in feats of player:
		now hp of doctor matt is 14;					[Supply Run skipped entirely]
	if hp of doctor matt is 12 and level of doctor matt minus turns is less than 16:
		say "     'I don't currently have any tasks for you,' the doctor states.  'Please check back later after I've had a chance to take stock of our situation.'";
	otherwise if hp of doctor matt is 12:
		say "     'Given the situation in the city escalating from the recent interference, the military's final move has been delayed much more than anticipated.  While this gives me more time to hopefully give them the tools they'll need, this does mean our supplies will run dangerously low before the end if more cannot be obtained.'";
		say "     'Now, while Orthas assures me she will be able negotiate some exchange with the occasional sane survivor that passes by, this is unreliable.  I would prefer to give us a wider margin of error.  I do not wish to inform the military of our needs, as they may foolishly try advancing the timetable or sending a team in to extract us beforehand.  As such, I want you to collect some food and water supplies for us.  Perhaps a half-dozen of each.  As you can freely roam the city, you may be able to scavenge additional supplies or find others who are willing to pay you in supplies for services.  Just take care to choose your allies more carefully this time,' he adds with a meaningful gaze.";
		say "     'As you already have to deal with feeding yourself, this task will not go unrewarded.  I will prepare an enhancement injection of your choice once the supplies are obtained and given to me.  Oh, and don't tell Orthas I'm having you do this,' he adds as he turns back to his workbench.";
		now waterneed is 6;
		now foodneed is 6;
		now hp of doctor matt is 13;
	otherwise if hp of doctor matt is 13:
		now foodcount is 0;
		now watercount is 0;
		repeat with x running through invent of player:
			if x is "food", increase foodcount by 1;
			if x is "water bottle", increase watercount by 1;
		now tempnum is foodneed;
		say "[thefoodening]";
		say "[thefoodening]";
		say "[thefoodening]";
		say "[thefoodening]";
		say "[thefoodening]";
		say "[thefoodening]";
		if tempnum > foodneed:
			if foodneed is 0:
				say "     'Good job!  This is sufficient food to build up our supplies.  Nothing like a good meal to keep the brain running its best' the doctor says, looking over the fare hungrily as he takes the supplies from you.  You quietly look over your depleted supplies, hoping you have enough for yourself as well.";
			otherwise:
				say "     'I'll add that food to our supplies to raise our stocks,' the doctor says, taking the food from you.  'We still need [foodneed] more meals though.'  You quietly look over your depleted supplies, hoping you have enough for yourself as well.";
		now tempnum is waterneed;
		say "[thewatering]";
		say "[thewatering]";
		say "[thewatering]";
		say "[thewatering]";
		say "[thewatering]";
		say "[thewatering]";
		if tempnum > waterneed:
			if waterneed is 0:
				say "     'Good job!  This is sufficient water to increase our supplies.  Nothing like a good drink to grease the wheels of science,' the doctor says, looking over the collected water thirstily as he takes the supplies from you.  You quietly look over your depleted supplies, hoping you have enough for yourself as well.";
			otherwise:
				say "     'I'll add that water to our supplies to raise our stocks,' the doctor says, taking the water from you.  'We still need [waterneed] more liters through.'  You quietly look over your depleted supplies, hoping you have enough for yourself as well.";
		if foodneed is 0 and waterneed is 0:
			say "     Having safely stored away the supplies, Dr Matt turns back to you as if wondering why you're still here when there's work to be done[if susan is present].  Susan politely coughs and nods towards the nanite enhancement device while tapping her hoofed foot on the floor[otherwise].  You glare at the doctor for a few seconds before finally pointing to the nanite enhancement device[end if], at which point Dr Matt brushes his gloved hands together and nods, heading over to it as if that was his intention all along.";
			wait for any key;
			now foodwaterbonus is 1;
			featget;
			now hp of doctor matt is 14;
	say "He looks kind of busy right now.";


to say thefoodening:
	if foodcount > 0 and foodneed > 0:
		delete food;
		decrease foodcount by 1;
		decrease foodneed by 1;

to say thewatering:
	if watercount > 0 and waterneed > 0:
		delete bottle water;
		decrease watercount by 1;
		decrease waterneed by 1;


waterneed is a number that varies.
foodneed is a number that varies.
foodcount is a number that varies.
watercount is a number that varies.
foodwaterbonus is a number that varies.  foodwaterbonus is usually 0.

Table of Game Objects (continued)
name	desc	weight	object
"infection monitor"	"     Cobbled together from various items, Dr Matt's infection analyzer can be used to check your body's infection status.  Type [bold type]pism[roman type] to use."	1	infection monitor

infection monitor is a grab object.
it is part of the player.
It is not temporary.

monitoring is an action applying to nothing.
understand "pism" as monitoring.

instead of using infection monitor:
	monitor;

check monitoring:
	if "infection monitor" is listed in invent of player:
		monitor;
	otherwise:
		say "You don't have anything capable of that.";
	stop the action;

to monitor:
	say "You hook up the infection analyzer and run the program, checking on your body's status for any changes while looking yourself over.";
	say "Head status:  [facename of player]     Body status:  [bodyname of player][line break]";
	say "Skin status:  [skinname of player]     Tail status:  [tailname of player][line break]";
	if cocks of player > 0:
		if cunts of player > 0:
			say "Cock status:  [cockname of player]     Gender: Herm[line break]";
		otherwise:
			say "Cock status:  [cockname of player]     Gender: Male[line break]";
	otherwise if cunts of player > 0:
		say "Gender: Female[line break]";
	otherwise:
		say "ERROR!: Neuter[line break]";
	follow the self examine rule;

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
Include Hospital For Fs by Stripes.
Include Medical Checkups by Hellerhound.
Include Junkyard and Warehouse by Rimme.
Include State Fair by Sarokcat.
Include Down Under Pub by Stripes.


[Quests & Events]
Include Random Events by Hiccup.
Include High Rise Events by Stripes.
Include Hyena Bikers by Stripes.
Include Stable Related Events by Sarokcat.
Include Red Events by Stripes.
Include Dry Plains Events by Stripes.
Include Junkyard Events by Stripes.
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


[Monsters/Infections]
Include Chocolate Lab by Stripes.
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
Include Candy Striper by Stripes.


[NPCs]
Include Stuck Dragon by Hiccup.
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
Include Alpha Fang Scenes by Nuku Valente.


[Pets]
Include Little Fox by Sarokcat.
Include Felinoid Companion by Sarokcat.
Include Kitty Cat by Sarokcat.
Include Skunk Pet by Sarokcat.
Include Exotic Bird by Sarokcat.
Include Rachel Mouse by Stripes.
Include Honey by Stripes.



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
	say " [link]area[as]look[end link]";
	say "[line break]>";

 When play begins:
	repeat with x running through situations:
		now x is a part of the player;
	repeat with x running through grab objects:
		now x is a part of the player;
	now the command prompt is "[promptsay]";
[	now the command prompt is "Location: [the player's surroundings] XP:[xp of player]/[level up needed] Lvl: [level of player] HP:[hp of player]/[maxhp of player][line break]Exits: [List of Valid Directions] Hunger: [hunger of player] Thirst: [thirst of player] Score:[score]/[maximum score][line break][list of valid directions][if location of player is fasttravel], [bracket]nav, scavenge, explore[close bracket][end if]>";]

hypernull is a number that varies. Hypernull is usually 0.

When play begins:
	now waiterhater is 0; [initialize to 0 for start of game, waiting occurs as normal]
	now clearnomore is 0; [initialize to 0 for start of game, clearing occurs as normal]
	repeat with q running from 1 to the number of rows in the table of game objects:
		add name in row Q of table of game objects to allobjs;
	change the right hand status line to "[list of valid directions]";
	say "Do you want hyperlinks? (Y/n)";
	get typed command as playerinput;
	if playerinput matches "no" or playerinput matches "n":
		now hypernull is 1;
		say "Hyperlinks disabled.";
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
	if scenario is "Rescuer Stranded":
		say "Hours after the outbreak, you had been part of the military's fast response team. Your initial task was reconnaissance with the hopes of setting up a rally point for helicopter evacuation of any non-infected survivors.";
		say "Your team was moving on foot through the streets of downtown when you were set upon by creatures out of a pervert's nightmare. All discipline was lost as your team disintegrated into panic and fled unthinkingly into the city, pursued by the nightmares...";
		say "You awake in what appears to be a disused bunker. You have no idea how you even got here, but you are uninfected. In your panicked flight you lost all of your supplies. No food. No water. No weapons. No radio. At least you have your backpack, and your watch.";
		say "Heaven only knows what awaits you outside but, you have to find a way back.";
		say "Taking a deep breath you open the door to your sanctuary...";
	otherwise:
		say "Phew, you barely made it in here, then the lights went out. You waited, in the dark. You're not sure how long you've been down here, but the sounds have long since died away. You've eaten a good portion of the food and water. No choice but to go out and greet the city. At least you have your [bold type]backpack[roman type], and your [bold type]watch[roman type]. How bad could it be?[line break][line break]((Hey there! Some tips for you. Type look backpack, and type look watch. Also, try look me! Your description will probably change as you play.))[line break][line break]";
	say "Want more details on the game and updates? ----- [bold type]http://nukuv.blogspot.com/[roman type]  ------";
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
		process dirty water;
		process dirty water;
		process dirty water;
		process dirty water;
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	if scenario is "Researcher":
		say "The helicopter brought you into the devastated city. Ruin and strange creatures milled about beneath you as you flew over at high speed. This place has been written off as a loss, but there was rumor they[']d take it back. You only have so much time to investigate, and you plan to make the most of it.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "You're let down beside an old bunker. It would serve as your base of operations, and would be where they[']d pick you up when it was over. You should be scared, but you just can[']t seem to muster that sensation. They gave you booster shots against the nanites. You know what you are doing. They will be so proud of what you find. Maybe you can figure out a way to stop this from happening again in other cities.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	otherwise:
		say "You remember how it went down. Satellite, gone, Internet, offline. The power was the last thing to go, just a precious hour later. People wandered the streets, confused, panicked. Then they came. Monsters. Freaks. They'd grab people. Some got mauled on the spot. Some fought back. You did what you could, but you managed to get here, to safety. The bunker. You remember seeing that stupid bunker sign for years, who knew remembering it would save your life? You waited for others to come. Surely you were not the only one to remember?";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "No one else ever arrived. Ah well, you're an American of the 21st century. What's a little Apocalypse to keep you down? Steeling your nerves and readying what little supplies you have, you break the seal and set out.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "Welcome to...";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	zephyrad rule in 1 turn from now;
	


