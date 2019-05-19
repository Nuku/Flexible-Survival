Version 2 of Debugging Tools by Core Mechanics begins here.
[Version 1 - By Wahn, moved to Core Mechanics]
[Version 2 - By Dys, adds more functions, changes npcdebugmode to debugmode]
"Adds a debug function for NPCs to the Flexible Survival game"

[ Activating the debug mode show the NPC's variables in their description and show when a walk-in event fires]
[ Either turn it on and off here by setting the variable, or use the "npcdebug" command in the game ]

[ debugactive 0 = Debug off]
[ debugactive 1 = Debug on]

debugactive is a number that varies.[@Tag:NotSaved] debugactive is 0.
RandomGenNumber is a number that varies.[@Tag:NotSaved]

[ Todo: write Debug code to display _all_ NPC variables]

debugmode is an action applying to nothing.
understand "npcdebug" as debugmode.
understand "npc debug" as debugmode.
understand "debug npcs" as debugmode.
understand "debugnpcs" as debugmode.
understand "debug" as debugmode.

carry out debugmode:
	if debugactive is 0:
		say "NPC DEBUG MODE ACTIVATED.";
		if "Debugger" is not listed in Traits of Player:
			add "Debugger" to Traits of Player;
		now debugactive is 1;
	else:
		say "NPC DEBUG MODE DISABLED.";
		if "Debugger" is listed in Traits of Player:
			remove "Debugger" from Traits of Player;
		now debugactive is 0;

turncountdisplay is an action applying to nothing.
understand "turn count" as turncountdisplay.
understand "turncount" as turncountdisplay.
understand "current turn" as turncountdisplay.
understand "currentturn" as turncountdisplay.

carry out turncountdisplay:
	say "DEBUG: CURRENT TURN IS [turns]";

TestMode is an action applying to nothing.
TestingActive is a truth state that varies.[@Tag:NotSaved]
understand "iwannatest" as TestMode.

check TestMode:
	if TestingActive is true, say "You're already in testing mode." instead;

carry out TestMode:
	add "Automatic Survival" to feats of Player;
	add "Bestial Power" to feats of Player;
	add "Black Belt" to feats of Player;
	add "Breeding True" to feats of Player;
	add "City Map" to feats of Player;
	say "[bestowcitymapfeat]";
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
	add "The Horde" to feats of Player;
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
	increase carried of food by 15;
	increase carried of water bottle by 15;
	increase carried of medkit by 5;
	increase carried of libido suppressant by 10;
	increase carried of orc cum by 10;
	increase carried of orc brew by 10;
	increase carried of gryphon milk by 10;
	increase carried of glob of goo by 5;
	increase carried of honeycomb by 5;
	increase carried of healing booster by 5;
	increase carried of infection monitor by 1;
	increase freecred by 5000;
	sort feats of Player;
	now Terminatorsleep is true;
	now TestingActive is true;

SubDomFlip is an action applying to nothing.
understand "flip janus coin" as SubDomFlip.
understand "flip sub dom" as SubDomFlip.
understand "flip subdom" as SubDomFlip.

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

PregStatus is an action applying to nothing.
understand "preg status" as PregStatus.
understand "pregstatus" as PregStatus.

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
	if Player is male_vacant:
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

[Allows the player to change their body size without an infection. Useful for testing some scenes.]
PlayerSizeChange is an action applying to nothing.
understand "changesize" as PlayerSizeChange.
understand "change size" as PlayerSizeChange.
understand "size change" as PlayerSizeChange.

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

[Allows the spawning of any item in game.]
itemcheat is an action applying to one topic.
understand "itemcheat [text]" as itemcheat.

check itemcheat:
	if debugactive is 0, say "You aren't currently debugging!" instead;

carry out itemcheat:
	repeat with x running through grab objects:
		if the printed name of x exactly matches the text topic understood, case insensitively:
			increase carried of x by 1;
			break;

allitemcheat is an action applying to nothing.
understand "allitemcheat" as allitemcheat.

check allitemcheat:
	if debugactive is 0, say "You aren't currently debugging!" instead;

carry out itemcheat:
	repeat with x running through grab objects:
		increase carried of x by 1;

ListAllItems is an action applying to nothing.
understand "ListAllItems" as ListAllItems.

check ListAllItems:
	if debugactive is 0, say "You aren't currently debugging!" instead;

carry out ListAllItems:
	repeat with x running from 1 to number of filled rows in table of game objects:
		choose row x from the table of game objects;
		say "[Name entry]: [desc entry][line break]";

[Impregnates the player with specified creature.]
impregwith is an action applying to one topic.
understand "impreg with [text]" as impregwith.

check impregwith:
	if debugactive is 0, say "You aren't currently debugging." instead;

carry out impregwith:
	repeat with X running from 1 to number of filled rows in Table of Random Critters:
		choose row X from the Table of Random Critters;
		if Name entry exactly matches the text topic understood, case insensitively:
			impregnate with Name entry;
			break;

[Infects player with any creature to test infection.]
infectwith is an action applying to one topic.
understand "infect with [text]" as infectwith.

check infectwith:
	if debugactive is 0, say "You aren't currently debugging.";

carry out infectwith:
	repeat with X running from 1 to number of filled rows in Table of Random Critters:
		choose row X from the Table of Random Critters;
		if Name entry exactly matches the text topic understood, case insensitively:
			infect Name entry;
			break;

[Allows the player to add or remove the "Kinky" feat without leveling. Useful for testing some scenes.]
AddRemoveKinky is an action applying to nothing.
understand "add kinky" as AddRemoveKinky.
understand "remove kinky" as AddRemoveKinky.

carry out AddRemoveKinky:
	if Player is kinky:
		say "DEBUG: Kinky removed.";
		remove "Kinky" from feats of Player;
	else:
		say "DEBUG: Kinky added.";
		add "Kinky" to feats of Player;


ShowEncounteredEnemies is an action applying to nothing.

understand "ShowEncounteredEnemies" as ShowEncounteredEnemies.

carry out ShowEncounteredEnemies:
	EncounteredEnemiesList;

to EncounteredEnemiesList:
	sort EncounteredEnemies of Player;
	say "Thinking back to your misadventures in the city so far, you call into memory all the creatures you have encountered and fought:[line break]";
	say "[EncounteredEnemies of Player]";

InfectionOverview is an action applying to nothing.

understand "infectionoverview" as InfectionOverview.

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

DebugCritterRow is an action applying to one topic.

understand "DebugCritterRow [text]" as DebugCritterRow.

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
	if debugactive is 0, say "You aren't currently debugging.";

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
	if Prereq2 of X is not nothing:
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


RoomEmptying is an action applying to nothing.
understand "NukeRoomInvents" as RoomEmptying.

carry out RoomEmptying:
	repeat with x running through rooms:
		truncate Invent of x to 0 entries; [cleaning out the old data]


RemoveFeat is an action applying to one topic.

understand "RemoveFeat [text]" as RemoveFeat.

check RemoveFeat:
	if debugactive is 0, say "You aren't currently debugging.";

carry out RemoveFeat:
	if topic understood is listed in feats of Player:
		remove topic understood from feats of Player;
	else:
		say "[topic understood] is not in Feats of Player!";

Debugging Tools ends here.
