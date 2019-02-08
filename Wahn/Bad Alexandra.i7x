Version 1 of Bad Alexandra by Wahn begins here.
[ Originally authored by Stripes                    ]
[ Version 1 - Separation from Good Alexandra        ]

[ HP of Alexandra                                   ]
[ 0 = still roaming                                 ]
[ 1-49 = Bad Alexandra                              ]
[ 1 = At bunker, no talk                            ]
[ 2 = At bunker, talk                               ]
[ 3 = First pregnant                                ]
[ 4 = Gave birth                                    ]
[ 5 = Preggers again                                ]
[ 50+ = Good Alexandra                              ]
[ 50 = At police station, no visit                  ]
[ 51 = Been to police station                       ]
[ 52 = Talked                                       ]
[ 53 = Supply request: food/water needed            ]
[ 54 = Food given/water needed                      ]
[ 55 = Water given/food needed                      ]
[ 56 = Both given                                   ]
[ 57 = Brought in a survivor (Jimmy)                ]
[ 58 = Medical supplies (and Paula?)                ]
[** 59 = values now unused                          ]
[** 60 = values now unused                          ]
[ 61 = Survivor Group event activated               ]
[ 62 = Survivors waiting                            ]
[ 63 = Survivors rescued                            ]
[ 64 = Unsuccessful Automaton attempt               ]
[ 65 = Master Mind captured                         ]
[ 66 = Sex w/Good Alexandra                         ]
[ 67 = Map Reward                                   ]
[ 68 = Automaton encounter                          ]
[ 69 = New Lead - Microchip Factory                 ]
[ 70 = Factory visit done                           ]

[ lust of Alexandra                                 ]
[ 0 = not pregnant                                  ]
[ 1-12 = lightly pregnant                           ]
[ 13-24 = plumply pregnant                          ]
[ if ( HP of Alexandra is 3 and lust of Alexandra > 12 ) or HP of Alexandra > 3 = bigger breasts ]

[ libido of Alexandra                               ]
[ number of offspring                               ]

[ level of Alexandra                                ]
[ Alexandra + Fang                                  ]
[ 0 = no contact                                    ]
[ 1 = unshared                                      ]
[ 2 = shared                                        ]

[ XP of Alexandra                                   ]
[ turn when both Fang and Alexandra are determined to be present]

[ lastdobiemess                                     ]
[ 0 = no sex                                        ]
[ 1 = fucked pussy                                  ]
[ 2 = anal                                          ]
[ 3 = oral                                          ]
[ 4 = cunn                                          ]
[ 5 = licked her                                    ]
[ 6 = tits                                          ]
[ 7 = 69                                            ]
[ 88 = Brutus oral                                  ]
[ 89 = Brutus cunn                                  ]
[ 90 = Brutus                                       ]
[ 91 = Carl oral                                    ]
[ 92 = Carl cunn                                    ]
[ 93 = Carl                                         ]
[ 94 = Korvin oral                                  ]
[ 95 = Korvin cunn                                  ]
[ 96 = Korvin                                       ]
[ 97 = Fang + oral                                  ]
[ 98 = Fang + cunn                                  ]
[ 99 = Fang                                         ]

[ AlexandraPupDaddy                                 ]
[ 0 = no pups                                       ]
[ 1 = player                                        ]
[ 2 = Fang                                          ]
[ 3 = Korvin                                        ]
[ 4 = Carl                                          ]
[ 5 = Brutus                                        ]

"Adds Alexandra the doberwoman as an NPC to the Flexible Survival game"

Section 0 - Basic Structure

Table of GameCharacterIDs (continued)
object	name
Alexandra	"Alexandra"

Alexandra is a woman. Alexandra is in Police Station Twelve.
ScaleValue of Alexandra is 3. [human sized]
Cocks of Alexandra is 0.
Cock Length of Alexandra is 9.
Cock Width of Alexandra is 2.
Testes of Alexandra is 0.
Cunts of Alexandra is 1.
Cunt Length of Alexandra is 10.
Cunt Width of Alexandra is 3.
Breasts of Alexandra is 2. [2 nipples]
Breast Size of Alexandra is 3.
[Basic Interaction states as of game start]
PlayerMet of Alexandra is false.
PlayerRomanced of Alexandra is false.
PlayerFriended of Alexandra is false.
PlayerControlled of Alexandra is false.
PlayerFucked of Alexandra is false.
OralVirgin of Alexandra is false.
Virgin of Alexandra is false.
AnalVirgin of Alexandra is true.
PenileVirgin of Alexandra is true.
SexuallyExperienced of Alexandra is true.
AlexandraCreampieCount is a number that varies.
AlexandraPregCount is a number that varies.
AlexandraGrowingPups is a number that varies.
The description of Alexandra is "[if HP of Alexandra < 50][alexandradesc_bg][else][alexandradesc_gg][end if]".
The conversation of Alexandra is { "Yes Boss!" }.
AlexandraBackstory is a number that varies.
AlexandraNPC is a list of numbers that varies.
Alexandracoffee is a truth state that varies. Alexandracoffee is usually false.
lastPolicePatrol is a number that varies. lastPolicePatrol is usually 255.
alexandragshep1 is a truth state that varies. alexandragshep1 is usually false.
dobieanal is a truth state that varies. dobieanal is usually false.
lastdobiemess is a number that varies.
lastAlexandraPast is a number that varies. lastAlexandraPast is usually 255.
AlexandraPupDaddy is a number that varies. [who knocked her up]
AlexandraPlayerPups is a number that varies.
AlexandraFangPups is a number that varies.
AlexandraKorvinPups is a number that varies.
AlexandraCarlPups is a number that varies.
AlexandraBrutusPups is a number that varies.

to say AlexandraPupDaddyName: [to use in text]
	if AlexandraPupDaddy is 1:
		say "you have ";
	else if AlexandraPupDaddy is 2:
		say "Fang has ";
	else if AlexandraPupDaddy is 3:
		say "Korvin has ";
	else if AlexandraPupDaddy is 4:
		say "Carl has ";
	else if AlexandraPupDaddy is 4:
		say "Brutus has ";

[See Doberman file for collecting Alexandra.]

the scent of Alexandra is "[if HP of Alexandra < 50][alexandrascent_bg][else][alexandrascent_gg][end if]".

Instead of conversing the Alexandra:
	say "[if HP of Alexandra < 50][alexandratalk_bg][else][alexandratalk_gg][end if]";

the fuckscene of Alexandra is "[if HP of Alexandra < 50][sexwithAlexandra_bg][else][sexwithAlexandra_gg][end if]";

Section 1 - Alexandra the Bad Girl

to say alexandrascent_bg:
	say "The Doberman smells of lust and sex, her scent intermixed with yours[if level of Alexandra is 2] and Fang's[end if].";

to say alexandradesc_bg:
	if debugactive is 1:
		say "[badAlexandra_debug]";
	[basic description]
	if HP of Alexandra < 3 or HP of Alexandra is 4: [bad Alexandra, never been pregnant or post-pregnancy]
		if graphics is true:
			project the figure of Alexandra_clothed_icon;
		say "     The Doberman female has divested herself of her cop uniform and instead picked up a leather jacket and ripped jeans more suitable for the bad dog she has become. ";
	else if HP of Alexandra is 3 or HP of Alexandra is 5: [bad Alexandra, pregnant]
		if lust of Alexandra < 13: [slightly pregnant]
			if graphics is true:
				project the figure of Alexandra_clothed_preg_icon;
			say "The Doberman female has divested herself of her cop uniform and instead picked up a leather jacket and ripped jeans more suitable for the bad dog she has become. She has a strong, tough physique while still having a womanly figure. Her tummy is looking a little more rounded and full after recent fucking ";
		else: [visibly pregnant]
			say "     The Doberman female has divested herself of her cop uniform and instead picked up a leather jacket and ripped jeans more suitable for the bad dog she has become. She has a strong, tough physique while still having a womanly figure. Her tummy is ";
			if AlexandraGrowingPups < 3: [2 pups]
				say "noticeably big ";
			else if AlexandraGrowingPups < 5: [3+4 pups]
				say "quite large ";
			else: [5+6 pups]
				say "almost monstrously large ";
			say "and round now with her progressing pregnancy after the recent fucking ";
		[puppy father]
		say "[AlexandraPupDaddyName]given her, knocking the breeding bitch up with a litter of pups. ";
		if AlexandraPupDaddy is 2: [Fang]
			say "You're curious if they will be half-wolf or mostly doberman. ";
		else if AlexandraPupDaddy is 3: [Korvin]
			say "You're curious if they will be half-German shepherd or mostly doberman. ";
		else if AlexandraPupDaddy is 4: [Carl]
			say "You're curious if they will be half-husky or mostly doberman. ";
		else if AlexandraPupDaddy is 5: [Brutus]
			say "You're curious if they will show any of their demonic heritage or be all doberman. ";
		[jeans status]
		if lust of Alexandra < 13: [slightly pregnant]
			say "She's been needing to leave her jeans unbuttoned lately, to allow her growing belly enough space. ";
		else: [visibly pregnant]
			say "She's found a larger pair of jeans to wear, but still has to leave them unbuttoned to cope with her gravid belly. ";
	[signs of recent fucking]
	if lastfuck of Alexandra - turns < 5:
		if lastdobiemess is 1: [pussy fuck by player]
			say "The crotch of her jeans are still damp from the recent fucking she was given. ";
		else if lastdobiemess is 2: [ass fuck by player]
			say "There is a damp stain on the ass of her jeans under her short tail from the recent fucking you gave the dobie's backside. ";
		else if ( lastdobiemess is 5 or lastdobiemess is 7 ): [player licked her]
			say "The crotch of her jeans is wet with the excess juices from her recent climax. ";
		else if lastdobiemess is 88 or lastdobiemess is 89 or lastdobiemess is 90: [Brutus]
			say "The crotch of her jeans is wet with the stains of recent sex that smell strongly of demon brute. ";
		else if lastdobiemess is 91 or lastdobiemess is 92 or lastdobiemess is 93: [Carl]
			say "The crotch of her jeans is wet with the stains of recent sex that smell strongly of husky. ";
		else if lastdobiemess is 94 or lastdobiemess is 95 or lastdobiemess is 96: [Korvin]
			say "The crotch of her jeans is wet with the stains of recent sex that smell strongly of German shepherd. ";
		else if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99: [Fang]
			say "The crotch of her jeans is wet with the stains of recent sex that smell strongly of wolf. ";
	[boobs]
	if HP of Alexandra < 3: [never been pregnant]
		say "She has a strong, tough physique while still having a womanly figure with an average sized pair of breasts and a firm ass. ";
	else if HP of Alexandra is 3 or HP of Alexandra is 5: [pregnant right now]
		say "She has a strong, tough physique while still having a womanly figure and a firm ass. Her breasts are visibly larger than when she first arrived, having swollen with her pregnancy. ";
		if "Broodmother" is listed in traits of Alexandra:
			say "The two extra pairs of nipples beneath have grown a little in turn, now forming small-ish bumps like extra breasts. They are a visible reminder that the dobie bitch has become a broodmother to numerous pups, and is ready for the next litter. ";
	else: [been pregnant before - bigger tits]
		say "She has a strong, tough physique while still having a womanly figure and a firm ass. After her pregnancy, her breasts have gotten a little bigger and are even less covered by the open leather jacket than before. ";
		if "Broodmother" is listed in traits of Alexandra:
			say "Additionally, two pairs of extra nipples are visible in a row over her stomach, a visible reminder that the dobie bitch has become a broodmother to numerous pups. ";
	if lastfuck of Alexandra - turns < 5 and lastdobiemess is 6: [recent BJ]
		say "The fur on her chest and breasts is spiked and messy with your semen still clinging to her fur. ";
	[head description]
	say "Her two-tone black and tan fur is a little disheveled and scruffy, while the somewhat longer hair on her head has been dyed bright red. ";
	[behavior description]
	if HP of Alexandra < 3 or HP of Alexandra is 4: [bad Alexandra, never been pregnant or post-pregnancy]
		say "No longer restrained by her earlier hang-ups, she's not suppressing her lustful urges anymore and can often be seen masturbating or even performing self-cunnilingus[if Fang is booked] when not on duty[end if]. ";
	else: [pregnant]
		say "No longer restrained by her earlier hang-ups, she's not suppressing her lustful urges anymore and can often be seen playing with her breasts or rubbing her bulging belly[if Fang is booked] when not on duty[end if]. ";
	[signs of recent oral]
	if lastfuck of Alexandra - turns < 5:
		if (lastdobiemess is 3 or lastdobiemess is 6 or lastdobiemess is 97):
			say "The dobie's muzzle is streaked with dry patches of your cum that she's occasionally licks at. ";
		else if (lastdobiemess is 88):
			say "The dobie's muzzle is streaked with dry patches of Brutus's cum that she's occasionally licks at. ";
		else if (lastdobiemess is 91):
			say "The dobie's muzzle is streaked with dry patches of Carl's cum that she's occasionally licks at. ";
		else if (lastdobiemess is 94):
			say "The dobie's muzzle is streaked with dry patches of Korvin's cum that she's occasionally licks at. ";
		else if (lastdobiemess is 4 or lastdobiemess is 98 ):
			say "The dobie's muzzle fur is rough and sticky with the lingering traces of your feminine juices across it. ";
		else if lastdobiemess is 7:
			say "The dobie's muzzle fur is rough and sticky with the lingering traces of when you last had that muzzle between your legs. ";
	if level of Alexandra is 1:
		say "She's found herself a black choker to wear in imitation of a dog collar to further show herself to be your fucktoy pet bitch. ";
	LineBreak;
	say "     Speaking of her duty, she's stationed herself by the library entrance, acting as your rough and tough guard to the safe haven inside[if HP of Alexandra is 3 or HP of Alexandra is 5], not letting her current state hold her back[end if][if Fang is booked]. She shares this duty with Fang, alternating with the wolf[end if]. Having kept her nightstick, it hangs at the ready for those who would disturb the safety of your hideout.";
	if HP of Alexandra > 3:
		say "     Alexandra's [libido of Alexandra] pups are younger Dobermans, having matured quickly to be roughly in their teens[if libido of Alexandra > 4]. They are a mix of boys and girls among the litters[end if]. They are a rough and rambunctious lot who hang out in one of the side rooms most of the time. They do go outside on occasion to find some trouble to get into. They do seem fairly self-sufficient though.";

to say alexandratalk_bg:
	if debugactive is 1:
		say "[badAlexandra_debug]";
	if graphics is true:
		project the figure of Alexandra_face_icon;
	if HP of Alexandra is 1: [first talk]
		say "     The Doberman female has obtained a leather jacket and some torn jeans for herself and swapped them for her uniform. She looks around the library and pokes her head into the bunker. 'This is a pretty nice setup you've got for yourself here, boss,' she says. 'I can see that following you was definitely the right choice. Soon there ain't going to be any law except what we make for ourselves and it's about time I figured that out. So no more Officer Friedrich. It's just Alexandra the bad dog. Mmm... it feels so good to be a bad dog,' she says with a moan, having stuffed a paw into her jeans. She rubs herself up against you. 'As promised, I'll be your slutty doggy bitch, boss. I'm looking forward to it,' she says with a slow lick across your cheek as she fingers herself all the more.";
		now HP of Alexandra is 2; [first talk done]
	else if HP of Alexandra is 2:
		say "     As you approach, Alexandra gives you a provocative smile and [one of]asks, 'Are you going to use your slutty bitch again soon?'[or]says, 'I've been having beating up the strays who wander by. It's much more fun dealing with them now that I'm willing to play with them afterwards.'[or]says, 'Thanks again for knocking some sense into me, boss. Otherwise I'd probably still be out there, being a stuffy goody-two-shoes instead of getting the best (and only) sex of my life.'[or]gives you a report on recent activity around the library while playing with her pussy.[or]growls, 'I hope something wanders by soon. I'm in the mood to bust some heads.' Her paws wander up and down over her nightstick as she does so.[at random]";
	else if HP of Alexandra is 3: [pregnant]
		if lust of Alexandra > 12: [visibly pregnant]
			say "     As you approach, Alexandra gives you a provocative smile and [one of]says, 'It seems your naughty bitch has gotten herself knocked up, boss.'[or]says, 'Thanks again for knocking some sense into me, boss. Otherwise I'd probably still be out there, being a stuffy goody-two-shoes instead of getting the best (and only) sex of my life.'[or]gives you a report on recent activity around the library while rubbing her swollen breasts, milk leaking from her nipples.[or]moans, 'I like feeling full like this,' running her paws over her enlarged, pregnant belly.[or]says, 'It looks like I'm going to have some pups,' running her paws over her rounded belly with a shiver of excitement at the prospect.[or]says, 'It's a little strange getting so pregnant so fast, but I guess that's what makes me a breeder bitch, isn't it?'[at random]";
		else: [slightly pregnant]
			say "     As you approach, Alexandra gives you a provocative smile and [one of]asks, 'Are you going to use your slutty bitch again soon?'[or]says, 'I've been having beating up the strays who wander by. It's much more fun dealing with them now that I'm no longer a stupid do-gooder and play with them afterwards.'[or]comments, 'Thanks again for knocking some sense into me, boss. Otherwise I'd probably still be out there, being a stuffy goody-two-shoes instead of getting the best (and only) sex of my life.'[or]gives you a report on recent activity around the library while rubbing her breasts.[or]growls, 'I hope something wanders by soon. I'm in the mood to bust some heads.' Her paws wander up and down over her nightstick as she does so.[at random]";
	else if HP of Alexandra is 4: [between pregnancies]
		say "     As you approach, Alexandra gives you a provocative smile and [one of]asks, 'Are you going to use your slutty bitch again soon?'[or]says, 'I've been having beating up the strays who wander by. It's much more fun dealing with them now that I'm no longer a stupid do-gooder and play with them afterwards.'[or]says, 'It was pretty fun getting knocked up and having some pups.'[or]says, 'It was really exciting getting used like a breeder bitch. I'm looking forward to doing it again and again.'[or]comments, 'Thanks again for knocking some sense into me, boss. Otherwise I'd probably still be out there, being a stuffy goody-two-shoes instead of getting the best (and only) sex of my life.'[or]gives you a report on recent activity around the library while playing with her pussy.[or]boasts, 'My pups are a bunch of rough hounds like their bitch mother.'[or]growls, 'I hope something wanders by soon. I'm in the mood to bust some heads.' Her paws wander up and down over her nightstick as she does so.[or]says, 'My pups can be a bit of a handful, but it's nothing a good knock on the head doesn't fix.'[or]says, 'I hope you'll breed another litter in your bad doggy bitch soon.'[at random]";
	else if HP of Alexandra is 5:
		if lust of Alexandra > 12: [visibly pregnant]
			say "     As you approach, Alexandra gives you a provocative smile and [one of]says, 'It seems your naughty bitch has gotten herself knocked up, boss.'[or]comments, 'Thanks again for knocking some sense into me, boss. Otherwise I'd probably still be out there, being a stuffy goody-two-shoes instead of getting the best (and only) sex of my life.'[or]gives you a report on recent activity around the library while rubbing her swollen breasts, milk leaking from her nipples.[or]moans, 'I like feeling full like this,' running her paws over her enlarged, pregnant belly.[or]says, 'It looks like I'm going to have some more pups,' running her paws over her rounded belly with a shiver of excitement at the prospect.[or]says, 'My pups are a bunch of rough hounds like their bitch mother.'[or]says, 'It was a little strange at first, but I'm really looking forward to giving birth to more pups.'[or]says, 'My pups can be a bit of a handful, but it's nothing a good knock on the head doesn't fix.'[or]says, 'I'm really enjoying being bred like the naughty bitch I am.' Moaning, she rubs her rounded belly as best as she can.[at random]";
		else: [slightly pregnant]
			say "     As you approach, Alexandra gives you a provocative smile and [one of]asks, 'Are you going to use your slutty bitch again soon?'[or]says, 'I've been having beating up the strays who wander by. It's much more fun dealing with them now that I'm no longer a stupid do-gooder and play with them afterwards.'[or]says, 'It was pretty fun getting knocked up and having some pups.'[or]says, 'It was really exciting getting used like a breeder bitch. I'm looking forward to doing it again and again.'[or]says, 'Thanks again for knocking some sense into me, boss. Otherwise I'd probably still be out there, being a stuffy goody-two-shoes instead of getting the best (and only) sex of my life.'[or]gives you a report on recent activity around the library while rubbing her breasts.[or]says, 'My pups are a bunch of rough hounds like their bitch mother.'[or]comments, 'My pups can be a bit of a handful, but it's nothing a good knock on the head doesn't fix.'[or]growls, 'I hope something wanders by soon. I'm in the mood to bust some heads.' Her paws wander up and down over her nightstick as she does so.[or]rubs her somewhat rounded belly. 'Mmm... got another litter on the way, boss,' she says with a smile.[at random]";
	say "[BadAlexandraTalkMenu]";

to say BadAlexandraTalkMenu:
	UpdateAlexandraNPCChat;
	LineBreak;
	say "     What do you want to talk with Alexandra about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if HP of Alexandra is 2 or HP of Alexandra is 4: [not pregnant right now]
		choose a blank row in table of fucking options;
		now title entry is "Contraception";
		now sortorder entry is 1;
		now description entry is "Precautions against pregnancy";
	[]
	if "Fertility Treatment Option" is listed in Traits of Alexandra:
		choose a blank row in table of fucking options;
		now title entry is "Fertility Treatments";
		now sortorder entry is 2;
		now description entry is "Bring up that you want to go to the pediatrics clinic with her";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Her family";
	now sortorder entry is 10;
	now description entry is "Ask about Alexandra's family";
	[]
	if AlexandraBackstory > 0:
		choose a blank row in table of fucking options;
		now title entry is "Growing up and her adult life";
		now sortorder entry is 11;
		now description entry is "Ask about Alexandra's life";
	[]
	if AlexandraNPC is not empty:
		choose a blank row in table of fucking options;
		now title entry is "Others in the library";
		now sortorder entry is 20;
		now description entry is "Ask what Alexandra thinks of other inhabitants of the Grey Abbey Library";
	[]
	if Sarah is bunkered:
		choose a blank row in table of fucking options;
		now title entry is "Sarah the husky";
		now sortorder entry is 21;
		now description entry is "Chat about the other anthro canine";
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
				if (nam is "Contraception"):
					say "[AlexandraContraceptionTalk]";
				if (nam is "Fertility Treatments"):
					say "[AlexandraFertilityTrip]";
				if (nam is "Her family"):
					say "[AlexandraBackstory1]";
				if (nam is "Growing up and her adult life"):
					say "[AlexandraBackstory2]";
				if (nam is "Others in the library"):
					say "[AlexandraNPCChat]";
				if (nam is "Sarah the husky"):
					say "[A_SarahTalk]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the doberwoman bitch and tell her that you'll have to continue your conversation at another time. She nods and turns her attention back to guarding the entrance.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AlexandraContraceptionTalk:
	if "Contraception" is listed in Traits of Alexandra: [she already is taking em]
		say "     'Changed your mind, boss? Fine by me, and Medea will be oh so happy to set me right again. That girl is just a little baby-crazy, I tell ya,' Alexandra says in a happy tone and saunters up close to you, giving you a wet doggy kiss. After that, she slips out of the building right away, to return about an hour later with an eager expression on her face. She looks at you happily and licks the sides of her muzzle, apparently eager to get started on a litter of puppies soon.'";
		remove "Contraception" from Traits of Alexandra;
	else if libido of Alexandra > 20: [more than 20 puppies]
		say "     As you bring up the fact that you want her to take some precautions against further pregnancies, Alexandra crosses her arms in front of her bare chest and gives you a hard stare. Her lips peel back from the impressive set of teeth in her muzzle, with the doberwoman growling out, 'Are you trying to be funny? Fuck no, you bastard! I like having puppies! And if you wanna stop me from having more, I might just need to go find some other place for me and my pack.' The steely gaze of her eyes tells you that she is completely serious about this, so you back off and tell her to forget you said anything. Watching the former cop walk away from you, checking on her offspring before she gets back to her usual guard post, you remind yourself that you shouldn't try to get between this bitch and her current (and future) puppies.";
	else:
		say "     As you bring up the fact that you want her to take some precautions against [if AlexandraPregCount > 0]further[else]possible[end if] pregnancies, Alexandra lets out a taunting bark. ";
		if libido of Alexandra > 0: [Alexandra has offspring]
			if libido of Alexandra > 7: [7+ pups]
				say "'What? Another litter more than you can handle?' ";
			else if libido of Alexandra is 6:
				say "'Half a dozen, eh? That enough of a pack for your taste?'";
			else if libido of Alexandra > 2:
				say "'Not even half a dozen. Do you really want to let the pups grow up without enough playmates?'";
			else if libido of Alexandra is 2:
				say "'Only two? Boss, canines are pack animals. Are you trying to make my kids loners?'";
			say "she asks, one eyebrow raised as she looks at you. The anthro canine keeps her muzzle shut, but judging from her expression, she's inferring that she's the one who has all the work with the puppies - bearing, suckling and parenting them. Being the tough bitch that she is, she seems to be almost daring you to allow letting her get pregnant. After a little moment of silence, Alexandra then shrugs and adds in a neutral tone, 'But hey, you're the boss of this bad-ass bitch. If you don't want any further puppies, that's your decision.'";
			say "     Crossing her arms in front of her chest, the former cop goes on to say, 'I hope you realize that the usual stuff isn't gonna work on someone like me, and [if cock length of player > 11]I don't think anyone even made condoms in your size! What would they even have marketed them as? Bitchbreakers? [else]condoms aren't really my thing, even if we could find [']em. [end if]But hey, I know someone who can fix me up. A doctor, holed up in the pediatrics clinic not too far from here. Her name's Medea and she'll surely be able to cook something up. Want me to pay her a visit? I'll find my own way there and back, no need for you to come along.'";
			say "     [bold type]Send Alexandra to get contraception?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Nod to your dobie bitch and avoid further pregnancies.";
			say "     ([link]N[as]n[end link]) - Nah, you've changed your mind.";
			if player consents:
				LineBreak;
				say "     Telling Alexandra that you have made up your mind, you order her to get herself squared away properly. 'Fine, I'll get it done, boss,' she barks back at you, somewhat of a sharp undertone in her voice. With that said, she strides over to the library entrance and slips out of the building. It's not hard to guess that she was actually looking forward to further puppies growing in her, but she gave in to your will as her master. About an hour later, the dobie comes back and somewhat sullenly takes her usual spot of guarding the entrance.";
				add "Contraception" to Traits of Alexandra;
			else:
				LineBreak;
				say "     As you tell her that you've decided against contraception after all, Alexandra gives you a broad grin. 'Guess that means it's time for some hard banging soon, eh? Time to breed me some more!' She wiggles her breasts enticingly at you, not at all sorry that she'll still be fertile.";
				wait for any key;
				say "[BadAlexandraTalkMenu]"; [looping back for more talk]
		else if player is male: [male/herm player]
			if AlexandraCreampieCount > 5: [player came in her plenty]
				say "'After pumping me full of cum all those times, now you wanna let me get contraception? Seems I don't even need it if you're shooting blanks,' she throws at your face, literally daring you to take her and prove otherwise.";
			else if AlexandraCreampieCount > 2: [player came in her 3-5 times]
				say "'Why the sudden change of pace, boss? You've creampied me plenty before. Worried you're shooting blanks and wanna calm your nerves? Less scary if the bitch is barren anyways?' Raising one eyebrow to give you a long look, Alexandra presses herself against your side and adds, 'How about we just try again instead? A stud like you will succeed the next time, I'm sure.' Spurring you on, the dobie wiggles her breasts and licks the side of your neck, eager to have sex with you instead of having to stop her chances at getting pregnant.";
			else if AlexandraCreampieCount > 0: [player came in her 1-2 times]
				say "'Aww, you wanna play it safe now? A pity, I liked you taking me all rough and tumble, with not a care in the world. A little risk makes things more exciting, you know.' With that said, Alexandra presses herself against your side and adds, 'Just one more time, take a risk!' Spurring you on, the dobie wiggles her breasts and licks the side of your neck, eager to have sex with you instead of having to stop her chances at getting pregnant.";
			else: [player never came in her]
				say "'Aww, you wanna play it safe now? And I thought you were a real man, with not a care in the world. A little risk makes things more exciting, you know.' With that said, Alexandra presses herself against your side and adds, 'Just forget about it and fuck me, right here and now! Take a risk!' Spurring you on, the dobie wiggles her breasts and licks the side of your neck, eager to have sex with you instead of having to stop her chances at getting pregnant.";
			say "[AlexandraCCounteroffer]";
		else: [female/neuter player]
			say "'Really? You don't even have a dick but want to put me on contraceptives? Someone's sure worried about the competition. With how things are going these days, how about you just [']man up['] and fuck some puppies into me instead? That'll make sure no one else can.' After trying to spur you on with her words, the doberwoman watches you quietly for a short moment, then shrugs her shoulders. 'But hey, you're the boss. What you say goes.' Crossing her arms in front of her chest, the former cop goes on to say, 'I hope you realize that the usual stuff isn't gonna work on someone like me, and condoms aren't really my thing, even if we could find [']em. But hey, I know someone who can fix me up. A doctor, holed up in the pediatrics clinic not too far from here. Her name's Medea and she'll surely be able to cook something up. Want me to pay her a visit? I'll find my own way there and back, no need for you to come along.'";
			say "     [bold type]Send Alexandra to get contraception?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Nod to your dobie bitch and avoid further pregnancies.";
			say "     ([link]N[as]n[end link]) - Nah, you've changed your mind.";
			if player consents:
				LineBreak;
				say "     Telling Alexandra that you have made up your mind, you order her to get herself squared away properly. 'Fine, I'll get it done, boss,' she barks back at you, somewhat of a sharp undertone in her voice. With that said, she strides over to the library entrance and slips out of the building. It's not hard to guess that she was actually looking forward to further puppies growing in her, but she gave in to your will as her master. About an hour later, the dobie comes back and somewhat sullenly takes her usual spot of guarding the entrance.";
				add "Contraception" to Traits of Alexandra;
			else:
				LineBreak;
				say "     As you tell her that you've decided against contraception after all, Alexandra gives you a broad grin. 'Guess that means it's time for some hard banging soon, eh? Getting me bred and full with a litter of pups?' She wiggles her breasts enticingly at you, not at all sorry that she'll still be fertile.";
				wait for any key;
				say "[BadAlexandraTalkMenu]"; [looping back for more talk]


