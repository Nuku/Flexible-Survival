Version 1 of Nala by CrimsonAsh begins here.
[Version 1 - New file]

[ HP of Nala                                           ]
[  0: never met                                        ]
[  1: first trick played                               ]

Section 1 - Events

A Harmless Joke is a situation.
The sarea of A Harmless Joke is "Nowhere".

when play begins:
	add A Harmless Joke to badspots of girl;
	add A Harmless Joke to badspots of hellspawn;

instead of navigating Grey Abbey Library while (A Harmless Joke is not resolved and HP of Nala is 0 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action; [can't nav from the player's location, or already there - so we stop this cold]
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: First Nala Trick on the player - HP of Nala: [HP of Nala][line break]";
	say "     <first trick text here>";
	now HP of Nala is 1; [flag set to remember the progress]
	now A Harmless Joke is resolved; [event won't happen again]
	
Fool Me Once is a situation.
The sarea of A Harmless Joke is "Nowhere".

when play begins:
	add Fool Me Once to badspots of girl;
	add Fool Me Once to badspots of hellspawn;
	
after resting while (Fool Me Once is not resolved and player is in Bunker and HP of Nala is 1):
	say "     <event text that comes up after resting in the bunker>";
	now HP of Nala is 2; [flag set to remember the progress]
	now Fool Me Once is resolved; [won't happen again]

Section 2 - NPC

Nala is a woman. The HP of Nala is usually 0.
The description of Nala is "[NalaDesc]".
The conversation of Nala is { "<This is nothing but a placeholder!>" }.
The scent of Nala is "     Nala smells like X".

to say NalaDesc:
	if debugactive is 1:
		say "DEBUG -> NalaTRACKINGPROGRESS: [NalaTrackingProgress], HP: [HP of Nala] <- DEBUG[line break]";
	say "     <This is the basic description of Nala. Body, Clothing, etc. can be laid out here>";

instead of conversing the Nala:
	say "     <...>";

instead of fucking the Nala:
	if (lastfuck of Nala - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     <Reason why Nala doesn't feel like having sex right now. Exhaustion, duty, or otherwise>";
	else: [ready for sex]
		say "     As you walk up to Nala, <positive reaction at being approached for sex>";
		wait for any key;
		say "[NalaSexMenu]";

to say NalaSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Get a blowjob";
		now sortorder entry is 1;
		now description entry is "Let Nala suck you off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Eat Nala out";
	now sortorder entry is 2;
	now description entry is "Lap at the imp's pussy";
	[]
	if cocks of player > 0: [possibly add on a "and cock length of player < X" if you wanna cap her capacity somewhere]
		choose a blank row in table of fucking options;
		now title entry is "Fuck Nala";
		now sortorder entry is 3;
		now description entry is "Slide your cock into the bubbly imp";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Get a blowjob"):
					say "[NalaSex1]";
				if (nam is "Eat Nala out"):
					say "[NalaSex2]";
				if (nam is "Fuck Nala"):
					say "[NalaSex3]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the imp farmhand, shaking your head slightly as she gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say NalaSex1: [oral on the player]
	say "     A";

to say NalaSex2: [oral on Nala]
	say "     A";

to say NalaSex3: [Nala fucked]
	say "     A";




Nala ends here.
