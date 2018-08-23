Version 1 of Black Market by Luneth begins here.

[ HP of Barrett - initial content progression                                   ]
[   0: Player has not entered Zephyr Storeroom yet                              ]
[   1: Player has met Barrett                                                   ]

[ Lust of Barrett - Black Market progression                                    ]
[   0: Player knows nothing of the Black Market                                 ]
[   1: Player has been informed of the Black Market                             ]
[   2: Player has decided to make use of the Black Market                       ]
[   3: Player has completed initial Black Market quest                          ]
[   4: Player has saved Barrett (Black Market has been relocated to the Library)]
[  99: Player has decided to turn in Barrett (Black Market lock-out)            ]
[ 100: Player has decided that Black Market deals are wrong (Market lock-out)   ]

[ libido of Barrett - Barrett sex progression                                   ]
[   0: Player knows nothing of Barrett's desires                                 ]
[   1: Player has attempted to hit on Barrett                                   ]
[   2: Player has accepted Barrett's preferences                                ]
[   3: Player has agreed to be Barrett's fuckbuddy                              ]
[   4: Player has agreed to be Barrett's paramore                               ]
[ 100: Player has decided that Barrett's preferences are wrong (sex lock-out)   ]

[Drug named Bliss]

Section 1 - Location

West of Zephyr Lobby is Zephyr Storeroom.
Zephyr Storeroom is a room. The description of Zephyr Storeroom is "[zephyrstoreroom desc]".

to say zephyrstoreroom desc:
	say "     Entering the storeoom you can see boxes going all the way up to the ceiling. Along the walls in black paint someone has also done measurements, going by those, the room tops out at around twenty feet. The containers are gray and massive, obviously they must have a forklift stashed away somewhere in here as well. Color wise the room is a mixture of gray, white, and... off white, a very drab look to be sure. Off to the side in the back is a single desk with mountains of paperwork covering it, you can only assume that this mess belongs to Barret.";

Section 2 - NPC

Barrett is a man. He is in Zephyr Storeroom.
The description of Barrett is "[BarrettDesc]".
The conversation of Barrett is { "Arrg" }.

to say BarrettDesc:
	say "     Barret is a Hispanic man that appears to be in his early to mid forties. He is around 6[']3 with a large build that at first glance could be confused as heavy set, however upon further inspection he appears incredibly muscular. His green eyes compliment his darker complexion giving him a slightly exotic look and his jet black hair is styled in a crew cut with a trimmed goatee to match. At the moment he is wearing a white tank top that shows off his massive arms and his round belly and black cargo pants that showcase his stockier legs and huge behind. A pair of silver dog tags hang from around his neck, in all honesty he look more like a soldier or a mercenary than a guy that deal stock taking.";

The scent of Barrett is "     Barret smells of clean sweat with a hint of cologne.".

instead of conversing the Barrett:
	say "[BarrettTalkMenu]";

to say BarrettTalkMenu:
	say "     What do you want to talk to Barrett about?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Chat a bit";
	now sortorder entry is 1;
	now description entry is "Just shoot the shit with the gruff guy";
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
				if (nam is "Chat a bit"):
					say "[BarrettTalk1]";
				wait for any key;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the gruff man, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say BarrettTalk1:
	say "     Look if you want something just check the damn case.";

Section 3 - Store

The medicine case is a backdrop. It is in Zephyr Storeroom. The description of the medicine case is "[medicine case list]".

Instead of smelling the medicine case:
	say "The medicine case has little in the way of scent of its own.";

to say medicine case list:
	say "To buy an item, type buy (name here)";
	repeat through table of Zephyr Black Market Medicine Case:
		follow allowed entry;
		if rule failed:
			next;
		say "[link]Buy[as]buy [object entry][end link] ";
		say "[name entry] - [price entry] Creds";

Table of Zephyr Black Market Medicine Case
name	price	object	allowed
"testosterone pill"	100	testosterone pill	true rule
"estrogen pill"	100	estrogen pill	true rule
"estosterogen pill"	150	estosterogen pill	true rule
"cock pill"	50	cock pill	true rule
"cock remover"	50	cock remover	true rule
"cunt pill"	50	cunt pill	true rule
"cunt remover"	50	cunt remover	true rule
"bitch breaker gel"	10	bitch breaker gel	true rule
"sissifier gel"	10	sissifier gel	true rule
"breeder serum"	10	breeder serum	true rule
"trap serum"	10	trap serum	true rule
"pussy spreader cream"	10	pussy spreader cream	true rule
"rightntight cream"	10	rightntight cream	true rule
"cock holster upgrade"	10	cock holster upgrade	true rule
"cervix smasher upgrade"	10	cervix smasher upgrade	true rule
"tits inflator"	50	tits inflator	true rule
"tits deflator"	50	tits deflator	true rule
"birth control pill"	50	birth control pill	true rule
"fertile pill"	50	fertile pill	true rule
"libido pill"	50	libido pill	true rule
"libido suppressant"	150	libido suppressant	true rule


[Table of Zephyr Black Market Outfitters Rack
name	price	object	allowed
"armored labcoat"	350	armored labcoat	true rule
"zephyr riot helmet"	350	zephyr riot helmet	true rule
"zephyr riot chestpiece"	100 zephyr riot chestpiece	true rule
"zephyr riot arm guards"	275	zephyr riot arm guards	true rule
"zephyr riot shin guards"	550	zephyr riot shin guards	true rule
"padded briefs"	100	padded briefs	true rule
"padded bra"	350	padded bra	true rule
"zephyr riot shield"	275	zephyr riot shield	true rule

Table of Zephyr Black Market Catalogue
"canine dildo"	350	canine dildo	true rule
"egg vibrator"	350	egg vibrator	true rule
"push button vibrator"	push button vibrator	true rule
"pocket pussy"	275	pocket pussy	true rule
"strap-on"	550	strap-on	true rule
"equine dildo"	100 equine dildo	true rule
"vibrator wand"	350	vibrator wand	true rule

This is the true rule:
rule succeeds;

Section 4 - Events

after going to Zephyr Storeroom while HP of Barrett is 0:
	say "     ";]

Black Market ends here.
