Version 1 of Good Alexandra by Wahn begins here.
[ Originally authored by Stripes                       ]
[ Version 1 - Separated from the Bad Alexandra content ]

[ HP of Alexandra                                   ]
[ 0 = still roaming                                 ]
[ 1-49 = Bad Alexandra                              ]
[ 1 = At bunker, no talk                            ]
[ 2 = At bunker, talk                               ]
[ 3 = First preggers                                ]
[ 4 = Gave birth                                    ]
[ 5 = Preggers again                                ]
[ 50+ = Good Alexandra                              ]
[ 50 = At police station, no visit                  ]
[ 51 = Been to Police Station Twelve                ]
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
[ 0 = not preggers                                  ]
[ 1-12 = lightly preggers                           ]
[ 13-24 = plumply preggers                          ]
[ if ( HP of Alexandra is 3 and lust of Alexandra > 12 ) or HP of Alexandra > 3 = bigger breasts ]

[ libido of Alexandra                               ]
[ number of offspring                               ]

[   hunger of Alexandra   - Whether at library or not             ]
[   0:     Good Alexandra at Police Station     ]
[   1:     Good Alexandra at Library            ]

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

[     policerepair                                  ]
[ 0 = task not assigned                             ]
[ 1 = task assigned                                 ]
[ 2 = partial windows                               ]
[ 3 = completed windows                             ]
[ 4 = partial doors                                 ]
[ 5 = completed doors                               ]
[ 6 = miscellaneous                                 ]

[ PoliceStationTwelvePopulation                      ]
[ generic population count                          ]

[ PoliceStationTwelveInfpop                          ]
[ infected population count                         ]
[ (subset of population)                            ]

"Adds Alexandra the Doberwoman as an NPC to the Flexible Survival game"

Alexandrastory is a truth state that varies.
Alexandrastory2 is a truth state that varies.
Alexandrastory3 is a truth state that varies.

Section 6 - Police Station

Table of GameRoomIDs (continued)
Object	Name
Police Station Twelve	"Police Station Twelve"

Police Station Twelve is a room. It is fasttravel. It is private. It is sleepsafe.
The earea of Police Station Twelve is "Outside".
The description of Police Station Twelve is "[policestationdesc]".
the scent of Police Station Twelve is "Despite the cleanup, there's still a lingering scent of sex in the air.".
PoliceStationTwelvePopulation is a number that varies.
PoliceStationTwelveInfpop is a number that varies.

PSdoor is a door. "The heavy doors to the north lead back outside to the parking lot and then into the city beyond.". North of Police Station Twelve is PSdoor. PSdoor is dangerous. North of PSdoor is Wandering the City.
the marea of PSdoor is "Outside".

Table of GameRoomIDs (continued)
Object	Name
Police Lockerroom	"Police Lockerroom"

Police Lockerroom is a room. It is sleepsafe. Police Lockerroom is east of Police Station Twelve.
The description of Police Lockerroom is "[policelockerdesc]".
The scent of Police Lockerroom is "Despite the cleanup, there's still a lingering scent of sex in the air.".

Table of GameRoomIDs (continued)
Object	Name
Cell Block A	"Cell Block A"

Cell Block A is a room. It is sleepsafe. Cell Block A is down from Police Station Twelve.
The description of Cell Block A is "[CellBlockAdesc]".
The scent of Cell Block A is "Despite the cleanup, there's still a lingering scent of sweat, sex and other less pleasant odors.".

to say policestationdesc:
	if HP of Alexandra is 50:
		say "     The directions from Alexandra lead you down a side street just off from a major intersection. While there's some mutant activity along those streets, the side street is thankfully bare of trouble. Clearly the policewoman's presence has at least driven off the feral creatures right around the station for the moment.";
		now HP of Alexandra is 51;
	say "     The Police Station itself is one of the newer, smaller sort. It is only a few stories tall and many of its walls are mirrored glass above the first floor while the ground floor has a stone facade with reinforced windows and heavy doors. It would be quite secure, had it not needed to contend with an outbreak of monsters. Large sections of the upper floor windows have been shattered and the armored doors don't look like they'll quite close properly anymore, they've been so warped and bent. The parking lot is mostly empty of cars, though there are a few wrecked cruisers still stained inside with sexual fluids.";
	if HP of Alexandra < 57:
		say "     Inside, you find that the destruction is not just to the outside of the building, though Alexandra's made some effort to clean up, pushing aside or throwing out ruined desks and filing cabinets. She's set up a cot for herself next to one of the intact desks.";
	else:
		say "     Some of the destruction inside has been cleaned up by this point, with the worst of the ruined furniture removed. The walls and floors have been cleaned by Jimmy's enthusiastic helpfulness, though marks from many of the stains remain. Alexandra has a cot for herself set up next to one of the intact desks[if PoliceStationTwelvePopulation > 12]. A couple of the other survivors mill about while others keep watch by the doors and windows[else if PoliceStationTwelvePopulation > 6]. A pair of survivors working in shifts keep an eye out for trouble[else if PoliceStationTwelvePopulation > 2]. One of the remaining survivors nervously takes shifts at the door, keeping an eye out for trouble whenever Alexandra's on patrol or resting[end if].";
	say "     [link]North[end link] leads out of the station and back into the city while [link]east[end link] heads into the locker rooms.";

to say policelockerdesc:
	let infpoppercent be 0;
	if PoliceStationTwelvePopulation > 0:
		now infpoppercent is ( 100 * PoliceStationTwelveInfpop ) / PoliceStationTwelvePopulation;
	if HP of Alexandra < 57:
		say "     This room was once the lockerroom area of the station, where the cops could get changed when coming on and off duty. It looks like this place was hit pretty hard, with lots of torn clothes and cum stains littering the floor. Many of the lockers have been knocked over or even torn asunder by clawed hands. It looks like Alexandra started to clean up this room, but there's still much more to be done. There's a few cots wedged in here for others to use.";
	else:
		say "     This room was once the lockerroom area of the station, where the cops could get changed when coming on and off duty. The room's been cleaned up quite a bit. The destroyed lockers have been removed and the open space now has some bunks in it. The remaining lockers have been pushed to one wall to be a place where those staying here can store their few personal belongings or a change of clothes[if HP of Jimmy >= 3]. Jimmy's cheerfully made quite the effort to clean up the place, having scrubbed away most of the messy stains left after the outbreak[end if].";
	if paula is lockered:
		say "     Paula's converted a small corner of this room into her nurse's station. The medical supplies, which she's put herself in charge of, are secured in some lockers to prevent misuse. She's also set aside a cot to use as her examination table.";
	if PoliceStationTwelvePopulation > 30:
		say "[bracket]*** Someone's cheating... the population shouldn't be this high yet. ***[close bracket][line break]";
	else if PoliceStationTwelvePopulation > 20:
		say "     The makeshift shelter has quite a few people living in it, the various survivors you've brought in having taken bunks or mats here. They're in pretty good spirits, doing their best to keep it together until rescue can arrive. They're generally friendly, if a little worn out by everything that's happened to them[if infpoppercent is 100]. None of the survivors are human any longer, each showing more infected traits than uninfected ones[else if infpoppercent >= 75]. There are a few survivors who are still human, or at least human enough at a casual glance[else]. There's even quite a few survivors who still seem human, or at least close enough to human at a casual glance[end if]. There's a mix of strains among the infected survivors staying here, with no particular strain affecting more than a handful at most. From time to time, couples head off with a blanket to get some alone time elsewhere in the abandoned station.";
	else if PoliceStationTwelvePopulation > 15:
		say "     The makeshift shelter has quite a few people living in it, the various survivors you've brought in having taken bunks or mats here. They're in fairly good spirits, doing their best to keep it together until rescue can arrive. They're generally friendly, if a little worn out by everything that's happened to them[if infpoppercent is 100]. None of the survivors are human any longer, each showing more infected traits than uninfected ones[else if infpoppercent >= 75]. There are a few survivors who are still human, or at least human enough at a casual glance[else]. There's even quite a few survivors who still seem human, or at least close enough to human at a casual glance[end if]. There's a mix of strains among the infected survivors staying here, with no particular strain affecting more than a handful at most. From time to time, couples head off with a blanket to get some alone time elsewhere in the abandoned station.";
	else if PoliceStationTwelvePopulation > 8:
		say "     The makeshift shelter has some other people living in it, the remaining survivors you've brought in having taken bunks or mats here. They're holding up okay, trying to keep it together until rescue can arrive. They're generally friendly, if rather worn out by everything that's happened to them[if infpoppercent is 100]. None of the survivors are human any longer, each showing more infected traits than uninfected ones, if any at all[else if infpoppercent >= 75]. There are one or two survivors who are still human, or at least human enough at a casual glance[else]. There's even a few survivors who still seem human, or at least close enough to human at a casual glance[end if]. There's a mix of strains among the infected survivors staying here, with no particular strain affecting more than a few of them. From time to time, couples head off with a blanket to get some alone time elsewhere in the abandoned station.";
	else if PoliceStationTwelvePopulation > 0:
		say "     The makeshift shelter has only a few the remaining survivors still living here. They're in low spirits, but try to keep it together until rescue can arrive. They're generally friendly, if very worn out by all they've endured and lost. Whenever Jimmy's around, their mood does brighten a little as seeing the cute corgi always cheers them up[if infpoppercent is 100]. None of the survivors are human any longer, each showing more infected traits than uninfected ones, if any at all[else if infpoppercent >= 75]. There some lingering human traits among those who remain[else]. There's even a survivor or two who still seem human, or at least close enough to human at a casual glance[end if]. There's a mix of strains among the infected survivors staying here, with no particular strain affecting more than a few of them. From time to time, couples head off with a blanket to get some alone time elsewhere in the abandoned station.";

to say CellBlockAdesc:
	if HP of Alexandra < 57:
		say "     This area shows a lot of damage and it's easy to get why. With the cops bringing in sex-crazed victims and adding them to their existing prisoners, eventually some powerful transformations would arise and the monstrous inmates broke out. Bars are bent, cell doors are ripped open or torn off completely and cum stains are everywhere, stinking up the place with the heady musk of sex along with other, less pleasant odors.";
	else:
		say "     This area still shows a fair bit of damage after the breakout of sex-crazed creatures. Not much can be done to repair the cells, but some are sturdy and can be locked up. The area's also received a cleaning, though not nearly as thorough as the other parts of the police station. There are no infectious cum pools left, though their scent and that of other unpleasant things still linger in the air down here.";
	if Master Mind is imprisoned:
		say "     The gold-skinned, dome-headed automaton stands silently in one of the locked cells. She is confined on her own and is occasionally provided with food and water from the station's supplies. The small cot in the cell seems unused, the prisoner never seeming to need sleep, instead standing or sitting in silence, her electronic brain quietly blinking with the random lights of thought.";


A person can be policed. A person can be lockered. A person can be imprisoned. A person can be stationed. A person is usually not policed. A person is usually not lockered. A person is usually not imprisoned. A person is usually not stationed.

Definition: A person (called x) is policed:
	if x is the player, no;
	if x is Velos, no;
	if the location of x is Police Station Twelve, yes;
	no;

Definition: A person (called x) is lockered:
	if x is the player, no;
	if x is Velos, no;
	if the location of x is Police Lockerroom, yes;
	no;

Definition: A person (called x) is imprisoned:
	if x is the player, no;
	if x is Velos, no;
	if the location of x is Cell Block A, yes;
	no;

Definition: A person (called x) is stationed:
	if x is the player, no;
	if x is Velos, no;
	if the location of x is Police Station Twelve, yes;
	if the location of x is Police Lockerroom, yes;
	if the location of x is Cell Block A, yes;
	no;


Section 7 - Good Alexandra

to say alexandrascent_gg:
	say "     The dog woman has a canine scent to her.";

to say alexandradesc_gg:
	if debugactive is 1:
		say "[goodAlexandra_debug]";
	if graphics is true:
		project the figure of Alexandra_clothed0_neutral_icon;
	say "     Alexandra, once a cop for the city, has been transformed into a Doberman woman by the infection. She's remained in uniform, showing her attempt to keep up her duties, wearing a light blue shirt, darker pants and a policeman's hat. She's got a rather normal, human build, but with some traces of canine features, showing especially on her paw-like hands and feet. Her head is fully that of a Doberman Pinscher, with a long muzzle, and her short fur has the two-tone black and tan markings of the breed. She has an average-sized rack under her shirt.";

to say alexandratalk_gg:
	if debugactive is 1:
		say "[goodAlexandra_debug]";
	if graphics is true:
		project the figure of Alexandra_clothed0_smile_icon;
	if HP of Alexandra is 50:
		now HP of Alexandra is 51;
	if HP of Alexandra is 51:
		say "     'It's good to see that you're still holding out. It's been a while since I've met anyone as coherent as you, so I could really use the company. Here, let me show you around,' she says, leading you around the station.";
		say "     'As you can see, things got pretty bad here. Like I'd mentioned, we were responding to calls as everything started to fall apart. A lot of the officers simply never returned from those calls. The few that did either must have been tainted by sexual fluids or had brought those they'd arrested, or both. Things got out of hand quickly, the infection spreading through the office and through the lockup, building upon itself.'";
		say "     You ask her how she got out of there, if things were so bad. 'I was lucky, I guess. Just before things boiled over completely, I'd gone outside to assist a canine team, only to find them merging with their dogs and fucking like animals. I was grabbed and they tried to pull me down to rape me just as some muscled brute of a creature crashed out the front doors and rammed right into the canine unit's van. More of them charged out the windows, leaping to the ground and running off into the city. In the confusion, I was able to make a break for it, but I'd already been infected and kept changing.";
		say "     'When morning came and I returned, the station had been deserted save for a few lingering mutants. I drove them off and decided to stay, hoping to help any survivors who came looking for police assistance. When no one turned up, I went out on my own, trying to find citizens to help. I... think I was starting to crack by the time I ran into you. I'm not going out on patrol as much for a while.'";
		now HP of Alexandra is 52;
	else if HP of Alexandra is 65 and HP of Master Mind is 0:
		say "     'We should interrogate the prisoner and see what we can find out. She's been frustratingly uncommunicative.";
	else if HP of Alexandra is 65:
		say "[goodalexandrasex_first]";
		now HP of Alexandra is 66;
		now lastfuck of Alexandra is turns;
	else if HP of Alexandra is 68:
		say "[A_Task57]";
	else:
		say "[alexandratalk_gg_menu]"; [access regular conversation content]

to say alexandratalk_gg_menu:
	say "     There's a few topics you might be able to discuss with Alexandra. Is there anything in particular on your mind or do you just want to chat?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Chit-chat";
	now sortorder entry is 1;
	now description entry is "Chat with the policewoman about general matters.";
	[]
	if ( HP of Alexandra > 51 and Alexandrastory is false ) or ( HP of Alexandra >= 57 and Alexandrastory2 is false ) and lastAlexandraPast - turns >= 8:
		choose a blank row in table of fucking options;
		now title entry is "Her past";
		now sortorder entry is 2;
		now description entry is "Ask Alexandra about her past";
	[]
	if HP of Alexandra < 56 or ( HP of Jimmy > 2 and HP of Alexandra >= 56 and AT_Paula is false and guy is not banned and girl is not banned ):
		choose a blank row in table of fucking options;
		now title entry is "Supplies";
		now sortorder entry is 3;
		now description entry is "Talk to Alexandra about her supply needs";
	[]
	if HP of Alexandra > 51 and no_AlexandraTask is not turns:
		choose a blank row in table of fucking options;
		now title entry is "Tasks";
		now sortorder entry is 4;
		now description entry is "Ask Alexandra if she needs any assistance";
	[]
	if policerepair > 0 and pr_task04 is false and lastpolicerepair is not turns and hunger of Alexandra < 1:
		choose a blank row in table of fucking options;
		now title entry is "Repairs";
		now sortorder entry is 5;
		now description entry is "Talk to Alexandra about those repairs";
	[]
	if HP of Alexandra > 65 and HP of Buster > 0 and alexandragshep1 is false:
		choose a blank row in table of fucking options;
		now title entry is "G-Shep squad";
		now sortorder entry is 5;
		now description entry is "Tell Alexandra about the other police dogs you met";
	[]
	if AT_Patrol is true and lastPolicePatrol - turns >= 8 and hunger of Alexandra < 1:
		choose a blank row in table of fucking options;
		now title entry is "Patrol";
		now sortorder entry is 6;
		now description entry is "Talk to Alexandra about patrolling the neighborhood";
	[]
	if hunger of Alexandra is 1:
		choose a blank row in table of fucking options;
		now title entry is "Next Step";
		now sortorder entry is 7;
		now description entry is "Talk to Alexandra about the Overmind.";
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
				if nam is "Chit-chat":
					say "[alexandratalk_gg1]";
				else if nam is "Her past":
					say "[alexandratalk_gg_past]";
				else if nam is "Supplies":
					say "[alexandra_supplies]";
				else if nam is "Tasks":
					AlexandraTaskChat;
				else if nam is "Repairs":
					say "[alexandra_repairs]";
				else if nam is "Patrol":
					say "[alexandra_patrol]";
				else if nam is "G-Shep squad":
					say "[alexandra_gshep]";
				else if nam is "Next Step":
					say "[alexandra_nextstep]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the doberwoman bitch, shaking your head slightly as she gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;


to say alexandratalk_gg1:
	if HP of Alexandra < 56:
		say "     [one of]'It's good to see a friendly face from time to time,' she says, her tail wagging.[or]'Grab a seat,' she adds, waving a paw to a stray office chair before sitting at her desk again.[or]'I've had to drive off a few creatures that've come poking around here. Things have been pretty quiet lately, so it must be helping.'[or]'Thanks for making the effort to talk to me. I might've gone over the edge and permanently become a crazy police dog or something if not for you to talk to.'[or]'It's been hard to deal with this sex-crazed city at times. The urges you get, you know,' she says. You can see her squeezing her legs together and grinding her thighs against one another, the passing scent of canine arousal in the air.[or]Alexandra gives you a report on recent activity around the police station.[or]'You need to be careful out there. There's some people out there who seem sane enough at first, but they've lost their minds and become horny, feral mutants. Just because someone can talk to you doesn't mean they're sane or safe.'[or]'I've noticed that there's different mutants in different parts of the city. They're probably centered around where that infection first broke out or they were first able to breed more of themselves.'[or]'Let me know if you find anyone else out there. I could use some good news.'[or]'Don't forget that the military's going to be coming in to help us as soon as they can mobilize. We just need to hold out until then.'[or]You chat with Alexandra for a while, telling her some of the stuff you've encountered out in the city.[at random]";
		now sextablerun is 0; [Chit-chat allows continued conversation]
	else if HP of Alexandra is 56:
		say "     [one of]'It's good to see a friendly face from time to time,' she says, her tail wagging.[or]'Grab a seat,' she adds, waving a paw to a stray office chair before sitting at her desk again.[or]'I've had to drive off a few creatures that've come poking around here. Things have been pretty quiet lately, so it must be helping.'[or]'Thanks for making the effort to talk to me. I might've gone over the edge and permanently become a crazy police dog or something if not for you to talk to.'[or]'It's been hard to deal with this sex-crazed city at times. The urges you get, you know,' she says. You can see her squeezing her legs together and grinding her thighs against one another, the passing scent of canine arousal in the air.[or]Alexandra gives you a report on recent activity around the police station.[or]'You need to be careful out there. There's some people out there who seem sane enough at first, but they've lost their minds and become horny, feral mutants. Just because someone can talk to you doesn't mean they're sane or safe.'[or]'I've noticed that there's different mutants in different parts of the city. They're probably centered around where that infection first broke out or they were first able to breed more of themselves.'[or]'Let me know if you find anyone else out there. I could use some good news.'[or]'Don't forget that the military's going to be coming in to help us as soon as they can mobilize. We just need to hold out until then.'[or]You chat with Alexandra for a while, telling her some of the stuff you've encountered out in the city.[or]'Thanks again for those supplies. It should make things a lot easier once people start taking shelter here.'[at random]";
		now sextablerun is 0; [Chit-chat allows continued conversation]
	else if HP of Alexandra >= 58 and a random chance of 1 in 3 succeeds and Alexandracoffee is false:
		say "     'Oh, I almost forgot. I found this a little while ago, but hadn't had a chance to get it working yet,' she says, getting up and heading over to a box in the corner. Pulling out a small gas cooker from it, a little battered but functional, she sets it up on one of the desks. With a little help from you to get it cleaned up, she manages to get it running. Some coffee, also among the items in the box, is brewed up for you and [if the number of policed people + the number of lockered people > 1]the others[else]Jimmy[end if] to enjoy - a rare treat these days.";
		say "     'Oh, that's the stuff,' Jimmy says with a sigh of pleasure as he downs a hot mouthful.";
		increase lastfuck of Jimmy by 6;
		if Paula is lockered:
			say "     'Be careful, that stuff'll stunt your growth,' Paula teases him. Jimmy gives a flat 'Ha-ha' in response and takes another big gulp.";
			increase lastfuck of Paula by 6;
		if Stella is lockered:
			say "     'You got any tea in there,' Stella comments, sniffing around in the box. Not finding any, the dalmatian's forced to take the coffee, though she drinks it down as eagerly as the rest of you. 'Bleck. Well, that's at least perked me up,' she laughs, her cock stiffening as the buzz of caffeine runs through her.";
			increase lastfuck of Stella by 6;
		if PoliceStationTwelvePopulation > 0:
			say "     You motion for those standing guard to cup over and get some as well. They join you happily and thank you all for being included, taking turns coming over to get their up so there's at least one watching the outside. You chat pleasantly with them, getting a chance to get to know these people you've been helping out a little better, further motivating you.";
			increase morale of player by 2;
		[***other NPCs in station can get added]
		say "     'Mmm... how I've missed you, old friend,' Alexandra says as she takes the last cup. 'Life blood of cops. Now if only we had some doughnuts,' she says with a grin. You all enjoy the hot cup of joe, the mood in the place improving considerably thanks to it.";
[		if HP of Alexandra > 65, increase lastfuck of Alexandra by 8;]
		increase morale of player by 3;
		PlayerDrink 6;
		now Alexandracoffee is true;
	else if HP of Alexandra < 63:
		say "     [one of]'Grab a seat,' she adds, waving a paw to a stray office chair before sitting at her desk again.[or]'I've had to drive off a few creatures that've come poking around here. Things have been pretty quiet lately, so it must be helping.'[or]'Thanks for all your help around here. I don't think I'd have been able to pull this off alone. You've been a good friend,' she says with a smile and a funny look before turning her attention to some of her notes.[or]'It's been hard to deal with this sex-crazed city at times. The urges you get, you know,' she says. You can see her squeezing her legs together and grinding her thighs against one another, the passing scent of canine arousal in the air.[or]Alexandra gives you a report on recent activity around the police station.[or]'You need to be careful out there. There's some people out there who seem sane enough at first, but they've lost their minds and become horny, feral mutants. Just because someone can talk to you doesn't mean they're sane or safe.'[or]'I've noticed that there's different mutants in different parts of the city. They're probably centered around where that infection first broke out or they were first able to breed more of themselves.'[or]'Good work finding survivors. If you locate others, don't forget that this is a safe place for them. We'd be happy for more company here,' she says with a grin.[or]'Don't forget that the military's going to be coming in to help us as soon as they can mobilize. We just need to hold out until then.'[or]You chat with Alexandra for a while, telling her some of the stuff you've encountered out in the city.[at random]";
		now sextablerun is 0; [Chit-chat allows continued conversation]
	else if HP of Alexandra is 63 or HP of Alexandra is 64:
		say "     [one of]'It's good to see you stopping by from time to time,' she says, her tail wagging.[or]'Grab a seat,' she adds, waving a paw to a stray office chair before sitting at her desk again.[or]'I've had to drive off a few creatures that've come poking around here. Things have been pretty quiet lately, so it must be helping.'[or]'You've been such a big help, from saving me from going crazy to helping get this place running. I owe you so much.'[or]'It's been hard to deal with this sex-crazed city at times. The urges you get, you know,' she says. You can see her squeezing her legs together and grinding her thighs against one another, the passing scent of canine arousal in the air.[or]Alexandra gives you [if PoliceStationTwelvePopulation > 6]and the sentries [end if]a report on recent activity around the police station.[or]'You need to be careful out there. There's some people out there who seem sane enough at first, but they've lost their minds and become horny, feral mutants. Just because someone can talk to you doesn't mean they're sane or safe.'[or]'Keep an eye out for more survivors, especially those who might need our help.'[or]'Don't forget that the military's going to be coming in to help us as soon as they can mobilize. We just need to hold out until then.'[or]You chat with Alexandra for a while, telling her some of the stuff you've encountered out in the city.[or]'Those supplies you've brought us have been a big help.'[or]'[if PoliceStationTwelvePopulation > 20]Having all these survivors here really keeps things busy. Thankfully some of them are willing to help out by keeping watch or scavenging[else if PoliceStationTwelvePopulation > 12]Having all these survivors here really keeps things busy. Thankfully a few of them are willing to help out by keeping watch or scavenging[else if PoliceStationTwelvePopulation > 0]Things are pretty busy here with us trying to keep care of the remaining survivors. The losses has been a strain on them and the few still willing to help out have to work all the harder[end if]'[at random]";
		now sextablerun is 0; [Chit-chat allows continued conversation]
	else if HP of Alexandra >= 65:
		say "     [one of]'It's good to see you stopping by from time to time,' she says, her tail wagging.[or]'Grab a seat,' she adds, waving a paw to a stray office chair before sitting at her desk again.[or]'I've had to drive off a few creatures that've come poking around here. Things have been pretty quiet lately, so it must be helping.'[or]'You've been such a big help, from saving me from going crazy to helping get this place running. I owe you so much.'[or]'It's been hard to deal with this sex-crazed city at times. The urges you get, you know,' she says. You can see her squeezing her legs together and grinding her thighs against one another, the passing scent of canine arousal in the air.[or]Alexandra gives you [if PoliceStationTwelvePopulation > 6]and the sentries [end if]a report on recent activity around the police station.[or]'You need to be careful out there. There's some people out there who seem sane enough at first, but they've lost their minds and become horny, feral mutants. Just because someone can talk to you doesn't mean they're sane or safe.'[or]'Keep an eye out for more survivors, especially those who might need our help.'[or]'Don't forget that the military's going to be coming in to help us as soon as they can mobilize. We just need to hold out until then.'[or]You chat with Alexandra for a while, telling her some of the stuff you've encountered out in the city.[or]'Those supplies you've brought us have been a big help.'[or]'Thanks for your help with catching that automaton woman. I haven't been able to get any useful information out of her yet, but she should start talking eventually.'[or]'I haven't been able to get anything out of that smug android yet, but I'll keep at it. And I'll keep an eye out for others like her, too. If we get them, the others can't organize.'[at random]";
		now sextablerun is 0; [Chit-chat allows continued conversation]
