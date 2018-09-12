Version 1 of Black Market by Luneth begins here.

[ HP of Barrett - initial content progression                                   ]
[   0: Player has not entered Zephyr Storeroom yet                              ]
[   1: Player has met Barrett                                                   ]

[ Lust of Barrett - Black Market progression                                    ]
[   0: Player knows nothing of the Black Market                                 ]
[   1: Player has completed initial Black Market quest                          ]
[   2: Player has saved Barrett (Black Market has been relocated to the Library)]
[  100: Player has decided to turn in Barrett (Black Market lock-out)           ]

[ libido of Barrett - Barrett sex progression                                   ]
[   0: Player knows nothing of Barrett's desires                                ]
[   1: Player has attempted to hit on Barrett                                   ]
[   2: Player has accepted Barrett's preferences                                ]
[   3: Player has agreed to be Barrett's fuckbuddy                              ]
[   4: Player has agreed to be Barrett's paramore                               ]
[ 100: Player has decided that Barrett's preferences are wrong (sex lock-out)   ]




Section 1 - Location

West of Zephyr Lobby is Zephyr Storeroom.
Zephyr Storeroom is a room. The description of Zephyr Storeroom is "[zephyrstoreroom desc]".

to say zephyrstoreroom desc:
	say "     Entering the storeroom you can see boxes going all the way up to the ceiling. Along the walls in black paint someone has also done measurements, going by those, the room tops out at around twenty feet. The containers are grey and massive, obviously they must have a forklift stashed away somewhere in here as well. Color wise the room is a mixture of grey, white, and... off white, a very drab look to be sure. Off to the side in the back is a single desk with mountains of paperwork covering it, you can only assume that this mess belongs to Barret.";

Section 2 - NPC

Table of GameCharacterIDs (continued)
object	name
Barrett	"Barrett"

Barrett is a man. He is in Zephyr Storeroom. The HP of Barrett is usually 0.
The description of Barrett is "[BarrettDesc]".
The conversation of Barrett is { "Arrg" }.

to say BarrettDesc:
	say "     Barret is a hispanic man that appears to be in his early to mid forties. He is around 6[']3 with a large build that at first glance could be confused as heavy set, however upon further inspection he appears incredibly muscular. His green eyes compliment his darker complexion giving him a slightly exotic look and his jet black hair is styled in a crew cut with a trimmed goatee to match. At the moment he is wearing a white tank top that shows off his massive arms and round belly, with a pair of black cargo pants that showcase his stockier legs and huge behind. A pair of silver dog tags hang from around his neck, in all honesty he looks more like a soldier or a mercenary than a guy that deals in stock taking.";

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
			now sextablerun is 1;
			say "     You step back from the gruff man, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say BarrettTalk1:
	say "     Look, if you want something just check the damn case.";

Section 3 - Store

The medicine case is a backdrop. It is in Zephyr Storeroom. The description of the medicine case is "[medicine case list]".

Instead of smelling the medicine case:
	say "The medicine case has little in the way of a scent of its own.";

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
"bitch breaker gel"	50	bitch breaker gel	true rule
"sissifier gel"	50	sissifier gel	true rule
"breeder serum"	50	breeder serum	true rule
"trap serum"	50	trap serum	true rule
"pussy spreader cream"	50	pussy spreader cream	true rule
"rightntight cream"	50	rightntight cream	true rule
"cock holster upgrade"	50	cock holster upgrade	true rule
"cervix smasher upgrade"	50	cervix smasher upgrade	true rule
"tits inflator"	50	tits inflator	true rule
"tits deflator"	50	tits deflator	true rule
["tits multiplier injection"	50	tits multiplier injection	true rule
"tits divider injection"	50	tits divider injection	true rule]
"birth control pill"	50	birth control pill	true rule
"fertile pill"	50	fertile pill	true rule
"libido pill"	50	libido pill	true rule
"libido suppressant"	100	libido suppressant	true rule

[
The outfitters rack is a backdrop. It is in Zephyr Storeroom. The description of the outfitters rack is "[outfitters rack list]".

Instead of smelling the outfitters rack:
	say "The outfitters rack has little in the way of a scent of its own.";

to say outfitters rack list:
	say "To buy an item, type buy (name here)";
	repeat through table of Zephyr Black Market Outfitters Rack:
		follow allowed entry;
		if rule failed:
			next;
		say "[link]Buy[as]buy [object entry][end link] ";
		say "[name entry] - [price entry] Creds";

Table of Zephyr Black Market Outfitters Rack
name	price	object	allowed
"armored lab coat"	130	armored lab coat	true rule
"zephyr riot helmet"	100	zephyr riot helmet	true rule
"zephyr riot chest piece"	150	zephyr riot chest piece	true rule
"zephyr riot arm guards"	100	zephyr riot arm guards	true rule
"zephyr riot shin guards"	100	zephyr riot shin guards	true rule
"zephyr riot shield"	120	zephyr riot shield	true rule
]

[Table of Zephyr Black Market Catalogue
"canine dildo"	350	canine dildo	true rule
"egg vibrator"	350	egg vibrator	true rule
"push button vibrator"	push button vibrator	true rule
"pocket pussy"	275	pocket pussy	true rule
"strap-on"	550	strap-on	true rule
"equine dildo"	100 equine dildo	true rule
"vibrator wand"	350	vibrator wand	true rule

This is the true rule:
rule succeeds;
]
Section 4 - Events

after going to Zephyr Storeroom while HP of Barrett is 0:
	if "stealthy" is listed in feats of player:
		say "     Wanting to find out what is on the other side of the door, you watch Larissa, waiting for the receptionist to turn away and give you a chance to get inside. After a few minutes, a window of opportunity arises. Larissa appears to be completely consumed with some documents on the desk, and you decide to make use of this opening. Drawing from your nanite enhanced reflexes and embracing the inner ambush predator instincts that you have gained, you stealthily move towards the door with both speed and grace, like a shadow. Wrapping your hand around the handle, you quickly pull the door open and slide inside, softly tugging the door close before anyone can be the wiser. Gently placing your ear to the door, you listen intently for any sound that Larissa might have seen you, but you hear nothing but silence. Feeling a little more certain that you had made it in without being noticed, you turn around to take in your surroundings.";
		say "     It appears to be a warehouse of sorts, with huge crates and containers littering the floors and shelves. Truth be told, you were expecting some little shoddy office or something, not a two story room. Moving closer to one of the containers, you are about to lift the lid when you hear a booming voice come from off to the side. 'Hey! What the fuck do you think you're doing in here?!' Quickly turning to face the direction the voice is coming from, you prepare yourself for a fight. The man before you is huge, and while he looks like a completely human hispanic man, he is still well over six feet tall. The first thing that you take in to gauge him is his age and build. He appears to be in his forties, and while at first he seems to be a heavyset man, you quickly think different as he gets ready for a fight as well, flexing a bit and cracking his knuckles.";
		WaitLineBreak;
		say "     The two of you begin to have a stare off, neither of you looking away from each other. His green eyes, while beautiful, have a fire in them, almost like this man was born to fight. Cracking his neck, the man eventually relaxes a bit. 'So, I take it you planned on sneaking in and running off with some stuff? Well that's not gonna be happening, and if you try, well, I will just pummel you into the ground, tie you up, and leave you outside for the natives to play with, capisce?' You nod your head in understanding and relax your own body. 'Now, the name's Barret, and this is one of the Zephyr storerooms, just in case you hadn't already figured that bit out. It's my job to move this shit around in here, but most of the stuff that makes its way inside is eventually thrown out, so I have a deal for you, if you're interested that is?' Instantly, you feel a bit wary of what kind of deal he wants to make, but ask him to make his offer anyway.";
		say "     'It's simple really, you can have anything in here you want, but your gonna pay me for it.' Opening your mouth to ask him why he is willing to do this, he quickly silences you. 'No questions asked. I ain't asking why you want this stuff, you ain't asking why I'm selling it.' You nod your head, letting the man know that you agree to his terms. 'Right, well I don't have a lot to offer right now, but that will change. Basically, the more shit they shove in here, the more you can get your mitts on.' Turning his back to you, Barret makes his way over to his desk. 'You just come see me when you want something, got it?' Well this little venture didn't go exactly how you planned, but at least it seems that you got something out of it. Maybe this place will have something you need.";
		now HP of Barrett is 1;
	else:
		say "     Wanting to find out what is on the other side of the door, you watch Larissa, waiting for the receptionist to turn away and give you a chance to get inside. After a few minutes, a window of opportunity arises. Larissa appears to be completely consumed with some documents on the desk, and you decide to make use of this opening. Trying to be as sneaky as possible, you edge closer to the door and reach out, taking the handle in your grip. 'What exactly do you think you're doing?' Turning your head quickly, you see Larissa looking at you with a single eyebrow raised. 'Can't you read what the door says? Employees only, and since you aren't to my knowledge working for Zephyr, that means you can't go in there.' Retracting your hand, you attempt to act as if you hadn't looked at the sign on the door. While the receptionist seems a bit annoyed, Larissa quickly goes back to work and paying you no mind. If you want to get in this door, you're going to have to find a way to become more [bold type]stealthy[roman type].";

Black Market ends here.
