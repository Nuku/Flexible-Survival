Version 1 of NPC Debug by Wahn begins here.
[Version 1 - new file]
"Adds a debug function for npcs to the Flexible Survival game"

[ Activating the debug mode show the npc's variables in their description and show when a walk-in event fires]
[ Either turn it on and off here by setting the variable, or use the "npcdebug" command in the game ]

[ debugactive 0 = Debug off]
[ debugactive 1 = Debug on]

[ Currently included NPCs:                         ] 
[ - Amy                                            ]
[ - David                                          ]
[ - Elijah                                         ]
[ - Eric                                           ]

debugactive is a number that varies. debugactive is 0.

npcdebugmode is an action applying to nothing.
understand "npcdebug" as npcdebugmode.
understand "npc debug" as npcdebugmode.
understand "debug npcs" as npcdebugmode.
understand "debugnpcs" as npcdebugmode.

carry out npcdebugmode:
	if debugactive is 0:
		say "NPC DEBUG MODE ACTIVATED.";
		now debugactive is 1;
	otherwise:
		say "NPC DEBUG MODE DISABLED.";
		now debugactive is 0;

turncountdisplay is an action applying to nothing.
understand "turn count" as turncountdisplay.
understand "turncount" as turncountdisplay.
understand "current turn" as turncountdisplay.
understand "currentturn" as turncountdisplay.

carry out turncountdisplay:
	say "DEBUG: CURRENT TURN IS [turns]";

to say NavCheck:
	if location of player is not fasttravel:
		say "You can't navigate from here.";
		stop the action;
	if location of player is Grey Abbey Library:
		say "You're already here.";
		stop the action;

NPC Debug ends here.