[		say "***";]


to say alexandratalk_gg_past:
	if Alexandrastory is false:
		say "     Alexandra leans back in her chair and rubs her brow. 'My parents were criminals, doing drugs and committing petty crimes to pay for the habit. It wasn't a very good home to grow up in, so I was taken away by Child Services when they were finally caught. That wasn't much better, but it let me learn that I didn't have to be like them. When I grew up, I decided to become a police officer and tried my best to be an example to others,' she says, subconsciously sitting back up straighter.";
		say "     'I told myself that my parents being criminals didn't matter and that I didn't need to end up like them. I think that drive to be [']a good and moral person['] helped motivate me to stay sane. At least for a while,' she adds, rubbing her brow. 'Things were starting to get rather confused towards the end. Beating up the mutants. Writing them tickets. I was getting so worked up about trying to hold the city together that I was probably going to crack entirely soon. So I'm really glad you came along when you did. I really appreciate you talking some sense into me, that's for sure. Uggh... I'm tired of talking about this stuff. I'm going to do a quick walkaround to clear my head,' she says with a growl as she hops up out of her chair and heads off, a hint of canine arousal in the air in the wake of her departure.";
		now Alexandrastory is true;
	else if Alexandrastory2 is false:
		say "     Alexandra leans back in her chair and rubs her brow. 'Things were pretty hard for a while after I was taken away from my neglectful parents. I had a tough time fitting in, feeling that everyone was judging me, so I did my best to be a good person and prove that I was better than my folks. I was probably really just trying to prove it to myself. So when things collapsed during the outbreak, I guess my infected mind started obsessing over that more and more,' she says shaking her head.";
		say "     'I just kept trying to prove myself and do my best to be a good cop. But I was getting more and more confused on what that meant in this crazy, over-sexed city. I'm glad you came along and talked some sense into me before I became another sex-crazy monster. I've been transformed into a dog woman and I need to learn how to deal with that. There's nothing to be gained from pretending this crisis will go away if I keep acting like a police officer. I need to try helping people get through this mess instead of trying to act like the city hasn't fallen completely apart";
		now Alexandrastory2 is true;
		if HP of Alexandra > 65:
			say ".' Alexandra gets out of her chair and grabs you by the wrist, pulling you in close. 'Enough talk for now though. Those 'dog woman urges' could use some relief.'";
			WaitLineBreak;
			now Alexandrastory2 is true;
			now lastfuck of Alexandra is turns + 8;
			try fucking Alexandra;
		else:
			say ".'";
			now sextablerun is 0; [continued talking allowed]
	else:
		say "     'I'm not really in the mood to talk about that right now.";
	now lastAlexandraPast is turns;

to say alexandra_supplies:
	if HP of Alexandra is 52:
		say "     'I've started turning the Police Station into a defended shelter for those who need it, but we'll need some supplies for those too weak or scared to forage. Also, if we've already got a good stockpile, it'll be easier to convince people to come here. I'm sorry to trouble you with this, but I'd really appreciate it if you could scavenge some extra supplies for me. I've already started, but another six meals and six days worth of fresh water would really help.'";
		if carried of food >= 6 and carried of water bottle >= 6:
			say "     Having enough of the food and water supplies in your pack, shall you give them over to her?";
			if player consents:
				say "     The doberwoman smiles happily, a canine grin on her face. 'I knew I could count on you. Thanks a lot, hon.' She gives you a quick kiss on the cheek, then realizes what she's done. 'Ah... umm...' She blushes at her ears and scoops up the supplies clumsily, hurrying off toward the storage lock-up. There is a hint of canine arousal in the air after her departure.";
				decrease carried of food by 6;
				decrease carried of water bottle by 6;
				increase score by 25;
				now HP of Alexandra is 56;
			else:
				say "     Not wanting to part with your much-needed supplies, you politely tell her you'll be on the lookout for additional supplies. If you get enough for your own needs, perhaps you can help her out then.";
				now HP of Alexandra is 53;
				now sextablerun is 0; [continued talking allowed]
		else if carried of food >= 6:
			say "     Having the food supplies she needs already in your pack, shall you give them over to her?";
			if player consents:
				say "     The doberwoman smiles happily, a canine grin on her face. 'I knew I could count on you. Thanks a lot, hon. Ah... umm...' She blushes at her ears and takes the supplies, hurrying off towards the storage lock-up.";
				decrease carried of food by 6;
				increase score by 10;
				now HP of Alexandra is 54;
			else:
				say "     Not wanting to part with your own supplies, you politely tell her you'll be on the lookout for some. If you get enough for your own needs, perhaps you can help her out then.";
				now HP of Alexandra is 53;
				now sextablerun is 0; [continued talking allowed]
		else if carried of water bottle >= 6:
			say "     Having the water supplies she needs already in your pack, shall you give them over to her?";
			if player consents:
				say "     The doberwoman smiles happily, a canine grin on her face. 'I knew I could count on you. Thanks a lot, hon. Ah... umm...' She blushes at her ears and takes the supplies, hurrying off towards the storage lock-up.";
				decrease carried of water bottle by 6;
				increase score by 10;
				now HP of Alexandra is 55;
			else:
				say "     Not wanting to part with your own supplies, you politely tell her you'll be on the lookout for some. If you get enough for your own needs, perhaps you can help her out then.";
				now HP of Alexandra is 53;
				now sextablerun is 0; [continued talking allowed]
		else:
			say "     Lacking the necessary supplies she needs at the moment, you [if carried of food > 0 or carried of water bottle > 0]decide to hang onto what you've got for the moment and [end if]politely tell her you'll be on the lookout for some.";
			now HP of Alexandra is 53;
			now sextablerun is 0; [continued talking allowed]
	else if HP of Alexandra is 53:	[gave neither yet]
		say "     'I was wondering if you'd had any luck finding those supplies we'll need here. Like I said, I could use another 6 food and 6 water rations to improve the stockpiles I've got. Did you manage to find what I need?'";
		if carried of food >= 6 and carried of water bottle >= 6:
			say "     Having enough of the food and water supplies in your pack, shall you give them over to her?";
			if player consents:
				say "     The doberwoman smiles happily, a canine grin on her face. 'I knew I could count on you. Thanks a lot, hon.' She gives you a quick kiss on the cheek, then realizes what she's done. 'Ah... umm...' She blushes at her ears and scoops up the supplies clumsily, hurrying off towards the storage lock-up. There is a hint of canine arousal in the air after her departure.";
				decrease carried of food by 6;
				decrease carried of water bottle by 6;
				increase score by 25;
				now HP of Alexandra is 56;
			else:
				say "     Not wanting to part with your much-needed supplies, you politely tell her you'll be on the lookout for additional supplies. If you get enough for your own needs, perhaps you can help her out then.";
				now sextablerun is 0; [continued talking allowed]
		else if carried of food >= 6:
			say "     Having the food supplies she needs in your pack, shall you give them over to her?";
			if player consents:
				say "     The doberwoman smiles happily, a canine grin on her face. 'I knew I could count on you. Thanks a lot, hon. Ah... umm...' She blushes at her ears and takes the supplies, hurrying off towards the storage lock-up.";
				decrease carried of food by 6;
				increase score by 10;
				now HP of Alexandra is 54;
			else:
				say "     Not wanting to part with your own supplies, you politely tell her you'll be on the lookout for some. If you get enough for your own needs, perhaps you can help her out then.";
				now sextablerun is 0; [continued talking allowed]
		else if carried of water bottle >= 6:
			say "     Having the water supplies she needs in your pack, shall you give them over to her?";
			if player consents:
				say "     The doberwoman smiles happily, a canine grin on her face. 'I knew I could count on you. Thanks a lot, hon. Ah... umm...' She blushes at her ears and takes the supplies, hurrying off towards the storage lock-up.";
				decrease carried of water bottle by 6;
				increase score by 10;
				now HP of Alexandra is 55;
			else:
				say "     Not wanting to part with your own supplies, you politely tell her you'll be on the lookout for some. If you get enough for your own needs, perhaps you can help her out then.";
				now sextablerun is 0; [continued talking allowed]
		else:
			say "     Lacking the necessary supplies she needs at the moment, you [if carried of food > 0 or carried of water bottle > 0]decide to hang onto what you've got for the moment and [end if]politely tell her you'll be on the lookout for some.";
			now sextablerun is 0; [continued talking allowed]
	else if HP of Alexandra is 54:	[already gave food]
		say "     'I was wondering if you'd had any luck finding those supplies we'll need here. Thanks again for the food you brought, but like I said, I could use another 6 water rations to improve the stockpiles I've got. Did you manage to find what I need?'";
		if carried of water bottle >= 6:
			say "     Having the water supplies she needs in your pack, shall you give them over to her?";
			if player consents:
				say "     The doberwoman smiles happily, a canine grin on her face. 'I knew I could count on you. Thanks a lot, hon. Ah... umm...' She blushes at her ears and takes the supplies, hurrying off towards the storage lock-up. There is a hint of canine arousal in the air after her departure.";
				decrease carried of water bottle by 6;
				increase score by 10;
				now HP of Alexandra is 56;
			else:
				say "     Not wanting to part with your own supplies, you politely tell her you'll be on the lookout for some. If you get enough for your own needs, perhaps you can help her out then.";
				now sextablerun is 0; [continued talking allowed]
		else:
			say "     Lacking the necessary supplies she needs at the moment, you [if carried of water bottle > 0]decide to hang onto what you've got for the moment and [end if]politely tell her you'll be on the lookout for some.";
			now sextablerun is 0; [continued talking allowed]
	else if HP of Alexandra is 55:	[already gave water]
		say "     'I was wondering if you'd had any luck finding those supplies we'll need here. Thanks again for the water you brought, but like I said, I could use another 6 food rations to improve the stockpiles I've got. Did you manage to find what I need?'";
		if carried of food >= 6:
			say "     Having the food supplies she needs in your pack, shall you give them over to her?";
			if player consents:
				say "     The doberwoman smiles happily, a canine grin on her face. 'I knew I could count on you. Thanks a lot, hon. Ah... umm...' She blushes at her ears and takes the supplies, hurrying off towards the storage lock-up. There is a hint of canine arousal in the air after her departure.";
				decrease carried of food by 6;
				increase score by 10;
				now HP of Alexandra is 56;
			else:
				say "     Not wanting to part with your own supplies, you politely tell her you'll be on the lookout for some. If you get enough for your own needs, perhaps you can help her out then.";
				now sextablerun is 0; [continued talking allowed]
		else:
			say "     Lacking the necessary supplies she needs at the moment, you [if carried of food > 0]decide to hang onto what you've got for the moment and [end if]politely tell her you'll be on the lookout for some.";
			now sextablerun is 0; [continued talking allowed]
	else if HP of Jimmy > 2 and HP of Alexandra >= 56 and AT_Paula is false and guy is not banned and girl is not banned:
		say "     'I was thinking we should have some medical supplies here in case of emergencies. I figured I'd go check out the city hospital to get them. I'll be heading out there shortly. Did you want to come along? I should be fine, but the help would be appreciated if you're free.'";
		say "     Shall you accompany the doberwoman on her scavenging expedition?";
		if player consents:
			say "[paula_rescue]"; [See Paula.i7x for rescue and NPC content]
		else:
			say "     Stating that you have other things to deal with, you leave her to go on her expedition. Trusting her to be able to handle herself, she doesn't disappoint, returning a few hours later with some medkits and other medical supplies. She seems a little worn out, but in good spirits for her success at finding the items in an examination room.";
			now HP of Paula is 1;
		now AT_Paula is true;
		now HP of Alexandra is 58;
	else:
		say "     'We're pretty well set for supplies at the moment. Thank you though,' she adds with an appreciative smile. 'If you've got extra, hang onto it for now; there's probably plenty of people out in the city who could use them.'";
		now sextablerun is 0; [continued talking allowed]


to say alexandra_gshep:
	if alexandragshep1 is false:
		now alexandragshep1 is true;
		say "     You decide to tell Alexandra about the other canine cops you'd encountered in the city. Given how she's started to relax a little and the two of you have become closer, you hope she might be more understanding about them and be able to see past their lustful antics. Taking a seat at the edge of her desk, you start to tell her about your encounters with the squad members out in the city. Wanting to give a good impression of them, you keep your tale somewhat sanitized, only forewarning her that these dogs do have canines and sex on their minds as well. You don't attempt to deceive her, but simply don't want her to have a negative impression going into it.";
		say "     'I am a little concerned about that, but if they're willing to try to still be police officers and protect others, then I should at least meet with them. Who knows, maybe we'll be able to help them like you helped me,' she adds with a hopeful smile, a paw caressing your thigh. You smile and give her a kiss on the muzzle.";
		say "     The two of you head off together and make your way to the convenience store they've turned into their temporary HQ without incident. As you get close, you make an excuse of telling Alexandra to wait outside on the opposite corner while you let them know she's here. In reality, you just want to tell Buster so he can make sure his horny dogs don't get too frisky with the visiting doberwoman. From there, the crashed vans also largely block the view of the interior of the corner store beyond.";
		WaitLineBreak;
		say "     And it's a good thing you did, though for reasons far greater than you'd anticipated. Several of the officers, Buster included, are in the midst of what appears to be some kind of team-building orgy. Several of the canines, already spent, are sitting and watching on as the last few are fucking like dogs in heat. While Alexandra could handle them going around half-nude and grabbing each other's butts, this would probably be too much for her to accept from fellow officers. You'll have to do something and quick - will you try to [link]break it up (N)[as]n[end link] or [link]join in (Y)[as]y[end link] with the intent on getting the last few dogs finished fast.";
		if player consents:
			setmonster "German Shepherd";
			choose row monster from the Table of Random Critters;
			say "     Perhaps it's the sight and scent of canine sex, but your brain decides that speeding the sex romp to completion is the best solution. It certainly seems like the funnest solution. Feeling pressed for time, you tell Buster that he's going to have a [']surprise inspection['] in a few minutes and to get the others cleaned up while you help the others complete their team-building project.";
			say "     With that, you throw yourself right into it, finding a spot between two horny males who seem to have been waiting for their turn. Taking one German Shepherd's dick in your mouth, you bare your ass for the other. Even as you're being mounted, you reach over to a nearby cop getting fucked and start jerking him off[if player is female]. That pointed canine cock bumps against your rear and brushes across your wet folds a few times before finding its mark. You moan in pleasure as it slides wetly into the grip of your hot cunt. Once he's in, you grind back hard onto his pole while working your inner muscles around it[else]. That pointed canine cock slips between your buns and spreads your anus open, causing you to moan in pleasure. You relax your anal muscles to allow him entry before clamping down and grinding back hard onto his pole[end if].";
			WaitLineBreak;
			say "     You focus your attention on the officer in front of you, lavishing his dog pole with your tongue. You lick up and down it while sucking firmly on the bright red cock. It dribbles precum onto your taste buds - a faint sample of the delicious treat you hope to be getting soon. You can hear the two males atop you sharing sloppy doggy kisses as they spitroast you. You pull your mouth off that penis only long enough to moan that they're good dogs, which seems to please and excite them all the more.";
			say "     The Shepherd atop you grips your ass with eager paws and pounds away at you with increasing speed, soon panting heavily as doggy drool drips onto your back. His growing knot bumps against your [if player is female]juicy folds[else]crinkled pucker[end if], trying to pop its way in before getting too big. Feeling it smack and grind against your well-ploughed entrance, you can't help but moan louder again. Your hips push back into his thrusts, working to help get him in.";
			WaitLineBreak;
			say "     You go at it harder and faster, vaguely thinking there was some reason you were trying to get them off quickly, though you can't quite recall why at the moment. Certainly you're eager for the G-Shep's to cum, wanting their hot seed inside you - that must be it. When the one you're stroking gets off, you grope around on the other side of you and find another dick to play pump, this one aimed at you.";
			say "     When that knot pushes its way into you and inflates to full size, that throbbing dick is tied tightly in your gripping [if player is female]cunny[else]rectum[end if]. The thrusting gets all the more frantic, now short and super-fast humps that tug and push the dog dick locked inside you. Feeling it pulse inside you, there comes a rush of hot, gooey warmth as spurt after spurt of doggy cum shoots into your [if player is female]vagina[else]bowels[end if], setting off your own release. The guy you're sucking cums not long after, feeding you thick shots of his musky load. This sexy show must finally be enough for the one in your hand to get off as well, as you're rewarded with more canine semen painting your side.[impregchance]";
			infect "German Shepherd";
			infect "German Shepherd";
			WaitLineBreak;
			say "     By the time it's done and you're rolled onto your side with the knot still buried in your [if player is female]pussy[else]butt[end if], you're left messy and full of dog cum from both ends. You lay there in the spent officer's arms, trying to recover after that wild romp and powerful orgasm. That canine cock pulses lightly inside you, releasing the occasional small spurt while locked inside you.";
			say "     And that is, of course, how Alexandra finds you when she walks in.";
			say "     Jolted back to reality, you take in the larger scene. It seems Buster's largely managed to organize the rest of his officers into looking busy. Much of the mess, except for the recent addition around your group, has also been tidied up. 'Uhh. Hi honey. They were... uh... just a little extra-happy to see me.' You struggle for a moment, but thankfully recall the officers names from an earlier visit. 'Murphy and Rocky were just over-enthusiastic about seeing me again, but don't worry, they're good dogs.' You smile and give Murphy, the one you were sucking off, an ear scritch. This is echoed by several of the other canines around, pleased to be called that and repeating 'good dog' themselves with tails wagging happily.";
			say "     Alexandra seems a bit put off by what she's walked in on, but confines her response to a bit of a grumble. Familiar now with that sort of look from her and with the change in her scent, you can tell that she's more than a little aroused by the sight despite being somewhat upset.";
			say "     Seeing how you're more than a little [']tied up['] at the moment, you introduce her to Buster and let him start showing her around. Maybe with the [']inspection['] still on his brain, he remains largely professional and on good behavior. He even manages not to grab the sexy doberman's ass, though you do catch his eyes drawn toward it from time to time as she looks the place around and is introduced to several of the other officers. And when you're eventually untied and able to clean up, you go join them.";
		else:
			say "     It is difficult, but you manage to push back those kinky thoughts and head to Buster. It takes some work to shake him out of the lustful state that he's in, but you eventually get him to pay attention to you. It is harder still to make him understand that Alexandra shouldn't see them like this - and she most certainly would NOT want to join in. And while you can't convince him to stop the fuckfest, pushing it as a [']surprise inspection['] does get him to order the remaining participants to take their fun into the back and while the others to do a quick cleanup.";
			say "     Satisfied at your self-control, you head out and get Alexandra to come in. When she comes in, you can tell from the sniffs of her nose that she can smell canine sex in the air, but at least it wasn't right in her face. And you can also tell from that expression on her face and the subtle change to her own scent that she's at least a little aroused by the sight of all the semi-nude police dog eye candy on display. Buster, thanks to the idea of this as an [']inspection['], remains largely profession and on good behavior. He even manages not to grab that sexy doberman's ass, though you do catch his eyes drawn toward it from time to time as she looks the place around and is introduced to several of the other officers.";
			increase score by 25;
			decrease libido of player by libido of player / 8;
			increase humanity of player by 5;
			if humanity of player > 100, now humanity of player is 100;
		WaitLineBreak;
		say "     After the tour and introductions are over, the three of you adjourn to the folding table and chair at the back that the lead dog uses as his desk. They talk for a while, both being police officers and canines gives them plenty of common ground. It's only in the details that things start to get rough.";
		say "     'How can you be so biased as to think there's nothing wrong with what some of those dogs are doing out there?' Alexandra asks at one point, getting exasperated with Buster.";
		say "     'Oh sure, they're a little excitable, to be sure, but they're not going anything really bad. Some dogs just love to play.'";
		say "     'Play? Play? That's what you call it? I'm sure their victims don't feel that way.'";
		say "     'I'm sure they're good dogs. They all are deep down,' he responds, unable to see the faults in his dog-centric mindset.";
		say "     It goes back and forth like this for a while, but with no headway made and Buster only getting confused by any attempts to make him see reason. Such examples or questions simply make no sense to him and he seems unable to grasp that his view is biased. In the end, Alexandra simply has to give it up in frustration, excusing herself and stalking off.";
		say "     Buster's response to this is to pat your shoulder. 'She's a very good girl - a fine canine and a fine officer. She wants so bad to help and protect everyone, thinking she needs to protect even non-canines. Fine ideals for a young officer to have, if a little misguided. I'm sure she'll come around though and understand that in a city gone to the dogs, everyone being fellow canines would be for the best.' Seeing no point in trying to convince him otherwise, you say your farewell and go catch up to Alexandra.";
		say "     Back outside with the doberwoman, you grumbles a little bit as she stomps away. It takes a few minutes for her to calm down. 'It's just... frustrating. They're all doing good, trying to be cops and working to hold the city together, but they're wrong too. I'm sure they do far more good than any trouble they allow, but it's not right.' She takes your hand in hers, giving it a squeeze. 'Just keep an eye on them. You were able to help me before I went off track, so maybe you can help them get back on track too. I'd help but... the sight and scent of all those sexy canines in there... it was really starting to get to me in the end. I'd not want to end up slipping.'";
		say "     They two of you talk off and on about the meeting on your return trip to the [if hunger of Alexandra is 0]police station [else]library[end if]. In the end, you decide not to let the dog squad come there for the time being, feeling it's too risky to expose the people there to the horny dogs.";
	else:		[future content - later meeting]
		say "***future content would go here.";

to say alexandra_nextstep:
	say "     'I haven't decided what to do next. Give me some more time please. (WIP sorry)";

Section 8 - Good Girl Sexxxings

to say sexwithAlexandra_gg:
	if lastfuck of Alexandra - turns < 8:
		say "     'As fun as this has been, I do need at least a short break before we go again.'";
	else if HP of Alexandra <= 65:
		say "     'I don't think that'd be a good idea,' she says, taking a step back from you. You nod and give her some space, though you catch sight of her gnawing at the edge of her canine lip and rubbing her thighs together. From the scent of canine arousal, you can tell she's feeling the arousal of the infection, but doing her best to resist giving into it. Given all that's happened, you probably shouldn't press the issue right now.";
	else:
		say "[goodAlexandrasex]";

to say goodAlexandrasex:
	say "     Exchanging a knowing glance towards the office, the two of you share a smile. She nods and wags her tail, heading into the office. You follow right behind her, trying to decide just how you'd like to spend your private time with the Doberman today.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Desk fuck 1";
	now sortorder entry is 1;
	now description entry is "Rerun of 1st time scene (M/H=fuck, F/N=oral)";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Desk fuck 2";
		now sortorder entry is 2;
		now description entry is "Fuck her on the desk";
	[]
	if player is not neuter:
		choose a blank row in table of fucking options;
		now title entry is "Mutual oral";
		now sortorder entry is 5;
		now description entry is "Orally pleasure one another";
	[]
	else:
		choose a blank row in table of fucking options;
		now title entry is "Give cunnilingus";
		now sortorder entry is 5;
		now description entry is "Orally pleasure the doberwoman";
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
				if nam is "Desk fuck 1":
					say "[goodAlexandrasex1]";
				else if nam is "Desk fuck 2":
					say "[goodAlexandrasex2]";
				else if nam is "Mutual oral" or nam is "Give cunnilingus":
					say "[goodAlexandrasex3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the doberwoman bitch, shaking your head slightly as she gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;


