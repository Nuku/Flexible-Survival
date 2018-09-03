Version 2 of Debugging Tools by Core Mechanics begins here.
[Version 1 - By Wahn, moved to Core Mechanics]
[Version 2 - By Dys, adds more functions, changes npcdebugmode to debugmode]
"Adds a debug function for npcs to the Flexible Survival game"

[ Activating the debug mode show the npc's variables in their description and show when a walk-in event fires]
[ Either turn it on and off here by setting the variable, or use the "npcdebug" command in the game ]

[ debugactive 0 = Debug off]
[ debugactive 1 = Debug on]

debugactive is a number that varies.[@Tag:NotSaved] debugactive is 0.
RandomGenNumber is a number that varies.[@Tag:NotSaved]

debugmode is an action applying to nothing.
understand "npcdebug" as debugmode.
understand "npc debug" as debugmode.
understand "debug npcs" as debugmode.
understand "debugnpcs" as debugmode.
understand "debug" as debugmode.

carry out debugmode:
	if debugactive is 0:
		say "NPC DEBUG MODE ACTIVATED.";
		if "Debugger" is not listed in Traits of player:
			add "Debugger" to Traits of player;
		now debugactive is 1;
	else:
		say "NPC DEBUG MODE DISABLED.";
		if "Debugger" is listed in Traits of player:
			remove "Debugger" from Traits of player;
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
	add "Automatic Survival" to feats of player;
	add "Bestial Power" to feats of player;
	add "Black Belt" to feats of player;
	add "Breeding True" to feats of player;
	add "City Map" to feats of player;
	say "[bestowcitymapfeat]";
	add "Curious" to feats of player;
	add "Dazzle" to feats of player;
	add "Dominant" to feats of player;
	add "Experienced Scout" to feats of player;
	add "Expert Hunter" to feats of player;
	add "Expert Medic" to feats of player;
	add "Fast Learner" to feats of player;
	add "Fertile" to feats of player;
	add "Flash" to feats of player;
	add "Good Teacher" to feats of player;
	add "Haggler" to feats of player;
	add "Hardy" to feats of player;
	add "Horny Bastard" to feats of player;
	add "Litter Bearer" to feats of player;
	add "Martial Artist" to feats of player;
	add "Master Baiter" to feats of player;
	add "Maternal" to feats of player;
	add "Mayhem" to feats of player;
	add "Mighty Mutation" to feats of player;
	add "More Time" to feats of player;
	add "MPreg" to feats of player;
	add "Mugger" to feats of player;
	add "Natural Armaments" to feats of player;
	add "Passing Grade Chest" to feats of player;
	add "Perky" to feats of player;
	add "Regeneration" to feats of player;
	add "Ringmaster" to feats of player;
	add "Roughing It" to feats of player;
	add "Selective Mother" to feats of player;
	add "Spartan Diet" to feats of player;
	add "Spirited Youth" to feats of player;
	add "Stealthy" to feats of player;
	add "Strong Back" to feats of player;
	add "Strong Psyche" to feats of player;
	add "Survivalist" to feats of player;
	add "The Horde" to feats of player;
	add "Toughened" to feats of player;
	add "Unerring Hunter" to feats of player;
	add "Vampiric" to feats of player;
	now vampiric is true;
	add "Wary Watcher" to feats of player;
	add "Weaponsmaster" to feats of player;
	add "Youthful Tides" to feats of player;
	now strength of player is 30;
	now dexterity of player is 30;
	now stamina of player is 30;
	now intelligence of player is 30;
	now charisma of player is 30;
	now perception of player is 30;
	now level of player is 30;
	now maxHP of player is 300;
	now HP of player is 300;
	now capacity of player is 300;
	increase carried of food by 15;
	increase carried of water bottle by 15;
	increase carried of medkit by 5;
	increase carried of libido suppressant by 10;
	increase carried of gryphon milk by 5;
	increase carried of glob of goo by 5;
	increase carried of honeycomb by 5;
	increase carried of healing booster by 5;
	sort feats of player;
	now TestingActive is true;

SubDomFlip is an action applying to nothing.
understand "flip janus coin" as SubDomFlip.
understand "flip sub dom" as SubDomFlip.
understand "flip subdom" as SubDomFlip.

carry out SubDomFlip:
	say "     Summoning a magic coin with the two-faced god Janus on its sides, you look at it for a second, then throw the shiny coin into the air. After watching it turn end over end, ";
	if player is submissive:
		say "you catch it in your hand and smack that on the back of the other one.";
		say "     Lifting your upper hand after that, you see the coin resting on your skin, displaying the strong and determined face of its design. Then the piece of metal suddenly feels hot for a moment, not quite enough to burn you, but almost so. Flowing into you, the energy changes your whole outlook of the world!";
		remove "Submissive" from feats of player;
		add "Dominant" to feats of player;
	else if player is dominant:
		say "you catch it in your hand and smack that on the back of the other one.";
		say "     Lifting your upper hand after that, you see the coin resting on your skin, displaying the timid and shy face of its design. Then the piece of metal suddenly feels hot for a moment, not quite enough to burn you, but almost so. Flowing into you, the energy changes your whole outlook of the world!";
		remove "Dominant" from feats of player;
		add "Submissive" to feats of player;
	else:
		say "you catch - no, try to catch it in your hand.";
		say "     Somehow it slips through your fingers, bouncing off the ground and rolling around a little, until it comes to a sudden standstill. And that is how it remains, just standing on its side, falling over in neither direction. As you pick the little disc of metal off the ground, it is strangely cold between your fingers for a second. Almost seems like it's giving you the cold shoulder since you fit neither of its different faces.";

PregStatus is an action applying to nothing.
understand "preg status" as PregStatus.
understand "pregstatus" as PregStatus.

carry out PregStatus:
	say "     DEBUG: You summon up a magic mirror and look into it:[line break]";
	say "impreg_ok: ";
	if player is impreg_ok:
		say "+";
	else:
		say "-";
	say "[line break]impreg_able: ";
	if player is impreg_able:
		say "+";
	else:
		say "-";
	say "[line break]impreg_now: ";
	if player is impreg_now:
		say "+";
	else:
		say "-";
	say "[line break]partial_vacant: ";
	if player is partial_vacant:
		say "+";
	else:
		say "-";
	say "[line break]total_vacant: ";
	if player is total_vacant:
		say "+";
	else:
		say "-";
	LineBreak;
	say "[line break]fpreg_ok: ";
	if player is fpreg_ok:
		say "+";
	else:
		say "-";
	say "[line break]fpreg_able: ";
	if player is fpreg_able:
		say "+";
	else:
		say "-";
	say "[line break]fpreg_now: ";
	if player is fpreg_now:
		say "+";
	else:
		say "-";
	say "[line break]female_vacant: ";
	if player is male_vacant:
		say "+";
	else:
		say "-";
	LineBreak;
	say "[line break]mpreg_ok: ";
	if player is mpreg_ok:
		say "+";
	else:
		say "-";
	say "[line break]mpreg_able: ";
	if player is mpreg_able:
		say "+";
	else:
		say "-";
	say "[line break]mpreg_now: ";
	if player is mpreg_now:
		say "+";
	else:
		say "-";
	say "[line break]male_vacant: ";
	if player is male_vacant:
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
		now scalevalue of player is 1;
	else if calcnumber is 2:
		LineBreak;
		say "     Set player size to small.";
		now scalevalue of player is 2;
	else if calcnumber is 3:
		LineBreak;
		say "     Set player size to average.";
		now scalevalue of player is 3;
	else if calcnumber is 4:
		LineBreak;
		say "     Set player size to large.";
		now scalevalue of player is 4;
	else if calcnumber is 5:
		LineBreak;
		say "     Set player size to huge.";
		now scalevalue of player is 5;

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
		say "[name entry]: [desc entry][line break]";

[Impregnates the player with specified creature.]
impregwith is an action applying to one topic.
understand "impreg with [text]" as impregwith.

check impregwith:
	if debugactive is 0, say "You aren't currently debugging." instead;

carry out impregwith:
	repeat with X running from 1 to number of filled rows in Table of Random Critters:
		choose row X from the Table of Random Critters;
		if name entry exactly matches the text topic understood, case insensitively:
			impregnate with name entry;
			break;

[Infects player with any creature to test infection.]
infectwith is an action applying to one topic.
understand "infect with [text]" as infectwith.

check infectwith:
	if debugactive is 0, say "You aren't currently debugging.";

carry out infectwith:
	repeat with X running from 1 to number of filled rows in Table of Random Critters:
		choose row X from the Table of Random Critters;
		if name entry exactly matches the text topic understood, case insensitively:
			infect name entry;
			break;

[Allows the player to add or remove the "Kinky" feat without leveling. Useful for testing some scenes.]
AddRemoveKinky is an action applying to nothing.
understand "add kinky" as AddRemoveKinky.
understand "remove kinky" as AddRemoveKinky.

carry out AddRemoveKinky:
	if player is kinky:
		say "DEBUG: Kinky removed.";
		remove "Kinky" from feats of player;
	else:
		say "DEBUG: Kinky added.";
		add "Kinky" to feats of player;


ShowEncounteredEnemies is an action applying to nothing.

understand "ShowEncounteredEnemies" as ShowEncounteredEnemies.

carry out ShowEncounteredEnemies:
	sort EncounteredEnemies of player;
	say "     DEBUG: Enemies that the player encountered so far: [EncounteredEnemies of player]";
	say "     DEBUG:";
	let RandomCreature be a random number from 1 to number of entries in EncounteredEnemies of player;
	say " thoughts. You are almost entirely subsumed with a random thought of [one of]fucking[or]being fucked by[at random] a [entry RandomCreature of EncounteredEnemies of player in lower case] [one of]wildly[or]slowly[or]for hours[or]forever[or]until you pass out[at random], the daydream distracting you for half an hour.";

InfectionOverview is an action applying to nothing.

understand "infectionoverview" as InfectionOverview.

carry out InfectionOverview:
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		now cocks of player is 1;
		now cunts of player is 1;
		now cock length of player is 10;
		now cunt length of player is 8;
		now tail of player is the tail entry;
		now face of player is the face entry;
		now skin of player is the skin entry;
		now body of player is the body entry;
		now cock of player is the cock entry;
		say "[bold type][y] - [name entry][roman type]:";
		LineBreak;
		DescriptionDisplay;
		LineBreak;

to DescriptionDisplay:
	now looknow is 1;
	let cocktext be "";
	follow the cock descr rule;
	if player is male:
		if cocks of player > 1:
			now cocktext is "have [cocks of player] [cock size desc of player] [cock length of player]-inch-long [cock of player] [one of]cocks[or]penises[or]shafts[or]manhoods[at random]. They are [if libido of player <= 25]only somewhat aroused at the moment[else if libido of player <= 50]partially hard and dribbling a little pre[else if libido of player <= 75]erect and leaking precum[else]fully erect and drooling precum steadily[end if]. [if player is internal]Though they are not outwardly apparent, you wager you have[else]Underneath them hangs[end if] [one of]a pair of[or]a set of[at random] [ball size].";
		else:
			now cocktext is "have a [cock size desc of player] [cock length of player]-inch-long [cock of player] [one of]cock[or]penis[or]shaft[or]maleness[at random]. It is [if libido of player <= 25]only somewhat aroused at the moment[else if libido of player <= 50]partially hard and dribbling a little pre[else if libido of player <= 75]erect and leaking precum[else]fully erect and drooling precum steadily[end if]. [if player is internal]Though they are not outwardly apparent, you wager you have[else]Underneath it hangs[end if] [one of]a pair of[or]a set of[at random] [ball size].";
	let cunttext be "";
	follow the cunt descr rule;
	if player is female:
		if cunts of player > 1:
			now cunttext is " have [cunts of player] [cunt size desc of player] [one of]cunts[or]pussies[or]vaginas[at random]. Further probing shows them to be [cunt length of player] inches deep and able to stretch to about [cunt width of player] around. They are [if libido of player <= 25]a little damp at the moment[else if libido of player <= 50]wet with your juices[else if libido of player <= 75]hot and dripping juices[else]drooling musky nectar down your thighs[end if].";
		else:
			now cunttext is "r [one of]cunt[or]pussy[or]vagina[or]cleft[at random] looks [cunt size desc of player], and further probing shows it to be [cunt length of player] inches deep and able to stretch to [cunt width of player] around. It is [if libido of player <= 25]a little damp at the moment[else if libido of player <= 50]wet with your juices[else if libido of player <= 75]hot and dripping juices[else]drooling musky nectar down your thighs[end if].";
	say "Looking over yourself, your body is covered in [skin of player] skin. Your face is [face of player].[run paragraph on]";
	repeat with x running through equipped owned equipment:
		if descmod of x is "", next;
		if placement of x is "face":
			say " [descmod of x][run paragraph on]";
	say " Your body is [body of player].[run paragraph on]";
	repeat with x running through equipped owned equipment:
		if descmod of x is "", next;
		if placement of x is "body":
			say " [descmod of x][run paragraph on]";
	repeat with x running through equipped owned equipment:
		if descmod of x is "", next;
		if placement of x is "waist":
			say " [descmod of x][run paragraph on]";
	if "Angie's Mate" is listed in feats of player:
		say " Thin lines of healed claw-marks run down your back, marking you as Angie's mate.[run paragraph on]";
	if "Boghrim's Mark" is listed in feats of player:
		say " Two small scars from Boghrim's tusks mark your shoulder, a reminder of the first time the big orc fucked you.[run paragraph on]";
	if weapon object of player is not journal:
		say " You are carrying a/an [weapon object of player] just in case of trouble";
		if weapon object of player is unwieldy:
			say ". Due to its comparatively [if scalevalue of player > objsize of weapon object of player]small[else]big[end if] size, it is [if absolute value of ( scalevalue of player - objsize of weapon object of player ) > 3]very unwieldy[else if absolute value of ( scalevalue of player - objsize of weapon object of player ) is 3]rather unwieldy[else]somewhat unwieldy[end if] for you to use at the moment";
		say ".[run paragraph on]";
	if tail of player is empty:
		say "";
	else:
		say " [tail of player][run paragraph on]";
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
	if breasts of player > 0:
		if breast size of player is 0:
			say "You have [breasts of player] nipples on your [bodydesc of player] chest.";
		else:
			if breasts of player > 2:
				say "You have [breasts of player] breasts on your [bodydesc of player] chest. The first pair looks [descr] and curves out [breast size of player] inch[if breast size of player is not 1]es[end if] from your chest. The second pair curves out [(breast size of player times three) divided by five] inch[if ( breast size of player times three ) divided by 5 is not 1]es[end if] from your chest. ";
				if breasts of player > 4, say "The rest jostle for space [breast size of player divided by three] inch[if breast size of player divided by 3 is not 1]es[end if] from your belly.";
			else:
				say "You have two [descr] breasts on your [bodydesc of player] chest, curving out [breast size of player] inch[if breast size of player is not 1]es[end if] from your chest.";
	if child is not born and gestation of child > 0:
		if gestation of child < 10:
			now looknow is 0;
			say "Your [skin of player] swollen belly looks ready to spill forth life at any moment.";
			now looknow is 1;
		else if gestation of child < 20:
			say "You have a noticeable bulge, a soft roundness to your belly that speaks of too many nights with a tub of ice cream, or an incoming child.";
		else if gestation of child < 30:
			say "You feel a soft subtle glow somewhere in your belly.";
	else if heat enabled is true:
		if inheat is true:
			say "You also feel [if heatlevel is 3]an intense[else]a[end if] need to be on the receiving end of a good, hard fuck because of your presently heated state.";
		else if heatlevel is 1 and player is impreg_able and cockname of player is not "Human":
			say "You are thankfully spared some undo sexual yearning because you've prevented your tainted womb from going into heat.";
		else if heatlevel is 3 and player is impreg_able and cockname of player is not "Human":
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
		say "Creature Entry: [name entry]";
	else:
		say "Row Number outside of the table!";

to PrereqAnalyze (x - situation):
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

Debugging Tools ends here.
