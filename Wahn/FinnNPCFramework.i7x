Version 1 of FinnNPCFramework by Wahn begins here.
[Version 1 - Put into its own file]

[ FinnTrackingProgress                                   ]
[   0: not found any tracks yet                          ]
[   1: found the tracks, didn't follow                   ]
[   2: found the tracks, followed                        ]
[   3: Finn rescued, no sex                              ]
[   4: Finn rescued, player fucked him                   ]
[   5: Finn rescued, centaur fucked him                  ]
[  99: Finn's dead                                       ]
[ 100: Finn joined the stables                           ]

Finn is a man. The HP of Finn is usually 0.
The description of Finn is "[FinnDesc]".
The conversation of Finn is { "<This is nothing but a placeholder!>" }.
The scent of Finn is "     Finn smells nicely masculine, with a little bit of fur, straw and sweat in the mix. Seems like he's not adverse to doing some good and solid work for his boss at the farm.".

to say FinnDesc:
	if debugactive is 1:
		say "DEBUG -> FINNTRACKINGPROGRESS: [FinnTrackingProgress], HP: [HP of Finn] <- DEBUG[line break]";
	say "     <This is the basic description of Finn. Body, Clothing, etc. can be laid out here>";
	if FinnTrackingProgress is 3: [Finn rescued, no sex]
		say "     The horseman notices your gaze on himself and looks up from what he was doing, then <Reaction of Finn at being approached by the guy that rescued him.>";
	else if FinnTrackingProgress is 4: [Finn rescued, player fucked him]
		say "     The horseman notices your gaze on himself and looks up from what he was doing, then <Reaction of Finn at being approached by the guy that rescued him, pounding his ass in the progress.>";
	else if FinnTrackingProgress is 5: [Finn rescued, centaur fucked him]
		say "     The horseman notices your gaze on himself and looks up from what he was doing, then <Reaction of Finn at being approached by the guy that rescued him, but not without having his ass shafted by a centaur in the progress.>";

instead of conversing the Finn:
	if FinnTrackingProgress < 3: [not rescued yet]
		say "     ERROR: Finn shouldn't be where a player can see him yet! Please report to Wahn on the FS forum and quote this tracking number for easier bugfixing: [FinnTrackingProgress]";
	else if FinnTrackingProgress is 3: [Finn rescued, no sex]
		say "     <Talking with Finn - rescued, virgin>";
	else if FinnTrackingProgress is 4: [Finn rescued, player fucked him]
		say "     <Talking with Finn - rescued, player-fucked>";
	else if FinnTrackingProgress is 5: [Finn rescued, centaur fucked him]
		say "     <Talking with Finn - rescued, centaur-fucked>";
	else if FinnTrackingProgress > 5: [as of yet undefined states]
		say "     ERROR: Finn is in an undefined state. Please report to Wahn on the FS forum and quote this tracking number for easier bugfixing: [FinnTrackingProgress]";

instead of fucking the Finn:
	if (lastfuck of Finn - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     <Reason why Finn doesn't feel like having sex right now. Exhaustion, duty, or otherwise>";
	else: [ready for sex]
		say "     As you walk up to Finn, <positive reaction at being approached for sex>";
		wait for any key;
		say "[FinnSexMenu]";

to say FinnSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Get a blowjob";
		now sortorder entry is 1;
		now description entry is "Let Finn suck you off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Finn off";
	now sortorder entry is 2;
	now description entry is "Wrap your lips around the horseman's equine shaft";
	[]
	if player is male and FinnTrackingProgress is 3: [only males and herms can fuck him, virgin Finn]
		choose a blank row in table of fucking options;
		now title entry is "Talk the handsome farmhand into giving up his virginity";
		now sortorder entry is 3;
		now description entry is "Take the horseman's ass for a ride";
	[]
	if player is male and FinnTrackingProgress > 3: [only males and herms can fuck him, also just for Finn who isn't a virgin]
		choose a blank row in table of fucking options;
		now title entry is "Fuck the handsome farmhand's ass";
		now sortorder entry is 4;
		now description entry is "Take the horseman's ass for a ride";
	[]
	if player is female: [only females and herms can take him in the pussy]
		choose a blank row in table of fucking options;
		now title entry is "Take Finn's shaft in your pussy";
		now sortorder entry is 5;
		now description entry is "Offer sex to the hunky horseman";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take Finn's shaft in your ass";
	now sortorder entry is 5;
	now description entry is "Offer sex to the hunky horseman";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
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
					say "[FinnSex1]";
				if (nam is "Suck Finn off"):
					say "[FinnSex2]";
				if (nam is "Talk the handsome farmhand into giving up his virginity"):
					say "[FinnSex3]";
				if (nam is "Fuck the handsome farmhand's ass"):
					say "[FinnSex4]";
				if (nam is "Take Finn's shaft in your pussy"):
					say "[FinnSex5]";
				if (nam is "Take Finn's shaft in your ass"):
					say "[FinnSex6]";
				wait for any key;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the horseman farmhand, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say FinnSex1: [oral on the player]
	say "     A";

to say FinnSex2: [oral on Finn]
	say "     A";

to say FinnSex3: [virgin Finn fucked]
	say "     A";

to say FinnSex4: [non-virgin Finn fucked]
	say "     A";

to say FinnSex5: [Finn fucks player pussy]
	say "     A";

to say FinnSex6: [Finn fucks player ass]
	say "     A";


FinnNPCFramework ends here.