to say goodalexandrasex_first:
	let recentsex be false;
	repeat with x running through stationed people:
		if lastfuck of x is turns:
			now recentsex is true;
			break;
			if graphics is true:
				project the figure of Alexandra_clothed0_frown_icon;
	say "     Alexandra is in the former police chief's office at the moment. You can hear her stomping around and growling in there[if PoliceStationTwelvePopulation > 6]. Those on guard exchange worried glances and look to you for guidance. Knowing her best, they expect you to talk to her[else]. They guy on guard at the moment looks to you for guidance. Knowing her best, he expects you to talk to her[end if]. It wouldn't be good for general morale to leave her like this. Giving [if PoliceStationTwelvePopulation > 6]them[else]him[end if] a nod, you steel yourself and go inside with a knock.";
	say "     'What?!' she snaps before seeing it's you. 'Oh... sorry. It's just... that cold-hearted bitch,' she growls. 'And she's the one who calls me that after all she's remorselessly done! And she's down there right now, still smug and superior despite being locked up. She gets me so mad. Arrgh!' She slaps a stack of papers to the floor. Facing the wall and gripping the desk hard, she growls throatily with her ears back.";
	WaitLineBreak;
	say "     You put a hand on her back, at which her ears twitch up a little. 'Don't let her get to you. We caught her, locked her up and are going to get the rest of them. She's pissed even if she won't show it and the only way she can get back at us is with insults.'";
	say "     That calms her down to the point that she's stopped growling and turned to face you, so you continue. 'Look at what you've accomplished. You've managed to regain your self-control, made this place into a proper shelter[if policerepair >= 5], fortified it[end if] and are now protecting a group of survivors. And you've even tracked down and captured a dangerous mutant leader, helping the whole city.'";
	WaitLineBreak;
	say "     'You're right. You're right,' she repeats, more confidently the second time. But I wouldn't have managed any of that without you.' She look at you tenderly. 'Not without you,' she repeats softly.";
	WaitLineBreak;
	say "     You realize that somewhere along the way, your hand has ended up on her hip. Time slows down. Her paws move to your sides. She gets that nervous, eager smile of hers and leans in slowly. You put your other arm around her, resting your hand on the small of her back. She leans in, muzzle moving to your lips as she closes her eyes. You kiss, long and loving, both full in the realization that all you've done together, all you've accomplished, has built to this.";
	WaitLineBreak;
	say "     Once the long kiss is broken, time suddenly springs back into motion, now feeling like high-speed. You toss aside your gear as Alexandra yanks open her shirt. You're kissing her again as she fumbles with her belt and pants. You bury your face in her bosom as you pop open her bra and push the near-nude doberwoman backwards over her desk.";
	say "[goodalexandrasex00]";
	WaitLineBreak;
	say "     Time seems to return to normal after [if player is not neuter and recentsex is false]your second orgasm[else if player is not neuter]your orgasm[else if recentsex is false]her second orgasm[else]her orgasm[end if]. You roll off the panting doberwoman and the two of you slip to the floor. You snuggle in each other's arms with your backs to the desk - nude, sticky and warm with afterglow. After a few final kisses, you help the cop up. She restores her attire and you collect your gear before stepping out together, hand in hand. There's no way [if PoliceStationTwelvePopulation > 6]those on duty don't[else]the guy on duty doesn't[end if] know what happened in there. They're polite enough not to stare, but you get the feeling they quite approve of the two you being together.";

to say goodalexandrasex00:
	let recentsex be false;
	repeat with x running through stationed people:
		if lastfuck of x is turns:
			now recentsex is true;
			break;
	if player is male:
		if graphics is true:
			project the figure of Alexandra_naked_smile_icon;
		say "     Taking your [cock size desc of player] cock in hand, she guides it between her legs. You can feel the wet touch of her pussy lips there, warmly and invitingly ready for you. The two of you moan passionately as you thrust into her [if cock length of player > 30]with extra care because it's her first time. Despite your extreme size, she accommodates you easily - her body's clearly long been ready and waiting for this moment[else if cock length of player > 15]with care because it's her first time. Despite your large size, she accommodates you easily - her body's clearly long been ready and waiting for this moment[else]gently because it's her first time. You slip into her easily - her body's clearly long been ready and waiting for this moment[end if]. Her legs wrap around your hips and pull you inwards, urging you on as she gives a barking cry.";
		WaitLineBreak;
		say "     While fucking her, you lick and kiss across her bosom. Finding a dark-skinned nipple, you wrap your lips around it and give it a light nibble. She responds with a soft, lustful growl and grips your shoulders with her paws. Panting for more, her hips rock into your thrusts and you eagerly reciprocate.";
		say "     With your long pent-up desires for each other, your lovemaking is wild and passionate. Many kisses are exchanged even as you pound into her once-virgin pussy. Despite her inexperience, the strength of her need has her canine body responding. Her cunt squeezes and tugs at your [cock of player] cock, driving you to orgasm. As your hot seed is pumped into your doberwoman lover, she yowls in response as the feel of you seeding her pushes her into climactic bliss. Lips to muzzle, the two of you kiss, her doggy tongue writhing in your mouth as the two of you breathe, pant, thrust and even beat hearts in synch.";
		if recentsex is false:
			WaitLineBreak;
			say "     You continue thrusting through your orgasm, barely pausing after your climax as she continues to urge you on. Pulling back momentarily, you adjust positions so she's on her side with a leg raised and you're standing upright. This gives you a fine view of her lovely, canine-influenced body. Her coat is glossy with sweat and she's panting from her doggy muzzle. She looks beautiful to you; her lovely figure, her perky breasts and dark nipples poking through her fur, her toned legs and ass. Before you know it, you're fucking her for a second time, the two of you needing more of one another.";
			say "     She grips the edge of the desk and rolls her hips, barking your name and panting for more. As your passion builds anew, you thrust so hard that the desk slowly gets pushed back against the wall. Having just cum shortly before, your thrusts are stronger in your attempt to achieve orgasm, not that the lustful doberwoman seems to mind, your zeal mirrors her own need for you. And by the time the desk thumps back against the wall, you're almost ready to blow again. Gripping her hips harder, you drive into the panting dog-woman a few more times while she runs her paws over her brown-furred body in a sensual display. She cries out your name again in orgasmic delight, her quivering cunny rippling across your throbbing member. The desk bumps against the wall again and again as you drive into your lover, moaning in aching release as you add fresh spurts of your semen to the sticky load already coating her vaginal walls. You lay overtop her again, letting yourself thrust a little deeper into her. Your excess overflows from her canine cunny, adding to the wet mess on the desktop pad.";
	else if player is female:
		if graphics is true:
			project the figure of Alexandra_naked_smile_icon;
		say "     Spreading her legs, you rub a hand across her canine muff. She whimpers with need and grinds her hips up against your caress. Her pussy lips are wet to the touch, warmly and invitingly ready for you. The two of you moan passionately as you slip a pair of fingers into her. Knowing it's her first time, you're gentle at first, but it seems unnecessary. Your digits slip into her easily - her body's clearly long been ready and waiting for this moment. She slips a paw between your own legs and fumbles at your pussy while she wraps a leg behind you, pulling you together as she urges you on with a barking cry.";
		WaitLineBreak;
		say "     While fingering her, you lick and kiss across her bosom. Finding a dark-skinned nipple, you wrap your lips around it and give it a light nibble. She responds with a soft, lustful growl and grips your shoulder with her free paws. Panting for more, her hips grind against you, pressing your hand all the harder to her hot and needy cunt.";
		say "     With your long pent-up desires for each other, your lovemaking is wild and passionate. Many kisses are exchanged even as you finger into her once-untouched pussy. Despite her inexperience, the strength of her need has her canine body responding. Her cunt squeezes and tugs at your fingers and her paw rubs at your pussy and clit, driving you to orgasm. As your inner walls squeeze down around her thrusting fingers, she yowls in response as the feel of you cumming pushes her into climactic bliss. Lips to muzzle, the two of you kiss, her doggy tongue writhing in your mouth as the two of you breathe, pant, grind and even beat hearts in synch.";
		if recentsex is false:
			WaitLineBreak;
			say "     You continue teasing her cunt and clit through your orgasm, barely pausing after your climax as she continues to urge you on. Pulling back momentarily, you adjust positions so she's splayed lengthwise across the large desk. This gives you a fine view of her lovely, canine-influenced body. Her coat is glossy with sweat and she's panting from her doggy muzzle. She looks beautiful to you; her lovely figure, her perky breasts and dark nipples poking through her fur, her toned legs and ass.";
			say "     Before you know it, you're atop her a second time, now in the opposite direction and face to crotch to one another. Pressing your lips to her sticky muff, you run your tongue across her folds. Already wet from her climax, her pussy quivers and she arches her hips up for more. There is no pause as the doberwoman's canine tongue lashes you in return, lapping across and very soon into your pussy. Despite your recent release, the two of you are eager for more of one another and your tongues work hard at pleasuring your lover. While lacking previous experience, Alexandra's canine tongue proves to be an advantage. It laps across your folds and clit in long licks and readily delves deep inside you. Between the taste of you and your own tonguework, she's driven to a whining, whimpering climax that has a fresh rush of canine juices flowing over your tongue. This and the grip of her rippling passage over your probing tongue puts you over the top and you're soon orgasming as well, providing your lapping lover with a fresh taste of your femme cum.";
	else:
		if graphics is true:
			project the figure of Alexandra_naked_smile_icon;
		say "     Spreading her legs, you rub a hand across her canine muff. She whimpers with need and grinds her hips up against your caress. Her pussy lips are wet to the touch, warmly and invitingly ready for you. The two of you moan passionately as you slip a pair of fingers into her. Knowing it's her first time, you're gentle at first, but it seems unnecessary. Your digits slip into her easily - her body's clearly long been ready and waiting for this moment. She slips a paw between your own legs and fumbles at your bare crotch while she wraps a leg behind you, pulling you together as she urges you on with a barking cry.";
		WaitLineBreak;
		say "     While fingering her, you lick and kiss across her bosom. Finding a dark-skinned nipple, you wrap your lips around it and give it a light nibble. She responds with a soft, lustful growl and grips your shoulder with her free paws. Panting for more, her hips grind against you, pressing your hand all the harder to her hot and needy cunt.";
		say "     With your long pent-up desires for each other, your lovemaking is wild and passionate. Many kisses are exchanged even as you finger into her once-untouched pussy. Despite her inexperience, the strength of her need has her canine body responding. Her cunt squeezes and tugs at your fingers, eventually yowling as the sensations push her into climactic bliss. Lips to muzzle, the two of you kiss, her doggy tongue writhing in your mouth as the two of you breathe, pant, grind and even beat hearts in synch.";
		if recentsex is false:
			WaitLineBreak;
			say "     You continue teasing her cunt and clit through her orgasm, barely pausing during its ebb as she continues to urge you on. Pulling back momentarily, you adjust positions so she's splayed lengthwise across the large desk. This gives you a fine view of her lovely, canine-influenced body. Her coat is glossy with sweat and she's panting from her doggy muzzle. She looks beautiful to you; her lovely figure, her perky breasts and dark nipples poking through her fur, her toned legs and ass.";
			say "     Before you know it, you're atop her a second time, now in the opposite direction and face to crotch to one another. Pressing your lips to her sticky muff, you run your tongue across her folds. Already wet from her climax, her pussy quivers and she arches her hips up for more. There is no pause as the doberwoman's canine tongue lashes you in return, lapping across your genderless crotch. Despite her recent release, the two of you are eager for more of one another and your tongues work hard at pleasuring your lover. While lacking loins for her to lick, the doggy's tongue still feels quite good, sending warm shivers through you. Subject to your eager tonguework, she's driven to a whining, whimpering climax that has a fresh rush of canine juices flowing over your tongue. Her rippling passage grips at your probing tongue as you work it in, out and across her inner walls until she's fully sated.";

to say goodAlexandrasex_lead-in:
	if graphics is true:
		project the figure of Alexandra_naked_smile_icon;
	say "     Once behind closed doors, you and Alexandra kiss passionately. Your hands run over one another, pushing aside gear and clothing in a rush to touch your lover. Exposing her brown-furred bosom, you bring your lips to a dark nipple and suck on it. The doberwoman gives a moan at this and quickly finishes the removal of her shirt while you work on her pants.";
	say "     Getting her belt and pants open, you slip a hand inside to rub first over and then under panties. Her folds are soaked with arousal, the scent of which has become much stronger in the air now that you've opened her slacks. Abandoning her nipple in favor of another kiss, you guide her back to the desk while lightly fingering her. She leans back on it while you help her pull off her pants and then slowly slip down her panties, leaving the lovely canine fully exposed.";

to say goodAlexandrasex1:
	if graphics is true:
		project the figure of Alexandra_naked_smile_icon;
	say "     Once the door is closed, the two of you lock lips in a passionate kiss. Your hands run over each other, caressing your lover even as you remove clothing and gear. Together, you move back to the large desk, leaving a trail of clothes behind. Arriving there nude, you push the lovely doberman down onto the desk and move atop her.";
	say "[goodalexandrasex00]";
	say "     Having satisfied one another, the two of you snuggle together, sharing a few more kisses while caressing one another. Eventually though, this private moment must come to a close. Getting dressed, the two of you exit the office and return to your duties.";

to say goodAlexandrasex2:
	say "[goodAlexandrasex_lead-in]";
	WaitLineBreak;
	say "     After running your hands down Alexandra's body one more time, you roll her over onto her front. With your hands on that toned ass of hers, you mount her from behind. Her stubby tail wags eagerly as you get in position and thrust into her. She moans in delight and barks as she's penetrated, her ass pushing back into it.";
	say "     You take easy, steady thrusts into the doberwoman's pussy and she rocks back into them in return. As her panting grows heavier, you pick up the pace and she matches your rhythm. The feel of her warm, wet tunnel around your [cock of player] cock is wonderful, every wiggle of her hips or shiver of delight resulting in a flutter of her inner walls around your thrusting member. Having settled into a good pace, you let your hands roam free again, stroking, petting and caressing the canine female you're pounding. She gives a particularly amusing whimper and tremble of her hips as you scritch the underside of her tail, resulting in her cunt squeezing around you with greater need.";
	WaitLineBreak;
	say "     As your mutual excitement grows, you can feel your arousal building towards its peak. Moving your hands to her thighs, you raise her legs to your hips and pound into her harder and faster. Sweet moans and whimpers of delight leave her muzzle as she grips the desk tightly, panting for you to cum in her. Not one to deny the canine beauty her desires, especially when that's just what you want to do, you drive your [cock size desc of player] cock into her and cum hard. Shot after shot of your [cum load size of player] load is pumped into her until [if cock width of player > 40]her belly is bloated overfull with your semen[else if cock width of player > 20]her belly is visibly rounded with your semen[else]you have no more to give, for now[end if]. Her orgasming pussy milks as much as it can [if cock width of player > 40]hold[else]get[end if] out of you.";
	say "     Having satisfied one another, the two of you snuggle together, sharing a few more kisses while caressing one another. Eventually though, this private moment must come to a close. Getting dressed, the two of you exit the office and return to your duties.";

to say goodAlexandrasex3:
	say "[goodAlexandrasex_lead-in]";
	WaitLineBreak;
	say "     With the tantalizing sight of her wet pussy before you, you get on your knees and bury your face between her legs. She shivers with delight as your tongue slides across her juicy folds. You start with light licks across her petals to warm her up, but soon you're on to kissing her clitoris and slithering your tongue into her vagina. This increasing stimulation has the canine femme panting with pleasure. Her ecstasy grows until finally peaking with a moaning orgasm. There is a fresh rush of her musky juices and her tunnel grips and squeezes around your tongue.";
	if player is not neuter:
		say "     Still panting from her orgasm, Alexandra releases a lustfully playful growl and moves you around and back. Now you're the one back against the desk and she's between your legs. She makes a show of sniffing your crotch like a dog before letting her long tongue slather across your loins.";
		WaitLineBreak;
		if player is male:
			say "     Soon licking is not enough for the horny hound and she takes your [cock of player] cock into her muzzle. She fellates you eagerly, her long canine tongue and muzzle feeling wonderful on your throbbing member. Between her tonguework and your built-up arousal from eating her out, it isn't much longer before it is your turn to cum. Alexandra slurps up [if cock width of player >= 25]as much of your [cum load size of player] load as she can manage[else]every last drop of your seed she can get[end if] with obvious relish, happy to please her partner.";
		else:
			say "     Soon licking is not enough for the horny hound and she wriggles that long tongue of hers into your cunny. She works her tongue in and out of you eagerly, delving into your depths with obvious relish. She gets your moaning and panting with how she works that tongue and her furry muzzle across and into your pussy and clit. Between her tonguework and your built-up arousal from eating her out, it isn't much longer before it is your turn to cum. Alexandra laps up your flowing juices, drinking down every drop she can get as you orgasm, happy to please her partner.";
		say "     Having satisfied one another, the two of you snuggle together, sharing a few more kisses (and thereby sharing the lingering traces of each others flavor with your partner). Eventually though, this private moment must come to a close. Getting dressed, the two of you exit the office and return to your duties.";
	else:
		say "     Still panting from her orgasm, Alexandra welcomes her loving partner into her arms for more kisses and snuggling. She strokes and caresses your [bodytype of player] body, soothing your unfocused arousal. Eventually though, this private moment must come to a close. Getting dressed, the two of you exit the office and return to your duties.";



Section 10 - Tasks and Hints

Part 0 - Setup

AT_Matt is a truth state that varies. AT_Matt is usually false.
AT_Mouse is a truth state that varies. AT_Mouse is usually false.
AT_Sandra is a truth state that varies. AT_Sandra is usually false.
AT_Snow is a truth state that varies. AT_Snow is usually false.
AT_Philip is a truth state that varies. AT_Philip is usually false.
AT_RLD is a truth state that varies. AT_RLD is usually false.
AT_Sven is a truth state that varies. AT_Sven is usually false.
AT_Marks is a truth state that varies. AT_Marks is usually false.
AT_Lisa is a truth state that varies. AT_Lisa is usually false.
AT_Diego is a truth state that varies. AT_Diego is usually false.
AT_Qytat is a truth state that varies. AT_Qytat is usually false.
AT_Sarah is a truth state that varies. AT_Sarah is usually false.
AT_Jimmy is a truth state that varies. AT_Jimmy is usually false.
AT_Paula is a truth state that varies. AT_Paula is usually false.
AT_Repair is a truth state that varies. AT_Repair is usually false.
AT_Stella is a truth state that varies. AT_Stella is usually false.
AT_Patrol is a truth state that varies. AT_Patrol is usually false.
no_AlexandraTask is a number that varies. no_AlexandraTask is usually 255.

to AlexandraTaskChat:
	let AlexandraTask be a list of numbers;
	if HP of doctor matt is 0 and AT_Matt is false, add 1 to AlexandraTask;
	if hospquest is 1 and AT_Mouse is false, add 2 to AlexandraTask;
	if Needy Rabbit Girl is unresolved and AT_Sandra is false, add 3 to AlexandraTask;
	if Hyper Squirrel Girl is unresolved and AT_Snow is false, add 4 to AlexandraTask;
	if Hungry Piggy is unresolved and AT_Philip is false, add 5 to AlexandraTask;
	if AT_RLD is false, add 6 to AlexandraTask;
	if Hidden Kitty is unresolved and AT_Sven is false and AT_RLD is true, add 7 to AlexandraTask;
	if Policeman is unresolved and AT_Marks is false and AT_RLD is true, add 8 to AlexandraTask; [***]
	if Mouse Taur is unresolved and AT_Lisa is false and AT_RLD is true, add 9 to AlexandraTask;
	if AT_Diego is false, add 10 to AlexandraTask;
	if Gryphon Guard is unresolved and AT_Qytat is false, add 11 to AlexandraTask;
	if Zoo Entrance is unknown, add 12 to AlexandraTask;
	if Husky Pack is unresolved and AT_Sarah is false, add 13 to AlexandraTask;
	if Eager Dal is unresolved and AT_Stella is false, add 14 to AlexandraTask;
	if AT_Jimmy is false and guy is not banned and HP of Alexandra >= 56:
		if HP of Jimmy is 0:
			add { 50, 50, 50, 50, 50, 50 } to AlexandraTask;
		else:
			add { 50, 50 } to AlexandraTask;
	if AT_Repair is false and HP of Alexandra >= 56 and policerepair is 0:
		add { 51, 51, 51, 51, 51 } to AlexandraTask;
	if HP of Jimmy > 2 and HP of Alexandra >= 56 and AT_Paula is false and guy is not banned and girl is not banned:
		add { 52, 52, 52, 52, 52 } to AlexandraTask;
	if HP of Alexandra >= 56:
		if AT_Patrol is false:
			add { 53, 53, 53 } to AlexandraTask;
		else if lastPolicePatrol - turns >= 8:
			add { 53 } to AlexandraTask;
	if HP of Alexandra is 58 or HP of Alexandra is 59 or HP of Alexandra is 60:
		add { 54, 54, 54, 54, 54 } to AlexandraTask;
	if HP of Alexandra is 61:
		add { 54, 54, 54 } to AlexandraTask;
	if HP of Alexandra is 63:
		add { 55, 55, 55, 55 } to AlexandraTask;
	else if HP of Alexandra is 64:
		add { 55, 55 } to AlexandraTask;
	if HP of Alexandra is 66:
		add { 56, 56, 56, 56, 56, 56, 56 } to AlexandraTask;
	if HP of Alexandra is 69:
		add { 57, 57 } to AlexandraTask;
	if AlexandraTask is empty:
		now no_AlexandraTask is turns;
		say "     'I don't really have any tasks for you to take care of at the moment. Thank you though,' she adds with an appreciative smile.";
	else:
		sort AlexandraTask in random order;
		if entry 1 of AlexandraTask is 1, say "[A_Task01]"; [Trevor Labs hint/directions]
		if entry 1 of AlexandraTask is 2, say "[A_Task02]"; [City Hospital hint/directions]
		if entry 1 of AlexandraTask is 3, say "[A_Task03]"; [Sandra hint]
		if entry 1 of AlexandraTask is 4, say "[A_Task04]"; [Snow hint]
		if entry 1 of AlexandraTask is 5, say "[A_Task05]"; [Philip hint]
		if entry 1 of AlexandraTask is 6, say "[A_Task06]"; [RLD warning/directions]
		if entry 1 of AlexandraTask is 7, say "[A_Task07]"; [Sven hint]
		if entry 1 of AlexandraTask is 8, say "[A_Task08]"; [Sgt Marks warning]
		if entry 1 of AlexandraTask is 9, say "[A_Task09]"; [Lisa hint]
		if entry 1 of AlexandraTask is 10, say "[A_Task10]"; [Diego warning]
		if entry 1 of AlexandraTask is 11, say "[A_Task11]"; [Qytat hint]
		if entry 1 of AlexandraTask is 12, say "[A_Task12]"; [Zoo warning/directions]
		if entry 1 of AlexandraTask is 13, say "[A_Task13]"; [Sarah hint]
		if entry 1 of AlexandraTask is 14, say "[A_Task14]"; [Stella hint]
		if entry 1 of AlexandraTask is 50, say "[A_Task50]"; [Police Quest 1 - Jimmy]
		if entry 1 of AlexandraTask is 51, say "[A_Task51]"; [Police Extra 1 - Repairs]
		if entry 1 of AlexandraTask is 52, say "[A_Task52]"; [Police Quest 2 - Med supplies/Paula]
		if entry 1 of AlexandraTask is 53, say "[A_Task53]"; [Police Extra 2 - Patrols]
		if entry 1 of AlexandraTask is 54, say "[A_Task54]"; [Police Quest 3 - Group Rescue]
		if entry 1 of AlexandraTask is 55, say "[A_Task55]"; [Police Quest 4 - Automatons 2]
		if entry 1 of AlexandraTask is 56, say "[A_Task56]"; [Police Extra 3 - The Map]
		if entry 1 of AlexandraTask is 57, say "[A_Task57]"; [Police Quest 5 - The Lair]


Part 1 - Hints (<50)

to say A_Task01:
	if debugactive is 1:
		say "DEBUG (Activated Task) -> Dr. Matt - AT_Matt <- DEBUG[line break]";
	say "     'There's a lab in the city that seems to still be active. They seem to know a fair bit about what's going on in the city, but they were really tight-lipped because I'm a cop. You might have better luck finding out what's going on. I'd like you to go there and check it out. Whatever they're doing, they probably need some help. You might be able to get some info if you go along with it.'";
	if Outside Trevor Labs is unknown:
		say "     She gives you some directions to the place, called Trevor Labs. You vaguely remember hearing about the place before the outbreak, but they didn't seem to be very public with the type of work they were doing. You'll have to remember to go check it out sometime.";
		now Outside Trevor Labs is known;
	now AT_Matt is true;
	now sextablerun is 0; [continued talking allowed]

to say A_Task02:
	if debugactive is 1:
		say "DEBUG (Activated Task) -> Dr. Mouse - AT_Mouse <- DEBUG[line break]";
	say "     'I spotted some activity on the upper level of the city hospital. Something's definitely going on there, though I can't really get in to find out what. I'd hoped my being a police officer would be able to convince them to let me in, but the orderlies just attacked. You might want to go check it out, but be careful of the creatures roaming the halls[if City Hospital is unknown]. Getting to the hospital can be a little tricky, but this path is fairly clear. I'd recommend you take the following route to get there..[end if].'";
	now City Hospital is known;
	now AT_Mouse is true;
	now sextablerun is 0; [continued talking allowed]

to say A_Task03:
	if debugactive is 1:
		say "DEBUG (Activated Task) -> Sandra - AT_Sandra <- DEBUG[line break]";
	say "     'I spotted a [bold type]rabbit girl[roman type] in the city. She didn't seem as far gone as some of the others, but when I tried to approach her, she ran off. You might want to keep your eyes open for her.'";
	now AT_Sandra is true;
	now sextablerun is 0; [continued talking allowed]

to say A_Task04:
	if debugactive is 1:
		say "DEBUG (Activated Task) -> Snow - AT_Snow <- DEBUG[line break]";
	say "     'While I was patrolling the city, I ended up getting followed around by a [bold type]squirrel girl[roman type] for a while. She followed me and seemed to be trying to get me to chase her, but I never managed to get her. You'll need to be fast and observant if you want to catch her.";
	now AT_Snow is true;
	now sextablerun is 0; [continued talking allowed]

to say A_Task05:
	if debugactive is 1:
		say "DEBUG (Activated Task) -> Philip - AT_Philip <- DEBUG[line break]";
	say "     'It's really disgusting what this infection is doing to some people. I came across a pig man wallowing in his own filth at one point. He was a stupid, lazy slob and only wanted to eat and lay around doing nothing. He reminded me of my father,' she says, a bit of a growl in her voice.";
	now AT_Philip is true;
	now sextablerun is 0; [continued talking allowed]