to say AlexandraCCounteroffer:
	say "     [bold type]What do you do?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Fuck the bitch, right here and now!";
	say "     ([link]N[as]n[end link]) - Make her obey.";
	if player consents:
		LineBreak;
		say "[badAlexandraSex]";
	else:
		LineBreak;
		say "     Telling Alexandra that you have made up your mind, the bitch crosses her arms in a sulky fashion. 'I hope you realize that the usual stuff isn't gonna work on someone like me, and condoms aren't really my thing, even if we could find [']em. But hey, I know someone who can fix me up. A doctor, holed up in the pediatrics clinic not too far from here. Her name's Medea and she'll surely be able to cook something up. I'll find my own way there and back, no need for you to come along,' she says with a somewhat sharp undertone to her voice, then strides over to the library entrance and slips out of the building. It's not hard to guess that she was actually looking forward to [if libido of Alexandra > 0]further [end if]puppies growing in her, but she gave in to your will as her master. About an hour later, the dobie comes back and somewhat sullenly takes her usual spot of guarding the entrance.";
		add "Contraception" to Traits of Alexandra;

to say AlexandraFertilityTrip: [taking her to Medea for fertility treatments]
	if HP of Alexandra is 3 or HP of Alexandra is 5: [pregnant right now]
		say "     As you bring up the topic of getting Alexandra treatments to increase her fertility, the doberwoman gives an amused bark and shakes her head in disbelief. 'So you're really gonna make me do it? Damn boss, you really like your girls always pregnant and ready to please, eh? Though that's something that kinda shoots your plan in the foot right now. Messing with my bits down south isn't exactly the greatest idea while I'm already pregnant. It'll have to wait till this litter has been born.'";
	else if "Contraception" is listed in Traits of Alexandra:
		say "     As you bring up the topic of getting Alexandra treatments to increase her fertility, the doberwoman gives a bemused bark and shakes her head in disbelief. 'Damn boss, you really can't make up your mind, can you? Remember that little trip you made me take to avoid getting pregnant? But fine, if that's what you want, I'll go ask if she can undo it. I bet it takes a little while before things are back to normal though, so your plans for a puppy mill will have to wait.'";
		say "     [bold type]Let her leave and be made fertile again?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Nod to Alexandra and tell her to go ahead.";
		say "     ([link]N[as]n[end link]) - Nah, you changed your mind. Again.";
		if player consents:
			LineBreak;
			say "     Alexandra takes the command well enough and says with a chuckle, 'Medea will be oh so happy to set me right again. That girl is just a little baby-crazy, I tell ya.' Then she up close to you, giving you a wet doggy kiss and goes to slips out of the building. About an hour later, the doberwoman returns with an eager expression on her face. She looks at you happily and licks the sides of her muzzle, apparently eager to get started on a litter of puppies soon.'";
			remove "Contraception" from Traits of Alexandra;
		else:
			LineBreak;
			say "     As you tell her to forget about it, the anthro dobie lets out an annoyed grunt. 'Make up your mind, will ya? You know where to find me if you ever do.' With that said, Alexandra stalks off, taking position at her usual guard-post.";
	else:
		say "     As you bring up the topic of getting Alexandra treatments to increase her fertility, the doberwoman gives an amused bark and shakes her head in disbelief. 'So you're really gonna make me do it? Damn boss, you really like your girls always pregnant and ready to please, eh? Fine by me, as long as I'm the top bitch!' You give her a grin and nod, then draw the former cop closer and give her a forceful kiss that escalates into a little make-out session. For a little while, you're perfectly happy to just let your hands roam over the body of the woman you claimed as yours and tongue-wrestling with her, until Alexandra eventually pulls back far enough to catch her breath and say, 'Didn't you want me to get a shot before you bend me over for another round? Not that I mind...'";
		say "     Reminded of the intended trip to the pediatrics clinic, you grin at your horny bitch and reach out to give her breasts a little grope, then nod towards the door and tell her to get moving. With Alexandra by your side, the two of you step through the large entrance doors of the Grey Abbey Library, setting out towards the south. Mounds of trash, scattered articles of clothing and countless vandalized cars dominate the scenery along the road as you wander along, thankfully not encountering all that many creatures along the way. Those that do come into sight are quickly chased away by Alexandra, who steps forward and meets them head on, as if daring anyone to challenge her. Seems like she's got somewhat of a reputation in the streets close to the library by now.";
		WaitLineBreak;
		if HP of Doctor Medea is 0: [player doesn't know Medea]
			say "     A little while later, you arrive at the pediatrics clinic and enter through the smashed front door to enter the chaos of the lobby beyond. Someone did a number on the place, smashing everything in sight and even clawing the walls and ground, with patches of dried cum left everywhere too. 'Watch your step, boss,' Alexandra says in a casual tone, looking where she sets her paws and making her way towards a set of metal doors further in the back. 'I found this place a while ago when I was still doing patrols like a good little police bitch. Before you showed me what a waste of time that was. But I guess knowing my way around pays off no matter what.' Arriving at the doors, she gives them a solid rap with her knuckles and shouts, 'Oi Medea! It's me, open up!'";
			say "     You can hear keys jingling, then the door is unlocked from within. A green-scaled hand pushes it open towards you, and a female voice says, 'Welcome back Officer Friedr- oh?!' The humanoid lizard standing behind the door falls quiet as she sees Alexandra's new getup, from the ripped jeans to her open leather jacket and the dobie's openly presented breasts. 'I kinda changed careers, doc,' Alexandra barks out in a nonchalant tone and gives an amused grin at the surprise on the other woman's face. 'This is Doctor Medea,' she introduces the anthro lizard to you, followed by pointing to you and adding, 'This is my new boss[if player is not defaultnamed], [name of player][end if]. [SubjectProCap of player]'s running a puppy mill and wants me to produce as many as I can. Really be [PosAdj of player] breeding bitch.' From her tone and the way Alexandra's tail is wagging, you can see that she enjoys outlining the situation in the bluntest possible words, and watching Medea's eyes going wide as she does so.";
			WaitLineBreak;
			say "     'Well, I... I could do something for your pregnancy needs, I think. With the nanites in everyone these days, there are various medical options possible that weren't before,' Medea says, her tone being thoughtful as she thinks up a treatment for Alexandra. Then she catches herself and gives you a sidelong glance, followed by leaning closer to the doberwoman and asking in a quiet tone, 'Is this really what you want?' Alexandra lets out a rough chuckle and replies, 'Told ya, I'm the boss's bitch now. What [SubjectPro of player] says goes. It's not like I haven't popped out plenty of litters before.' Medea nods to her, apparently still somewhat shell-shocked from the situation. 'Okay then, I'll do it. You're a friend, so for you, I'll use my last dwindling supplies. If anyone else wants additional treatments,' the lizardwoman glances your way, 'they'll have to help me restock first.'";
			say "     With that said, the doctor leads your canine bitch into the back of the room, then pulls a curtain between them and you. Idly standing around and reading some posters about avoiding influenza out of sheer boredom, you hear some quiet talking, the clatter of drawers being opened and instruments being handled. A little while later, Doctor Medea steps out from behind the curtain and comes up to you. 'The procedure seems to have been a success, you can expect increased fertility as well as the chance of larger litters from your, er... bitch. Best wishes for the little ones, may they bring you much happiness.' She looks somewhat lost for further words, no doubt still finding it hard to line up her [']family doctor['] mindset with Alexandra's crude recounting of what you are doing with her. After a few moments of silence, Alexandra pulls the curtain fully aside, fully dressed in her jeans and leather jacket once more.";
			WaitLineBreak;
			say "     Thanking Medea for her help, Alexandra and you leave the clinic and step out on the street. While making your way back to the library, the dobie bitch gleefully drops comments like, 'So, what's the new production goal in this puppy factory?' or 'When do you wanna start a new litter?' or 'The expression on Medea's face was just too good.' When you soon arrive, Alexandra pulls you close for a kiss, then strolls off to her usual guard post with the words, 'I'll be waiting for you.'";
			now HP of Doctor Medea is 1; [player knows Medea]
		else: [player knows Medea]
			say "     A little while later, you arrive at the pediatrics clinic and enter through the smashed front door to enter the chaos of the lobby beyond. Knowing what to expect from your previous visit, you let your gaze sweep over the smashed furniture, clawing the walls and ground, as well as the numerous patches of dried cum left everywhere. Not too bad as camouflage for Medea; after all, who would think that anyone wanted to live in the back room to such devastation. Arriving at the doors, you knock and call out to the lizard doctor inside. You can hear keys jingling, then the door is unlocked from within. A green-scaled hand pushes it open towards you, and Medea says, 'Welcome back[if player is not defaultnamed] [name of player][end if], and you too, er - wait! Is that you, Officer Friedrich?' The humanoid lizard standing behind the door falls quiet as she sees Alexandra's new getup, from the ripped jeans to her open leather jacket and the dobie's openly presented breasts.";
			say "     'I kinda changed careers, doc,' Alexandra barks out in a nonchalant tone and gives an amused grin at the surprise on the other woman's face. Taking control of the situation once more, you clear your throat and explain to the lizard doctor that you want to have a large family, the bigger the better. And to do this, you obviously need your partner at her very best. 'Well, I... I could do something for your pregnancy needs, I think. With the nanites in everyone these days, there are various medical options possible that weren't before,' Medea says, her tone being thoughtful as she thinks up a treatment for Alexandra. ";
			WaitLineBreak;
			if medeaget < 3: [she's almost out of supplies]
				say "'Okay then, I'll do it. Officer Friedrich is a friend, so for her, I'll use my last dwindling supplies. If anyone else wants additional treatments,' the lizardwoman glances your way, 'they'll have to help me restock first.'";
			else:
				say "'Okay then, I'll do it. It's the least I can do after you helped me get those supplies'";
			say "     With that said, the doctor leads your canine bitch into the back of the room, then pulls a curtain between them and you. Idly standing around and reading some posters about avoiding influenza out of sheer boredom, you hear some quiet talking, the clatter of drawers being opened and instruments being handled. A little while later, Doctor Medea steps out from behind the curtain and comes up to you. 'The procedure seems to have been a success, you can expect increased fertility as well as the chance of larger litters from your, er... bitch. Best wishes for the little ones, may they bring you much happiness.' She engages you in a little casual talk about the city outside of her refuge, until eventually the curtain is pulled aside by Alexandra, fully dressed in her jeans and leather jacket once more.";
			WaitLineBreak;
			say "     Thanking Medea for her help, Alexandra and you leave the clinic and step out on the street. While making your way back to the library, the dobie bitch gleefully drops comments like, 'So, what's the new production goal in this puppy factory?' or 'When do you wanna start a new litter?' or 'The expression on Medea's face was just too good.' When you soon arrive, Alexandra pulls you close for a kiss, then strolls off to her usual guard post with the words, 'I'll be waiting for you.'";
		remove "Fertility Treatment Option" from Traits of Alexandra;
		add "Fertility Treatments" to Traits of Alexandra;
		now Pediatrics Lobby is known; [navpoint unlock]


to say AlexandraBackstory1: [family]
	say "     Alexandra takes a seat in one of the chairs, rocking on its back legs and lighting up a smoke. 'My folks were crooks. Did drugs and petty crimes to pay for the habit. It was a pretty shitty home to grow up in, so I was taken away by Child Services when they finally got caught. Not that that was much better, but I tried to convince myself I was better than them. I decided to become a cop and tried my best to be [']a moral and upright person['],' she says with obvious scorn for her previous self.";
	say "     'I tried to tell myself that my parents being crooks didn't matter, tried to act like stuff like that doesn't breed true. But I always knew deep down I was lying and there's no use pretending otherwise,' she says with a growl, flicking away her cigarette. 'I'm a bad dog and am much better off just admitting it. I certainly am enjoying myself a whole lot more as a slutty bitch, that's for damn sure. Shit, I'm sick of talking about this crap,' the anthro doberman says with a growl and hops out of the chair, moving over to the entrance door to check for something to fight and take her aggressions out on..";
	if AlexandraBackstory is 0:
		now AlexandraBackstory is 1;
	wait for any key;
	say "[BadAlexandraTalkMenu]"; [looping back for more talk]

to say AlexandraBackstory2: [her life after being taken from her family]
	say "     Alexandra pulls out one of the chairs and sits in it backwards, resting her [if ( HP of Alexandra is 3 and lust of Alexandra > 12 ) or HP of Alexandra > 3]plump [end if]breasts atop the back of it. 'Yeah, things kind of sucked for a while after I was taken away from my dead-beat parents. I had a tough time fitting in, felt everyone was always judging me, so I started pretending I was a good person and I was better than my folks. Somewhere along the lines, I forgot I was pretending, but a part of me always knew. So when things here went in the shitter, I guess I just kept on pretending. Being a cop and pretending to be a good girl were the only thing I knew how to do,' she says shaking her head.";
	say "     'I just kept on believing my own lie and tried my best to be a good cop. I'm glad you came along to knock some sense into me, boss. I ain't nothing but a bad dog and I always was. Now I just look the part and can enjoy it,' she says, leaning back and groping her breasts. 'I was so goddamned uptight before, I never had sex until you came along. Didn't know what I was missing,' she adds, stuffing a few fingers into her open jeans. ";
	if ("Horny Bastard" is listed in Traits of Alexandra and lastfuck of Alexandra - turns > 3) or ("Horny Bastard" is not listed in Traits of Alexandra and lastfuck of Alexandra - turns > 5):
		say "'Mmm... but enough talking. Let's fuck some more,' she says, knocking the chair to the ground as she gets up. She presses her body to yours, moaning with lustful need.";
		say "     [bold type]Do you want to enjoy some time with Alexandra right now?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Enjoy your slutty bitch.";
		say "     ([link]N[as]n[end link]) - Not right now.";
		if player consents:
			LineBreak;
			say "[badAlexandraSex]";
		else:
			LineBreak;
			say "     Grabbing her by her nape, you draw Alexandra close and give her a demanding kiss. She reacts by groping your body, making you smile inwardly at her eagerness for sex, but you still pull her away from you and proclaim that she should get back to guarding the door. The needy bitch looks surprised, her breath coming in short pants from the arousal that flared up in her. She frowns at the refusal to sate her needs, but you can see from the fact that her tail is still wagging that she isn't really cross with you. 'Bastard,' she says more as an observation than a curse, followed by the words, 'Don't let me wait too long, boss. I'm fucking dripping here.' With that, she steps back from you, shaking her chest in a last-minute try to entice you with her well-rounded breasts. She then saunters over to where she has a good view of the entrance and leans against the wall there.";
	else:
		LineBreak;
	if AlexandraBackstory < 2:
		now AlexandraBackstory is 2;
	wait for any key;
	say "[BadAlexandraTalkMenu]"; [looping back for more talk]

to say A_SarahTalk:	[Sarah]
	if SarahSlut is 0 or SarahCured is 1: [base state Sarah]
		say "     As you bring up Sarah, a grin spreads over Alexandra's muzzle and she lets out a chuckle. 'Couldn't help noticing the stray doggie girl you brought in and stashed away down in the bunker. You should see the adoring looks she throws when you're not looking. What did you do to get her to follow you - dash in and make a show of being a hero? Naive bitch,' Alexandra says in a rough tone that carries some amusement with it. 'I've got personal experience with the shit you're into, so what's the plan, boss? Gonna train her as a sex-pet? Or do you wanna keep her on as a clueless fan-girl to boost your rep if we ever get out of this? Better watch out if you do - huskies appear to be especially prone to fucking out their brains, so she might just succumb to those urges no matter what.'";
		say "     Giving a shrug that speaks of her indifference to the possible loss of Sarah's humanity, Alexandra looks at you with a smirk, then adds casually, 'Oh, and I'll hold off on teaching her who the top bitch in this place is till you make your move, but once you do, she'd better be prepared to submit to me as well.'";
	else if SarahSlut is 1: [fucked Sarah once, she's naked from this point on]
		say "     As you bring up Sarah, a grin spreads over Alexandra's muzzle and she lets out a chuckle. 'Showed the little bitch who the boss is, haven't you? She's naked all the time and keeps rubbing her clit when she thinks no one is looking. Huskies really just are born sluts! You should have seen the packs of husky ho's I ran into when I was still doing patrols,' Alexandra says in a rough tone that carries some amusement with it, then goes into a lewd tale that details one situation she did encounter, eventually ending in a graphic description of [one of]a husky foursome with triple penetration[or]a literal fuck-pile of huskies[or]an alleyway gangbang[or]a bitchfight ending in lesbian sex[or]an alpha husky breeding his lined-up bitches[at random]. 'My old goodie two shoes self just stood there and couldn't help but watch after everyone involved told her to take a hike, no rescue needed,' she adds with a shrug, slightly embarrassed about the cop she was not too long ago.";
		say "     'Now as for your slut Sarah, I don't think you'll have that much more effort before she's all the way broken in. She's weak, not like some other bitches in here,' the former cop says in a superior tone, apparently proud that she held out as long as she did against your lustful attention.";
	else if SarahSlut is 2: [fucked Sarah twice]
		say "     As you bring up Sarah, a grin spreads over Alexandra's muzzle and she lets out a chuckle. 'Yeah, you got the little bitch broken in good by now, haven't you? She's naked all the time and is dripping in arousal constantly. Huskies really just are born sluts! You should have seen the packs of husky ho's I ran into when I was still doing patrols,' Alexandra says in a rough tone that carries some amusement with it, then goes into a lewd tale that details one situation she did encounter, eventually ending in a graphic description of [one of]a husky foursome with triple penetration[or]a literal fuck-pile of huskies[or]an alleyway gangbang[or]a bitchfight ending in lesbian sex[or]an alpha husky breeding his lined-up bitches[at random]. 'My old goodie two shoes self just stood there and couldn't help but watch after everyone involved told her to take a hike, no rescue needed,' she adds with a shrug, slightly embarrassed about the cop she was not too long ago.";
		say "     'Now as for your slut Sarah, ever thought of getting a collar for her? Seems fitting to be treated like an animal, for the base breeding bitch she's become,' the former cop says in a superior tone, apparently proud that she held on to her humanity much better than Sarah could.";
	else if SarahSlut is 3: [Sarah got her SLUT collar from the player]
		say "     As you bring up Sarah, a grin spreads over Alexandra's muzzle and she lets out a chuckle. 'Yeah, you got the little bitch broken in good by now, haven't you? Even with a collar around her neck, like the pet she is deserves. Huskies really just are born sluts! You should have seen the packs of husky ho's I ran into when I was still doing patrols,' Alexandra says in a rough tone that carries some amusement with it, then goes into a lewd tale that details one situation she did encounter, eventually ending in a graphic description of [one of]a husky foursome with triple penetration[or]a literal fuck-pile of huskies[or]an alleyway gangbang[or]a bitchfight ending in lesbian sex[or]an alpha husky breeding his lined-up bitches[at random]. 'My old goodie two shoes self just stood there and couldn't help but watch after everyone involved told her to take a hike, no rescue needed,' she adds with a shrug, slightly embarrassed about the cop she was not too long ago.";
		say "     'Now as for your slut Sarah, what's next? Gonna breed her and have some more huskies? They're real puppy machines too, you know,' the former cop says in a superior tone, proud of being a doberwoman herself. 'And if you don't wanna do it yourself,[if player is not male]missing the equipment and all, [end if]I got some ideas of where we could find some strapping dudes to knock her up. Just imagine [one of]a towering great dane[or]a hunky doberman[or]a dalmatian stud[or]a horseman with a huge shaft[or]an anthro wolf[at random] pounding that bitch's pussy and starting a litter in her. You could sell tickets for that show!'";
	else if SarahSlut is 4: [Sarah is fully made into a fuckpet]
		if SarahPups is 0: [no pups with Sarah yet]
			say "     As you bring up Sarah, a grin spreads over Alexandra's muzzle and she lets out a chuckle. 'Yeah, you got the little bitch broken in good by now, haven't you? Even with a collar around her neck, like the pet she is deserves. The only thing missing for a typical husky slut now is a belly full of pups. Huskies really just are born sluts! You should have seen the packs of husky ho's I ran into when I was still doing patrols,' Alexandra says in a rough tone that carries some amusement with it, then goes into a lewd tale that details one situation she did encounter, eventually ending in a graphic description of [one of]a husky foursome with triple penetration[or]a literal fuck-pile of huskies[or]an alleyway gangbang[or]a bitchfight ending in lesbian sex[or]an alpha husky breeding his lined-up bitches[at random]. 'My old goodie two shoes self just stood there and couldn't help but watch after everyone involved told her to take a hike, no rescue needed,' she adds with a shrug, slightly embarrassed about the cop she was not too long ago.";
			say "     'Now as for your slut Sarah, what's next? Gonna breed her and have some more huskies? They're real puppy machines too, you know,' the former cop says in a superior tone, amused to be talking about breeding another former human. 'And if you don't wanna do it yourself,[if player is not male]missing the equipment and all, [end if]I got some ideas of where we could find some strapping dudes to knock her up. Just imagine [one of]a towering great dane[or]a hunky doberman[or]a dalmatian stud[or]a horseman with a huge shaft[or]an anthro wolf[at random] pounding that bitch's pussy and starting a litter in her. You could sell tickets for that show!'";
		else if libido of Alexandra is 0: [player has pups with Sarah, but not Alexandra]
			if "Contraception" is listed in Traits of Alexandra:
				say "     As you bring up Sarah, a grin spreads over Alexandra's muzzle and she lets out a chuckle. 'What a nice slutty pet you've made the bitch into. Naked, collared and pregnant too, when the mood strikes, eh? Yeah, let her pop those puppies out by the dozen, she's programmed to like it, as are all husky sluts!' Tapping the side of her muzzle thoughtfully, Alexandra adds after a moment, 'You know, I don't really mind that you put me on contraceptives now. Sure, it takes a little bit of the thrill and risk out of sex, but being tied down by pups looks like a drag.' She shrugs to herself, then slides an arm around you and pulls you in to make out with her, perfectly happy to be your top bitch and leave the breeding to Sarah.";
			else:
				say "     As you bring up Sarah, a grin spreads over Alexandra's muzzle and she lets out a chuckle. 'What a nice slutty pet you've made the bitch into. Naked, collared and pregnant too, when the mood strikes, eh? Yeah, let her pop those puppies out by the dozen, she's programmed to like it, as are all husky sluts!' Tapping the side of her muzzle thoughtfully, Alexandra adds after a moment, 'You know, I'm kinda glad that I haven't gotten knocked up so far. Being tied down by pups looks like a drag, but I guess that's part of what makes bare sex such a thrill. The risk spices it up.' She chuckles, then slides an arm around you and pulls you in to make out with her.";
		else if libido of Alexandra > SarahPups: [more pups with Alexandra]
			say "     As you bring up Sarah, a grin spreads over Alexandra's muzzle and she lets out a chuckle. 'What a nice slutty pet you've made the bitch into. Naked, collared and pregnant too, when the mood strikes, eh?' Your doberwoman top bitch steps up and curls an arm around your body, pulling you into a little bout of making out together. In between hungry kisses, she says, 'Even if she's getting bred too, I can't help but be proud of my own pack of pups. Gotta show everyone who the top bitch is!' Her hands wander up and down over your body, groping and touching, showing quite clearly how excited Alexandra is right now. She really wants to surpass Sarah in everything, from strength of will to her fertility.";
		else if libido of Alexandra is SarahPups: [equal numbers of pups]
			say "     As you bring up Sarah, a grin spreads over Alexandra's muzzle and she lets out a chuckle. 'What a nice slutty pet you've made the bitch into. Naked, collared and pregnant too, when the mood strikes, eh?' Your doberwoman top bitch steps up and curls an arm around your body, pulling you into a little bout of making out together. In between hungry kisses, she says, 'You know, I can't help but notice that that slut has just as many pups as I do. With her being just a slut and me your top bitch, that isn't right! We should do something about it!' Her hands wander up and down over your body, groping and touching, showing quite clearly that Alexandra's competetive side has been awoken and she wants to prove her fertility over Sarah's.";
		else if libido of Alexandra < SarahPups: [less pups with Alexandra]
			say "     As you bring up Sarah, a grin spreads over Alexandra's muzzle and she lets out a chuckle. 'What a nice slutty pet you've made the bitch into. Naked, collared and pregnant too, when the mood strikes, eh?' Your doberwoman top bitch steps up and curls an arm around your body, but as you try to kiss her, she holds up a paw and gives you a teasing smile. 'I don't think it's right that a stupid slut has more pups than I do! After all, the top bitch in this pack is me! We should do something about it!' Now aggressively starting to make out with you and letting her hands wander up and down over your body, Alexandra shows quite clearly that the state of affairs has awoken her competetive side. This bitch is eager to prove her fertility over Sarah's!";
	else if SarahCured is 2 or SarahCured is 3: [Sarah got a first dose of libido suppressant]
		say "     As you bring up Sarah, a grin spreads over Alexandra's muzzle and she lets out a chuckle. 'So what about the stray doggie girl you brought in and stashed away down in the bunker. You should see the adoring looks she throws when you're not looking, especially since you brought her that shot of medicine. Are you still dead-set on playing the white knight with the naive bitch? We both know you enjoy simply taking what you want, so why not just make a move on her right now? Huskies are built to be subby bitches, she'll spread her legs at the drop of a hat for you,' Alexandra says in a rough tone that carries a weird undertone. Could it be that she's annoyed with you treating Sarah well, while she herself got forcefully taken on an open street?";
		say "     Stepping up and curling an arm around your body, Alexandra strokes and touches you to get you excited, all the while whispering things like, 'Sarah'd make a great sex pet for you. Just grab her and enjoy yourself.' She does her best to wind you up as much as possible, then after a steamy kiss suddenly steps away and says, 'I should get back to guarding the door. Too bad we got to cut this short, but anyone might wander in if I don't. Good thing you've got a spare bitch stashed away...' With that pointed suggestion hanging in the air, she dashes off, taking position on the far side of the library door and glancing at you from the corner of her eye.";
		LibidoBoost 10;
	else if SarahCured is 4: [Sarah is on a libido suppessant regimen now]
		say "     As you bring up Sarah, Alexandra's muzzle draws into a frown. 'What about that little whore? She doesn't submit to me as the top bitch and isn't even putting out for you, yet you still give her special treatment?! Did I miss something and she's a rich heirress you want to get a reward for or something?' The former cop is clearly quite miffed about how things stand right now, given that you literally forced her to be your bitch while Sarah is having a fairly pleasant and safe time down in the bunker. [if AlexandraSarahInteraction > 0]Their recent clash clearly doesn't help improve her opinion of Sarah either. [end if]As you struggle to find a resonable reply to her, the anthro dobie lets out a frustrated bark, then storms off out into the open street to find someone she can give a beating to. She'll be back once she has blown off some steam.";
	else if SarahCured is 5: [Sarah is okay with oral on her]
		say "     As you bring up Sarah, Alexandra's muzzle draws into a frown. 'What about that little whore? Has she got some sort of magic pussy or what, with you giving her special treatment even if she only wants to be on the receiving end of oral sex?' The former cop is clearly quite miffed about how things stand right now, given that you literally forced her to be your bitch while Sarah is having a fairly pleasant and safe time down in the bunker. [if AlexandraSarahInteraction > 0]Their recent clash clearly doesn't help improve her opinion of Sarah either. [end if]As you struggle to find a resonable reply to her, the anthro dobie lets out a frustrated bark, then storms off out into the open street to find someone she can give a beating to. She'll be back once she has blown off some steam.";
	else if SarahCured is 6: [Sarah is okay with player dominant oral]
		say "     As you bring up Sarah, Alexandra's muzzle draws into a frown. 'What about that little whore? She must have got a really nice tongue, with you giving her special treatment even if she only wants to have oral sex!' The former cop is clearly quite miffed about how things stand right now, given that you literally forced her to be your bitch while Sarah is having a fairly pleasant and safe time down in the bunker. [if AlexandraSarahInteraction > 0]Their recent clash clearly doesn't help improve her opinion of Sarah either. [end if]As you struggle to find a resonable reply to her, the anthro dobie lets out a frustrated bark, then storms off out into the open street to find someone she can give a beating to. She'll be back once she has blown off some steam.";
	else if SarahCured is 8: [Sarah is okay with anal sex]
		say "     As you bring up Sarah, Alexandra's muzzle draws into a frown. 'What about that little whore? She doesn't submit to me as the top bitch, or allow anyone to fuck her pussy, yet you still give her special treatment! What the flying fuck?!' The former cop is clearly quite miffed about how things stand right now, given that you literally forced her to be your bitch while Sarah is having a fairly pleasant and safe time down in the bunker. [if AlexandraSarahInteraction > 0]Their recent clash clearly doesn't help improve her opinion of Sarah either. [end if]As you struggle to find a resonable reply to her, the anthro dobie lets out a frustrated bark, then storms off out into the open street to find someone she can give a beating to. She'll be back once she has blown off some steam.";
	wait for any key;
	say "[BadAlexandraTalkMenu]"; [looping back for more talk]

Section 2 - Bad Girl Sexxxings

Part 1 - Bad Alexandra Sex Selection

to say sexwithAlexandra_bg:
	if "Horny Bastard" is listed in Traits of Alexandra and lastfuck of Alexandra - turns < 4:
		say "     'Not that I don't want to boss, but you gotta let me have a little while to rest. Just can't keep up with your libido, you nymphomaniac.'";
	else if "Horny Bastard" is not listed in Traits of Alexandra and lastfuck of Alexandra - turns < 6:
		say "     'As fun as this has been, I do need at least a short break before we go again[if HP of Alexandra < 50], boss[end if].'";
	else if HP of Alexandra is 1:
		say "     She seems mighty eager, but you might want to talk to her first.";
	else if HP of Alexandra < 50:
		say "[badAlexandraSex]";

to say badAlexandraSex:
	if debugactive is 1:
		say "[badAlexandra_debug]";
	project the figure of Alexandra_naked_icon;
	if lust of Alexandra > 12:
		say "     You grab Alexandra in your arms and run your hands over the pregnant doberwoman, making her moan with lust. She pants excitedly [if lastdobiemess is 3 or lastdobiemess is 4 or lastdobiemess is 6 or lastdobiemess is 7 or lastdobiemess is 97 or lastdobiemess is 98]and licks her muzzle for lingering traces of your cum [end if]as you help her squirm out of her jeans and jacket[if lastdobiemess is 1 or lastdobiemess is 2]. The denim, still stained from your last fucking, is damp and musky with the scents of sex and arousal, old and fresh[else if lastdobiemess is 5 or lastdobiemess is 7]. The denim, still stained with her juices, is damp and musky with the scents of sex and arousal, old and fresh[else if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99]. The denim, still stained with signs of a recent fucking, is damp and musky with the scents of sex and arousal, old and fresh, canine and lupine[else if lastdobiemess is 6]. Her chest fur, still marked with streaks of your cum, is marked with white on her breasts[end if]. With her heavy with pups, how shall you take your canine bitch this time?";
	else:
		say "     You grab Alexandra in your arms and grope the doberwoman, making her moan with lust. She pants excitedly and [if lastdobiemess is 3 or lastdobiemess is 4 or lastdobiemess is 6 or lastdobiemess is 7 or lastdobiemess is 97 or lastdobiemess is 98]licks her muzzle for lingering traces of your cum, then [end if]squirms out of her jeans and jacket[if lastdobiemess is 1 or lastdobiemess is 2]. The denim, still stained from your last fucking, is damp and musky with the scents of sex and arousal, old and fresh[else if lastdobiemess is 5 or lastdobiemess is 7]. The denim, still stained with her juices, is damp and musky with the scents of sex and arousal, old and fresh[else if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99]. The denim, still stained with signs of a recent fucking, is damp and musky with the scents of sex and arousal, old and fresh, canine and lupine[else if lastdobiemess is 6]. Her chest fur, still marked with streaks of your cum, is marked with white on her breasts[end if]. Just what do you feel like doing with your canine bitch this time?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male and lust of Alexandra <= 12:
		choose a blank row in table of fucking options;
		now title entry is "Bend her over";
		now sortorder entry is 1;
		now description entry is "Bend her over a table and fuck the bitch";
	[]
	if player is male and lust of Alexandra <= 12:
		choose a blank row in table of fucking options;
		now title entry is "Against the wall";
		now sortorder entry is 2;
		now description entry is "Press your bitch against the wall and fuck her hard";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "All fours";
		now sortorder entry is 3;
		now description entry is "Fuck your bitch on all fours";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Anal";
		now sortorder entry is 4;
		now description entry is "Take her up the ass";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Blow job";
		now sortorder entry is 5;
		now description entry is "Have Alexandra suck you off";
	[]
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Get cunnilingus";
		now sortorder entry is 6;
		now description entry is "Have Alexandra lick your snatch";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Lick Alexandra";
	now sortorder entry is 7;
	now description entry is "Lick Alexandra's snatch";
	[]
	if player is not neuter and lust of Alexandra <= 12:
		choose a blank row in table of fucking options;
		now title entry is "69";
		now sortorder entry is 8;
		now description entry is "69 with the dobie";
	[]
	if player is male and ( HP of Alexandra > 3 or lust of Alexandra > 12 ):
		choose a blank row in table of fucking options;
		now title entry is "Titty fuck";
		now sortorder entry is 9;
		now description entry is "Fuck those lovely melons of hers";
	[]
	if player is not neuter and level of Alexandra is 2 and lastfuck of Fang - turns >= ( 9 - HP of Fang):
		choose a blank row in table of fucking options;
		now title entry is "Threesome with Fang";
		now sortorder entry is 10;
		now description entry is "Share her with the wolf";
	[]
	if vorelevel > 2 and glowing mushroom is owned:
		choose a blank row in table of fucking options;
		now title entry is "Let her tease and vore you";
		now sortorder entry is 11;
		now description entry is "Let Alex tease you with her tongue while you are in your micro-state";
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
				if nam is "Bend her over":
					say "[badAlexandraSex1]";
				else if nam is "Against the wall":
					say "[badAlexandraSex2]";
				else if nam is "All fours":
					say "[badAlexandraSex3]";
				else if nam is "Anal":
					say "[badAlexandraSex4]";
				else if nam is "Blow job":
					say "[badAlexandraSex5]";
				else if nam is "Get cunnilingus":
					say "[badAlexandraSex6]";
				else if nam is "Lick Alexandra":
					say "[badAlexandraSex7]";
				else if nam is "69":
					say "[badAlexandraSex8]";
				else if nam is "Titty fuck":
					say "[badAlexandraSex9]";
				else if nam is "Threesome with Fang":
					say "[badAlexandraSex10]";
				else if nam is "Let her tease and vore you":
					say "[badAlexandraSex11]";
				now lastfuck of Alexandra is turns;
				AlexandraFeatAbsorb;
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the doberwoman bitch, shaking your head slightly as she gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;


Part 2 - Bad Alexandra Sex Scenes

to say badAlexandraSex1: [Bend her over]
	say "     You push the ex-cop down over one of the tables and spread her legs with a firm motion with your foot. She whimpers softly in excitement and her short tail wags frantically as juices run down her legs. Grinning at the sight, you get your cock lined up with her wet pussy and thrust into her, making her moan loudly[if lastdobiemess is 1 or lastdobiemess is 2]. Her crotch fur, damp from her messy jeans, smells strongly of your scent from the last time you used your dobie bitch[else if lastdobiemess is 5 or lastdobiemess is 7]. Her crotch fur, damp from her messy jeans, smells strongly of her scent from the last time you played with your dobie bitch[else if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99]. Her crotch fur, damp from her messy jeans, smells strongly of Fang's scent from the last time he used your dobie bitch[end if]. Keeping her shoulders pinned down, you pound your [cock size desc of player] [cock of player] cock into her as she rocks her hips back into every thrust you make.";
	say "     'Oh yes! Do me! Fuck your slutty bitch,' she pants. She [one of]moves her paws to grope her [if lastdobiemess is 6]cum-streaked [end if]breasts and play with her nipples[or]grips the edge of the table, her claws digging into the wood[or]drools onto the table as her breasts are pressed firmly against the cool wooden surface[at random]. Your [cock size desc of player] cock [if cock length of player > 30]has stuffed your bad doggy bitch with a prominent and phallic bulge for your massive meat[else if cock length of player > 20]makes a visible bulge in your bad doggy bitch[else if cock length of player > 10]stuffs your bad doggy bitch such that she feels wonderfully tight and juicy around your shaft[else]fucks your bad doggy bitch's wanton hole[end if]. Her cunt squeezes and clenches around your shaft[if cockname of player is listed in infections of Knotlist] as your knot grinds against her juicy lips[end if], her body clearly needing this proper pounding you're giving her.";
	if a random chance of 1 in 3 succeeds:
		say "     In the mood to take your time with the horny hound, you slow your thrusting and let your hands roam all over her, grabbing her like she's your property. She pants and grinds back against you, loving being treated in such a manner, but her needy body wanting you to drill her hard. You grin at her soft, needy whining but ignore it, choosing instead to play with her nipples, her ass, her juicy, cock-filled cunt. Her sweet waters run down your crotch as she quivers around your meat. You tease her clit lightly and whisper to her to beg for it like the slutty bitch she is. She moans and tries to fight it briefly, mostly for your added amusement, before crying out for you to pound her and breed her, to drill her deep and use her like your slutty bitch. You kiss the side of her muzzle, telling her she only had to ask and start doing just that, rocking the large table beneath you both as you slam against her sexy bottom.";
	else:
		say "     Wanting to have wild go at it, you press your hands down onto her shoulders and slam into her hard and fast over and over again. Under such an assault, your slutty bitch can only moan and pant, drooling onto the table. Her juices run down your crotch as she quivers in delight with every thrust you make into her. Even the large, heavy table starts to rock and shift a little as you slam against her sexy bottom, fucking her for all you're worth.";
	if cockname of player is listed in infections of Knotlist:
		say "     When she finally climaxes, her pussy goes into overdrive, squeezing and milking at your cock as she cries out for you to tie with her. Grabbing her shoulders, you drive hard into her and pop your swollen knot into her. This has her cry out even louder and a second wave of her canine juices soak your crotch. She continues to cum, moaning and barking in delight as you spray your seed into her[if cock width of player > 40]. Your massive load leaves the dobie bitch so bloated and full with your knot keeping all that hot jism locked inside her womb. Once your knot finally goes down and you withdraw, she flops to the floor, too stuffed to do anything but lie there and rub her paws over her overstuffed womb as your seed slowly leaks out of her[else if cock width of player > 20]. Your massive load leaves the dobie bitch with a full and bloated tummy that, with your knot tying her to you, has nowhere to go but her womb. Once your knot finally goes down and you withdraw, she staggers back to her post while happily stroking over her rounded belly[else]. You drain your balls into the dobie bitch, your knot keeping your load locked inside her until it goes down and you're able to withdraw[end if].";
	else:
		say "     When she finally climaxes, her pussy goes into overdrive, squeezing and milking at your cock, pushing you to orgasm moments later. She continues to cum, moaning and barking in delight as you spray your seed into her[if cock width of player > 40]. Your massive load leaves the dobie bitch so bloated and full that she can't even move for some time, only able to rub her paws over her overstuffed womb as your seed slowly leaks out of her[else if cock width of player > 20]. Your massive load leaves the dobie bitch with a full and bloated tummy that she happily strokes as she staggers back to her post[else]. You drain your balls into the dobie bitch, leaving her well seeded and slowly leaking your cum from her well-fucked pussy[end if].";
	now lastdobiemess is 1;
	increase AlexandraCreampieCount by 1;
	impregAlexandraChance with "Player";

to say badAlexandraSex2: [Against the wall]
	say "     You push the ex-cop over to the wall and press her against it. You hold her arms spread and push her legs apart with a firm motion of your foot. 'Spread [']em, bitch,' you growl to her, causing her to moan and grind her rear back against you as she complies[if lastdobiemess is 1 or lastdobiemess is 2]. Her crotch fur, damp from her messy jeans, smells strongly of your scent from the last time you used your dobie bitch[else if lastdobiemess is 5 or lastdobiemess is 7]. Her crotch fur, damp from her messy jeans, smells strongly of her scent from the last time you played with your dobie bitch[else if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99]. Her crotch fur, damp from her messy jeans, smells strongly of Fang's scent from the last time he used your dobie bitch[end if].";
	say "     'You'll never break me,' she growls playfully. Her short tail wags frantically as juices run down her legs, showing just how much the rough treatment's turning her on.";
	say "     'We'll see about that,' you respond, pressing her to the stone and driving your [cock size desc of player] [cock of player] cock into her wet pussy. She groans loudly and struggles weakly, encouraging you to push into her all the harder[if cock length of player > 30]. Your [cock size desc of player] shaft stuffs your bad doggy bitch with a prominent and phallic bulge from your massive meat[else if cock length of player > 20]. Your [cock size desc of player] shaft makes a visible bulge in your bad doggy bitch[else if cock length of player > 10]. Your [cock size desc of player] shaft stuffs your bad doggy bitch such that she feels wonderfully tight and juicy around your manmeat[end if]. You pound away at her hard and fast, enjoying the panting and moaning coming from her as you fuck her. Her cunt squeezes and clenches around your shaft[if cockname of player is listed in infections of Knotlist] as your knot grinds against her juicy lips[end if], her body clearly needing this proper pounding you're giving her.";
	if a random chance of 1 in 3 succeeds:
		say "     Wanting to continue to play it out, you pound away at her steadily, grinding her body against the wall as you really bear into her. Her pussy squeezes around your cock each time you slam into her and her wet juices run down both your thighs. You growl in her ear that she's can't hold out forever and soon she'll cum like the horny bitch she is. Panting heavily now, she shakes her head, but grinds your ass against her all the harder, a clear demonstration of how she wants you claim her again. Grunting as you push hard into her quivering hole, you bite firmly at her neck and shoulder while keeping her pinned to the wall like some prisoner or prize of yours.";
	else:
		say "     You keep at it, drilling into her juicy hole while holding her against the while. You nibble at her ear and tell her that she'll be your bitch from now on, that she just needs to beg for it. Still wanting to keep playing, she struggles weakly as shivers of delight run through her at your mistreatment of her. She clearly finds your dominance and breaking of her very erotic and wants to relive it again. More than happy to reassert yourself as her master, you keep it up, driving your pulsing cock into her juicy cunt again and again while keeping her pinned down. 'Oh yes, you win. I'm your bitch, your prize cunt. Just don't stop fucking me, boss!' she cries out, unable to hold it in any longer.";
	if cockname of player is listed in infections of Knotlist:
		say "     When she finally climaxes, her pussy goes into overdrive, squeezing and milking at your cock as she cries out for you to tie with her. Pressing her firmly against the wall, you drive hard into her and pop your swollen knot into her cunt. This has her cry out even louder and a second wave of her canine juices soak your crotch. She continues to cum, moaning and barking in delight as you spray your seed into her[if cock width of player > 40]. Your massive load leaves the dobie bitch so bloated and full with your knot keeping all that hot jism locked inside her womb. Once your knot finally goes down and you withdraw, she flops to the floor, too stuffed to do anything but lie against the wall and rub her paws over her overstuffed womb as your seed slowly leaks out of her[else if cock width of player > 20]. Your large load leaves the dobie bitch with a full and bloated tummy that, with your knot tying her to you, has nowhere to go but her womb. Once your knot finally goes down and you withdraw, she staggers back to her post while happily stroking over her rounded belly[else]. You drain your balls into the dobie bitch, your knot keeping your load locked inside her until it goes down and you're able to withdraw[end if].";
	else:
		say "     When she finally climaxes, her pussy goes into overdrive, squeezing and milking at your cock as she cries out for you to breed her. Pressing her firmly against the wall, you drive hard into her a few more times before cumming hard. She continues to cum, moaning and barking in delight as you spray your seed into her[if cock width of player > 40]. Your massive load leaves the dobie bitch so bloated and full that she can't even move for some time, only able to lie against the wall and rub her paws over her overstuffed womb as your seed slowly leaks out of her[else if cock width of player > 20]. Your large load leaves the dobie bitch with a full and bloated tummy that she happily strokes as she staggers back to her post[else]. You drain your balls into the dobie bitch, leaving her well seeded and slowly leaking your cum from her well-fucked pussy[end if].";
	now lastdobiemess is 1;
	increase AlexandraCreampieCount by 1;
	impregAlexandraChance with "Player";

to say badAlexandraSex3: [All fours]
	if lust of Alexandra > 12: [visibly pregnant]
		say "     Using some blankets for padding under her rounded belly, you get the ex-cop down on her hands and knees. You grab her taut ass and give it a firm squeeze[if lastdobiemess is 1 or lastdobiemess is 2]. Her crotch fur, damp from her messy jeans, smells strongly of your scent from the last time you used your dobie bitch[else if lastdobiemess is 5 or lastdobiemess is 7]. Her crotch fur, damp from her messy jeans, smells strongly of her scent from the last time you played with your dobie bitch[else if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99]. Her crotch fur, damp from her messy jeans, smells strongly of Fang's scent from the last time he used your dobie bitch[end if]. She releases a soft whimper of excitement and her short tail wags frantically as juices run down her legs. Pleased at the sight, you kneel behind her and get your cock lined up with her wet pussy. You tease your glans against her puffy, wet lips and grin as she moans and begs to get fucked. Only after you've gotten her really worked up do you relent and thrust into your needy bitch, making her cry out as she's finally mounted.";
		say "     Keeping a firm grip on that sexy ass of hers, you pound into the doberwoman with your [cock size desc of player] [cock of player] cock. She pants [one of]and moans about how great it feels[or]and drools onto the floor with her tongue hanging out[or]as her plump[if lastdobiemess is 6], cum-streaked[end if] breasts sway with every thrust[at random]. Your [cock size desc of player] cock [if cock length of player > 30]stretches her juicy cunt wide and adds a bit of a phallic bulge to your bad doggy bitch's already rounded belly[else if cock length of player > 20]stretches her juicy cunt open and plumps up your bad doggy bitch's already rounded belly a little further[else if cock length of player > 10]stuffs your bad doggy bitch's cunt such that she feels wonderfully tight and juicy around your shaft[else]fucks your bad doggy bitch's juicy hole[end if]. Her cunt squeezes and clenches around your shaft[if cockname of player is listed in infections of Knotlist] as your knot grinds against her juicy lips[end if], her body responding to the much-needed fucking.";
		say "     Alexandra moans beneath you, tongue hanging out and drool puddling on the floor as she pants like the needy bitch she is. You release that delicious bottom of hers and let your hands slide over her body, petting her like a dog at first while calling her your good, bad girl before reaching around to rub her pregnant belly with a big grin at how well you've trained the once stuffy cop and have even knocked her up. She pants at all this attention and moans softly as you reach a little further to grab her swollen, milk-laden breasts. Playing with her nipples even gets some to leak out, showing she'll soon be ready to [if HP of Alexandra is 5]add another little of pups to her kennel of Doberman children[else]drop her first litter of Doberman children[end if]. Feeling you've teased her enough, you lean back up and start drilling your pulsing cock into her with renewed vigor, flush with the sense of your own strength and virility.";
		if cockname of player is listed in infections of Knotlist:
			say "     With a final, hard thrust, you drive your knot into her and lock your hips together. She throws her head back and gives a barking cry of ecstasy, her pussy squeezing and milking at your [cock of player] cock as she cums. Now tied with her, you can only bash your hips against her sexy rear as you spurt your thick load into her as you cum in the knocked-up doggy. Feeling your semen shooting into her, she cries out even louder as a second rush of canine juices soak your crotch[if cock width of player > 40]. With your knot keeping it all inside her, your massive load causes the dobie bitch's already full belly to swell more and more until it's rounded like a ball and she can barely touch the ground to hold herself steady. When your knot finally goes down enough for you to pull out, she rolls over and can only lie there, rubbing her overfull tummy while moaning in pleasure as your semen slowly leaks out of her[else if cock width of player > 20]. With your knot keeping it all inside her, your large load causes the dobie bitch's already full belly to swell a few more inches. When your knot finally goes down enough for you to pull out, she rolls onto her side and chooses to stay there for a while, rubbing her bloated belly while your semen slowly leaks out of her[else]. With your knot stuffing her, your hot load is kept locked inside her. Once your knot finally goes down enough, you pull out and get her to lick you clean before she lies down to rest[end if].";
		else:
			say "     With a final, hard thrust, you drive your pulsing rod hard into her and cum. This sends the sexy canine over the edge and she releases a barking cry of ecstasy, her pussy squeezing and milking at your [cock of player] cock as she cums. Keeping a firm grip on her ass, you pound your hips against her sexy rear as you spurt your thick load into her as you cum in the knocked-up doggy while canine juices soak your crotch[if cock width of player > 40]. With much of it overflowing around your cock, your massive load causes the dobie bitch's already full belly to swell more and more until it's rounded like a ball and she can barely touch the ground to hold herself steady. Once you're, she rolls over and can only lie there, rubbing her overfull tummy while moaning in pleasure as your semen slowly leaks out of her[else if cock width of player > 20]With much of it overflowing around your cock, your large load causes the dobie bitch's already full belly to swell a few more inches. Once you're done, she rolls onto her side and chooses to stay there for a while, rubbing her bloated belly while your semen slowly leaks out of her[else]. You fuck her until your balls are drained into the dobie bitch before withdrawing. After pulling out, you get her to lick you clean[end if].";
	else: [not visibly pregnant]
		say "     You push the ex-cop down onto her hands and knees, grabbing her taut ass and giving it a firm squeeze. She releases a soft whimper of excitement and her short tail wags frantically as juices run down her legs[if lastdobiemess is 1 or lastdobiemess is 2]. Her crotch fur, damp from her messy jeans, smells strongly of your scent from the last time you used your dobie bitch[else if lastdobiemess is 5 or lastdobiemess is 7]. Her crotch fur, damp from her messy jeans, smells strongly of her scent from the last time you played with your dobie bitch[else if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99]. Her crotch fur, damp from her messy jeans, smells strongly of Fang's scent from the last time he used your dobie bitch[end if]. Pleased at the sight, you kneel behind her and get your cock lined up with her wet pussy. You tease your glans against her puffy, wet lips and grin as she moans and begs to get fucked. Only after you've gotten her really worked up do you relent and thrust into your needy bitch, making her cry out as she's finally mounted.";
		say "     Keeping a firm grip on that sexy ass of hers, you pound into the doberwoman with your [cock size desc of player] [cock of player] cock. She pants [one of]and moans about how great it feels[or]and drools onto the floor with her tongue hanging out[or]as her [if HP of Alexandra > 3 and lastdobiemess is 6]plump, cum-streaked [else if HP of Alexandra is 3]plump [end if]breasts sway with every thrust[at random]. Your [cock size desc of player] cock [if cock length of player > 30]stretches her juicy cunt wide and makes a prominent and phallic bulge in your bad doggy bitch[else if cock length of player > 20]stretches her juicy cunt open and produces a visible swelling in your bad doggy bitch[else if cock length of player > 10]stuffs your bad doggy bitch's cunt such that she feels wonderfully tight and juicy around your shaft[else]fucks your bad doggy bitch's juicy hole[end if]. Her cunt squeezes and clenches around your shaft[if cockname of player is listed in infections of Knotlist] as your knot grinds against her juicy lips[end if], her body responding to the much-needed fucking.";
		say "     Alexandra moans beneath you, tongue hanging out and drool puddling on the floor as she pants like the needy bitch she is. You release that delicious bottom of hers and let your hands slide over her body, petting her like a dog at first while calling her your good, bad girl. After petting her for a while, you lean forward and put an arm around her, rubbing her tummyfur and then moving on to grope her [if HP of Alexandra > 3]plump[else]shapely[end if] breasts. You tease and pinch her nipples while fucking her doggy style for a while before leaning back up and grabbing her ass you can get back to slamming hard into her, much to her delight after all the teasing.";
		if cockname of player is listed in infections of Knotlist:
			say "     With a final, hard thrust, you drive your knot into her and lock your hips together. She throws her head back and gives a barking cry of ecstasy, her pussy squeezing and milking at your [cock of player] cock as she cums. Now tied with her, you can only bash your hips against her sexy rear as you spurt your thick load into her as you try to breed your sexy bitch. Feeling your semen shooting into her, she cries out even louder as a second rush of canine juices soak your crotch[if cock width of player > 40]. Your massive load causes the dobie bitch's belly to swell until it's touching the floor with all the jism your knot's keeping locked inside her womb. Once your knot finally goes down enough to pull out, she flops to the floor, too full and happy to do anything but lie there and rub her paws over her bloated belly as your seed slowly leaks out of her[else if cock width of player > 20]. Your large load causes the dobie bitch's belly to grow rounded and slosh a little with the sound of your seed whenever she moves. With your knot tying her to you, there is nowhere for it all to go but her womb. Once your knot finally goes down enough to pull out, she rises slowly and staggers back to her post while happily stroking over her rounded belly[else]. With your knot stuffing her, your hot load is kept locked inside her. Once your knot finally goes down enough, you pull out and get her to lick you clean[end if].";
		else:
			say "     With a final, hard thrust, you drive your pulsing rod hard into her and cum. This sends the sexy canine over the edge and she releases a barking cry of ecstasy, her pussy squeezing and milking at your [cock of player] cock as she cums. Keeping a firm grip on her ass, you pound your hips against her sexy rear as you spurt your thick load into her as you try to breed your sexy bitch while canine juices soak your crotch[if cock width of player > 40]. Your massive load causes the dobie bitch's belly to swell until it's touching the floor with all the jism you're pumping into her. Once you're done, she flops to the floor, too full and happy to do anything but lie there and rub her paws over her bloated belly as your seed slowly leaks out of her[else if cock width of player > 20]. Your large load causes the dobie bitch's belly to grow rounded and slosh a little with the sound of your seed whenever she moves. Once you're done, she rises slowly and staggers back to her post while happily stroking over her rounded belly[else]. You fuck her until your balls are drained into the dobie bitch before withdrawing. After pulling out, you get her to lick you clean[end if].";
	now lastdobiemess is 1;
	increase AlexandraCreampieCount by 1;
	impregAlexandraChance with "Player";

to say badAlexandraSex4: [Anal]
	if lust of Alexandra > 12:
		say "     Using some blankets for padding under her rounded belly, you get the ex-cop down on her hands and knees. You grab her taut ass and give it a firm squeeze[if lastdobiemess is 1 or lastdobiemess is 2]. Her crotch fur, damp from her messy jeans, smells strongly of your scent from the last time you used your dobie bitch[else if lastdobiemess is 5 or lastdobiemess is 7]. Her crotch fur, damp from her messy jeans, smells strongly of her scent from the last time you played with your dobie bitch[else if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99]. Her crotch fur, damp from her messy jeans, smells strongly of Fang's scent from the last time he used your dobie bitch[end if]. She releases a soft whimper of excitement and her short tail wags frantically as juices run down her legs. Pleased at the sight, you kneel behind her and get your cock lined up with her wet pussy. You tease your glans against her puffy, wet lips before aiming a little further up and push against her crinkled anus.";
		if dobieanal is false:
			say "     'I... that's...' she starts to say, her ears dipping a little as she realizes what you have in mind. 'I've never done anything like that before,' she whimpers. From the way her tail's still wagging, you can tell she's excited by the prospect, so you give another press against her tailhole. 'Mmm... alright, let's get kinky, boss,' she moans.";
		else:
			say "     'Mmm... I think you're feeling kinky again, boss,' she whimpers. 'Come on, then. Use your dirty doggy bitch,' she moans, pressing her rear back against your cock, urging you to fuck her ass again.";
		say "     Grabbing her ass tightly, you thrust forward, pushing your cock into her [if dobieanal is false]virgin [end if]hole and start fucking her. You're prepared to start slow, but Alexandra pushes back, urging you to fuck her rough and hard. You give her rear a swat and call her such a bad, dirty doggy and pound away at her. Your [cock size desc of player] cock [if cock length of player > 30]stretches her back door wide and adds a bit of a phallic bulge to your bad doggy bitch's already rounded belly as you bugger her[else if cock length of player > 20]stretches her back door open and plumps up your bad doggy bitch's already rounded belly a little further as you bugger her[else if cock length of player > 10]stuffs your bad doggy bitch's wonderfully tight anus[else]buggers your bad doggy bitch's back door[end if]. Her anal walls squeeze and pull around your shaft[if cockname of player is listed in infections of Knotlist] as your knot grinds against her dark pucker[end if], her body pushing back eagerly into every thrust. Her pregnant belly rocks with every hard push into her sexy bottom. She may moan and whimper at being fucked up the ass, but she pants and leaks juices constantly as well, clearly very turned on by being used in such a way.";
		say "     As you keep fucking that tight ass of hers, you slip a hand between her legs to tend to her needy cunt, rubbing over her juicy folds and slipping a few fingers into her. You start by just teasing her clit and a few sensitive spots, but soon switch it up to pumping your fingers into her quivering hole in [one of]tandem[or]counterpoint[at random] to your thrusts into her ass[if dobieanal is false]. You have quite a bit of fun training your bitch, finding she's taking to being an anal slut quite readily[else]. You are quite pleased by how well your bitch is taking to being an anal slut[end if] and fuck her all the harder for it, much to her increasing delight.";
		if cockname of player is listed in infections of Knotlist:
			say "     With a final, hard thrust, you force your knot into her tight hole and tie with her. She gives a loud whimper as your thick bulb is crammed into her, but her juices soak her crotch as well as she cums hard. Her rectum clenches down around your knot and her anal muscles squeeze your shaft, milking it for all you can give. 'Oh yes, fill my [if dobieanal is false]virgin[else]naughty[end if] bitch ass,' she cries out. Now tied with her, you can only bash your hips against her sexy rear as you spurt your thick load into her[if cock width of player > 40]. Held in by your thick knot, your massive load causes the dobie bitch's already full belly to swell more and more until it's rounded like a ball and she can barely touch the ground to hold herself steady. Once your knot finally goes down enough to pull out, she collapses to the floor, too full and well fucked to move. She lies there, panting and rubbing her overfull belly while your seed pours out of her gaping anus[else if cock width of player > 20]. With your knot tying her to you, your large load pools in her bowels, causing the dobie bitch's already full belly to swell a few more inches. Once your knot finally goes down enough to pull out, she flops onto her side, too worn out to get up after such a rough ride. She lies there panting, stroking her bloated belly as your seed slowly leaks from her creamy hole[else]. With your knot stuffing her, your hot load is kept locked inside her to pool in her bowels. Once your knot finally goes down enough, she flops onto her side, unable to stand quite yet after such a rough ride. She lies there panting, content to rub a finger at her creamy hole[end if].";
		else:
			say "     With a final, hard thrust, you drive your pulsing rod hard into her and cum. She gives a loud whimper as your [cock of player] shaft is crammed into her, but her juices soak her crotch as well as she cums hard. Her anal muscles squeeze your shaft, milking it for all you can give. 'Oh yes, fill my [if dobieanal is false]virgin[else]naughty[end if] bitch ass,' she cries out. Keeping a firm grip on her ass, you pound your hips against her sexy rear as you spurt your thick load into her[if cock width of player > 40]. With much of it overflowing around your cock, your massive load causes the dobie bitch's already full belly to swell more and more until it's rounded like a ball and she can barely touch the ground to hold herself steady. Once you're done and pull out, she collapses to the floor, too full and well fucked to move. She lies there, panting and rubbing her overfull belly while your seed pours out of her gaping anus[else if cock width of player > 20]. With much of it overflowing around your cock, your large load pools in her bowels, causing the dobie bitch's already full belly to swell a few more inches. Once you're done and have pulled out, she flops onto her side, unable to stand quite yet after such a rough ride. She lies there panting, stroking her bloated belly as your seed slowly leaks from her creamy hole[else]. You fuck her tight ass until your balls are drained into the dobie bitch before withdrawing. She flops onto her side, unable to stand quite yet after such a rough ride. She lies there panting, content to rub a finger at her creamy hole[end if].";
	else:
		say "     You push the ex-cop down onto her hands and knees, grabbing her taut ass and giving it a firm squeeze[if lastdobiemess is 1 or lastdobiemess is 2]. Her crotch fur, damp from her messy jeans, smells strongly of your scent from the last time you used your dobie bitch[else if lastdobiemess is 5 or lastdobiemess is 7]. Her crotch fur, damp from her messy jeans, smells strongly of her scent from the last time you played with your dobie bitch[else if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99]. Her crotch fur, damp from her messy jeans, smells strongly of Fang's scent from the last time he used your dobie bitch[end if]. She releases a soft whimper of excitement and her short tail wags frantically as juices run down her legs. Pleased at the sight, you kneel behind her and get your cock lined up with her wet pussy. You tease your glans against her puffy, wet lips before aiming a little further up and push against her crinkled anus.";
		if dobieanal is false:
			say "     'I... that's...' she starts to say, her ears dipping a little as she realizes what you have in mind. 'I've never done anything like that before,' she whimpers. From the way her tail's still wagging, you can tell she's excited by the prospect, so you give another press against her tailhole. 'Mmm... alright, let's get kinky, boss,' she moans.";
		else:
			say "     'Mmm... I think you're feeling kinky again, boss,' she whimpers. 'Come on, then. Use your dirty doggy bitch,' she moans, pressing her rear back against your cock, urging you to fuck her ass again.";
		say "     Grabbing her ass tightly, you thrust forward, pushing your cock into her [if dobieanal is false]virgin [end if]hole and start fucking her. You're prepared to start slow, but Alexandra pushes back, urging you to fuck her rough and hard. You give her rear a swat and call her such a bad, dirty doggy and pound away at her. Your [cock size desc of player] cock [if cock length of player > 30]stretches her back door wide and makes a prominent and phallic bulge in your bad doggy bitch as you bugger her[else if cock length of player > 20]stretches her back door open and produces a visible swelling in your bad doggy bitch as you bugger her[else if cock length of player > 10]stuffs your bad doggy bitch's wonderfully tight anus[else]buggers your bad doggy bitch's back door[end if]. Her anal walls squeeze and pull around your shaft[if cockname of player is listed in infections of Knotlist] as your knot grinds against her dark pucker[end if], her body pushing back eagerly into every thrust. She may moan and whimper at being fucked up the ass, but she pants and leaks juices constantly as well, clearly very turned on by being used in such a way.";
		say "     As you keep fucking that tight ass of hers, you slip a hand between her legs to tend to her needy cunt, rubbing over her juicy folds and slipping a few fingers into her. You start by just teasing her clit and a few sensitive spots, but soon switch it up to pumping your fingers into her quivering hole in [one of]tandem[or]counterpoint[at random] to your thrusts into her ass[if dobieanal is false]. You have quite a bit of fun training your bitch, finding she's taking to being an anal slut quite readily[else]. You are quite pleased by how well your bitch is taking to being an anal slut[end if] and fuck her all the harder for it, much to her increasing delight.";
		if cockname of player is listed in infections of Knotlist:
			say "     With a final, hard thrust, you force your knot into her tight hole and tie with her. She gives a loud whimper as your thick bulb is crammed into her, but her juices soak her crotch as well as she cums hard. Her rectum clenches down around your knot and her anal muscles squeeze your shaft, milking it for all you can give. 'Oh yes, fill my [if dobieanal is false]virgin[else]naughty[end if] bitch ass,' she cries out. Now tied with her, you can only bash your hips against her sexy rear as you spurt your thick load into her[if cock width of player > 40]. Held in by your thick knot, your massive load causes the dobie bitch's belly to swell until it's touching the floor with all the jism your knot's keeping locked inside her bowels. Once your knot finally goes down enough to pull out, she collapses to the floor, panting and rubbing her bloated belly while your seed pours out of her gaping anus[else if cock width of player > 20]. With your knot tying her to you, your large load pools in her bowels, causing the dobie bitch's belly to grow rounded and slosh a little with the sound of your seed whenever she moves. Once your knot finally goes down enough to pull out, she flops onto her side, unable to stand quite yet after such a rough ride. She lies there panting, stroking her rounded belly as your seed slowly leaks from her creamy hole[else]. With your knot stuffing her, your hot load is kept locked inside her to pool in her bowels. Once your knot finally goes down enough, she flops onto her side, unable to stand quite yet after such a rough ride. She lies there panting, content to rub a finger at her creamy hole[end if].";
		else:
			say "     With a final, hard thrust, you drive your pulsing rod hard into her and cum. She gives a loud whimper as your [cock of player] shaft is crammed into her, but her juices soak her crotch as well as she cums hard. Her anal muscles squeeze your shaft, milking it for all you can give. 'Oh yes, fill my [if dobieanal is false]virgin[else]naughty[end if] bitch ass,' she cries out. Keeping a firm grip on her ass, you pound your hips against her sexy rear as you spurt your thick load into her[if cock width of player > 40]. Your massive load causes the dobie bitch's belly to swell until it's touching the floor with all the jism you're pumping into her bowels. Once you're done and have pulled out, she collapses to the floor, panting and rubbing her bloated belly while your seed pours out of her gaping anus[else if cock width of player > 20]. Your large load pools in her bowels, causing the dobie bitch's belly to grow rounded and slosh a little with the sound of your seed whenever she moves. Once you're done and have pulled out, she flops onto her side, unable to stand quite yet after such a rough ride. She lies there panting, stroking her rounded belly as your seed slowly leaks from her creamy hole[else]. You fuck her tight ass until your balls are drained into the dobie bitch before withdrawing. She flops onto her side, unable to stand quite yet after such a rough ride. She lies there panting, content to rub a finger at her creamy hole[end if].";
	now lastdobiemess is 2;
	now dobieanal is true;

to say badAlexandraSex5: [Blow job]
	say "     You push the ex-cop down onto her knees, pressing your cock into her face. She whimpers softly in excitement and wags her short tail quickly. She sniffs your crotch and slides her canine tongue along your cock and balls before sliding her muzzle over your meat. She uses her long tongue to eagerly lick along your shaft while you thrust into her warm, wet muzzle[if lastdobiemess is 3 or lastdobiemess is 4 or lastdobiemess is 6 or lastdobiemess is 7 or lastdobiemess is 97 or lastdobiemess is 98]. Her muzzle, still a little messy from the last time you used it, opens wide to get another taste of you[end if]. She rubs her paws over your [ball size][if cunts of player > 1] and finger your pussies[else if cunts of player is 1] and finger your pussy[end if][if cocks of player > 1]. She alternates between your cocks, alternating between paws and muzzle on each of them[end if][if lust of Alexandra > 12]. You can't help but grin as you look down at the pregnant bitch eagerly working over the cock that's knocked her up[end if].";
	say "     [if cock length of player > 30]The size of your [cock size desc of player] [cock of player] rod makes it difficult for the dobie bitch to cope, but you persevere and manages to stuff your massive shaft down her throat, distending her mouth and body around it[else if cock length of player > 20]The size of your [cock size desc of player] [cock of player] rod makes it a little difficult for the dobie bitch to cope, but you persevere and manage to stuff your massive shaft down her throat, causing a visible bulge in her mouth and throat[else if cock length of player > 10]Your [cock size desc of player] [cock of player] rod stuffs your dobie bitch's muzzle and throat nicely, letting you fuck her muzzle and deep throat her[else]Your [cock size desc of player] [cock of player] cock is easily handled by the dobie bitch's muzzle, leaving her free to slather it with her tongue[end if][if cockname of player is listed in infections of Knotlist]. She rubs at your swollen knot and slides her tongue across it with a low, muffled moan[end if]. As you fuck her face, you rub a hand over her head and scritch her ears, calling her your slutty doggy as you order her to keep it up. That is a command she's more than willing to comply with and moans happily.";
	say "     [if cock length of player > 20]She does her best to cope with your [cock size desc of player] shaft and lavishes attention upon it[else]She lavishes attention upon your [cock size desc of player] shaft[end if] with her muzzle, mouth and tongue, doing her best to please her master. Her paws rub and stroke at your exposed length whenever she pulls her muzzle back for a breath and over your [ball size][if cunts of player > 1] and [cunt size desc of player] cunts[else if cunts of player is 1] and [cunt size desc of player] cunt[end if] the rest of the time. You rub her head and ears like you would a dog, which sets her tail wagging anew. Grinning, you call her your good, bad dog again, ordering her to keep sucking your cock to earn her creamy treat.";
	if lust of Alexandra > 12:
		say "     [one of]You are quite pleased with your training of the doberwoman, having made her into a very eager and obedient plaything. The blow job is quite good and shows a lustful eagerness you're pleased to see in the corrupted cop[or]You're quite pleased with how she's doing; for someone with no experience before you started training her, she's coming along very nicely. Definitely an enthusiastic slut, you'll definitely enjoy your hard-earned prize for a good, long time if you have anything to say about it[at random]. Eventually this becomes too much and you pull her forward, burying her nose in your groin as your cock throbs and pulses, blasting your cum [if cock length of player > 20]directly into her belly[else if cock length of player > 10]down her throat[else]into her muzzle[end if]. You drain your [ball size] into her[if cock width of player > 40], leaving her already swollen belly so big she can hardly move at all. She can only lie there, rubbing her overfull tummy while moaning in pleasure[else if cock width of player > 20], leaving her with a bloated bellyful of semen that further inflates her rounded belly. This leaves her so full and plump that she chooses to lie there, rubbing her bulging belly[else], feeding her your cum which she happily swallows down. She happily rubs her paws over her full belly as she heads back to her post[end if].";
	else:
		say "     You are quite pleased with your training of the doberwoman, having made her into a very eager and obedient plaything. The blow job is quite good and shows a lustful eagerness you're pleased to see in the corrupted cop. Eventually this becomes too much and you pull her forward, burying her nose in your groin as your cock throbs and pulses, blasting your cum [if cock length of player > 20]directly into her belly[else if cock length of player > 10]down her throat[else]into her muzzle[end if]. You drain your [ball size] into her[if cock width of player > 40], leaving her belly so full and bloated that she can only lie there, rubbing her overfull tummy[else if cock width of player > 20], leaving her with a bloated bellyful of semen that she happily rubs with her paws as she wobbles back to her post[else], feeding her your cum which she happily swallows down[end if].";
	now lastdobiemess is 3;

to say badAlexandraSex6: [Get cunnilingus]
	say "     You push the ex-cop down onto her knees, pressing her muzzle to your [cunt size desc of player] pussy, ordering her to start licking. She whimpers softly in excitement and wags her short tail quickly. She sniffs your crotch and slides her canine tongue along your wet folds before sliding it into you[if lastdobiemess is 3 or lastdobiemess is 4 or lastdobiemess is 6 or lastdobiemess is 7 or lastdobiemess is 97 or lastdobiemess is 98]. Her muzzle, still a little messy from the last time you used it, sets to work eagerly to get another taste of you[end if]. She uses her long tongue to eagerly lick along your inner walls and lap up your flowing juices[if cocks of player > 1]. She runs her paws over your [cock size desc of player] [cock of player] cocks and your [ball size] while tending to your juicy cunt[else if cocks of player is 1]. She runs her paws over your [cock size desc of player] [cock of player] cock and your [ball size] while tending to your juicy cunt[end if][if cunts of player > 1]. For a while, she alternates between your pussies, licking at each of them before finally settling on one and using her fingers to rub at your wet folds[end if][if lust of Alexandra > 12]. You can't help but grin as you look down at the pregnant bitch eagerly lapping at your twat, knowing that you're the one who's knocked her up after fucking her juicy cunt[end if].";
	say "     [if cunt length of player > 12 and cunt width of player > 8]She licks and laps at your vagina as deeply as she can reach with her tongue while your grind your [cunt size desc of player] pussy against her muzzle. Wanting more, you end up pulling most of her muzzle into your spacious cunt, essentially fucking yourself with it while her tongue dives deeper. She seems quite pleased to be used by you in this manner, the slutty doggy bitch lusting for any way you'd like to use or abuse her[else if cunt length of player > 6]She licks and laps as deep as she can with her long doggy tongue while you grind your [cunt size desc of player] pussy against her muzzle[else]She licks and laps at your vagina, reaching your very depths to brush across your cervix while you grind your [cunt size desc of player] pussy against her muzzle[end if]. Her excited panting brushes across your folds while that broad tongue of hers runs along your inner walls and stimulates you deep inside. As you grind against her, you rub a hand over her head and scritch her ears, calling her your slutty doggy as you order her to keep it up. That is a command she's more than willing to comply with and moans happily, working her tongue even faster.";
	say "     [if cunt length of player > 12 and cunt width of player > 8]With her muzzle stuffed in your cunt, she works her tongue frantically, licking at your inner walls and reaching as deep as she can with it as she chases after your juices. She turns and rocks her muzzle inside you as best she can with you holding her head tightly to yourself, letting the soft fur over it run across your sensitive walls[else]With her muzzle pressed to your cunt, she works her tongue inside you frantically, licking at your inner walls and chasing after your juices[end if]. Shivers of delight run through you as you hold her in place, keeping her at her task. With your juices filling her muzzle and your scent filling her nose, the horny bitch whines lustfully and does her best to please you with that long, slobbery tongue of hers. You chuckle and call her your slutty, pussy-eating bitch, which makes her tail wag all the more.";
	say "     You are quite pleased with your training of the doberwoman, having made her into a very eager and obedient plaything. That slathering tongue is quite good and shows a lustful eagerness you're pleased to see in the corrupted cop. Eventually this becomes too much and you pull her forward as your cunt quivers and flows with a gush of your hot juices. You soak the [if lust of Alexandra > 12]pregnant [end if]bitch's muzzle as she tries her best to lap it all up. This sends you into another orgasm, drawing out your pleasure even further. As you're panting and trying to recover you push her back, popping that tongue out of you with a wet slurp. She smiles up at you and slowly licks your juices from her muzzle while [if lust of Alexandra > 12]reaching around her gravid belly to finger[else]fingering[end if] herself to a powerful climax of her own.";
	now lastdobiemess is 4;

to say badAlexandraSex7: [Lick Alexandra]
	if lust of Alexandra > 12:
		say "     Deciding to reward your slutty Doberman bitch, you help her to lie backwards over one of the tables and spread her legs. With a hand fondling her bosom, you press the other to her groin and slip a few fingers into her while kissing her pregnant belly[if lastdobiemess is 1 or lastdobiemess is 2]. Her crotch fur, damp from her messy jeans, smells strongly of your scent from the last time you used your dobie bitch[else if lastdobiemess is 5 or lastdobiemess is 7]. Her crotch fur, damp from her messy jeans, smells strongly of her scent from the last time you played with your dobie bitch[else if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99]. Her crotch fur, damp from her messy jeans, smells strongly of Fang's scent from the last time he used your dobie bitch[end if]. She yips and barks excitedly, panting happily as you start to play with her eagerly. Her juicy muff quivers as you pump your digits into her, quickly getting her worked up.";
		say "     Once you're satisfied she's wet and ready for you, you lower your head between her legs and start licking over those glistening folds. You work your tongue quickly, sometimes diving a finger or two back into her to hear the delightful yips and moans she'll make. At other points, you spread her pussy wide and instead dive your tongue as deep as it'll go into her[if dobieanal is true and lastdobiemess is 2]. Switching hands, you bring your wet fingers down to her recently used asshole and rub them across her pucked hole[else if dobieanal is true]. Switching hands, you bring your wet fingers down to her asshole and rub them across her puckered hole[end if][if dobieanal is true]. After some light teasing and licking, you plunge your slick fingers into her even as you push some fingers from your other hand into her pussy, stuffing both holes in one firm motion. This has her arch her back and cry out in delight, panting heavily as you have your way with her body. She moans particularly loud with you rub both sets of fingers together, stimulating her sensitive inner walls from both sides at once[end if]. You rub and tease your fingers inside her between licking over those juicy folds of hers, making sure to lavish plenty of attention upon her clit between telling her that this is her reward for being such a good, bad doggy slut for you.";
		say "     You keep this up, pleased to see the bad doggy slut moaning on the table and fondling her [if lastdobiemess is 6]cum-streaked [end if]bosom and tweaking her nipples as you do all this. Milk leaks from her breasts as she pinches her dark nipples. Enjoying the sight of the enthusiastic cop now debasing herself to be your needy bitch, you can't help but smile and give your clit a kiss and a slow lick. Keeping it up, you work your tongue over that sensitive nub, making her hips quiver with growing excitement. When she cums, she releases a loud, excited bark and her hot juices soak your face and her groin. You'd almost swear she tastes better now, her juices having a richer flavor. The flow runs down onto the table, leaving a wet patch for her to soak in as she lies there to recover from her powerful climax. You wipe your hand across her muzzle, spreading her juices over it so the scent can be a reminder of the pleasure her obedience brings.";
	else:
		say "     Deciding to reward your slutty Doberman bitch, you push her backwards over one of the tables and spread her legs. With a hand fondling her bosom, you press the other to her groin and slip a few fingers into her[if lastdobiemess is 1 or lastdobiemess is 2]. Her crotch fur, damp from her messy jeans, smells strongly of your scent from the last time you used your dobie bitch[else if lastdobiemess is 5 or lastdobiemess is 7]. Her crotch fur, damp from her messy jeans, smells strongly of her scent from the last time you played with your dobie bitch[else if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99]. Her crotch fur, damp from her messy jeans, smells strongly of Fang's scent from the last time he used your dobie bitch[end if]. She yips and barks excitedly, panting happily as you start to play with her roughly. Her juicy muff quivers as you pump your digits into her, quickly getting her worked up.";
		say "     Once you're satisfied she's wet and ready for you, you lower your head between her legs and start licking over those glistening folds. You work your tongue quickly, sometimes diving a finger or two back into her to hear the delightful yips and moans she'll make. At other points, you spread her pussy wide and instead dive your tongue as deep as it'll go into her[if dobieanal is true and lastdobiemess is 2]. Switching hands, you bring your wet fingers down to her recently used asshole and rub them across her puckered hole[else if dobieanal is true]. Switching hands, you bring your wet fingers down to her asshole and rub them across her puckered hole[end if][if dobieanal is true]. After some light teasing and licking, you plunge your slick fingers into her even as you push some fingers from your other hand into her pussy, stuffing both holes in one firm motion. This has her arch her back and cry out in delight, panting heavily as you have your way with her body. She moans particularly loud with you rub both sets of fingers together, stimulating her sensitive inner walls from both sides at once[end if]. You rub and tease your fingers inside her between licking over those juicy folds of hers, making sure to lavish plenty of attention upon her clit between telling her that this is her reward for being such a good, bad doggy slut for you.";
		say "     You keep this up, pleased to see the bad doggy slut squirming on the table and fondling her bosom and tweaking her nipples as you do all this. Enjoying the sight of the enthusiastic cop now debasing herself to be your needy bitch, you can't help but smile and give your clit a kiss and a slow lick. Keeping it up, you work your tongue over that sensitive nub, making her hips quiver with growing excitement. When she cums, she releases a loud, excited bark and her hot juices soak your face and her groin. The flow runs down onto the table, leaving a wet patch for her to soak in as she lies there to recover from her powerful climax. You wipe your hand across her muzzle, spreading her juices over it so the scent can be a reminder of the pleasure her obedience brings.";
	now lastdobiemess is 5;


to say badAlexandraSex8: [69]
	if player is male:
		say "     Deciding to reward your slutty Doberman bitch with both a treat and some fun of her own, you get her to lie on the floor. Moving beside her, bringing your cock to her face even as you nuzzle between her legs. She whimpers softly in excitement and wags her short tail quickly. She sniffs your crotch and slides her canine tongue along your cock and balls before sliding her muzzle over your meat. She uses her long tongue to eagerly lick along your shaft while you thrust into her warm, wet muzzle[if lastdobiemess is 3 or lastdobiemess is 4 or lastdobiemess is 6 or lastdobiemess is 7 or lastdobiemess is 97 or lastdobiemess is 98]. Her muzzle, still a little messy from the last time you used it, opens wide to get another taste of you[end if]. She rubs her paws over your [ball size][if cunts of player > 1] and finger your pussies[else if cunts of player is 1] and finger your pussy[end if][if cocks of player > 1]. She alternates between your cocks, alternating between paws and muzzle on each of them[end if][if lust of Alexandra > 12]. You can't help but grin as you look down at the pregnant bitch eagerly working over the cock that's knocked her up[end if].";
		say "     As she sets to work on your cock, you run a hand across her thigh and raise her leg. With a hand petting her tummy like a dog, you press the other to her groin and slip a few fingers into her[if lastdobiemess is 1 or lastdobiemess is 2]. Her crotch fur, damp from her messy jeans, smells strongly of your scent from the last time you used your dobie bitch[else if lastdobiemess is 5 or lastdobiemess is 7]. Her crotch fur, damp from her messy jeans, smells strongly of her scent from the last time you played with your dobie bitch[else if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99]. Her crotch fur, damp from her messy jeans, smells strongly of Fang's scent from the last time he used your dobie bitch[end if]. She yips and barks excitedly, panting happily as you start to play with her roughly. Her juicy muff quivers as you pump your digits into her, quickly getting her worked up.";
		say "     [if cock length of player > 30]The size of your [cock size desc of player] [cock of player] rod makes it difficult for the dobie bitch to cope, but you persevere and manages to stuff your massive shaft down her throat, distending her mouth and body around it[else if cock length of player > 20]The size of your [cock size desc of player] [cock of player] rod makes it a little difficult for the dobie bitch to cope, but you persevere and manage to stuff your massive shaft down her throat, causing a visible bulge in her mouth and throat[else if cock length of player > 10]Your [cock size desc of player] [cock of player] rod stuffs your dobie bitch's muzzle and throat nicely, letting you fuck her muzzle and deep throat her[else]Your [cock size desc of player] [cock of player] cock is easily handled by the dobie bitch's muzzle, leaving her free to slather it with her tongue[end if][if cockname of player is listed in infections of Knotlist]. She rubs at your swollen knot and slides her tongue across it with a low, muffled moan[end if].";
		say "     As you fuck her face, you bury your face between her legs and get to work eagerly lapping at her juicy pussy. You lick over those glistening folds, sliding your tongue across her sensitive petals, which only seems to encourage her all the more. You work your tongue quickly, sometimes diving a finger or two back into her to hear the delightful yips and moans she'll make. At other points, you spread her pussy wide and instead dive your tongue as deep as it'll go into her. You keep this up, pleased to have the bad doggy slut squirming in pleasure as she sucks you off.";
		say "     Feeling your orgasm approaching, you pick up the pace, lavishing attention upon her juicy folds and swiping your tongue across her throbbing clit in long licks that make her pussy quiver around the fingers stuffed into it. When she cums, she sucks down hard on your cock, burying her nose in your groin as your penis throbs and pulses, blasting your cum [if cock length of player > 20]directly into her belly[else if cock length of player > 10]down her throat[else]into her muzzle[end if]. You drain your [ball size] into her[if cock width of player > 40], leaving her belly so full and bloated from your [cum load size of player] load that she can only lie there, rubbing her overfull tummy[else if cock width of player > 20], leaving her with a bloated bellyful of semen that she happily rubs with her paws[else], feeding her your cum which she happily swallows down[end if]. When you're done, you push her head back and smile as she licks her muzzle, chasing after as much of your creamy load as she can get. As she's doing this, her paw drifts down to finger finger herself to another powerful climax. With your head right there to watch, this makes for a lovely show as you bask in the afterglow[if cock width of player > 40]. When that's done, she rolls over onto her back, unable to rise quite yet with her belly so full, so you leave here there for now[else if cock width of player > 20]. When that's done, you both get up and she wobbles back to her post, rubbing her full belly[else]. Only when that's done do you both get back up, her heading back to her post[end if].";
	else:
		say "     Deciding to reward your slutty Doberman bitch with both a treat and some fun of her own, you get her to lie on the floor. Moving beside her, bringing your juicy pussy to her face even as you nuzzle between her legs. She whimpers softly in excitement and wags her short tail quickly. She sniffs your crotch and slides her canine tongue along your wet folds before sliding it into you[if lastdobiemess is 3 or lastdobiemess is 4 or lastdobiemess is 6 or lastdobiemess is 7 or lastdobiemess is 97 or lastdobiemess is 98]. Her muzzle, still a little messy from the last time you used it, opens wide to get another taste of you[end if]. She uses her long tongue to eagerly lick along your inner walls and lap up your flowing juices[if cunts of player > 1]. For a while, she alternates between your pussies, licking at each of them before finally settling on one and using her fingers to rub at your wet folds[end if].";
		say "     As she sets to work on your cunny, you run a hand across her thigh and raise her leg. With a hand petting her tummy like a dog, you press the other to her groin and slip a few fingers into her[if lastdobiemess is 1 or lastdobiemess is 2]. Her crotch fur, damp from her messy jeans, smells strongly of your scent from the last time you used your dobie bitch[else if lastdobiemess is 5 or lastdobiemess is 7]. Her crotch fur, damp from her messy jeans, smells strongly of her scent from the last time you played with your dobie bitch[else if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99]. Her crotch fur, damp from her messy jeans, smells strongly of Fang's scent from the last time he used your dobie bitch[end if]. She yips and barks excitedly, panting happily as you start to play with her roughly. Her juicy muff quivers as you pump your digits into her, quickly getting her worked up.";
		say "     [if cunt length of player > 12 and cunt width of player > 8]She licks and laps at your vagina as deeply as she can reach with her tongue while your grind your [cunt size desc of player] pussy against her muzzle. Wanting more, you end up pulling most of her muzzle into your spacious cunt, essentially fucking yourself with it while her tongue dives deeper. She seems quite pleased to be used by you in this manner, the slutty doggy bitch lusting for any way you'd like to use or abuse her[else if cunt length of player > 6]She licks and laps as deep as she can with her long doggy tongue while you grind your [cunt size desc of player] pussy against her muzzle[else]She licks and laps at your vagina, reaching your very depths to brush across your cervix while you grind your [cunt size desc of player] pussy against her muzzle[end if]. Her excited panting brushes across your folds while that broad tongue of hers runs along your inner walls and stimulates you deep inside. As you grind against her, you rub a hand over her head and scritch her ears, calling her your slutty doggy as you order her to keep it up. That is a command she's more than willing to comply with and moans happily, working her tongue even faster.";
		say "     As you grind against her muzzle, you bury your face between her legs and get to work eagerly lapping at her juicy pussy. You lick over those glistening folds, sliding your tongue across her sensitive petals, which only seems to encourage her all the more. You work your tongue quickly, sometimes diving a finger or two back into her to hear the delightful yips and moans she'll make. At other points, you spread her pussy wide and instead dive your tongue as deep as it'll go into her. You keep this up, pleased to have the bad doggy slut squirming in pleasure as she eats you out.";
		say "     Feeling your orgasm approaching, you pick up the pace, lavishing attention upon her juicy folds and swiping your tongue across her throbbing clit in long licks that make her pussy quiver around the fingers stuffed into it. When she cums, she squirms her slathering tongue around inside you and this becomes too much. You pull her forward as your cunt quivers and flows with a gush of your hot juices. You soak the bitch's muzzle as she tries her best to lap it all up. This sends you into another orgasm, drawing out your pleasure even further. As you're panting and trying to recover you push her back, popping that tongue out of you with a wet slurp. She smiles at you and slowly licks your juices from her muzzle while fingering herself to another powerful climax of her own. With your head right there to watch, this makes for a lovely show as you bask in the afterglow of your two back-to-back orgasms.";
	now lastdobiemess is 7;


to say badAlexandraSex9: [Titty fuck]
	if lust of Alexandra > 12:
		say "     Eying those enlarged, milk-filled jugs of hers, you decide you'd like to feel them around your cock. With a firm hand on her shoulder, you get the ex-cop to obediently lie down on the floor. Moving atop the pregnant dobie, you rest your ass against her rounded belly and slide your [cock size desc of player] [cock of player] cock between her breasts[if lastdobiemess is 6]. Her bosom, still stained with your semen from last time, is a sexy sight[end if]. She grins and runs her paws over her tits, teasing her nipples as she presses her mounds around your shaft. Milk flows from her nipples, running down her furry breasts and across your shaft. Leaning her head down, she licks and kisses at your cock as you thrust between her melons[if lastdobiemess is 3 or lastdobiemess is 4 or lastdobiemess is 6 or lastdobiemess is 7 or lastdobiemess is 97 or lastdobiemess is 98]. Her muzzle, still a little messy from the last time you used it, opens wide to get another taste of you[end if]. You scritch her ears, telling her what a good doggy bitch she is and enjoy the soft feel of her furry flesh against your shaft.";
	else:
		say "     Eyeing those enlarged jugs of hers, you decide you'd like to feel them around your cock. With a firm hand on her shoulder, you get the ex-cop to obediently lie down on the floor. Moving atop her, you rest your ass against her taut belly and slide your [cock size desc of player] [cock of player] cock between her breasts[if lastdobiemess is 6]. Her bosom, still stained with your semen from last time, is a sexy sight[end if]. She grins and runs her paws over her tits, teasing her nipples as she presses her mounds around your shaft, letting you thrust between them. Leaning her head down, she licks and kisses at your cock as you thrust between her melons[if lastdobiemess is 3 or lastdobiemess is 4 or lastdobiemess is 6 or lastdobiemess is 7 or lastdobiemess is 97 or lastdobiemess is 98]. Her muzzle, still a little messy from the last time you used it, opens wide to get another taste of you[end if]. You scritch her ears, telling her what a good doggy bitch she is and enjoy the soft feel of her furry flesh against your shaft.";
	say "     [if cock length of player > 30]The size of your [cock size desc of player] [cock of player] rod only allows part of it to be held by her breasts, but it is still quite warm and enjoyable[else if cock length of player > 20]The size of your [cock size desc of player] [cock of player] rod allows it to be barely gripped in full by her breasts, but it is still quite warm and enjoyable[else]Your [cock size desc of player] [cock of player] rod is stuffed nicely between your dobie bitch's breasts, letting you fuck her tits with ease[end if][if cockname of player is listed in infections of Knotlist]. Your swollen knot rubs at the underside of her breasts[end if]. As you fuck her tits, you rub a hand over her head and scritch her ears, calling her your slutty doggy as you order her to keep it up. That is a command she's more than willing to comply with and moans happily, working her tongue excitedly across your flesh and pinching her nipples.";
	WaitLineBreak;
	say "     You are quite pleased with your training of the doberwoman, having made her into a very eager and obedient plaything. The feel of her larger breasts against your shaft is very nice and her lustful eagerness for it pleased you to see in the corrupted cop. Your stiff cock dribbles precum onto her fur as you thrust between her lovely mounds[if lust of Alexandra > 12] and milk starting to leak from her nipples and down her furry globes to further wet your shaft. You can't help but grin, knowing your slutty bitch has a litter of pups [AlexandraPupDaddyName]sired on the way[end if]. Feeling your climax coming, you moan that you've got a creamy treat to mark your bitch with on the way, taking a few more thrust and trying to hold out to enjoy it just a little longer. Eventually this becomes too much and you thrust eagerly and cum hard, blasting your [if cock width of player > 40]massive[else if cock width of player > 20]huge[else] sticky load across her bosom and over her muzzle. Her mouth, open wide, catches as much of it as she can get, gulping down your seed[end if]. When you're done, she gets up slowly, paws rubbing over her messy bosom and rubbing your cum into her tits.";
	now lastdobiemess is 6;

to say badAlexandraSex10: [Threesome with Fang]
	if lust of Alexandra > 12: [visibly pregnant]
		say "     Using some blankets for padding under her rounded belly, you get the ex-cop down on her hands and knees. You grab her taut ass and give it a firm squeeze[if lastdobiemess is 1 or lastdobiemess is 2]. Her crotch fur, damp from her messy jeans, smells strongly of your scent from the last time you used your dobie bitch[else if lastdobiemess is 5 or lastdobiemess is 7]. Her crotch fur, damp from her messy jeans, smells strongly of her scent from the last time you played with your dobie bitch[else if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99]. Her crotch fur, damp from her messy jeans, smells strongly of Fang's scent from the last time he used your dobie bitch[end if]. She releases a soft whimper of excitement and her short tail wags frantically as juices run down her legs. Pleased at the sight, you kneel behind her and slip a few fingers into her pussy. You frig her canine cunt and enjoy her whimpers of delight as she starts to moan and beg for you to fuck her.";
	else:
		say "     You push the ex-cop down onto her hands and knees, grabbing her taut ass and giving it a firm squeeze[if lastdobiemess is 1 or lastdobiemess is 2]. Her crotch fur, damp from her messy jeans, smells strongly of your scent from the last time you used your dobie bitch[else if lastdobiemess is 5 or lastdobiemess is 7]. Her crotch fur, damp from her messy jeans, smells strongly of her scent from the last time you played with your dobie bitch[else if lastdobiemess is 97 or lastdobiemess is 98 or lastdobiemess is 99]. Her crotch fur, damp from her messy jeans, smells strongly of Fang's scent from the last time he used your dobie bitch[end if]. She releases a soft whimper of excitement and her short tail wags frantically as juices run down her legs. Pleased at the sight, you kneel behind her and slip a few fingers into her pussy. You frig her canine cunt and enjoy her whimpers of delight as she starts to moan and beg for you to fuck her.";
	say "     At this point, you pull your fingers abruptly away and call Fang over. The wolf, watching the action attentively from the door, rushes over, nosing at the doberwoman's juicy cunt. 'But boss, I thought you were gonna...' she starts to say, but you spank her ass with a hard swat just as the wolf's tongue slathers across her pussy. She whimpers and her tail wags excitedly.";
	say "     'If you're going to slut around with the hounds like some common bitch, then I may as well get to enjoy the show.' You run a hand down Fang's back, encouraging him to mount the ex-cop, which he does without delay. Reaching under, you stroke the wolf's cock and get it lined up, watching it spear into the doberwoman's puffy folds as she cries out lustfully as you get the wild beast to fuck her.";
	say "     Once inside her, Fang starts to got at it[if lust of Alexandra > 12], showing some restraint because of her pregnancy, but still[end if] giving her a good, hard pounding that has them both panting. After watching that red spear of meat slip in and out of your bitch for a while, you decide it's time to get in on the action and move around to the front of her. Grabbing her head firmly, you press her face to your crotch, forcing her to start licking at your loins";
	if player is male: [sucks cock]
		say ". She slides her canine tongue along your cock and balls before sliding her muzzle over your meat. Her long tongue licks eagerly along your shaft while the wolf's thrusts press her forward onto it[if lastdobiemess is 3 or lastdobiemess is 4 or lastdobiemess is 6 or lastdobiemess is 7 or lastdobiemess is 97 or lastdobiemess is 98]. Her muzzle, still a little messy from the last time you used it, opens wide to get another taste of you[end if]. She rubs her paws over your [ball size][if cunts of player > 1] and finger your pussies[else if cunts of player is 1] and finger your pussy[end if][if cocks of player > 1]. She alternates between your cocks, alternating between paws and muzzle on each of them[end if][if lust of Alexandra > 12]. You can't help but grin as you look down at the pregnant bitch eagerly working over the cock that's knocked her up[end if].";
		say "     [if cock length of player > 30]The size of your [cock size desc of player] [cock of player] rod makes it difficult for the dobie bitch to cope, but between Fang's insistent pounding from behind and you pushing in from the front, you manage to stuff your massive shaft down her throat, distending her mouth and body around it[else if cock length of player > 20]The size of your [cock size desc of player] [cock of player] rod makes it a little difficult for the dobie bitch to cope, but with the help of Fang's insistent pounding from behind her, you manage to stuff your massive shaft down her throat, causing a visible bulge in her mouth and throat[else if cock length of player > 10]Your [cock size desc of player] [cock of player] rod stuffs your dobie bitch's muzzle and throat nicely, letting you fuck her muzzle and deep throat her while she's getting pounded from behind[else]Your [cock size desc of player] [cock of player] cock is easily handled by the dobie bitch's muzzle, leaving her free to slather it with her tongue while she's getting pounded from behind[end if][if cockname of player is listed in infections of Knotlist]. She rubs at your swollen knot and slides her tongue across it with a low, muffled moan[end if]. As you fuck her face, you rub a hand over her head and scritch her ears, calling her your slutty bitch who bends over for the animals.";
		say "     [if cock length of player > 20]She does her best to cope with your [cock size desc of player] shaft[else]She lavishes attention upon your [cock size desc of player] shaft[end if] while the wild beast atop her fucks her. Her paws rub and stroke at your exposed length whenever she pulls her muzzle back for a breath and over your [ball size][if cunts of player > 1] and [cunt size desc of player] cunts[else if cunts of player is 1] and [cunt size desc of player] cunt[end if] the rest of the time. You rub Fang's head[if HP of Fang is 3 or HP of Fang is 4], telling your strong alpha to fuck that bitch hard[else] as you would a dog, telling him to fuck that bitch hard[end if], causing the ex-cop to whimper in shameful delight.";
		if lust of Alexandra > 12:
			say "     Alexandra releases a muffled moan around your cock as her hips quiver and her tonguework becomes more frantic. Grinning and knowing she's cumming from the humiliating fuck she's getting, you scritch her ears and call her your good, bad girl through gritted teeth, cumming moments later [if cock length of player > 20]directly into her belly[else if cock length of player > 10]down her throat[else]into her sucking muzzle[end if]. Fang howls as well as he pumps his hot wolf semen into her, having tied with the doggy bitch. Between your [cum load size of player] load and Fang's, [if cock width of player > 40]her already swollen belly is left so big she can hardly move at all. She can only lie there, rubbing her overfull tummy while moaning in pleasure[else if cock width of player > 20]leaving her with a bloated bellyful of semen that further inflates her rounded belly. She is left her so full and plump that she chooses to lie there, rubbing her bulging belly[else]she happily swallows down all she can get while the wolf's seed fills her womb. She happily rubs her paws over her full belly as she heads back to her post[end if].";
		else:
			say "     Alexandra releases a muffled moan around your cock as her hips quiver and her tonguework becomes more frantic. Grinning and knowing she's cumming from the humiliating fuck she's getting, you scritch her ears and call her your good, bad bitch through gritted teeth, cumming moments later [if cock length of player > 20]directly into her belly[else if cock length of player > 10]down her throat[else]into her sucking muzzle[end if]. Fang howls as well as he pumps his hot wolf semen into her, having tied with the doggy bitch. Between your [cum load size of player] load and Fang's, [if cock width of player > 40]her belly is left so full and bloated that she can only lie there, rubbing her overfull tummy[else if cock width of player > 20]she is left with a bloated bellyful of semen that she happily rubs with her paws as she wobbles back to her post[else]she happily swallows down all she can get while the wolf's seed fills her womb. She happily rubs her paws over her full belly as she heads back to her post[end if].";
		now lastdobiemess is 97;
	else: 	[eats pussy]
		say ". She slides her canine tongue along your wet folds before sliding it into you[if lastdobiemess is 3 or lastdobiemess is 4 or lastdobiemess is 6 or lastdobiemess is 7 or lastdobiemess is 97 or lastdobiemess is 98]. Her muzzle, still a little messy from the last time you used it, sets to work eagerly to get another taste of you[end if]. Her long tongue licks eagerly along your inner walls and lap up your flowing juices while the wolf's thrusts press her cool nose against your clit[if cunts of player > 1]. For a while, she alternates between your pussies, licking at each of them before finally settling on one and using her fingers to rub at your wet folds[end if][if lust of Alexandra > 12]. You can't help but grin as you look down at the pregnant bitch eagerly lapping at your twat, knowing that you're the one who's knocked her up after fucking her juicy cunt[end if].";
		say "     [if cunt length of player > 12 and cunt width of player > 8]She licks and laps at your vagina as deeply as she can reach with her tongue while your grind your [cunt size desc of player] pussy against her muzzle. Wanting more and helped along by Fang's rough pounding, you end up pulling most of her muzzle into your spacious cunt, essentially fucking yourself with it while her tongue dives deeper. She seems quite pleased to be used by you in this manner, the slutty doggy bitch lusting for any way you'd like to use or abuse her[else if cunt length of player > 6]She licks and laps as deep as she can with her long doggy tongue while Fang's thrusting grinds her muzzle against [cunt size desc of player] pussy[else]She licks and laps at your vagina, reaching your very depths to brush across your cervix while Fang's thrusting grinds her muzzle against your [cunt size desc of player] pussy[end if]. Her excited panting brushes across your folds while that broad tongue of hers runs along your inner walls and stimulates you deep inside. As you fuck her face, you rub a hand over her head and scritch her ears, calling her your slutty bitch who bends over for the animals.";
		say "     [if cunt length of player > 12 and cunt width of player > 8]With her muzzle stuffed in your cunt, she works her tongue frantically, licking at your inner walls and reaching as deep as she can with it as she chases after your juices. She turns and rocks her muzzle inside you as best she can with the wild beast pistoning into her, letting the soft fur over it run across your sensitive walls[else]With her muzzle pressed to your cunt, she works her tongue inside you frantically, licking at your inner walls and chasing after your juices as best she can with the wild beast pistoning into her[end if]. Shivers of delight run through you as you hold her in place, keeping her at her task. With your juices filling her muzzle, your scent filling her nose and wolf cock filling her cunt, the horny bitch whines lustfully and does her best to please you both. You rub Fang's head[if HP of Fang is 3 or HP of Fang is 4], telling your strong alpha to fuck that bitch hard[else] as you would a dog, telling him to fuck that bitch hard[end if], causing the ex-cop to whimper in shameful delight.";
		say "     Alexandra releases a [if cunt length of player > 12 and cunt width of player > 8]muffled moan from inside your clenching pussy[else]long moan[end if] as her hips quiver and her tonguework becomes more frantic. Grinning and knowing she's cumming from the humiliating fuck she's getting, you scritch her ears and call her your good, bad girl through gritted teeth, cumming moments later with a gush of juices. You soak the [if lust of Alexandra > 12]pregnant [end if]bitch's muzzle as she tries her best to lap it all up as Fang starts to howl as he pumps his hot wolf semen into her, having tied with the doggy bitch. This sends you into another orgasm, drawing out your pleasure even further. As you're panting and trying to recover you push her back, popping that tongue out of you with a wet slurp. She smiles up at you and slowly licks your juices from her muzzle while still tied to the wolf cumming inside her.";
	now lastdobiemess is 98;

to say badAlexandraSex11: [mostly micro play with soft-vore scene]
	say "     Looking at you with hunger in her eyes, Alexandra comes up with a proposition, 'You know, maybe you should fill me some other way.' You tilt your head in puzzlement. 'Yeah, I saw that you have those mushrooms with you, and I do know what they do, since I saw that weird place when I used to roam the city while searching for criminals.' The anthro dog gets lost in her own thoughts, reminiscing about those days. With a heavy sigh, she keeps talking, 'Oh, those innocent days. But enough about me. We are here to talk about the future, and how you should treat me better.'";
	say "     You are asked to pull one of the shrooms and give it to her. The ex-police dog examines the item for a bit - smelling it, just like you would expect from a search dog. After making sure that the item is exactly what she asked for, the girl offers it back to you, slightly puzzled but nonetheless you get it back. When you are getting ready to put it back inside your pack, your hand is stopped by her paw. 'No, you dumbass,' you are reprimanded by her authority. 'Now you are going to eat it, so I can play with you,' the gal tells you with an impish smile.";
	WaitLineBreak;
	say "     Not wanting to see what would happen if you disobey her, you eat the shroom you were offered back. Your body diminishes in size and your clothes outgrow you in an awesome time, until you are in the darkness of a cave created by your stuff with the only light source showing the feet of your mistress. But you don't have time to muse at those as you are grabbed by the same paw that offered you the shrooms. 'You are so cute now,' the ex-cop says as she licks her lips. 'Oh, I'm getting hungrier for you by the second.'";
	say "     Her saliva glisten and drips as the hungry gal opens her mouth wide enough for you to fit inside, as you are finally put inside without a chance to answer. The inside of her mouth is as you would expect wet, not as slippery as an aroused vagina, but enough for you to feel the eroticism of this act.";
	decrease carried of glowing mushroom by 1;
	WaitLineBreak;
	say "     Sitting on her tongue all her movements are send straight to your genitals, specially when she laughs at your own moans. The horny girl moves her tongue like an electric bull, making you hold on her teeth, gums or anything you can get your hands on so you can at least stay sitting. With your position of cowgirl, [if player is female]your pussy keeps being teased, and your arousal leaks and spreads on her mouth and she probably tasted as more vibrations travel to your body[else if player is male]your cock is teased and prodded by her curious tongue making yourself hard but not enough to relieve yourself of this feeling of denial the dog-woman has over you[else]your ass is licked everywhere, normally it would be just your asshole but with her size your whole butt is licked and teased[end if], making your body shiver with the clash of feeling as you feel the pleasure and the fear of being swallowed whole.";
	say "     This all makes you cum hard inside her mouth, [if player is male]spilling your insignificant seed on her tongue[else]trembling as you spill any liquid lust you had on her tongue[end if], you crash inside her muzzle resting in the glowing daze of your orgasm. But the crafty girl doesn't appear to share your idea, as you are soon robed of you 'floor' and crash on her palate with her tongue looming above you with what appears to be a foreboding thought.";
	WaitLineBreak;
	if player is female: [tongue vagina]
		say "     The tongue soon penetrates your folds, making you scream with the sudden invasion. You shiver in pain as the giant appendage forces its way inside you bulging your stomach outward inch by inch, even reaching your cervix - that makes you jump in surprise. Trying to hold on her teeth or anything there, so you can keep yourself in place as the alien organ is attacking your cunny, your own tongue hangs out of your mouth without the rest of the last orgasm and the new pleasure. Her force crashes you on the 'ground' as she keeps violating your - now gaping cunt, but she doesn't appear to be happy with just that in soon your violator pushes the rest of her tongue inside you, penetrating you cervix and exploring your womb. That floods your mind with pain and pleasure as it goes straight to your brain but left you still denied of a climax - it's as if the bitch knows when you are going to cum and deliberated leaves you wanting, you stain her mouth with your unsatisfied juices and the bad cop fills your poor womb with her saliva.";
	else if player is male: [tongue penis]
		say "     The tongue licks your penis teasing it as she keeps rubbing anyway she can, even your ass is licked again even being prodded with the tip. You are denied endlessly, it's almost as if Alexandra can read your body movements, and every time you are close to another orgasm she stops letting you starved for any kind of release. Your body gets to a point where even the mere touch on your genitals send electric shocks to your brain, but without the orgasm you left to only mutter 'Please...' in hopes of any kind of compassion from your captor. But most of your pleas fall in deaf ears; the bad girl only wants to see you suffer in a state of build-up, anticipation but no climax. In to time you fall exhausted on her palate, breathing heavily with the only saving grace that it's not a cold floor.";
	else: [tongue anal]
		say "     The tongue soon violates your ass, forcing your way inside your tight hole. You scream in pain as the giant 'tentacle' buries all the way to your colon, [if player is male]making you jolt backwards as it slams against your male 'love-button' mixing a huge pleasure with the giant pain of this forceful penetration[else]the pain keeps building up against your pleasure[end if]. Your stomach bulges and deforms making way for your invader, and soon you look like you are pregnant with the child of the appendage that is violating you. Your mind wanders for a bit with the idea of giving birth to a tentacled monster but with your thoughts in disarray from the pain the dream is a fleeting one. And you soon is dropped on the wet 'ground' trembling with pain and half-ecstasy.";
		WaitLineBreak;
	if a random chance of 1 in 2 succeeds:
		say "     Without any strength left in your body from all this teasing, and resting precariously on the slippery surface of her tongue, you start sliding down her muzzle. Traveling through her gullet, you are pressed against her flesh, pushing you down. Her inner walls squeeze and trap you, the liquid inside making it all the more difficult to breathe, your lungs burning without oxygen. The slippery sensation makes it feels so erotic, and the descent is easy on your body. Your mind lapses into a hazy state of pain and pleasure, until you can't hold it anymore and cum hard inside her digestive system.";
		say "     The anthro bitch wheezes and coughs, finally pushing you back the way you came until you are thrown back in the floor. 'You really want to be my meal, huh?' She toys with the idea before cleaning the drool from the side of her mouth. 'Even if that idea is quite alluring, I don't want to get rid of you, not while I can still have some fun with you.' The voracious bitch smiles at you. 'But in the future you might be a great snack.' She winks at you. When you finally grow back to normal, Alexandra looks grumpy, making you ask why. 'You were so cute at that size.' The cranky dog goes back to what she was doing, feeling sad for the cute pet she lost.";
	else:
		say "     The satisfied woman takes you out of her mouth, putting you back on a your bed inside the library, you can finally rest for a bit while she gets comfy beside you. Acting in a more sweet way, the now-calm bitch strokes your body, running her index finger along your neck, chest and stomach. It looks like the dog is treating you like a cat. 'You know, maybe I should keep you as my pet,' the anthro woman says with a grin. 'A little horny pet that can even be a snack for me when I get tired of it.' Her smile starts to leak some of her saliva. Looks like this his girl is still hungry. You shiver in anticipation as her muzzle draws closer to your own body - it's over, she is going to eat you for real now! But outside of your expectations the hungry dog just kisses you.";
		say "     'I'm hungry, but not that hungry,' she tells you with a coy smile. 'And besides... You can still be fun.' Alexandra jumps off the bed and walks away, looking for something to feed her for real this time. You rest on the bed for a while, just waiting to grow back to normal.";

Part 3 - Event Scenes w/Fang

to say badAlexandraFang0:
	say "     You catch sight of Alexandra and Fang over by the door to the library. While she's on guard, he's sniffing around her with obvious interest. She acts like she's unaware of his attention, but you can see her tail wagging excitedly as he noses between her legs. When his teeth catch onto the seat of her jeans and start tugging on them, she unzips them and starts squirming out of them, moving onto all fours. 'That's right, you big, bad wolf. You've found yourself a juicy bitch,' she barks.";
	say "     Shall you [link]enjoy the show (Y)[as]y[end link] as your two guards become better acquainted or do you object and [link]break them up (N)[as]n[end link], preferring to keep the doberwoman all for yourself?";
	if player consents:
		say "     Moving into a better position to watch the show, you smile at Alexandra as she wags her rear invitingly for the feral wolf. Requiring no more coaxing, he pounces atop the dog woman and drives his cock into her with a lustful growl. She moans and pants as he shifts position and starts fucking away at your prize bitch, sharing in your spoils to stake a claim of his own on, and in, her.";
		say "[badAlexandraFang1]";
	else:
		if HP of Fang is 3 or HP of Fang is 4: [alpha Fang can't be stopped]
			say "     Heading over towards the large wolf and the doberman bitch, you start to tell them to break it up, but Fang ignores you. He pounces atop the dog woman and drives his cock into her with an angry growl at you, causing you to slink back. You try to approach again, but he growls and snaps at you and you slink back from your alpha wolf, submitting to his dominance of you. Seeing you give in and backing off, he growls 'watch' at you before turning his attention back to her. It seems like you'll have to witness Fang using your prize bitch and accept him using her whenever he wants to lay claim to her.";
			say "[badAlexandraFang1]";
		else if player is not male and player is female: [herm player]
			say "[badAlexandraFang3]";
		else if player is not male: [neuter player]
			say "     You start to head over to the wolf and doberman, intent on showing her who she really belongs to, but you stop short after a few steps. Remembering that you have no means to properly reinforce to your bitch that she's your sex toy if you lack a sex of your own. You can only settle in to watch and accept that Alexandra will need to get what her bitch body needs from Fang until you're better equipped to satisfy her. As you're sitting down somewhere lined up for the sexy show, Fang pounces atop your prize bitch, sharing in your spoils to stake a claim of his own on, and in, her.";
			say "[badAlexandraFang1]";
		else: [male player]
			say "[badAlexandraFang2]";

to say badAlexandraFang1: [let Fang fuck her]
	say "     Alexandra pants and moans like a bitch in heat as the wild wolf pounds into her. As you watch, his throbbing red cock drives into her juicy canine cunt over and over again, her puffy lips stretched around that thick rod. Her breasts sway and she pants, drooling onto the ground as she gets a rough pounding like the kind she's been trained to enjoy. Between her raw cries of lust, she moans about being a bitch, a slut and an animal, and the wolf is more than happy to treat her as such.";
	say "     As they continue to fuck, Fang's pace grows faster still and the wet, slick sounds of them going at it grow louder. Watching this, you grow increasingly aroused, the sight of the policewoman so debased as to give herself willingly to an animal to be fucked and bred is very exciting[if player is male]. Taking a hold of your throbbing cock[smn], you start playing with yourself. You work your hand over your hard shaft, stroking in time to the wolf's frantic thrusts[else if player is female]. Slipping a hand between your legs to your wet folds, you start playing with yourself. You pump a few fingers into your cunt, working in time to the wolf's frantic thrusts[else]. Lacking a proper gender of your own, you run your hands all over your body, rubbing your bare groin and teasing yourself as best you can[end if]. The show is very exciting and you find yourself longing for a chance to share the needy bitch with the wolf in the future.";
	WaitLineBreak;
	say "     Grinding his knot against her puffy folds, he slowly spreads them open a little more with every hard thrust into her. Finally, her needy cunt stretches open enough and allows the thick bulb entrance before clamping down around it. The two lustful canines howl as Fang's ballsack twitches visibly and hot juices run down Alexandra's legs. The wolf bites down onto the back of her neck as he cums heavily into her and she quivers and pants in ecstasy at this rough treatment[if player is not neuter]. Seeing them getting off and knowing the wolf's hot semen is flooding into the ex-cop has you working your hand frantically, cumming hard moments later[end if].";
	say "     After draining his balls, the wolf climbs off of Alexandra and turns around while still tied in her, remaining locked inside her like she were a normal dog. She flops down, tired but satisfied, rubbing at her stretched cunt and the base of the wolf cock locked inside herself with a sigh of pleasure. From the look of them, they'll certainly be going at it again sometime soon. You'd best be keeping an eye on your prize bitch from now on.";
	LineBreak;
	if "Top Dog" is listed in feats of player:
		say "     Your [']Top Dog['] feat has been replaced by the [']Cuckold['] feat. Your [bold type]perception[roman type] has gone up by one and your earlier [bold type]charisma[roman type] bonus has been removed.";
		remove "Top Dog" from feats of player;
		decrease charisma of player by 1;
	else:
		say "     You and Alexandra have earned the [']Cuckold['] feat, making her more fertile. Your [bold type]perception[roman type] has also gone up by one.";
	add "Cuckold" to feats of player;
	increase perception of player by 1;
	now level of Alexandra is 2; [shared bitch]
	now A_Fang is false; [new dialog for new status]
	now lastdobiemess is 99; [last used by Fang]
	impregAlexandraChance with "Fang";
	now lastfuck of Alexandra is turns;
	now lastfuck of Fang is turns;
	WaitLineBreak;

to say badAlexandraFang2: [male player stops Fang and establishes dominance]
	say "     Growling angrily at your wolf, you grab him by the scruff of the neck as he's preparing to make the leap onto the doberman's back. He waves his paws in the air, as if trying to grab at the bitch so close. His cock is hard and throbbing, dribbling with precum. You hold him and give him a shake before shoving him aside. 'No, Fang, this bitch is mine,' you add, making the beta wolf slink back a couple of yards.";
	say "     During this, Alexandra's risen to her feet and is quite angry that you've denied her a good and proper fucking from the wolf. 'Oh? I'm all yours, am I?' she growls, pulling off her jacket to get herself completely nude. 'How about you prove it, boss?' Clearly goading you in search of the rough sex you've denied her, you make a grab for her.";
	say "     A brief struggle ensues with you trying to pin the obstinate bitch down which ends with her tumbling out the door of the library and into the open street. You pounce on her before she can get back up, fighting to pin her down. She continues to resist, barking for you to fucking take her if you're going to take her and freeing your crotch between trying to push you off. Frustrated by your prize bitch being such a bad girl, you pin down her shoulders and drive your [cock of player] shaft into her hard, spreading her cunt[if cock length of player > 20] wide[end if], making her cry out in pleasure. Growling dominantly down at her, you fuck her out in the plain view of the city for all to see as you stake your claim on her once again.";
	WaitLineBreak;
	say "     The sex is rough and wild, your hands groping lustfully at her breasts and hips while you pound away at her. She pants and moans, her legs locked around your hips and her paws clawing and scratching at your back. These scratches leave deep red marks that will take time for even the nanites to heal, but the pain of them only reinvigorates your drive to pound her bitch cunt to reminder her why you're the boss. As you're fucking her, Fang can only watch on as you stake a fresh claim on the doberwoman and so knows she's yours, cock hard but untended.";
	say "     As you're nearing your peak, you grab her by the muzzle and hold it closed, turning her to face you while fucking her. 'I'm the boss here, aren't I?' you growl. She can only whimper and nod, her jaws held shut by your firm grip. 'That's right. And that means this fucking muzzle of yours is mine,' you say, pushing her head back before grabbing her breasts roughly, groping them painfully hard. As you squeeze her [if ( HP of Alexandra is 3 and lust of Alexandra > 12 ) or HP of Alexandra > 3]plump [end if]tits, fresh juices soak her crotch. 'And these fucking tits of yours are mine too,' you add, pinching her nipples. Your hands then run down to her hips, squeezing her rear hard and pulling her up into another thrust. 'And that hot ass of yours, and especially,' you rumble in her ear as you pause your thrusting for a second, 'that bitch cunt of yours. Mine!' you drill into her one last time, cumming hard. This sets her off as well, crying out loudly with a barking howl of lust and pleasure as you fill her womb with your hot seed.";
	WaitLineBreak;
	say "     When you're done cumming in her[if cock width of player > 30] and she's left so stuffed she struggles to move with all your virile semen in her[else if cock width of player > 20] and she's left with a bulge in her belly from all your virile semen in her[end if], you pull out and wipe your cock off across her panting muzzle. She looks up at you with increased submission and loyalty from the rough and public claiming of her. Feeling satisfied, you march back to the library doors and pull them open. Turning to her, you whistle and tell her to come back inside, calling her like a dog. She responds obediently, staggering to her feet and walks back in - naked, leaking cum and wagging her tail as she goes. Once she's in, you step back out, grab Fang by the scruff of the neck and drag him back in as well. You're quite confident that they both now know she belongs to you exclusively.";
	LineBreak;
	say "     You and Alexandra have earned the [']Top Dog['] feat, making her more fertile. Your [bold type]charisma[roman type] has also gone up by one.";
	add "Top Dog" to feats of player;
	add "Player's Bitch" to Traits of Alexandra;
	now AlexandraPlayersBitch is active;
	increase perception of player by 1;
	decrease HP of player by 10;
	now level of Alexandra is 1; [unshared bitch]
	now A_Fang is false; [new dialog for new status]
	now lastdobiemess is 1;
	increase AlexandraCreampieCount by 1;
	impregAlexandraChance with "Player";
	now lastfuck of Alexandra is turns;
	WaitLineBreak;

to say badAlexandraFang3: [herm player stops Fang and establishes dominance]
	say "     Growling angrily at your wolf, you grab him by the scruff of the neck as he's preparing to make the leap onto the doberman's back. He waves his paws in the air, as if trying to grab at the bitch so close. His cock is hard and throbbing, dribbling with precum. You hold him and give him a shake before shoving him aside. 'No, Fang, you don't get to cum in my favorite bitch,' you add, making the beta wolf slink back a couple of yards.";
	say "     During this, Alexandra's risen to her feet and is quite angry that you've denied her a good and proper fucking from the wolf. 'Oh? And if I'm not to get it from the wolf here,' she growls, pulling off her jacket to get herself completely nude, 'where'm I going to get it, miss bossy?' Clearly goading you in search of the rough sex you've denied her, you grab her nightstick and tell her that if she wants a cock so badly, you'll just have to improvise.";
	WaitLineBreak;
	say "     A brief struggle ensues with you trying to pin the obstinate bitch down which ends with her tumbling out the door of the library and into the open street. You pounce on her before she can get back up, fighting to pin her down. She continues to resist, barking for you to fucking take her if you're going to take her and freeing your crotch between trying to push you off. Frustrated by your prize bitch being such a bad girl, you pin down her shoulders and push her legs apart before stuffing a few fingers into her, making her cry out in pleasure. Growling dominantly down at her, you replace those fingers with the shaft of the nightstick, pushing it unceremoniously into her cunt.";
	say "     The sex gets wild and rough once you shift positions and lower yourself down onto the handle of the nightstick, stuffing the ridged grip into your pussy. With a hand to steady it, it makes for an improvised strap-on for fucking her out in the plain view of the city for all to see as you stake your claim on her once again. Your free hand gropes lustfully at her breasts and hips while you pound away at her. She pants and moans, her legs locked around your hips and her paws clawing and scratching at your back. These scratches leave deep red marks that will take time for even the nanites to heal, but the pain of them only reinvigorates your drive to pound her bitch cunt to reminder her why you're the boss. As you're fucking her, Fang can only watch on as you stake a fresh claim on the doberwoman and so knows she's yours, cock hard but untended.";
	WaitLineBreak;
	say "     As you're nearing your peak, you grab her by the muzzle and hold it closed, turning her to face you while fucking her. 'I'm the boss here, aren't I?' you growl. She can only whimper and nod, her jaws held shut by your firm grip. 'That's right. And that means this fucking muzzle of yours is mine,' you say, pushing her head back before grabbing her breast roughly, groping them painfully hard. As you squeeze her [if ( HP of Alexandra is 3 and lust of Alexandra > 12 ) or HP of Alexandra > 3]plump [end if]tit, fresh juices soak her crotch. 'And these fucking tits of yours are mine too,' you add, pinching her nipple. Your hand then runs down to her hips, squeezing her rear hard and pulling her up into another thrust of the nightstick. 'And that hot ass of yours, and especially,' you rumble in her ear as you pause your thrusting for a second, 'that bitch cunt of yours. Mine!' you drill into her one last time, cumming hard. This sets her off as well, crying out loudly with a barking howl of lust and pleasure as you rapidly pound the nightstick into her over and over again.";
	say "     When you're done cumming and she's been pounded into a stupor, you grip the base of the nightstick and pop the handle out of you with a wet slurp before quickly yanking it out of her thoroughly abused hole. As you wipe it across her chest, she looks up at you with increased submission and loyalty from the rough and public claiming of her. Feeling satisfied, you march back to the library doors and pull them open. Turning to her, you whistle and tell her to come back inside, calling her like a dog. She responds obediently, staggering to her feet and walks back in - naked and with her juices running down her thighs, wagging her tail as she goes. Once she's in, you step back out, grab Fang by the scruff of the neck, run the nightstick meaningfully across his ass as a warning and drag him back in as well. You're quite confident that they both now know she belongs to you exclusively.";
	WaitLineBreak;
	say "     As you're taking a moment before getting on to other tasks, you hear some soft growling coming from over at the library entrance. Heading over, you notice that Fang's sniffing around Alexandra again. His canine shaft is dangling erect between the wolf's legs and it is clear what he intends to do with the bitch. As the former cop sees that you're watching, she grins and looks right into your eyes as her hands move to undo the button of her pants. Sliding them down over her long legs, she bares her lower half for everyone to see - and Fang immediately circles around her to stick his muzzle between those legs and lap at her crotch.";
	say "     Panting in arousal at the wolf licking her, Alexandra smirks at you and shrugs out of her leather jacket in a very provocative way, baring her breasts shaking them in your direction. Seems like she enjoys teasing you while being with another male quite a bit. After having already allowed for them to mate before, you can't help but feel aroused at the sight and drift even closer.";
	now lastfuck of Alexandra is turns;

to say badAlexandraFang4: [repeat mounting for Alexandra by Fang]
	say "     With yourself just a few steps away from the two of them now, almost close enough to touch, you have an excellent view of what is going on. Your naked dobie bitch panting in arousal and using one hand to play with her nipples, the other on Fang's head as he laps at her crotch. 'That's right, you big, bad wolf. You've found yourself a juicy bitch,' she barks out, half to Fang and half to you as a challenge. But then, it's already been established that you won't or can't stop the two of them from mating. With a grin on her muzzle, the former cop lowers herself to all fours, tail wagging as she raises her hips for Fang to mount her.";
	say "     [bold type]What do you do now?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Endure the show of watching the two of them mate.";
	say "     ([link]N[as]n[end link]) - Turn around and walk away.";
	if player consents: [watch]
		say "     Right before your eyes, the feral wolf pounces on the canine woman, driving his pointy cock into her with a lustful growl. She moans and pants as he shifts position and starts fucking away at your prize bitch, sharing in your spoils and renewing his own claim on, and in, her. Alexandra pants and moans like a bitch in heat as the wild wolf pounds into her. But it isn't just animal noises that she makes, as you can hear her call out, 'Yeah, take me you wild beast! ";
		if player is not male: [female or neuter player]
			say "Give me that hard cock, like a real alpha male would!' It is clear that she means this as a barb towards yourself - and your gender right now - from the way Alexandra stresses the word 'male'. Apparently your dobie bitch doesn't quite like that the person who broke her down from being a good canine cop doesn't even have a dick. ";
		else if player is male: [male + herm player]
			if cock length of player < 6: [cock up to 5 inch - Fang has 15]
				say "Give me that hard cock, like a real alpha male would! At least your shaft isn't a little toothpick!' It is clear that she means this as a barb towards yourself - and the admittedly small size of your cock - from the way Alexandra stresses the word 'your'. Your dobie bitch is mocking the current size of your manhood! ";
			else if cock length of player < 12: [cock up to 11 inch- Fang has 15]
				say "Give me that hard cock, like a real alpha male would! You're so much bigger than him, I love it!' It is clear that she means this as a barb towards yourself - and the size of your masculinity - from the way Alexandra stresses the word 'him', and the volume of her shout. ";
			else: [cock 12 inch and up, so not that much smaller or even bigger than Fang's 15]
				say "Give me that hard cock, like a real alpha male would! At least you know how to use your prick to properly fuck a bitch!' It is clear that she means this as a barb towards yourself - and your skill at fucking her - from the way Alexandra stresses the word 'you', and the volume of her shout. ";
		say "Fang doesn't really care what she says one way or another, just that she's an available slut to sink his bone into. So she wasn't talking to the wolf rutting her, that's for sure.";
		say "     As you watch, his throbbing red cock drives into her juicy canine cunt over and over again, her puffy lips stretched around that thick rod. Her breasts sway and she pants, drooling onto the ground as she gets a rough pounding like the kind she's been trained to enjoy. Between her raw cries of lust, she moans about being a bitch, a slut and an animal, and the wolf is more than happy to treat her as such. Continuing to fuck, Fang's pace grows faster still and the wet, slick sounds of them going at it grow louder. Watching this, you become increasingly aroused, the sight of the policewoman so debased as to give herself willingly to an animal to be fucked and bred is very exciting[if player is male]. Taking a hold of your throbbing cock[smn], you start playing with yourself. You work your hand over your hard shaft, stroking in time to the wolf's frantic thrusts[else if player is female]. Slipping a hand between your legs to your wet folds, you start playing with yourself. You pump a few fingers into your cunt, working in time to the wolf's frantic thrusts[else]. Lacking a proper gender of your own, you run your hands all over your body, rubbing your bare groin and teasing yourself as best you can[end if]. The show is very exciting and you find yourself longing for a chance to share the needy bitch with the wolf in the future.";
		WaitLineBreak;
		say "     Grinding his knot against her puffy folds, he slowly spreads them open a little more with every hard thrust into her. Finally, her needy cunt stretches open enough and allows the thick bulb entrance before clamping down around it. The two lustful canines howl as Fang's ballsack twitches visibly and hot juices run down Alexandra's legs. The wolf bites down onto the back of her neck as he cums heavily into her and she quivers and pants in ecstasy at this rough treatment[if player is not neuter]. Seeing them getting off and knowing the wolf's hot semen is flooding into the ex-cop has you working your hand frantically, cumming hard moments later[end if].";
		say "     After draining his balls, the wolf climbs off of Alexandra and turns around while still tied in her, remaining locked inside her like she were a normal dog. She flops down, tired but satisfied, rubbing at her stretched cunt and the base of the wolf cock locked inside herself with a sigh of pleasure. From the look of them, they'll certainly be going at it again sometime soon. You can't help but look forward to that too.";
	else: [do not watch]
		say "     While you won't try to stop them from doing what they want, there is no need for you to actually stand around right next to them as Fang once again puts cuckold's horns on you. Without a word, you turn around and walk away, doing your best to tune out the barks, moans and grunts of the wolf mounting and breeding your (or is it his?) doberwoman bitch. Given the sheer volume they produce, that isn't easy though - all those aroused growls from Fang, and the lustful shouts Alexandra lets out to echo through the library. Almost seems like she is deliberately getting louder the further you walk - to keep reminding you that someone else is taking her in your stead! Shouting about how good his rod feels inside her to wake envy in you...";
		say "     As your hand strays down to your crotch almost on its own and begins to rub the front of your pants, you realize that it is working too - you've left the two of them behind you, to do what they're doing, yet you can't shake the image of the big virile wolf humping into the doberwoman you thought to have claimed as your own private bitch before. His throbbing, pointy prick ramming forcefully between her wet netherlips, sliding deep and bumping against the opening of her womb, eager to breed her with his seed. ";
		if player is not male: [female or neuter player]
			say "Somehow you can't help but feel inadequate in comparison, to wish you had a cock yourself to satisfy her need and yours. But that just isn't so right now, so your dobie slut is Fang's to enjoy. Imagining an alternate scene in which you're equipped to fuck her properly - with a dick even bigger than his - you nevertheless feel your arousal soaring. Slipping a hand into your pants to reach your wet folds, you start playing with yourself. You pump a few fingers into your cunt, working in time to the wolf's rapid grunts. All too soon, your frantic hand movements drive you over the edge, cumming hard and making a downright mess of your clothing, soaking the crotch through with squirted femcum. With the two of them still audible behind you, proving that Fang has enviable stamina too, you skulk away to clean yourself up.";
		else if player is male: [male + herm player]
			if cock length of player < 6: [cock up to 5 inch - Fang has 15]
				say "Somehow you can't help but feel inadequate in comparison, to wish you had a cock that measured up even halfway to his large pole. But that just isn't so and your dobie slut is Fang's to enjoy. Imagining an alternate scene in which you're equipped to fuck her properly - with a dick even bigger than his - you nevertheless feel your arousal soaring. Slipping a hand into your pants to grasp the regretfully small shaft of your manhood, you envelop it in your fist and start pumping it. You masturbate as if in a trance, working in time to the wolf's rapid grunts. All too soon, your frantic hand movements drive you over the edge, cumming hard and making a downright mess of your clothing, with a cum-stain on your crotch that gets bigger by the second as more and more seed spurts out and soaks into the fabric. With the two of them still audible behind you, proving that Fang has enviable stamina too, you skulk away to clean yourself up.";
			else if cock length of player < 12: [cock up to 11 inch- Fang has 15]
				say "Somehow you can't help but feel inadequate in comparison, to wish you had a cock that measured up to his large pole. You're not small at all, but still... that wild beast has you beat and your dobie slut is Fang's to enjoy. Imagining an alternate scene in which you have a dick even bigger than his, smacking it against the canine's snout to dominate him before sinking it into Alexandra - you nevertheless feel your arousal soaring. Slipping a hand into your pants to grasp the hard shaft constrained within, you envelop it in your fist and start pumping its length. You masturbate as if in a trance, working in time to the wolf's rapid grunts. All too soon, your frantic hand movements drive you over the edge, cumming hard and making a downright mess of your clothing, with a cum-stain on your crotch that gets bigger by the second as more and more seed spurts out and soaks into the fabric. With the two of them still audible behind you, proving that Fang has enviable stamina too, you skulk away to clean yourself up.";
			else: [cock 12 inch and up, so not that much smaller or even bigger than Fang's 15]
				say "Somehow you can't help but feel inadequate in comparison, despite the fact that your own cock measures up to the one currently plunging into your bitch. You're quite well equipped, but still... that wild beast has you beat in her eyes somehow and your dobie slut is Fang's to enjoy. Imagining an alternate scene in which you smack your hard cock against the canine's snout to dominate him before sinking it into Alexandra - you nevertheless feel your arousal soaring. Slipping a hand into your pants to grasp the hard shaft constrained within, almost painfully so, you envelop it in your fist and start pumping its length. You masturbate as if in a trance, working in time to the wolf's rapid grunts. All too soon, your frantic hand movements drive you over the edge, cumming hard and making a downright mess of your clothing, with a cum-stain on your crotch that gets bigger by the second as more and more seed spurts out and soaks into the fabric. With the two of them still audible behind you, proving that Fang has enviable stamina (maybe that's what drew Alexandra to him?), you skulk away to clean yourself up.";
	impregAlexandraChance with "Fang";
	now lastdobiemess is 99; [last used by Fang]
	now lastfuck of Alexandra is turns;
	now lastfuck of Fang is turns;
	WaitLineBreak;

Section 4 - Sarah and Alexandra

to say badAlexandraSarah0:
	say "     Looking over, you happen to notice Alexandra and Sarah together at the husky girl's cot. You discretely move a little closer in case the Doberman bad girl is looking for a fight as she'd hinted. When you do, you're pleased to see them talking amiably enough. Your husky pet giggles happily as she pets one of her puppies, in one of her rare, talkative moods instead of wallowing fully in her canine slut nature as she's wont to do.";
	say "     '...can be a bit of a pawful at times, but any trouble they give is more than worth it. Still, I get tired at times and it'd be nice if there was someone else to keep them occupied while Master and I are having sex.";
	say "     'Yeah, at least mine mostly hang out in the side rooms together when they're not getting into trouble outside.' Sarah seems concerned at this, probably because of what almost happened to her out in the city, but Alexandra just grins proudly and continues on. 'They're a tough lot, so it's alright. Let the little punks have their fun, I say. I already warned them that I'd beat the lot of them black and blue if they ever brought anything back or get followed back here.'";
	say "     The husky girl, as if not exactly sure how she feels about this statement, muses aloud. 'Well, what if we let my pups play with yours sometimes. That might keep them from risking going outside as much and give me a break sometimes as well.'";
	say "     Rubbing her muzzle, the doberwoman looks at the nearby pups. Like their mother, they're cute huskies, but a little younger. 'I dunno, they don't look like they can stand up to my lot. My kids play rough. They'd probably want to take advantage of your pups, especially your girls.'";
	say "     Sarah just smiles and giggles at this. 'Oh, that's fine. I've been training them to be good, subby pets. Having some dominant playmates will be good for them. It'll be a much safer way for your pups to burn off some of that extra energy they have.'";
	say "     'Well, maybe,' she replies with a sly grin and a rub on the husky's head. 'How about you show me a little of what you've been teaching them?' Alexandra sits down on Sarah's cot, scooting in close to her and runs her paws over your husky slut's body, sending shivers of pleasure through her.";
	say "     Clearly excited, she can't help but respond and reach out for the Doberman's sexy body. 'Mmm... that sounds like fun, but I don't know. I belong to Master. Would Master be okay with us playing together?'";
	say "     Alexandra sinks a pair of fingers into the husky's pussy while turning her head in your direction with the other paw. 'The boss's been watching us for a while. Wanting to see if we'll make out, I expect. What do you say, boss? You want your bitch sluts to put on a show for you?'";
	if player consents:
		say "     Having been spotted, you move to an open bunk in clear view of them. With a grin and a little wave, you motion for them to resume their fun, which they do enthusiastically. Alexandra pushes Sarah onto her back with a firm shove and, while fingering the husky's sopping pussy, she kisses her new friend. Sarah moans and barks, descending into her slutty pet role as the more aggressive female manhandles her. Alexandra squeezes the horny husky's large breasts, causing some milk to leak out as she whimpers. Seeing this, she grins and presses her muzzle to the leaking nipple, taking a sample of your pet's milk.";
		say "     During this rough groping and molestation by the Doberman, the husky girl strips the clothes off her fellow bitch while panting and moaning in enjoyment like the horny, submissive pet she is. And once nude, Alexandra sits up and grabs the husky's head, pressing her muzzle between her thighs to the doberwoman's juicy muff. 'Mmm... get licking, honey. I'm top bitch around here and you need to show me what you've been teaching those pups of yours.'";
		say "     The husky girl's tail wags excitedly and she gives right in, her canine tongue slathering across Alexandra's juicy pussy in long, slow licks before diving deep into her. As you watch, she does her best to please her new tough friend and fellow bitch fucktoy, tongue agilely pleasuring the horny canine's cunt and even diving back to lick across her asshole a few times. She tries her best to ensure you have a good view of the action, but at times, her enthusiasm for it gets the better of her. But even though you can't always see it, you can tell she's giving it her all and the doberwoman responds loudly and lustfully as she's eaten out by the horny slut, cumming several times.";
		say "     After a particularly powerful orgasm that leaves her panting and dripping, she grabs the husky girl and yanks her up into her lap. With Sarah sitting on one of Alexandra's strong thighs with her legs spread, you're given a fine view of both the canine pussies you've been fucking and filling with pups. As they kiss muzzle to muzzle with canine tongues entwined, the Doberman bitch spreads the husky's folds and sinks a few fingers into her again while groping her breasts roughly, all in a wanton display for you. She gropes and finger-fucks the husky to a few orgasms of her own before they're both sated and collapse onto the bunk, panting in post-orgasmic bliss. Looking down at them, you can't help but smile at how the two are getting along.";
		now lastfuck of Alexandra is turns + 2;
		now lastfuck of Sarah is turns + 2;
	else:
		say "     Alexandra and Sarah are clearly disappointed when you tell them to break it up, but they do so. Alexandra whispers to Sarah to send over her pups whenever she wants them to play with hers.";


Section 5 - Everyturn Rule (pregnancy and Fang)

To impregAlexandraChance with (x - text):
	if debugactive is 1:
		say "     DEBUG: Impregnation chance for Alexandra, base chance 40%, ";
		if "Broodmother" is listed in Traits of Alexandra:
			say "'Broodmother' bonus 10%, ";
		if "Fertility Treatments" is listed in Traits of Alexandra:
			say "'Fertility Treatment' bonus 20%, ";
		say "Father: [x]";
		LineBreak;
		if lust of Alexandra > 0:
			say "     ERROR - Already pregnant!";
	let AlexandraPregChance be 4; [40% base chance]
	let MaxPups be 3; [normal max are 3]
	if "Broodmother" is listed in Traits of Alexandra:
		increase AlexandraPregChance by 1; [10% extra chance]
		increase MaxPups by 1; [1 more max pup]
	if "Fertility Treatments" is listed in Traits of Alexandra:
		increase AlexandraPregChance by 2; [20% extra chance]
		increase MaxPups by 2; [2 more max pups]
	if "Contraception" is not listed in Traits of Alexandra and lust of Alexandra is 0 and a random chance of AlexandraPregChance in 10 succeeds:
		now AlexandraGrowingPups is a random number between 2 and MaxPups;
		if debugactive is 1:
			say "     Impregnation successful! [AlexandraGrowingPups] pups are growing in Alexandra now!";
		if AlexandraPregCount is 2: [third time pregnant]
			now AlexandraBroodmTrait is active; [she has become pregnant a third time -> event revealing extra nipples]
		increase HP of Alexandra by 1; [advances state from not preg to preg]
		now lust of Alexandra is 1; [starts the pregnancy timer]
		if x is: [father of the pups]
			-- "Player":
				now AlexandraPupDaddy is 1;
			-- "Fang":
				now AlexandraPupDaddy	is 2;
			-- "Korvin":
				now AlexandraPupDaddy	is 3;
			-- "Carl":
				now AlexandraPupDaddy	is 4;
			-- "Brutus":
				now AlexandraPupDaddy	is 5;
	else:
		if debugactive is 1:
			say "     Impregnation fail! A chance of [AlexandraPregChance] in 10 didn't succeed.";

an everyturn rule:
	if Alexandra is booked and HP of Alexandra < 50:
		if lust of Alexandra > 0: [Alexandra is pregnant]
			increase lust of Alexandra by 1; [counting up towards 24]
			if debugactive is 1:
				say "     DEBUG: Alexandra's pregnancy advanced one turn. Current Turn: [lust of Alexandra], Target Value: 24";
			if level of Alexandra is 1 or level of Alexandra is 2 and a random chance of 1 in 3 succeeds, increase lust of Alexandra by 1; [pregnancy speed boost from player/Fang feats]
			if lust of Alexandra >= 24 and skipturnblocker is 0: [birthing time]
				if Alexandra is not visible: [player isn't anywhere near her]
					say "     [bold type]Your thoughts wander back to Alexandra, and you feel a need to go check in on her.[roman type][line break]";
				else: [player is next to Alexandra]
					say "     From one moment to the next, the expression on your doberwoman bitch's face changes, and she brings a hand to her bulging stomach. 'Nnghh! Someone's definitively getting unruly in there. That was quite a kick!' The former cop opens her muzzle to say something else, but the next thing that comes out of it is just a strangled groan. A glance down makes it fairly obvious what's going on, as Alexandra's jeans suddenly develop a large wet patch that keeps spreading down the insides of her legs: Her water just broke! ";
					if libido of Alexandra is 0: [first time puppies]
						say "'Damn! I guess this is happening. Right here, right now!' she curses between panted breaths, and ";
					else if libido of Alexandra > 10:
						say "'My pups are coming! Time for the pack to grow even more,' she calls out between panted breaths, and ";
					else if libido of Alexandra > 4:
						say "'Here we go again! Gah, it feels weird to be leaking this much,' she grunts out between panted breaths, and ";
					say "you quickly rush to her side and help the canine woman lie down in a halfway comfortable position. Her pants aren't buttoned, not with the bulge of her belly in the way for that, so you thankfully don't have too hard of a time peeling them off her resting form.";
					say "     Flinging the soaked garment aside, you turn back to Alexandra a second later. She is panting rapidly by now, her hands clawing at the ground as a fairly strong contraction hits. While pregnancy and birth may be a lot quicker these days, it doesn't look like they are all that much easier than before. The curve of your pregnant bitch's belly heaves with another contraction, followed by a breathless groan from her, and you can see her netherlips spread a little in preparation for what is to come. In the heat of the moment, you don't spare a second thought before rushing forward to take position between her legs, hands outstretched. Then the next contraction hits, this time bringing with it a curled-up bundle of wet puppy, looking terribly cute in its demi-human form, even though it may be dripping with Alexandra's fluids.";
					WaitLineBreak;
					say "     The tiny humanoid dog lets out a whimper at finding itself in a strange new world outside of the fluid-filled home it came from, then starts to weakly move its limbs as if to try them out for the first time. Focused on the miracle of life in your hands, you are only shaken out of watching the first pup when Alexandra lets out a shout of '[one of]Goddamn!' [or]Motherfucker!' [or]Fuuuck!' [at random]as another really strong contraction hits. She mutters something about punching [']the next bastard who wants to fuck her['] in the balls, then takes a deep gasp of air. You barely have time to gently lower the first pup to catch number two, who is no less cute and innocent than the first. The two of them stretch their tiny limbs and sniff blindly at each other as you put number two down next to its sibling.";
					if AlexandraGrowingPups < 3:
						say "     Ready for more pups, you wait for further contractions, yet somehow they seem less and less intense with every further twitch of Alexandra's body. Then something else slides out of the doberwoman: the afterbirth. It is a fleshy-looking thing that connects to the two puppies by their umbilical cords. For a moment, you wonder what the hell to do now, but then it just seems to disintegrate before your eyes, an effect accompanied by a faint silver shimmer at the edge of the spreading nothingness. A little bulge wanders up the umbilical cords towards each puppy, possibly consisting of nanites and whatever materials they deemed worthy to keep, followed by the cords themselves vanishing too. Soon there are just the two tiny doggies left, which you pick up and hand to their mother one by one.";
					else if AlexandraGrowingPups is 3:
						say "     Ready for more pups, you wait for further contractions and soon welcome a third into the world. After this one the twitches of Alexandra's body seem to become much less intense. Then something else slides out of the doberwoman: the afterbirth. It is a fleshy-looking thing that connects to the three puppies by their umbilical cords. For a moment, you wonder what the hell to do now, but then it just seems to disintegrate before your eyes, an effect accompanied by a faint silver shimmer at the edge of the spreading nothingness. A little bulge wanders up the umbilical cords towards each puppy, possibly consisting of nanites and whatever materials they deemed worthy to keep, followed by the cords themselves vanishing too. Soon there are just the three tiny doggies left, which you pick up and hand to their mother one by one.";
					else if AlexandraGrowingPups is 4:
						say "     Ready for more pups, you wait for further contractions and soon welcome a third into the world, followed by a fourth. After this one the twitches of Alexandra's body seem to become much less intense. Then something else slides out of the doberwoman: the afterbirth. It is a fleshy-looking thing that connects to the four puppies by their umbilical cords. For a moment, you wonder what the hell to do now, but then it just seems to disintegrate before your eyes, an effect accompanied by a faint silver shimmer at the edge of the spreading nothingness. A little bulge wanders up the umbilical cords towards each puppy, possibly consisting of nanites and whatever materials they deemed worthy to keep, followed by the cords themselves vanishing too. Soon there are just the four tiny doggies left, which you pick up and hand to their mother one by one.";
					else if AlexandraGrowingPups is 5:
						say "     Ready for more pups, you wait for further contractions and soon welcome a third into the world, followed by a fourth and fifth. After this one the twitches of Alexandra's body seem to become much less intense. Then something else slides out of the doberwoman: the afterbirth. It is a fleshy-looking thing that connects to the five puppies by their umbilical cords. For a moment, you wonder what the hell to do now, but then it just seems to disintegrate before your eyes, an effect accompanied by a faint silver shimmer at the edge of the spreading nothingness. A little bulge wanders up the umbilical cords towards each puppy, possibly consisting of nanites and whatever materials they deemed worthy to keep, followed by the cords themselves vanishing too. Soon there are just the five tiny doggies left, which you pick up and hand to their mother one by one.";
					else if AlexandraGrowingPups is 6:
						say "     Ready for more pups, you wait for further contractions and soon welcome a third into the world, followed by a fourth, fifth, and after another tired push by the doberwoman, a sixth and final puppy. After this one the twitches of Alexandra's body seem to become much less intense. Then something else slides out of the doberwoman: the afterbirth. It is a fleshy-looking thing that connects to the six puppies by their umbilical cords. For a moment, you wonder what the hell to do now, but then it just seems to disintegrate before your eyes, an effect accompanied by a faint silver shimmer at the edge of the spreading nothingness. A little bulge wanders up the umbilical cords towards each puppy, possibly consisting of nanites and whatever materials they deemed worthy to keep, followed by the cords themselves vanishing too. Soon there are just the six tiny doggies left, which you pick up and hand to their mother one by one.";
					WaitLineBreak;
					say "     Visibly exhausted, yet also as happy as she can be, Alexandra cradles her little ones to her chest, guiding tiny puppy muzzles to her nipples and smiling in fulfillment as their lips clamp onto her breasts and start to suckle greedily. ";
					if AlexandraGrowingPups > 2:
						if "Broodmother" is listed in Traits of Alexandra:
							say "Even as worn out as she is, the doberwoman can't help but smile as two of her babies try to suck on the same tit, with one pushing the other out of the way to win the spot. 'Yeah, you've sure got your mother's spirit,' she murmurs as she strokes the winner, then lifts her other puppy to give it access to another of her multiple nipples further down along her chest. ";
						else:
							say "Given that she only has two breasts, there is a bit of competition and whining between her offspring, but the anthro canine does her best to switch off between the pups, giving each an equal share of the milk they crave. ";
					say "As the little dogs greedily gulp down what they can drink from their mother, they grow noticeably larger with each passing second. Tiny as the puppies may have been, they seem in a rush to catch up now, growing so fast that they seem to skip right past the size of a human baby or toddler and reach the stage of a young child in moments. Then the burst of development stops and they stabilize in the shape of quite active and rambunctious little dobermen.";
					if AlexandraPupDaddy is 1: [player pups]
						say "     Now that the little dogs have grown a little, you do recognize a bit of yourself in them. They are definitely still dobermen through and through, but there's just something about the way they look and act that makes it more than clear in your mind that they're yours. Soon having finished with their drinking from Alexandra, first one, then another of the little ones decides to investigate the person who greeted them into the world. You find yourself beset by curious canines, sticking their noses and licking you everywhere they can reach. They seem to recognize something in your scent, making them feel perfectly safe and happy to be with you.";
						increase AlexandraPlayerPups by AlexandraGrowingPups;
					else if AlexandraPupDaddy is 2: [Fang pups]
						say "     Now that the little dogs have grown a little, you do recognize a bit of Fang in them. They are definitely still dobermen through and through, but there's just something about the way they look and act that makes it more than clear in your mind that the wolf fathered them. Maybe it's something about the shape of their ears and muzzles, or maybe it's the markings of their fur - it's hard to say. Soon having finished with their drinking from Alexandra, first one, then another of the little ones decides to investigate the person who greeted them into the world. You find yourself beset by curious canines, sticking their noses and licking you everywhere they can reach. Even though they are not yours, they seem to have inherited some of the wild spirit of their father, making them happily pad your way without fear.";
						increase AlexandraFangPups by AlexandraGrowingPups;
					else if AlexandraPupDaddy is 3: [Korvin pups]
						say "     Now that the little dogs have grown a little, you do recognize a bit of Korvin in them. They are definitely still dobermen through and through, but there's just something about the way they look and act that makes it more than clear in your mind that the German shepherd fathered them. Maybe it's something about the shape of their ears and muzzles, or maybe it's the markings of their fur - it's hard to say. Soon having finished with their drinking from Alexandra, first one, then another of the little ones decides to investigate the person who greeted them into the world. You find yourself beset by curious canines, sticking their noses and licking you everywhere they can reach. Even though they are not yours, they seem to have inherited some of the cocky spirit of their father, making them happily pad your way without fear.";
						increase AlexandraKorvinPups by AlexandraGrowingPups;
					else if AlexandraPupDaddy is 4: [Carl pups]
						say "     Now that the little dogs have grown a little, you do recognize a bit of Carl in them. They are definitely still dobermen through and through, but there's just something about the way they look and act that makes it more than clear in your mind that the husky fathered them. Maybe it's something about the shape of their ears and muzzles, or maybe it's the markings of their fur - it's hard to say. Soon having finished with their drinking from Alexandra, first one, then another of the little ones decides to investigate the person who greeted them into the world. You find yourself beset by curious canines, sticking their noses and licking you everywhere they can reach. Even though they are not yours, they seem to have inherited some of the bravery of their father, making them happily pad your way without fear.";
						increase AlexandraCarlPups by AlexandraGrowingPups;
					else if AlexandraPupDaddy is 5: [Brutus pups]
						say "     Now that the little dogs have grown a little, you do recognize a bit of Brutus in them. They are definitely still dobermen through and through, but there's just something about the way they look and act that makes it more than clear in your mind that the demon brute fathered them. You could swear one of the puppies['] eyes glowed purple for a moment, and their teeth and claws do seem oddly sharp. Soon having finished with their drinking from Alexandra, first one, then another of the little ones decides to investigate the person who greeted them into the world. You find yourself beset by curious canines, sticking their noses and licking you everywhere they can reach. Even though they are not yours, they seem to have inherited part of the bond between their father and yourself, making them happily pad your way without fear.";
						increase AlexandraBrutusPups by AlexandraGrowingPups;
				if libido of Alexandra is 0: [Spike's dad]
					if AlexandraPupDaddy is:
						-- 1:
							now MaxHP of Spike is 1; [player Spike]
						-- 2:
							now MaxHP of Spike is 2; [Fang Spike]
						-- 3:
							now MaxHP of Spike is 3; [Korvin Spike]
						-- 4:
							now MaxHP of Spike is 4; [Carl Spike]
						-- 5:
							now MaxHP of Spike is 5; [Brutus Spike]
				increase libido of Alexandra by AlexandraGrowingPups;
				increase AlexandraPregCount by 1; [number of previous pregnancies]
				now AlexandraGrowingPups is 0; [no pups in her now]
				now lust of Alexandra is 0;
				now HP of Alexandra is 4;
		else if Fang is booked and Alexandra is booked and player is in Grey Abbey Library:
			if XP of Alexandra is 0, now XP of Alexandra is turns; [starts counter on any turn (except turn 0, which will start next turn)]
			if level of Alexandra is 0: [first time]
				if (lastfuck of Fang - turns >= 8) and (lastfuck of Alexandra - turns >= 6) and (XP of Alexandra - turns >= 16): [horny wolf, horny dobie, last scene 2 days back]
					say "[badAlexandraFang0]";
			else if level of Alexandra is 1 and HP of Fang is 3 or HP of Fang is 4: [non-shared bitch and Alpha Fang]
				if (lastfuck of Fang - turns >= 8) and (lastfuck of Alexandra - turns >= 6) and (XP of Alexandra - turns >= 16): [horny wolf, horny dobie, last scene 2 days back]
					say "     As you're taking a moment before getting on to other tasks, you hear some soft growling coming from the door. Heading over, you notice that Fang's sniffing around Alexandra again. She's lightly trying to push him away at first, but soon relents and is squirming out of her jeans. This rankles you a little after having gone through the trouble to stake your claim on her earlier, but with Fang as your alpha, you're no longer in a position to keep her exclusively to yourself. Soon enough, she's dropped onto all fours and is mounted by the big, strong wolf. Seeing you there, he growls 'watch' at you before turning his attention back to her. It seems like you'll have to witness Fang using your prize bitch and accept him using her whenever he wants to lay claim to her.";
					say "     What's yours is yours, but what's yours is his, it seems.";
					say "[badAlexandraFang1]";
			else if level of Alexandra is 2: [shared bitch]
				if (lastfuck of Fang - turns >= 8) and (lastfuck of Alexandra - turns >= 6) and (XP of Alexandra - turns >= 16) and a random chance of 1 in 5 succeeds: [horny wolf, horny dobie, last scene 2 days back]
					say "     As you're taking a moment before getting on to other tasks, you hear some soft growling coming from over at the library entrance. Heading over, you notice that Fang's sniffing around Alexandra again. His canine shaft is dangling erect between the wolf's legs and it is clear what he intends to do with the bitch. As the former cop sees that you're watching, she grins and looks right into your eyes as her hands move to undo the button of her pants. Sliding them down over her long legs, she bares her lower half for everyone to see - and Fang immediately circles around her to stick his muzzle between those legs and lap at her crotch.";
					say "     Panting in arousal at the wolf licking her, Alexandra smirks at you and shrugs out of her leather jacket in a very provocative way, baring her breasts shaking them in your direction. Seems like she enjoys teasing you while being with another male quite a bit. After having already allowed for them to mate before, you can't help but feel aroused at the sight and drift even closer, ready to watch them go at it.";
					say "[badAlexandraFang4]";
		else if A_Sarah is true and A_Sarah2 is false and SarahPups > 3 and libido of Alexandra > 3 and the player is in Bunker and lastfuck of Alexandra is not turns and lastfuck of Sarah is not turns and a random chance of 1 in 6 succeeds:
			say "[badAlexandraSarah0]";
			now A_Sarah2 is true;
		if level of Alexandra is 2 and a random chance of 1 in 12 succeeds:
			now lastdobiemess is 99;

Section 6 - Events

to AlexandraFeatAbsorb:
	if "Horny Bastard" is listed in feats of player and "Horny" is not listed in Traits of Alexandra:
		now AlexandraHornyTrait is active;
	else if "..." is listed in feats of player and "..." is not listed in Traits of Alexandra:
		say "...";
		[now AlexandraGains... is active;]

Table of GameEventIDs (continued)
Object	Name
AlexandraHornyTrait	"AlexandraHornyTrait"

AlexandraHornyTrait is a situation.
AlexandraHornyTrait is inactive.
The sarea of AlexandraHornyTrait is "Nowhere".

after going to Grey Abbey Library while (AlexandraHornyTrait is active and AlexandraHornyTrait is not resolved and a random chance of 1 in 2 succeeds):
	AlexandraHornyTrait_Event;

instead of navigating Grey Abbey Library while (AlexandraHornyTrait is active and AlexandraHornyTrait is not resolved and a random chance of 1 in 2 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	AlexandraHornyTrait_Event;

to AlexandraHornyTrait_Event:
	say "     As you walk into the entrance area of the Grey Abbey Library, you find Alexandra waiting for you there with a smirk on her face. 'Hey boss,' she calls out in a lusty tone, her tail wagging quickly as she lets her eyes wander up and down over your body. Before you can say anything, the sexy bitch is already pressing herself against your side with her leather jacket pulled open wide, pressing her full breasts against you and filling your nose with the scent of arousal that surrounds her. She gives you a fierce doggy-kiss, licking your neck and mouth, only pausing when you grab her furry nape and pull the quite eager female back a little. Asking what brought on this enthusiastic greeting, you earn an amused bark from the former cop. She gives you a provocative smile and takes hold of your free hand, then guides it to the crotch of her jeans. They're a little damp with arousal.";
	say "     'Seems my body caught on to the fact that it's all yours now, and what better way to please the person who claimed me right out in the open than to be ready for sex as fast as possible? I've been fucking wet ever since!' She isn't kidding either, as you can see the need for a good rutting clearly written on her face. Seems like you hit the jackpot when you decided to literally fuck the police, earning yourself a nympho bitch in the progress.";
	say "     [bold type]What's your reply to Alexandra's eager approach?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Have some fun with her right now.";
	say "     ([link]N[as]n[end link]) - Let her stew in her juices a bit. You're the boss and decide when she gets fucked.";
	if player consents:
		LineBreak;
		say "[badAlexandraSex]";
	else:
		LineBreak;
		say "     Grabbing her a bit more firmly by the neck, you draw Alexandra close and give her a demanding kiss. Feeling her hands on your body, you smile inwardly at her eagerness for sex, then pull her away from you and proclaim that she should get back to guarding the door. The needy bitch looks at you in surprise, her breath coming in short pants from the arousal that flared up in her. She frowns at the refusal to sate her needs, but you can see from the fact that her tail is still wagging that she isn't really cross with you. 'Bastard,' she says more as an observation than a curse, followed by the words, 'Don't let me wait too long, boss. I'm fucking dripping here.' With that, she steps back from you, shaking her chest in a last-minute try to entice you with her well-rounded breasts. She then saunters over to where she was leaning against the wall when you came in.";
	add "Horny" to Traits of Alexandra;
	now AlexandraHornyTrait is resolved;

Table of GameEventIDs (continued)
Object	Name
AlexandraBroodmTrait	"AlexandraBroodmTrait"

AlexandraBroodmTrait is a situation.
AlexandraBroodmTrait is inactive.
The sarea of AlexandraBroodmTrait is "Nowhere".

after going to Grey Abbey Library while (AlexandraBroodmTrait is active and AlexandraBroodmTrait is not resolved and a random chance of 1 in 2 succeeds):
	AlexandraBroodmTrait_Event;

instead of navigating Grey Abbey Library while (AlexandraBroodmTrait is active and AlexandraBroodmTrait is not resolved and a random chance of 1 in 2 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	AlexandraBroodmTrait_Event;

to AlexandraBroodmTrait_Event:
	if lust of Alexandra is 0: [already gave birth]
		say "     As you walk into the entrance area of the Grey Abbey Library, you find Alexandra there waiting for you with a smirk on her face. 'Hey boss,' she calls out in a teasing tone, her tail wagging quickly as she lets her eyes wander up and down over your body. Checking out the doberwoman bitch in turn, you notice that she's got her leather jacket zipped up to the top, which tells you something is up. Alexandra loves showing off her body and normally would already be wiggling her breasts at you provocatively. Angling your steps towards the waiting bitch, you see her lick the side of her muzzle in anticipation. She pounces on you as soon as you come close, throwing her arms around you and giving you a deep kiss. After some quite enjoyable tongue-wrestling with your sexy bitch, Alexandra eventually pulls back a little and says, 'I got something to show you.'";
		say "     Grabbing the back of her neck to exchange another quick kiss before you let her go, you're treated to a little show in which the former cop swings her hips enticingly, followed by her right hand wandering up to the zipper of her jacket. Slowly, teasingly, the fastening is pulled down over her front, revealing her shapely breasts and their full, glorious curves. Yet that isn't all, as Alexandra keeps going with her playful show, and soon, you catch a glimpse of another pair of nipples some little distance beneath her breasts. As your eyes widen at the unexpected sight, the dobie bitch just grins wider, pulling the zipper the rest of the way down and revealing two more perky nipples. 'Seems my body isn't quite done changing, boss. After I got knocked up the third time, these started to appear.'";
		WaitLineBreak;
		say "     The anthro canine grins at you and touches one of the additional nipples, circling it with the tip of her finger. 'You won't believe how sensitive these are. Damn, I almost came when the little ones started drinking from them.' Smiling at the suggestive tone that your bitch is taking, you reach out to brush over her new nipples as well, coaxing a moan from the doberwoman. 'The next litter won't take long if things go like they did since you broke me in! Never would have thought I'd end up a broodmother - or a dog, hah! What's next, fertility treatments from that lizard doctor to give me even more puppies in the future?'";
	else if lust of Alexandra < 13: [slightly pregnant]
		say "     As you walk into the entrance area of the Grey Abbey Library, you find Alexandra there waiting for you with a smirk on her face. 'Hey boss,' she calls out in a teasing tone, her tail wagging quickly as she lets her eyes wander up and down over your body. Checking out the doberwoman bitch in turn, you notice that she's got her leather jacket zipped up to the top, which tells you something is up. Alexandra loves showing off her body and normally would already be wiggling her breasts at you provocatively. Angling your steps towards the waiting bitch, you see her lick the side of her muzzle in anticipation. She pounces on you as soon as you come close, throwing her arms around you and giving you a deep kiss. After some quite enjoyable tongue-wrestling with your sexy bitch, Alexandra eventually pulls back a little and says, 'I got something to show you.'";
		say "     Grabbing the back of her neck to exchange another quick kiss before you let her go, you're treated to a little show in which the former cop swings her hips enticingly, followed by her right hand wandering up to the zipper of her jacket. Slowly, teasingly, the fastening is pulled down over her front, revealing her shapely breasts and their full, glorious curves. Yet that isn't all, as Alexandra keeps going with her playful show, and soon, you catch a glimpse of another pair of nipples some little distance beneath her breasts. As your eyes widen at the unexpected sight, the dobie bitch just grins wider, pulling the zipper the rest of the way down and revealing two more perky nipples, as well as a belly bump that heralds the early stage of a pregnancy. 'Seems my body isn't quite done changing, boss. After I got knocked up the third time, these started to appear.'";
		WaitLineBreak;
		say "     The anthro canine grins at you and touches one of the additional nipples, circling it with the tip of her finger. 'You won't believe how sensitive these are. The first thing I noticed about them was the edge of my jacket rubbing against one and making me fucking wet.' Smiling at the suggestive tone that your bitch is taking, you reach out to touch her new nipples as well, coaxing a moan from the doberwoman. 'This time around, all of my pups will have their own damn tit to suck on! Never would have thought I'd end up a broodmother - or a dog, hah! What's next, fertility treatments from that lizard doctor to give me even more puppies in the future?'";
	else: [visibly pregnant]
		say "     As you walk into the entrance area of the Grey Abbey Library, you find Alexandra there waiting for you with a smirk on her face. 'Hey boss,' she calls out in a teasing tone, her tail wagging quickly as she lets her eyes wander up and down over your body. Checking the doberwoman bitch out in turn, you see that her belly has gotten quite full and round once more, her pregnancy having significantly advanced by now. The former cop's hands cover her baby bulge, though you can tell something is up from the way that she's splaying out her fingers. In the typical fashion of a woman who loves showing off her body, Alexandra shakes her chest provocatively, yet still keeps her hands where they are. Angling your steps towards the waiting bitch, you see her lick the side of her muzzle in anticipation.";
		say "     Alexandra pounces on you in a surprisingly quick move for a pregnant woman as soon as you come close, throwing her arms around you and giving you a deep kiss. After some quite enjoyable tongue-wrestling with your sexy bitch, the dobie eventually pulls back a little and says, 'I got something to show you.' Grabbing the back of her neck to exchange another quick kiss before you let her go, you're treated to a little show in which the former cop cups her breasts and wiggles them for you, followed be doing the same to another, smaller pair of breasts a little ways down her front. Glancing at her belly with more attention now, you see that there is also a third pair of tits, pushing out to form tiny mounds in preparation for the birth of her puppies. As your eyes widen at the unexpected sight, the dobie bitch just grins widely. 'Seems my body isn't quite done changing, boss. Third time's the charm, and this pregnancy brings some extras with it apparently.'";
		WaitLineBreak;
		say "     The anthro canine grins at you and touches one of the additional nipples, circling it with the tip of her finger. 'You won't believe how sensitive these are. The first thing I noticed about them was the edge of my jacket rubbing against one and making me fucking wet.' Smiling at the suggestive tone that your bitch is taking, you reach out to touch her new nipples as well, coaxing a moan from the doberwoman. 'This time around, all of my pups will have their own damn tit to suck on! Never would have thought I'd end up a broodmother - or a dog, hah! What's next, fertility treatments from that lizard doctor to give me even more puppies in the future?'";
	[identical Medea texts for all variants]
	if HP of Medea is 0: [never met Medea]
		say "     From her tone, it is clear that she is joking about the last sentence, but the mention of a doctor rings through despite that. Given everything that you have done with (and to) Alexandra, taking her to get treatments to be an even better pet certainly doesn't seem that out of the ordinary. It might be worth talking to her sometime to learn where you can find the lizardperson she mentioned. While you are still in your thoughts, contemplating the option, Alexandra gives you a playful grin and says, 'Definitively wouldn't mind getting fucked again sometime soon, you know. I'll be at my usual spot, waiting.' With that said, she saunters off, returning to her post near the entrance.";
	else: [player knows Medea]
		say "     From her tone, it is clear that she is joking about the last sentence. You actually know exactly who she was referring to: Dr. Medea, the lizardwoman in the pediatrics clinic you found. Given everything that you have done with (and to) Alexandra, taking her to get treatments to be an even better pet certainly doesn't seem that out of the ordinary. It might be worth talking to her about it sometime, then go visit Medea together. While you are still in your thoughts, contemplating the option, Alexandra gives you a playful grin and says, 'Definitively wouldn't mind getting fucked again sometime soon, you know. I'll be at my usual spot, waiting.' With that said, she saunters off, returning to her post near the entrance.";
	add "Broodmother" to Traits of Alexandra;
	add "Fertility Treatment Option" to Traits of Alexandra;
	now AlexandraBroodmTrait is resolved;

Table of GameEventIDs (continued)
Object	Name
AlexandraPlayersBitch	"AlexandraPlayersBitch"

AlexandraPlayersBitch is a situation.
AlexandraPlayersBitch is inactive.
The sarea of AlexandraPlayersBitch is "Nowhere".

after going to Grey Abbey Library while (AlexandraPlayersBitch is active and AlexandraPlayersBitch is not resolved and a random chance of 1 in 2 succeeds):
	AlexandraPlayersBitch_Scene;

instead of navigating Grey Abbey Library while (AlexandraPlayersBitch is active and AlexandraPlayersBitch is not resolved and a random chance of 1 in 2 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	AlexandraPlayersBitch_Scene;

to AlexandraPlayersBitch_Scene: [Fang & Alexandra Scene completed with player as top dog]
	say "     As you walk into the entrance area of the Grey Abbey Library, you find Alexandra waiting for you there with a smirk on her face. 'Hey boss,' she calls out in a lusty tone, her tail wagging quickly as she lets her eyes wander up and down over your body. Before you can say anything, the sexy bitch is already pressing herself against your side with her leather jacket pulled open wide, pressing her full breasts against you and filling your nose with the scent of arousal that surrounds her. She gives you a fierce doggy-kiss, licking your neck and mouth, only pausing when you grab her furry nape and pull the quite eager female back a little. Asking what brought on this enthusiastic greeting, you earn an amused bark from the former cop. She gives you a provocative smile and takes hold of your free hand, then guides it to the crotch of her jeans. They're a little damp with arousal.";
	say "     'I can't stop thinking of when you fucked me right outside in the street, like the bitch I am,' she says with a soft moan, sliding one her paw inside her jeans. 'Mmm... I've been feeling my cunt changing a little[if player is male and cockname of player is listed in infections of Knotlist] to conform better to your knot[else if player is male], becoming a better fit for your sexy cock[else], getting hotter and wetter at just the thought of you playing with me[end if][if player is male] and stretching out so it can give birth to as many pups as you want to breed in me[end if]. Mmm... just thinking about it's getting me all worked up again? Wanna fuck, boss?' she moans, pressing her body to yours.";
	say "     [bold type]What's your reply to Alexandra's eager approach?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Have some fun with her right now.";
	say "     ([link]N[as]n[end link]) - Let her stew in her juices a bit. You're the boss and decide when she gets fucked.";
	if player consents:
		LineBreak;
		say "[badAlexandraSex]";
	else:
		LineBreak;
		say "     Grabbing her a bit more firmly by the neck, you draw Alexandra close and give her a demanding kiss. Feeling her hands on your body, you smile inwardly at her eagerness for sex, then pull her away from you and proclaim that she should get back to guarding the door. The needy bitch looks at you in surprise, her breath coming in short pants from the arousal that flared up in her. She frowns at the refusal to sate her needs, but you can see from the fact that her tail is still wagging that she isn't really cross with you. 'Bastard,' she says more as an observation than a curse, followed by the words, 'Don't let me wait too long, boss. I'm fucking dripping here.' With that, she steps back from you, shaking her chest in a last-minute try to entice you with her well-rounded breasts. She then saunters over to where she was leaning against the wall when you came in.";
	now AlexandraPlayersBitch is resolved;

[ Content of Good Alexandra moved to Good Alexandra.i7x ]

Section 9 - Conversation on other NPCs

[
Thoughts on others:
Colleen -
Elijah -
Onyx -
Icarus -
...
]

A_Candy is a truth state that varies. A_Candy is usually false.
A_Sven is a truth state that varies. A_Sven is usually false.
A_Fang is a truth state that varies. A_Fang is usually false.
A_Philip is a truth state that varies. A_Philip is usually false.
A_Mack is a truth state that varies. A_Mack is usually false.
A_Sam is a truth state that varies. A_Sam is usually false.
A_Snow is a truth state that varies. A_Snow is usually false.
A_Sandra is a truth state that varies. A_Sandra is usually false.
A_Sally is a truth state that varies. A_Sally is usually false.
A_Sarah is a truth state that varies. A_Sarah is usually false.
A_Sarah2 is a truth state that varies. A_Sarah2 is usually false.
A_Colleen is a truth state that varies. A_Colleen is usually false.
A_Solstice is a truth state that varies. A_Solstice is usually false.
A_David is a truth state that varies. A_David is usually false.
A_Elijah is a truth state that varies. A_Elijah is usually false.
A_Onyx is a truth state that varies. A_Onyx is usually false.
A_Helen is a truth state that varies. A_Helen is usually false.
A_Xerxes is a truth state that varies. A_Xerxes is usually false.
A_Icarus is a truth state that varies. A_Icarus is usually false.
no_AlexandraNPC is a number that varies. no_AlexandraNPC is usually 255.

to UpdateAlexandraNPCChat:
	if A_Candy is false and Candy is bunkered, add 1 to AlexandraNPC;
	if A_Sven is false and Sven is bunkered, add 2 to AlexandraNPC;
	if A_Fang is false and Fang is booked, add 3 to AlexandraNPC;
	if A_Philip is false and Philip is bunkered, add 4 to AlexandraNPC;
	if A_Mack is false and Mack is bunkered, add 5 to AlexandraNPC;
	if A_Sam is false and Sam is bunkered, add 6 to AlexandraNPC;
	if A_Snow is false and Snow is booked, add 7 to AlexandraNPC;
	if A_Sandra is false and Sandra is bunkered, add 8 to AlexandraNPC;
	if A_Sally is false and Sally is bunkered, add 9 to AlexandraNPC;
[	if A_Sarah is false and Sarah is bunkered, add 10 to AlexandraNPC;]
[	if A_Colleen is false and Colleen is bunkered, add 11 to AlexandraNPC;]
	if A_Solstice is false and Solstice is booked, add 12 to AlexandraNPC;
	if A_David is false and David is booked, add 13 to AlexandraNPC;
[	if A_Elijah is false and Elijah is bunkered, add 14 to AlexandraNPC;
	if A_Onyx is false and Onyx is booked, add 15 to AlexandraNPC;]
	if A_Helen is false and Helen is booked, add 16 to AlexandraNPC;
	if A_Xerxes is false and Xerxes is booked, add 17 to AlexandraNPC;
[	if A_Icarus is false and Icarus is booked, add 18 to AlexandraNPC;]

to say AlexandraNPCChat:
	sort AlexandraNPC in random order;
	if entry 1 of AlexandraNPC is:
		-- 1:
			say "[A_CandyComment]";
		-- 2:
			say "[A_SvenComment]";
		-- 3:
			say "[A_FangComment]";
		-- 4:
			say "[A_PhilipComment]";
		-- 5:
			say "[A_MackComment]";
		-- 6:
			say "[A_SamComment]";
		-- 7:
			say "[A_SnowComment]";
		-- 8:
			say "[A_SandraComment]";
		-- 9:
			say "[A_SallyComment]";
		-- 10:
			say "[A_SarahComment]";
		-- 11:
			say "[A_ColleenComment]";
		-- 12:
			say "[A_SolsticeComment]";
		-- 13:
			say "[A_DavidComment]";
		-- 14:
			say "[A_ElijahComment]";
		-- 15:
			say "[A_OnyxComment]";
		-- 16:
			say "[A_HelenComment]";
		-- 17:
			say "[A_XerxesComment]";
		-- 18:
			say "[A_IcarusComment]";

to say A_CandyComment:	[Candy]
	say "     'How can you stand that prissy raccoon boy, boss?' she whispers to you as Candy prances into the library to get a book. 'He's such a silly flake. He's nothing but a useless wimp. I could take him with one hand tied behind my back.' Candy gives a cheery smile and wave, ignoring the glare the Doberwoman's giving him[if player is male]. He gives his fluffy tail a big swish[end if].";
	now A_Candy is true;

to say A_SvenComment:	[Sven]
	if HP of Sven < 30:
		say "     'I noticed you've got another fucktoy stashed away here - that quiet snow leopard. Good for you, boss. At least you understand that it's now a world where what you can take is yours, and that includes whatever sexy playthings you want. I might like a go at him sometime... though I might play a little rougher than he's used to,' she adds with a toothy grin.";
	[
	else:
		say "***comment about confident Sven.";
	]
	now A_Sven is true;

to say A_FangComment:	[Fang]
	if level of Alexandra is 0:
		say "     'How'd you manage to snag one of those wolves to guard this place, boss?' she asks, clearly impressed with you. 'He looks like a lot of fun. I might just bend over for him some time if you're too busy to take care of your bitch,' she adds with a wink while rubbing a paw around in her shorts.";
	else if level of Alexandra is 1:
		say "     'You don't need to worry, boss. That wolf's comes sniffing around from time to time, but that's it. Since you've staked your claim, we both understand whose bitch I am,' she says, remembering the scene with obvious delight.";
	else:
		say "     'That wolf that helps me guard this place, he's a quiet one. Doesn't say much, but damn if he's not a lot of fun to sneak out back with. I can see why you [if HP of Fang < 3]wanted to keep him[else]bend over for him[end if].'";
	now A_Fang is true;

to say A_PhilipComment:	[Philip]
	say "     'That pig you found is nothing but a stupid, useless slob. Does nothing but wallow in his own filth. He reminds me of my father,' she growls, grinding one fist into her palm.";
	now A_Philip is true;

to say A_MackComment:	[Mack]
	say "     'That gray squirrel you found is quite the big boy,' she says, licking her chops. 'Mmm-mmm! I'd be tempted to get a taste of his nut butter, but he seems to only have eyes for you[if Snow is booked] and that other squirrel[end if] right now. Oh well, maybe later,' she adds, sliding a paw back into her jeans to play with herself.";
	now A_Mack is true;

to say A_SamComment:	[Sam]
	say "     'That taur friend of yours came up looking for a sample. [if HP of Sam < 30]He[else]She[end if] said a blood sample would be fine, but what fun is there in that?' she says with a barking laugh.";
	now A_Sam is true;

to say A_SnowComment:	[Snow]
	say "     'That squirrel you found,' she says, nodding towards Snow, 'has got some sweet melons on her. And that fine piece of meat I wouldn't mind riding either. I see that bushy tail of hers swish and part of me just wants to jump her bones. If she'd shut up about those stupid squirrels of hers for a while, I might even do it.'";
	now A_Snow is true;

to say A_SandraComment:	[Sandra]
	say "     'That silly bunny girl you found may act all cute and innocent, but she's one kinky slut. I've caught her pawing off to some messed up shit going on with the critters outside more than once. Now, I don't have a problem with that,' she says, slipping a paw into her own jeans. 'World's gone to hell and people can get up to whatever kind of kinky shit they like now that there's nobody's around to say they can't.'";
	now A_Sandra is true;

to say A_SallyComment:	[Sally]
	say "     'That huskybunny slut you found is quite a bit of fun, I must say. I borrowed her for a bit, boss,' she says with a wink. 'Now, I seen a lot of critters out there, but nothing quite like her. I'm not sure what you did to get your hands on such a sweet-ass fucktoy, but I expect you'll not be telling that story to the military if they ever get off their asses and get us out of here.";
	now A_Sally is true;

to say A_SarahComment: [Colleen]
	say "...";

to say A_ColleenComment: [Colleen]
	say "...";

to say A_SolsticeComment:	[Solstice]
	say "     Alexandra casually takes you aside and speaks low to you. 'That raven-fox-thing you brought here's being real dodgy with me ever since she found out I was a cop. I didn't say nothing to her, but you should know that we got word from Interpol about someone using [']Solstice['] and other aliases not too long before this whole mess happened. Now, descriptions and stuff aren't no good anymore, but she certainly matches the profile they sent. She's wanted for questioning regarding numerous illegal raids upon archaeological sites, among other stuff. Now, I don't rightfully care at this point what she's been up to or what she might want to do now that the world's going to hell - she can take everything that's not nailed down and have her fun for all I care - but you need to know what you might be getting into with her, boss.'";
	now A_Solstice is true;

to say A_DavidComment:	[David]
	say "     'I tried to ask David, that boytoy soldier of yours, when the military is going to get off their asses and help us, but he got real cagey about it. He tried to claim the whole 'need-to-know-basis' and 'the-enemy-could-find-out' excuses, but I think he - like the whole god damned lot of them - just don't know shit about what's goin['] on!' she growls, knocking a stack of books off the table before storming off.";
	now A_David is true;

to say A_ElijahComment:
	say "...";

to say A_OnyxComment:
	say "...";

to say A_HelenComment:	[Helen]
	say "     Alexandra scritches her chin as she watches Helen running around on all fours after a ball the Doberwoman's just tossed to her. 'I gotta know, boss. What'd you do to her to make her like that?' she asks, sounding a little impressed. You try to explain the situation to her, but she just nods and winks. 'Whatever you say, but I'd recommend you come up with a better story for the military if they ever turn up. Whatever it is, I'll be sure to back you up on it, boss.'";
	now A_Helen is true;

to say A_XerxesComment:	[Xerxes]
	say "     Alexandra scritches her chin as she watches Xerxes running around on all fours after a ball the Doberwoman's just tossed to him. 'I gotta know, boss. What'd you do to him to make him like that?' she asks, sounding a little impressed. You try to explain the situation to her, but she just nods and winks. 'Whatever you say, but I'd recommend you come up with a better story for the military if they ever turn up. Whatever it is, I'll be sure to back you up on it, boss.'";
	now A_Xerxes is true;

to say A_IcarusComment:
	say "...";

Section 13 - Endings

when play ends:
	if alexandra is booked and HP of Alexandra < 50:
		if humanity of player < 10:
			say "     When the doberwoman realizes that you're not going to be returning, she strikes out into the city[if libido of alexandra > 0] with her offspring[end if]. After beating up several other canines and a few lightly infected survivors she manages to track down, [if libido of alexandra > 0]they form[else]she forms[end if] a gang of rough canine thugs. With herself as the alpha and gang leader, her pack - formed mostly newly infected Dobermans and her offspring - fight for a claim a chunk of the city as their own. They have little concern for boundaries or rules and happily take whatever they want, be it goods or sex, from any they happen to accost.";
		else:
			say "     When the military come through to rescue what sane survivors they can find, Alexandra gets herself cleaned up and back in her uniform. She backs you up on whatever information or stories you want to tell the military, her presence adding credence to your claims once they check her exemplary record as a policewoman. You both have a bit of a snicker about this during a private moment while you grope your bitch's ass. It's tough for her to put on the act as a good cop now that she's your bad girl through and through, but thankfully she's processed quickly in an attempt by the military to get more cops available to help with the problem of escaping creatures.";
			say "     Once you're released, she's ready and waiting for you, loyal only to you[if level of Alexandra is 2] and Fang[end if]. Clearly very worked up and frustrated after so long without fucking you, the first night you're together again is one long, rough fuck session where you reward your bad girl with the hardest, rawest sex you can until you're both exhausted to the point of passing out as the sun comes up. From that point on, she sticks with you loyally, acting your gruff, no-nonsense muscle for any task you need. Be it bodyguard, enforcer, goon or fucktoy bitch, she will do whatever you request, the meaner the act or the rougher the sex, the better.";
			if libido of Alexandra > 0:
				say "     Alexandra's [if libido of Alexandra > 10]numerous [end if]offspring are a roughshod pack of dogs. They are unsavory punks through and through, making trouble, running in gangs and generally doing whatever they like. Aside from you, the only authority they respect is their tough-as-nails mother and her firm right hand.";


[ scraps for later


	There's not much of a police force left since this crazy infection rolled through. I figure most every cop in the city got overwhelmed. As this crazy thing was happening, we were all called out to incidents popping up everywhere. Of course, it's not like cops can do much against this sort of thing, so all that did was make sure we all were at the outbreak points, getting changed into sex-crazed creatures like everyone else.
...
Sgt Marks reference.



Informing you that her name is Officer Friedrich, she explains how she's been trying to help around here as best she can by trying to keep those infected from slipping any further. As you talk about what you've been seeing, she even shares some water with you.
You talk to her a little about what you've seen as well.

other rooms:
holding cells
lockup/storage
police lockerroom
chief's office

actual tasks:
- supplies
- help survivor(s)
- defend police stn
- track "criminal"


]


Bad Alexandra ends here.
