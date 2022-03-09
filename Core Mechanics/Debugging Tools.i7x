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

PregStatus is an action applying to nothing.
understand "zPreg Status" as PregStatus.
understand "zPregStatus" as PregStatus.

check PregStatus:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out PregStatus:
	say "     DEBUG: You summon up a magic mirror and look into it:[line break]";
	say "impreg_ok: ";
	if Player is impreg_ok:
		say "+";
	else:
		say "-";
	say "[line break]impreg_able: ";
	if Player is impreg_able:
		say "+";
	else:
		say "-";
	say "[line break]impreg_now: ";
	if Player is impreg_now:
		say "+";
	else:
		say "-";
	say "[line break]partial_vacant: ";
	if Player is partial_vacant:
		say "+";
	else:
		say "-";
	say "[line break]total_vacant: ";
	if Player is total_vacant:
		say "+";
	else:
		say "-";
	LineBreak;
	say "[line break]fpreg_ok: ";
	if Player is fpreg_ok:
		say "+";
	else:
		say "-";
	say "[line break]fpreg_able: ";
	if Player is fpreg_able:
		say "+";
	else:
		say "-";
	say "[line break]fpreg_now: ";
	if Player is fpreg_now:
		say "+";
	else:
		say "-";
	say "[line break]female_vacant: ";
	if Player is fem_vacant:
		say "+";
	else:
		say "-";
	LineBreak;
	say "[line break]mpreg_ok: ";
	if Player is mpreg_ok:
		say "+";
	else:
		say "-";
	say "[line break]mpreg_able: ";
	if Player is mpreg_able:
		say "+";
	else:
		say "-";
	say "[line break]mpreg_now: ";
	if Player is mpreg_now:
		say "+";
	else:
		say "-";
	say "[line break]male_vacant: ";
	if Player is male_vacant:
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
	say "[EncounteredEnemies of Player]";

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
			now cocktext is "have [Cock Count of Player] [cock size desc of Player] [Cock Length of Player]-inch-long [Cock of Player] [one of]cocks[or]penises[or]shafts[or]manhoods[at random]. They are [if Libido of Player <= 25]only somewhat aroused at the moment[else if Libido of Player <= 50]partially hard and dribbling a little pre[else if Libido of Player <= 75]erect and leaking precum[else]fully erect and drooling precum steadily[end if]. [if Player is internal]Though they are not outwardly apparent, you wager you have[else]Underneath them hangs[end if] [one of]a pair of[or]a set of[at random] [Ball Size Adjective of Player] [Balls].";
		else:
			now cocktext is "have a [cock size desc of Player] [Cock Length of Player]-inch-long [Cock of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random]. It is [if Libido of Player <= 25]only somewhat aroused at the moment[else if Libido of Player <= 50]partially hard and dribbling a little pre[else if Libido of Player <= 75]erect and leaking precum[else]fully erect and drooling precum steadily[end if]. [if Player is internal]Though they are not outwardly apparent, you wager you have[else]Underneath it hangs[end if] [one of]a pair of[or]a set of[at random] [Ball Size Adjective of Player] [Balls].";
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


TagListReadout is an action applying to one topic.

understand "zTagListReadout" as TagListReadout.