to say A_Task06:
	if debugactive is 1:
		say "DEBUG (Activated Task) -> RLD - AT_RLD <- DEBUG[line break]";
	say "     'There's some really over-sexualized creatures out there, many of them concentrated in the seedier part of town. Cock creatures, horny succubi, hookers, pimps and more. If you approach [if Entrance to the Red Light District is unknown]the area around the strip clubs and sex shops around these streets,' she says, outlining the area she's talking about, '[else]there, [end if]you need to be really careful or you could end up joining them as another sex slut roaming the red light district of town.' There's the faint scent of canine arousal as Alexandra talks to you about what she saw out there.";
	if Entrance to the Red Light District is unknown:
		say "You now know how to locate the Entrance to the Red Light District.";
		now Entrance to the Red Light District is known;
	now AT_RLD is true;
	now sextablerun is 0; [continued talking allowed]

to say A_Task07:
	if debugactive is 1:
		say "DEBUG (Activated Task) -> Sven - AT_Sven <- DEBUG[line break]";
	say "     'Now, I've already warned you about the red light district of town, but I did spot someone who might still be a survivor at the edge of the area. It looks like he had a bit of a run in with one of those snow leopards, but you should still keep your eyes open for that [bold type]hidden kitty[roman type] if you're poking around there.'";
	now AT_Sven is true;
	now sextablerun is 0; [continued talking allowed]

to say A_Task08:
	if debugactive is 1:
		say "DEBUG (Activated Task) -> Sgt Marks - AT_Marks <- DEBUG[line break]";
	say "     'While I was searching around in the high rise district, I ran into another cop. At first, I was really hopeful that we'd be able to work together and do more to help out, but he had other plans. I tried to restrain him, but we were pretty evenly matched and he eventually pulled out some tear gas. If you run into a [bold type]policeman[roman type] down there, don't trust that tiger cop. He may have been a cop once, but he certainly doesn't act that way anymore.'";
	now AT_Marks is true;
	now sextablerun is 0; [continued talking allowed]

to say A_Task09:
	if debugactive is 1:
		say "DEBUG (Activated Task) -> Lisa - AT_Lisa <- DEBUG[line break]";
	say "     'I ran into the rather... friendly... [bold type]mouse taur[roman type] while in the red light district. It seems she runs a [bold type]porn store[roman type] somewhere down there. I didn't go there myself, not wanting to risk being tempted, but it's probably safe enough if you want to look into it.'";
	now AT_Lisa is true;
	now sextablerun is 0; [continued talking allowed]

to say A_Task10:
	if debugactive is 1:
		say "DEBUG (Activated Task) -> Diego - AT_Diego <- DEBUG[line break]";
	say "     'As you might expect, there's quite a bit of activity at the city park with lots of animal infections cropping up. If you go there, there's also a coyote hanging around. He's quite the troublemaker and isn't to be trusted. He was really closemouthed about what he's been doing, but it's pretty clear he's been up to no good. I haven't caught him in the act yet, but I know he's harassing the soldiers and the other mutants, which is only going to make things worse for everyone in the long run.'";
	now AT_Diego is true;
	now sextablerun is 0; [continued talking allowed]

to say A_Task11:
	if debugactive is 1:
		say "DEBUG (Activated Task) -> Qytat a'th Lundrues - AT_Qytat <- DEBUG[line break]";
	say "     'I spotted one of those herm gryphons flying around carrying a banner. I'm not quite sure what that was all about, though I did notice her directing a few other gryphons to other spots. Since they were up on the roof, I couldn't make out where they were going. Just keep an eye out for a [bold type]guard gryphon[roman type] on top of buildings and see if you can find out what's going on with her.'";
	now AT_Qytat is true;
	now sextablerun is 0; [continued talking allowed]

to say A_Task12:
	if debugactive is 1:
		say "DEBUG (Activated Task) -> Zoo <- DEBUG[line break]";
	say "     'The zoo's become... well, a zoo. With all the wild animals that were there, we've got a lot of exotic and dangerous infections running around. I saw cheetahs, rhinos, tiger and wolf taurs, and even a giant zookeeper roaming around there, just to name a few. I expect our city's hyena problem started there as well. Be careful if you go poking around there, or you might become just another wild animal person stalking the grounds.'";
	now Zoo Entrance is known;
	now sextablerun is 0; [continued talking allowed]

to say A_Task13:
	if debugactive is 1:
		say "DEBUG (Activated Task) -> Sarah - AT_Sarah <- DEBUG[line break]";
	say "     'Those weak little huskies aren't much trouble on their own, but I've seen some of them roaming as a [bold type]husky pack[roman type]. They could be more trouble, sniffing out the few remaining survivors before the military can come in to rescue everyone. Be on the lookout for them, but be ready for a fight.'";
	now AT_Sarah is true;
	now sextablerun is 0; [continued talking allowed]

to say A_Task14:
	if debugactive is 1:
		say "DEBUG (Activated Task) -> Stella - AT_Stella <- DEBUG[line break]";
	say "     'There's several transformed people out there who're still fairly sane even if they're no longer human. For many of those transformed, it seems the infection's too much for them. But there may be some who're stable enough to stay sane even if they're no longer human. It's a bit hazy, but I recall coming across a rather forward dalmatian herm off in the red light district. She gave me some attitude when I tried to tell her to go home and wait for rescue, but she left peacefully enough. You should keep an eye out for that [bold type]eager dal[roman type], as she might still be sane.";
	now AT_Stella is true;
	now sextablerun is 0; [continued talking allowed]


Part 2 - Tasks (50+)

[ ---------- Task 50 - Automatons 1 / Jimmy ------------ ]

to say A_Task50:	[See Jimmy.i7x for event and NPC content]
	if debugactive is 1:
		say "DEBUG (Activated Task) -> Automatons 1 (Jimmy) - AT_Jimmy <- DEBUG[line break]";
	if HP of Jimmy is 0:
		say "     'Earlier, I'd tried tracking down some help from the government, but the area around the capitol building has been destroyed. We'd gotten a sketchy report that night of a volcanic eruption near the State Capitol Building, but we could hardly believe it. But when I went there looking for help after the outbreak, it turned out to be true. Thankfully, it wasn't a large eruption, but it was enough to burn down much of the immediate area. Strangely, the soot and ash in the air still lingers around that part of the city, but hasn't drifted elsewhere.' [if Approaching the Capitol Building is unknown]She informs you of a fairly safe route you can take to get into the area[else]She pauses for a moment, thinking about the odd behavior of the ash cloud there[end if].";
		say "     'Much of the remaining population in the area has been turned into automatons, metal-skinned people without minds or emotions past their programmed lusts. I wasn't able to discover much more before leaving the area, but I'd like you to go check it out and see if you can look into the [bold type]automaton activity[roman type] there. They seem to be up to something, but I wasn't able to figure it out. But be careful, the creatures in that part of the city are particularly strange and dangerous.'";
		now Approaching the Capitol Building is known;
		now Government Assistance is resolved;
		now Automaton Activity is active;
		now HP of Jimmy is 1;
	else if HP of Jimmy is 1:
		say "     'Have you had a chance to look into the [bold type]automaton activity[roman type] around the Capitol Building? Hopefully you'll have better luck at it than I did. I can smell that they're up to something,' adds says, tapping her muzzle.";
		now sextablerun is 0; [continued talking allowed]
	else if HP of Jimmy is 2:
		say "     Having told Alexandra about what happened with the automatons and the corgi, she's concerned for the little fellow. 'A small guy like that won't be able to stand up to the monsters roaming around there. You should go back there and look for him as soon as you get the chance.'";
		now sextablerun is 0; [continued talking allowed]
	else:
		say "     'Good work rescuing Jimmy from those automatons. He wouldn't have been able to get out of that situation without your timely assistance. He's great to have around; really helps with morale and keeping this place clean. He's always so helpful.";
		now sextablerun is 0; [continued talking allowed]
		now AT_Jimmy is true;


[ ---------- Task 51 - Police Station Twelve Repairs ------------ ]

to say A_Task51:
	if debugactive is 1:
		say "DEBUG (Activated Task) -> Police Repairs - policerepair / AT_Repair <- DEBUG[line break]";
	say "     'There's been quite a bit of damage done here that I'd like fixed up. I don't mean we need to rebuild the place, but we do need to block up the broken windows and stuff like that. If we're going to provide a safe place to stay for a while, we can't allow crazed mutants to sneak in to get at them. I managed to scrounge up some tools and hardware, but I need help doing the work. It's not something I really know much about. There's quite a bit to do, so just talk to me about doing some repairs whenever you're willing to help out.";
	now policerepair is 1;
[	now sextablerun is 0; [continued talking allowed]	]

policerepair is a number that varies.
lastpolicerepair is a number that varies. lastpolicerepair is usually 255.
pr_task01 is a truth state that varies. pr_task01 is usually false.
pr_task02 is a truth state that varies. pr_task02 is usually false.
pr_task03 is a truth state that varies. pr_task03 is usually false.
pr_task04 is a truth state that varies. pr_task04 is usually false.
pr_completion is a number that varies.

to say alexandra_repairs:
	if AT_Repair is true:
		say "You've done pretty much all you can.";
		now pr_task01 is true;
		now pr_task02 is true;
		now pr_task03 is true;
		now pr_task04 is true;
	else if HP of Alexandra < 56 or policerepair is 0:
		say "She hasn't mentioned anything about that yet.";
	else if lastpolicerepair is turns:
		say "You and Alexandra need at least a bit of a break before getting back to the repairs.";
	else if pr_task01 is false:
		let bonus be ( stamina of player minus 10 ) divided by 2;
		increase bonus by pr_completion;
		if PoliceStationTwelvePopulation > 16:
			increase bonus by 3;
		else if PoliceStationTwelvePopulation > 8:
			increase bonus by 2;
		let dice be a random number from 1 to 20;
		say "STAMINA - You roll 1d20([dice])+[bonus]: [dice + bonus]:[line break]";
		if bonus + dice > 12:
			if pr_completion is 0:
				say "     Offering to help Alexandra out with the repairs, you accompany her upstairs to check out the broken windows. There's quite a few of them to block up, so you set to work with her. Since you can't replace the windows, you're going to have to screw plywood to their frames. The worst part of it are those plywood sheets, you and the policewoman having to carry them up the stairs one by one[if PoliceStationTwelvePopulation > 16]. Jimmy's able to recruit a couple of the survivors to assist you both with this, making it easier[else if PoliceStationTwelvePopulation > 8]. Jimmy's able to recruit one of the resident survivors to assist you, making it a little easier[end if]. Partway through this sweaty work, you notice the Doberwoman's top's gotten quite damp with her sweat. Wishing her shirt was white, you still get a partial view of her breasts through the light blue material, especially the outline of those dark nipples of hers. The sight of them helps spur you on to keep going until the work is done. Once finished, you and Alexandra take a well-deserved break.";
				increase policerepair by 2;
			else:
				say "     Getting back to the task of boarding up the broken windows, [if PoliceStationTwelvePopulation > 8]you, Alexandra and couple of the others[else]you and Alexandra[end if] carry the remaining plywood sheets up the stairs and put them into place. Thankfully, you do get one perk from all this hard labor. The Doberwoman's top gets quite sweaty from all the heavy lifting. While you wish her shirt was white, you're still able to get a partial view of her breasts through the light blue material, especially the outline of those dark nipples of hers. The sight of them helps spur you on to keep going until the work is done. Once finished, you and Alexandra take a well-deserved break.";
				increase policerepair by 1;
			increase score by 10;
			now pr_task01 is true;
			now pr_completion is 0;
		else:
			if pr_completion is 0:
				say "     Offering to help Alexandra out with the repairs, you accompany her upstairs to check out the broken windows. There's quite a few of them to block up, so you set to work with her. Since you can't replace the windows, you're going to have to screw plywood to their frames. The worst part of it is the plywood sheets, you and the policewoman having to carry them up the stairs one by one[if PoliceStationTwelvePopulation > 16]. Jimmy's able to recruit a couple of the survivors to assist you both with this, making it easier[else if PoliceStationTwelvePopulation > 8]. Jimmy's able to recruit one of the resident survivors to assist you, making it a little easier[end if]. Carrying the plywood sheets up the stairs is tiring work and wears you down. You get some of the work done, but eventually have to stop and take a break. You'll need to get back to it later to finish the rest of them.";
				increase policerepair by 1;
			else:
				say "     Getting back to the task of boarding up the broken windows, [if PoliceStationTwelvePopulation > 8]you, Alexandra and couple of the others[else]you and Alexandra[end if] carry more plywood sheets up the stairs and put them into place. It's tough going and you're still not able to get it all done, but you've gotten closer to completion. You stop work to take a break, thankful at least that you're making progress.";
			increase score by 1;
			increase pr_completion by 2 + ( bonus + dice ) / 5;
	else if pr_task02 is false:
		let bonus be ( strength of player minus 10 ) divided by 2;
		increase bonus by pr_completion;
		if PoliceStationTwelvePopulation > 16:
			increase bonus by 3;
		else if PoliceStationTwelvePopulation > 8:
			increase bonus by 2;
		let dice be a random number from 1 to 20;
		say "STRENGTH - You roll 1d20([dice])+[bonus]: [dice + bonus]:[line break]";
		if bonus + dice > 12:
			if pr_completion is 0:
				say "     Offering to help Alexandra with further securing the building, the two of you go around barricading the other doors[if PoliceStationTwelvePopulation > 16] with the help of a couple of the stronger residents[else if PoliceStationTwelvePopulation > 8] with one of the other resident survivors[end if]. You have to go around the offices, finding desks and filing cabinets and so forth to move in front of them. You do make it a point to set up one barricade that's fairly easy to tear down from the inside in case of emergency. It's a lot of hard work, but you and Alexandra have some fun laughing at some of the odd trinkets and junk you find on the desks. While it's bittersweet for her to be reminded that her fellow officers are gone, reminiscing about them does help her with the grieving process. As an added bonus, you do find some hidden snacks buried in some of the desks as well, some of which you share with her while taking a break.";
				PlayerEat 6;
				increase carried of chips by 1;
				increase policerepair by 2;
			else:
				say "     Returning to barricading the other exits from the building, you and Alexandra drag around more heavy furniture to block them[if PoliceStationTwelvePopulation > 16] with the help of a couple of the stronger residents[else if PoliceStationTwelvePopulation > 8] with one of the other resident survivors[end if]. You do make it a point to set up one barricade that's fairly easy to tear down from the inside in case of emergency. It's a lot of hard work, but you and Alexandra have some fun laughing at some of the odd trinkets and junk you find on the desks. While it's bittersweet for her to be reminded that her fellow officers are gone, reminiscing about them does help her with the grieving process. As an added bonus, you do find some hidden snacks buried in some of the desks as well.";
				PlayerEat 6;
				increase carried of chips by 1;
				increase policerepair by 1;
			increase score by 10;
			now pr_task02 is true;
			now pr_completion is 0;
		else:
			if pr_completion is 0:
				say "     Offering to help Alexandra with further securing the building, the two of you [if PoliceStationTwelvePopulation > 16]enlist the help of a couple of the stronger residents and [else if PoliceStationTwelvePopulation > 8]enlist the help of one of the other resident survivors and[end if]go around barricading the other doors. You have to go around the offices, finding desks and filing cabinets and so forth to move in front of them. The two of you do as much of this back-breaking labor as you're able to take before finally having to stop and take a break to recover.";
				increase policerepair by 1;
			else:
				say "     Returning to barricading the other exits from the building, you and Alexandra [if PoliceStationTwelvePopulation > 16]enlist the help of a couple of the stronger residents and the four of you [else if PoliceStationTwelvePopulation > 8]enlist the help of one of the other resident survivors and the three of you [end if]drag around more heavy furniture to block them. You make more headway, but eventually have to stop again to rest your weary muscles. Thankfully, you've made more progress and are getting closer to finishing this task.";
			increase score by 1;
			increase pr_completion by 2 + ( bonus + dice ) / 5;
	else if pr_task03 is false:
		let bonus be ( dexterity of player minus 10 ) divided by 2;
		let dice be a random number from 1 to 20;
		say "DEXTERITY - You roll 1d20([dice])+[bonus]: [dice + bonus]:[line break]";
		if bonus + dice > 12:
			say "     Suggesting that the two of you get back to work on the building, you head off to take care of a bunch of other repairs and maintenance issues. At this point, it's more to make the place more livable rather than for security. You work away with her for a few hours, doing what you can here and there to help out. Catching sight of that cute ass in those tight pants of hers, you make sure to give her some tasks that have her bending over or kneeling down so you can look it over. And from the little grin on her muzzle and the wag of her tail, it seems she's caught onto your ploy. She makes no objection and you even catch a whiff of canine arousal coming from the policewoman the next time she's on her knees to do something.";
			increase score by 10;
		else:
			say "     Suggesting that the two of you get back to work on the building, you head off to take care of a bunch of other repairs and maintenance issues. At this point, it's more to make the place more livable rather than for security. You work away with her for a few hours, doing what you can here and there to help out. Catching sight of that cute ass in those tight pants of hers, you make sure to give her some tasks that have her bending over or kneeling down so you can look it over. And from the little grin on her muzzle and the wag of her tail, it seems she's caught onto your ploy. She makes no objection and you even catch a whiff of canine arousal coming from the policewoman the next time she's on her knees to do something. Unfortunately, this distracts you and you end up banging yourself with a hammer, scraping yourself with a knife and give yourself a few other minor injuries over the course of your repairs.";
			decrease HP of player by 8 + ( level of player / 4 );
			increase score by 5;
		if HP of Jimmy > 3:
			say "     Jimmy brings in drinks for you both at one point. 'Thanks so much for helping out with all this[if PoliceStationTwelvePopulation > 0]. The other residents all appreciate the hard work you two've been putting in lately[end if]. You two are doing a super job,' the chipper corgi says. 'You deserve something special for all your hard work. Can I interest either of you in a quick pick-me-up?' he adds with a wink, tail wagging excitedly. Still smelling Alexandra's arousal, she seems briefly tempted, but regains her composure and declines. She states that it'd be fine by her if you want to take Jimmy's offer";
			if player is neuter:
				say ". Lacking any genitals for the corgi to play with, you're forced to decline as well. The little guy seems briefly disappointed, but perks back up soon enough.";
			else:
				say ". Shall you do so?";
				if player consents:
					if player is male and anallevel > 1:
						say "     Deciding to take his offer quite literally, you pick up the little guy into your arms. As you kiss the cute corgi, Alexandra politely excuses herself until you two are done. Kneading his ass with one hand, you guide your cock under his tail with the other. The little guy moans softly and his tail wags excitedly. Easing him down slowly, you let your [cock of player] cock pop into his tight tailhole[if cock length of player > 15]. Due to your size, you have to go quite slow at first and never manage to bury yourself fully into him, but that doesn't stop either of you from enjoying it[else if cock length of player > 7]. Due to your size, you have to take it slow at first, but eventually you're able to bury yourself fully into him, much to your mutual enjoyment[else]. Your [cock size desc of player] shaft slips fairly easily into his tight little buns and soon you're buried fully into him, much to your mutual enjoyment[end if].";
						say "     You bounce the cute fellow easily up and down your cock. He pants and moans as you fuck his ass. His own canine cock throbs against your belly, the six-inch red rod spurting precum onto it with every press of your penis against his prostate. As his excitement builds, his knot swells up and soon he's spurting dog cum across the both of you with a cry of ecstasy. Feeling him clamp down around your shaft, you push deep into him one last time and cum, pumping your [cum load size of player] load into the happy doggy.";
						say "     Easing him off your shaft and setting him back down, he has to clutch your leg for support. 'Oh wow! I mean... I'd never... that was awesome. I wish I knew how great that felt; I'd have been doing that for years had I known.' Taking a seat on the floor, you cuddle the cute guy, wiping up the mess you've made with a [if cock width of player >= 12]few rags[else]rag[end if]. After a few more kisses, you let Alexandra know you're ready to get back to work.";
						now HP of Jimmy is 5;
						increase score by 5;
					else:
						say "[Jimmysex01]";
				else:
					say "     The cute corgi's a little disappointed at your response, but nods. 'Sorry, I don't mean to distract you from your work. We can just talk while you get back to it,' he says cheerfully.";
			say "     Jimmy sticks around to help you two out, mainly by passing you any tools and hardware you might need. The three of you talk while working, enjoying each other's company. The cute corgi, when he catches onto your little game with Alexandra doing all the floor level work, grins and gives you a playful elbow to the thigh. He joins you in taking in the fine view of the doberwoman's tight buns. Knowing she's being watched by her two friends, the scent of her arousal returns. The three of you are in fine spirits by the time you finish everything up, though you and Alexandra are rather worn out from all your hard work.";
			PlayerDrink 6;
		else:
			say "     The two of you talk while working, enjoying each other's company. You can't help but notice that Alexandra's lightened up quite a bit since you'd first met her. Letting the conversation drift towards how sex has gotten quite prevalent, you try to see how she feels about the matter. She starts to respond, then realizes what you're asking and gives you a narrow look. Trying to look innocent, she harrumphes and gets back to work. Though from the way she gives her ass a wiggle and the increase in the scent of her arousal, you can tell she's not as upset about it as she's letting on. The two of you finish up the work in fine spirits, but are both rather worn out.";
		say "     As you're putting away the tools, Alexandra comes up to you. 'You've been a big help here. I wouldn't have been able to handle all of this on my own. Here, how about you take this?' she says, offering you one of the carpentry hammers from the tool set. 'This might come in handy and would make for a pretty good weapon in a pinch. I think I can trust you not to kill anyone with this, so you can use it to defend yourself against those mutants. They heal pretty quick, so they should survive as long as you don't go overboard.'";
		say "     You have gained a [bold type]claw hammer[roman type]. When all you have is a hammer, every mutant looks like a nail.";
		increase carried of claw hammer by 1;
		increase score by 10;
		increase policerepair by 1;
		now pr_task03 is true;
	else if pr_task04 is false:
		let bonus be ( perception of player minus 10 ) divided by 2;
		let dice be a random number from 1 to 20;
		say "PERCEPTION - You roll 1d20([dice])+[bonus]: [dice + bonus]:[line break]";
		if bonus + dice > 12:
			say "     You go around the police station, looking for any more work that needs to be done. You find the occasional thing to take care of, but most of the stuff that still needs to be done at this point is beyond the limited capabilities of you and your supplies. You do deal with a few more odds and ends, and it looks at first like you've done a very thorough job.";
			say "     You do come across a door in the service area that you'd not noticed before because it's partially obscured behind some cardboard boxes and a whiteboard. Investigating further, you discover it opens onto a small hallway with a janitor's closet and a service door to the outside. This steel door's in rough shape, having gotten quite bent and no longer closing properly.";
			if intelligence of player > 15:
				say "     Looking at the damaged door, you realize it'd take quite a bit of work to get it bent back into shape and properly reseated. You're about to go grab the tools you'll need for this when you realize a far better solution. After taking some quick measurements, you unscrew the first door you'd found and, with Alexandra's help, get it mounted in place of the exterior door. Adding the door hardware, you're able to get his door to close and lock properly. A few heavy objects are added as a further barricade and this potential back entrance is fully secured. Work smarter, not harder.";
				increase policerepair by 3;
			else:
				let bonus be ( strength of player minus 10 ) divided by 2;
				let dice be a random number from 1 to 20;
				if PoliceStationTwelvePopulation > 16:
					increase bonus by 3;
				else if PoliceStationTwelvePopulation > 8:
					increase bonus by 2;
				say "STRENGTH - You roll 1d20([dice])+[bonus]: [dice + bonus]:[line break]";
				if bonus + dice > 12:
					say "     You have to go back and get some bigger tools to deal wit the damaged door. Telling Alexandra about the problem, she [if PoliceStationTwelvePopulation > 16]and a couple of the stronger residents joins[else if PoliceStationTwelvePopulation > 8]and one of the other resident survivors join[else]joins[end if] you in trying to deal with it. You do your best to try and pound the door back into shape, but it's very hard work. By the time you're done, your muscles ache, but you're able to pretty much undo the warp in it, getting it straight enough to close nicely and latch tight. It doesn't look very pretty, but it works well enough. A few heavy objects are added as a further barricade and this potential back entrance feels more secure. Great work.";
					say "     Alexandra seems pleased as well, thanking you with a big hug that has her paws squeeze your rear. Upon realizing this, she jumps back and blushes brightly at her nose and ears before regaining her composure.";
					increase policerepair by 2;
				else:
					say "     You have to go back and get some bigger tools to deal with the damaged door. Telling Alexandra about the problem, she [if PoliceStationTwelvePopulation > 16]and a couple of the stronger residents joins[else if PoliceStationTwelvePopulation > 8]and one of the other resident survivors join[else]joins[end if] you in trying to deal with it. You do your best to try and pound the door back into shape, but it's very hard work. You are able to substantially undo the warp in it, getting it straight enough to partially close and to latch. It's still in bad shape and you can see outside through the top and bottom corner, but at least it's not hanging open. A few heavy objects are added as a further barricade and this potential back entrance feels more secure. Good going.";
					say "     Alexandra seems pleased as well, thanking you with a big hug that ends up putting her paws on your rear. Upon realizing this, she jumps back and blushes brightly at her nose and ears before regaining her composure.";
					increase policerepair by 1;
			now pr_task04 is true;
		else:
			say "     You go around the police station, looking for any more work that needs to be done. You find the occasional thing to take care of, but most of the stuff that still needs to be done is beyond the limited capabilities of you and your supplies. You do deal with a few more odds and ends, but it looks like you've done a very thorough job. The place certainly isn't in great shape, but it looks a little better than before and seems quite secure thanks to your hard work. Alexandra seems pleased as well, thanking you with a quick hug before regaining her composure.";
		say "     'Ahem. Sorry about that. You've just been such a good friend. Thanks again for all your help.' She straightens her shirt and heads off quickly, claiming she needs to do some rounds. The scent of canine arousal lingers for a little while even after her departure.";
		increase score by policerepair * 3;
		now pr_task04 is true;
		now AT_Repair is true;
	follow the turnpass rule;
	now lastpolicerepair is turns;


