Version 1 of Carl by Wahn begins here.
[Version 1 - New male husky npc - still inactive]

"Adds a husky npc to Flexible Survival, entering the game as an aftermath of the soldier squad events"

[ Carl, the husky                                                       ]
[                                                                       ]
[ HP of Carl                                                            ]
[   0: starting state, not transformed yet                              ]
[   1: Jimmy fucked Carl, made him a husky                              ]
[   2: player helped him escape and brought him into the library        ]
[   3: Carl got fucked by the player                                    ]
[  50: player helped him escape, then sent him off alone                ]
[  90: he got caught by Jimmy and was broken in by him                  ]
[ 100: removed from the game (lost somewhere)                           ]

Carl is a man. The hp of Carl is usually 0.
The description of Carl is "[CarlDesc]";
The conversation of Carl is { "Woof." };
lastfuck of Carl is usually 555.

instead of conversing the Carl:
	if (hp of Carl is 2):  
		say "     Carl says 'A'";
	otherwise if hp of Carl is 3:   
		say "     Carl says 'B'";
	otherwise:
		say "ERROR-Carl-[hp of Carl]C: He isn't in one of the states she should be in! Please report how you got to this message.";
	
to say CarlDesc:
	say "     A.";
		
The scent of Carl is "     Carl smells like a husky - and clearly a male one at that.";

Instead of fucking the Carl:
	if (lastfuck of Carl - turns < 2):
		say "     A";
	otherwise:
		say "     B";
		wait for any key;
		say "[CarlSexMenu]";
		now lastfuck of Carl is turns;


to say CarlSexMenu:
	setmonster "Alpha Husky";
	choose row monster from the table of random critters;	
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Suck Carl's cock";
	now sortorder entry is 1;
	now description entry is "Give him a blow-job.";
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have him suck your cock";
		now sortorder entry is 2;
		now description entry is "Get a blow-job.";
	if (cocks of player > 0 or cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "69 with Carl";
		now sortorder entry is 3;
		now description entry is "Share oral pleasures with your male husky.";
	if (cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Let Carl fuck your pussy";
		now sortorder entry is 4;
		now description entry is "Let the husky breed you.";
	choose a blank row in table of fucking options;
	now title entry is "Let Carl fuck your ass";
	now sortorder entry is 5;
	now description entry is "Let the husky fill your ass with his seed.";
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Carl's ass";
		now sortorder entry is 6;
		now description entry is "Fill the husky's ass with your cock.";
	sort the table of fucking options in sortorder order;
	change the current menu to table of fucking options;
	carry out the displaying activity;
	clear the screen;

This is the CarlSex rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry][line break]";
	say "Is this what you want?";
	if player consents:
		decrease menu depth by 1;
		clear the screen;
		if nam is "Suck Carl's cock":
			say "[CarlSex1]";
		otherwise if (nam is "Have him suck your cock"):
			say "[CarlSex2]";
		otherwise if (nam is "69 with Carl"):
			say "[CarlSex3]";
		otherwise if (nam is "Let Carl fuck your pussy"):
			say "[CarlSex4]";
		otherwise if (nam is "Let Carl fuck your ass"):
			say "[CarlSex5]";
		otherwise if (nam is "Take Carl's ass"):
			say "[CarlSex6]";
		wait for any key;
		

to say CarlSex1:                        [player sucks him]
	say "     A";

to say CarlSex2:                        [he sucks the player]
	say "     B";
		
to say CarlSex3:                        [69 with Carl]
	say "     C";

to say CarlSex4:                        [player pussy fucked]
	say "     D";

to say CarlSex5:                        [player ass fucked]
	say "     E";
	
to say CarlSex6:                        [Carl's ass fucked]
	say "     F";

	
Carl ends here.