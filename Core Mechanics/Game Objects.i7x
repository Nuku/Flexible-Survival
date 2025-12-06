Version 1 of Game Objects by Core Mechanics begins here.
[ Version 1 - Extracted during dissection of the Story.ni - Wahn]

Part 1 - Declarations

Chapter 1 - Grab Objects

A thing can be rooted in place. A thing is usually not rooted in place.
A thing can be restful. A thing is usually not restful.

Grab Object is a kind of thing.
A grab object has a number called objsize. Objsize of grab object is usually 3.	[Used only for armaments and journal.]
A grab object has a text called Usedesc. [function call for using the item]
A grab object can be temporary. A grab object is usually temporary. [destroyed upon use]
A grab object can be fast. A grab object is usually not fast. [usable in combat]
A grab object can be infectious. [infects upon use]
A grab object has a text called strain. [infection strain]
A grab object can be milky. A grab object is usually not milky. [milk items]
A grab object can be cum. A grab object is usually not cum. [cum items]
A grab object has a truth state called plural. Plural of a grab object is usually false. [pants, glasses, etc.]
A grab object has a text called trade. [standard trade in item]
A grab object has a text called purified. [other item you get when microwaving this]
A grab object has a number called carried. [number of items of each type the player has - replaces a proper inventory system]
A grab object has a number called stashed. [replaces a proper storage system]

Chapter 2 - Armaments

Armament is a kind of grab object.
Armament has a text called weapon.
Armament has a text called weapon type.
Armament has a number called Weapon Damage.
Armament has a number called hitbonus.	[Rare, usually magic]
An armament can be ranged or melee. An armament is usually melee.

Chapter 3 - Equipment

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
Equipment has a text called EquipFunction. EquipFunction is usually "".
Equipment has a text called UnequipFunction. UnequipFunction is usually "".


Part 2 - Definitions and Functions

Chapter 1 - Grab Objects

Definition: A grab object (called D) is owned:
	if there is a name corresponding to a object of d in the table of game objects:
		if the carried of d > 0, yes;
	no;

Definition: A grab object (called D) is fiveowned:
	let count be 0;
	if there is a name corresponding to a object of d in the table of game objects:
		if the carried of D > 4, yes;
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

instead of examining a grab object (called x):
	say "[the desc corresponding to a object of x in the table of game objects][line break]";
	let found be 0;
	repeat through the table of game art:
		if printed name of x exactly matches the text title entry, case insensitively:
			project icon entry;
			now found is 1;
			break;
	if found is 0 and x is cum:
		project Figure of Item_Bottle_Cum;
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

Using is an action applying to one thing.

understand "dequip [owned grab object]" as using.
understand "take off [owned grab object]" as using.
understand "use [owned grab object]" as using.
understand "eat [owned grab object]" as using.
understand "drink [owned grab object]" as using.
understand "equip [owned grab object]" as using.
understand "hold [owned grab object]" as using.
understand "wear [owned grab object]" as using.
understand "wield [owned grab object]" as using.
understand "write in [owned grab object]" as using.

Check using a grab object (called x):
	if HardMode is true and x is journal and (LastJournaluse minus 8) < turns:
		say "You can't use your [x] for another [(remainder after dividing (turns minus (LastJournaluse minus 8)) by 8 ) times 3] hours.";
		stop the action;
	continue the action;

Carry out using a grab object (called x):
	if x is owned:
		process x;
	else:
		say "You don't see any [x] in your backpack.";

[
instead of wearing something:
	try using it;
	stop the action;
]