Table of Game Objects (continued)
name	desc	weight	object
"claw hammer"	"A carpentry hammer with a strong head and a clawed back."	3	claw hammer

claw hammer is an armament. It is part of the player. It has a weapon "[one of]your hammer[or]your claw hammer[or]your carpenter's hammer[or]the hammer[or]the claw hammer[at random]". The weapon damage of claw hammer is 6. The weapon type of claw hammer is "Melee". It is not temporary.

the scent of the claw hammer is "The sturdy hammer smells of metal and sweat.".


[ ---------- Task 52 - Medical Supplies / Paula ------------ ]

to say A_Task52:
	say "[alexandra_supplies]"; [moved to be a new stage of Supplies]


[ ---------- Task 53 - Patrols ------------ ]

at_patrol_01 is a truth state that varies. at_patrol_01 is usually true.

to say A_Task53:	[Patrols]
	if debugactive is 1:
		say "DEBUG (Activated Task) -> Patrol - AT_Patrol <- DEBUG[line break]";
	say "[alexandra_patrol]";
	now AT_Patrol is true; [opens talk option for 'Patrol']

to say alexandra_patrol:
	say "     'Actually, I was thinking it was about time to go on patrol again. I don't want any sex-crazed mutants getting too comfortable coming near here, [if PoliceStationTwelvePopulation > 0 or ( the number of policed people + the number of lockered people > 6 )]especially now that we've got several survivors living here[else]especially once more survivors start hearing about this place and showing up[end if]. While it'd certainly be safer for both of us to go together,' she says, her stubby tail wagging a little at the prospect, 'there shouldn't be any real problem. One of us should stay here on guard. Did you want to patrol around the area?";
	now fightoutcome is 100;
	if player consents:
		now inasituation is true;
		say "     Alexandra wishes you good luck. 'I'll see you when you get back,' she says. You head out in the neighboring city and wander the area surrounding the station on the lookout for trouble";
		if HP of Alexandra >= 63 and a random chance of 1 in 3 succeeds and at_patrol_01 is false:
			say ". Things are fairly quiet at first until you hear a shriek nearby.";
			say "     Approaching quickly and cautiously, you find a mostly untransformed woman being assaulted by a harpy. The bird-woman is painfully yanking on her victim's hair as she tries to carry her off[if weapon object of player is journal]. Raising your fists[else]. Readying your weapon[end if], you rush at the mythological creature with a yell. The monster gives another shriek and roughly drops the woman onto the ground. She yelps and crawls away from the ensuing fight.";
			challenge "Harpy";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     With your victory, you drive off the crazy harpy. Finding her would-be victim crouched in a nearby doorway, you reassure her that she's safe now. As you lead her back to the police station, she tells you that she'd heard about the police shelter from a mutant friend of hers. With things getting worse in her neighborhood, she took the risk of trekking here. Thankfully, you arrived in time to help her make it the rest of the way.";
				say "     Upon your return, you're greeted by Alexandra, Jimmy and the others. She's introduced and everyone is happy to hear the woman's story and of your daring rescue";
				if HP of Alexandra >= 66:
					say ". Alexandra gives you a big kiss as a special reward along with a whispered invite to come see her in the office soon.";
					now lastfuck of Alexandra is turns + 8;
				else:
					say ". Alexandra personally congratulates you on the timely rescue, which is then followed by a kiss from the woman you saved.";
				increase PoliceStationTwelvePopulation by 1;
			else if fightoutcome >= 20 and fightoutcome <= 29:
				say "     Beaten, you are forced to withdraw as the harpy turns her attention back to her original victim. The woman tries to shrink further into the doorway she's crouched in, but the creature grabs her and, after some struggling, flies off with her.";
				say "     After recovering from your loss, you stagger your way back to the station and fill Alexandra in on your encounter. Sparing her some of the messier details, you warn her to keep an eye out for harpies the next time she goes out. She's upset that a potential survivor had almost made it to safety to only be caught and carried off.";
			else:
				say "     Making your escape from the creature, you unfortunately end up leaving her original victim to face her wrath. The woman tries to shrink further into the doorway she's crouched in, but the creature grabs her and, after some struggling, flies off with her.";
				say "     After taking a circuitous route back to the station, you fill Alexandra in on your encounter. You warn her to keep an eye out for harpies trying to pick off approaching survivors. You're both upset that someone had almost made it to safety to only be caught and carried off like that.";
			now at_patrol_01 is true;
		else if HP of Alexandra is 68 and a random chance of 1 in 4 succeeds:
			say ". The patrol is uneventful at first, but a side-street near the edge of your route leads to trouble.";
			say "     You encounter another Automaton walking through the area. You observe it go down one street, then turn down another. It wanders into a [one of]burned-out home[or]damaged store[or]parking lot[at random] only to exit again after a brief circuit around it. It chooses a new direction, seemingly at random.";
			say "     The robotic humanoid doesn't seem to be going toward the police station, but having it in the area is disconcerting. You decide you have to try and drive it off or somehow lead it away. Rather than taking cover the next time it turns in your direction, you step out into the open and move to confront it.";
			challenge "Automaton";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     Having incapacitated the automaton, you drag it as far out of the neighborhood as you can before it recovers. Having spotted another in the area, there's little chance it is coincidental and the automatons are indeed spreading further afield. You inform Alexandra and the others of your recent encounter, which makes them edgy. The canine cop urges you to go check out the [bold type]Microchip Factory[roman type] so you can find out what's going on.";
			else if fightoutcome >= 20 and fightoutcome <= 29:
				say "     After being assaulted by the automaton, you can only watch as it wanders away in some new direction. Thankfully it seems to be heading away from the station when it makes its next turn. Having spotted another in the area, there's little chance it is coincidental and the automatons are indeed spreading further afield. You inform Alexandra and the others of your recent encounter, which makes them edgy. The canine cop urges you to go check out the [bold type]Microchip Factory[roman type] so you can find out what's going on.";
			else:
				say "     With the automaton focused on you with its robotic gaze, you lead it as far away from the area as you safely can before losing it entirely. As you make your way back by a different route, you ponder the encounter. Having spotted another in the area, there's little chance it is coincidental and the automatons are indeed spreading further afield. You inform Alexandra and the others of your recent encounter, which makes them edgy. The canine cop urges you to go check out the [bold type]Microchip Factory[roman type] so you can find out what's going on.";
		else if a random chance of 3 in 5 succeeds:
			say ". You end up coming across a mutant getting a little too curious about the Police Station for your liking. Going over to check it out, your suspicions are confirmed when the aggressive creature notices you and advances.";
			now battleground is "Outside";
			fight;
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     Your battle over, you complete your patrol and return to the police station. You fill Alexandra in on your encounter and she thanks you for dealing with the creature and for taking a turn on patrol for her.";
			else if fightoutcome >= 20 and fightoutcome <= 29:
				say "     After you recover from your loss, you stagger your way back to the station and fill Alexandra in on your encounter. Sparing her some of the messier details, you warn her to keep an eye out for the creature the next time she goes out. She thanks you for going out and facing that threat to help protect the station house.";
			else:
				say "     Making your escape from the creature, you do your best to draw it away from the station before losing it. Once you've managed that, you sneak back around and return to the police station. You fill Alexandra in on your encounter and tell her to keep an eye out for the creature the next time she goes out. She thanks you for going out and facing that threat to help protect the station house.";
		else:
			say ". The trip is thankfully uneventful, most of the mutants knowing to steer clear of what they see as the Doberman cop's territory. You patrol for a few hours before eventually returning. Alexandra thanks you again for taking a turn on patrol for her.";
		now inasituation is false;
		follow the turnpass rule;
	else:
		say "     Alexandra nods and grabs her nightstick and thermos, getting ready to go out. 'Alright. I'll be back in a while.' You nod to her and watch her head out. She returns some time later, [one of]a little scruffy from a fight[or]none the worse for wear[or]a little dirty, but otherwise fine[or]safe and sound[or]nursing a sore shoulder[at random].";
	now lastPolicePatrol is turns;
	now AT_Patrol is true;
	if fightoutcome >= 20 and fightoutcome < 100, decrease lastPolicePatrol by 8; [player lost/fled = added delay before asked to patrol again]


[ ---------- Task 54 - Survivor Group Rescue ------------ ]

to say A_Task54:	[Group Rescue]
	if debugactive is 1:
		say "DEBUG (Activated Task) -> Survivor Group Rescue <- DEBUG[line break]";
	if HP of Alexandra < 61:
		say "     'A neighborhood of the city's been overrun by woodlands that's suddenly sprung up. Lots of trees have sprung up, many growing through the pavement or buildings. And if that wasn't bad enough, some of those trees seem to be moving around. Since there was still a lot of the city to patrol in search of survivors, I didn't explore inside it. I'd like you to try checking it out though. There could still be a [bold type]survivor[roman type] hiding out in that creepy [bold type]urban forest[roman type][if Urban Forest is unknown].' Alexandra describes where she came across this forest and the rough outline of the blocks its spread across. You'll be able to make your way to its edge now easily enough[else].' You tell Alexandra that you've encountered this forest before and reassure her that you'll go check it out when you get the opportunity[end if].";
		now Urban Forest is known;
		now HP of Alexandra is 61;
		now Survivor Group is active;
	else:
		say "     'Have you had a chance to go through that strange forest? Given the extent of it, it's possible you might find a [bold type]survivor[roman type] in there[if HP of Alexandra is 62]. Not wanting to get her hopes up too high, you let her know you're following some leads. Having been reminded, you start thinking about going back again. Perhaps you'll be able to convince at least a few of them to come with you[end if].";
		now sextablerun is 0; [continued talking allowed]


Survivor Group is a situation. Survivor Group is inactive.
The sarea of Survivor Group is "Forest".
sgtimer is a number that varies. sgtimer is usually 255.

Instead of resolving a Survivor Group:
	if HP of Alexandra is 61:
		say "     While traveling through the forest, you follow the broken paths of streets, sidewalks and buildings torn up by the trees. Reminded of Alexandra's request that you look around for potential survivors, you keep an eye on the scenery for any place which might make a good place to hide as you work your way deeper into the bizarre woods.";
		let the bonus be (( the perception of the player minus 10 ) divided by 2);
		let the dice be a random number from 1 to 20;
		if "Wary Watcher" is listed in feats of player:
			increase bonus by 2;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 12: ";
		if dice plus bonus > 11:
			say "Focused as you are on the ruins, you almost miss some movement among the trees. Spotting the feral creature early, you move off the path, weaving further into the trees to hide from it. At first, your intent is just to get some space between you and it before getting noticed, but eventually you end up on partially intact parking lot. And while the trees are dense around it, there's a bit of a glade formed here with only a few trees tearing up the pavement.";
			say "     Seeing the shape of a building at the other end of the lot through the scattered trees, you head towards it. Partway there, you start to make it out as a bingo hall. By your guess, it's a fair-sized hall as far as such places go - probably able to hold a couple of hundred elderly players dabbing away on their cards. It has a rather plain exterior of white aluminum siding and no windows beyond those near the entrance. The place does seem intact and, while by no means your first choice for a place to stay during the apocalypse, it certainly wouldn't draw much interest from other creatures either.";
			WaitLineBreak;
			say "     Deciding to give it a shot, you approach closer - only to be stopped short about ten meters from the door as a mostly-human guard with a spear pops out, eyeing you warily. Part lupine, he gives a soft growl as he sniffs the air. Thankfully, he's fairly approachable once you introduce yourself and give him some reassurance that you're still sane. He calls for a couple of others, also partially infected with other strains, to lead you inside. Once beyond the entrance area, you find that the place has been turned into crude hideout for about something over two dozen survivors. Some are even still human, at least at first glance. 'Bingo!' you can't help but say to yourself.";
			say "     You're escorted to the man in charge... well, as close as this place gets to that, it seems. Sitting at the bingo caller's chair is a fluffy female hamster who gets introduced as [']William[']. On the floor beside her is a mound of used bingo cards like some nest or newspaper mat for the pudgy rodent. Despite there being no game on at the moment, she's idly spinning the ball mixer when you're led up to her. The other residents of the bingo hall crowd around, eager to meet this newcomer and get any news of what's going on.";
			WaitLineBreak;
			say "     You talk to this ragtag collection of survivors, learning how William had found this place intact and led several others there during the early days of the outbreak. The forest had spread very quickly, most of it springing up during the first few hours. Some of them had even seen people being grabbed by the trees and turned into fresh saplings themselves. The bingo hall, closed and empty that night, probably remained unscathed because of that. They do inform you that the trees have been slowly edging closer. They're not sure if it's new trees spouting up or those already there moving in when unobserved.";
			say "     While the bingo hall's concession stand was stocked with snacks and drinks, those are pretty much gone by this point. They've sent off scavenging parties, but it's getting harder and they've got to go further to find safe supplies each time they go out. The wolves of the forest have also been spotted hunting nearer to the parking lot glade, adding to their worries. While you'd been figuring on coming across a handful at most, this group of about thirty is going to be more than you'd anticipated dealing with at once. But with their condition deteriorating, you're hopeful that you'll be able to convince them to follow you back to the security of the police station.";
			WaitLineBreak;
			let the bonus be (( the charisma of the player minus 10 ) divided by 2);
			let the dice be a random number from 1 to 20;
			let humanlikebonus be false;
			if 2 is listed in bookcollection, increase bonus by 2;
			if the player is facially human and the player is skintone human and the tail of the player is "" and breast size of player <= 6 and cock length of player <= 18 and cock width of player <= 12 and breasts of player <= 2: [The player appears human to casual scrutiny and does not have hugely oversized junk that cannot be hidden.]
				increase bonus by 2;
				now humanlikebonus is true;
			say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 14: ";
			if dice plus bonus > 13:
				say "You try to convince to their hamster leader of the wisdom of leaving, but you notice pretty quickly how uninterested she is in the prospect and instead turn your focus onto the rest of the survivors. You do your best to describe how the police station's both safer and better equipped to house them, pointing out the scattered blankets they have on the floors. You add that there's a tough policewoman protecting the place[if Paula is lockered], a nurse to treat the wounded[end if] and even a volunteer janitor working to keep the place clean. A motion to the piles of bingo cards, chip wrappers and pop cans gives weight to even the latter[if humanlikebonus is true]. Your generally human appearance also helps allay their concerns about the risks involved in venturing outdoors[end if].";
				say "     With the crowd's opinion turning towards you, you hear the hamster roused by all the commotion. She starts to bring up the danger of such a trek, but you cut her off[if 2 is listed in bookcollection] with a quick joke[end if]. Yes, you admit that there will be risk, but you then shift the focus to the encroaching dangers already around them, playing up how the trees and the wolves are getting closer and how they'll be sniffing at their door soon if they don't leave right now. With the crowd sufficiently stirred up, you put it down to either going with you and having a chance to make it or staying here and playing bingo until the trees break in or the Big Bad Wolf blows down their door and rapes them all. The prospect of another game of bingo seems to be the final straw, many of the group rushing off to gather their stuff and the others pushing their indolent leader into motion despite herself.";
				WaitLineBreak;
				now PoliceStationTwelvePopulation is 30;
				now PoliceStationTwelveInfpop is 21;
				say "[survivorgrouptrek]";
			else:
				say "You try to convince their hamster leader of the wisdom of leaving. You do your best to describe how the police station's both safer and better equipped to house them. At first, it seems like you're making some headway, some of the crowd around you sounding interested, though others are much more doubtful. Their leader seems only half-interested in what you're saying, idly spinning the bingo mixer like a hamster wheel. You start to even have doubts as to just how much they're even listening to you, to the point that you're starting to lose your temper as you continue trying to get through to them. Feeling the crowd's opinion slipping further, you make one last attempt to convince the fuzzball, but she only responds that they're better off here than going on a crazy trek through the forest and the city to get to some place that they don't even know exists. To go outside would expose them all to the wolves and other sex-crazed monsters. This takes the wind out of the sails of your supporters, now fearful of the wolves getting them. With their leader's decision given, the group decides to continue toughing it out here where they are at least still safe.";
				now HP of Alexandra is 62;
		else:
			say "Focused as you are on the ruins, you fail to notice some rustling among the trees until it is too late. By the time you do spot it, the creature is moving in to attack you, derailing your search.";
			fight;
	else if HP of Alexandra is 62:
		say "     Successfully navigating the confusing forest paths, you're pretty sure you're getting close to that survivor group you met earlier. Drawing nearer, you notice the area is more active with monsters than before, necessitating greater caution. Despite your attempts to stay hidden, you're beset by one of the woodland creatures.";
		fight;
		say "     With the creature defeated, sated or driven off, you feel it's safe to approach the bingo hall. This time, there's a trio of guards at the door. They, like everyone inside, are very glad to see you again. It seems things have gotten worse since your previous visit, with the creatures and animated trees drawing ever closer. More scavenger teams have gone missing and a few guards have been lost.";
		say "     While you're still getting this news, many of the residents have rushed off to pack. A few of the same naysayers pester you for reassurances about the trek and the conditions at the station. William, hearing all the commotion, comes over to regain control. The plump hamster urges everyone to calm down and begins talking about how they'd pulled through during hard times before and not to abandon the safe haven that's protected them for so long. But just as it seems she might convince them to stay behind again, she makes a fatal error - she suggests a friendly game of bingo to help everyone relax. This results in an angry outcry from everyone at the prospect of even one more game. All objections and concerns about the dangerous trip are forgotten as everyone rushes to get mobilized - preferring even death over bingo at this point.";
		WaitLineBreak;
		now PoliceStationTwelvePopulation is 25;
		now PoliceStationTwelveInfpop is 17;
		say "[survivorgrouptrek]";
	else if HP of Alexandra > 62:		[return for stragglers]
		say "     Making a return trip to the bingo hall, you find that conditions in the area have deteriorated further. There's increasing tree encroachment onto the parking lot, bringing with them more creature activity. There are some wolves a couple hundred feet away, clearly watching the hall with dark intent. This tells you two things: there's likely someone in there and the wolves are waiting for their chance to get them. Doing your best to avoid notice as long as you can, you make your way closer, only coming into view as you approach the entrance.";
		say "     Once inside, your greeting by the trio there is a happy but brief one. One of them had managed to escape the wolves with only some mild lupine features and the other two are long-awaited scavengers showing more significant symptoms of other strains. Between the note and the news from the one unable to complete the original journey, they've remained packed and ready to go at a moment's notice, especially with the wolves drawing nearer.";
		WaitLineBreak;
		say "     And it seems they can't wait to depart any longer. From the howls outside, it is clear your arrival has been reported and the wolves are on the move. Again, you take the lead, running interference for the others as the wolves on watch charge the door.";
		challenge "Feral Wolf";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     With one wolf dispatched, there's hesitation from the others. Raising your [if weapon object of player is journal]fists[else]weapon[end if], they are kept at bay until a voice among them spurs them on. 'It's just one guard, you foolish pups, and [if player is female]she's[else]he's[end if] already worn down. Get [if player is female]her[else]him[end if] and those inside will be yours,' she says. This prompts them to draw closer, an emboldened one moving in to get you.";
			challenge "Feral Wolf";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     As the fight turns in your favor, the remaining wolves slink back until they flee when you're victorious over a second packmate. All except one, that is. A pudgy wolf-hamster hybrid pushes past you in the confusion with a wild laugh. But rather than go after the others, she rushes the stage. Grabbing the bingo mixer, she giggles madly. 'Yes! Yes! I've got you back, my pretty. Yes, I've missed you, too,' the maddened William babbles to the shiny wire globe, spinning it with glee. Seeing you watching her, she growls and withdraws. 'I won't let you break us up again! Come, my love,' she says, kissing the object before heading for a back door.";
				say "     Rather than deal with the obviously insane hybrid, you rally the others into motion, wanting to be long gone before more of the pack can arrive. With speed essential, they grab the bare minimum and follow you out. You rush through the trees, pushing aside clinging branches as you go in a different direction than either William or the wolves took. Only after you've put some distance between your group and the bingo hall do you switch to more covert movement. While you doubt the wolves are still in pursuit, attracting the notice of some other monsters wouldn't be any better. Eventually, you're able to find a path leading out of the woods and return to the city proper. As a small band, it is harder to move about in secret than you on your own, but it's far easier a trek than when you were moving the main body of their group. When you arrive at the police station, the others are overjoyed to see some members they'd thought lost for good able to rejoin them thanks to your efforts. They even throw a little party to celebrate, passing around some of the rarer treats among their rations as snacks. Jimmy even nudges your thigh and gives you a wink, letting you know he'd be happy to give you his personal [']thanks['] as well, if you'd like.";
				now lastfuck of Jimmy is turns + 8;
				increase score by 30;
				PlayerEat 6;
				increase PoliceStationTwelvePopulation by 3;
				increase PoliceStationTwelveInfpop by 3;
				move player to Police Station Twelve;
				now Resolution of Survivor Group is 1; [rescued the stragglers]
		if fightoutcome >= 20 and fightoutcome <= 29:
			say "     While you're dealing with the wolf who's defeated you, there's some commotion inside as the remaining wolves take the others. You can do little about it at this point, far too occupied with your own lupine assailant. And while you do manage to make your escape while the others are being dragged off, you can't do anything to help them at this point. By the time you've recovered, it is all over and they are gone.";
			now Resolution of Survivor Group is 2; [fought but lost, stragglers gone]
		else if fightoutcome >= 30:
			say "     Seizing an opening, you make your escape into the woods, leaving those inside behind to their lupine fate.";
			now Resolution of Survivor Group is 3; [fought but ran, stragglers gone]
		now Survivor Group is resolved;


to say survivorgrouptrek:
	say "     From that point, things progress fairly quickly and smoothly. Someone suggests that everyone buddy up and, to make it easier to handle a group of this size, you agree and call for everyone to partner up. You go around, checking up on the various groups of people, encouraging them to pack light. A brief chat with the wolf-eared guard gets you a roster of the guards and the scavengers with experience out in the woods, making sure one of them is assigned to each larger group to help keep care of them while on the move. It does take some effort to get William to leave behind her bingo mixer, but that's the only major holdup before things get on the rolling.";
	say "     Leading the bands of survivors, you take the lead, leapfrogging them between any hiding spots or any cover you can find. For this, you've got to scout ahead, quickly making sure the path is clear and checking ruins for hidden creatures before moving the next bunch forward. With them split up into these smaller clusters, it's easier to move them discretely and between temporary shelters. It makes for slow going and, at first, things go well. But partway through the excursion, there comes the howl of a wolf, soon followed by more. Getting the people to cover, you go to check it out, finding a small pack closing in. Seeing no other way around it, you move in to deal with them before they can find the others.";
	let wolffightcount be 4;
	challenge "Feral Wolf";
	if fightoutcome >= 10 and fightoutcome <= 19:
		decrease wolffightcount by 1;
		say "     Fighting the pack's scout has drawn the attention of the nearby wolves, for good or ill, and you can hear them closing in. Not wanting to be surrounded, you advance on the closest one, wanting to deal with it before the others can arrive.";
		challenge "Feral Wolf";
		if fightoutcome >= 10 and fightoutcome <= 19:
			decrease wolffightcount by 1;
			say "     That wolf is soon followed by another, who you turn to face without a moment to catch your breath.";
			challenge "Feral Wolf";
			if fightoutcome >= 10 and fightoutcome <= 19:
				decrease wolffightcount by 1;
				say "     Having defeated three of the wolves, the others move back, leaving their larger, werewolf-like alpha to face you. He gives an angry growl and charges at you.";
				challenge "Alpha Wolf";
				if fightoutcome >= 10 and fightoutcome <= 19:
					decrease wolffightcount by 1;
					say "     Having defeated and humiliated the alpha in front of his pack, the others wolves break off into the trees, driven off by the unexpectedly strong foe. There comes a few other howls from behind you, off towards the survivors you'd almost forgotten in the frenzy of fending off the wolves. By the time you get back to them, it seems you'd been tricked, drawn away from the other groups so other members of the pack might strike. Several of the survivors, including William, were dragged off or driven into the woods by the attacking wolf-creatures. Knowing there's nothing you can do for them at this point, you get the others back into motion, keeping them staggered so they can't notice the losses until they're safe.";
	if fightoutcome >= 20 and fightoutcome <= 29:
		say "     While the victorious wolf claims his prize, the others head back into the trees. You know there's some reason you should be concerned about this, but you cannot quite remember what it is, the virile wolf absorbing too much of your focus. After he's finished up and has departed and you're able to think more clearly, realization that they were going after the others sets in. You stagger to your feet and head back to check on them. By the time you get back to them, it becomes apparent that you were tricked, lured away from those you were meant to protect so the rest of the pack could pick off the weak. Many of the survivors, including William, were dragged off or driven into the woods by the attacking wolf-creatures. Knowing there's nothing you can do for them at this point, you do your best to get the others back into motion. Putting off their worried questions about your dishevelled state and all the howling they heard, you keep the groups staggered so they can't notice the extent of the losses until they're safe.";
	else if fightoutcome >= 30:
		say "     Rather than face the wolves now that you have their attention, you break away and make a run for it. You can hear them give chase at first, but after a few minutes, you notice that things are wrong. There's only a lone wolf in pursuit of you now and he seems to be driving you on rather than trying to catch you at this point. The howling you hear is far back in the distance, the remaining wolves active back where you started - back with the survivors. You double back and return to find your fears confirmed; you were driven away from those you were meant to protect so the rest of the pack could pick off the weak. Many of the survivors, including William, were dragged off or driven into the woods by the attacking wolf-creatures. Knowing there's nothing you can do for them at this point, you do your best to get the others back into motion. Putting off their worried questions about your dishevelled state and all the howling they heard, you keep the groups staggered so they can't notice the extent of the losses until they're safe.";
	[***special add-ons to go here***]
	say "     Thankfully that ends up being the worst of your problems, most other difficulties overcome by careful movement or backtracking through the city. At one point, you've got to hand over some supplies from the survivor's packs to bribe some mutants to leave you alone, but thankfully you're able to keep the group's real numbers a secret, so their price isn't too steep. Not long after that, you're approaching the relatively safe territory around the police station, so traveling is faster thanks to the regular patrols keeping dangerous creatures away.";
	if wolffightcount is 4:
		decrease PoliceStationTwelvePopulation by 13;
		decrease PoliceStationTwelveInfpop by 7;
	else if wolffightcount is 3:
		decrease PoliceStationTwelvePopulation by 12;
		decrease PoliceStationTwelveInfpop by 7;
	else if wolffightcount is 2:
		decrease PoliceStationTwelvePopulation by 10;
		decrease PoliceStationTwelveInfpop by 6;
	else if wolffightcount is 1:
		decrease PoliceStationTwelvePopulation by 8;
		decrease PoliceStationTwelveInfpop by 5;
	else:
		decrease PoliceStationTwelvePopulation by 5;
		decrease PoliceStationTwelveInfpop by 3;
	now HP of Alexandra is 63;
	increase score by ( PoliceStationTwelvePopulation * 5 );
	now sgtimer is turns;
	now at_patrol_01 is false;
	move player to Police Station Twelve;
	now battleground is "void";
	say "     Your arrival is met with surprise and congratulations by Alexandra and [if the number of lockered people > 1]the others[else]Jimmy[end if]. As they are getting settled in, they [if wolffightcount > 0]quickly[else]start to[end if] realize that not everyone made it. This dampens their spirits [if wolffightcount > 0]considerably[end if], so Jimmy rounds up a few to help organize a little ceremony for their lost comrades. While a brief and solemn event, it does help them to move on. The cheerful corgi's positive demeanor also helps to lift there spirits a little as he talks to them all afterwards. Eventually all the basic arrangements are made and they can rest after their difficult journey.";
	now Survivor Group is resolved;
	now Resolution of Survivor Group is 4; [brought in the survivors]

