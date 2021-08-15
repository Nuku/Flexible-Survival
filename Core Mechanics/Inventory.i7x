Version 1 of Inventory by Core Mechanics begins here.

invcolumns is a number that varies. invcolumns is usually 2.

Part 1 - Inventory

Chapter 1 - Basic Functionality

understand the command "i" and "inv" and "inventory" as something new.

Inventorying is an action applying to nothing.

understand "item" as Inventorying.
understand "i" as Inventorying.
understand "inv" as Inventorying.
understand "inventory" as Inventorying.

carry out Inventorying:
	if invcolumns < 1 or invcolumns > 4, now invcolumns is 2;
	sort invent of Player;
	let dseed be 0;
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

[used to speed up link command lookup in between clears on the hyperlink list, because we know something about the list: the order of items is in all likelihood the same that we are now creating links in
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

Chapter 2 - Settings

settinginvcolumns is an action applying to nothing.

understand "set inventory columns" as settinginvcolumns.
understand "inventory columns" as settinginvcolumns.
understand "set inventory" as settinginvcolumns.
understand "set columns" as settinginvcolumns.

invcolumns is a number that varies. [invcolumns is usually 2. - set as part of Presets in Core Mechanics]

carry out settinginvcolumns:
	say "[set_invcolumns]";

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

Chapter 3 - Definitions

definition: A person is overburdened:
	let weight be 0;
	if the number of owned grab objects > 0:
		repeat with x running from 1 to the number of rows in the table of game objects:
			choose row x in the table of game objects;
			if object entry is owned:
				let num be carried of object entry;
				increase weight by weight entry times num;
	if "Remove Carry Limits" is listed in Traits of Player, no;
	if weight > capacity of Player, yes;
	no;

instead of going somewhere while player is overburdened:
	say "You are too over burdened to move. Drop some of that junk!";

Chapter 4 - Commands

Section 1 - Taking

before taking a thing:
	if noun is rooted in place:
		say "You can't take that.";
		stop the action;
	say "That seems secured in place.";

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

Section 2 - Destroying

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

Section 3 - Dropping

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

After reading a command:
	if the player's command matches "drop all":
		replace the player's command with "dropitall";
	else if the player's command matches "drop everything":
		replace the player's command with "dropitall";
	else if the player's command includes "drop all ":
		replace the matched text with "dropall ";

masslittering is an action applying to one thing.

Understand "dropall [owned grab object]" as masslittering.

To decide which action name is the action to be: (- action_to_be -).

Rule for printing a parser error while the latest parser error is the can't see any such thing error and the action to be is the masslittering action:
	say "You don't see that in your backpack.";

Carry out masslittering something (called x):
	if x is wielded or x is equipped:
		say "You're [if x is wielded]wielding[else]wearing[end if] that. Take it off first.";
		stop the action;
	else if x is owned:
		let found be carried of x;
		repeat with z running from 1 to found:
			add printed name of x to invent of location of Player;
		ItemLoss all x silently;
		if found > 0:
			say "You set down [found] x [x].";

criminallittering is an action applying to nothing.

Understand "dropitall" as criminallittering.

Carry out criminallittering:
	let droptotal be 0;
	repeat with x running through owned grab objects:
		if x is journal or x is equipped or x is wielded:
			next;
		else:
			let found be carried of x;
			repeat with z running from 1 to found:
				add printed name of x to invent of location of Player;
			increase droptotal by carried of x;
			ItemLoss all x silently;
	if droptotal is 0:
		say "You don't have anything you're ready to drop.";
	else:
		say "You drop everything but your journal and any equipped items you have. You get rid of [droptotal] item(s) in all[if droptotal > 4]. Ahhh! Your back feels much better now[end if].";

Section 4 - Trading

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



Inventory ends here.