check TagListReadout:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out TagListReadout:
	say "All current lists:";
	LineBreak;
	sort Infections of AquaticList;
	sort Infections of ArachnidList;
	sort Infections of AvianList;
	sort Infections of AvianpredList;
	sort Infections of Bovinelist;
	sort Infections of CanineList;
	sort Infections of CervineList;
	sort Infections of CetaceanList;
	sort Infections of EquineList;
	sort Infections of FelineList;
	sort Infections of FoodList;
	sort Infections of HumanList;
	sort Infections of HybridList;
	sort Infections of InsectList;
	sort Infections of LatexList;
	sort Infections of LeporineList;
	sort Infections of MachineList;
	sort Infections of MarsupialList;
	sort Infections of MustelidList;
	sort Infections of NonOrganicList;
	sort Infections of OrcList;
	sort Infections of PiscineList;
	sort Infections of PlantList;
	sort Infections of PorcineList;
	sort Infections of PrimateList;
	sort Infections of ReptileList;
	sort Infections of RodentList;
	sort Infections of SlimeList;
	sort Infections of ToyList;
	sort Infections of UrsineList;
	sort Infections of VulpineList;
	sort Infections of HistoricalList;
	sort Infections of MagicalList;
	sort Infections of MythologicalList;
	sort Infections of NatureList;
	sort Infections of OtherworldlyList;
	sort Infections of ScienceList;
	sort Infections of BarbedCockList;
	sort Infections of BluntCockList;
	sort Infections of InternalCockList;
	sort Infections of KnottedCockList;
	sort Infections of OviPositorList;
	sort Infections of PrehensileCocklist;
	sort Infections of SheathedCockList;
	sort Infections of TaperedCockList;
	sort Infections of TentacleCockList;
	sort Infections of TailList;
	sort Infections of BipedalList;
	sort Infections of QuadrupedalList;
	sort Infections of HexapedalList;
	sort Infections of OctapedalList;
	sort Infections of TaurList;
	sort Infections of SerpentineList;
	sort Infections of SlidingList;
	sort Infections of FlightList;
	sort Infections of SwimList;
	sort Infections of AlwaysLacList;
	sort Infections of HeatList;
	sort Infections of AlwaysHeatList;
	sort Infections of RutList;
	sort Infections of AlwaysRutList;
	sort Infections of GillList;
	sort Infections of NotBreathingList;
	sort Infections of Birthlist;
	sort Infections of Egglaylist;
	sort Infections of MpregList;
	sort Infections of OviImpregnatorList;
	sort Infections of Sterilelist;
	sort Infections of FeralmindList;
	sort Infections of HivemindList;
	sort Infections of PackmindList;
	sort Infections of FirebreathList;
	sort Infections of TailweaponList;
	say "AquaticList: [Infections of AquaticList][line break][line break]";
	say "ArachnidList: [Infections of ArachnidList][line break][line break]";
	say "AvianList: [Infections of AvianList][line break][line break]";
	say "AvianpredList: [Infections of AvianpredList][line break][line break]";
	say "Bovinelist: [Infections of Bovinelist][line break][line break]";
	say "CanineList: [Infections of CanineList][line break][line break]";
	say "CervineList: [Infections of CervineList][line break][line break]";
	say "CetaceanList: [Infections of CetaceanList][line break][line break]";
	say "EquineList: [Infections of EquineList][line break][line break]";
	say "FelineList: [Infections of FelineList][line break][line break]";
	say "FoodList: [Infections of FoodList][line break][line break]";
	say "HumanList: [Infections of HumanList][line break][line break]";
	say "HybridList: [Infections of HybridList][line break][line break]";
	say "InsectList: [Infections of InsectList][line break][line break]";
	say "LatexList: [Infections of LatexList][line break][line break]";
	say "LeporineList: [Infections of LeporineList][line break][line break]";
	say "MachineList: [Infections of MachineList][line break][line break]";
	say "MarsupialList: [Infections of MarsupialList][line break][line break]";
	say "MustelidList: [Infections of MustelidList][line break][line break]";
	say "NonOrganicList: [Infections of NonOrganicList][line break][line break]";
	say "OrcList: [Infections of OrcList][line break][line break]";
	say "PiscineList: [Infections of PiscineList][line break][line break]";
	say "PlantList: [Infections of PlantList][line break][line break]";
	say "PorcineList: [Infections of PorcineList][line break][line break]";
	say "PrimateList: [Infections of PrimateList][line break][line break]";
	say "ReptileList: [Infections of ReptileList][line break][line break]";
	say "RodentList: [Infections of RodentList][line break][line break]";
	say "SlimeList: [Infections of SlimeList][line break][line break]";
	say "ToyList: [Infections of ToyList][line break][line break]";
	say "UrsineList: [Infections of UrsineList][line break][line break]";
	say "VulpineList: [Infections of VulpineList][line break][line break]";
	say "HistoricalList: [Infections of HistoricalList][line break][line break]";
	say "MagicalList: [Infections of MagicalList][line break][line break]";
	say "MythologicalList: [Infections of MythologicalList][line break][line break]";
	say "NatureList: [Infections of NatureList][line break][line break]";
	say "OtherworldlyList: [Infections of OtherworldlyList][line break][line break]";
	say "ScienceList: [Infections of ScienceList][line break][line break]";
	say "BarbedCockList: [Infections of BarbedCockList][line break][line break]";
	say "BluntCockList: [Infections of BluntCockList][line break][line break]";
	say "InternalCockList: [Infections of InternalCockList][line break][line break]";
	say "KnottedCockList: [Infections of KnottedCockList][line break][line break]";
	say "OviPositorList: [Infections of OviPositorList][line break][line break]";
	say "PrehensileCocklist: [Infections of PrehensileCocklist][line break][line break]";
	say "SheathedCockList: [Infections of SheathedCockList][line break][line break]";
	say "TaperedCockList: [Infections of TaperedCockList][line break][line break]";
	say "TentacleCockList: [Infections of TentacleCockList][line break][line break]";
	say "TailList: [Infections of TailList][line break][line break]";
	say "BipedalList: [Infections of BipedalList][line break][line break]";
	say "QuadrupedalList: [Infections of QuadrupedalList][line break][line break]";
	say "HexapedalList: [Infections of HexapedalList][line break][line break]";
	say "OctapedalList: [Infections of OctapedalList][line break][line break]";
	say "TaurList: [Infections of TaurList][line break][line break]";
	say "SerpentineList: [Infections of SerpentineList][line break][line break]";
	say "SlidingList: [Infections of SlidingList][line break][line break]";
	say "FlightList: [Infections of FlightList][line break][line break]";
	say "SwimList: [Infections of SwimList][line break][line break]";
	say "AlwaysLacList: [Infections of AlwaysLacList][line break][line break]";
	say "HeatList: [Infections of HeatList][line break][line break]";
	say "AlwaysHeatList: [Infections of AlwaysHeatList][line break][line break]";
	say "RutList: [Infections of RutList][line break][line break]";
	say "AlwaysRutList: [Infections of AlwaysRutList][line break][line break]";
	say "GillList: [Infections of GillList][line break][line break]";
	say "NotBreathingList: [Infections of NotBreathingList][line break][line break]";
	say "Birthlist: [Infections of Birthlist][line break][line break]";
	say "Egglaylist: [Infections of Egglaylist][line break][line break]";
	say "MpregList: [Infections of MpregList][line break][line break]";
	say "OviImpregnatorList: [Infections of OviImpregnatorList][line break][line break]";
	say "Sterilelist: [Infections of Sterilelist][line break][line break]";
	say "FeralmindList: [Infections of FeralmindList][line break][line break]";
	say "HivemindList: [Infections of HivemindList][line break][line break]";
	say "PackmindList: [Infections of PackmindList][line break][line break]";
	say "FirebreathList: [Infections of FirebreathList][line break][line break]";
	say "TailweaponList: [Infections of TailweaponList][line break][line break]";

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
	now maxHP of Player is 300;
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
		say "Choice? (1-5)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4 or calcnumber is 5:
			break;
		else:
			say "Invalid choice.";
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
	infect "[topic understood]";

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

allitemcheat is an action applying to nothing.
understand "zAllItems" as allitemcheat.

check allitemcheat:
	if debugactive is 0, say "You aren't currently debugging!" instead;

carry out allitemcheat:
	say "     You gain one of everything!";
	repeat with x running through grab objects:
		ItemGain x by 1 silently;

ListAllItems is an action applying to nothing.
understand "zListAllItems" as ListAllItems.

check ListAllItems:
	if debugactive is 0, say "You aren't currently debugging!" instead;

carry out ListAllItems:
	repeat with x running from 1 to number of filled rows in table of game objects:
		choose row x from the table of game objects;
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