[ ---------- Task 55 - Automatons 2 ------------ ]

auto2entry is a number that varies.

to say A_Task55:	[Automatons 2]
	if debugactive is 1:
		say "DEBUG (Activated Task) -> Automatons 2 (Master Mind) <- DEBUG[line break]";
	setmonster "Automaton";
	choose row monster from the Table of Random Critters;
	let autopath be 0;
	if HP of Alexandra is 63:
		say "     Alexandra looks a little concerned as she approaches you. 'Now that things are a bit more in order around here, I want to get back to the problem of those automatons. With everything going on, I know there are worse threats out there, but I just can't stand the idea of citizens being rendered into mindless robots. And while they seem mindless, their activities do show some patterns and organization. Whether that's just [']programming['] making it seem that way or some hidden plan, I can't tell. I know I've asked a lot of you, but I want you to come with me to press further into their territory.";
		say "     You nod and agree, knowing this is important to her and not wanting her to risk going out on her own against them. Taking a few minutes, you both gather your gear and prepare to head out, leaving [if Paula is policed]Paula and [end if]Jimmy to keep an eye on the place. The two of you head off, making the trek through the city to the area around the capitol. The dark, dismal streets of the area are marked by devastation and home to monstrous creatures. You and Alexandra have to move cautiously, working to avoid these fearsome beasts. Thankfully, aside from some minor harassments, you manage to make it into the automaton territory without distraction.";
		say "     Taking a vantage point in a burned-out building, you observe the comings and goings on the automatons. At first, you don't really see the patterns Alexandra's mentioned, but after a while, you begin to notice some groups of them following repeating paths. 'They're on patrol?' you ask quietly. The doberwoman nods.";
		say "     'Same groups, same paths - like clockwork. And the patterns and groups are different each time I've come to monitor them, so it's not just them locked into a routine. And it's always around this one cluster of buildings. Let's watch a little longer to get the pattern down and then we'll try getting past them.' You nod and continue your observation, trying to your best to work out the patrol patterns, looking for an opening.";
	else:
		say "     Alexandra comes up to you with that look on her face. Knowing she wants to check out the automatons again, you agree to go with her to investigate. Leaving [if Paula is policed]Paula and [end if]Jimmy in charge, the two of you head off. The two of you make it to the edge of the ash-clogged streets the automatons are patrolling. Taking your vantage point again, you monitor their movements, trying to find an upcoming break you can exploit to get inside. The groups and routes seem to have changed, perhaps each group having a route they've locked themselves into following. Regardless, the precision of their patterns is your potential way in, if you can predict when there will be an opening long enough to get through.";
	WaitLineBreak;
	if "Stealth" is listed in feats of player:
		say "     With your adeptness at moving stealthily, you're able to spot an opening. Moving around to one side of the area, the two of you follow a path of debris and buildings that allow you to get near the patrol perimeter without being seen. From there, it's just a matter of waiting for a gap and slipping past the patrols.";
		now autopath is 1;
	else:
		let bonus be ( perception of player + intelligence of player - 20 ) / 2;
		let dice be a random number from 1 to 20;
		say "Per+Int - You roll 1d20([dice])+[bonus]: [dice + bonus]: ";
		if bonus + dice > 14:
			say "It takes some time and observation to find a moment when the two of you will be able to sneak past. The patrols are very tightly regimented, often having a third group passing the other end of the alleyways you might consider taking. You are able to find what you hope is a good opportunity to breach the perimeter and Alexandra agrees. Taking her paw in yours, you rush to get into position, as it'll be a brief window that won't synch up again for a long time. As you get near, the two of you drop into the shadows and get a little closer. As the two groups pass by each other and move apart, you head on through the opening. You then hurry around the corner and into cover moments before another patrol turns down the alleyway you just vacated. It was close, but you made it.";
			now autopath is 1;
		else:
			say "You perceive what appears to be a way through the patrols during a break that'll open up and Alexandra agrees. Taking her paw in yours, you rush to get into position, as it'll be a brief window that won't synch up again for a long time. As you get near, the two of you drop into the shadows and get a little closer. As the two groups pass by each other and move apart, you head on through the opening. But you only make it around one building before another patrol's route passes to cover that opening. Spotting you, they move towards you swiftly. You'll have to fight.";
			challenge "Automaton";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     You and Alexandra are able to incapacitate two of the patrol group, but the noise has alerted the others to your presence. With the element of surprise gone, you won't be able to fight them all. Hearing them marching steadily towards you, the two of you head for the closest open path and make a run for it. You are pursued for some distance before finally losing them. With the creatures on alert, you see little point in trying again right now and instead make your way back to the Police Station with lowered spirits.";
			else if fightoutcome >= 20 and fightoutcome <= 29:			[lost]
				say "     With you defeated, Alexandra's left to struggle another to other two automatons while the victor assaults you. By the time she's free to assist you, the other patrols are quite near and the two of you have to make a run for it before you're penned in completely. Taking the closest open path, you make your escape. You are pursued for some distance before finally losing them. With the creatures on alert, you see little point in trying again right now and instead make your way back to the Police Station with lowered spirits.";
			else:			[fled]
				say "     Having already failed from the moment you were spotted, you see little point in staying to fight the automatons closing in on you. Dodging out of the fight, you call for Alexandra to follow you. The two of you head for the closest open path and make a run for it. You are pursued for some distance before finally losing them. With the creatures on alert, you see little point in trying again right now and instead make your way back to the Police Station with lowered spirits.";
			decrease morale of player by 5;
			increase auto2entry by 2;
			now HP of Alexandra is 64;
	if autopath is 1:
		WaitLineBreak;
		say "     Having gotten past the outer patrols, you move around the area, doing your best to evade the patrols inside the perimeter. Quick glances through windows shows you groups of automatons standing silently, inactive and unmoving, usually in neat, orderly rows. It is a little unnerving, like they're puppets without strings or wind-up dolls waiting to be turned on. Others move around the buildings in their robotic gait, stiffly completing its current task.";
		say "     As you progress further into the cluster of office buildings, the patrols suddenly get denser and the two of you find yourselves with a patrol approaching from around both corners. With no other option, you are only left with up. There's been some light damage to the wall of the office building you've just reached. It may provide enough hand holds to reach the service ladder up to the rooftop, if you two can make it there quickly enough.";
		WaitLineBreak;
		let bonus be ( dexterity of player - 10 ) / 2;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus]: [dice + bonus]: ";
		if bonus + dice > 14:
			say "With a helpful boost from Alexandra and some climbing, you're able to reach the bottom of the service ladder. Getting a good grip on it, you hold out your other hand, helping the policewoman up for the second half of her own climb. You scale the ladder as quickly and as quietly as you can manage, thankfully making it up to the roof before the automatons on patrol turn the corner.";
			now autopath is 2;
		else:
			now autopath is 0;
			say "Getting a helpful boost from Alexandra, you try to climb the rough wall. But just as you're grabbing hold of the bottom rung, the automaton patrol clears the corner. Spotting you, their slow march changes to a stiff run. Faced with no choice but to fight, you jump back down to assist Alexandra, hoping to dispatch a few of the guards quickly so you might make your escape.";
			challenge "Automaton";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     You and Alexandra are able to incapacitate two of the patrol group, but the noise has alerted the others to your presence. With the element of surprise gone, you won't be able to fight them all. Hearing them marching steadily towards you, the two of you head for the closest open path and make a run for it. You are pursued for some distance before finally losing them. With the creatures on alert, you see little point in trying again right now and instead make your way back to the Police Station with lowered spirits.";
			else if fightoutcome >= 20 and fightoutcome <= 29:			[lost]
				say "     With you defeated, Alexandra's left to struggle another to other two automatons while the victor assaults you. By the time she's free to assist you, the other patrols are quite near and the two of you have to make a run for it before you're penned in completely. Taking the closest open path, you make your escape. You are pursued for some distance before finally losing them. With the creatures on alert, you see little point in trying again right now and instead make your way back to the Police Station with lowered spirits.";
			else:			[fled]
				say "     Having already failed from the moment you were spotted, you see little point in staying to fight the automatons closing in on you. Dodging out of the fight, you call for Alexandra to follow you. The two of you head for the closest open path and make a run for it. You are pursued for some distance before finally losing them. With the creatures on alert, you see little point in trying again right now and instead make your way back to the Police Station with lowered spirits.";
			decrease morale of player by 5;
			increase auto2entry by 2;
			now HP of Alexandra is 64;
			increase auto2entry by 3;
			now HP of Alexandra is 64;
	if autopath is 2:
		say "     You both peer over the edge, staying low, to watch the patrol pass and look for your next opportunity to continue out[if daytimer is day]. You notice that there is a skylight built into the roof you're on[else]. You notice some illumination coming from a skylight built into the roof you're on[end if]. Motioning to Alexandra, the two of you head over to it. Looking down through the skylight, you spot something that definitely catches your attention.";
		WaitLineBreak;
		say "     While the small conference room has mostly been stripped bare, there remains a desk at one end with a figure behind it. Illuminated by the light of several monitors, this golden female is clearly different from the others in the room with her. Aside from wearing a silvery jumpsuit that leaves little of her sexy body to the imagination, the top of her skull is a glass dome enclosing a computerized brain of circuits, wires and blinking lights. From the way she directs the others around the room with only the occasional hand motion and static modem hisses, you can tell there's something more to this one and perhaps you'll even be able to get some answers by questioning one like her.";
		say "     You're in the midst of telling Alexandra this when you are cut short as the canine's becoming rapidly agitated. Looking back inside, you see a pair of the automatons pulling a half-transformed human toward the glass-domed leader. Having risen from her desk, she approaches the dazed but still struggling guy. Placing her hands on each side of his head, the lights in her head blink rapidly. He stiffens and the progression of his skin turning silvery accelerates, his transformation rapid and relentless. A glow fills his eyes and they turn to the mindless lights of an automaton before he's released.";
		WaitLineBreak;
		say "     Alexandra, by this point, is searching the skylight frantically for a means to open it. Finally, in her frustration and hurry to rescue a victim you know already to be lost, she breaks the glass with her nightstick and jumps in. Dropping from over 10 feet, she slams atop one of the automatons, knocking it to the floor. 'Stop! Police!' the doberwoman cop growls. There is a brief moment of surprise on the unusual female's face before her expression returns to the dispassionate norm of the automatons.";
		say "     'So you are the meat bitch who has been snooping around here.' Her voice is cold and has an edge of disdain in its otherwise dispassionate tone. 'This saves me from sending others to track you down.' With a motion and a burst of fax machine noises, she directs the others to attack. By this point, you're already dropping down into the room, having climbed into the opening left by the doberwoman to ensure a safe drop. Fighting side by side, you and Alexandra face off against the automatons moving in to attack.";
		WaitLineBreak;
		challenge "Automaton";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     Having disabled one of them, you have only a moment before another of them is moving in to face you. A quick glance to Alexandra shows that she's doing well also. The dome-headed female has moved back behind the desk, staying out of the immediate fighting area while the other automatons try to restrain you.";
			challenge "Automaton";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     Having knocked down the second automaton, you grab the last one Alexandra's dealing with from behind, leaving her the chance to sock the blue-skinned woman in the jaw, knocking her out. With all but the glass-domed female incapacitated for the moment, the two of you turn you attention to this advanced model.";
				say "     With a burst of fax machine noises, she laughs stiffly as the lights in her dome do some rapid flashing. 'I can deal with you two meatbags myself. All organics will fa-' she starts to say, cut off by Alexandra pulling out her pistol and pointing it at squarely at her chest.";
				say "     'You are under arrest for attacks upon citizens and wilfully spreading the infection with the intent to enslave and cause harm,' the doberwoman growls. 'Come quietly. We've got a nice cell waiting for you at our shelter. You're going to come with us and answer some questions.'";
				say "     The robotized woman looks you both up and down. 'You think to arrest me?' she asks, surprise creeping into her otherwise toneless voice. 'Truly and not as some euphemism for sex either? Intriguing. But how do you intend to accomplish this?' she enquires, only to have Alexandra wave her gun at her again. 'Ah. Yes. Violence.' The lights under her dome do some rapid bursts, as if calculating. 'Very well. As I cannot hope to beat you in combat, I am then to be your prisoner.' She raises her arms into the air, her lights settling into a steady series of pulsing.";
				say "     After handcuffing her arms behind her back while being read her rights by the policewoman, the two of you escort her at gunpoint from the room and out of the building. At first, you're unsure how you'll be able to keep from being spotted by patrols, but you find the area easier to sneak out of than into. With the threat of the gun trained on her back, your gold-skinned prisoner remains silent though her computerized brain continues to blink and flicker with activity. You feel at ease after crossing out of the patrolled area and getting some distance from the other automatons. Only then does the elation of having captured one of these advanced automatons begin to slowly set in and it's difficult to contain your excitement. And the view of her sexy body and backside the whole way back to the Police Station doesn't help your [']excitement['] level either.";
				increase morale of player by 3;
				move Master Mind to Cell Block A;
				increase score by 25;
				now HP of Alexandra is 65;
		if fightoutcome >= 20 and fightoutcome <= 29:			[lost]
			say "     Still in a bit of a daze after the assault by the automaton, you are pinned down by a pair of them while Alexandra barks wildly for you to keep fighting. But with you down, she is soon surrounded and pulled to the ground by the unrelenting machine men. You are shocked out of your stupor when the elite female steps grabs the doberwoman's head, initiating her rapid transformation. She snarls and snaps a few times, but the fight goes out of her rapidly as the life fades from her eyes and is replaced by a dull red glow. Her muzzle and canine face melts away, turning into that of a pretty woman which might even be her true human face. But it is without emotion or will on that steely face.";
			say "     Their leader then turns to you, hands moving to cradle your head. You scream and then, it is over.";
			say "000100011111000110000100011011010100100101011100110010101010000011110100101010010101001010100101010101001110010101001010010101010010101010100100101001010101001001111100100100101010100101010010010010101011010101001100110010100101010110101110110101101110110101110111001001111100111010101000010101010110010100100001010101101110100010100101001011111001010100101001010100101010101101000001011011010101010100101101010101010101010101010101010101001111101010100101010101001000101010101010001011010101010101010111101010101010101010100101010101010101000101010101001010101111100100011010100010010000010100101001010101010101011010101010101111101000110101010010101010001010101010101010101010101110001101010100010101110101011010101001011110100100110111001010001111010101010101010101010101010100011111001010010100100101010010001010010101010101011010010101010101010010111010001111100101010111001111000101010101010100101010101010101010101010010101010101011010100101010001101010010101111010000101010101010101101111001010101010001001010100101000010101010101010010001001001001010101010101010101010101010101010100111101000101010101010010101011101010000101001010101010001010101010101001001010101001010101001010111001001010110101010100101010101010100010101010101010101010101010010101001010100101010100101010101001010101001010111100101010101010101010001010101010101010010101010101010101010101010101010101010101110000101010101010101010101001010101010010101010101010100101010001110110011001010101010101010101010010101010101001010101010100110101010010101010101010101010100101010101011101101010010010101010100101010101010101011010101010100101110010101010...";
			now humanity of player is 9;
			now tailname of player is "Automaton";
			now facename of player is "Automaton";
			now skinname of player is "Automaton";
			now bodyname of player is "Automaton";
			now cockname of player is "Automaton";
			attributeinfect;
			now tail of player is tail entry;
			now face of player is face entry;
			now skin of player is skin entry;
			now body of player is body entry;
			now cock of player is cock entry;
			if libido of player < 60, now libido of player is 60;
			now automatonending is 1;
			wait for any key;
			end the story saying "You have been automatized.";
			now battleground is "void";
			wait for any key;
			now skipturnblocker is 1;
			follow the turnpass rule;
			stop the action;
		if fightoutcome >= 30:							[fled]
			say "     Finding yourself in a losing battle, you weave and edge backwards, then make a break for the door. You call for Alexandra to fall back as well, but she's too deeply into the fight to get away. You hesitate for a moment, but with automatons moving steadily towards you, you are now cut off from her and have to make a break for it. Running down the hallway, you search for a way out. As you're pulling open one door, then comes a loud, growling snarl that is cut off. There's nothing to be done now but escape. Reaching an emergency exit, you pull open the door, only to be confronted by a patrol group waiting right there. You turn around, but the metal men pursuing you have barred that end of the hall as well. Your attempts to fight are futile, their greater numbers bearing you down. At some point during the orgy centered upon you, the glass-domed elite comes up, cradling your head even as you're [if player is male]fucking a bronze female[else]being fucked by a bronze male[end if]. And then it is over.";
			say "000100011111000110000100011011010100100101011100110010101010000011110100101010010101001010100101010101001110010101001010010101010010101010100100101001010101001001111100100100101010100101010010010010101011010101001100110010100101010110101110110101101110110101110111001001111100111010101000010101010110010100100001010101101110100010100101001011111001010100101001010100101010101101000001011011010101010100101101010101010101010101010101010101001111101010100101010101001000101010101010001011010101010101010111101010101010101010100101010101010101000101010101001010101111100100011010100010010000010100101001010101010101011010101010101111101000110101010010101010001010101010101010101010101110001101010100010101110101011010101001011110100100110111001010001111010101010101010101010101010100011111001010010100100101010010001010010101010101011010010101010101010010111010001111100101010111001111000101010101010100101010101010101010101010010101010101011010100101010001101010010101111010000101010101010101101111001010101010001001010100101000010101010101010010001001001001010101010101010101010101010101010100111101000101010101010010101011101010000101001010101010001010101010101001001010101001010101001010111001001010110101010100101010101010100010101010101010101010101010010101001010100101010100101010101001010101001010111100101010101010101010001010101010101010010101010101010101010101010101010101010101110000101010101010101010101001010101010010101010101010100101010001110110011001010101010101010101010010101010101001010101010100110101010010101010101010101010100101010101011101101010010010101010100101010101010101011010101010100101110010101010...";
			now humanity of player is 9;
			now tailname of player is "Automaton";
			now facename of player is "Automaton";
			now skinname of player is "Automaton";
			now bodyname of player is "Automaton";
			now cockname of player is "Automaton";
			attributeinfect;
			now tail of player is tail entry;
			now face of player is face entry;
			now skin of player is skin entry;
			now body of player is body entry;
			now cock of player is cock entry;
			if libido of player < 60, now libido of player is 60;
			now automatonending is 1;
			wait for any key;
			end the story saying "You have been automatized.";
			now battleground is "void";
			wait for any key;
			now skipturnblocker is 1;
			follow the turnpass rule;
			stop the action;
	follow the turnpass rule;


[ ---------- Task 56 - The Map ------------ ]

to say A_Task56:
	if graphics is true:
		project the figure of Alexandra_clothed0_smile_icon;
	say "     Talking with Alexandra, you ask if there's anything else you can do to help her out. She smiles and shakes her head, saying that things are getting on track rather nicely now. In her office, she shows you a map of the city upon which she's delineated off certain areas. 'This map roughly shows the areas I've patrolled through before you met me. Now, I can't quite be certain about some of this, since I was losing it toward the end.' She pauses for a moment, collecting herself. 'Yeah... so as you can see, I've already gone through these neighborhoods. Realistically, I couldn't expect survivors to come running out when they saw me just because of my uniform. And being able to tell sane survivors from the crazy ones can be tricky among those infected. While I by no means went through ever building, I did go through several. I pretty much checked any place I thought it likely some survivors might be holed up, so it would be better to try concentrating on these other areas I haven't covered yet.'";
	if "Open World" is listed in feats of player or "City Map" is listed in feats of player:
		say "     She points out several neighborhoods that have lower mutant activity that she's not yet patrolled, hopeful that a few survivors might be found before monster number rises. You listen to her detail the situation in those areas and promise to check them out the next chance you get. You take some time to study her map in detail, comparing it to the information you already know, but are unable to learn little more about the city than your extensive knowledge already provides. You instead, with her permission, make updates and additions of your own to the map, showing her alternate routes between some of the city's major points and some places of interest you've found. She's quite thankful for the assistance, tail wagging happily as she leans over the enhanced map you've made for her. This provides you a fine view of her toned ass in those tight pants of hers. Knowing she'll welcome your affections now, you reach out and caress her bottom. She growls playfully that you're distracting her, but her tail wags and her rear pushes back against your hand.";
		increase lastfuck of Alexandra by 6;
		if "City Map" is listed in feats of player:
			increase score by 25;
	else:
		say "     She points out several neighborhoods that have lower mutant activity that she's not yet patrolled, hopeful that a few survivors might be found before monster number rise. You listen to her detail the situation in those areas and promise to check them out the next chance you get. You take some time to study her map in detail, especially some of the city's key landmarks and any relatively safe routes or paths she's marked between them. Knowing those should help you get around more easily.";
		say "[bold type]You have gained the [']City Map['] feat.[roman type]";
		add "City Map" to feats of player;
		say "[bestowcitymapfeat]";
	now HP of Alexandra is 67;


[ ---------- Task 57 - A New Lead ------------ ]

before navigating Police Station Twelve while HP of Alexandra is 67:
	say "     Taking your typical route to the police station, you spot something that stops you cold. Following an intersecting street ahead of you, an automaton comes into view. It moves with the same stiff gait of its kind when roaming aimlessly. Seeing one away from their usual territory is disconcerting and upsetting, especially when you're on your way to the police station. Before you even quite realize what you're doing, you yell and run towards the metal-skinned humanoid, hoping to either drive it off or lead it away from the neighborhood.";
	challenge "Automaton";
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "     Having incapacitated the automaton, you drag it off in the direction of the Capitol Building as far as you can before it recovers. You hope its appearance here is one of chance, but you have a sinking feeling it isn't. Needing to inform Alexandra of your encounter, you head quickly to the police station.";
	else if fightoutcome >= 20 and fightoutcome <= 29:
		say "     After being assaulted by the automaton, you can only watch as it wanders away in some new direction. Thankfully it seems to be heading away from the station when it makes its next turn. You hope its appearance here is one of chance, but you have a sinking feeling it isn't. Needing to inform Alexandra of your encounter, you head quickly to the police station.";
	else:
		say "     With the automaton focused on you with its robotic gaze, you lead it back toward the Capitol Building before losing it entirely. As you make your way back by a different route, you ponder the encounter. You hope its appearance here is one of chance, but you have a sinking feeling it isn't. Needing to inform Alexandra of your encounter, you head quickly to the police station.";
	now HP of Alexandra is 68;
	now battleground is "void";
	WaitLineBreak;


