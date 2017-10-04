Version 1 of Debugging Tools by Core Mechanics begins here.
[Version 1 - By Wahn, moved to Core Mechanics]
"Adds a debug function for npcs to the Flexible Survival game"

[ Activating the debug mode show the npc's variables in their description and show when a walk-in event fires]
[ Either turn it on and off here by setting the variable, or use the "npcdebug" command in the game ]

[ debugactive 0 = Debug off]
[ debugactive 1 = Debug on]

debugactive is a number that varies. debugactive is 0.
RandomGenNumber is a number that varies.

npcdebugmode is an action applying to nothing.
understand "npcdebug" as npcdebugmode.
understand "npc debug" as npcdebugmode.
understand "debug npcs" as npcdebugmode.
understand "debugnpcs" as npcdebugmode.

carry out npcdebugmode:
	if debugactive is 0:
		say "NPC DEBUG MODE ACTIVATED.";
		now debugactive is 1;
	else:
		say "NPC DEBUG MODE DISABLED.";
		now debugactive is 0;

turncountdisplay is an action applying to nothing.
understand "turn count" as turncountdisplay.
understand "turncount" as turncountdisplay.
understand "current turn" as turncountdisplay.
understand "currentturn" as turncountdisplay.

carry out turncountdisplay:
	say "DEBUG: CURRENT TURN IS [turns]";

TestMode is an action applying to nothing.
TestingActive is a truth state that varies.

understand "iwannatest" as TestMode.

check TestMode:
	if TestingActive is true, say "You're already in testing mode." instead;

carry out TestMode:
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
	now maxhp of player is 300;
	now hp of player is 300;
	now capacity of player is 300;
	increase carried of food by 15;
	increase carried of water bottle by 15;
	increase carried of medkit by 5;
	increase carried of libido suppressant by 10;
	increase carried of gryphon milk by 5;
	increase carried of glob of goo by 5;
	increase carried of honeycomb by 5;
	increase carried of healing booster by 5;

SubDomFlip is an action applying to nothing.
understand "flip janus coin" as SubDomFlip.
understand "flip Janus Coin" as SubDomFlip.
understand "flip sub dom" as SubDomFlip.
understand "flip subdom" as SubDomFlip.
understand "flip SubDom" as SubDomFlip.

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
		say "     Somehow it slips through your fingers, bouncing off the ground and rolling around a little, until it comes to a sudden standstill. And that is how it remains, just standing on its side, falling over in neither direction. As you pick the little disc of metal off the ground, it is strangely cold between your fingers for a second. Almost seems like its giving you the cold shoulder since you fit neither of its different faces.";

PregTestMirror is an action applying to nothing.
understand "preg test" as PregTestMirror.
understand "pregtest" as PregTestMirror.

carry out PregTestMirror:
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
	say "     [line break]";
	say "     [bold type]What size do you want your character to be??[roman type][line break]";
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
		say "     [line break]";
		say "     Set player size to tiny.";
		now scalevalue of player is 1;
	else if calcnumber is 2:
		say "     [line break]";
		say "     Set player size to small.";
		now scalevalue of player is 2;
	else if calcnumber is 3:
		say "     [line break]";
		say "     Set player size to average.";
		now scalevalue of player is 3;
	else if calcnumber is 4:
		say "     [line break]";
		say "     Set player size to large.";
		now scalevalue of player is 4;
	else if calcnumber is 5:
		say "     [line break]";
		say "     Set player size to huge.";
		now scalevalue of player is 5;

[Allows the player to add or remove the "Kinky" feat without leveling. Useful for testing some scenes.]
AddRemoveKinky is an action applying to nothing.
understand "add kinky" as AddRemoveKinky.
understand "remove kinky" as AddRemoveKinky.

carry out AddRemoveKinky:
	if "Kinky" is listed in feats of player:
		remove "Kinky" from feats of player;
	else:
		add "Kinky" to feats of player;

Debugging Tools ends here.
