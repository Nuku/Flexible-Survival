Version 1 of Juergen by Wahn begins here.
[Version 1 - Put into its own file]


[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 1 - Initial Events
[***********************************************************]
[***********************************************************]
[***********************************************************]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 2 - NPC
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameCharacterIDs (continued)
object	name
Juergen	"Juergen"

Juergen is a man.
ScaleValue of Juergen is 4. [superhuman sized]
Cock Count of Juergen is 1.
Cock Length of Juergen is 18.
Ball Size of Juergen is 5.
Ball Count of Juergen is 2.
Cunt Count of Juergen is 0.
Cunt Depth of Juergen is 0.
Cunt Tightness of Juergen is 0.
Nipple Count of Juergen is 2. [2 nipples]
Breast Size of Juergen is 0.
[Basic Interaction states as of game start]
PlayerMet of Juergen is false.
PlayerRomanced of Juergen is false.
PlayerFriended of Juergen is false.
PlayerControlled of Juergen is false.
PlayerFucked of Juergen is false.
OralVirgin of Juergen is false.
Virgin of Juergen is true.
AnalVirgin of Juergen is false.
PenileVirgin of Juergen is false.
SexuallyExperienced of Juergen is true.
MainInfection of Juergen is "Wolverine Guard".
The description of Juergen is "[JuergenDesc]".
The conversation of Juergen is { "<This is nothing but a placeholder!>" }.
The scent of Juergen is "     ...".

to say JuergenDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Juergen: [HP of Juergen] <- DEBUG[line break]";
	say "     ....";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 3 - Conversation
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of conversing the Juergen:
	say "     [bold type]What do you want to talk to Juergen about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask Juergen to tell you about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His plans";
	now sortorder entry is 2;
	now description entry is "Ask Juergen what he's got in mind for the future";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Your captive whore Blake";
	now sortorder entry is 3;
	now description entry is "Chat about Blake";
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Himself"):
					say "[JuergenTalk1]";
				else if (nam is "His plans"):
					say "[JuergenTalk2]";
				else if (nam is "Collect some earnings for Blake"):
					say "[BlakeWhoringTalk]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the gruff wolverine, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say JuergenTalk1: [talk about him]
	say "     ...";

to say JuergenTalk2: [talk about his plans]
	say "     ...";

to say BlakeWhoringTalk:
	say "     ...";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 4 - Sex
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of fucking the Juergen:
	if (lastfuck of Juergen - turns < 2): [he got fucked in the last 6 hours = 2 turns]
		say "     ...";
	else: [ready for sex]
		say "     ...";
		wait for any key;
		say "[JuergenSexMenu]";

to say JuergenSexMenu:
	say "     [bold type]What exactly do you plan on doing with Juergen?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Get on your knees and give him a blowjob";
	now sortorder entry is 1;
	now description entry is "Service the moose orally";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Take Juergen's cock in your pussy";
		now sortorder entry is 2;
		now description entry is "Get fucked by the moose";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take Juergen's cock in your ass";
	now sortorder entry is 3;
	now description entry is "Get fucked in the ass by the moose";
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Get on your knees and give him a blowjob"):
					say "[JuergenSex1]";
				if (nam is "Take Juergen's cock in your pussy"):
					say "[JuergenSex2]";
				if (nam is "Take Juergen's cock in your ass"):
					say "[JuergenSex3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the towering moose, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say JuergenSex1: [BJ on Juergen]
	say "     ...";
	NPCSexAftermath Player receives "OralCock" from Juergen;

to say JuergenSex2: [pussy fuck by Juergen]
	say "     ...";
	NPCSexAftermath Player receives "PussyFuck" from Juergen;

to say JuergenSex3: [ass-fucking by Juergen]
	say "     ...";
	NPCSexAftermath Player receives "AssFuck" from Juergen;

Juergen ends here.