To process (x - a grab object):
	let found be 0;
	repeat through the table of game art:
		if printed name of x exactly matches the text title entry, case insensitively:
			project icon entry;
			now found is 1;
			break;
	if found is 0 and x is cum:
		project Figure of Item_Bottle_Cum;
	let tempHungerValue be Hunger of Player;
	if x is temporary and x is owned:
		say "You eagerly use the [x]!";
		ItemLoss x by 1 silently;
	else:
		say "You use the [x].";
	if Usedesc of x is empty:
		now x is x;
	else:
		say "[Usedesc of x]";
	if x is infectious and "Iron Stomach" is not listed in feats of Player:
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if strain of x exactly matches the text Name entry, case insensitively:
				now MonsterID is y;
				infect;
				break;
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
				say "[UnequipFunction of x]";
		else:
			if slot of x is empty:
				increase score by 0;
			else:
				repeat with z running through equipped equipment:
					if slot of z is slot of x:
						say "     [bold type]Your [z] is in the way![roman type][line break]";
						continue the action;
			if (slot of x is "feet" or slot of x is "legs" or slot of x is "waist") and (BodyName of Player is listed in infections of TaurList or BodyName of Player is listed in infections of NoLegList):
				say "     [bold type]Sadly, the [x] [if plural of x is true]are[else]is[end if] incompatible with your body type![roman type][line break]";
				continue the action;
			if size of x > 0: [objects with size restrictions]
				if (scalevalue of Player - size of x > 1): [clothing two size categories smaller]
					say "     [bold type]You can't even begin to fit into the [x]. [if plural of x is true]They are meant for smaller beings than yourself[else]It is meant for smaller beings than yourself[end if].[roman type][line break]";
					continue the action;
				else if (scalevalue of Player - size of x is 1): [clothing one size category smaller]
					say "     [bold type]You start wearing the [x]. [if plural of x is true]They are quite small for your body size, but still barely fit[else]It is quite small for your body size, but still barely fits[end if].[roman type][line break]";
					now x is equipped;
					say "[EquipFunction of x]";
				else if (scalevalue of Player - size of x is 0): [clothing same size category]
					say "     [bold type]You start wearing the [x]. [if plural of x is true]They fit fairly well[else]It fits fairly well[end if].[roman type][line break]";
					now x is equipped;
					say "[EquipFunction of x]";
				else if (scalevalue of Player - size of x is -1): [clothing one size category bigger]
					say "     [bold type]You start wearing the [x]. [if plural of x is true]They are quite big for your body size, but fit more or less with some adjustments[else]It is quite big for your body size, but fits more or less with some adjustments[end if].[roman type][line break]";
					now x is equipped;
					say "[EquipFunction of x]";
				else if (scalevalue of Player - size of x < -1): [clothing two size categories bigger]
					say "     [bold type]The [x] [if plural of x is true]are simply too big! They are meant for much larger beings than yourself[else]is simply too big! It is meant for much larger beings than yourself[end if].[roman type][line break]";
					continue the action;
			else:
				say "     [bold type]You start wearing the [x].[roman type][line break]";
				now x is equipped;
				say "[EquipFunction of x]";
	else if x is a pepperspray:
		if inafight is 1:
			say "[line break][usepepperspray]";
		else:
			say "It would not be a good idea to use that on yourself. Spicy eyes!";
	if tempHungerValue > Hunger of Player and "Tanuki Salts" is listed in Feats of Player:
		PlayerEat 5;
		say "Dashing a little tanuki salts helped things along. Mmm, divinely tasty.";
		increase Morale of Player by 5;


Chapter 2 - Armaments

Definition: A grab object (called x) is wielded:
	if weapon object of Player is x, yes;
	no;

Definition: A grab object (called x) is unwieldy:		[applies to armaments only]
	if grab object is journal, no;
	if (absolute value of ( scalevalue of Player - objsize of x )) > 0, yes;
	no;

Chapter 3 - Equipment




journal is a grab object. It is not temporary.
The carried of journal is 1. [starting item]
journal has a number called hitbonus. hitbonus of journal is usually 0.
Understand "book" as journal.

Usedesc of journal is "[journal use]".

to say journal use:
	follow the brain descr rule;
	say "You settle down and start scribbling in your journal about your [descr] ";
	if Humanity of Player < 100:
		let healed be 10 + ( ( level of Player + perception of Player - 10 ) / 2 );
		if caffeinehigh of Player > 0:
			now healed is healed / 2;
			say "[line break]Filled with excess, manic energy, you have difficulty sitting still and focusing on your journal. ";
		if ssmb is true:
			now healed is ( healed * 3 ) / 2;
		SanBoost healed;
		now Lastjournaluse is turns;
	follow turnpass rule;


Game Objects ends here.