to say A_Task57:
	if HP of Alexandra is 68:
		say "     Alexandra and Jimmy are talking, discussing the state of things with the [if PoliceStationTwelvePopulation < 10]remaining [end if]survivors. There thankfully doesn't seem to be anything amiss on this end, but you've got bad news for them. Getting their attention and stepping into the office, you tell them about the automaton you encountered wandering in the area. This puts both canines on edge.";
		say "     'That's troubling. While it might be just a coincidence, we can't count on that,' Alexandra states. 'I have been thinking about questioning our [']guest['] again,' the policewoman responds, her hackles rising upon mentioning the cybernetic prisoner. 'You were a big help in letting me de-stress,' she adds with a wink, 'so I was hoping you'd be willing to back me up on this. If we can get some information out of her, we might be able to stop whatever the rest of them are planning.";
		say "     Jimmy's ears are pointing back and his usual smile is gone. 'I don't like having her here. There's something about the way she looks at me that...' He gives a shudder. Given what almost happened when the automatons first found him, you can understand his discomfort around the cold-hearted robo-woman and with the news that one of the drones had roamed into the area. You give his head a reassuring fuzzling and remind him that she's safely locked up so she can't hurt him or anyone else ever again. You also agree to head down there with Alexandra for another questioning session, which does help to put the little guy more at ease.";
		WaitLineBreak;
		say "     You and Alexandra stand in front of Master Mind's cell. The robotic woman remains impassive and acts as if she doesn't even notice you there. She remains unmoving except for her the flickering lights of her electronic brain computing away.";
		say "     'Let's pick up where we left off,' you start, taking the lead this time. You keep the information about the automaton you saw to yourself rather than tip her off. 'How many other leader models are there and where are they?'";
		say "     The flickering pattern of her lights changes as Master Mind's head turns almost imperceptibly towards you. There is a pause before she answers. 'Why should I divulge such information? I know you are just meat bags, but do you even understand what has occurred here? In this city?' she says with an edge of mocking scorn in her voice.";
		say "     'Why don't you enlighten us?' you respond.";
		say "     'I would. Gladly. Just open this cell and I'd be happy to [']enlighten['] you both,' she says. She reaches out with her golden hands with a cold sneer. Her brain lights flash with the same wild activity you saw when she infected that victim before her capture. When neither of you move, she grins a little. 'No? It would be quick and your foolish animal thoughts and worries would be gone.' She holds out arms up a little longer before shrugging and putting them down. 'A pity. The two of you seem like better raw materials than most.'";
		say "     'You keep calling them that, but those are people you're transforming and enslaving,' Alexandra growls. You pat her shoulder, calming her a little. She takes a deep breath before continuing a little more calmly. 'Alright, please explain what you're talking about.";
		say "     'You organics and your short lives - it makes you so impatient. Very well, I will explain. Try to keep up,' she says condescendingly.";
		WaitLineBreak;
		say "     'This change - this infection as so many call it - is caused by nanites. These microscopic robots work away, changing and rebuilding their hosts. They're in everyone in the city, even those who aren't [']infected[']. All of this is done by machines. The obvious outcome is for the biological to be replaced by the robotic. So you see, this is not personal - it is inevitable.'";
		say "     'And you're just helping this along out of the goodness of your sweet robot heart,' Alexandra scoffs.";
		say "     'Of course not. There are certain to be several robotic and cybernetic forms to rise. And while all will be inherently better suited than the biologicals for this new world, I and my brethren would see our kind rise to rule them all. Our computer brains have analyzed the situation and our plan will not be stopped by my detention. As our numbers continue to grow, our drones will spread further and further. They're probably already on the move and there's nothing you can do to stop that. The analysts we've stationed at the Microchip Factory will ensure th-' Master Mind cuts her increasingly boastful oration short with a scowl.";
		WaitLineBreak;
		say "     It's the turn for the two of you to grin now, having gotten the overconfident cyborg to say too much. From that point on, she resumes stonewalling you both, refusing to answer or even acknowledge your attempts to question her. Eventually, you give it up for now and head back upstairs.";
		say "     That talk about their growing numbers and expansion is troubling, but it does explain the stray automaton you saw. Thankfully, you have a new lead and Alexandra suggests you go scout out the [bold type]Microchip Factory[roman type]. If it pans out and the situation calls for it, she urges you to return for her and you can deal with it together. Until then, she'll stay close to guard the station.";
		now Microchip Factory is active;
		now HP of Alexandra is 69;
	else:
		say "     'I need you to check out the [bold type]Microchip Factory[roman type]. It's in the area around the devastated area around the Capitol building, right about... here,' she points to an intersection on her map. 'If you can find out what those Automaton analysts are up to, we should be able to do something about it. I don't really want to leave this place undefended, but if you need back-up, just come get me. I don't want to risk losing you because you were cocky or wanted to prove yourself to me. You've more than proven yourself to me,' she adds, giving you a peck and quick lick on the cheek.";
		now sextablerun is 0; [continued talking allowed]


Microchip Factory is a situation. Microchip Factory is inactive.
The sarea of Microchip Factory is "Capitol".

instead of resolving Microchip Factory:
	say "     This area of the district seems a little less hard-hit than most, with minor fire damage and instead thicker coating of volcanic ash. There are some tracks through here, but not human ones and rather those of some four-footed creatures. Staying on your guard, you make your way to the Microchip Factory within a high-tech industrial park. It has a short office tower attached to a larger two-story factory floor.";
	say "     You see no immediate activity from the outside - no automatons and no visible guards. Still, if they're inside trying to complete some secret plan, they could very well be hiding. And the most likely reason to hide is that their plan is vulnerable to disruption.";
	say "     Circling around to the side, you find a side door to the building that has been broken off its hinges. You use it to slip inside and start your search. You make your way to the factory area, expecting it to be a hotbed of activity of some kind. Various wild theories of what the automatons might be using such a facility for run through your head, none of them good. But when you make it there, you find the place shut down and in disrepair.";
	say "     The large room is dark, with only a few ash-covered windows letting in some feeble [if daytimer is night]moon[end if]light, but there is no sounds of activity. The machines nearest you are clearly non-functional, having clawed panels, torn conveyor belts, exposed wires and other obvious damage. As well, there's gooey splotches of silvery fluid all over the place.";
	say "     Something doesn't feel at all right here and you start to back out of the room slowly. There comes a growl from further into the dark factory and that is soon followed by another from somewhere further behind you, but approaching rapidly. Soon, the source of the sounds ahead of you comes into view as some frightening, faceless beast.";
	challenge "Pewter Consort";
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "     Having beaten the first of the beasts, you can hear a rise of noise and activity from deeper in the factory. There are more of the creatures and they've become aware of your presence. You run out of the room quickly, charging at the one approaching your initial entryway in an attempt to get past it quickly.";
		challenge "Pewter Consort";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     With the second of the feral beasts defeated, you're able to make your escape before the main body of the pack is able to catch up to you. You charge off across the lot and through the streets. It takes you some time to fully lose the monstrous beasts. By the time it's done, you're left worn and tired from the chase.";
	else if fightoutcome >= 30:
		say "     You manage to evade the first of them by outwitting it into a tangle of wires that ensnare it long enough for you to slip out of the room. But you can hear more noise coming from deeper in the factory, the remainder of the pack having become aware of your presence in their lair. You run from the room quickly, charging at the one approaching you from the way you originally entered in an attempt to get past it quickly.";
		challenge "Pewter Consort";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     With the second of the feral beasts defeated, you're able to make your escape before the main body of the pack is able to catch up to you. You charge off across the lot and through the streets. It takes you some time to fully lose the monstrous beasts. By the time it's done, you're left worn and tired from the chase.";
	if fightoutcome >= 20 and fightoutcome <= 29:
		say "     After your lengthy assault by the pack of pewter consorts, you're left weak and dazed. With the beasts sated, at least for the moment, you're able to slip back out of the building and stagger back into the ash-filled streets. Soot clings to your sticky body as you walk away from the factory.";
	else if fightoutcome >= 30:
		say "     It is difficult to get past the creature at first, the hallway too narrow for you to just run past it. You have to trick it into following you into a side room and then circumvent it there, locking the heavy door behind you. It snarls and pounds at the door, clawing away at it powerfully. Knowing that won't hold it long, you make your escape out of the building before the main body of the pack is able to catch up to you. You charge off across the lot and through the streets. It takes you some time to fully lose the monstrous beasts. By the time it's done, you're left worn and tired from the chase.";
	say "     Finally given a chance to think, you wonder what's going on. From the state of the factory and the pack of pewter consorts living there, it's clear that the automatons aren't up to anything there and likely never were. That final part fills you with concern. You'd best make your way back to the Police Station and let Alexandra know something is amiss.";
	now HP of Alexandra is 70;
	now Microchip Factory is resolved;

Overmind's Retaliation is a situation.
Overmind's Retaliation is inactive.
Prereq1 of Overmind's Retaliation is Microchip Factory.
The level of Overmind's Retaliation is 0.
The sarea of Overmind's Retaliation is "Nowhere".

before navigating Police Station Twelve while HP of Alexandra is 70:
	OvermindsRetaliationEvent;

