Version 1 of Urik by Wahn begins here.
[Version 1 - New NPC]

Section 1 - NPC

[ Urik, the npc                                                         ]
[                                                                       ]
[ libido states of Urik - Location                                      ]
[   0: in the orc lair                                                  ]
[   1: in the library                                                   ]

Urik is a man.
The description of Urik is "[UrikDesc]";

to say UrikDesc:
	say "     Urik looks the part of a proud orc warrior, tall and strong, with a brutishly handsome face, its square jaw showing two sharp tusks jutting upwards. The only shred of cloth on his impressive physique is a rather flimsy loincloth, its thin fabric leaving little to the imagination... proving that the saying about big hands and feet is quite accurate for some. Only his hair does deviate a little from the typical image of an orc, by being a little longer than the usual short bristles, showing some shiny and attractive black curls.";
	say "     In his behaviour though, the orc couldn't be more out of character with the norm. After publicly mistreating one of the human-sized breeder orcs he owned, Boghrim forced him into becoming a breeder slut himself, making him hunger for hard dicks and a tasty load of cum in his belly...";
	
The conversation of Urik is { "<Placeholder>" }.

The scent of Urik is "     Urik has a quite masculine smell, underlined with a little bit of sweat and cum that somehow just makes him more attractive.".

Instead of fucking Urik:
	say "     <Wahn: This NPC is still a work in progress. Please have some patience.>";	
[	
	if(lastfuck of Urik - turns < 5):
		say "     Urik says, 'I need a break for a moment master. Please...'";
	otherwise:
		if Urik is in Main Hall:
			say "     You walk up to Urik and tell him you want to 'talk' to him - alone. [if thirst of Urik < 2]He salutes and leads you to a nearby tent. Soon you're standing between several bunk beds, alone in the tent with the handsome soldier..[otherwise]He gives you a knowing wink and leads you to a nearby tent. Soon you're standing between several bunk beds, alone in the tent with the handsome soldier...[end if]";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Suck Urik's cock";
		now sortorder entry is 1;
		now description entry is "Give him a blow-job.";
		[]
		if (lust of Urik > 0 and cocks of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Have him suck your cock";
			now sortorder entry is 2;
			now description entry is "Get a blow-job.";
		[]
		if (cunts of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Let Urik fuck your pussy";
			now sortorder entry is 3;
			now description entry is "Let the orc warrior breed you.";
		[]
		if (lust of Urik > 0):
			choose a blank row in table of fucking options;
			now title entry is "Let Urik fuck your ass";
			now sortorder entry is 4;
			now description entry is "Let the orc warrior fill your ass with his seed.";
		[]
		if (cocks of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Take Urik's ass";
			now sortorder entry is 5;
			now description entry is "Fill the orc slave's ass with your cock.";
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
					clear the screen and hyperlink list;
					now sextablerun is 1;
					if nam is "Suck Urik's cock":
						say "[UrikSex1]";
					otherwise if (nam is "Have him suck your cock"):
						say "[UrikSex2]";
					otherwise if (nam is "Let Urik fuck your pussy"):
						say "[UrikSex3]";
					otherwise if (nam is "Let Urik fuck your ass"):
						say "[UrikSex4]";
					otherwise if (nam is "Take Urik's ass"):
						say "[UrikSex5]";
					wait for any key;
					now lastfuck of Urik is turns;
			otherwise if calcnumber is 100:
				say "Break off?";
				if the player consents:
					now sextablerun is 1;
					say "     You step back from the large orc, shaking your head slightly as he gives a questioning look.";
					wait for any key;
				otherwise:
					say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
			otherwise:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;
]

instead of conversing Urik:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat";
	now sortorder entry is 1;
	now description entry is "Chat a bit with Urik";
	[]
	if hp of Urik is 0:
		choose a blank row in table of fucking options;
		now title entry is "Send him to the library";
		now sortorder entry is 2;
		now description entry is "Send Urik to stay with you in the Grey Abbey Library";
	[]
	if hp of Urik is 1:
		choose a blank row in table of fucking options;
		now title entry is "Send him to the orc lair";
		now sortorder entry is 3;
		now description entry is "Send Urik to stay with the orcs in their lair";
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
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Just chat":
					say "[UrikTalk1]";
				if nam is "Send him to the library":
					say "[UrikTalk2]";
				if nam is "Send him to the orc lair":
					say "[UrikTalk3]";
				wait for any key;
				now lastfuck of Urik is turns;
		otherwise if calcnumber is 100:
			say "Break off?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the orc warrior, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say UrikTalk1: [chatting]
	say "     Urik says, '[one of]I still can't believe Boghrim did this to me. And all over that stupid little breeder...[or]I'd never have believed how good it feels to be fucked before.[at random]'"; [more to be added]

to say UrikTalk2: [send him to the library]
	say "     Urik listens to your instructions with a quiet intensity that makes it clear he commits the directions to the library to his memory. When you finish and ask if he understood, he hesitates for a second, then forces himself to say, 'Yes, master.' You can see that he is still a bit uncomfortable at accepting his new reality of being your breeder. Well, he'd better learn to live with it, as having your own orc warrior is something you won't easily let go of. With a playful slap at his muscled buttocks, you send him off into the city.";
	move Urik to Grey Abbey Library;
	now hp of Urik is 1;

to say UrikTalk3: [send him to the orc lair]
	say "     Urik listens to your instructions quietly, looking a little embarrassed as you say he should go back to the orc lair. When you finish and ask if he understood, he hesitates for a second, then forces himself to say, 'Yes, master.' You can see that he is still a bit uncomfortable at accepting his new reality of being your breeder. Well, he'd better learn to live with it, as having your own orc warrior is something you won't easily let go of. With a playful slap at his muscled buttocks, you send him off into the city.";
	move Urik to Main Hall;
	now hp of Urik is 0;

Section 3 - Endings

Urik ends here.
