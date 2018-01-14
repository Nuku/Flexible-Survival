Version 1 of Chase by Luneth begins here.


[ HP of Chase                                                    ]
[   0: not found at the zoo yet                                  ]
[   1: Chase has taken you to the tiger den                      ]
[   2: regular Chase as talked with the player                   ]
[   3: M/M route (dominant Chase transformation complete)        ]
[   4: M/M route (player has talked with dominant Chase)         ]
[   5: M/M route (mpreg Chase, sub)                              ]
[   6: M/M route (player has talked to mpreg Chase, sub)         ]
[  99: chose to side with the tigertaur instead of Chase         ]
[ 100: chose to not intervene in TigerVSTaur                     ]

[ libido of Chase - M/F content progression                      ]
[   0: no sex talk yet                                           ]
[   1: Chase has had sex with a female player                    ]

[ lust of Chase - default M/M content progression                ]
[   0: Chase has no intrest in player                            ]
[   1: player has MPreg feat                                     ]
[   2: player has been knocked up by Chase alot                  ]
[   3: player has opted to be Chase's mate (submissive route)    ]

[ thirst of Chase - orc pill M/M content progression             ]
[   0: Chase has no intrest in player or the player has Mpreg    ]
[   1: player has brought up MPreg pill (Chase refused)          ]
[   2: player has brought up MPreg pill (Chase accepted)         ]
[   3: pregnant Chase                                            ]
[   4: player has opted to be Chase's mate (dominant route)      ]
[   5: player is Chase's mate while he's pregnant                ]

Section 1 - NPC 

Chase is a man.
The description of Chase is "[ChaseDesc]".
The conversation of Chase is { "<This is nothing but a placeholder!>" }.
Chase is in Tiger den.
The scent of Chase is "[ChaseScent]";

to say ChaseScent:
	if HP of Chase < 3: [standard]
		say "      The male tiger has a powerful scent, much stronger than the other tigers inside the den. The aroma is almost enough to make you want to dip your head and avoid eye contact. It must be a reflection on his place within the streak. [if cunts of player > 0 or lust of Chase > 0] Everytime he glances your way you can also pick up a scent that has an almost spicy scent to it that speaks of his desire for you[end if].".
	else if HP of Chase is 3 or HP of Chase is 4: [dominant Chase]
		say "      ...";
	else if HP of Chase is 5 or HP of Chase is 6: [submissive Chase]
		say "      ...";

to say ChaseDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Chase: [HP of Chase], HP: [HP of Chase], LUST: [lust of Chase], LIBIDO: [libido of Chase], THIRST: [thirst of Chase]<- DEBUG[line break]";
	if HP of Chase < 3: [standard]
		say "     The tall striped tiger-morph you helped out earlier is hanging around near the side of the den, watching over several of the other tiger-like people here as they go about their business. He's pretty fit looking with a swimmers build and seems well at ease with his new form. Chase's electric blue eyes sweep the room making sure that everyone under his care is safe and accounted for. Staring at him you also notice his stripes seem to differ from the other tigers. For the most part they all have matching markings, whereas Chase has prominent black stripes coming over his shoulders to almost meet at the center of his chest. Every so often he rubs the leather choker bearing a yin yang brand around his neck, that almost looks like a cute collar... but you doubt anyone would ever mention that to him. All in all, he seems strangely alluring, with a strong, masculine presence which you can't help but find attractive.";
		say "     <Chase reacting to the player staring>";
	else if HP of Chase is 3 or HP of Chase is 4: [Chase became a dominant king]
		say "     Chase has come a long way from when you first met him, apparently his strain of the infection was also tied into him finding a worthy mate. For starters, his body has outgrown the typical swimmer's build, making him much burlier, both in height and width. The once electric blue eyes have now darkened to an almost cobalt blue color, with a thin layer of lime green around the edges. The stripes wrapped around his body have also morphed into a more tribal-pattern appearance, becoming much sharper edged, with jagged lines that criss-cross each other and end in razor-sharp looking points. The most pronounced of those are the stripes that meet in the center of his chest, wrapping around each other so tightly they almost have the appearance of a crest or mantle, adding to his new more regal look.";
		say "     Now that his throat has become so much thicker, he can no longer wear his usual yin yang choker the way he used to. Instead, the proud tiger has it wrapped around his right bicep, with the leather strap pulled tight against his fur. Chase no longer has the look of being just being another tiger in the den, instead now appearing more like a king among his people. As you stare at him for this long, he notices your attention from across the room and looks right back with a smug look on his face. Then he crooks his finger at you, beckoning you to come closer.";
	else if HP of Chase is 5 or HP of Chase is 6: [Chase became a subby tiger for the player]
		say "     ";

Section 2 - Talking with Chase

instead of conversing the Chase:
	if HP of Chase < 1: [not rescued yet]
		say "     ERROR: Chase shouldn't be where a player can see him yet! Please report to Wahn on the FS forum and quote this tracking number for easier bugfixing: [HP of Chase]";
	else if HP of Chase < 1: [initial talk with regular Chase]
		say "     <Introduction to normal Chase>";
		now HP of Chase is 2;
	else if HP of Chase 2: [repeat talk with regular Chase]
		say "[RegularChaseTalkMenu]";
	else if HP of Chase is 3: [Chase got transformed into his dom shape, not talked to new Chase yet]
		say "     <Introduction to dom Chase>";
		now HP of Chase is 4;
	else if HP of Chase is 4: [dom Chase repeats]
		say "[DomChaseTalkMenu]";
	else if HP of Chase is 5: [sub Chase intro]
		say "     <Introduction to sub Chase>";
		now HP of Chase is 6;
	else if HP of Chase is 6: [sub Chase repeat]
		say "[SubChaseTalkMenu]";
	else if HP of Chase > 6: [as of yet undefined states]
		say "     ERROR: Chase is in an undefined state. Please report to Wahn on the FS forum and quote this tracking number for easier bugfixing: [HP of Chase]";

to say RegularChaseTalkMenu:
	say "     What do you want to talk to Chase about?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Chat a bit";
	now sortorder entry is 1;
	now description entry is "Just talk with the tiger";
	[]
	if companion of player is royal tiger:
		choose a blank row in table of fucking options;
		now title entry is "Chat with Ryousei and Chase";
		now sortorder entry is 2;
		now description entry is "Bla bla";
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
				if (nam is "Chat a bit"):
					say "[RegularChaseTalk1]";
				if (nam is "Chat with Ryousei and Chase"):
					say "[RegularChaseRyoTalk]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the anthro tiger farmhand, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;



Section 3 - Fucking Chase

instead of fucking the Chase:
	if (lastfuck of Chase - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     <Reason why Chase doesn't feel like having sex right now. Exhaustion, duty, or otherwise>";
	else if HP of Chase is 1: [player has not talked to him yet]
		say "     Just walking up to a guy and dragging him into bed seems a bit forward. At least talk to Chase first! You're not feral (yet) after all.";
	else if HP of Chase is 3: [player has not talked to dominant Chase yet]
		say "     You haven't even talked to Chase since agreeing to be his mate. Amazing sex is one thing, but your relationship will now be quite different, so it might be best to talk about that with your dominant top first.";
	else: [ready for sex]
		say "     As you walk up to Chase, <positive reaction at being approached for sex>";
		wait for any key;
		say "[ChaseSexMenu]";

to say ChaseSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Get a blowjob";
		now sortorder entry is 1;
		now description entry is "Let Chase suck you off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Chase off";
	now sortorder entry is 2;
	now description entry is "Wrap your lips around the horseman's equine shaft";
	[]
	if cocks of player > 0 and HP of Chase is 3: [only males and herms can fuck him, virgin Chase]
		choose a blank row in table of fucking options;
		now title entry is "Talk the handsome farmhand into giving up his virginity";
		now sortorder entry is 3;
		now description entry is "Take the horseman's ass for a ride";
	[]
	if cocks of player > 0 and HP of Chase > 3: [only males and herms can fuck him, also just for Chase who isn't a virgin]
		choose a blank row in table of fucking options;
		now title entry is "Fuck the handsome farmhand's ass";
		now sortorder entry is 4;
		now description entry is "Take the horseman's ass for a ride";
	[]
	if cunts of player > 0: [only females and herms can take him in the pussy]
		choose a blank row in table of fucking options;
		now title entry is "Take Chase's shaft in your pussy";
		now sortorder entry is 5;
		now description entry is "Offer sex to the hunky horseman";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take Chase's shaft in your ass";
	now sortorder entry is 5;
	now description entry is "Offer sex to the hunky horseman";
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
					say "[ChaseSex1]";
				if (nam is "Suck Chase off"):
					say "[ChaseSex2]";
				if (nam is "Talk the handsome farmhand into giving up his virginity"):
					say "[ChaseSex3]";
				if (nam is "Fuck the handsome farmhand's ass"):
					say "[ChaseSex4]";
				if (nam is "Take Chase's shaft in your pussy"):
					say "[ChaseSex5]";
				if (nam is "Take Chase's shaft in your ass"):
					say "[ChaseSex6]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the horseman farmhand, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say ChaseSex1: [oral on the player]
	say "     A";

to say ChaseSex2: [oral on Chase]
	say "     A";

to say ChaseSex3: [virgin Chase fucked]
	say "     A";

to say ChaseSex4: [non-virgin Chase fucked]
	say "     A";

to say ChaseSex5: [Chase fucks player pussy]
	say "     A";

to say ChaseSex6: [Chase fucks player ass]
	say "     A";


Chase ends here.
