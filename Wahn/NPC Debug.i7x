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
	
NavCheckReturn is a truth state that varies.
	
to say NavCheck (CheckRoom - a room): [check if a nav attempt can go through]
	if debugactive is 1:
		say "DEBUG -> NavCheck just checked your travel route out! <- DEBUG";
	if location of player is not fasttravel:
		say "You can't navigate from here.";
		now NavCheckReturn is false;
	otherwise if location of player is CheckRoom:
		say "You're already here.";
		now NavCheckReturn is false;
	otherwise:
		if debugactive is 1:
			say "DEBUG -> ...and you may travel. Pass along now. <- DEBUG";
		now NavCheckReturn is true;
				
to say WaitLineBreak: [little bit of often used code]
	if waiterhater is 0:
		wait for any key; [skips waiting if it's not wanted]
		if hypernull is 0, say "[line break]"; [adds a break after the 'more']
	otherwise:
		say "[line break]"; [people who don't want to wait at least get a break]		

NPC Debug ends here.