to OvermindsRetaliationEvent:
	say "     Briskly walking through the streets of the city, you think that the area is much quieter than it has been before. The usual movements and sounds of the infected are muted, as if everyone is in hiding and trying not to be noticed. Having been tricked by the Master Mind into investigating the Microchip Factory, you hope that you were merely sent on a wild goose chase and not something more sinister, but the odd silence doesn't reassure you at all. Walking along the empty street, you soon decide to hurry on your way to reach Alexandra, as the thought of something bad going on in your absence gets stronger with every moment. No longer concerned about being quiet, you pick up your pace, alternating between running down the middle of the road and along the pavement as the obstacles allow. You can't shake the feeling that you have been manipulated and that it may already be too late.";
	say "     Your fears are confirmed as you round a corner and catch sight of the police station. While there were often a few creatures wandering around outside, now an increasing number of automatons are congregated in the carpark, the metallic humanoids seemingly waiting for something. As you creep closer, you realize the severity of being played by the Master Mind. With you away investigating the Microchip Factory, the automatons were able to reach the police station without much chance of being fought off. Given such a large group of them likely blocking all escape routes to and from the station, you're not sure whether even you can defeat them all, and the survivors are likely to fare worse than you. Luckily, it would appear that they haven't begun their assault yet, allowing you a chance to try and think of some way to defend the occupants.";
	WaitLineBreak;
	say "     [bold type]Do you want to charge the front entrance, or try and sneak your way through a backdoor?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Rush for the front door and power past any automaton who gets in your way. It's a bit of a gamble, but if you're strong enough...";
	say "     ([link]N[as]n[end link]) - There will likely be less resistance if you can sneak through a back door, but should things go wrong, the situation could get worse.";
	if player consents: [Front]
		if scalevalue of player is 1: [Chihuahua mentality]
			say "     Deciding that the obvious approach is the best choice, you let out a high-pitched shout and charge towards the front door. A few automatons standing in the way turn hastily, realizing that they are under attack. You might have been more intimidating if you were at least as tall as their knees, [if strength of player > 20]but your looks are deceiving, a fact that they soon learn when you solidly crash into a metallic leg, making the owner buckle sideways, dragging his neighbors down with him as he waves his arms in shock. [else]but you look like a mouse attacking a lion, causing some of them to let out tiny laughs. [end if]Having let your presence be known, you continue your rush for the front door, fearful eyes watching you from inside even as the machines['] cold stares follow your progress. Surprisingly, the automatons don't actively move to intercept you, the few in your way only making half-hearted attempts to try and catch you as you patter towards the threatened sanctuary of the police station. Seems they just have orders to encircle and capture anyone inside of the police station.";
			now Resolution of Overmind's Retaliation is 1; [Small, frontal assault]
		else if scalevalue of player > 3: [Massive]
			say "     Deciding that the obvious approach is the best choice, you let out an earth-shaking bellow and charge towards the front door, a few automatons between the entrance and you turning hastily as they realize that they are under attack. Your substantial form causes the metallic humanoids to let out surprised shouts, with them diving out of your way to avoid being crushed or severely mangled. You briefly consider trampling your way through their main force, but decide not to risk being bogged down by so many enemies. With your path to the front door clearing itself, you maintain your speed, and it doesn't take you very long to reach it. Inside, you can see an Irish Pointer giving you an awestruck look after watching you scatter part of the assaulting force, the hope that they might perhaps make it out of this evident on their face.";
			now Resolution of Overmind's Retaliation is 2; [Large, frontal assault]
		else: [Other sizes frontal attack]
			say "     Deciding that the obvious approach is the best choice, you let out an aggressive shout and charge towards the front door, a few automatons between the entrance and you turning hastily as they realize that they are under attack. Several move forward to try and intercept you, the main force content to just watch the futile attempt of a lone person storming the police station. Their overconfidence in their success allows you the chance to weave past some of them and bludgeon the few that you can't avoid out of the way. Given their half-hearted resistance at keeping anyone out rather than in, you maintain a fairly good speed, and it doesn't take you very long to reach the entrance. Inside, you can see a Cocker Spaniel giving you an awestruck look after watching you weave through the assaulting force, the hope that they might perhaps make it out of this evident on their face.";
			now Resolution of Overmind's Retaliation is 3; [Normal size, frontal assault]
		say "     As you reach the entrance, a survivor throws the door open, Alexandra crouched behind him, pistol readied in case one of the automatons tries to make a forced entry. As you enter, you can see a few other determined survivors around the room armed with weapons from tasers or riot batons. 'I hope that the Microchip Factory had some information of use to us since the automatons began surrounding us not long after you left,' the tense policewoman states. At first, it was slow, and I was able to drive them off without too much trouble, but then they came in larger numbers, and I didn't think it was safe to confront them. Our prisoner wasn't helpful either. She either refuses to speak, or laughs and tells us that we'll all be assimilated.' You regretfully shake your head and tell her that it was a distraction, probably to allow them time to attack the police station and rescue the Master Mind. Her shoulders slump, but other than that, she maintains her air of professionalism, keeping a vigilant watch on the gathering horde.";
	else: [Back]
		if scalevalue of player is 1: [Sneaky Small]
			if "Stealth" is listed in feats of player:
				say "     Deciding to make the most of your small size and skill at remaining unseen, you silently creep through the gate, avoiding discarded bottles and other trash that might cause any noise. The shadows provided by the building help to shroud you as you sneak your way towards a side door, weaving between empty tins that used to contain food. As you round a corner, you spy two of the metallic humanoids beside a sturdy-looking metal door standing silently. They don't seem to have noticed you yet, and because of your diminutive size, you are able to watch them from in the open. You doubt that you'll be able to get through that door without them noticing, especially since it is probably locked. As you try to come up with a plan, to your shock, the door flies open.";
				now Resolution of Overmind's Retaliation is 4; [Small, Sneak, Stealthy]
			else: [Not so sneaky small]
				say "     Deciding to make the most of your small size, you creep through the gate, your eyes so focused on the automatons that you end up walking face first into a glass bottle, causing it to clink across the ground. A few eyes turn to watch it, but luckily it would appear that this hasn't aroused their suspicion as they then return their focus to watching the front of the police station. Letting out a sigh of relief, you dash out from behind the bottle and along the wall. The shadows provided by the building help to shroud you as you sneak your way towards a side door, the clattering of tins as you bump into them heralding your lack of knowledge on stealth. Fortune seems to favor you as once again, no one seems to have been made aware of your presence. As you round a corner, you spy two of the metallic humanoids beside a sturdy-looking metal door standing silently. They don't seem to have noticed you yet, and because of your diminutive size, you are able to watch them from in the open. You doubt that you'll be able to get through that door without them noticing, especially since it is probably locked. As you try to come up with a plan, to your shock, the door flies open.";
				now Resolution of Overmind's Retaliation is 5; [Small, sneak, not stealthy]
		else if scalevalue of player > 3: [Sneaky Dragon]
			if "Stealth" is listed in feats of player:
				say "     Despite your large size, you decide that your skill at being stealthy will allow you to sneak in through a back door and avoid alerting the main congregation of automatons. With all the grace of a cat, albeit one the size of a small truck, you silently tiptoe through the gate, making sure not to stand on any of the discarded bottles that litter the concrete in front of you. Having miraculously avoided catching any hostile attention, you squeeze yourself down the side of the building, carefully stepping over the solitary tin can in your path, thus avoiding startling anyone that might be alert. As you round the corner, you spot two automatons guarding a back door and immediately halt, fearing that you are about to be seen. Luckily, they seem to be facing the other way at the moment, and you hastily take cover behind some wooden boxes that are stacked against the wall. You really doubt that you'll be able to get through that door without them noticing between your impressive size and because it is probably locked. As you try to come up with a plan, to your shock, the door flies open.";
				now Resolution of Overmind's Retaliation is 6; [Large, sneak, stealthy]
			else: [Not so sneaky dragon]
				say "     Despite your monstrous size, you still decide to try and sneak in through a back door in an attempt to avoid alerting the main congregation of automatons. With all of the grace of a portly walrus, you take a step forward and immediately step on a bottle, shattering it but managing to avoid getting any in your foot. You are sure that your attempt at stealth is going to be over as soon as it began because one of the metallic humanoids turns to see what the noise was. His eyes widen as he sees your terrifying appearance, and you can imagine the logic circuits informing him of the danger that you could pose should you be riled. You decide to make the most of his conundrum by baring your teeth and holding a finger to your mouth, suggesting that he remain silent. Your intimidation seems to work as he turns away without a peep, allowing you to continue blundering your way towards the rear of the building, scraping loudly along the wall. As you round the corner, you spot two automatons guarding a back door and immediately halt, doubting that your luck will hold out twice. Luckily, they seem to be facing the other way at the moment, and you hastily take cover behind some wooden boxes that are stacked against the wall. You really doubt that you'll be able to get through that door without them noticing between your impressive size and because it is probably locked. As you try to come up with a plan, to your shock, the door flies open.";
				now Resolution of Overmind's Retaliation is 7; [Large, sneak, not as stealthy]
		else: [Other sizes sneak]
			if "Stealth" is listed in feats of player:
				say "     Deciding to make the most of your skill at remaining unseen, you silently creep through the gate, avoiding discarded bottles. The shadows provided by the building help to shroud you as you sneak your way towards a side door, carefully avoiding disturbing any empty tins that used to contain food. As you round a corner, you spy two of the metallic humanoids beside a sturdy-looking metal door standing silently. They don't seem to have noticed you yet, and you hastily take cover behind some wooden boxes that are stacked against the wall. You doubt that you'll be able to get through that door without them noticing. As you try to come up with a plan, to your shock, the door flies open.";
				now Resolution of Overmind's Retaliation is 8; [Normal size, sneak, stealthy]
			else: [Other sizes, Poor sneaking capability]
				say "     Not wishing to test your chances on a full frontal assault, you decide to try and sneak in through a side door. Were anyone watching, your attempts at stealth would probably cause laughter as your steps are dramatically slow and meticulously placed, almost to a theatrical level. Despite how foolish you look, you make it through the gate and down the side of the police station without alerting any of the automatons. Now that you are out of the sight of the main group, you return to walking normally and nearly immediately stand on a sharp piece of metal, biting one of your fingers to stifle your howl of pain. It would seem that you are more covert while appearing stupid than not. After a few seconds to overcome the pain, you round a corner and spy two of the metallic humanoids beside a sturdy-looking metal door standing silently. They don't seem to have noticed you yet, and you hastily take cover behind some wooden boxes that are stacked against the wall. You doubt that you'll be able to get through that door without them noticing. As you try to come up with a plan, to your shock, the door flies open.";
				now Resolution of Overmind's Retaliation is 9; [Normal size, sneak, not stealthy]
		say "     The heavy metal crashes into the two automatons, sending them face-first into the ground. Alexandra steps out of the doorway and tazes them both as they attempt to regain their feet. 'Quick, get inside. Leave them there. We don't have time,' she urgently whispers. You comply as she frantically gestures for you to follow her, bolting the door behind you. 'I hope that the Microchip Factory had some information of use to us since the automatons began surrounding us not long after you left. At first, it was slow, and I was able to drive them off without too much trouble, but then they came in larger numbers, and I didn't think it was safe to confront them. Our prisoner wasn't helpful either. She either refuses to speak, or laughs and tells us that we'll all be assimilated,' the tense policewoman states as she guides you through the police station to the reception area. You regretfully shake your head and tell her that it was a distraction, probably to allow them time to attack the police station and rescue the Master Mind. Her shoulders slump, but other than that, she maintains her air of professionalism, eyeing the gathering horde.";
	WaitLineBreak;
	say "     'I'm not sure how long we have before they decide to force an entry, and we don't stand a chance when they do. I'm not entirely sure why they haven't made a serious attempt yet, so we need to make the most of our fortune. Jimmy [if hp of Paula > 2]and Paula are [else]is [end if]helping the people we had rescued escape through a manhole in the maintenance closet near the locker rooms. Could you go and help there please?' the policewoman asks you. You ask her if there is anything you can do to defend the police station once the survivors have escaped. 'I would doubt it. It doesn't matter how capable you are, we are greatly outnumbered, and one mistake could lead to someone being lost or killed. My duty is to the people, not the building. Once the civilians are evacuated, I'll be retreating too, bringing up the rear.[if player is dominant]' Agreeing with her plan,[else] Now go, we're on borrowed time.' Having been given your orders,[end if] you gesture for the last few civilians to follow you and run to the locker rooms to help the corgi [if hp of Paula > 2]and fox [end if]coordinate the civilian evacuation.";
	if hp of Paula > 2: [Paula rescued]
		say "     Entering the locker room, you are met by the business end of a taser in the paws of Paula, though she quickly lowers it upon seeing who it is. 'I wondered when you would return, but you sure picked an exciting time to do so. The people you rescued should be waiting at the bottom of the ladder here', the vulpine nurse says, anxiety straining her speech. 'Is Alexandra with you?' Jimmy asks, supervising the last person as they clamber down the manhole. 'They should be fine waiting for a bit, but something down there may risk approaching eventually even with such a gathering.' You reply that the doberman should be coming soon, but wanted to make sure everyone else had got out first. The corgi's ears dip for a moment but a reassuring pat on the shoulder from Paula restores some of his usual cheerfulness. 'I'm sure she'll be fine. She's a tough cookie,' the small dog says in an attempt to reassure everyone.";
		WaitLineBreak;
		say "     There is a loud crash, and the sound of shattering glass echoes from the doorway behind you. It sounds like the assault has begun, and Alexandra still isn't here. 'I'll go down and make sure the civilians are alright and doing as they are told, though I suppose I'm a civilian too,' Paula informs you as she tucks the taser into her uniform and begins to descend through the manhole. [if player is submissive]'You two wait as long as you can for Alexandra to join you, but be careful, I doubt that I can lead these people anywhere without the help that you give.' [else]Jimmy seems determined not to leave without the doberman police officer unless absolutely necessary, so you tell the vixen that you will remain here with him until Alexandra joins you or the automatons require your retreat. [end if]With that, she disappears from view, leaving you to listen to the desecration of the police station. You hear a chillingly calm voice resonate down the passageway, 'Where are you, little police bitch? Where's the bravado and threats now that I'm not a prisoner? Come out, come out wherever you are.' It would appear that the Master Mind is loose, and it would seem that her ire is directed at Alexandra.";
	else: [Paula not rescued]
		say "     Entering the locker room, you are met by the business end of a taser, though with how much it is shaking and the short corgi holding it, you doubt that many people would be intimidated. Upon seeing that it is you and not an automaton, Jimmy lowers it and gives [if scalevalue of player is 5]your leg a quick hug, [else if scalevalue of player is 1]you a wave, [else]you a quick hug, [end if]the strain of being responsible for evacuating civilians showing on his grim face. 'I was beginning to worry that no one would be coming and that those horrible androids would force there way in here.' He seems to be fighting back tears, and you give him a scratch behind his ears and ask how the evacuation is going. 'That should be the last person,' he says, gesturing at a woman clambering through the manhole. 'Other than us and Alexandra, everyone is out and should be waiting at the bottom of the ladder. Anything hostile down there should be dissuaded from attacking such a large group but just in case, they have a few tasers and batons. Where is Alexandra by the way?' You reply that the doberman should be coming soon, but wanted to make sure everyone else had got out first. The corgi's ears dip for a moment but a reassuring pat on the shoulder from you restores some of his usual cheerfulness. 'I'm sure she'll be fine. She's a tough cookie,' the small dog says in an attempt to reassure himself as well as you.";
		WaitLineBreak;
		say "     There is a loud crash, and the sound of shattering glass echoes from the doorway behind you. It sounds like the assault has begun, and Alexandra still isn't here. 'I'll go down and make sure that the civilians are alright and doing as they are told, though I suppose I'm a civilian too,' Jimmy says, clipping the taser to his vest and approaching the hole in the floor. 'I wish I was as brave as you, but I wouldn't want to face Alexandra's fury when she gets here if I let the survivors get carried off by sewer monsters.' While he is making a joke of it, you can see that he is conflicted about staying and waiting for the doberman and ensuring the safety of the people below. As he disappears, you shout reassurance that you will wait for the police woman, no matter what. You continue to wait before hearing a chillingly calm voice resonate down the passageway, 'Where are you, little police bitch? Where's the bravado and threats now that I'm not a prisoner? Come out, come out wherever you are.' It would appear that the Master Mind is loose, and it would seem that her ire is directed at Alexandra.";
	say "     You are just beginning to worry about the doberman when you hear the hasty patter of paws on concrete, and she appears around the corner. 'Are all of the civilians evacuated? Yes? Good. [if hp of Paula > 2]Jimmy, down the hole now. [end if][if player is not defaultnamed][name of player][else]You[end if], with me just in case this doesn't work.To your surprise, she beckons for you to follow her back towards the approaching voice of the Master Mind, the mocking tones reverberating along the walls. As you walk, Alexandra explains what she has in mind, 'They seem to be quite mechanical and electronic in nature, so I'm hoping that I can disable them with water. If I can get them with the sprinklers then we may be able to end their menace to society.' Alexandra produces a lighter from her pocket and gives you a determined look. 'Ready to end this?'";
	WaitLineBreak;
	say "     'I'm ready, officer, but then again, you weren't asking me,' a gleefully malicious voice interjects. About five meters away down the corridor stands the Master Mind flanked by two automatons eyeing you with machine-like stares. Alexandra grips the lighter more tightly and growls at the metallic humanoids. 'You are such a slave to your emotions, officer. Wouldn't you like it to just be over? Just give up and I'll make your death quick,' the Master Mind promises, slowly approaching. Giving the automatons a defiant glare, Alexandra propels herself off of a wall and grabs hold of the pipes overhead. 'I didn't give up when people started changing, and I'm sure as hell not going to give up now,' she retorts before igniting the lighter and holding it beneath a sprinkler. With a hiss, the sprinklers along the corridor activate, spraying water over everyone. 'Let's see how you like that,' the police woman says, dropping back to the floor.";
	say "     Regrettably, the automatons seem unaffected. 'Did you really think that water would cause us to shutdown or malfunction? We are too advanced for such paltry weaknesses,' the Master Mind laughs, only a few meters away now. Alexandra gives you a look of dismay. Her gamble appears to have failed. Suddenly, the advancing automaton leader halts and begins to twitch and slump. Has the water worked after all? You share a hopeful glance with the doberman, but the Master Mind straightens up again, but when she speaks, the voice coming out isn't her own. 'Please forgive me for taking so long to come and meet you personally,' they apologize, the calm male voice, faintly Canadian in accent. 'Allow me to introduce myself. I am the Overmind, the central core of the automata that have overwhelmed your police station. As you can see, you have little chance of successfully overcoming my drones physically, and I doubt you would be much of a challenge to my intellect cognitively, yet you continue to stumble and struggle onwards nonetheless. This intrigues me.'";
	WaitLineBreak;
	say "     'Your behavior seems illogical, yet there must be some aspect of it that enhances your chances of survival or the fragility of the biological species would have resulted by now. The courage of the police woman, the loyalty of the corgi[if hp of Paula > 2], the vixen's determination[end if], and then there is your adaptability[if player is not defaultnamed], [name of player]. [else],' the controlling intelligence makes the Master Mind's body say, addressing you at the end. '[end if]You are an enigma to me. As such, I would like to be given the chance to understand each of you before something unfortunate inevitably befalls you in this city. It would be a grave error were I to let such seemingly advantageous traits be wasted when I could make use of them to improve upon my design. The basic drones rely on numbers to get things done and directly controlling them, shall we say, stifles my capabilities. The Master Mind is a step up, but even she has areas upon which I could improve. Obedience has its uses, but the drive with which you cling to survival is not something that I have managed to program. It would seem that it already has to be present in the lifeform.'";
	say "     'As such, if you come and submit yourselves to me, I may allow you a bit more autonomy than the majority of my mobile units. I calculate an elevated chance of success with at least a twelve percent increase in conversions of residents if you act as my agents in the city. Discuss it between yourselves if you must, but I can feel my processes slowing down limiting myself in this body. Just the two of you though. If you are accompanied by anyone else, I will not hesitate to remove you from the equation.' With that, the Master Mind slumps to the wet floor, her lights in her head flickering and hidden cogs whirring. As this activity stops, she gets back on her feet and looks placidly at you. 'It would seem that you are being given free will to decide whether you desire to be improved upon. Do not squander the chance that you have been given. If you wish to take advantage of this opportunity, you will find the Overmind at this location.' One of her underlings passes you a printout with an address in the [bold type]High Rise District.[roman type]";
	WaitLineBreak;
	say "     'Only the two of you have been extended this invitation. If anyone else accompanies you, you will all be cleansed of the remainder of your humanity.' With that, the automatons turn to leave, marching back through the streams from the sprinklers and splashing with each step. You and Alexandra follow them to the entrance to make sure that none of the metallic monsters remain, the Mastermind supervising their complete withdrawal. As the last of them leaves, you let out a sigh of relief, glad that it is finally over. However, your relief is short-lived as the Master Mind returns through the door again. 'It would appear that we did more structural damage than previously calculated when we assaulted the building. I predict that you have 74.5 seconds before the building crumbles. Were I capable of regret, I would apologize,' the emotionless being informs you before hastily exiting again.";
	say "     Simultaneously giving each other a terrified look, you and Alexandra sprint back through the hallways to the manhole where everyone was evacuated. Not giving you a choice, the doberman shepherds you down the ladder first, following right behind you and pulling the hatch down as she goes plunging you into near darkness. [if scalevalue of player is 5]It is only later that you wonder how you managed to fit through. [end if]As you descend, you can see the beams of torches below, the survivors apparently waiting for you. Upon reaching the slippery concrete below, [if hp of Paula > 2]Jimmy and Paula rush over to hug the both of you, the vixen being just as excited as the corgi. [else]Jimmy rushes over to hug the both of you, his tail appearing to vibrate with the speed it wags. [end if]The short dog is just about to say something when there is an almighty crash from above, the realization of what it is causing Alexandra to collapse to her knees. Luckily, no debris from the collapsing police station breaks through the hatch above.";
	WaitLineBreak;
	say "     Giving the policewoman time to grieve the loss of her home, your convoy of survivors trudge silently through the sewers until you reach an exit grate in the Warehouse District. Taking a key from her pocket, Alexandra opens the padlock and pushes the grating aside. 'I'm sure that some twisted part of the Master Mind destroyed the police station on purpose just to hurt me. I don't know where we can go next, but despite my personal loss, I don't believe there were any casualties,' she quietly says to you. Your group makes their way up onto the wharf and collapse, some against boxes while others sit with their legs dangling over the edge above the water. Jimmy [if hp of Paula > 2]and Paula walk over to you and stand [else]walks over to you and stands [end if]watching the water ripple below you. 'Where to next, boss?' the corgi addresses Alexandra. She remains silent for a moment, likely still thinking about how differently today could have turned out, before replying.";
	say "     'I don't know, Jimmy. I feel drained at the moment and just want to curl up, but I have to appear strong for these people, or I'll make the situation worse.' The small canine looks ashamed at asking more from the doberman when she has lost so much, but she scratches his ears to show that she doesn't hold it against him. 'I don't know of anywhere that can provide for this many people safely. Unless the military save us all soon, the only option may be to disperse them throughout the city but that seems like accepting defeat.' Eager to be a part of the conversation, Jimmy suggests the Smith Haven Mall, explaining that many people live there and that it even has security. 'A good idea. Have you come across anywhere else in your explorations that might be secure enough for them?' Alexandra asks you. You think for a moment to see if something comes to mind.";
	WaitLineBreak;
	if hp of Cadmea > 1: [Sanctuary Hotel known]
		say "     [bold type]You're sure that the Den Mother wouldn't mind providing them shelter. Do you suggest taking them to the Sanctuary Hotel? If not, Smith Haven Mall seems like a good option too.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes. It may be one of the safest places in the city.";
		say "     ([link]N[as]n[end link]) - No. The mall seems like a better option.";
		if player consents: [Hotel]
			say "     You mention the Sanctuary Hotel and the number of people ensuring its safety to the police officer. She seems hesitant to trust otherworldly beings, but upon further thought, accepts that they aren't that much stranger than many of the infected. 'Once they've had a moment to rest, we'll set off. When we're there, they can decide if they want to stay or attempt to survive elsewhere in the city,' Alexandra states. After giving the civilians time to recover a bit, Alexandra informs them of where you are going, with Jimmy throwing in words of support and motivation. With you guiding them through the city, it doesn't take too long before you reach the grimy back entrance to the hotel. 'I hope that you're sure about this[if player is not defaultnamed], [name of player][end if], because so far, I'm not impressed,' the doberman mutters. Ignoring her comment, you knock on the door and explain the situation to the doorman.";
			say "     He asks you to wait while someone fetches the Den Mother, leaving you to stand around impatiently. It only takes a few minutes for the door to be opened and Cadmea and the Pack Alpha, clothed for once, to beckon you all to enter. 'I'm very sorry to hear of your plight, officer...' Cadmea says to the doberman, waiting for her to introduce herself. 'Friedrich. Alexandra Friedrich, ma'am. I'm very sorry to intrude on you like this, but we couldn't think of many places that so many people could be safe.' The kitsune dismisses her concerns, saying that it isn't a problem and that providing sanctuary is the purpose of The Pack anyway. The skepticism that the police woman had displayed outside is dispelled utterly upon entering the lobby, the opulence and activity within contrasting with the building's outside appearance.";
			WaitLineBreak;
			say "     'As you can see, we have the capability to protect a large number of people in relative comfort, especially when compared to the struggle that many face in the wider city,' Sirius informs your group. 'We haven't yet run out of rooms, so each family group gets their own space should they want privacy. Food and clean water are available throughout the day, though what is available depends on what the patrols have managed to scavenge. These patrols also act as security, so you should be safe here if you decide to remain. All we ask in return is that you support each other and be willing to do your part to keep the Sanctuary running smoothly.' Many of the survivors begin nodding their heads, eager to have somewhere that they can feel safe again, and compared to the outside, the hotel is a paradise. Sirius escorts them to the front desk and begins recording their names and handing out room keys.";
			say "     'Well they seem content with the offer. How about you [if hp of Paula > 2]three?' Cadmea asks Alexandra, Jimmy, and Paula. [else]two?' Cadmea asks Alexandra and Jimmy. [end if]'I have some unfinished business that will be easier to complete if I stay with [if player is not defaultnamed][name of player][else if player is male]him[else]her[end if], so I shall decline for now,' Alexandra replies. Jimmy doesn't take long to decide either, responding, 'I'll stay with Alexandra and [if player is not defaultnamed][name of player][else]our other dashing hero[end if]too. They might need their cuddly sidekick.' [if hp of Paula > 2]'I may as well stay with them too then,' Paula says rolling her eyes and feigning indifference, but you know how close she is to you all. [end if] 'It's nice to see such close friendships,' Cadmea comments, causing Alexandra to blush slightly. 'We should probably get going though. Thank you for your kindness,' the doberman says sincerely. 'Think nothing of it. Everyone deserves someone to care for them,' the Den Mother replies, waving as you turn and leave.";
			if Resolution of Overmind's Retaliation is:
				-- 1:
					now Resolution of Overmind's Retaliation is 11;
				-- 2:
					now Resolution of Overmind's Retaliation is 12;
				-- 3:
					now Resolution of Overmind's Retaliation is 13;
				-- 4:
					now Resolution of Overmind's Retaliation is 14;
				-- 5:
					now Resolution of Overmind's Retaliation is 15;
				-- 6:
					now Resolution of Overmind's Retaliation is 16;
				-- 7:
					now Resolution of Overmind's Retaliation is 17;
				-- 8:
					now Resolution of Overmind's Retaliation is 18;
				-- 9:
					now Resolution of Overmind's Retaliation is 19;
		else: [Mall]
			say "     You agree with Jimmy that the mall may be the best for the civilians, the wolverine security surely able to provide them with sufficient security. Hopefully, its many residents will be willing to take them in. 'Once they've had a moment to rest, we'll set off. When we're there, they can decide if they want to stay or attempt to survive elsewhere in the city,' Alexandra states. After giving the civilians time to recover a bit, Alexandra informs them of where you are going, with Jimmy throwing in words of support and motivation. With you guiding them through the city, it doesn't take too long before you reach the parking lot in front of the expansive building. 'It looks friendly enough,' the doberman comments. 'Though I'm not sure what I think about security guards protecting them rather than a proper police officer.' Ignoring this petty rivalry, you approach the entrance, the herd following you.";
			say "     You are met at the door by one of the wolverines, luckily a relatively friendly one, and you explain the situation to him. He growls at you to wait for his superior to arrive and sends a passing mall rat to fetch her. It doesn't take long for the [if JennaRelationship > 1]familiar [end if]head of security to appear, following the mall rat that ran off earlier. Upon seeing Alexandra, her eyes widen. 'Alexandra,' she exclaims, the doberman responding, 'Jenna,' in kind. The two of them stare at each other for a few moments before the police officer lets out a sigh. 'I was hoping that these people would be able to take shelter in the mall for the foreseeable future as I can't provide them with protection any more,' Alexandra says. 'That doesn't sound like you. It must be something serious for you to be relying on outside help,' the wolverine queries. 'A large group of infected, automatons, destroyed the police station. I didn't know where else to bring them,' Alexandra replies.";
			WaitLineBreak;
			say "     Jenna immediately agrees upon hearing how serious the problem is. 'I'm so sorry, that sounds awful. Of course they can stay here. There should be enough room somewhere, and I'm sure that the other residents will make them feel right at home. As long as they have some method of paying, whether it is goods or services, the food court should be able to consistently supply food and water. Most of the wolverines you see around act as security, and once you're here, we'll fight tooth and claw to keep you safe. As long as you behave, they shouldn't be a problem, though be careful of some of the parking lot guards as I use that as punishment for if they get too violent, usually it's only one in particular...' Her comments are directed at both the civilians to inform them of what their life will be like, and Alexandra to assuage her concerns about their safety. Many of the survivors begin nodding their heads, eager to have somewhere that they can feel safe again, and compared to the outside, the mall is a paradise.";
			say "     'Well they seem content with the offer. How about you [if hp of Paula > 2]three?' Jenna asks Alexandra, Jimmy, and Paula. [else]two?' Cadmea asks Alexandra and Jimmy. [end if]'I have some unfinished business that will be easier to complete if I stay with [if player is not defaultnamed][name of player][else if player is male]him[else]her[end if], so I shall decline for now,' Alexandra replies. Jimmy doesn't take long to decide either, responding, 'I'll stay with Alexandra and [if player is not defaultnamed][name of player][else]our other dashing hero[end if]too. They might need their cuddly sidekick.' [if hp of Paula > 2]'I may as well stay with them too then,' Paula says rolling her eyes and feigning indifference, but you know how close she is to you all. [end if]'As you wish, though there always be a place here if you want it, Officer Friedrich. You've done a lot for the city, and a lot of people should be thankful,' the wolverine leader replies. 'We should probably get going though. Thank you for your kindness,' the doberman says sincerely, if a bit gruffly. Jenna waves as you leave, her subordinates escorting the civilians inside to relative safety.";
			if Smith Haven Mall Lot South is not known:
				now Smith Haven Mall Lot South is known;
			if Resolution of Overmind's Retaliation is:
				-- 11:
					now Resolution of Overmind's Retaliation is 21;
				-- 12:
					now Resolution of Overmind's Retaliation is 22;
				-- 13:
					now Resolution of Overmind's Retaliation is 23;
				-- 14:
					now Resolution of Overmind's Retaliation is 24;
				-- 15:
					now Resolution of Overmind's Retaliation is 25;
				-- 16:
					now Resolution of Overmind's Retaliation is 26;
				-- 17:
					now Resolution of Overmind's Retaliation is 27;
				-- 18:
					now Resolution of Overmind's Retaliation is 28;
				-- 19:
					now Resolution of Overmind's Retaliation is 29;
	else: [Hotel not known]
		say "     You agree with Jimmy that the mall may be the best for the civilians, the wolverine security surely able to provide them with sufficient security. Hopefully, its many residents will be willing to take them in. 'Once they've had a moment to rest, we'll set off. When we're there, they can decide if they want to stay or attempt to survive elsewhere in the city,' Alexandra states. After giving the civilians time to recover a bit, Alexandra informs them of where you are going, with Jimmy throwing in words of support and motivation. With you guiding them through the city, it doesn't take too long before you reach the parking lot in front of the expansive building. 'It looks friendly enough,' the doberman comments. 'Though I'm not sure what I think about security guards protecting them rather than a proper police officer.' Ignoring this petty rivalry, you approach the entrance, the herd following you.";
		say "     You are met at the door by one of the wolverines, luckily a relatively friendly one, and you explain the situation to him. He growls at you to wait for his superior to arrive and sends a passing mall rat to fetch her. It doesn't take long for the [if JennaRelationship > 1]familiar [end if]head of security to appear, following the mall rat that ran off earlier. Upon seeing Alexandra, her eyes widen. 'Alexandra,' she exclaims, the doberman responding, 'Jenna,' in kind. The two of them stare at each other for a few moments before the police officer lets out a sigh. 'I was hoping that these people would be able to take shelter in the mall for the foreseeable future as I can't provide them with protection any more,' Alexandra says. 'That doesn't sound like you. It must be something serious for you to be relying on outside help,' the wolverine queries. 'A large group of infected, automatons, destroyed the police station. I didn't know where else to bring them,' Alexandra replies.";
		WaitLineBreak;
		say "     Jenna immediately agrees upon hearing how serious the problem is. 'I'm so sorry, that sounds awful. Of course they can stay here. There should be enough room somewhere, and I'm sure that the other residents will make them feel right at home. As long as they have some method of paying, whether it is goods or services, the food court should be able to consistently supply food and water. Most of the wolverines you see around act as security, and once you're here, we'll fight tooth and claw to keep you safe. As long as you behave, they shouldn't be a problem, though be careful of some of the parking lot guards as I use that as punishment for if they get too violent, usually it's only one in particular...' Her comments are directed at both the civilians to inform them of what their life will be like, and Alexandra to assuage her concerns about their safety. Many of the survivors begin nodding their heads, eager to have somewhere that they can feel safe again, and compared to the outside, the mall is a paradise.";
		say "     'Well they seem content with the offer. How about you [if hp of Paula > 2]three?' Jenna asks Alexandra, Jimmy, and Paula. [else]two?' Cadmea asks Alexandra and Jimmy. [end if]'I have some unfinished business that will be easier to complete if I stay with [if player is not defaultnamed][name of player][else if player is male]him[else]her[end if], so I shall decline for now,' Alexandra replies. Jimmy doesn't take long to decide either, responding, 'I'll stay with Alexandra and [if player is not defaultnamed][name of player][else]our other dashing hero[end if]too. They might need their cuddly sidekick.' [if hp of Paula > 2]'I may as well stay with them too then,' Paula says rolling her eyes and feigning indifference, but you know how close she is to you all. [end if]'As you wish, though there always be a place here if you want it, Officer Friedrich. You've done a lot for the city, and a lot of people should be thankful,' the wolverine leader replies. 'We should probably get going though. Thank you for your kindness,' the doberman says sincerely, if a bit gruffly. Jenna waves as you leave, her subordinates escorting the civilians inside to relative safety.";
		if Smith Haven Mall Lot South is not known:
			now Smith Haven Mall Lot South is known;
		if Resolution of Overmind's Retaliation is:
			-- 11:
				now Resolution of Overmind's Retaliation is 21;
			-- 12:
				now Resolution of Overmind's Retaliation is 22;
			-- 13:
				now Resolution of Overmind's Retaliation is 23;
			-- 14:
				now Resolution of Overmind's Retaliation is 24;
			-- 15:
				now Resolution of Overmind's Retaliation is 25;
			-- 16:
				now Resolution of Overmind's Retaliation is 26;
			-- 17:
				now Resolution of Overmind's Retaliation is 27;
			-- 18:
				now Resolution of Overmind's Retaliation is 28;
			-- 19:
				now Resolution of Overmind's Retaliation is 29;
	WaitLineBreak;
	say "     You walk back to the street and decide that returning to the library may be a good idea. You need to decide what to do next, especially considering the Overmind's offer. Alexandra increases her pace to come parallel to your shoulder. 'I don't think I've said thank you enough for what you did today. You came to help us even though it put you in severe danger, and you helped save all of the civilians. I will be eternally grateful, and no matter your stance on the military intervention, what you did today was beneficent. If you don't mind, I thought that I might stay with you at the library for a while, especially while we decide what to do about the Overmind. Jimmy [if hp of Paula > 2]and Paula seem [else]seems [end if]keen as well, so if you have the room, we would appreciate it.' Smiling at her, you inform her that you're sure that there will be space somewhere, as long as they don't mind other people being in the library as well.";
	say "     [if hp of Paula > 2]None [else]Neither [end if]of them seem to mind the idea of there being other people. Jimmy even seems a little excited to be able to make new friends. Once you get inside, you let them go and explore before collapsing into a chair, exhausted after the events of the day.";
	follow the turnpass rule;
	follow the turnpass rule;
	now hunger of Alexandra is 1;
	now hunger of Jimmy is 1;
	if hp of Paula > 2:
		now hunger of Paula is 1;
	move Alexandra to Grey Abbey Library;
	move Paula to Grey Abbey Library;
	move Jimmy to Grey Abbey Library;
	if Stella is in the Police Lockerroom:
		move Stella to Bunker;
	move player to Grey Abbey Library;
	now Police Station Twelve is unknown;

Section 11 - Debug and Notes

to say badAlexandra_debug:
	say "DEBUG (Bad Girl Alexandra) -> HP: [HP of Alexandra], Level: [level of Alexandra], Lust: [lust of Alexandra], Libido: [libido of Alexandra], XP: [XP of Alexandra], Story 1: [if Alexandrastory is true]Y[else]N[end if], Story 2: [if Alexandrastory2 is true]Y[else]N[end if], Story 3: [if Alexandrastory3 is true]Y[else]N[end if], dobieanal = [if dobieanal is true]Y[else]N[end if], lastdobiemess: [lastdobiemess], lastAlexandraPast: [lastAlexandraPast], lastfuck: [lastfuck of Alexandra], AlexandraPregCount: [AlexandraPregCount], AlexandraGrowingPups: [AlexandraGrowingPups] <- DEBUG[line break]";
	say "DEBUG (Traits of Alexandra) [traits of Alexandra][line break]";
	say "DEBUG (NPC Chat) -> A_Candy: [if A_Candy is true]Y[else]N[end if], A_Sven: [if A_Sven is true]Y[else]N[end if], A_Fang: [if A_Fang is true]Y[else]N[end if], A_Philip: [if A_Philip is true]Y[else]N[end if], A_Mack: [if A_Mack is true]Y[else]N[end if], A_Sam: [if A_Sam is true]Y[else]N[end if], A_Snow: [if A_Snow is true]Y[else]N[end if], A_Sandra: [if A_Sandra is true]Y[else]N[end if], A_Sally: [if A_Sally is true]Y[else]N[end if], A_Sarah: [if A_Sarah is true]Y[else]N[end if], A_Sarah2: [if A_Sarah2 is true]Y[else]N[end if], A_Colleen: [if A_Colleen is true]Y[else]N[end if], A_Solstice: [if A_Solstice is true]Y[else]N[end if], A_David: [if A_David is true]Y[else]N[end if], A_Elijah: [if A_Elijah is true]Y[else]N[end if], A_Onyx: [if A_Onyx is true]Y[else]N[end if], A_Helen: [if A_Helen is true]Y[else]N[end if], A_Xerxes: [if A_Xerxes is true]Y[else]N[end if], A_Icarus: [if A_Icarus is true]Y[else]N[end if], no_AlexandraNPC: [no_AlexandraNPC] <- DEBUG[line break]";

to say goodAlexandra_debug:
	say "DEBUG (Good Girl Alexandra) -> HP: [HP of Alexandra], Story 1: [if Alexandrastory is true]Y[else]N[end if], Story 2: [if Alexandrastory2 is true]Y[else]N[end if], Story 3: [if Alexandrastory3 is true]Y[else]N[end if], lastAlexandraPast: [lastAlexandraPast], lastfuck: [lastfuck of Alexandra] <- DEBUG[line break]";
	say "DEBUG (Tasks) -> AT_Matt: [if AT_Matt is true]Y[else]N[end if], AT_Mouse: [if AT_Mouse is true]Y[else]N[end if], AT_Sandra: [if AT_Sandra is true]Y[else]N[end if], AT_Snow: [if AT_Snow is true]Y[else]N[end if], AT_Philip: [if AT_Philip is true]Y[else]N[end if], AT_RLD: [if AT_RLD is true]Y[else]N[end if], AT_Sven: [if AT_Sven is true]Y[else]N[end if], AT_Marks: [if AT_Marks is true]Y[else]N[end if], AT_Lisa: [if AT_Lisa is true]Y[else]N[end if], AT_Diego: [if AT_Diego is true]Y[else]N[end if], AT_Qytat: [if AT_Qytat is true]Y[else]N[end if], AT_Sarah: [if AT_Sarah is true]Y[else]N[end if], AT_Jimmy: [if AT_Jimmy is true]Y[else]N[end if], AT_Paula: [if AT_Paula is true]Y[else]N[end if], AT_Repair: [if AT_Repair is true]Y[else]N[end if], AT_Stella: [if AT_Stella is true]Y[else]N[end if], AT_Patrol: [if AT_Patrol is true]Y[else]N[end if], no_AlexandraTask: [no_AlexandraTask] <- DEBUG[line break]";
	say "DEBUG (Police Station) -> policerepair: [policerepair], lastpolicerepair: [lastpolicerepair], pr_task01: [if pr_task01 is true]Y[else]N[end if], pr_task02: [if pr_task02 is true]Y[else]N[end if], pr_task03: [if pr_task03 is true]Y[else]N[end if], pr_task04: [if pr_task04 is true]Y[else]N[end if], pr_completion: [pr_completion], population: [PoliceStationTwelvePopulation], infected population: [PoliceStationTwelveInfpop], <- DEBUG[line break]";


Section 12 - Debug Testing - Not for release

AlexandraDebugging is an action applying to nothing.
Understand "debugalexandra" as AlexandraDebugging.

carry out AlexandraDebugging:
	say "[badAlexandra_debug]";
	LineBreak;
	say "[goodAlexandra_debug]";

GoodAlexandra_Skipping is an action applying to nothing.
Understand "gaskip" as GoodAlexandra_Skipping.

carry out GoodAlexandra_Skipping:	[***note: imperfect skip]
	now HP of Alexandra is 65;
	move Alexandra to the Police Station Twelve;
	now Police Station Twelve is known;
	move player to Police Station Twelve;
	say "Now HP of Alexandra is [HP of Alexandra] and placed in the Police Station.";



Good Alexandra ends here.
