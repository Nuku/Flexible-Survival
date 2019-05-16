Version 1 of Darren by Qazarar begins here.

Section 1 - NPC

[ Loyalty of Darren                                            ]
[   0: haven't spoken to                                       ]

Table of GameCharacterIDs (continued)
object	name
Darren	"Darren"

Darren is a man.
ScaleValue of Darren is 3. [human sized]
SleepRhythm of Darren is 1. [day active]
Cocks of Darren is 1.
Cock Length of Darren is 8. [check values]
Cock Width of Darren is 5. [check values]
Testes of Darren is 4.
Cunts of Darren is 0.
Cunt Length of Darren is 0.
Cunt Width of Darren is 0.
Breasts of Darren is 2.
Breast Size of Darren is 0.
PlayerMet of Darren is false.
PlayerRomanced of Darren is false.
PlayerFriended of Darren is false.
PlayerControlled of Darren is false.
PlayerFucked of Darren is false.
OralVirgin of Darren is true.
Virgin of Darren is true.
AnalVirgin of Darren is true.
PenileVirgin of Darren is false.
SexuallyExperienced of Darren is false.
Darren is nowhere.
MainInfection of Darren is "Salamander".
The description of Darren is "[DarrenDesc]".
The conversation of Darren is { "<This is nothing but a placeholder!>" }.
The scent of Darren is "     He smells of smoke and fire.".

to say DarrenDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Darren] Loyalty: [Loyalty of Darren] <- DEBUG[line break]";
	say "     DESCRIPTION";

Section 2 - conversation

instead of conversing the Darren:
	say "[DarrenTalkMenu]";

to say DarrenTalkMenu:
	say "     What do you want to talk about with Darren?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask Darren about himself and his history";
	[]
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
				if (nam is "Himself"):
					say "[DarrenTalk1]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the salamander, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say DarrenTalk1: [himself]
	say "     <Talk>";

Section 3 - Fucking

instead of fucking the Darren:
	say "[SexWithDarren]";

to say SexWithDarren:
	if (lastfuck of Darren - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     'I'm still a bit worn out from last time, but I'd be happy to chat with you instead.' Darren gives you a light smile.";
	else if Loyalty of Darren is 0:
		say "     A";
	else if Loyalty of Darren < 2:
		say "     A";
	else: [ready for sex]
		say "     A";
		say "[DarrenSexMenu]";

to say DarrenSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Offer a BJ";
	now sortorder entry is 1;
	now description entry is "Suck Darren off under the desk.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask him to fuck you";
	now sortorder entry is 2;
	now description entry is "Ask him to take you right there on his desk.";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Ask to fuck him";
		now sortorder entry is 3;
		now description entry is "Tell the minotaur you're interested in his ass.";
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
				if (nam is "Offer a BJ"):
					say "[DarrenSex1]";
				if (nam is "Ask him to fuck you"):
					say "[DarrenSex2]";
				if (nam is "Ask to fuck him"):
					say "[DarrenSex3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the confident minotaur, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say DarrenSex1:
	say "     A";
	now lastfuck of Darren is turns;

to say DarrenSex2:
	say "     A";
	now lastfuck of Darren is turns;

to say DarrenSex3:
	say "     A";

Section 5 - Location

Table of GameRoomIDs (continued)
Object	Name
Salamander Hideaway	"Salamander Hideaway"

Salamander Hideaway is a room.
The description of Salamander Hideaway is "     DESC".
Mall East Wing is north of Salamander Hideaway.

Darren ends here.
