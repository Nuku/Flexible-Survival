Version 2 of Debugging Tools by Core Mechanics begins here.
[Version 1 - By Wahn, moved to Core Mechanics]
[Version 2 - By Dys, adds more functions, changes npcdebugmode to debugmode]
"Adds a debug function for NPCs to the Flexible Survival game"

[ Activating the debug mode show the NPC's variables in their description and show when a walk-in event fires]
[ Either turn it on and off here by setting the variable, or use the "npcdebug" command in the game ]

[ debugactive 0 = Debug off]
[ debugactive 1 = Debug on]

debugactive is a number that varies.[@Tag:NotSaved] debugactive is 0.
debuglevel is a number that varies.[@Tag:NotSaved] debuglevel is 1.
RandomGenNumber is a number that varies.[@Tag:NotSaved]

Showserial is an action applying to nothing.
understand "Serial" as Showserial.

carry out Showserial:
	say "[serial number]";

To say serial number: (- Serial(); -).
[Added function for outputting FS serial number]

[ Todo: write Debug code to display _all_ NPC variables]

DetachGrabObs is an action applying to nothing.
understand "DetachGrabObs" as DetachGrabObs.

check DetachGrabObs:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out DetachGrabObs:
	repeat with x running through grab objects:
		now x is nowhere;

AttachGrabObs is an action applying to nothing.
understand "AttachGrabObs" as AttachGrabObs.

check AttachGrabObs:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out AttachGrabObs:
	repeat with x running through grab objects:
		now x is a part of Player;

AttachInventory is an action applying to nothing.
understand "AttachInventory" as AttachInventory.

check AttachInventory:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out AttachInventory:
	repeat with x running through owned grab objects:
		now x is a part of Player;

ZTeleport is an action applying to one topic.
understand "ZTeleport [text]" as ZTeleport.

check ZTeleport:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out ZTeleport:
	repeat with x running through rooms:
		if printed name of x exactly matches the text topic understood, case insensitively:
			now Player is in x;


ZAnalyzeEvent is an action applying to one topic.
understand "ZAnalyzeEvent [text]" as ZAnalyzeEvent.

check ZAnalyzeEvent:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out ZAnalyzeEvent:
	say "DEBUG -> Analyzing reasons why event '[topic understood]' might not be available.";
	now battleground is earea of location of Player;
	repeat with z running through situations:
		if printed name of z matches the text topic understood, case insensitively:
			say "DEBUG -> Situation found: [printed name of z] by matching with [topic understood].[line break]";
			if z is not close:
				say "DEBUG -> In another area to current position![line break]";
			if z is resolved:
				say "DEBUG -> Event already resolved.[line break]";
			if z is inactive:
				say "DEBUG -> Event banned / inactive.[line break]";
			if level of Player < level of z:
				say "DEBUG -> Player's level is too low![line break]";
			if z is not PrereqComplete:
				say "DEBUG -> Prerequisites not fulfilled.[line break]";
				PrereqAnalyze z;

ZCall is an action applying to one topic.
understand "ZCall [text]" as ZCall.

check ZCall:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out ZCall:
	repeat with x running through persons:
		if x is a pet:
			next;
		if printed name of x exactly matches the text topic understood, case insensitively:
			now x is in location of Player;

Chapter 1 - Debug Mode

debugmode is an action applying to nothing.
understand "npcdebug" as debugmode.
understand "npc debug" as debugmode.
understand "debug npcs" as debugmode.
understand "debugnpcs" as debugmode.
understand "debug" as debugmode.

carry out debugmode:
	if debugactive is 0:
		activate debug mode;
	else:
		disable debug mode;

setdebuglevel is an action applying to one number.
understand "debuglevel [number]" as setdebuglevel.

to activate debug mode:
	say "DEBUG MODE ACTIVATED.";
	say "WARNING: THE USE OF DEBUG COMMANDS CAN ADVERSELY AFFECT THE INTEGRETY OF YOUR CURRENT SAVE, ESPECIALLY IF YOU CHANGE EVENT STATES. USE WITH CAUTION.";
	if "Debugger" is not listed in Traits of Player:
		add "Debugger" to Traits of Player;
	now debugactive is 1;

to disable debug mode:
	say "DEBUG MODE DISABLED.";
	if "Debugger" is listed in Traits of Player:
		remove "Debugger" from Traits of Player;
	now debugactive is 0;

carry out setdebuglevel:
	let newlevel be the number understood;
	if newlevel < 0 or newlevel > 10:
		say "ERROR: level has to be between 0 and 10!";
	else if newlevel is 0:
		disable debug mode; [Always give feedback, even if already disabled]
	else:
		if debugactive is 0:
			activate debug mode;
		now debuglevel is newlevel;
		say "Debug level set to [debuglevel]";

to debug at level ( n - number ) say ( t - text ):
	if debugactive is 1 and debuglevel >= n:
		say t;

to decide if debug is at level ( n - number ): [or higher]
	if debugactive is 0, decide no;
	if debuglevel < n, decide no;
	decide yes;

an everyturn rule:
	if debugactive is 1 and debuglevel > 8:
		say "DEBUG: inasituation state: [inasituation]";


Chapter 2 - Information Readouts

ZReadout is an action applying to one topic.
understand "ZReadout [text]" as ZReadout.

check ZReadout:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out ZReadout:
	repeat with x running through persons:
		if x is a pet:
			next;
		if printed name of x exactly matches the text topic understood, case insensitively:
			say "Default Variables of [printed name of x]:[line break]";
			say "HP: [HP of x], MaxHP: [MaxHP of x], Energy: [Energy of x], XP: [XP of x], Level: [Level of x][line break]";
			say "Strength: [Strength of x], Dexterity: [Dexterity of x], Stamina: [Stamina of x], Charisma: [Charisma of x], Intelligence: [Intelligence of x], Perception: [Perception of x][line break]";
			say "Hunger: [Hunger of x], Thirst: [Thirst of x], Morale: [Morale of x], Lust: [Lust of x], Libido: [Libido of x][line break]";
			say "Loyalty: [Loyalty of x], Humanity: [Humanity of x], Affection: [Affection of x], Depravity: [Depravity of x], SubVsDom: [SubVsDom of x][line break]";
			say "Weapon damage: [Weapon damage of x], Armor: [Armor of x], Capacity: [Capacity of x][line break]";
			say "Traits: [Traits of x][line break]";

turncountdisplay is an action applying to nothing.
understand "zTurn Count" as turncountdisplay.
understand "zTurnCount" as turncountdisplay.
understand "zCurrent turn" as turncountdisplay.
understand "zCurrentturn" as turncountdisplay.

check turncountdisplay:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out turncountdisplay:
	say "DEBUG: CURRENT TURN IS [turns]; Current Turn Count is [turn count]";

PregStatus is an action applying to one topic.
understand "zPreg Status [text]" as PregStatus.
understand "zPregStatus [text]" as PregStatus.
understand "zPregCheck [text]" as PregStatus.

check PregStatus:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out PregStatus:
	let PregCheckObj be Player;
	if topic understood is not "Player":
		repeat with x running through persons:
			if printed name of x exactly matches the text topic understood, case insensitively:
				now PregCheckObj is x;
	say "     DEBUG: Preg Status of [PregCheckObj]:[line break]";
	say "impreg_ok: ";
	if PregCheckObj is impreg_ok:
		say "+";
	else:
		say "-";
	say "[line break]impreg_able: ";
	if PregCheckObj is impreg_able:
		say "+";
	else:
		say "-";
	say "[line break]impreg_now: ";
	if PregCheckObj is impreg_now:
		say "+";
	else:
		say "-";
	say "[line break]partial_vacant: ";
	if PregCheckObj is partial_vacant:
		say "+";
	else:
		say "-";
	say "[line break]total_vacant: ";
	if PregCheckObj is total_vacant:
		say "+";
	else:
		say "-";
	LineBreak;
	say "[line break]fpreg_ok: ";
	if PregCheckObj is fpreg_ok:
		say "+";
	else:
		say "-";
	say "[line break]fpreg_able: ";
	if PregCheckObj is fpreg_able:
		say "+";
	else:
		say "-";
	say "[line break]fpreg_now: ";
	if PregCheckObj is fpreg_now:
		say "+";
	else:
		say "-";
	say "[line break]female_vacant: ";
	if PregCheckObj is fem_vacant:
		say "+";
	else:
		say "-";
	LineBreak;
	say "[line break]mpreg_ok: ";
	if PregCheckObj is mpreg_ok:
		say "+";
	else:
		say "-";
	say "[line break]mpreg_able: ";
	if PregCheckObj is mpreg_able:
		say "+";
	else:
		say "-";
	say "[line break]mpreg_now: ";
	if PregCheckObj is mpreg_now:
		say "+";
	else:
		say "-";
	say "[line break]male_vacant: ";
	if PregCheckObj is male_vacant:
		say "+";
	else:
		say "-";


ShowEncounteredEnemies is an action applying to nothing.

understand "ShowEncounteredEnemies" as ShowEncounteredEnemies.

check ShowEncounteredEnemies:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out ShowEncounteredEnemies:
	EncounteredEnemiesList;

to EncounteredEnemiesList:
	sort EncounteredEnemies of Player;
	say "Thinking back to your misadventures in the city so far, you call into memory all the creatures you have encountered and fought:[line break]";
	say "[EncounteredEnemies of Player][line break]";

[TODO: write Infection overview for single infection]

InfectionOverview is an action applying to nothing.

understand "zInfectionOverview" as InfectionOverview.

check InfectionOverview:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out InfectionOverview:
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		now Cock Count of Player is 1;
		now Cunt Count of Player is 1;
		now Cock Length of Player is 10;
		now Cunt Depth of Player is 8;
		now tail of Player is the tail entry;
		now Face of Player is the face entry;
		now Skin of Player is the skin entry;
		now Body of Player is the body entry;
		now Cock of Player is the cock entry;
		say "[bold type][y] - [Name entry][roman type]:";
		LineBreak;
		DescriptionDisplay;
		LineBreak;

to DescriptionDisplay:
	now looknow is 1;
	let cocktext be "";
	follow the cock descr rule;
	if Player is male:
		if Cock Count of Player > 1:
			now cocktext is "have [Cock Count of Player] [cock size desc of Player] [Cock Length of Player]-inch-long [Cock of Player] [one of]cocks[or]penises[or]shafts[or]manhoods[at random]. They are [if Libido of Player <= 25]only somewhat aroused at the moment[else if Libido of Player <= 50]partially hard and dribbling a little pre[else if Libido of Player <= 75]erect and leaking precum[else]fully erect and drooling precum steadily[end if]. [if Player is internalBalls]Though they are not outwardly apparent, you wager you have[else]Underneath them hangs[end if] [one of]a pair of[or]a set of[at random] [Ball Size Adjective of Player] [Balls].";
		else:
			now cocktext is "have a [cock size desc of Player] [Cock Length of Player]-inch-long [Cock of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random]. It is [if Libido of Player <= 25]only somewhat aroused at the moment[else if Libido of Player <= 50]partially hard and dribbling a little pre[else if Libido of Player <= 75]erect and leaking precum[else]fully erect and drooling precum steadily[end if]. [if Player is internalBalls]Though they are not outwardly apparent, you wager you have[else]Underneath it hangs[end if] [one of]a pair of[or]a set of[at random] [Ball Size Adjective of Player] [Balls].";
	let cunttext be "";
	follow the cunt descr rule;
	if Player is female:
		if Cunt Count of Player > 1:
			now cunttext is " have [Cunt Count of Player] [cunt size desc of Player] [one of]cunts[or]pussies[or]vaginas[at random]. Further probing shows them to be [Cunt Depth of Player] inches deep and able to stretch to about [Cunt Tightness of Player] around. They are [if Libido of Player <= 25]a little damp at the moment[else if Libido of Player <= 50]wet with your juices[else if Libido of Player <= 75]hot and dripping juices[else]drooling musky nectar down your thighs[end if].";
		else:
			now cunttext is "r [one of]cunt[or]pussy[or]vagina[or]cleft[at random] looks [cunt size desc of Player], and further probing shows it to be [Cunt Depth of Player] inches deep and able to stretch to [Cunt Tightness of Player] around. It is [if Libido of Player <= 25]a little damp at the moment[else if Libido of Player <= 50]wet with your juices[else if Libido of Player <= 75]hot and dripping juices[else]drooling musky nectar down your thighs[end if].";
	say "Looking over yourself, your body is covered in [Skin of Player] skin. Your face is [Face of Player].[run paragraph on]";
	repeat with x running through equipped owned equipment:
		if descmod of x is "", next;
		if placement of x is "face":
			say " [descmod of x][run paragraph on]";
	say " Your body is [Body of Player].[run paragraph on]";
	repeat with x running through equipped owned equipment:
		if descmod of x is "", next;
		if placement of x is "body":
			say " [descmod of x][run paragraph on]";
	repeat with x running through equipped owned equipment:
		if descmod of x is "", next;
		if placement of x is "waist":
			say " [descmod of x][run paragraph on]";
	if "Angie's Mate" is listed in feats of Player:
		say " Thin lines of healed claw-marks run down your back, marking you as Angie's mate.[run paragraph on]";
	if "Boghrim's Mark" is listed in feats of Player:
		say " Two small scars from Boghrim's tusks mark your shoulder, a reminder of the first time the big orc fucked you.[run paragraph on]";
	if "Marked - Fang" is listed in Traits of Player:
		say "Your neck bears the tooth-marks from when Fang became your alpha, marking you as a member of his pack and family.[run paragraph on]";
	if weapon object of Player is not journal:
		say " You are carrying a/an [weapon object of Player] just in case of trouble";
		if weapon object of Player is unwieldy:
			say ". Due to its comparatively [if scalevalue of Player > objsize of weapon object of Player]small[else]big[end if] size, it is [if absolute value of ( scalevalue of Player - objsize of weapon object of Player ) > 3]very unwieldy[else if absolute value of ( scalevalue of Player - objsize of weapon object of Player ) is 3]rather unwieldy[else]somewhat unwieldy[end if] for you to use at the moment";
		say ".[run paragraph on]";
	if tail of Player is empty:
		say "";
	else:
		say " [tail of Player][run paragraph on]";
	repeat with x running through equipped owned equipment:
		if descmod of x is "", next;
		if placement of x is "end":
			say " [descmod of x]";
	LineBreak;
	if cocktext is not empty:
		if cunttext is empty:
			say "A private peek shows that you [cocktext]";
		else:
			say "A private peek shows that you [cocktext]";
			say " Also, you[cunttext]";
	else if cunttext is not "":
		say " You[cunttext]";
	follow the breast descr rule;
	if Nipple Count of Player > 0:
		if Breast Size of Player is 0:
			say "You have [Nipple Count of Player] nipples on your [bodydesc of Player] chest.";
		else:
			if Nipple Count of Player > 2:
				say "You have [Nipple Count of Player] breasts on your [bodydesc of Player] chest. The first pair looks [descr] and curves out [Breast Size of Player] inch[if Breast Size of Player is not 1]es[end if] from your chest. The second pair curves out [(Breast Size of Player times three) divided by five] inch[if ( Breast Size of Player times three ) divided by 5 is not 1]es[end if] from your chest. ";
				if Nipple Count of Player > 4, say "The rest jostle for space [Breast Size of Player divided by three] inch[if Breast Size of Player divided by 3 is not 1]es[end if] from your belly.";
			else:
				say "You have two [descr] breasts on your [bodydesc of Player] chest, curving out [Breast Size of Player] inch[if Breast Size of Player is not 1]es[end if] from your chest.";
	if child is not born and gestation of child > 0:
		if gestation of child < 10:
			now looknow is 0;
			say "Your [Skin of Player] swollen belly looks ready to spill forth life at any moment.";
			now looknow is 1;
		else if gestation of child < 20:
			say "You have a noticeable bulge, a soft roundness to your belly that speaks of too many nights with a tub of ice cream, or an incoming child.";
		else if gestation of child < 30:
			say "You feel a soft subtle glow somewhere in your belly.";
	else if heat enabled is true:
		if inheat is true:
			say "You also feel [if heatlevel is 3]an intense[else]a[end if] need to be on the receiving end of a good, hard fuck because of your presently heated state.";
		else if heatlevel is 1 and player is impreg_able and CockName of Player is not "Human":
			say "You are thankfully spared some undo sexual yearning because you've prevented your tainted womb from going into heat.";
		else if heatlevel is 3 and player is impreg_able and CockName of Player is not "Human":
			say "Your tainted womb is not troubling you unduly at the moment, though you're unsure when your next intensified heat may strike you.";
	now looknow is 0;
	rule succeeds;


DebugCurrentMonsterID is an action applying to nothing.

understand "DebugCurrentMonsterID" as DebugCurrentMonsterID.

check DebugCurrentMonsterID:
	if debugactive is 0, say "You aren't currently debugging!" instead;

carry out DebugCurrentMonsterID:
	say "Current MonsterID: [MonsterID][line break]";
	choose row MonsterID from the Table of Random Critters;
	say "Current Monster: [Name Entry][line break]";

DebugCritterRow is an action applying to one topic.

understand "DebugCritterRow [text]" as DebugCritterRow.

check DebugCritterRow:
	if debugactive is 0, say "You aren't currently debugging!" instead;

carry out DebugCritterRow:
	let NumericalValue be 0;
	now NumericalValue is numerical value of topic understood;
	say "Text Given: [topic understood]; Number understood: [NumericalValue][line break]";
	if NumericalValue < the number of rows in the Table of Random Critters:
		choose row NumericalValue in the Table of Random Critters;
		say "Creature Entry: [Name entry][line break]";
		say "Enemy Title: [enemy title entry][line break]";
		say "Enemy Name: [enemy Name entry][line break]";
		say "Enemy Type: [enemy type entry][line break]";
	else:
		say "Row Number outside of the table!";

DebugPrintCritterRow is an action applying to one topic.

understand "DebugPrintCritterRow [text]" as DebugPrintCritterRow.

check DebugPrintCritterRow:
	if debugactive is 0, say "You aren't currently debugging!" instead;

carry out DebugPrintCritterRow:
	let NumericalValue be 0;
	now NumericalValue is numerical value of topic understood;
	say "Text Given: [topic understood]; Number understood: [NumericalValue][line break]";
	if NumericalValue < the number of rows in the Table of Random Critters:
		choose row NumericalValue in the Table of Random Critters;
		say "[current table row]";
	else:
		say "Row Number outside of the table!";


to PrereqAnalyze (X - situation):
	if PrereqCompanion of X is not nothing:
		say "PrereqCompanion: [PrereqCompanion of X][line break]";
		LineBreak;
	if Prereq1 of X is not nothing:
		say "Prereq1: [Prereq1 of X] - ";
		if Prereq1 of X is resolved:
			say "resolved";
		else:
			say "unresolved";
		LineBreak;
		LineBreak;
		say "Prereq1Resolution: [Prereq1Resolution of X][line break]";
		say "Resolution of Prereq1: [Resolution of Prereq1 of X][line break]";
		if Resolution of Prereq1 of X is not listed in Prereq1Resolution of X:
			say "[Resolution of Prereq1 of X] not listed in [Prereq1Resolution of X][line break]";
		else:
			say "[Resolution of Prereq1 of X] is listed in [Prereq1Resolution of X][line break]";
		LineBreak;
	if Prereq2 of X is not nothing:
		say "Prereq2: [Prereq2 of X] - ";
		if Prereq2 of X is resolved:
			say "resolved";
		else:
			say "unresolved";
		LineBreak;
		LineBreak;
		say "Prereq2Resolution: [Prereq2Resolution of X][line break]";
		say "Resolution of Prereq2: [Resolution of Prereq2 of X][line break]";
		if Resolution of Prereq2 of X is not listed in Prereq2Resolution of X:
			say "[Resolution of Prereq2 of X] not listed in [Prereq2Resolution of X][line break]";
		else:
			say "[Resolution of Prereq2 of X] is listed in [Prereq2Resolution of X][line break]";
		LineBreak;
	if Prereq3 of X is not nothing:
		say "Prereq3: [Prereq3 of X] - ";
		if Prereq3 of X is resolved:
			say "resolved";
		else:
			say "unresolved";
		LineBreak;
		LineBreak;
		say "Prereq3Resolution: [Prereq3Resolution of X][line break]";
		say "Resolution of Prereq3: [Resolution of Prereq3 of X][line break]";
		if Resolution of Prereq3 of X is not listed in Prereq3Resolution of X:
			say "[Resolution of Prereq3 of X] not listed in [Prereq3Resolution of X][line break]";
		else:
			say "[Resolution of Prereq3 of X] is listed in [Prereq3Resolution of X][line break]";

TagListReadout is an action applying to nothing.
understand "zTagListReadout" as TagListReadout.

check TagListReadout:
	if debugactive is 0, say "You aren't currently debugging." instead;

carry out TagListReadout:
	let L be a list of things;
	repeat with x running through markers:
		sort Infections of x;
		add x to L;
	say "[bold type]Markers:[roman type][line break]";
	sort L in printed name order;
	repeat with x running through L:
		say "     [printed name of x]: [if Infections of x is empty]Nothing[else][Infections of x][end if].";
		LineBreak;
	truncate L to 0 entries;
	repeat with x running through flags:
		sort Infections of x;
		sort BadSpots of x;
		add x to L;
	say "[line break][bold type]Flags:[roman type][line break]";
	sort L in printed name order;
	repeat with x running through L:
		say "     [printed name of x] (infections): [if Infections of x is empty]Nothing[else][Infections of x][end if].";
		say "     [printed name of x] (situations): [if BadSpots of x is empty]Nothing[else][BadSpots of x][end if].";
		LineBreak;
	truncate L to 0 entries;
	repeat with x running through tags:
		sort Infections of x;
		sort BadSpots of x;
		add x to L;
	say "[line break][bold type]Tags:[roman type][line break]";
	sort L in printed name order;
	repeat with x running through L:
		say "     [printed name of x] (infections): [if Infections of x is empty]Nothing[else][Infections of x][end if].";
		say "     [printed name of x] (situations): [if BadSpots of x is empty]Nothing[else][BadSpots of x][end if].";
		LineBreak;

EndingTableReadout is an action applying to nothing.

understand "zEndingTableReadout" as EndingTableReadout.

check EndingTableReadout:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out EndingTableReadout:
	let NameCol be "";
	let TypeCol be "";
	let SubTypeCol be "";
	let EndingCol be "";
	let PriorityCol be "";
	let TriggeredCol be "";
	let RowNumberCol be "";
	say "[fixed letter spacing]";
	say "row  | Name                                 | Type                 | Subtype      | Ending                                  | Priority | Triggered[line break]";
	say "     | (text)                               | (text)               | (text)       | (rule)                                  | (number) | (truth state)[line break]";
	say "-----|--------------------------------------|----------------------|--------------|-----------------------------------------|----------|--------------[line break]";
	sort the Table of GameEndings in Priority order;
	repeat with N running from 1 to the number of rows in the Table of GameEndings:
		choose row N in the Table of GameEndings;
		if there is no Name in row N of the Table of GameEndings:
			now NameCol is "--";
			now TypeCol is "--";
			now SubTypeCol is "--";
			now EndingCol is "--";
		else:
			now NameCol is "'[Name entry]'";
			now TypeCol is "'[Type entry]'";
			now SubTypeCol is "'[SubType entry]'";
			[now EndingCol is "[Ending entry]";]
			now EndingCol is "[Name entry] rule";
		now PriorityCol is "[Priority entry]";
		now TriggeredCol is "[Triggered entry]";
		now RowNumberCol is "[N]";
		say "[RowNumberCol formatted to 4 characters] | [NameCol formatted to 36 characters] | [TypeCol formatted to 20 characters] | [SubTypeCol formatted to 12 characters] | [EndingCol formatted to 39 characters] | [PriorityCol formatted to 8 characters] | [TriggeredCol][line break]";
	say "[variable letter spacing]";

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
	else if t in lower case is "vore":
		say "Vore Exclusions:[line break]";
		sort infections of VoreExclusion;
		sort infections of HardVoreExclusion;
		say "Vore: [infections of VoreExclusion][line break][line break]Hard Vore: [infections of HardVoreExclusion][line break]";
		say "End of list of Vore Exclusions.";
		stop the action;
	else:
		say "nothing to list, try again.";

Chapter 3 - Forced Commands

Section 1 - Player Focused Commands

TestMode is an action applying to nothing.
TestingActive is a truth state that varies.[@Tag:NotSaved]
understand "iwannatest" as TestMode.

check TestMode:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;
	if TestingActive is true, say "You're already in testing mode." instead;

carry out TestMode:
	add "Automatic Survival" to feats of Player;
	add "Bestial Power" to feats of Player;
	add "Black Belt" to feats of Player;
	add "Breeding True" to feats of Player;
	add "City Map" to feats of Player;
	say "[BestowCityMapFeat]";
	add "Curious" to feats of Player;
	add "Dazzle" to feats of Player;
	add "Dominant" to feats of Player;
	add "Experienced Scout" to feats of Player;
	add "Expert Hunter" to feats of Player;
	add "Expert Medic" to feats of Player;
	add "Fast Learner" to feats of Player;
	add "Fertile" to feats of Player;
	add "Flash" to feats of Player;
	add "Good Teacher" to feats of Player;
	add "Haggler" to feats of Player;
	add "Hardy" to feats of Player;
	add "Horny Bastard" to feats of Player;
	add "Litter Bearer" to feats of Player;
	add "Martial Artist" to feats of Player;
	add "Master Baiter" to feats of Player;
	add "Maternal" to feats of Player;
	add "Mayhem" to feats of Player;
	add "Mighty Mutation" to feats of Player;
	add "More Time" to feats of Player;
	add "MPreg" to feats of Player;
	add "Mugger" to feats of Player;
	add "Natural Armaments" to feats of Player;
	add "Passing Grade Chest" to feats of Player;
	add "Perky" to feats of Player;
	add "Regeneration" to feats of Player;
	add "Ringmaster" to feats of Player;
	add "Roughing It" to feats of Player;
	add "Selective Mother" to feats of Player;
	add "Spartan Diet" to feats of Player;
	add "Spirited Youth" to feats of Player;
	add "Stealthy" to feats of Player;
	add "Strong Back" to feats of Player;
	add "Strong Psyche" to feats of Player;
	add "Survivalist" to feats of Player;
	add "Double Team" to feats of Player;
	add "Toughened" to feats of Player;
	add "Unerring Hunter" to feats of Player;
	add "Vampiric" to feats of Player;
	now vampiric is true;
	add "Wary Watcher" to feats of Player;
	add "Weaponsmaster" to feats of Player;
	add "Youthful Tides" to feats of Player;
	now strength of Player is 30;
	now dexterity of Player is 30;
	now stamina of Player is 30;
	now intelligence of Player is 30;
	now charisma of Player is 30;
	now perception of Player is 30;
	now level of Player is 30;
	now MaxHP of Player is 300;
	now HP of Player is 300;
	now capacity of Player is 300;
	ItemGain food by 15 silently;
	ItemGain water bottle by 15 silently;
	ItemGain medkit by 5 silently;
	ItemGain libido suppressant by 10 silently;
	ItemGain orc cum by 10 silently;
	ItemGain orc brew by 10 silently;
	ItemGain gryphon milk by 10 silently;
	ItemGain glob of goo by 5 silently;
	ItemGain honeycomb by 5 silently;
	ItemGain healing booster by 5 silently;
	ItemGain infection monitor by 1 silently;
	increase freecred by 5000;
	sort feats of Player;
	now Terminatorsleep is true;
	now TestingActive is true;

levelcheat is an action applying to nothing.

understand "zGiveLevel" as levelcheat.

check levelcheat:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out levelcheat:
	now XP of Player is (10 + (level of Player times 10));
	if "Fast Learner" is listed in feats of Player:
		decrease XP of Player by ( level of Player times 2 );
	level up;
	decrease score by Level of Player times Level of Player;

[Gives the player all pets]
PetTest is an action applying to nothing.

understand "zAllPetTest" as PetTest.

check PetTest:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out PetTest:
	repeat with x running through pets: [rebuilds the table of GameCharacters with current data]
		if x is nullpet:
			next;
		now x is tamed;
		add "Tamed" to Traits of x;

[Allows the player to change their body size without an infection. Useful for testing some scenes.]
PlayerSizeChange is an action applying to nothing.
understand "zChangesize" as PlayerSizeChange.
understand "zChange Size" as PlayerSizeChange.
understand "zSize Change" as PlayerSizeChange.
understand "zSizeChange" as PlayerSizeChange.

check PlayerSizeChange:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out PlayerSizeChange:
	LineBreak;
	say "     [bold type]What size do you want your character to be?[roman type][line break]";
	say "     [link](1)[as]1[end link] Tiny.";
	say "     [link](2)[as]2[end link] Small.";
	say "     [link](3)[as]3[end link] Average.";
	say "     [link](4)[as]4[end link] Large.";
	say "     [link](5)[as]5[end link] Huge.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 5:
		say "Choice? (1-5)> [run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4 or calcnumber is 5:
			break;
		else:
			say "Invalid choice. Pick from 1 to 5.";
	if calcnumber is 1:
		LineBreak;
		say "     Set player size to tiny.";
		now scalevalue of Player is 1;
	else if calcnumber is 2:
		LineBreak;
		say "     Set player size to small.";
		now scalevalue of Player is 2;
	else if calcnumber is 3:
		LineBreak;
		say "     Set player size to average.";
		now scalevalue of Player is 3;
	else if calcnumber is 4:
		LineBreak;
		say "     Set player size to large.";
		now scalevalue of Player is 4;
	else if calcnumber is 5:
		LineBreak;
		say "     Set player size to huge.";
		now scalevalue of Player is 5;

[Sets the size of one of cock, cunt, balls, or breasts. Useful for testing some scenes.]
SetPlayerGenitals is an action applying to one number.
understand "zSetGenitals [number]" as SetPlayerGenitals;

check SetPlayerGenitals:
	if debugactive is 0, say "You aren't currently debugging." instead;
	if number understood < 0, say "Invalid input ([number understood])." instead;

carry out SetPlayerGenitals:
	now tempnum is number understood;
	LineBreak;
	say "     [bold type]Change Genitals[roman type][line break]";
	say "     (1) [link]Change cock[as]1[end link] (length or count) using [bold type][tempnum][roman type].";
	say "     (2) [link]Change cunt[as]2[end link] (depth, diameter, or count) using [bold type][tempnum][roman type].";
	say "     (3) [link]Change balls[as]3[end link] (size only) using [bold type][tempnum][roman type].";
	say "     (4) [link]Change breasts[as]4[end link] (size or count) using [bold type][tempnum][roman type].";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)> [run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Pick from 1 to 4.";
	LineBreak;
	if calcnumber is 1:
		say "     [bold type]Changing Cock[roman type][line break]";
		say "     (1) [link]Change length[as]1[end link] from [Cock Length of Player] to [tempnum].";
		say "     (2) [link]Change count[as]2[end link] from [Cock Count of Player] to [tempnum].";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 2:
			say "Choice? (1-2)> [run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2:
				break;
			else:
				say "Invalid choice. Pick from 1 to 2.";
		LineBreak;
		if calcnumber is 1:
			if tempnum is 0:
				if Cock Count of Player > 0:
					say "Cock[smn] removed!";
					now Cock Count of Player is 0;
					now Ball Size of Player is 0;
			else if Cock Count of Player is 0:
				say "Cock added!";
				now Cock Count of Player is 1;
				now Ball Size of Player is 2;
			say "Cock length set to [tempnum].";
			now Cock Length of Player is tempnum;
		else if calcnumber is 2:
			if tempnum is 0:
				say "Cock[smn] removed!";
				now Cock Length of Player is 0;
				now Ball Size of Player is 0;
			else if Cock Count of Player is 0:
				say "Cock[if tempnum > 1]s[end if] added!";
				now Cock Length of Player is 5;
				now Ball Size of Player is 2;
			say "Cock count set to [tempnum].";
			now Cock Count of Player is tempnum;
	else if calcnumber is 2:
		say "     [bold type]Changing Cunt[roman type][line break]";
		say "     (1) [link]Change depth[as]1[end link] from [Cunt Depth of Player] to [tempnum].";
		say "     (2) [link]Change diameter[as]2[end link] from [Cunt Tightness of Player] to [tempnum].";
		say "     (3) [link]Change count[as]3[end link] from [Cunt Count of Player] to [tempnum].";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)> [run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Pick from 1 to 3.";
		LineBreak;
		if calcnumber is 1:
			if tempnum is 0:
				if Cunt Count of Player > 0:
					say "Cunt[sfn] removed!";
					now Cunt Count of Player is 0;
					now Cunt Tightness of Player is 0;
			else if Cunt Count of Player is 0:
				say "Cunt added!";
				now Cunt Count of Player is 1;
				now Cunt Tightness of Player is 4;
			say "Cunt depth set to [tempnum].";
			now Cunt Depth of Player is tempnum;
		else if calcnumber is 2:
			if tempnum is 0:
				if Cunt Count of Player > 0:
					say "Cunt[sfn] removed!";
					now Cunt Count of Player is 0;
					now Cunt Depth of Player is 0;
			else if Cunt Count of Player is 0:
				say "Cunt added!";
				now Cunt Count of Player is 1;
				now Cunt Depth of Player is 5;
			say "Cunt diameter set to [tempnum].";
			now Cunt Tightness of Player is tempnum;
		else if calcnumber is 3:
			if tempnum is 0:
				say "Cunt[sfn] removed!";
				now Cunt Depth of Player is 0;
				now Cunt Tightness of Player is 0;
			else if Cunt Count of Player is 0:
				say "Cunt[if tempnum > 1]s[end if] added!";
				now Cunt Depth of Player is 5;
				now Cunt Tightness of Player is 4;
			say "Cunt count set to [tempnum].";
			now Cunt Count of Player is tempnum;
	else if calcnumber is 3:
		if tempnum > 7:
			say "Maximum ball size is 7.";
			stop the action;
		if tempnum is 0:
			say "Cock[smn] removed!";
			now Cock Count of Player is 0;
			now Cock Length of Player is 0;
		else if Cock Count of Player is 0:
			say "Cock added!";
			now Cock Count of Player is 1;
			now Cock Length of Player is 5;
		say "Ball size set to [tempnum].";
		now Ball Size of Player is tempnum;
	else if calcnumber is 4:
		say "     [bold type]Changing Breasts[roman type][line break]";
		say "     (1) [link]Change size[as]1[end link] from [Breast Size of Player] to [tempnum].";
		say "     (2) [link]Change count[as]2[end link] from [Nipple Count of Player] to [tempnum].";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 2:
			say "Choice? (1-2)> [run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2:
				break;
			else:
				say "Invalid choice. Pick from 1 to 2.";
		LineBreak;
		if calcnumber is 1:
			if tempnum > 26:
				say "Maximum breast size is 26.";
				stop the action;
			say "Breast size set to [tempnum].";
			now Breast Size of Player is tempnum;
		else if calcnumber is 2:
			if tempnum > 8:
				say "Maximum nipple count is 8.";
				stop the action;
			say "Nipple count set to [tempnum].";
			now Nipple Count of Player is tempnum;

[Impregnates the player with specified creature.]
impregwith is an action applying to one topic.
understand "zImpreg with [text]" as impregwith.
understand "zImpreg [text]" as impregwith.

check impregwith:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out impregwith:
	repeat with X running from 1 to number of filled rows in Table of Random Critters:
		choose row X from the Table of Random Critters;
		if Name entry exactly matches the text topic understood, case insensitively:
			impregnate with Name entry;
			break;

[Infects player with any creature to test infection.]
DebugInfect is an action applying to one topic.

understand "zInfect with [text]" as DebugInfect.
understand "zInfect [text]" as DebugInfect.
understand "DebugInfect [text]" as DebugInfect.

check DebugInfect:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out DebugInfect:
	say "Infecting with [topic understood]:[line break]";
	infect topic understood;

Section 2 - Feats

RemoveFeat is an action applying to one topic.

understand "RemoveFeat [text]" as RemoveFeat.

check RemoveFeat:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out RemoveFeat:
	if topic understood is listed in feats of Player:
		remove topic understood from feats of Player;
	else:
		say "[topic understood] is not in Feats of Player!";

[Allows the player to add or remove the "Kinky" feat without leveling. Useful for testing some scenes.]
AddRemoveKinky is an action applying to nothing.
understand "add kinky" as AddRemoveKinky.
understand "remove kinky" as AddRemoveKinky.

check AddRemoveKinky:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out AddRemoveKinky:
	if Player is kinky:
		say "DEBUG: Kinky removed.";
		remove "Kinky" from feats of Player;
	else:
		say "DEBUG: Kinky added.";
		add "Kinky" to feats of Player;


SubDomFlip is an action applying to nothing.
understand "flip janus coin" as SubDomFlip.
understand "flip sub dom" as SubDomFlip.
understand "flip subdom" as SubDomFlip.

check SubDomFlip:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out SubDomFlip:
	say "     Summoning a magic coin with the two-faced god Janus on its sides, you look at it for a second, then throw the shiny coin into the air. After watching it turn end over end, ";
	if Player is submissive:
		say "you catch it in your hand and smack that on the back of the other one.";
		say "     Lifting your upper hand after that, you see the coin resting on your skin, displaying the strong and determined face of its design. Then the piece of metal suddenly feels hot for a moment, not quite enough to burn you, but almost so. Flowing into you, the energy changes your whole outlook of the world!";
		remove "Submissive" from feats of Player;
		add "Dominant" to feats of Player;
	else if Player is dominant:
		say "you catch it in your hand and smack that on the back of the other one.";
		say "     Lifting your upper hand after that, you see the coin resting on your skin, displaying the timid and shy face of its design. Then the piece of metal suddenly feels hot for a moment, not quite enough to burn you, but almost so. Flowing into you, the energy changes your whole outlook of the world!";
		remove "Dominant" from feats of Player;
		add "Submissive" to feats of Player;
	else:
		say "you catch - no, try to catch it in your hand.";
		say "     Somehow it slips through your fingers, bouncing off the ground and rolling around a little, until it comes to a sudden standstill. And that is how it remains, just standing on its side, falling over in neither direction. As you pick the little disc of metal off the ground, it is strangely cold between your fingers for a second. Almost seems like it's giving you the cold shoulder since you fit neither of its different faces.";


Section 3 - World Manipulation

Spawnmonster is an action applying to one topic.

understand "zSpawn [text]" as spawnmonster.

check spawnmonster:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out spawnmonster:
	repeat with X running from 1 to number of filled rows in Table of Random Critters:
		choose row X from the Table of Random Critters;
		if Name entry exactly matches the text topic understood, case insensitively:
			now MonsterID is X;
			now monsterHP is HP entry;
			challenge;
			break;


unresolvecheat is an action applying to one topic.

understand "zUnresolve [text]" as unresolvecheat.

check unresolvecheat:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out unresolvecheat:
	repeat with X running from 1 to number of filled rows in Table of GameEventIDs:
		choose row X from the Table of GameEventIDs;
		if Name entry exactly matches the text topic understood, case insensitively:
			now Object entry is unresolved;
			now Resolution of Object entry is 0;
			break;

activatecheat is an action applying to one topic.

understand "zActivate [text]" as activatecheat.

check activatecheat:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out activatecheat:
	repeat with X running from 1 to number of filled rows in Table of GameEventIDs:
		choose row X from the Table of GameEventIDs;
		if Name entry exactly matches the text topic understood, case insensitively:
			now Object entry is active;
			break;


[Allows the spawning of any item in game.]
itemcheat is an action applying to one topic.
understand "zItem [text]" as itemcheat.

check itemcheat:
	if debugactive is 0, say "You aren't currently debugging!" instead;

carry out itemcheat:
	repeat with x running through grab objects:
		if the printed name of x exactly matches the text topic understood, case insensitively:
			ItemGain x by 1;
			break;

[Allows the spawning of any vial in game.]
vialcheat is an action applying to one topic.
understand "zVial [text]" as vialcheat.

check vialcheat:
	if debugactive is 0, say "You aren't currently debugging!" instead;

carry out vialcheat:
	let vial be topic understood;
	let vialname be vial in title case;
	VialGain vialname by 10;

allitemcheat is an action applying to nothing.
understand "zAllItems" as allitemcheat.

check allitemcheat:
	if debugactive is 0, say "You aren't currently debugging!" instead;

carry out allitemcheat:
	say "     You gain one of everything that isn't cum or milk!";
	repeat with x running through grab objects:
		if x is not cum and x is not milky:
			ItemGain x by 1 silently;

allmilkcheat is an action applying to nothing.
understand "zAllMilk" as allmilkcheat.

check allmilkcheat:
	if debugactive is 0, say "You aren't currently debugging!" instead;

carry out allmilkcheat:
	say "     You gain one of all milk items!";
	repeat with x running through milky grab objects:
		ItemGain x by 1 silently;

allcumcheat is an action applying to nothing.
understand "zAllCum" as allcumcheat.

check allcumcheat:
	if debugactive is 0, say "You aren't currently debugging!" instead;

carry out allcumcheat:
	say "     You gain one of all cum items!";
	repeat with x running through cum grab objects:
		ItemGain x by 1 silently;

ListAllItems is an action applying to nothing.
understand "zListAllItems" as ListAllItems.

check ListAllItems:
	if debugactive is 0, say "You aren't currently debugging!" instead;

carry out ListAllItems:
	repeat with x running from 1 to number of filled rows in table of game objects:
		choose row x from the table of game objects;
		if object entry is not cum and object entry is not milky:
			say "[Name entry]: [desc entry][line break]";

RoomEmptying is an action applying to nothing.
understand "zNukeRoomInvents" as RoomEmptying.

check RoomEmptying:
	if debugactive is 0, say "You aren't currently debugging!" instead;

carry out RoomEmptying:
	repeat with x running through rooms:
		truncate Invent of x to 0 entries; [cleaning out the old data]


Chapter 4 - Experimental Stuff

Testaction1 is an action applying to nothing.
understand "Testaction1" as Testaction1.

carry out Testaction1:
	say "Master Cap: [Master].";
	say "master noncap: [master]";


Debugging Tools ends here.
