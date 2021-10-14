Version 2 of Spike by Wahn begins here.
[Version 1 - New Character - Wahn]
[Version 2 - New Naming Rules, Anal Scenes - Wahn]

[ HP of Spike                                                                        ]
[   0: not met yet                                                                   ]
[   1: recruited                                                                     ]
[  99: sent into the city                                                            ]
[ 100: sent back to Alexandra                                                        ]

[ MaxHP of Spike - who is his daddy?                                                 ]
[   1: Player                                                                        ]
[   2: Fang                                                                          ]
[   3: Korvin                                                                        ]
[   4: Carl                                                                          ]
[   5: Brutus                                                                        ]
[   6: Karel                                                                         ]
[   7: Isaac                                                                         ]
[   8: Random farmhand horsemen                                                      ]
[   9: Nelson                                                                        ]

[ thirst of Spike - what does he call the player?                                    ]
[  0: <name of Player>                                                               ]
[  1: standard setting - Boss                                                        ]
[  2: Don                                                                            ]
[  3: Capo                                                                           ]
[  4: Kingpin                                                                        ]
[  5: Oyabun                                                                         ]
[  6: Chief                                                                          ]
[ 11: Daddy                                                                          ]
[ 12: Dad                                                                            ]
[ 13: Stepdaddy                                                                      ]
[ 14: Stepdad                                                                        ]
[ 15: Master                                                                         ]
[ 21: Mommy                                                                          ]
[ 22: Mom                                                                            ]
[ 23: Stepmommy                                                                      ]
[ 24: Stepmom                                                                        ]
[ 25: Mistress                                                                       ]

[ Libido of Spike - Spike in subby position                                          ]
[  0: nothing yet                                                                    ]
[  1: talked into oral service / BJ                                                  ]
[  2: anal virginity taken (nicely)                                                  ]
[  3: repeat anal sex (nicely)                                                       ]
[  4: nothing yet                                                                    ]
[ 21: pressured into oral service / BJ                                               ]
[ 22: anal virginity taken (strict)                                                  ]
[ 23: repeat anal sex (strict)                                                       ]
[ 24: nothing yet                                                                    ]
[ 41: forced into oral service / BJ                                                  ]
[ 42: anal virginity taken (forcefully)                                              ]
[ 43: repeat anal sex (forceful)                                                     ]
[ 44: nothing yet                                                                    ]

[ lust of Spike - sex tracking                                                       ]
[  0: never had sex with the player                                                  ]
[  1: got blown by the player                                                        ]
[  2: fucked the player's pussy                                                      ]
[  3: fucked the player's ass                                                        ]
[  4: fucked the player's pussy + ass                                                ]

[ Intelligence - transformation knowledge                                            ]
[  0: never discussed anything                                                       ]
[  0: never discussed anything                                                       ]
[  0: never discussed anything                                                       ]

[ Energy - Relationship with Tehuantl                                                ]
[   0: never met                                                                     ]
[   1: they're training                                                              ]
[   2: Spike got a BJ, player watched                                                ]
[   3: Spike got a BJ, player didn't watch                                           ]
[   4: shared jerking, player watched                                                ]
[   5: shared jerking, player did not watch                                          ]
[   6: Tehuantl has permission t get fucked by Spike                                 ]
[  50: Player commanded T to just have oral from now on                              ]
[ 100: Player stopped things cold between them                                       ]

[ Stamina - Relationship with Urik (controlled Urik, not friends with the player)    ]
[   0: never interacted                                                              ]
[   1: Spike got goaded into training                                                ]
[   2: Spike got his first 'protein shake'                                           ]
[   3: Spike got his second 'protein shake'                                          ]
[   4: new weights for Spike, future trainings always with shakes                    ]
[   5: shake + shirtless pushups done                                                ]
[   6: Spike got a jockstrap now                                                     ]
[  50: Spike won't accept any drinks from Urik from now on                           ]
[  51: Urik knows that Spike won't accept any drinks from now on                     ]
[  52: training without shakes from now on                                           ]
[  53: training without shakes - shirtless pushups done                              ]


[ Dexterity - Relationship with Urik (warrior/friend Urik)                           ]
[   0: never interacted                                                              ]
[   1: Spike got goaded into training                                                ]
[   2: Spike got his first (normal energy) drink                                     ]
[   3: Spike got his second (normal) drink                                           ]
[   4: new weights for Spike                                                         ]
[   5: training without shakes, shirtless pushups done                               ]
[   6: Spike got a jockstrap now                                                     ]
[   7: storytime with Urik done                                                      ]
[   8: Urik and Spike did Yoga                                                       ]
[   9: Urik and Spike did weightlifting                                              ]
[ 100: Player shut down the workout path                                             ]

[ TODO: add talk option about the cigarettes                                         ]

thirst of Spike is usually 1. [standard setting change]
MaxHP of Spike is usually 1. [for now the player is always the father as the default]
SpikeEventCooldown is a number that varies. [@Tag:Notsaved]
SpikeEventCooldown is usually 20000.

an everyturn rule:
	if HP of Spike is 1 and doberman companion is not tamed: [error fix]
		add "Tamed" to Traits of doberman companion;
		now doberman companion is tamed;
		now thirst of Spike is 1; [default "Boss" name]
	if doberman companion is tamed and doberman companion is not listed in companionList of Player and (Spike is in NPC Nexus or Spike is nowhere): [if the player had him as companion as they exported, he won't be in his room]
		move Spike to Sitting Area;
	if MaxHP of Spike is 0:
		now MaxHP of Spike is 1;

a postimport rule:
	if "FatherCount_Correct" is not listed in Traits of Spike:
		if MaxHP of Spike is:
			-- 1:
				decrease AlexandraPlayerPups by 1; [player Spike]
			-- 2:
				decrease AlexandraFangPups by 1; [Fang Spike]
			-- 3:
				decrease AlexandraKorvinPups by 1; [Korvin Spike]
			-- 4:
				decrease AlexandraCarlPups by 1; [Carl Spike]
			-- 5:
				decrease AlexandraBrutusPups by 1; [Brutus Spike]
			-- 6:
				decrease AlexandraKarelPups by 1; [Karel Spike]
			-- 7:
				decrease AlexandraIsaacPups by 1; [Isaac Spike]
			-- 8:
				decrease AlexandraFarmhandPups by 1; [Random Farmhand Horseman]
			-- 9:
				decrease AlexandraNelsonPups by 1; [Nelson]

Section 1 - Introduction

instead of navigating Grey Abbey Library while (Alexandra is in Grey Abbey Library and "Missing Puppy" is not listed in Traits of Alexandra and Libido of Alexandra > 2 and HP of Spike is 0):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Missing puppy[line break]";
	if HP of Alexandra < 3 or HP of Alexandra is 4: [bad Alexandra, never been pregnant or post-pregnancy]
		project the figure of Alexandra_clothed_icon;
	else if HP of Alexandra is 3 or HP of Alexandra is 5: [bad Alexandra, pregnant]
		if lust of Alexandra < 13: [slightly pregnant]
			project the figure of Alexandra_clothed_preg_icon;
	else:
		project the figure of Alexandra_face_icon;
	say "     As you arrive at the library, you find Alexandra leaned against the edge of the front desk, pushing herself to a stand immediately as she hears the door open. The ex-cop seems tense and actually worried, but clearly not about yourself, as she slumps back once she realizes it is you. She puts her guard back up a second later, showing the typical bad-bitch expression, but you can't miss the fact that she's focused on the front door and appears to be waiting for someone. ";
	if MaxHP of Spike is 2: [Fang is the dad for Spike]
		say "Curiosity starts to build further in your mind as you catch sight of Fang sitting fairly close to the doberwoman, and similarly attentive to anyone entering. The wolf looks back and forth between you and Alexandra, then settles down again. ";
	else if MaxHP of Spike is 3 and gshep is not listed in companionList of Player: [Korvin is the dad for Spike, not accompanying the player]
		say "Curiosity starts to build further in your mind as you catch sight of Korvin standing nearby too, being similarly attentive to anyone entering. The German shepherd is pacing slowly, his gaze fairly focused on the door, nodding hello to you but then looking back past you at who might come in next. ";
	else if MaxHP of Spike is 4 : [Carl is the dad for Spike]
		say "Curiosity starts to build further in your mind as you catch sight of Carl standing nearby too, being similarly attentive to anyone entering. The husky soldier did stand ready for action when the door opened, but now makes himself relax again, coming down into a 'standing guard' posture, glancing at Alexandra for a moment when he does so. ";
	else if MaxHP of Spike is 5 and demon brute is not listed in companionList of Player and DBCaptureQuestVar > 5 and DBCaptureQuestVar < 99: [Brutus is the dad for Spike, Brutus not out and is cleansed]
		say "Curiosity starts to build further in your mind as you catch sight of Brutus standing nearby too, being similarly attentive to anyone entering. The demon brute is a towering figure of wound-up anger, glaring intensely at the door. When he sees it is 'just' you coming in, a snarl crosses the face of the light-purple brute and he punches the side of the stairway, leaving a fist-sized dent in it. Bleeding some of his tension off that way, he then glances at Alexandra for a moment before going back to watch the door.";
	else:
		say "Curiosity starts to build further in your mind as you catch sight of Alexandra's children peeking over the edge of the desk, then ducking out of sight again.";
	say "Stepping up to Alexandra, you ask her what's up. 'It's [if MaxHP of Spike is 1]our [else]my [end if]son! We had a fight yesterday! He came to me with some stupid ideas about 'being his own man' and so on! Then earlier today, I found this!' She angrily snatches a piece of paper up from the desk behind her, crumpling it together as she waves her paw-hand. 'That stupid boy, he's run off! Already went looking for him, [if MaxHP of Spike is 2]so did Fang, [else if MaxHP of Spike is 3]so did Korvin, [else if MaxHP of Spike is 4]so did Carl, [else if MaxHP of Spike is 5]so did Brutus, [end if]but there's been no sign of my missing pup! He's the oldest, and I thought he'd be more mature, but he's acting like a stupid kid! I was hoping he might just come back when he'd had time to blow off some steam.' She bares her teeth and barks in frustration and worry, then tears the note to shreds. 'He should have stayed here, where I can watch out for him!'";
	LineBreak;
	say "     [bold type]How do you react?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Hug her and say that things will be okay.";
	say "     [link](2)[as]2[end link] - Immediately go outside and search for the boy.";
	say "     [link](3)[as]3[end link] - Keep Alexandra [if MaxHp of Spike > 1 and MaxHp of Spike < 5]and her son's father [end if]company as all of you wait together.";
	say "     [link](4)[as]4[end link] - Try to console her by saying that the son of a tough bitch like her should have no problems in this neighborhood.";
	say "     [link](5)[as]5[end link] - Shrug and say that she can always have another kid.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 5:
		say "Choice? (1-5)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4 or calcnumber is 5:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to hug her, [link]2[end link] to search for the dobie, [link]3[end link] to join in for the waiting, [link]4[end link] to try to console her or [link]5[end link] to shrug and suggest having a 'replacement'.";
	if calcnumber is 1:
		LineBreak;
		say "     Knowing that you couldn't say anything to take away her worry, you walk up to Alexandra and pull her into a comforting embrace, just holding her in quiet support. ";
		if MaxHP of Spike is 2: [Fang is the dad for Spike]
			say "Looking to the side, you wave Fang closer and scritch his neck-fur as the wolf trots up to you. ";
		else if MaxHP of Spike is 3 and gshep is not listed in companionList of Player: [Korvin is the dad for Spike, not accompanying the player]
			say "Looking to the side, you wave Korvin closer and lay an arm around him too, keeping the German shepherd close. ";
		else if MaxHP of Spike is 4 : [Carl is the dad for Spike]
			say "Looking to the side, you wave Carl closer and lay an arm around him too, giving his shoulder a squeeze. He accepts your touch, but still keeps his gaze focused on the door, keeping up the guard. ";
		else if MaxHP of Spike is 5 and demon brute is not listed in companionList of Player and DBCaptureQuestVar > 5 and DBCaptureQuestVar < 99: [Brutus is the dad for Spike, Brutus not out and is cleansed]
			say "Looking to the side, you wave Brutus closer and take his hand in yours, giving it a comforting squeeze that makes him relax from digging his sharp claws into the palm of his hand, where they were drawing a slow trickle of blood before. ";
		say "You hold onto each other for a long while, waiting for the return of the lost pup. With minute after minute stretching endlessly, everyone's worry builds despite everything you can do, until Alexandra eventually leans hear head against you and says, 'What if he doesn't come back?' As she does so, a frightened whine can be heard from behind the desk, and turning half around, you see several pairs of small-ish, pointy doberman ears peek up there, as the owners didn't duck far enough to be fully out of sight. Alexandra sighs and goes to take care of her remaining children.";
		TraitGain "Missing Pup_affectionate reaction" for Alexandra;
	else if calcnumber is 2:
		LineBreak;
		say "     Asking Alexandra to tell you what to look for, you get a description of a slender and lanky young dobie, then step outside and do your own search of the area for [if MaxHP of Spike is 1]your[else]her[end if] son. After a long while of searching, you actually spot a canine ducking into an alley some distance ahead of you and run to catch up. Searching the nooks and crannies of that blind alley, you find them hiding behind a dumpster - only to see that it's a scrawny female dobie, who doesn't want anything to do with you. Frustrated, you leave the homeless dog to scramble away and continue the hunt for Alexandra's son. Yet even as you extend your search radius for another and another block range, there is no sign of him, so you return empty handed a few hours later.";
		TraitGain "Missing Pup_search reaction" for Alexandra;
		follow the turnpass rule;
	else if calcnumber is 3:
		LineBreak;
		say "     Knowing that you couldn't say anything to take away her worry, you walk up to Alexandra and sit on the edge of the desk with her, one arm loosely around her shoulders to lend support. ";
		if MaxHP of Spike is 2: [Fang is the dad for Spike]
			say "Looking to the side, you wave Fang closer and place your hand on his head. ";
		else if MaxHP of Spike is 3 and gshep is not listed in companionList of Player: [Korvin is the dad for Spike, not accompanying the player]
			say "Looking to the side, you wave Korvin closer and pat the desk beside you, then lay an arm around him too as he sits down, keeping the German shepherd close. ";
		else if MaxHP of Spike is 4 : [Carl is the dad for Spike]
			say "Looking to the side, you wave Carl closer and pat the desk beside you, then lay an arm around him too, giving his shoulder a squeeze. He accepts your touch, but still keeps his gaze focused on the door, keeping up the guard. ";
		else if MaxHP of Spike is 5 and demon brute is not listed in companionList of Player and DBCaptureQuestVar > 5 and DBCaptureQuestVar < 99: [Brutus is the dad for Spike, Brutus not out and is cleansed]
			say "Looking to the side, you wave Brutus closer and take his hand in yours, giving it a comforting squeeze that makes him relax from digging his sharp claws into the palm of his hand, where they were drawing a slow trickle of blood before. ";
		say "Together, you hold a silent watch, waiting for the return of the lost pup. With minute after minute stretching endlessly, everyone's worry builds despite everything you can do, until Alexandra eventually leans hear head against you and says, 'What if he doesn't come back?' As she does so, a frightened whine can be heard from behind the desk, and turning half around, you see several pairs of small-ish, pointy doberman ears peek up there, as the owners didn't duck far enough to be fully out of sight. Alexandra sighs and goes to take care of her remaining children.";
		TraitGain "Missing Pup_affectionate reaction" for Alexandra;
	else if calcnumber is 4:
		LineBreak;
		say "     Clearing your throat and saying in a consoling tone that any child of a tough as nails bitch like her ";
		if MaxHP of Spike is 2: [Fang is the dad for Spike]
			say "and a wild, powerful wolf ";
		else if MaxHP of Spike is 3 and gshep is not listed in companionList of Player: [Korvin is the dad for Spike, not accompanying the player]
			say "and a badass street dog ";
		else if MaxHP of Spike is 4 : [Carl is the dad for Spike]
			say "and a trained soldier ";
		else if MaxHP of Spike is 5 and demon brute is not listed in companionList of Player and DBCaptureQuestVar > 5 and DBCaptureQuestVar < 99: [Brutus is the dad for Spike, Brutus not out and is cleansed]
			say "and the demonic powerhouse that Brutus is ";
		say "should have no problem outside in the vicinity of the library, you see Alexandra pull a grimace, then say, 'Maybe. If he stays close and doesn't wander into the path of something really nasty, like a wyvern, or...' She stops herself from painting more dark pictures in her mind, shouting in frustration, 'He should just have stayed here! My stupid, little boy!' and making fists with both hands, hitting the front of the desk. As she does so, a frightened whine can be heard from behind it, where you see several pairs of small-ish, pointy doberman ears peek up, as the owners didn't duck far enough to be fully out of sight. Alexandra sighs and goes to take care of her remaining children hiding there.";
		TraitGain "Missing Pup_tough reaction" for Alexandra;
	else if calcnumber is 5:
		LineBreak;
		say "     The words have barely left your mouth before Alexandra bares her teeth, with a furious growl building in her throat. [if Libido of Alexandra > 5]Even though she has numerous children, saying this about her firstborn seems to have been a bad idea. [end if]The fingers of her paw-hands curl as she almost seems ready to tear you limb from limb, only to stop herself as a frightened whine can be heard from behind the front desk. Glancing aside, you see several pairs of small-ish, pointy doberman ears peek up behind it, as the owners didn't duck far enough to be fully out of sight. 'Sometimes, you really are a FUCKING BASTARD!' Alexandra barks at you loud enough to echo throughout the whole interior of the library, then she makes herself turn away from you and goes to take care of her remaining children hiding behind the front desk.";
		TraitGain "Missing Pup_bastard reaction" for Alexandra;
	TraitGain "Missing Puppy" for Alexandra;
	decrease Libido of Alexandra by 1; [one less teen following Alexandra around]
	now LastFuck of Spike is turns; [using this to track the turn in which the player learns of his absence - but yeah, he got himself laid out there too :P ]
	if MaxHP of Spike is:
		-- 1:
			decrease AlexandraPlayerPups by 1; [player Spike]
		-- 2:
			decrease AlexandraFangPups by 1; [Fang Spike]
		-- 3:
			decrease AlexandraKorvinPups by 1; [Korvin Spike]
		-- 4:
			decrease AlexandraCarlPups by 1; [Carl Spike]
		-- 5:
			decrease AlexandraBrutusPups by 1; [Brutus Spike]
		-- 6:
			decrease AlexandraKarelPups by 1; [Karel Spike]
		-- 7:
			decrease AlexandraIsaacPups by 1; [Isaac Spike]
		-- 8:
			decrease AlexandraFarmhandPups by 1; [Random Farmhand Horseman]
		-- 9:
			decrease AlexandraNelsonPups by 1; [Nelson]
	add "FatherCount_Correct" to Traits of Spike; [check for imports]

instead of navigating Grey Abbey Library while (Alexandra is in Grey Abbey Library and "Missing Puppy" is listed in Traits of Alexandra and HP of Spike is 0 and LastFuck of Spike - turns > 24):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	now Spike is in Grey Abbey Library;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Meeting Spike[line break]";
	project the figure of Spike_face_icon;
	say "     Arriving back at the library, you are greeted by the sight of a male anthro doberman, leaning against the building's exterior wall close to the front entrance. He is casually smoking a cigarette, blowing out smoke as he watches you come closer. The doberman is a young adult, eighteen or nineteen from the looks of it, not that it means much anymore these days. He is dressed in a pair of ripped jeans, a white mesh shirt showing off his toned chest, as well as a tight-fitting collar around his neck, studded with spikes. With half of his head hair shaved off and the other half dyed neon-green, he certainly has a memorable look. 'Hey there, I'm Spike,' the canine says to you in a firm tone, clearly taking care not to sound too eager. 'With you being the boss around here, I got a proposition,' he adds and takes a pull from his cigarette, blowing a puff of smoke into the air after a short moment.";
	say "     'I've had enough of being just one of the pack, and I was thinking that you need a right-hand man. I'm plenty tough and wanna see some action out there in the city, not just a few blocks around the lair. Come on, if you agree, the queen bitch in the library can't tell me off no more.' His last comment, combined with the young man's physical appearance finally makes something click in your mind, and you realize with a start who and what he is. You are talking with Alexandra's missing puppy, who clearly had a bit of a growth spurt since running off recently, turning into this young man. From the looks of it, he's inherited a lot of the 'bad dog' attitude of his mother, and has decided to make a name for himself in a typical 'young tough guy' fashion - by becoming a hanger-on for the biggest, baddest person he knows: You. After all, you did make Alexandra your bitch.";
	WaitLineBreak;
	project the Figure of Spike_clothed_icon;
	say "     With this new realization in mind, you take another look at Spike: this young canine looks about 18 years old and clearly has been working out a bit, giving him a toned but not too bulky physique that should serve him well in a fight. He shows a stoic and tough expression that you think must have been practiced and perfected in front of a mirror, yet he can't quite hide the excitement betrayed by his slowly wagging tail. When he realizes what you are looking at, Spike concentrates to stop the movement behind his back. The tension in his whole being is palpable, with the young dog waiting for you to reply to his offer.";
	LineBreak;
	say "     [bold type]What do you tell Spike as your answer?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Take him on as your companion. He'll learn a lot.";
	say "     [link](2)[as]2[end link] - Hug him and say that you and Alexandra were worried about him.";
	say "     [link](3)[as]3[end link] - Tell him to be a good doggie and go back to Alexandra.";
	say "     [link](4)[as]4[end link] - Say that you'll need to see some more of him to decide. (Make him strip)[line break]";
	say "     [link](5)[as]5[end link] - If he's so tough, he can just set out alone. (Send him away)[line break]";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 5:
		say "Choice? (1-5)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4 or calcnumber is 5:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to accept him, [link]2[end link] to hug him, [link]3[end link] to send him back to Alexandra, [link]4[end link] to make him strip down or [link]5[end link] to send him away.";
	if calcnumber is 1:
		LineBreak;
		say "     [SpikeAccepted]";
	else if calcnumber is 2: [hug him]
		say "     Stepping up to Spike, you wrap your arms around him and give the young doberman a hug, then say that Alexandra [if MaxHP of Spike is 1]and yourself[else], his father and yourself[end if] were worried about where he got off to. As you do so, the anthro stiffens his back, clearly uncomfortable at the sudden closeness, and quickly ducks out of the embrace, stepping to the side. 'Hey! Don't! Don't do that! I'm a real man and don't need to be babied!' For a second, a sulky tone creeps into his voice, before he shakes that off and does his best to sound mature. 'I've been doing great out in the city! I don't just wanna go back to obey my bitch of a mom! Come on! You know that I can be very useful for you. I could keep your back protected when you fight a group of people, or be a lookout, and I have a [italic type]really[roman type] good nose too. I could sniff it out if someone wants to hide themselves or some nice stuff from you. Or all sorts of other things. You'd regret not having me along!' He's really putting everything he has into this plea, trying to show his toughness, but at the same time a bit of the typical 'puppy dog eyes' appear in his expression too.";
		say "     [bold type]How do you react to this?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Accept him as your companion. He doesn't have to go back to Alexandra.";
		say "     ([link]N[as]n[end link]) - Nope. This dog is gonna go straight back to mommy.";
		if Player consents:
			LineBreak;
			say "     [SpikeAccepted]";
		else:
			LineBreak;
			say "     Telling the young man that no, you [italic type]actually[roman type] just want him to go back to his mother and help her keep on top of the unruly bunch of his siblings, Spike growls under his breath. Flinging the cigarette away with an angry flick of his wrist, the anthro canine grumbles, 'This is fucking stupid,' and looks to the ground sulkily. For a moment, it seems like he'll just reject your decision, but then he suddenly looks up at you and barks out, 'I thought that you'd be different. Like [if MaxHP of Spike is 1]a proper dad [else]a real leader[end if] or something!' And with that, he turns his back to you, shuffling off to get back into the library.";
			increase Libido of Alexandra by 1; [one more teen following Alexandra around]
			if MaxHP of Spike is:
				-- 1:
					increase AlexandraPlayerPups by 1; [player Spike]
				-- 2:
					increase AlexandraFangPups by 1; [Fang Spike]
				-- 3:
					increase AlexandraKorvinPups by 1; [Korvin Spike]
				-- 4:
					increase AlexandraCarlPups by 1; [Carl Spike]
				-- 5:
					increase AlexandraBrutusPups by 1; [Brutus Spike]
				-- 6:
					increase AlexandraKarelPups by 1; [Karel Spike]
				-- 7:
					increase AlexandraIsaacPups by 1; [Isaac Spike]
				-- 8:
					increase AlexandraFarmhandPups by 1; [Random Farmhand Horseman]
				-- 9:
					increase AlexandraNelsonPups by 1; [Nelson]
			TraitGain "Spike_returned" for Alexandra;
			now HP of Spike is 100;
			now Spike is nowhere;
	else if calcnumber is 3: [send him back to Alexandra]
		LineBreak;
		say "     As you tell the young dog that he should go back to his mother, Spike's expression just gets more determined and he pushes himself off from the wall to step closer and persuade you. 'Come on! You know that I can be very useful for you. I could keep your back protected when you fight a group of people, or be a lookout, and I have a [italic type]really[roman type] good nose too. I could sniff it out if someone wants to hide themselves or some nice stuff from you. Or all sorts of other things. You'd regret not having me along!' He's really putting everything he has into this plea, trying to show his toughness, but at the same time a bit of the typical 'puppy dog eyes' creeps into his expression too.";
		say "     [bold type]Will you change your mind?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes, fine. He can follow you around.";
		say "     ([link]N[as]n[end link]) - Nope. This dog is gonna go straight back to mommy.";
		if Player consents:
			LineBreak;
			say "     [SpikeAccepted]";
		else:
			LineBreak;
			say "     Telling the young man that no, you [italic type]actually[roman type] just want him to go back to his mother and help her keep on top of the unruly bunch of his siblings, Spike growls under his breath. Flinging the cigarette away with an angry flick of his wrist, the anthro canine grumbles, 'This is fucking stupid,' and looks to the ground sulkily. For a moment, it seems like he'll just reject your decision, but then he suddenly looks up at you and barks out, 'I thought that you'd be different. Like a real leader or something!' And with that, he turns his back to you, shuffling off to get back into the library.";
			increase Libido of Alexandra by 1; [one more teen following Alexandra around]
			if MaxHP of Spike is:
				-- 1:
					increase AlexandraPlayerPups by 1; [player Spike]
				-- 2:
					increase AlexandraFangPups by 1; [Fang Spike]
				-- 3:
					increase AlexandraKorvinPups by 1; [Korvin Spike]
				-- 4:
					increase AlexandraCarlPups by 1; [Carl Spike]
				-- 5:
					increase AlexandraBrutusPups by 1; [Brutus Spike]
				-- 6:
					increase AlexandraKarelPups by 1; [Karel Spike]
				-- 7:
					increase AlexandraIsaacPups by 1; [Isaac Spike]
				-- 8:
					increase AlexandraFarmhandPups by 1; [Random Farmhand Horseman]
				-- 9:
					increase AlexandraNelsonPups by 1; [Nelson]
			now HP of Spike is 100;
			now Spike is nowhere;
	else if calcnumber is 4: [make him strip]
		LineBreak;
		project Figure of Spike_naked_soft_icon;
		say "     Crossing your arms, you look Spike up and down and let out a noncommittal grunt, knowing that he'll not just give up this easily. Spike's expression indeed just gets more determined and he pushes himself off from the wall to step closer and persuade you. 'Come on! You know that I can be very useful for you. I could keep your back protected when you fight a group of people, or be a lookout, and I have a [italic type]really[roman type] good nose too. I could sniff it out if someone wants to hide themselves or some nice stuff from you. Or all sorts of other things!' This is where you jump in again, raising one eyebrow and telling him that you'd need to see more of him to decide on that. Like his muscles, and... everything else, you add with a casual wave at his body. Getting nervous about potentially losing his chance, the young man opens his mouth, then closes it and swallows before quickly barking out, 'I'll show you!'";
		say "     A grin creeps over your face as you watch the dobie hastily pull his mesh shirt over his head and throwing it aside, then tries to impress you by flexing his abs, pecs and arms. You watch his posturing for a moment, then ask about his [']other['] muscles, with the young man seeming surprised as you mention thighs, calves and whatnot. Spike's fingers fly to the beltline, followed by popping the button of his jeans and wrenching them down, then kicking the pants off. His gloves quickly follow until the only thing he's still wearing his the collar around his neck. For a moment after turning to face you, the young man covers his crotch with both hands, before giving himself a push and pulling them away to reveal his sheath and balls. Looking at you anxiously, Spike does his best to flex and pose, showing that he does have some nice muscle tone on an overall fairly thin and wiry body.";
		say "     You watch him for a moment, then make a spinning motion with your hand. Spike does as instructed, allowing your hungry gaze to take in all of his body, from the tips of his ears, over nicely perky buns down to the paws. As he finishes his rotation, the anthro almost trembles with tension and gives you a hopeful look. He seems really anxious to please you.";
		say "     [bold type]What's your verdict now?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yeah, you think you can make room for someone like him being your companion. He's convinced you.";
		say "     ([link]N[as]n[end link]) - Nope, looking at him, Spike just doesn't have what you need.";
		if Player consents:
			LineBreak;
			say "     Nodding to the dobie that you've seen enough, you wait for him to dress again. [SpikeAccepted]";
			TraitGain "Stripping Demanded" for Spike; [TODO: reference this in the rape scene]
		else:
			LineBreak;
			say "     Standing naked before you, Spike visibly deflates, then flat out growls under his breath a second later, throwing you a hostile stare. 'This is fucking stupid!' he barks in frustration, snatching up the armful of his clothes and just running away, turning his back on you, the library and Alexandra.";
			now HP of Spike is 99;
			now Spike is nowhere;
	else: [send him away - you monster!]
		LineBreak;
		say "     As you tell the young dog that he should go off on his own, he freezes in motion for a second, not sure what to reply. Clearly, this is one option that he hadn't even considered when he played through things in his mind. You see him swallow nervously, glancing to the library entrance for a second before he shakes his head to himself. 'Okay then, I'll do it,' Spike says, his firm tone sounding just a little bit brittle to your ears as he pushes himself off from the wall. 'I'm gonna go make my own way, out there. Alone in the city,' he adds, taking a few slow steps down the road as if waiting to hear you say that he passed the test and that you'll keep him now. But no, all you give him is a wish for good luck, which leaves Spike standing there for a moment longer, his back turned to you, before he runs away, not stopping for one second before he is out of sight.";
		now HP of Spike is 99;
		now Spike is nowhere;
	now PlayerMet of Spike is true;

to say SpikeAccepted:
	say "As you agree to take Spike along as your companion, his tail starts wagging up a storm and the young man says excitedly, 'Right on! We'll make this city ours! Let's have some fun!' With his hand lowering to rub the crotch of his jeans, you have little doubt what sort of 'fun' he expects to soon have. Taking another drag from his smoke, the anthro canine then flicks it aside and takes position by your side, steeling his expression to be properly tough and just a bit overbearing, as he expects the right-hand man of 'The Boss' would need to be. ";
	if (number of bunkered people + number of booked people > 2): [anyone there besides just Spike?]
		if (number of bunkered people + number of booked people > 3):
			say "Seeing some of the other people in the library as you walk around with your new companion following, you decide it might be best to call everyone in the building together and explain what's going on between [if MaxHP of Spike is 1]your son [end if]Spike and you. [bold type]Within a few minutes, everyone is gathered and you introduce Spike to them, to the following reactions:[roman type][line break]";
		else if (number of bunkered people + number of booked people is 3):
			say "Seeing some movement of the other inhabitant of the library, you decide it might be best to explain what's going on between [if MaxHP of Spike is 1]your son [end if]Spike and you. Calling everyone together, you introduce Spike to them, to the following reactions:";
		else:
			say "The two of you talk a little more about what's going on around the library, then Spike goes upstairs to hang out in a corner he claimed as his own.";
		LineBreak;
		if Alexandra is booked or Alexandra is bunkered:
			say "     Alexandra crosses her arms and looks Spike up and down, her gaze lingering on the collar around his neck before meeting his gaze. 'Think you're ready to play with the big boys now, eh? Well, I won't stop you - gotta learn to stand on your own feet, and make what mistakes you must.' Glancing at you, she ";
			if MaxHP of Spike is 1: [player spike]
				if "Cuckold" is listed in Feats of Player:
					say "adds with a bit of a smirk, 'Went straight to daddy, eh? Who knows, you might be getting laid more often than you think, boy!' She doesn't lay out the fact that she's been cuckolding you any more clearly than that, but with the three of you knowing what she means, you feel the burn. A little seed of doubt sprouts in the back of your mind, as you can't help but wonder if you might end up submissive to your son too, or if he could show you up with future conquests by taking what is yours. Finally, Alexandra adds, 'You'll be able to learn a lot, pup. Just be sure to keep on the sidelines of any fight.' ";
				else:
					say "adds, 'Went straight to daddy, eh? Well, at least you picked someone strong who knows what's what and can dish it out. Hell, [SubjectPro of Player] took me down and knocked me up! You'll be able to learn a lot, pup. Watch the way that [SubjectPro of Player] fights, be aware of your surroundings. Just be sure to keep on the sidelines of any fight.' ";
			else:
				if "Cuckold" is listed in Feats of Player:
					say "adds with a bit of a smirk, 'At least you picked someone strong as a boss, in regards to fighting. Who knows, you might be getting laid more often than you think, boy!' She doesn't lay out the fact that she's been cuckolding you any more clearly than that, but with three of you knowing what she means, you feel the burn. A little seed of doubt sprouts in the back of your mind, as you can't help but wonder if you might end up submissive to Alexandra's son too, or if he could show you up with future conquests by taking what is yours. Finally, Alexandra adds, 'You'll be able to learn a lot, pup. Just be sure to keep on the sidelines of any fight.' ";
				else:
					say "adds, 'At least you picked someone strong as a boss who knows what's what and can dish it out. Hell, [SubjectPro of Player] took me down! You'll be able to learn a lot, pup. Watch the way that [SubjectPro of Player] fights, be aware of your surroundings. Just be sure to keep on the sidelines of any fight.' ";
			say "Scrunching up his muzzle at her still not treating him as his own man, Spike barks back, 'I'll show you! Just wait and see!' Alexandra just lets out a snort and a roll of her eyes, then walks away.";
			TraitGain "Alexandra - Disapproval" for Spike;
			TraitGain "Spike - Rebellious" for Alexandra;
			WaitBreakReactions;
		if Amy is booked or Amy is bunkered:
			say "     Amy strolls right up to young doberman, standing very close and sniffing him, their noses almost touching. 'Hello there! I'm Amy. I - I saw you in the library before, as a pup, but never knew if you wanted to talk, or play...' A somewhat lusty smirk crosses Spike's features and he replies, 'Oh, I wanna play with you alright! If you want, I can show you some tricks I learned out in the city...' He gives her a flirtatious wink, making Amy's eyes go wide, followed by her squealing the words, 'Ooh! Did you have adventures?! Like, with dragons and knights? Or, or pirates!' The young doberman looks a little startled at the rapid-fire, fan-girl talk, but he catches himself quickly enough and begins to spin a tale. 'Yeah, er - that! Yup, I saw a knight. Well, a dude dressed in metal all over at least, and he...' The two of them continue talking for a minute or two, with Spike delivering a somewhat improbable story, while sneaking casual glances down at Amy's breasts. 'That was amazing!' the young husky tells him, almost bouncing in joy, 'You really must come visit me and tell everything after you go outside again!' Spike stands a bit straighter at her worshipful tone, clearing his throat and saying, 'Sure thing, will do. See you then, Amy!' As she leaves right after, her tail is wagging wildly, as is Spike's as he watches her go.";
			TraitGain "Amy - Fangirl" for Spike;
			TraitGain "Spike - Adventurer" for Amy;
			WaitBreakReactions;
		if Blanche is booked or Blanche is bunkered:
			say "     Blanche beams at the doberman and hurries over. 'Hello Spike. You've grown into quite the young man,' she says exuberantly. 'Alexandra and I have our differences over how to raise a child, but you seem to be proof that a mother's love doesn't have to be as hands on as I prefer. But you probably don't want to listen to a middle-aged woman like me for long, especially when it looks like you'll soon be going out into the city,' she continues. Before either of you can stop her, she steps in and warmly cuddles Spike, the doberman fidgeting uncomfortably, though having his face pressed into the MILF's full breasts provides some silver lining to the ordeal. When she releases him, Spike grumbles petulantly, 'I'm a grown man I don't need hugs...' 'Everyone needs hugs, but I apologize if I have embarrassed you. Your mother was quite firm in keeping me away from you when you were a pup, so I thought that I would take my chance,' Blanche chuckles in reply. After a few more words, the wolfess walks away again, Spike looking after her while mumbling to himself, 'She can't possibly be middle-aged when she looks like that.' You also notice him hiding the start of an erection. It would seem that the doberman is aroused by her despite his aversion to being hugged. This could be interesting...";
			TraitGain "Blanche - Overaffectionate MILF" for Spike;
			TraitGain "Spike - Impressive Young Man" for Blanche;
			WaitBreakReactions;
		if Brutus is booked or Brutus is bunkered:
			if DBCaptureQuestVar is 5: [controlled]
				[
				if "Master's Bite" is listed in Traits of demon brute:
					say "     <ask Luneth>";
				else
				]
				if Resolution of Demonic Redemption is 7: [somewhat pacified]
					say "     Brutus steps up, towering over Spike. He gives the dobie a stare, as if measuring his strength and worth. Then suddenly the demon reaches out to poke him in the chest with a clawed finger, making Spike bark 'Hey!' as he stumbles back. While the dobie is still rubbing his pec and looking down to see if it's bleeding, Brutus says, [if MaxHP of Spike is 5]'He looks weak! And this is my offspring?! Pathetic!' The words make Spike's hackles rise and he aggressively barks back, apparently not expecting his father to get violent even as they clash. 'Well, I didn't choose an asshole purple monster as my father either, so I guess we'll both have to be fucking disappointed! No wonder mom kept me and the others from getting anywhere close to you! You're nothing but a brutish freak!' [else]'He looks weak! I am worth more than four of him!' The words make Spike's hackles rise and he aggressively barks back, not even thinking of how badly a clash between him and the comparatively giant demon would go. 'Fuck you too, asshole! I'll show everyone!' [end if]Brutus simply snorts and walks away without even looking at the dobie.";
				else: [standard hateful captive]
					say "     Brutus steps up, towering over Spike. He gives the dobie a stare, as if measuring his strength and worth. Then suddenly the demon reaches out to poke him in the chest with a clawed finger, making Spike bark 'Hey!' as he stumbles back. While the dobie is still rubbing his pec and looking down to see if it is bleeding, Brutus grumbles, [if MaxHP of Spike is 5]'Weak! My seed, but still just rapebait! Pathetic!' The words make Spike's hackles rise and he aggressively barks back, apparently not expecting his father to get violent even as they clash. 'You think that I'm weak?! Last time I checked [']dad['] you were the one who's nothing but a prison bitch for the boss! I'm not gonna be talked down to by someone who's nothing but a sperm donor for mom! Fuck you too - hell, I wouldn't care if you got reamed-out with a cactus, dadslut!' [else]'Weak! Let me have him instead master! Some nice rapebait to drain my balls in!' The words make Spike's hackles rise and he aggressively barks back, not even thinking of how badly a clash between him and the comparatively giant demon would go. 'Fuck you too, asshole! I'll show everyone!' [end if]Brutus bares his teeth and seems ready to attack him, but you command him to stop and walk away.";
				if MaxHP of Spike is 5:
					TraitGain "Brutus - Disapproving Dad" for Spike;
					TraitGain "Spike - Offspring Disappointment" for Brutus;
				else:
					TraitGain "Brutus - Rejects Weakness" for Spike;
					TraitGain "Spike - Unfriendly Demon" for Brutus;
			else if DBCaptureQuestVar > 5 and DBCaptureQuestVar < 99: [cleansed]
				say "     Brutus steps up, absolutely towering over Spike, then lays a large, clawed hand on his shoulder and bares a smile filled with a worrying number of razor-sharp teeth. The dobie has to stop himself from shrinking back from that, at least until Brutus says, 'Welcome, little one. We will serve the [master] together.' Then the demon glances over to you, looking somewhat unsure of himself and if he did this right. His usually rather stony face twitches and trembles as he struggles to express emotion, but you do recognize something like [if MaxHP of Spike is 5]fatherly pride in the demon. As you nod, Brutus seems relieved and adds,  'This is new. Never met any child I fathered. They don't survive long, in hell, and don't return as the others do. You seemed similar, only to return now. But I feel anger, maybe worry, about you leaving.' Eyes widening, it takes a moment for Spike to gulp and find his words, 'Uhm, sorry? I - guess we'll learn together... dad?' [else]an attempt at being open and welcoming to the dobie. Finding his words, 'Spike replies, 'I guess I know whom the boss brings along for big fights and brute strength, eh?' [end if]He reaches out to pat the bulging pec of the much larger male, giving him a smile before Brutus walks away.";
				if MaxHP of Spike is 5:
					TraitGain "Brutus - Oddly Friendly Dad" for Spike;
					TraitGain "Spike - Offspring Surprise" for Brutus;
				else:
					TraitGain "Brutus - Oddly Friendly Demon" for Spike;
					TraitGain "Spike - Attempting Friendship" for Brutus;
			WaitBreakReactions;
		if Candy is booked or Candy is bunkered:
			say "     'Hey babe - wanna have a good time?' Candy calls out in a teasing tone, shaking his hips and tail as he saunters up to Spike. As the candy coon trap starts to run a hand down the dobie's chest and soon hones in on his crotch, Spike puts on a broad smile. 'Getting out of here and spending some time in the city was the best thing I ever did, hah! People don't treat you like a kid once you show you can take care of yourself!' The comment makes Candy pause for a second, eyebrows rising a little, 'Oh yeah! Now I recognize you! You're one of our [']queen bitch's['] pups, all grown up into a strapping young man! Wanna show me some of those skills you learned out there?' the raccoon says in a teasing tone, then walks his fingers up Spike's chest again before feeling the spikes on the young doberman's collar, doing his best to look impressed. Then he leans in and whispers something into Spike's ear. The dobie looks at Candy with raised eyebrows, hesitates for a moment but then shakes his head. 'I - er, really gotta stay with the boss. Can't just run off the first time someone offers, uhm, that.' Candy simply lets out a flirty giggle and says, 'Another time then! See ya, big boy!' before sauntering away.";
			TraitGain "Candy - Lewd Manipulator" for Spike;
			TraitGain "Spike - Lewd Offers" for Candy;
			WaitBreakReactions;
		if Pink Raccoon is booked or Pink Raccoon is bunkered: [mindless Candy]
			say "     Your pink raccoon pet comes up to Spike, looking at him with lustful eyes and going right in to squeeze the dobie's bulge. The next thing after that is him dropping to all fours, ass raised high and presenting his asshole to the young man. Spike looks at him with big eyes, then glances over to you. 'People really treat you a lot differently when you're no longer a little kid. What's up with this guy anyways? He's not a fourlegger, but seems pretty feral. Mom always told us - er, I mean, I think that sometimes it's best to keep your distance to the ones that went all wild.' Explaining that people are changed in various different ways these days you avoid answering the question in too much detail and shoo away the mostly mindless pet you allowed Dr. Mouse to create.";
			TraitGain "Candy - Brainless" for Spike;
			TraitGain "Spike - Lewd Offers" for Candy;
			WaitBreakReactions;
		if Carl is booked or Carl is bunkered:
			if MaxHP of Spike is 4: [Carl Spike]
				if HP of Carl is 30: [beta carl]
					say "     Carl walks up to Spike and sniffs him, then smiles. 'Hey son, taking your proper place in the pack, eh? Welcome on board!' he says to the young doberman, his tail wagging behind his back. Spike accepts the greeting and smiles back, but then hesitates, not quite sure about what to do next. Seems like he hasn't had too much to do with Carl before, as Alexandra kept her children fairly close and away from others. 'So, uhm... wanna go for a run around the block sometime? Bet you're one hell of a fast runner, sure got the build for it!' Carl then says, holding out one paw-hand to his child and giving Spike a forearm shake as he takes it. Patting the slender dobie's shoulder, Carl then adds, 'Looking forward to it, son!' After that, he turns to leave, with Spike telling him, 'Thanks, dad! So do I!'";
				else:
					say "     Carl walks up to Spike and offers him a hand to shake. 'So, uhm... you grew up quick, son. That's definitively something to get used to, but I'm glad to have you on board!' he says to the young doberman, his tail wagging behind his back. Spike accepts the greeting and smiles back, but then hesitates, not quite sure about what to do next. Seems like he hasn't had too much to do with Carl before, as Alexandra kept her children fairly close and away from others. The soldier husky meanwhile isn't used to being the father of a young man either, that being something that people before the nanite apocalypse had years of getting the hang of. 'I - I think we should hang out, you and me. Hell, wish I'd had that idea quicker, before your whole childhood was over in a flash! So, what do you say, son?' That said, Carl holds out one paw-hand to his child, who wags his tail and replies, 'Yeah, I'd like that!' As Spike takes the husky's hand, he's drawn into manly hug, with Carl's free arm wrapped around his back and patting the dobie before they pull apart a moment later and Carl says goodbye for now.";
				TraitGain "Carl - Nice Dad" for Spike;
				TraitGain "Spike - Instant Son" for Carl;
			else:
				if HP of Carl is 30: [beta carl]
					say "     Carl walks up to Spike and sniffs him, then smiles. 'New pack member, eh? I'm Carl. Welcome on board!' he says to the young doberman, his tail wagging behind his back. Spike accepts the greeting, then puts on a broad smile. 'So, you an actual and genuine soldier, dude? Seen a bunch of folks with camo gear out on the streets, but they don't seem to have the air around them you have. You know, the straight back and how you look around so serious.' The husky nods, opening up to the young man showing interest in him and his profession. 'Well yeah, I am - though I guess they wouldn't greet me with open arms now, since I've grown fur and all. Good thing that I've found a new pack to belong to here.' As the man nods to you respectfully, Spike starts to grin and lays one arm around Carl's shoulders in a buddy-hug that the husky eagerly joins in for. Spike adds, 'Yeah, totally! With the boss to lead us, we'll show them what we can do together!' and looks at you, all bright-eyed and waggy-tailed, then turns his gaze to Carl again and asks, 'So, can you teach me how to kill a guy with my hands alone? Just grab the head and kkrrrck?!' Carl snorts and responds, 'Hah, like in the movies? It doesn't really work that way, maybe I can show you some stuff though... but let's talk about this later, I really need to go for a run.' He extracts himself from Spike's grasp and makes an exit soon after.";
					TraitGain "Spike - Fanboy" for Carl;
				else:
					say "     Carl walks up to Spike and offers him a hand to shake. 'Glad to have you on board! I'm Carl,' he says to the young doberman, his tail wagging behind his back. Spike accepts the greeting, then puts on a broad smile. 'So, you an actual and genuine soldier, dude? Seen a bunch of folks with camo gear out on the streets, but they don't seem to have the air around them you have. You know, the straight back and how you look around so serious.' The husky nods, opening up to the young man showing interest in him and his profession. 'Well yeah, I am - though I guess they wouldn't greet me with open arms now, since I've grown fur and all. Though maybe the scientists can come up with some way to fix this. We were given working immunity shots after all, and those worked fine. Maybe they can improve on the stuff to turn people back.' Raising his eyebrows, Spike comments, 'Must be pretty wild to have started out as something different and then turn into just a regular anthro dog. I think I got a few memories of mom from the before times. Some weird flashes of being bald all over, all skin with no fur!' Raising an arm and stroking over it to underline his words, the dobie gives a disbelieving shake of his head. 'Wasn't so bad, being human. If you want, I can tell you about it sometime...' Carl says, then makes an exit soon after, excusing himself to get back to his post up at the windows.";
					TraitGain "Spike - Human Interest" for Carl;
				TraitGain "Carl - Soldier Dude" for Spike;
			WaitBreakReactions;
		if Chris is booked or Chris is bunkered: [TODO: add special stuff if they're brothers]
			if Libido of Chris is 0: [half-orc]
				say "     Chris strolls right up to Spike, looking at the other young man and offering him a hand to shake. 'Hey there, I'm Chris! Glad to see another dude who was born [']infected['] to hang out with!' Accepting the greeting, Spike nods to him and says, 'Totally! Cool that the boss has this awesome place! Out there in the city you always gotta keep half an eye open, especially if you try to sleep somewhere.' Raising his eyebrows, Chris adds, 'Other places aren't much better than that either. Didn't see much of the orc lair where I was born before [if Player is not defaultnamed][Name of Player] brought me [else]being brought [end if]here, but daddy Val warned me about a few things. Pretty violent with infighting there, and all sorts of crap. Hell, I was born in a cage!' This gets Spike to look at the orc with wide eyes, then reaching out to give him a supporting squeeze on the upper arm. The two young men continue to talk and seem to hit it off well, maybe partly because neither of them ever was human. By the time Chris gets ready to leave, it seems almost like they've been friends for years, laughing and giving each other a fist-bump.";
				TraitGain "Chris - Buddy" for Spike;
				TraitGain "Spike - Buddy" for Chris;
			else if Libido of Chris is 1: [orc breeder]
				if "Breeder_Slut" is listed in Traits of Chris: [slut breeder]
					say "     Chris strolls right up to Spike, looking at the other young man and offering him a hand to shake. 'Hey there, I'm Chris! Glad to see another dude who was born [']infected['] to hang out with!' Accepting the greeting, Spike chats a little with the orc, until the dobie eventually asks, 'Dude, are you checking me out? My eyes are up here, hah!' Chris bites his lip and nods, then adds, 'Kinda. Mostly, been thinking of how your dick might taste on my tongue! Like, a lot!' This puts a grin on the doberman's face and Spike replies, 'If you wanna experience the real thing sometime, I might just be down for that, if you're a good boy for me!' Chris seems excited at the suggestion and pats Spike on the arm, then says, 'Later, big dog!' The dobie's tail wags as he watches him go. 'Glad everyone doesn't think me a kid anymore now! Once you show that you're a real man, the sluts just throw themselves at you!' he comments to you.";
					TraitGain "Chris - Slut Buddy" for Spike;
					TraitGain "Spike - Buddy" for Chris;
				else: [happy breeder]
					say "     Chris strolls right up to Spike, looking at the other young man and offering him a hand to shake. 'Hey there, I'm Chris! Glad to see another dude who was born [']infected['] to hang out with!' Accepting the greeting, Spike chats a little with the orc, until the dobie eventually asks, 'Dude, are you checking me out? My eyes are up here, hah!' Having been caught with his gaze flicking down to Spike's crotch for a little too long, Chris blushes and nods, which puts a grin on the doberman's face. 'I don't mind, you seem like a cool dude. You can look all you want, we can be buddies. Let's just hang out and talk, eh?' Chris seems overjoyed at the offer of friendship, then pats Spike on the arm and says, 'Later, big dog!' The dobie's tail wags as he watches him go. 'Good thing he's not like some of the stories about orcs I've heard out on the streets! Big brutes that just snatch people, you know. Chris seems pretty friendly, and him blushing like that shows that he's pretty different,' he comments to you, then taps the side of his muzzle with a knowing look.";
					TraitGain "Chris - Buddy" for Spike;
					TraitGain "Spike - Buddy" for Chris;
			else if Libido of Chris is 2: [orc warrior]
				if "Bro" is listed in Traits of Chris or "Bro with Benefits" is listed in Traits of Chris or "Dad with Benefits" is listed in Traits of Chris:
					say "     Chris strides up to Spike, coming fairly close before the two of them size each other up. The orc is clearly bigger and more muscular, which puts a grin on his face as he looms over the dobie and says, 'Sup? I'm Chris. Glad to see another dude who was born [']infected['].' Somewhat leery of the orc's strength and size, yet holding up a strong front, Spike swallows and then takes a chance by extending a balled paw-hand and answering, 'Nice bod, dude! Guess I know who the boss'll call in if the going gets extra tough!' Letting out an amused grunt, Chris meets Spike for a fist-bump, then says, 'Mostly been doing my own thing, but I'd be down to join in for stuff if it's fun. Could use a buddy to mix up the neighborhood too, if you know what I mean. Just think about it - together, we can have our pick of all the sluts on the street!' Wiggling his eyebrows at the other young man, Chris casually adjusts his crotch, followed by them grinning at each other like frat-brothers planning a prank. You shudder at the thought what trouble these two might come up with. 'Let's talk about this later - I'm kinda in the mood to find someone to fuck now!' With that said, Chris gives Spike a friendly slap on the arm and strolls outside.'";
					TraitGain "Chris - Buddy" for Spike;
					TraitGain "Spike - Buddy" for Chris;
				else: [dominant warrior Chris]
					say "     Chris strides up to Spike, sizing the anthro up as he approaches. Then says in a voice full of cocky arrogance, 'I'm Chris! Gotta say, even with the fur and all that dog stuff, you kinda look like you were born to be a breeder. All slender and pretty, until an orcling swells out those abs, hah!' Spike's eyes widen as he hears those words, and his stance shifts to stand a bit more on the toes of his paws, as if getting ready to put some distance between Chris and himself. Outwardly to the orc, the young dobie does put up a brave front though, with him crossing his arms and replying, 'Fat chance of that happening, so don't hold your breath or you'll go blue instead of green! I'm a fighter and the boss accepted me to come with [ObjectPro of Player] out into the city!' He blusters and plays up his strength, wanting to tell Chris what's what, but the orc snorts with one raised eyebrow. 'Yeah, right - haha! [if Dexterity of Chris is 1]Already got one live-in slut, but maybe I'll be in the mood for some variety soon! [else]Just be ready to spread those cheeks, we'll see when the mood for some doggie ass strikes me. [end if]Bet after that you'll be singing another tune and come beg me to fuck you again!' With a grin on his face, he then walks off, leaving Spike behind, grumbling a little under his breath.";
					TraitGain "Chris - Rape Threat" for Spike;
					TraitGain "Spike - Ready Slut" for Chris;
					if Dexterity of Chris is 1:
						TraitGain "Chris - Mentioned Kai" for Spike;
			WaitBreakReactions;
		if Colleen is booked or Colleen is bunkered:
			if SarahSlut < 2: [not transformed, or only a little]
				say "     Walking closer, Colleen stops several feet away from Spike and gives him a friendly nod. 'Hello there, young man. God, you grew up quickly!' The young doberman grins at her, his tail wagging as he demonstratively flexes his arm and chest - despite being fairly thin and wiry, he does have muscle tone to show off. 'Yeah, I'm more than just a puppy now!' he proudly says, then slides a hand down his front and cups his bulge, adding in his best macho tone, 'Became a real man, if you know what I'm talking about!' The paratrooper's eyes widen, then she bursts out with a laugh, suppressing it with a some effort to reply, 'Well, good for you! So, what's your girlfriend's - or boyfriend's - name?' This innocent question instantly de-rails the young doberman's prideful moment, with him sputtering, 'Uhm, I ...she was, it didn't really come up, you know.' 'Ah,' is all Colleen says, giving him a certain look, then patting his shoulder consolingly. 'I'm sure you'll find someone to have more than a one-night stand with soon! Just be sure to actually talk to her, get to know each other first, hm?' With that said, she walks off, leaving Spike to look after her with a slightly sulky, yet thoughtful, expression.";
				TraitGain "Colleen - Auntie" for Spike;
				TraitGain "Spike - Needs Advice" for Colleen;
			else if ColleenAlpha is 0:
				say "     Walking closer, Colleen gets right up in Spike's face, whose eyes are immediately drawn to wander over her naked body, lingering hungrily at her breasts and pussy. 'Hello Spike. God, you grew up quickly!' The young doberman grins at her, his tail wagging as he demonstratively flexes his arm and chest - despite being fairly thin and wiry, he does have muscle tone to show off. 'Yeah, I'm more than just a puppy now!' he proudly says, then slides a hand down his front and cups his bulge, adding in his best macho tone, 'Became a real man, if you know what I'm talking about!' The former paratrooper's eyes widen and she replies, 'I'm sure you did a great job and got your girl where she wanted to go.' At the same time, the horny bitch crosses her legs, her thighs rubbing against each other sensually, at just the thought of being fucked. Spike sniffs the air in some excitement, but then remembers that he wants to make a good impression to you and nods to Colleen before stepping back to his position by your side.";
			[
			else if ColleenAlpha > 0:
				say "..."; [TODO: write this] [Spike would be rubbed the wrong way by a bossy female]
			]
			WaitBreakReactions;
		if David is booked or David is bunkered:
			say "     Coming right up and offering his hand in an open, friendly way, David welcomes Spike with the words, 'I'm Private David Jackson, but you can call me David, alright?' The young doberman grins broadly and replies, 'Yeah, totally! I'd love to hang out with you too, David! Share a beer or two, eh?' The human man chuckles and nods, patting Spike's arm as he says, 'Good! It'd feel really odd for me to be formal with someone whom I've seen as a puppy, just... god, it's really not been long, has it? Still getting used to all this craziness. As for the beer... well, maybe we can have a soda?' The two young guys chat with each other some more and appear to be quite a good match personality wise. If you didn't know better, you might think they're the same age from physical development. Eventually, David says his goodbyes and gets back to what he was doing.";
			TraitGain "David - Soldier" for Spike;
			TraitGain "Spike - Young Guy" for David;
			WaitBreakReactions;
		if Denise is booked or Denise is bunkered:
			say "     With a flutter of her wings, Denise lands before Spike. The young doberman tenses immediately, potentially having flashbacks to being pounced upon by some of the more predatory gryphons out in the city, but he stops himself from running away as she says in her musical voice, 'Hello there!' Hearing the gryphoness, Spike hesitates, then his tail slowly starts wagging. 'Hey Denise,' he says with newfound confidence, holding out a paw-hand to her. As she takes it and shakes, the young man quickly adds, 'I just wanted to say, I really love your voice. Heard you singing ever since I was a little pup, and... it's beautiful!' The gryphoness is more than happy to hear his praise, giving an overjoyed squeak from her beak as she places one hand on her chest. 'Oh thank you! I'll be sure to sing for you some more then!' The two of them talk for a little while before Denise gets back to a more lofty position.";
			TraitGain "Denise - Singer" for Spike;
			TraitGain "Spike - Young Guy" for Denise;
			WaitBreakReactions;
		if (Elijah is booked or Elijah is bunkered) and HP of Elijah > 3:
			if HP of Elijah is 99: [evil] [TODO: add manipulation?]
				say "     Studying the young doberman for a moment with a smirk on his face, Elijah cheerfully greets him with the words, 'Hey Spike! Looking good, like a proper stud! Seems like you really rocked things out on the streets!' Spike starts to grin at the words of praise, while Elijah closes in on him and puts an arm around the anthro's shoulder, squeezing his bicep with the other hand and adding, 'You've gotten strong now, good! Bet you've laid dozens of bitches already, right?' The honeyed words seem to rise to the doberman's head, as he joins in to boast, 'Yeah, totally! You should have seen them, kneeling at my feet and begging me not to go!' The dark angel keeps spoon-feeding his [']new friend['] praise and encouragementt, pulling Spike deeper into his influence. At the same time, with your outside perspective, you catch some hard edges in Elijah's gaze and expression, as he masterfully manipulates Spike, with some of the [']admiration['] for Spike's muscles actually being the introduction of getting the anthro used to being groped all over.";
				TraitGain "Elijah - Friend" for Spike;
				TraitGain "Spike - Manipulated Sucker" for Elijah;
			else: [good]
				say "     Walking up to Spike, Elijah gives the dobie a friendly smile and spreads his arms invitingly as he says, 'How big you have gotten, and so quickly!' Spike hesitates for a second, giving you a quick side-glance but then just going for it, wrapping his arms around the angel's midriff and squeezing him. 'Hey uncle Elijah! I kinda missed you while I was out in the city. You always came to play with us when I was a puppy!' Holding the doberman close and stroking his back in a vaguely fatherly way, Elijah replies, 'Of course, little man. Children are god's most special creation, and should be given all the love in the world!' As he hears the last few words, Spike extracts himself from Elijah's grasp, in a friendly enough way, giving the angel a serious look. 'Just remember that I'm a man now, alright?!' There is a determined edge in his voice, but you can see his tail still wagging, as he isn't really cross with Elijah. 'Of course!' the angel replies, then soon makes his exit and gets back to what he was doing.";
				TraitGain "Elijah - Friend" for Spike;
				TraitGain "Spike - Young Guy" for Elijah;
			WaitBreakReactions;
		if Eric is booked or Eric is bunkered:
			if HP of Eric > 0 and HP of Eric < 21:
				say "     Walking up to Spike, Eric gives a friendly smile and shakes the dobie's paw-hand. 'Hi dude, wanna hang out sometime?' he asks, somewhat shy as he does so, with Spike patting him on the shoulder as he says, 'Totally, it'll be fun!' Looking at the two of them, they seem like a pair of normal young men of the same rough age on the surface - but of course, you know better, with Spike's life still being able to be counted in days, and Eric being not a male at all, down below. Still, the two of them seem to hit it off nicely, and you can see the start of a friendship develop by the time Eric eventually excuses himself and wanders off. As the dobie watches the student leave, you see him sniff the air thoughtfully, his eyebrows rising a little. 'Nice dude, and he smells kinda... good, you know,' Spike comments, apparently not quite able to place a finger on what it is about Eric that he can sense with his nose.";
				TraitGain "Eric - Smells Good" for Spike;
				TraitGain "Spike - Young Guy" for Eric;
			else if HP of Eric > 20 and HP of Eric < 50: [horsecock/satyrcock/orccock]
				say "     Walking up to Spike, Eric gives a friendly smile and shakes the dobie's paw-hand. 'Hi dude, wanna hang out sometime?' he asks confidently, with Spike patting him on the shoulder as he says, 'Totally, it'll be fun!' Looking at the two of them, they seem like a pair of normal young men of the same rough age on the surface - but of course, you know better, with Spike's life still being able to be counted in days, and Eric being somewhat less than fully human, down below. Still, the two of them seem to hit it off nicely, and you can see the start of a friendship develop by the time Eric eventually excuses himself and wanders off.";
				TraitGain "Eric - Swell Dude" for Spike;
				TraitGain "Spike - Young Guy" for Eric;
			else if HP of Eric is 99:
				say "     After looking over from some distance away, with a moderately frightened look on his face, your little sex slave Eric ducks out of sight. You can't quite tell if he was looking at Spike or yourself. Maybe both, as he could be expecting this new male to join you in demanding sex from him. Spike glances after the fleeing human, then looks aside to you and asks, 'What's up with him? He always kept to himself even when I was a puppy.' You wave the question away, not in the mood right now to lay out the way you're abusing Eric.";
				TraitGain "Eric - Frightened" for Spike;
				TraitGain "Spike - Threat" for Eric;
			WaitBreakReactions;
		if Fang is booked or Fang is bunkered:
			if MaxHP of Spike is 2: [Fang Spike]
				say "     Fang pads closer, sniffing the air and looking at Spike, with [PosAdj of Fang] tail rising and wagging. Approaching the young doberman, the feral wolf then then jumps up at him, forepaws bracing against Spike's chest as [SubjectPro of Fang] licks [PosAdj of Fang] offspring's face. The anthro dobie endures the licking for a moment and even gives Fang's neck and back-fur a rub, before extracting himself from the wolf's reach and saying, 'That's enough dad, you gotta remember I'm not a puppy anymore!' Fang looks at him, head turned at an angle and just replies with a friendly bark, then pads off with wagging tail.";
			else:
				say "     Fang pads closer, sniffing the air and looking at Spike, with [PosAdj of Fang] tail raised at attention. Approaching the young doberman, the feral wolf pushes [PosAdj of Fang] muzzle right between Spike's legs, sniffing his crotch, then soon his rear end after circling around. The anthro dobie endures the inspection for a moment, until Fang comes back to the front, looking up and giving a satisfied bark, tail starting to wag. At that point, Spike crouches down and strokes the feral's fur, with the two of them exchanging wordless communication, just by their movements and body posture. From what you can make out, Fang likes Spike, but [if hp of Fang is 3 or hp of Fang is 4]as Alpha, considers Spike below [ReflexPro of Fang] in the library hierarchy, especially as [else]sees [ReflexPro of Fang] as a higher rank since [end if]the dobie has only been born recently. Eventually, the wolf pads off with wagging tail.";
			TraitGain "Fang - Wolf" for Spike;
			TraitGain "Spike - Young Guy" for Fang;
			WaitBreakReactions;
		if HP of Fiona > 4:
			say "     Seemingly appearing from a dark corner in which she was hiding, Fiona stalks closer on all fours, then brushes up against Spike's legs and purrs. He lets his gaze wander over the anthro female, very appreciative of her naked body and feminine curves. You can see the bulge of his jeans grow a little, a clear sign of arousal for the cat. With a smile on his face, Spike then bends down to pet her while saying, 'Hey babe, are you - ouch!' In typical feline fashion, she's scratched him (lightly) after he barely touched her, followed by dashing away a little, then looking over her shoulder and purring more to draw him closer again. Spike's leg muscles tense as he seems to get ready for chasing her, and he adjusts the bulge in his pants a little as he gets excited by the feline's raised rear and presented pussy. Fiona's plan appears to be working, up until the point at which Spike remembers that he wants to impress you, not simply get laid. He makes himself calm down and step up to your side again, taking position as your companion and doing his best not to stare after the flirty cat.";
			TraitGain "Fiona - Tease" for Spike;
			TraitGain "Spike - Target" for Fiona;
			WaitBreakReactions;
		if Gabriel is booked or Gabriel is bunkered:
			say "     Curious about the dobie, Gabriel comes closer and says hello. At the same time, Spike takes in the angel's naked body, collar and the wrist- and ankle-cuffs, his body stiffening a little at the sexy presentation. He has to adjust himself a little in the front of his pants too, then greets Gabriel in a friendly tone. Well-trained as you have him, the captive seraphim stoically accepts the dog's hungry gaze wandering over his body. 'Wow, that's quite a look,' Spike comments, lust audible in his voice. Gabriel reaches up to touch his collar, then lowers his head submissively and says, '[Master] showed me what I was made for.' He stands there, with Spike soon reaching out to stroke a paw-hand over his chest. Then the dobie asks, 'Could I... have a turn sometime?' You chuckle, but postpone that decision to another time, then wave the angel away.";
			TraitGain "Gabriel - Sex Pet" for Spike;
			TraitGain "Spike - Master's Friend" for Gabriel;
			WaitBreakReactions;
		if Hayato is booked or Hayato is bunkered:
			say "     Walking up to Spike and showing a friendly expression, Hayato reaches out to place a large hand on his shoulder. 'Sure grew up quick, didn't you? I'm sorry your childhood was cut short like this,' he says in a somewhat sad tone. Spike just lets out a kind of noncommittal grunt and shrugs off the hand. 'Can't stay a pup forever. I want to see some of the action in the city too!' The large red oni starts to say, 'I don't think that's safe, or a good id-' but then catches himself as he sees Spike rolling his eyes. 'What? You think I can't do shit because I'm not a giant musclebound oni? I'm tough enough!' Hayato sighs and says, 'Just try to stay safe, okay? And if you simply want to talk sometime, you know where I am.' With that said, Hayato waves and wanders off.";
			TraitGain "Hayato - Lame Uncle" for Spike;
			TraitGain "Spike - Young Guy" for Hayato;
			WaitBreakReactions;
		if Helen is booked or Helen is bunkered:
			say "     Dashing towards Spike on all fours, Helen goes in to sniff him, then licks his hand as he leans down to reach for her. 'Does she think she's a dog?' Spike asks in surprise, at which point you explain that Helen is a transformed normal dog  [if Lust of Helen > 3]but you gave her something to help her become closer to fully human[end if], which the dobie takes in with raised eyebrows, looking at her in a new light. 'Eager little bitch, aren't you?' the young dobie comments about Helen, then slides a hand under her, cupping a breast and groping it. The human dog accepts this quite happily, even leaning into his touch. [if Lust of Helen > 3]'New friend?' she suddenly asks, followed by a happy bark as Spike says, 'Sure! And if the boss allows it, maybe I can show you just how much of a friend I can be.' Him grabbing the bulge in his pants and adjusting it shows exactly what he means. [end if]Afterwards, Helen happily runs off.";
			TraitGain "Helen - Ready Bitch" for Spike;
			TraitGain "Spike - Master's Friend" for Helen;
			WaitBreakReactions;
		if Hobo is booked or Hobo is bunkered:
			say "     Hobo rushes up to greet Spike with his tongue hanging out of the side of his mouth. Leaning down, the young dobie lets him sniff his hand, then proceeds to give the dog's ears a good scratch while saying, 'Who's a good boy? You are!' releasing a warm chuckle. Having received his pets, Hobo eventually trots off again, then lies down to doze in a comfortable spot.";
			TraitGain "Hobo - Good Dog" for Spike;
			TraitGain "Spike - Master's Friend" for Hobo;
			WaitBreakReactions;
		if Honey is booked or Honey is bunkered:
			say "     Honey buzzes through the air stopping just inches away from Spike's face and inspecting him before quickly saying, 'Hi Spike! I'd wondered where you'd gotten off to! Looking good as a big boy!' before giggling into her hands. 'Love the hair! Can I touch it?' He chuckles, brushing a hand through the green strands, then nods to the bee girl, who buzzes closer and reaches out to stroke his hair. 'Soo soft and fluffy! I love it!' Honey squeals like a fan-girl, then waves at Spike and flies away.";
			TraitGain "Honey - Airhead" for Spike;
			TraitGain "Spike - Master's Friend" for Honey;
			WaitBreakReactions;
		if Korvin is booked or Korvin is bunkered:
			if MaxHP of Spike is 3: [Korvin is Spike's father]
				say "     Walking up to Spike with a confident stride, Korvin puffs out his muscular chest a little and gives his son a gruff nod. 'Good to see you're making something out of yourself, nino! Like the collar, even if it's not quite as good as mine.' He smirks at Spike while brushing a paw-hand along his studded band of leather, then taps the dog-tag bearing his name with one blunt claw. 'Dad! I -' Spike groans at the ribbing from his father, with Korvin holding up a hand to interrupt and say, 'Please, none of that dad bullshit, call me papi!' Spike chuckles and nods to the German shepherd. 'Fine, papi then! We'll see who's the better dog soon!' The two of them spend the next minute or so in a kind of dick-measuring contest, flexing some muscles and giving each other looks. Eventually, Korvin quips, 'I'll leave you to work on your stuff a bit more. At least one of us needs to, nino. You better keep up with your old man, hah!' then walks off, tail wagging behind his back.";
				TraitGain "Korvin - Challenging Dad" for Spike;
				TraitGain "Spike - Son" for Korvin;
			else:
				if gsd_pet < 20: [not got a collar yet]
					say "     Walking up to Spike with a confident stride, Korvin puffs out his muscular chest a little and gives the dobie a gruff nod. 'New dog, eh? Even got a collar, like a good little puppy.' Even as he says this, teasing the doberman by deliberately ignoring that Spike picked a black leather, spiked collar for himself, you can see a glimmer of... envy in his eyes. Accepting the ribbing as a friendly challenge, Spike shoots back, 'Look who's talking!' tapping the side of his neck and then pointing at the German shepherd, who reaches up to touch the simple rope leash you placed on him. Ouch, by his scrunched-up expression, Spike landed a solid hit, but Korvin is fast enough to bounce back, shrugging it off. 'Well - we'll see who's the better dog soon!' The two of them spend the next minute or so in a kind of dick-measuring contest, flexing some muscles and giving each other looks. Eventually, Korvin quips, 'I'll leave you to work on your stuff a bit more. At least one of us needs to,' then walks off, tail wagging behind his back.";
					TraitGain "Korvin - Met Collarless" for Spike;
					TraitGain "Spike - Young Buck" for Korvin;
				else if gsd_pet >= 20 and gsd_pet < 60:	[Subby Korvin]
					say "     Leaning against the end of a bookshelf and keeping his distance, you see Korvin raising a hand as if to hide his pink collar, his gaze fairly focused on Spike's own studded strap of leather. Clearing your throat and shooting him a look, the canine drops the attempt at hiding his shame, revealing his submissiveness to you fully. Spike notices the girly collar right away and lets out a laughing bark, which drives Korvin to slip out of sight with his tail hanging down limply. Despite this, the German shepherd can't help but sport a raging erection, getting off on the humiliation after you drove home your dominance over him.";
					TraitGain "Korvin - Shamed Bitch" for Spike;
					TraitGain "Spike - Saw his shame" for Korvin;
				else:
					say "     Walking up to Spike with a confident stride, Korvin puffs out his muscular chest a little and gives the dobie a gruff nod. 'New dog, eh? Like the collar, even if it's not quite as good as mine.' He smirks at Spike while brushing a paw-hand along his studded band of leather, then taps the dog-tag bearing his name with one blunt claw. Accepting the ribbing as a friendly challenge, Spike chuckles and nods to the German shepherd. 'We'll see who's the better dog soon!' The two of them spend the next minute or so in a kind of dick-measuring contest, flexing some muscles and giving each other looks. Eventually, Korvin quips, 'I'll leave you to work on your stuff a bit more. At least one of us needs to,' then walks off, tail wagging behind his back.";
					TraitGain "Korvin - Challenging Dude" for Spike;
					TraitGain "Spike - Young Buck" for Korvin;
			WaitBreakReactions;
		if Klauz is booked or Klauz is bunkered:
			say "     Klauz stays sitting on a nearby sofa for a long while, casually licking a paw and stroking it over his head-fur while throwing a sidelong glance or two in the direction of the young doberman. Then eventually, he gets up and saunters closer, sniffing the air as he draws circles around Spike, which ends up with him brushing up against the anthro dog's legs. As he rubs his fur against Spike, busily spreading his scent all over the man, the felinoid purrs like an idling motor, drawing Spike to crouch down and pet him. 'What's that scent?' the anthro says, taking another deep sniff of the air, only to forget what he was thinking about and fully focusing on stroking the white-furred feline. Klauz seems content to leave it at just that for now, enjoying the petting before letting out an amused churr and stalking away. Spike remains crouched for a little while, then shakes his head as if getting out of a trance and stands up again.";
			TraitGain "Klauz - Nice Cat" for Spike;
			TraitGain "Spike - Target" for Klauz;
			WaitBreakReactions;
		if Malik is booked or Malik is bunkered:
			say "     Malik struts up to Spike, nodding at the anthro and saying, 'Sup, dog-dude? Seen anything fun out in the city? Maybe we could do a circuit around the block sometime, eh?' As Spike grins and begins to tell the orc about the gaggle of husky bitches he saw just a little while ago, in a side alley, the orc lets out a huff. 'Yeah - no, not my scene. But if there's hoe's, there must be a pimp somewhere nearby. How about we go splits - take [']em down and you can have all the sluts while I introduce the guy to my big orc cock!' Before the two of them get any further into planning out trips with each other, you clear your throat as a reminder that Spike is supposed to be [italic type]your[roman type] companion. Coming to attention, Spike straightens himself after giving Malik a quick whisper of 'Maybe later, eh?'";
			TraitGain "Malik - Bro" for Spike;
			TraitGain "Spike - Bro" for Malik;
			WaitBreakReactions;
		if Nadia is booked or Nadia is bunkered:
			say "     Nadia gives Spike a friendly smile and comes right up to him, then actually reaches up to pinch his cheek! Surprised, he bats away her hand with a little bluster and says, 'Hey, what the-?!' only to have her interrupt with the words, 'It's so nice to see you all grown up! I'm almost jealous of Alexandra for having such a cute little puppy, and now a strapping young man! I played with you when you were just a tiny little doggie!' Spike appears to be embarrassed by the attention of the broody bird-woman, as she keeps touching him, patting his chest and arms, completely ignoring his comfort zone. 'I - I actually have to do something with the boss now, so could you maybe stop, eh -' the dobie says while trying his best to deflect her hands, throwing you a pleading glance. Only when you interject yourself between Nadia and the young man does she relent, leaving Spike with a promise to 'catch up later'.";
			TraitGain "Nadia - Auntie" for Spike;
			TraitGain "Spike - Good Boy" for Nadia;
			WaitBreakReactions;
		if Rane is booked or Rane is bunkered:
			say "     Sauntering up to the anthro dobie with a smirk on his face, Rane nods to Spike and says, 'Hey there, my dude. Name's Rane. What brings a cool dog like you to this place? Love the collar by the way.' Spike turns out to be quite receptive to the blue oni's flattery, proudly showing off his wiry, but toned body and explaining that he found the collar himself and picked it, 'Because it looks awesome!' The oni nods attentively, smiling and appropriately admiring the spiked band of leather, making a good first expression with Spike and leaving it at that. 'Just stay out of trouble, eh?' Rane says, patting the dobie's shoulder and giving it a squeeze, then makes his exit, walking past the two of you. As you glance over your shoulder, you see the blue-skinned demon stand not too far away, shamelessly checking out Spike's rear with hungry looks.";
			TraitGain "Rane - Flirty" for Spike;
			TraitGain "Spike - Target" for Rane;
			WaitBreakReactions;
		if Ryousei is booked or Ryousei is bunkered:
			say "     Ryousei walks up to Spike with measured steps, then gives the young doberman a cordial nod, respectful but fairly shallow. 'Welcome, young man. It is good to see you choose a [master] like this on your way to becoming a warrior. My name is Ryousei.' Turning and giving yourself a friendly bow, the tiger adds, 'Please do let me know if you would like me to instruct your pupil too. It always is nice to see promising new students mature.' Spike glances back and forth between Ryousei and yourself, looking slightly stressed out as he wracks his brain about how to react to this otherworldly feline's customs, given that Ryousei seems to be your friend. Finally he barks out, 'Thank you, sensei!' and bows quite low to the tiger, almost to a 90 degree angle. A benign smile crosses Ryousei's muzzle, then is quickly suppressed before Spike can notice. With a firm but gentle paw on the dobie's shoulder, he adjusts him to just about 40 degrees, 'I'm not an emperor or king, young warrior, but I thank you for the gesture. I'll look forward to our next encounter.' With that, he excuses himself and strides away."; [TODO: Add a like of Kung-Fu movies to Alexandra][TODO: Have Ryousei explain what Sensei really means in a followup scene]
			TraitGain "Ryousei - Potential Sensei" for Spike;
			TraitGain "Spike - Student" for Ryousei;
			WaitBreakReactions;
		if (Sarah is booked or Sarah is bunkered) and SarahCured > 3:
			say "     Sarah confidently strides up to Spike and offers her hand in greeting. 'I examined you when you were little. How weird that that was just a few days ago, and see you already grown up! But it's good to see another able-bodied person here in the library. I'm sure if we hold together we'll make it out of this too!' The dobie wags his tail eagerly as he shakes her hand-paw, eyes casually flicking down to check out her breasts without being too obvious. 'That, or take over the city, hah! The boss has big plans, I'm sure!' Sarah blinks at him and responds, 'Excuse me?! What do you mean?' Spike looks somewhat embarrassed as he quickly adds in an embarrassed tone, 'Err... just kidding.' Sarah gives him a raised eyebrow, then says, 'People are suffering out there, and losing everything! I'd hoped you'd have more sense than to joke about that!' Scrunching up her muzzle, the husky then storms off.";
			TraitGain "Sarah - Stuffy Doc" for Spike;
			TraitGain "Spike - Young Punk" for Sarah;
			WaitBreakReactions;
		if Sturm is booked or Sturm is bunkered:
			say "     Seeing Spike, Sturm walks over with a grin, clapping the smaller male on the shoulder when he reaches him. 'You've grown. While I don't think you'll ever have my good looks, you might be able to charm some of the men and women that you find,' the wolf teases Spike. 'If you have good looks, they must be covered up by fluff. Your size just frightens people into submission,' the doberman retorts, the pair of them laughing together. 'You might be right, but it doesn't seem to be working on you. You must be quite brave,' Sturm replies, making Spike's chest swell with pride. 'Damn right I am. I'm going to be going out into the city, just like those stories you told me when I was a pup,' Spike boasts, before realizing fully what the wolf has said. 'Wait. Why would you be trying to charm me?' Sturm merely winks before walking away, calling over his shoulder, 'You'll do fine out there. Don't have too much fun.' The doberman mutters something under his breath, but looks encouraged by the wolf's words nonetheless.";
			TraitGain "Sturm - Bro" for Spike;
			TraitGain "Spike - Good-Looking Bro" for Sturm;
			WaitBreakReactions;
		if Sven is booked or Sven is bunkered:
			if HP of Sven >= 30 and HP of Sven < 50:	[self-confident Sven]
				say "     Coming up to the young doberman, Sven smiles at Spike and says, 'Hallo! I hope we can be friends, despite the cat-dog thing, eh? It'd be a shame if a cute guy like you just barked at me, haha.' Bravely sticking out his hand in greeting, he shakes with Spike, who chuckles at the quip. Easily picking up on the snow leopard's obvious accent, Spike asks, 'So, where are you from? Don't think I've heard anyone talk like that before.' 'I'm from Norway and an exchange student,' Sven replies, followed by a little bit of chatting before he makes an exit, going back to what he was doing before.";
				TraitGain "Sven - Young Guy" for Spike;
				TraitGain "Spike - Young Guy" for Sven;
			else if HP of Sven > 7 and HP of Sven < 11: [collared sex pet]
				say "     Stepping out from behind a tall bookshelf, Sven saunters over towards Spike and yourself, swinging his hips a little as he does so. 'Hallo, doggo,' he says in a somewhat flirtatious tone as he reaches Spike, letting his gaze wander down to the dobie's bulge. 'Oh? See something you like, pussycat?' Spike shoots back to him, gripping his crotch demonstratively with one hand as he grins broadly. Sven nods and starts to run his tongue along the edge of his muzzle, a purr starting in his chest. Then he looks over to you, seemingly asking what his [master] wants to happen between them. You don't particularly feel like deciding right now, so you simply clear your throat and tell Sven to get back to his place. Spike looks a little disappointed as the flirty sub does as ordered, but he readily accepts that you're the boss.";
				TraitGain "Sven - Sex Pet" for Spike;
				TraitGain "Spike - Flirt Target" for Sven;
			else:
				say "     Shily stepping out from behind a tall bookshelf, Sven keeps his extra long and thick tail raised before himself, partly hiding behind it. 'Hallo! Du er sot,' he says quietly, smiling at Spike. The dobie frowns at hearing words he doesn't understand, making Sven slink back a tiny bit, only for Spike to grab his arm and prevent him from running away. Then the young man raises an arm to flex it - showing the marked muscle tone on the relatively slender limb. 'How do you like this?! If you play your cards right, I'll look out for you.' Sven nods, with a suitably impressed look on his face. Then Spike asks, 'So, where are you from? Don't think I've heard anyone talk like that before.' 'I'm from Norway and an exchange student,' Sven replies, followed by a little bit of chatting before he makes an exit, going back to what he was doing before.";
				TraitGain "Sven - Shy Dude" for Spike;
				TraitGain "Spike - Young Guy" for Sven;
			WaitBreakReactions;
		if Tehuantl is booked or Tehuantl is bunkered:
			if Tehuantl is male:
				say "     Tehuantl steps into view from between the bookshelves, bearing his shield and Aztec sword as he walks up to the anthro dobie. The jaguar warrior comes to stand before him, sizing up Spike for a long moment before giving him a smile that bares the feline's fangs. 'A novice warrior, I see. And one with potential. You can call me Tehuantl. If the [master] wishes it so, this warslave will instruct you in combat.' Having said what he wanted, the anthro feline turns and strides away, leaving Spike looking after him with a curious expression. 'Is he for real? Who talks like that?' You quickly explain where and how you met Tehuantl, and that he genuinely believes to be an authentic Aztec warrior. 'He certainly looks badass with that gear of his, and those are nice muscles!'"; [TODO: Expand on this later on, after Tehuantl/Korvin's scenes have been re-evaluated - Tehuantl should reference if Spike's dad got his ass kicked]
				TraitGain "Tehuantl - Warrior Dude" for Spike;
				TraitGain "Spike - Student" for Tehuantl;
			else:
				say "     Tehuantl steps into view from between the bookshelves, walking up to the dobie with her hips swaying side to side. She smiles at Spike, holding her upper body in a pose that exposes her breasts quite nicely. 'Hello young warrior, you can call me Tehuantl,' the feline says in an enticing tone, and she is clearly amused as he simply stares at her tits, tongue hanging out the side of his muzzle without him even noticing. 'Hope you'll stay for a while and we'll see each other,' she says finally, stroking a finger along the side of his cheek before making her exit soon after."; [TODO: Might need rework to closer match the female version]
				TraitGain "Tehuantl - Sexy Bitch" for Spike;
				TraitGain "Spike - Flirting Target" for Tehuantl;
			WaitBreakReactions;
		if Urik is booked or Urik is bunkered:
			say "     Strolling up casually, Urik comes to tower over Spike and looks down at the anthro's sleek body, making him a sliver of a man before the orc's great bulk. 'So, you got a dog, eh? What for, travel entertainment? I can see him being fun when chasing down a tennis ball or useful for sniffing after loot. Fucked a few pooches like this before too, and they were nicely tight,' Urik says to you, never really addressing Spike at all. Offended at not being taken seriously, Spike barks, 'Hey! I hold my own!' As Urik flat out starts laughing, the dobie looks aside sulkily and you wave the orc away.";
			TraitGain "Urik - Mean Orc" for Spike;
			TraitGain "Spike - Beanpole" for Urik;
			WaitBreakReactions;
		if Xerxes is booked or Xerxes is bunkered:
			say "     Dashing towards Spike on all fours, Xerxes goes in to sniff him, then licks his hand as he leans down to reach for him. 'Does he think he's a dog?' Spike asks in surprise, at which point you explain that Xerxes is a transformed normal dog  [if Lust of Helen > 3]but you gave him something to help him become closer to fully human[end if], which the dobie takes in with raised eyebrows, looking at him in a new light. 'Not exactly a shy dude, eh?' the young dobie comments at the human dog's nakedness, then slides a hand over the transformed canine's muscular back. Xerxes accepts this quite happily, even leaning into his touch. [if Lust of Xerxes > 3]'New friend?' he suddenly asks, followed by a happy bark as Spike says, 'Sure! And if the boss allows it, maybe I can show you just how much of a friend I can be.' Him grabbing the bulge in his pants and adjusting it shows exactly what he means. [end if]Afterwards, Xerxes happily runs off.";
			WaitBreakReactions;
			TraitGain "Xerxes - Ready Bitch" for Spike;
			TraitGain "Spike - Master's Friend" for Xerxes;
		now IntroReactionCounter is 0; [reset]
	say "     (Spike the doberman is now a possible ally! You can make him your active ally by typing [bold type][link]ally Spike[end link][roman type] or [bold type][link]ally doberman[end link][roman type] and initiate sex with him while active by typing [bold type][link]fuck Spike[end link][roman type]. You can see all the allies you have with the [bold type][link]allies[end link][roman type] command. Allies will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of an ally? Use [bold type][link]ally dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])[line break]";
	now HP of Spike is 1;
	add "Tamed" to Traits of doberman companion;
	now doberman companion is tamed;
	AddCompanionFunction "doberman companion";

Section 2 - Combat Pet

Table of GameCharacterIDs (continued)
object	name
doberman companion	"doberman companion"

doberman companion is a pet.
NPCObject of doberman companion is Spike.
understand "Spike" as doberman companion.
understand "Doberman" as doberman companion.
IDList of doberman companion is { "Spike", "spike", "dog", "Dobie", "dobie", "Doberman", "doberman", "Doberman Companion", "doberman companion" }.
printed name of doberman companion is "Spike".
Description of doberman companion is "[SpikeDesc]".
Weapon Damage of doberman companion is 15.
The level of doberman companion is 1.
Dexterity of doberman companion is 10.
The summondesc of doberman companion is "[SummonSpike]".
The dismissdesc of doberman companion is "[DismissSpike]".
The assault of doberman companion is "[one of]Spike pounces your opponent, landing some good hits.[or]The anthro doberman by your side lands a kick on the leg of your opponent, hurting and distracting them.[or]An aggressive bark by Spike distracts your enemy a moment - long enough for you to score a quick hit![or]Snarling, Spike snaps for your enemy with his teeth, leaving a gash as he is fought off.[at random]".
the fuckscene of doberman companion is "[SexWithSpike]".

to say SummonSpike:
	if Spike is visible: [summoning while standing next to him]
		project the Figure of Spike_clothed_icon;
		if Spike is asleep:
			say "     You make a beeline for Spike's little camp, shaking the young canine awake [if libido of Spike > 40]roughly[else]gently[end if] and explaining that you need him with you right now. 'Sure thing, [SpikePlayerAddress]!' he says[if libido of Spike > 40]and[else], eager to please even as he[end if] rubs the sand from his eyes. Snatching up his clothes, the slender doberman gets dressed in a rush, then takes his spot by your side to support you.";
			now Sleeping of Spike is false;
		else:
			say "     You give a sharp whistle and wave to Spike, directing him to follow you. The young canine quickly rushes to your side and takes his spot to support you.";
	else: [regular summoning]
		say "     And how do you want to do that? Cell phone reception kinda went downhill with the start of the nanite apocalypse and it's not like you can just magic up Spike to appear next to you. Go pick him up yourself.";
		now SummonFailure is true;

to say DismissSpike:
	project the figure of Spike_face_icon;
	if Player is in Sitting Area:
		say "     You tell Spike that you don't need him right now. He looks at you with a somewhat disappointed expression, then shrugs and goes over to hang out in his improvised man-cave.";
	else if Player is booked or player is bunkered: [dismissing him in the abbey]
		say "     You tell Spike that you don't need him right now. He looks at you with a somewhat disappointed expression, then shrugs and walks off, likely to hang out in his improvised man-cave on the upper floor.";
	else:
		say "     You tell Spike that you don't need him right now. He looks at you with a somewhat disappointed expression, glancing around. 'Err, okay then. I'll make my way back to the library. See ya, [SpikePlayerAddress].' With that said, he wanders off and is quickly out of sight.";
	move Spike to Sitting Area;

Section 3 - NPC

Table of GameCharacterIDs (continued)
object	name
Spike	"Spike"

Spike is a man.
ScaleValue of Spike is 3. [human sized]
Body Weight of Spike is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Spike is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Spike is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Spike is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Spike is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Spike is 5. [length in inches]
Breast Size of Spike is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Spike is 2. [count of nipples]
Asshole Depth of Spike is 8. [inches deep for anal fucking]
Asshole Tightness of Spike is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Spike is 1. [number of cocks]
Cock Girth of Spike is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Spike is 9. [length in inches]
Ball Count of Spike is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Spike is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Spike is 0. [number of cunts]
Cunt Depth of Spike is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Spike is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Spike is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Spike is false.
PlayerRomanced of Spike is false.
PlayerFriended of Spike is false.
PlayerControlled of Spike is false.
PlayerFucked of Spike is false.
OralVirgin of Spike is true.
Virgin of Spike is true.
AnalVirgin of Spike is true.
PenileVirgin of Spike is false.
SexuallyExperienced of Spike is true.
TwistedCapacity of Spike is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Spike is false. [steriles can't knock people up]
MainInfection of Spike is "Doberman Male".
Description of Spike is "[SpikeDesc]".
Conversation of Spike is { "<This is nothing but a placeholder!>" }.
The scent of Spike is "     Spike's scent of dog is almost drowned out by some sort of after-shave he's found out in the city. It's a good, masculine scent, you only wish he wouldn't be using quite as much of it.".

to say SpikeDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Spike] <- DEBUG[line break]";
	if Spike is asleep:
		project the Figure of Spike_naked_soft_icon;
	else:
		project the Figure of Spike_clothed_icon;
	say "     Spike is a young doberman that looks to be about eighteen years old. He clearly has been working out a bit, giving him a toned but not too bulky physique that should serve him well in a fight. The young man is dressed in a pair of ripped jeans, a skin-tight mesh shirt showing off his toned chest, as well as a loose-fitting collar around his neck, studded with spikes. With half of his head hair shaved off and the other half dyed neon green and hanging down one side of his face as a middling long strand, he certainly has a memorable look.";
	if Player is in Sitting Area:
		say "     Having claimed a corner of the upper library floor as his, Spike has made a little man-cave for himself, dragging a mattress up from the bunker and setting the desk that had occupied the corner as a little reading nook on its side, to block a passage between two bookshelves. Posters of scantily dressed human women, as well as one or two with anthro furry erotic art have been pinned to the back wall so that he can look at them when lying down. Which Spikes does quite a bit, day-dreaming about things while stroking himself[if Spike is asleep]. Right now though, the slender doberman is [bold type]asleep[roman type], stretched out naked on his mattress with his usual outfit in a pile next to it[end if].";
	else:
		say "     Accompanying you on your travel throughout the city, he is never far away, usually just a step behind and a little to the side, serving as muscle and glowering at anyone who might dream of crossing you. As he notices your attention on himself, the doberman strokes a hand through his green-dyed hair and gives you a [if Libido of Spike > 40]slightly frightened[else]respectful[end if] nod.";
	if doberman companion is listed in companionList of Player:
		say "     [bold type]He is currently following you as your battle companion.[roman type][line break]";

everyturn rule:
	if doberman companion is tamed and Spike is in Sitting Area:
		if TimekeepingVar is 1 or TimekeepingVar is -7: [midnight]
			if Player is in Sitting Area:
				project the Figure of Spike_naked_soft_icon;
				say "     Stretching his arms and yawning loudly, Spike glances over to you and says, 'I'm pretty beat, [SpikePlayerAddress]. Gonna catch some sleep.' With that said, the young man peels off his clothing, dropping them on a pile next to his bedding and lies down on it. Within mere moments, he has dozed off and is well asleep.";
			now Sleeping of Spike is true;
		[else if TimekeepingVar is 0 or TimekeepingVar is -8:] [pre dawn - unused, Spike sleeps]
		[else if TimekeepingVar is 7 or TimekeepingVar is -1:] [early morning - unused, Spike sleeps in]
		else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]
			if Player is in Sitting Area and Spike is asleep:
				project the Figure of Spike_clothed_icon;
				say "     Waking up after a restful night, Spike sits up from where he was lying on his mattress, rubbing the sand from his eyes as he does so. Seeing you nearby, he says, 'Good morning, [SpikePlayerAddress]!' and then gets up, giving you a little bit of a show as he grabs his clothes and quickly gets dressed. Soon, the young man is standing in front of you, tail wagging hopefully as he states, 'I'm ready for anything. Just give the word and I'll go with you.'";
			now Sleeping of Spike is false;
		else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
			if Player is in Sitting Area:
				say "     Spike makes a beeline for his little camp and retrieves a plastic bag he had stashed behind some books. Turns out it's a packet of beef jerkey, several strips of which he hungrily devours in a few moments.";
		[else if TimekeepingVar is 4 or TimekeepingVar is -4:] [mid afternoon]
		[else if TimekeepingVar is 3 or TimekeepingVar is -5:] [evening]
		[else if TimekeepingVar is 2 or TimekeepingVar is -6:] [early night]

Section 4 - Conversation

instead of conversing the Spike:
	say "[SpikeTalkCheck]";

instead of conversing doberman companion:
	if doberman companion is not tamed:
		say "     Who?";
	else:
		say "[SpikeTalkCheck]";

to say SpikeTalkCheck:
	if Spike is visible:
		if Spike is asleep:
			say "     The slender doberman is deep asleep, splayed out nakedly on his mattress. [bold type]Do you want to wake him?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yup. He had enough rest.";
			say "     ([link]N[as]n[end link]) - Nah, it's not that important.";
			if Player consents: [go after them]
				LineBreak;
				say "     Bending over and giving the anthro canine a little shake, Spike gives a groan as he is pulled from dreamland. A moment later, his eyes open and blearily blink at you, after which he quickly sits up when realizing who's waking him. 'Oh hey, [SpikePlayerAddress]. What's up?'";
				now Sleeping of Spike is false;
				say "[SpikeTalkMenu]";
			else:
				say "     Seeing that your companion is resting, you decide to wait and talk to him later.";
		else:
			say "[SpikeTalkMenu]";
	else if doberman companion is listed in companionList of Player:
		say "[SpikeTalkMenu]";
	else:
		say "     Spike isn't here.";

to say SpikeTalkMenu:
	project the figure of Spike_face_icon;
	say "     [bold type]What do you want to talk with Spike about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "The name he should address you by";
	now sortorder entry is 1;
	now description entry is "Tell Spike the name or title he should use for you";
	[]
	if Spike is visible:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to come with you";
		now sortorder entry is 2;
		now description entry is "Take the young doberman along as your companion";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask him about himself";
	now sortorder entry is 3;
	now description entry is "Make Spike tell you about his background";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask him about Alexandra";
	now sortorder entry is 4;
	now description entry is "Ask Spike his opinion about his mother";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Talk about the military";
	now sortorder entry is 5;
	now description entry is "Bring up the soldiers in the city";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask where he gets his food";
	now sortorder entry is 6;
	now description entry is "Question Spike about what he eats";
	[]
	if Intelligence of Spike is 0:
		choose a blank row in table of fucking options;
		now title entry is "Nanite transformations";
		now sortorder entry is 7;
		now description entry is "Discuss how to transform with Spike";
	[]
	if Intelligence of Spike > 0:
		choose a blank row in table of fucking options;
		now title entry is "Ask him for some fur";
		now sortorder entry is 8;
		now description entry is "Request a tuft of Spike's fur";
	[]
		choose a blank row in table of fucking options;
		now title entry is "Ask him for some cum";
		now sortorder entry is 9;
		now description entry is "Request a sample of Spike's cum";
	[]
	if Energy of Spike > 0:
		choose a blank row in table of fucking options;
		now title entry is "Talk about Tehuantl";
		now sortorder entry is 10;
		now description entry is "Ask him about the jaguarman";
	[]
	if Stamina of Spike > 0: [he knows Urik]
		choose a blank row in table of fucking options;
		now title entry is "Talk about Urik";
		now sortorder entry is 11;
		now description entry is "Ask him about the huge orc";
	[]
	if Dexterity of Spike > 0: [he knows Urik]
		choose a blank row in table of fucking options;
		now title entry is "Talk about your orc warrior Urik";
		now sortorder entry is 12;
		now description entry is "Ask him about the huge orc";
	[]
	[TODO: Add rules talk - fucking around, breeding, etc.]
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "The name he should address you by"):
					say "[SpikeRenameMenu]";
				else if (nam is "Tell him to come with you"):
					say "[SpikePickup]";
				else if (nam is "Ask him about himself"):
					say "[SpikeTalk3]";
				else if (nam is "Ask him about Alexandra"):
					say "[SpikeTalk4]";
				else if (nam is "Talk about the military"):
					say "[SpikeTalk5]";
				else if (nam is "Ask where he gets his food"):
					say "[SpikeTalk6]";
				else if (nam is "Nanite transformations"):
					say "[SpikeTalk7]";
				else if (nam is "Ask him for some fur"):
					say "[SpikeTalk8]";
				else if (nam is "Ask him for some cum"):
					say "[SpikeTalk9]";
				else if (nam is "Talk about Tehuantl"):
					say "[SpikeTalk10]";
				else if (nam is "Talk about Urik"):
					say "[SpikeTalk11]";
				else if (nam is "Talk about your orc warrior Urik"):
					say "[SpikeTalk12]";
				wait for any key;
				say "[SpikeTalkMenu]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the young doberman, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SpikePickup:
	say "     You give a sharp whistle and wave to Spike, directing him to follow you. The young canine quickly rushes to your side and takes his spot to support you.";
	AddCompanionFunction "doberman companion";

to say SpikeTalk3: [himself]
	say "     Lifting his arms and putting both hands behind his head, Spike looks at you and shrugs. 'You know most of it anyways. After all, you were the one who tamed the tough bitch that is my mom and brought her to the library. She had me and the others not much later. Living with all of them as a pack wasn't half-bad at first either. You should have seen the things that we did together! There are some corners in the library that... ah, but that's old news. Anyways, mom kept treating me like a pup even when I grew up. Hell, I was fully grown for days and she still lumped me in with the others. Got pretty annoyed with that shit, fast, so I started exploring the surrounding city blocks on my own. Anything to get out from under her paw a bit, you know?' Patting the leg of his ripped jeans and tugging on his skin-tight mesh shirt, the anthro doberman proudly explains that he found them scavenging.";
	say "     Then Spike goes on to grab his crotch, adjusting the penis-shaped bulge in it and says, 'After what happened next, I knew that I didn't just want to go back and spend all of my time cooped up in the library. Following the most amazing scent, I went down the street and into an alley, and there I met a bitch! Oh yeah, let me tell you, that husky slut was just asking for it. Totally in heat and ready to rub up against me from the first moment our eyes met. Damn, I still can't believe how good it felt to sink my bone into her, to take that needy bitch!' Now your canine companion is openly rubbing his dick through the fabric of his pants, caught up in the memory of losing his virginity. 'Well, I fucked her good! Tied with her and stayed on top till I had bred that pussy to the brim!'";
	WaitLineBreak;
	say "     Spike shares a grin with you, happy to share his story, but then suddenly his face draws into a bit of a frown. 'When I got back home mom was angry about me just going off on my own and wanted to know what I had been doing. I told her exactly [italic type]whom[roman type] I had been doing, and that I was an adult now. That stupid bitch just laughed!' Intentionally raising his voice to sound a bit more like Alexandra, Spike says in a biting tone, 'Just because you got your dick wet doesn't mean that you're a man.' The young man shows a little bit of his teeth and growls under his breath, then barks out the words, 'I'll show her, and everyone else too! Things are gonna be great with me and you out in the city together!'";

to say SpikeTalk4: [Alexandra]
	say "     Asking the anthro doberman about his parent causes Spike to grimace a little bit, followed by a huff. 'What can I say? I'm the son of a bitch. The top bitch of the library, if you ask her, and someone I should apparently listen to and obey. Oh, don't misunderstand me, she was pretty nice to have as a mom when I was a pup, but definitively less so later.' Grumbling, Spike makes a fist, followed by a throwing-away gesture. 'It's just unfair, you know. I know a bit of how she thinks, ever since I was little and drank it up with her milk. Part of mom felt freed when she became your bad bitch; unrestrained in her lusts and desires, allowing herself to let stupid morality [italic type]go for good[roman type]. Hell, I grew up knowing just how much you can accomplish if you're powerful and ruthless enough. How was I supposed to stay her sweet little cub forever? Fuck that! I wanna get some action too!'";

to say SpikeTalk5: [military]
	say "     Bringing up the topic of the military and their presence in the city draws little attention from Spike. Only when you keep looking at him, one eyebrow raised as you wait for a reply does the young doberman say, 'Um, what about them? Isn't it some sort of loser gang or something? I got some inherited memories from mom and she thought they are supposed to be a big deal, but I've got my doubts. From what I've seen out in the city, lots of those soldiers got taken as sluts and breeding bitches by all sorts of creatures. Pretty weak and pathetic in my book.' Shrugging and putting aside all thought on the military, Spike clears his throat and adds, 'Now if you want a group that truly has to be reckoned with, just look at the hyenas. They're strong, take what they wand and no one fucks around with them, that's for sure!'";

to say SpikeTalk6: [food]
	say "     Mentioning the topic of food, Spike stands up a little straighter and gives you a self-confident look. 'No need to worry about that with me [SpikePlayerAddress]. I know how to take care of myself and won't take up any of your supplies at all. There are lots of places where one can scavenge for good stuff and even if you don't find anything yourself, someone else out on the streets will have. Most of the time you just gotta wait till they start rutting with someone or something, then make off with the food. And if they wise up and try to stop me - I'm plenty tough enough to rough up someone who wants a beating.'";

to say SpikeTalk7: [transformation]
	say "     Bringing up the topic of transformations with Spike, he looks a bit puzzled at you and scratches the back of his neck. 'Hm, I never really thought about how they really work to be honest. I mean - I've seen that shit go down, mostly after someone got the snot beaten out of them. When they're all beaten down and don't even struggle anymore, see? The winner gets on top, humps the poor bitch or dude and poof, there's two of the critters in the street. But that's not really what you're after, is it? Just giving in, pfft!' Rolling his eyes and making a throwing-away gesture, he discards the idea as ridiculous[if Libido of Spike > 40 and Libido of Spike < 61]which makes you chuckle internally, as that's exactly what you have him doing when you forcefully push him into sex[end if]. Then suddenly, the young doberman taps the side of his muzzle and gets an excited look on his face. 'You know, the way to become something else, on purpose and all, might be to... err, invite it in? Let down your guard and really want it.'";
	say "     Spike frowns at his last sentence, seemingly thinking it sounded rather lame, so he raises his hands in a 'hold on' gesture and rushes ahead to say, 'Just wait and listen! See, I went and had a bit of fun with this husky bitch a little while ago, and you know, totally got her where she wanted to go. As I pulled out after, I could really see the brown fur spreading through her coat! Shy must have been so happy to get a proper dobie boning that she just wanted to be one herself, eh?' Your young companion chuckles and moves as if to nudge you with an elbow, only to falter as he sees your unconvinced expression. 'Wait, wait, wait! I got another example! There was this dude, a... well, something. Armor plates and a tail, slitted eyes, long trenchcoat. Kinda followed him a bit because he looked like he had some profitable racket going. Knocking on doors, whispering with people inside and trading stuff through the crack. Only it wasn't pills or drugs or anything. Just bits of fur with rubber bands around em!'";
	WaitLineBreak;
	say "     Clearing his throat, Spike looks to the ceiling, 'You know, I er - might have waited till that tough lizard dude was gone and gone to the house to grab the goods from the buyer. That's why I know it was just some worthless hair. Bit of a disappointment there, but when I threw it aside, he jumped for it. Thinking back, that guy might have wanted to have a certain shape and wanted the hair for that, eh?' Spike is clearly somewhat embarrassed about his abortive attempt of robbery, but he might have the right idea about the fur and all that. You tell him as much, making him smile about having figured out something. 'So! Uhm, do you want to try, maybe? Since you were asking me all about this and so on,' the doberman offers, then runs a hand along his arms and the very short fur on them. 'Not much to get mostly, but I do have some longer fur here at the neck...'";
	now Intelligence of Spike is 1;

to say SpikeTalk8: [fur request]
	if Energy of Spike - turns > 4:
		say "     As you ask Spike if he could give you some of his hair, the young doberman nods happily enough and raises one hand, feeling around a bit at the back of his neck before pinching his thumb and forefinger around a tuft of hair and giving a sharp tug. 'Ouch, that stings!' he exclaims and rubs the spot with his other hand, then moves to pull a rubber band out of his pocket. 'I thought you might want something like this, so I grabbed some supplies,' your companion explains, as always seeming quite eager to please and gain your approval. Within moments, he holds out his tied-together tuft for you to take.";
		ItemGain doberman male fur by 1;
		now Energy of Spike is turns;
	else:
		say "     As you ask Spike for more fur, he winces a little and rubs the back of his head. 'I'll give you more, but how about giving it some time to re-grow first? Wanna make sure it does, and I won't have a bald spot or something!' Blowing out your breath, you shrug and nod to him. You'll just have to chat him up another time.";

to say SpikeTalk9: [cum request]
	if (lastfuck of Spike - turns < 2): [he came in the last 3 hours]
		say "     Spike looks at you somewhat wide-eyed, then clears his throat. 'Uhm, I - I need a moment to, you know, be ready for another go, [SpikePlayerAddress]. Sorry, but that's just a fact.'";
	else:
		if Libido of Spike is 0: [no special relationship yet]
			say "     As you step up and ask Spike straight out to give you some cum, you notice his Adam's Apple bounce a little as he swallows. 'Er, of course [SpikePlayerAddress]. Just give me a moment alone, alright?' With that said, he quietly takes the empty plastic bottle you dig out of your pack and vanishes into a quiet corner, getting busy stroking himself. It doesn't take all that long before he returns, with the bottle capped and containing his 'donation' as per your request. Pulling out a pen, you scribble on the label of the bottle what is in there, then add it to your pack.";
		if Libido of Spike < 20: [eager for any sex]
			say "     As you step up and ask Spike straight out to give you some cum, he blushes a little under his fur, then smiles and the tip of his tongue dangles out of his mouth for a second before he catches himself. 'Oh, wait! You aren't suggesting doing something with each other, you're just... wanting my fluids?' Something in his voice tells you that he's disappointed in this realization.";
			say "[bold type]Do you want to make the cum donation more fun for Spike after all?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Jerk him off yourself and milk some cum from your dobie companion.";
			say "     ([link]N[as]n[end link]) - He can take care of himself.";
			if Player consents:
				LineBreak;
				say "     Leaning forward and running your hand up behind Spike's head, you pull him in to kiss his muzzle softly. Caressing his sensitive ears, you go on to say that he's your very special dobie companion and you of course want more from him than cum - but you do want that too, right at the moment. Pulling out one of the empty plastic bottles that you collected sometime during your travels, you hand it to the young man, then casually step around him and wrap your arms around his chest from behind. 'Oh? Oooh,' the slender canine pants as your hands move to touch his chest, stroking and caressing his nipples through the thinly stretched material of his mesh shirt. Nuzzling the side of his neck, you take a whiff of his fresh but still masculine scent. You can feel his tail twitch a little where it is pinned between both of your bodies, and the young man would no doubt wag happily if that wasn't the case.";
				say "     'Mmmmh, [SpikePlayerAddress]. That feels nice!' he says, his free hand stretching back to rub your side in return. You continue to caress and fondle the dobie for a little while, often stroking the straight edge of his ears and whispering in them what a good boy and good dog he is for you. Given the stimulation, there's little wonder that the front of his pants are soon tented, and you eventually move on to obtaining what you want, popping the button and then pulling down the zipper of Spike's jeans. Craning your neck to look around him, your gaze falls on the pointy head of his red knotted cock, sticking out straight from his crotch. Your canine companion's tongue lolls out of his mouth as he pants in lust and his body tenses when you reach for his erection, wrapping your fingers around its hot shaft.";
				WaitLineBreak;
				say "     The young man is happily obedient and content with you taking care of him, leaning into your touch and being quite receptive for each little touch and caress. His hand on your side is simply holding on now, though it gives you a squeeze or two at times when your strokes really hit the mark. Wanting to make this more than just milking him for some seed as quickly as possible, you keep caressing Spike, at times slowing down to squeeze his pre-knot bulge and tracing your fingertips along the outside of his tapering dickhead. With him breathing harder and harder, starting to hump into your grasp subconsciously, you know that he's getting close and remind the young doberman that he must be ready to catch his load. 'Yeah, totally,' he grunts, not really registering your words.";
				say "     Trying again, you gently nibble on the base of his ear and stop moving your hand, which allows the horny dobie to calm down a little and actually understand what you're saying. 'Oh! Yeah, sure thing, [SpikePlayerAddress],' he replies a little sheepishly, taking off the cap of the bottle you gave him and holding it ready to catch his impending spurts of canine seed. Giving his shaft a slow stroke up and down, you tell him that you're very proud of him, turning into such a strong and reliable companion for you, ready to do anything you ask of him. The praise makes Spike stand a bit straighter as he soaks it up, and that is the moment you start going all out, really jerking his manhood with no holds barred. Between getting the approval that he craves and the build-up of physical pleasure you've been giving him so far, it isn't hard at all to push the young male over the edge.";
				WaitLineBreak;
				say "     'Fffuuckkk YEAH!' Spike barks out in the throes of his orgasm, with his trembling hands barely coordinated enough to move the bottle to his cum-slit. Still, being the good boy that he is, your dobie does manage the task and the first thick blast of his cum shoots straight into the container, hitting the lower end with a quiet thud, followed by another and another. Keeping your fingers wrapped around his shaft and squeezing the bulge of his now-swollen knot, your other hand cups his balls, rolling and squeezing them gently. You can feel his cum-factories throbbing under your fingertips, almost as if they're working overtime to satisfy your demand for their creamy treasure.";
				say "     Keeping Spike in your embrace, you stroke, caress and touch him for some time, during which he demonstrates just how virile a young buck of a doberman he really is. His erection just keeps spurting out more cum, not as explosively as the first blasts, but still far longer than any human male would have lasted. Glancing down and seeing that he filled about the lower third of the small plastic bottle you gave him, you can't help but wonder if your tight grip on his knot has something to do with it. Maybe his body is trying to make sure he fills his bitch up? No matter which, your little milking fun with the doberman is a roaring success, as it put your companion in an amazing mood and he produced a respectable dose of creamy fluid. The happy dog even digs a pen out of his pocket and writes on the label what is in the bottle, then hands it over to you with a smile and a lick of your cheek.";
			else:
				LineBreak;
				say "     Leaning forward and running your hand up behind Spike's head, you pull him in to kiss his muzzle softly. Caressing his sensitive ears as you explain that there will be other times in which you'll spend some fun moments with each other, the explanation follows that right now, you do actually just need for him to fill one of the empty plastic bottles you collected up as far as he can. 'Okay then, anything for you [SpikePlayerAddress]. Just give me a moment alone, alright?' With that said, he accepts a bottle from you and vanishes into a quiet corner, tail wagging behind his back. The young dobie gets busy stroking himself right quick, so it doesn't take all that long before he returns, with the bottle capped and containing his 'donation' as per your request. He even digs a pen out of his pocket and writes on the label what is in the bottle.";
		else if Libido of Spike < 40: [pressured into subby sex]
			say "     As you step up and ask Spike straight out to give you some cum, you notice his Adam's Apple bounce a little as he swallows. 'Er, of course [SpikePlayerAddress]. Just give me a moment alone, alright?' With that said, he quietly takes the empty plastic bottle you dig out of your pack and vanishes into a quiet corner, getting busy stroking himself. It doesn't take all that long before he returns, with the bottle capped and containing his 'donation' as per your request. Pulling out a pen, you scribble on the label of the bottle what is in there, then add it to your pack.";
		else if Libido of Spike < 60: [forced into subby sex]
			say "     As you step up and command that Spike give you some cum, milked into a plastic bottle, you notice his Adam's Apple bounce a little as he swallows. 'Er, of course [SpikePlayerAddress]. Just give me a moment alone, alright?' As he reaches out for the bottle, you smack his muzzle with it and in a harsh tone demand to know if you ordered him to go into a corner to do his business. 'No, I - I thought...' the young man starts, but seeing the unimpressed sneer that this brings to your face, he falls silent again. Without another word, he quietly undoes the button and zipper of his pants, pushing them down to start rubbing his sheath and tease out the length of his manhood. Nervously glancing up at you from having his head lowered, he gets himself fully hard before much longer.";
			say "     You step up to the slender, toned body of your dobie companion and bump his hand aside to stroke he red shaft of his canine cock a few times, then grab him by the balls and nod for him to proceed. Rolling the furry cum-factories between your fingers and giving them firm, but not actually painful squeezes, you keep Spike literally well in hand while he jerks himself off, holding the empty bottle ready. You can't help but smile at the control you have over the young man, reveling in your power while he milks himself dutifully. The strokes along his knotted length come faster and faster before long, and he lets out a grunt, then starts to blast his seed into the bottle. Throb after throb of rich canine spunk lands in the plastic container, filling about the lower third of the small bottle before his orgasm ebbs off. Pulling it from his grasp with a casual command to clean himself up, you turn your back on Spike and label the bottle, then add it to your pack.";
		ItemGain doberman male cum by 1;
		now lastfuck of Spike is turns;

to say SpikeTalk10: [Tehuantl Talk]
	if Energy of Spike is 100:
		say "     Mentioning your jaguar warrior companion to Spike makes the young man stand up a little straighter, tensing visibly. We, err... I haven't talked to him since you know what. So, not much to say there. Honest!' Raising your eyebrow at the dobie, you hold his gaze for a long moment, then eventually give a gradual nod, accepting his assertions.";
	else if Energy of Spike > 6 and Energy of Spike < 50:
		say "     Mentioning your jaguar warrior companion to Spike makes the young man stand up a little straighter, his tail starting to wag. A smile spreads over his muzzle and the young man happily says, 'He's a great guy to hang out with, I'm learning a whole lot from that cat! Fighting, and how to act, and... man, that hole on him is just awesome around my dick! You're just the best, [SpikePlayerAddress], taking people like him into your organization!' Raising your eyebrow at the dobie and giving an amused smile at his obvious liking of Tehuantl, you chat a little bit more about the jaguar warrior before moving on to other topics.";
	else:
		say "     Mentioning your jaguar warrior companion to Spike makes the young man stand up a little straighter, his tail starting to wag. A smile spreads over his muzzle and the young man happily says, 'He's a great guy to hang out with, I'm learning a whole lot from that cat! Fighting, and how to act, and everything really. I feel that I'm getting to be a much better right-hand man with him training me. You're just the best, [SpikePlayerAddress], taking people like him into your organization!' Raising your eyebrow at the dobie and giving an amused smile at his obvious liking of Tehuantl, you chat a little bit more about the jaguar warrior before moving on to other topics.";

to say SpikeRenameMenu:
	project the figure of Spike_face_icon;
	say "     What should Spike use to address you in the future?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is not defaultnamed and thirst of Spike is not 0:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you by your name";
		now sortorder entry is 0;
		now description entry is "Allow Spike to call you [name of Player]";
	[]
	if thirst of Spike is not 1:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Boss";
		now sortorder entry is 1;
		now description entry is "Make Spike call you Boss";
	[]
	if thirst of Spike is not 2:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Don";
		now sortorder entry is 2;
		now description entry is "Make Spike call you Don";
	[]
	if thirst of Spike is not 3:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Capo";
		now sortorder entry is 3;
		now description entry is "Make Spike call you Capo";
	[]
	if thirst of Spike is not 4:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Kingpin";
		now sortorder entry is 4;
		now description entry is "Make Spike call you Kingpin";
	[]
	if thirst of Spike is not 5:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Oyabun";
		now sortorder entry is 5;
		now description entry is "Make Spike call you Oyabun";
	[]
	if thirst of Spike is not 6:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Chief";
		now sortorder entry is 6;
		now description entry is "Make Spike call you Chief";
	[]
	if thirst of Spike is not 7:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Sir";
		now sortorder entry is 7;
		now description entry is "Make Spike call you Sir";
	[]
	if thirst of Spike is not 8:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Hoss";
		now sortorder entry is 8;
		now description entry is "Make Spike call you Hoss";
	[]
	if MaxHP of Spike is 1 and thirst of Spike is not 11 and Libido of Spike > 0 and Libido of Spike < 20: [player is the father, joyful sexual relationship]
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Daddy";
		now sortorder entry is 11;
		now description entry is "Let Spike call you Daddy";
	[]
	if MaxHP of Spike is 1 and thirst of Spike is not 12: [player is the father]
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Dad";
		now sortorder entry is 12;
		now description entry is "Let Spike call you Dad";
	[]
	if MaxHP of Spike is not 1 and thirst of Spike is not 13 and Libido of Spike > 0 and Libido of Spike < 20: [player is not the father, joyful sexual relationship]
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Stepdaddy";
		now sortorder entry is 13;
		now description entry is "Let Spike call you Stepdaddy";
	[]
	if MaxHP of Spike is not 1 and thirst of Spike is not 14: [player is not the father]
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Stepdad";
		now sortorder entry is 14;
		now description entry is "Let Spike call you Stepdad";
	[]
	if thirst of Spike is not 15:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Master";
		now sortorder entry is 15;
		now description entry is "Let Spike call you Master";
	[]
	if MaxHP of Spike is 1 and thirst of Spike is not 11 and Libido of Spike > 0 and Libido of Spike < 20: [player is the father, joyful sexual relationship]
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Mommy";
		now sortorder entry is 11;
		now description entry is "Let Spike call you Mommy";
	[]
	if MaxHP of Spike is 1 and thirst of Spike is not 12: [player is the father]
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Mom";
		now sortorder entry is 12;
		now description entry is "Let Spike call you Mom";
	[]
	if MaxHP of Spike is not 1 and thirst of Spike is not 13 and Libido of Spike > 0 and Libido of Spike < 20: [player is not the father, joyful sexual relationship]
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Stepmommy";
		now sortorder entry is 13;
		now description entry is "Let Spike call you Stepmommy";
	[]
	if MaxHP of Spike is not 1 and thirst of Spike is not 14: [player is not the father]
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Stepmom";
		now sortorder entry is 14;
		now description entry is "Let Spike call you Stepmom";
	[]
	if thirst of Spike is not 15:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to call you Mistress";
		now sortorder entry is 15;
		now description entry is "Let Spike call you Mistress";
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is:
					-- "Tell him to call you by your name":
						say "[SpikePlayerName]";
					-- "Tell him to call you Boss":
						say "[SpikePlayerNameBoss]";
					-- "Tell him to call you Don":
						say "[SpikePlayerDon]";
					-- "Tell him to call you Capo":
						say "[SpikePlayerNameCapo]";
					-- "Tell him to call you Kingpin":
						say "[SpikePlayerNameKingpin]";
					-- "Tell him to call you Oyabun":
						say "[SpikePlayerNameOyabun]";
					-- "Tell him to call you Chief":
						say "[SpikePlayerNameChief]";
					-- "Tell him to call you Sir":
						say "[SpikePlayerNameSir]";
					-- "Tell him to call you Hoss":
						say "[SpikePlayerNameHoss]";
					-- "Tell him to call you Daddy":
						say "[SpikePlayerNameDaddy]";
					-- "Tell him to call you Dad":
						say "[SpikePlayerNameDad]";
					-- "Tell him to call you Stepdaddy":
						say "[SpikePlayerNameStepdaddy]";
					-- "Tell him to call you Stepdad":
						say "[SpikePlayerNameStepdad]";
					-- "Tell him to call you Master":
						say "[SpikePlayerNameMaster]";
					-- "Tell him to call you Mommy":
						say "[SpikePlayerNameMommy]";
					-- "Tell him to call you Mom":
						say "[SpikePlayerNameMom]";
					-- "Tell him to call you Stepmommy":
						say "[SpikePlayerNameStepmommy]";
					-- "Tell him to call you Stepmom":
						say "[SpikePlayerNameStepmom]";
					-- "Tell him to call you Mistress":
						say "[SpikePlayerNameMistress]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You change your mind and wave off the topic of conversation.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SpikePlayerName:
	say "     'Alright! Will do, [name of Player]!' Spike replies with a happy bark, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring looks when he thinks you are not watching.";
	now thirst of Spike is 0;

to say SpikePlayerNameBoss:
	if thirst of Spike is 0 or (thirst of Spike > 10 and thirst of Spike < 15) or (thirst of Spike > 20 and thirst of Spike < 25):
		say "     'Of course. Will do, Boss!' Spike replies, taking care to appear upbeat about it even though you're taking a little bit of familiarity between the two of you away from him. No matter what, the young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching. Clearly, he is eager to reclaim your good graces any way he can.";
	else:
		say "     'Of course. Will do, Boss!' Spike replies, giving you a respectful nod. The young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching, apparently wishing for more than just being a follower to you.";
	now thirst of Spike is 1;

to say SpikePlayerDon:
	if thirst of Spike is 0 or (thirst of Spike > 10 and thirst of Spike < 15) or (thirst of Spike > 20 and thirst of Spike < 25):
		say "     'Of course. Will do, Don! Guess we're the new mob, eh?' Spike replies, taking care to appear upbeat about it even though you're taking a little bit of familiarity between the two of you away from him. No matter what, the young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching. Clearly, he is eager to reclaim your good graces any way he can.";
	else:
		say "     'Of course. Will do, Don! Guess we're the new mob, eh?' Spike replies, giving you a respectful nod. The young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching, apparently wishing for more than just being a follower to you.";
	now thirst of Spike is 2;

to say SpikePlayerNameCapo:
	if thirst of Spike is 0 or (thirst of Spike > 10 and thirst of Spike < 15) or (thirst of Spike > 20 and thirst of Spike < 25):
		say "     'Of course. Will do, Capo! Guess we're the new mob, eh?' Spike replies, taking care to appear upbeat about it even though you're taking a little bit of familiarity between the two of you away from him. No matter what, the young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching. Clearly, he is eager to reclaim your good graces any way he can.";
	else:
		say "     'Of course. Will do, Capo! Guess we're the new mob, eh?' Spike replies, giving you a respectful nod. The young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching, apparently wishing for more than just being a follower to you.";
	now thirst of Spike is 3;

to say SpikePlayerNameKingpin:
	if thirst of Spike is 0 or (thirst of Spike > 10 and thirst of Spike < 15) or (thirst of Spike > 20 and thirst of Spike < 25):
		say "     'Of course. Will do, Kingpin! And I'll keep an eye out for red devils, eh?' Spike replies, taking care to appear upbeat about it even though you're taking a little bit of familiarity between the two of you away from him. No matter what, the young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching. Clearly, he is eager to reclaim your good graces any way he can.";
	else:
		say "     'Of course. Will do, Kingpin! And I'll keep an eye out for red devils, eh?' Spike replies, giving you a respectful nod. The young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching, apparently wishing for more than just being a follower to you.";
	now thirst of Spike is 4;

to say SpikePlayerNameOyabun:
	if thirst of Spike is 0 or (thirst of Spike > 10 and thirst of Spike < 15) or (thirst of Spike > 20 and thirst of Spike < 25):
		say "     'Of course. Will do, Oyabun!' Spike replies, adding an inexpert bow. He is taking care to appear upbeat about it even though you're taking a little bit of familiarity between the two of you away from him. No matter what, the young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching. Clearly, he is eager to reclaim your good graces any way he can.";
	else:
		say "     'Of course. Will do, Oyabun!' Spike replies, adding an inexpert bow. The young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching, apparently wishing for more than just being a follower to you.";
	now thirst of Spike is 5;

to say SpikePlayerNameChief:
	if thirst of Spike is 0 or (thirst of Spike > 10 and thirst of Spike < 15) or (thirst of Spike > 20 and thirst of Spike < 25):
		say "     'Of course. Will do, Chief!' Spike replies, saluting with a fist held against his chest. He is taking care to appear upbeat about it even though you're taking a little bit of familiarity between the two of you away from him. No matter what, the young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching. Clearly, he is eager to reclaim your good graces any way he can.";
	else:
		say "     'Of course. Will do, Chief!' Spike replies, saluting with a fist held against his chest. The young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching, apparently wishing for more than just being a follower to you.";
	now thirst of Spike is 6;

to say SpikePlayerNameSir:
	if thirst of Spike is 0 or (thirst of Spike > 10 and thirst of Spike < 15) or (thirst of Spike > 20 and thirst of Spike < 25):
		say "     'Of course. Will do, Sir!' Spike replies, giving a somewhat sloppy version of a salute. He is taking care to appear upbeat about it even though you're taking a little bit of familiarity between the two of you away from him. No matter what, the young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching. Clearly, he is eager to reclaim your good graces any way he can.";
	else:
		say "     'Of course. Will do, Sir!' Spike replies, giving a somewhat sloppy version of a salute. The young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching, apparently wishing for more than just being a follower to you.";
	now thirst of Spike is 7;

to say SpikePlayerNameHoss:
	if thirst of Spike is 0 or (thirst of Spike > 10 and thirst of Spike < 15) or (thirst of Spike > 20 and thirst of Spike < 25):
		say "     'Of course. Will do, Hoss!' Spike replies, adding a respectful nod. He is taking care to appear upbeat about it even though you're taking a little bit of familiarity between the two of you away from him. No matter what, the young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching. Clearly, he is eager to reclaim your good graces any way he can.";
	else:
		say "     'Of course. Will do, Hoss!' Spike replies, adding a respectful nod. The young doberman keeps giving you hopeful and admiring looks whenever he thinks that you are not watching, apparently wishing for more than just being a follower to you.";
	now thirst of Spike is 8;

to say SpikePlayerNameDaddy:
	if Player is male:
		say "     'Alright! I can do that Daddy!' Spike replies with a happy bark, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	else:
		say "     Spike hesitates for a second as you say your part, letting his eyes roam up and down over your body. 'But you're not - err, nevermind. You're the boss Daddy!' Spike replies with a happy bark after shaking off his confusion, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	now thirst of Spike is 11;

to say SpikePlayerNameDad:
	if Player is male:
		say "     'Alright! I can do that Dad!' Spike replies with a happy bark, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	else:
		say "     Spike hesitates for a second as you say your part, letting his eyes roam up and down over your body. 'But you're not - err, nevermind. You're the boss Dad!' Spike replies with a happy bark after shaking off his confusion, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	now thirst of Spike is 12;

to say SpikePlayerNameStepdaddy:
	if Player is male:
		say "     'Alright! With mom being your bitch, I guess Stepdaddy fits!' Spike replies with a happy bark, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	else:
		say "     Spike hesitates for a second as you say your part, letting his eyes roam up and down over your body. 'But you're not - err, nevermind. You're the boss Stepdaddy!' Spike replies with a happy bark after shaking off his confusion, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	now thirst of Spike is 13;

to say SpikePlayerNameStepdad:
	if Player is male:
		say "     'Alright! With mom being your bitch, I guess Stepdad fits!' Spike replies with a happy bark, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	else:
		say "     Spike hesitates for a second as you say your part, letting his eyes roam up and down over your body. 'But you're not - err, nevermind. You're the boss Stepdad!' Spike replies with a happy bark after shaking off his confusion, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	now thirst of Spike is 14;

to say SpikePlayerNameMaster:
	if Libido of Spike < 40 or Libido of Spike > 60: [not forced into sex]
		if Player is male:
			say "     As you bring up your ideas for what he should address you with, Spike frowns and crosses his arms in front of his chest. 'No, that I won't do. I'm not some flunky or slave boss! I came to you to be part of your organization and learn from the best, but that doesn't mean you can push me around to do anything you want.' With a shake of his head and a somewhat sulky expression, he turns away from you.";
		else:
			say "     As you bring up your ideas for what he should address you with, Spike frowns and crosses his arms in front of his chest. 'No, that I won't do. I'm not some flunky or slave boss! I came to you to be part of your organization and learn from the best, but that doesn't mean you can push me around to do anything you want. And you're not even a man either.' With a shake of his head and a somewhat sulky expression, he turns away from you.";
	else:
		say "     As you bring up your ideas for what he should address you with, Spike frowns and starts to cross his arms in front of his chest. Yet as he feels your unrelenting gaze on him, the young man hesitates and trembles a little, maybe remembering the things you did to him before. 'I - um,' he starts to say, then swallows his words with a little bit of a grimace before finally choking out, 'Yes, Master.' With a shake of his head and a somewhat sulky expression, he turns away from you.";
		now thirst of Spike is 15;

to say SpikePlayerNameMommy:
	if Player is female:
		say "     'Alright! I can do that Mommy!' Spike replies with a happy bark, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	else:
		say "     Spike hesitates for a second as you say your part, letting his eyes roam up and down over your body. 'But you're not - err, nevermind. You're the boss Mommy!' Spike replies with a happy bark after shaking off his confusion, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	now thirst of Spike is 21;

to say SpikePlayerNameMom:
	if Player is female:
		say "     'Alright! I can do that Mom!' Spike replies with a happy bark, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	else:
		say "     Spike hesitates for a second as you say your part, letting his eyes roam up and down over your body. 'But you're not - err, nevermind. You're the boss Mom!' Spike replies with a happy bark after shaking off his confusion, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	now thirst of Spike is 22;

to say SpikePlayerNameStepmommy:
	if Player is female:
		say "     'Alright! With mom being your bitch, I guess Stepmommy fits!' Spike replies with a happy bark, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	else:
		say "     Spike hesitates for a second as you say your part, letting his eyes roam up and down over your body. 'But you're not - err, nevermind. You're the boss Stepmommy!' Spike replies with a happy bark after shaking off his confusion, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	now thirst of Spike is 23;

to say SpikePlayerNameStepmom:
	if Player is female:
		say "     'Alright! With mom being your bitch, I guess Stepmom fits!' Spike replies with a happy bark, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	else:
		say "     Spike hesitates for a second as you say your part, letting his eyes roam up and down over your body. 'But you're not - err, nevermind. You're the boss Stepmom!' Spike replies with a happy bark after shaking off his confusion, clearly thrilled that you're allowing him to be this informal and familiar with you. The young doberman's tail is wagging quickly as he keeps giving you admiring and sometimes lust-filled looks when he thinks you are not watching.";
	now thirst of Spike is 24;

to say SpikePlayerNameMistress:
	if Libido of Spike < 40 or Libido of Spike > 60: [not forced into sex]
		if Player is female:
			say "     As you bring up your ideas for what he should address you with, Spike frowns and crosses his arms in front of his chest. 'No, that I won't do. I'm not some flunky or slave boss! I came to you to be part of your organization and learn from the best, but that doesn't mean you can push me around to do anything you want.' With a shake of his head and a somewhat sulky expression, he turns away from you.";
		else:
			say "     As you bring up your ideas for what he should address you with, Spike frowns and crosses his arms in front of his chest. 'No, that I won't do. I'm not some flunky or slave boss! I came to you to be part of your organization and learn from the best, but that doesn't mean you can push me around to do anything you want. And you're not even a woman either.' With a shake of his head and a somewhat sulky expression, he turns away from you.";
	else:
		say "     As you bring up your ideas for what he should address you with, Spike frowns and starts to cross his arms in front of his chest. Yet as he feels your unrelenting gaze on him, the young man hesitates and trembles a little, maybe remembering the things you did to him before. 'I - um,' he starts to say, then swallows his words with a little bit of a grimace before finally choking out, 'Yes, Mistress.' With a shake of his head and a somewhat sulky expression, he turns away from you.";
		now thirst of Spike is 25;

to say SpikePlayerAddress:
	if thirst of Spike is:
		-- 0:
			say "[name of Player]";
		-- 1:
			say "Boss";
		-- 2:
			say "Don";
		-- 3:
			say "Capo";
		-- 4:
			say "Kingpin";
		-- 5:
			say "Oyabun";
		-- 6:
			say "Chief";
		-- 7:
			say "Sir";
		-- 8:
			say "Hoss";
		-- 11:
			say "Daddy";
		-- 12:
			say "Dad";
		-- 13:
			say "Stepdaddy";
		-- 14:
			say "Stepdad";
		-- 15:
			say "Master";
		-- 21:
			say "Mommy";
		-- 22:
			say "Mom";
		-- 23:
			say "Stepmommy";
		-- 24:
			say "Stepmom";
		-- 25:
			say "Mistress";

Section 5 - Fucking

instead of fucking the Spike:
	say "[SexWithSpike]";

to say SexWithSpike:
	if Spike is asleep:
		say "     The slender doberman is deep asleep, splayed out nakedly on his mattress. [bold type]Do you want to wake him?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yeah, you're horny!";
		say "     ([link]N[as]n[end link]) - Nah, you can restrain your lusts for now.";
		if Player consents: [wake]
			LineBreak;
			say "     Bending over and giving the anthro canine a little shake, Spike gives a groan as he is pulled from dreamland. A moment later, his eyes open and blearily blink at you, after which he quickly sits up when realizing who's waking him. 'Oh hey, [SpikePlayerAddress]. What's up?'";
			now Sleeping of Spike is false;
			say "[SpikeSexMenu]";
		else:
			LineBreak;
			say "     Shaking your head to clear it from lusty thoughts, you decide not to wake Spike up right now.";
		[
		LineBreak;
		say "     [link](1)[as]1[end link] - Yeah, you're horny!";
		say "     [link](2)[as]2[end link] - Who says he needs to be awake to fuck?";
		say "     [link](3)[as]3[end link] - Nah, you can restrain your lusts for now.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to wake him, [link]2[end link] to fuck him while he sleeps or [link]3[end link] to restrain yourself.";
		if calcnumber is 1:
			LineBreak;
			say "     Bending over and giving the anthro canine a little shake, Spike gives a groan as he is pulled from dreamland. A moment later, his eyes open and blearily blink at you, after which he quickly sits up when realizing who's waking him. 'Oh hey, [SpikePlayerAddress]. What's up?'";
			now Sleeping of Spike is false;
			say "[SpikeSexMenu]";
		else if calcnumber is 2:
			LineBreak;
			if PlayerFucked of Spike is false:
				say "     Your first time with the doberman is a special occasion. He really should be awake for that.";
			else:
				say "[SpikeSleepSexMenu]";
		else if calcnumber is 3:
			LineBreak;
			say "     Shaking your head to clear it from lusty thoughts, you decide not to wake Spike up right now.";
		]
	else:
		if (lastfuck of Spike - turns < 3): [he got fucked in the last 9 hours = 3 turns]
			say "     Spike looks at you somewhat wide-eyed, then clears his throat. 'Uhm, I - I'm not ready for another round yet [SpikePlayerAddress]. Guess I need to build up my stamina to keep up with you.";
		else: [ready for sex]
			if Libido of Spike < 20 or Libido of Spike is 100: [eager for any sex OR promised that he doesn't have to do gay stuff]
				say "     As you walk up to Spike, he notices the horny look in your eyes and his tail starts wagging.";
			else if Libido of Spike < 40: [pressured into subby sex]
				say "     Watching Spike as you approach him, you notice his Adam's Apple bounce a little as he swallows, apparently preparing himself to doing what you might demand of him.";
			else if Libido of Spike < 60: [forced into subby sex]
				say "     Watching Spike as you approach him, you can't help but grin at the moment in which he notices your attention, flinching slightly before he steels himself for what you might force him to do next.";
			wait for any key;
			say "[SpikeSexMenu]";

to say SpikeSexMenu:
	project the figure of Spike_naked_hard_icon;
	say "     What exactly do you want to do with Spike?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male and Libido of Spike is not 100: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Get a blowjob";
		now sortorder entry is 1;
		now description entry is "Let Spike suck you off";
	[]
	if Player is female and Libido of Spike is not 100: [only females and herms can get eaten out]
		choose a blank row in table of fucking options;
		now title entry is "Get your pussy eaten out";
		now sortorder entry is 2;
		now description entry is "Let Spike service you orally";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Spike off";
	now sortorder entry is 3;
	now description entry is "Go down on your dobie";
	[]
	if AnalVirgin of Spike is true and player is male and Libido of Spike > 0 and Libido of Spike < 100:
		choose a blank row in table of fucking options;
		now title entry is "Take Spike's virginity";
		now sortorder entry is 4;
		now description entry is "Introduce your dobie to taking a dick up his rear end";
	[]
	if AnalVirgin of Spike is false and player is male and Libido of Spike > 0 and Libido of Spike < 100:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Spike's ass";
		now sortorder entry is 5;
		now description entry is "Get your cock up the dobie's rear end";
	[]
	if Player is female and (Libido of Spike is 0 or Libido of Spike is 100):
		choose a blank row in table of fucking options;
		now title entry is "Take Spike's dick";
		now sortorder entry is 6;
		now description entry is "Spread your legs for the dobie and let him fuck your pussy";
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
				if (nam is "Get a blowjob"):
					say "[SpikeSex1]";
				else if (nam is "Get your pussy eaten out"):
					say "[SpikeSex2]";
				else if (nam is "Suck Spike off"):
					say "[SpikeSex3]";
				else if (nam is "Take Spike's virginity"):
					say "[SpikeSex4]";
				else if (nam is "Fuck Spike's ass"):
					say "[SpikeSex5]";
				else if (nam is "Take Spike's dick"):
					say "[SpikeSex6]";
				if PlayerFucked of Spike is false:
					now PlayerFucked of Spike is true;
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the young doberman, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SpikeSex1: [oral on the player]
	if Libido of Spike is 0:
		say "     As you tell the young doberman that you want him to blow your cock, he gapes openly at you and replies, 'Wait - what's this now?! I thought that we'd pick up some babes out on the streets to have fun with, or maybe even a girly dude. But now you want [italic type]me[roman type] to go down on you? I don't know, [SpikePlayerAddress].' The anthro canine takes half a step back and raises his hands in a warding gesture, clearly less than convinced that he wants to follow your request.";
		say "     [bold type]How do you want to deal with this? It will likely set the tone for your further relationship...[roman type][line break]";
		LineBreak;
		say "     [link](1)[as]1[end link] - Talk him into going down on you.";
		say "     [link](2)[as]2[end link] - Pressure Spike into servicing you.";
		say "     [link](3)[as]3[end link] - Just grab him and force him to his knees.";
		say "     [link](4)[as]4[end link] - Allow him to refuse.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 4:
			say "Choice? (1-4)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to talk him into it, [link]2[end link] to pressure him into it, [link]3[end link] to physically make him do it, or [link]4[end link] to allow Spike to refuse.";
		if calcnumber is 1: [talked into it]
			LineBreak;
			say "     Raising an eye at his refusal, you tell the young man that in order to have total trust in one another, real men become more than just people who work together. That there is a whole level of devotion beyond simple obedience. Drawing him in with words full of fervor, you soon have Spike listening with eager attention, his tail wagging left and right. When you then go on to say that you think he is ready to become one of the people you really trust, the young doberman sinks down in front of you and looks up with a smile on his muzzle. Stroking the strands of neon-green head-hair out of his face, you run your hand along the side of his face and proclaim that you're proud of him, then push aside your clothes and free your [Cock of Player] shaft to stand erect before his eyes.";
			say "     Spike looks wide-eyed at your erection, unsure about how to proceed, even as his wagging tail tells you how happy he is to become your special friend. Placing a hand on top of his head, you gently push him towards your crotch and tell him to start licking. 'Will do, [SpikePlayerAddress],' he replies with a smile on his muzzle and gives you a worshipful glance, then laps over your cock with his long, floppy tongue. The anthro doberman starts out slow, exploring the full length of your manhood in a novice's curiosity until he reaches the tip and slurps up the pre that already has leaked out of your slit. Closing his muzzle to swallow and raising his eyebrows at the unexpected and enticing taste, Spike then goes back for more, licking over your dickhead again and again.";
			WaitLineBreak;
			say "     You allow the young canine a little while of just slurping at your tip, then eventually move your hand to rub the base of his ears, which Spike clearly enjoys, before cradling the back of his head in your fingers. Slowly pushing his head forward, you tell him to take your dick. Spike's tail is still wagging up a storm behind his back as the eager doberman opens up his muzzle a little wider, allowing your erection to slide into it against the warm and slick surface of his floppy tongue. Holding his head steady with your hand, you pump in and out of his muzzle with steady thrusts, enjoying the warmth of his mouth around your manhood. Part of you longs to just go all out in face-fucking your companion, but you temper the impulse and instead give him a few well-meant tips on how to please a man, then slowly take your hand away from his head, stroking Spike's cheek as you do so.";
			say "     Finding himself suddenly without guidance, the canine pulls back a little and licks your dickhead again, then looks up, an unspoken question in his gaze. You simply give him a supportive smile and a nod, after which he starts doing his best to please you all on his own. Following an earlier suggestion, Alexandra's son leans in to lick at your balls, slurping over them and giving each one eager attention. Despite being totally new to it, he is quite good at giving oral pleasure, and it doesn't take long before you have to tell him to get his muzzle around your dick again, as you want to blow in his mouth when you come. The kneeling young man grins happily and replies, 'Just a second.' And with that said, he moves his hands to pull down the zipper of his pants, freeing a hard canine rod to stand erect as a flagpole.";
			WaitLineBreak;
			say "     With his own cock in hand and jerking it in a frantic pace, Spike gets back to his first solo blowjob, bobbing on your cock in a very enthusiastic way. Except the need for a little reminder to cover his teeth with his lips, the young man really does a nice job of it, clearly a quick study - if motivated [italic type]properly[roman type]. Soon, you can't suppress moans and grunts anymore and just let them out, loudly letting your companion know that you are about to come. He just intensifies his attack on your manhood, closing his muzzle around it and sucking hard, which serves very well to push you over the edge in very short notice. Hands shooting forward to clamp onto his canine head, you hump into his muzzle and keep his nose pressed deep into your pubes as spurts of cum splash the back of his throat. While you keep hold of Spike up top and make him eat your load, he keeps jerking himself and barrels over the line of no return to his own climax just moments later.";
			say "     The young dobie grunts around the cock in his muzzle as he starts to shoot long streaks of sperm all over the ground between your legs, each spurt making his whole body twitch and tremble, including the tongue half-wrapped around your own shaft and giving you quite pleasurable sensations. Together, the two of you ride out your respective orgasms, until you eventually pull Spike off your now sensitive cock and help him to stand before you once more. Guiding his muzzle to your lips, you kiss him openly and suck on his tongue, tasting some of your own seed on it. With a teasing smile, you tell him that good things come to those who prove themselves to you, and that he will enjoy himself greatly as your companion. 'I'm sure that I will,' he answers and licks his muzzle, then pushes his softening cock back into his jeans and zips himself up.";
			now Libido of Spike is 1; [talked into it]
			now PlayerFriended of Spike is true;
			NPCSexAftermath Spike receives "OralCock" from Player;
		else if calcnumber is 2: [pressured into it]
			LineBreak;
			say "     Looking scornfully at the resistant young man, you tell him in no uncertain terms that you are very disappointed in his performance as your companion. After all, how can you count on him for important tasks if he even fails at the most simple things you give him as a test. Something even the most stupid slut you could pick up on the street would be capable of doing. Spike's face is a study of emotions as you make your accusation-filled little speech, going from disapproval, to shock, to a deep worry. He gulps when you come to a stop, looking at him expectantly, then slowly sinks to his haunches. A grin spreads over your face when you look at the trembling canine on the ground before you, especially as he gulps nervously when you push aside your clothes to free your [Cock of Player] shaft to stand erect before his eyes.";
			say "     Spike looks wide-eyed at your erection, either unsure about how to proceed or still not really wanting to do this. Doesn't matter which, as you place a hand on top of his head, then firmly push him towards your crotch and tell him to start licking. 'Uhm... okay. Will do, [SpikePlayerAddress],' he replies haltingly and glances up in the hope that you'll change his mind. It takes an impatient clearing of your throat to get him going finally. Submitting to what he must do to redeem himself in your eyes, the young man laps over your cock with his long, floppy tongue. The anthro doberman starts out slow, exploring the full length of your manhood in a novice's curiosity until he reaches the tip and slurps up the pre that already has leaked out of your slit. Closing his muzzle to swallow and raising his eyebrows at the unexpected and apparently enticing taste, Spike then goes back for more, licking over your dickhead again and again.";
			WaitLineBreak;
			say "     You allow the young canine a little while of just slurping at your tip, then eventually declare that it isn't enough and he needs to really go down on your dick. With that said, you reach down and cradle the back of his head in your fingers. Slowly pushing his head forward, you tell him to open wide. Spike's Adam's Apple bobs nervously as he swallows, then parts his muzzle and allows your erection to slide into it against the warm and slick surface of his broad tongue. Holding his head steady with your hand, you pump in and out of his muzzle with steady thrusts, enjoying the warmth of his mouth around your manhood. Part of you longs to just go all out in face-fucking your companion, but you temper the impulse to not overwhelm your sub in training. To stave off the temptation for now, you pull out instead, then slap your dripping wet shaft against the top of his muzzle, laying across its length.";
			say "     Finding himself crossing his eyes to look at your cock, the canine whimpers in confusion, then looks up, the unspoken question of what to do now in his gaze. You simply give him a grin and tell him to lick. Eyebrows drawing together for a second, Spike takes a second to realize that his nose is pressed right against your balls, with that obviously being what you want serviced. Alexandra's son suppresses a whine as he slowly licks your balls, slurping over them and giving each one attention. Despite being totally new to it, he apparently is a natural at giving oral pleasure, and it doesn't take long before you have to tell him to get his muzzle around your dick again, as you want to blow in his mouth when you come. The kneeling young man nods silently and then takes your [Cock of Player] shaft into his muzzle, this time not even having to be led by your hand on his head.";
			WaitLineBreak;
			say "     Slowly getting used to what is expected of him, Spike gets back to his first solo blowjob, bobbing on your cock in a dutiful manner. Except the need for a slight smack to the back of his head as a reminder to cover his teeth with his lips, the young man actually does a nice job of it, clearly a quick study - if motivated [italic type]properly[roman type]. Soon, you can't suppress moans and grunts anymore and just let them out, loudly letting your companion know that you are about to come. He freezes for a second, tempted to pull off, then pushes aside his reluctance and instead intensifies his attack on your manhood. Closing his muzzle around it, Spike sucks hard, which serves very well to push you over the edge in very short notice. Hands shooting forward to clamp onto his canine head, you hump into his muzzle and keep his nose pressed against your crotch as spurts of cum splash the back of his throat. While you keep hold of Spike's head, the young man's hands grasp your legs, his grip tightening every time a new spurt of seed erupts into him.";
			say "     You ride out your orgasm, filling the dobie's stomach with your load, then also pulling back to cover his tongue with more of the creamy fluid. Eventually, you pull Spike off your now sensitive cock and pat his head, telling him that he's proven himself - for now. As he stands before you, an expression of mixed relief and worry washes over his face, no doubt from Spike wondering what he might need to do next. You just throw an arm around his shoulders in a vaguely possessive fashion, then rub the dobie's hair and tell him that good things come to those who prove themselves to you. 'I'll make sure to remember that,' he answers and brushes away a spurt of cum from the side of his muzzle, wiping it off on the ground.";
			now Libido of Spike is 21; [pressured into it]
			now PlayerControlled of Spike is true;
			NPCSexAftermath Spike receives "OralCock" from Player;
		else if calcnumber is 3: [forced into it]
			LineBreak;
			say "     Stepping right into the young doberman's comfort zone, you don't give him even a second to react, simply snatching him by the loose collar and using that convenient handhold to wrench him even closer. Spike lets out a somewhat choked gasp at suddenly being man-handled, his eyes wide in fear as your merciless gaze studies his face. Telling him that he gave himself to you, with everything this implies, you then physically push him down, making the anthro canine fall to his knees before you. A grin spreads over your face when you look at the trembling doberman on the ground, especially as he gulps nervously when you push aside your clothes to free your [Cock of Player] shaft to stand erect before his eyes.";
			say "     'But I - oommmphh,' Spike starts to say, which gives you just what you needed, an open mouth and warm doggy tongue to slide your dick against. Grabbing a handful of his green hair, you give him a sharp warning about not biting you, then hold the young man's head tightly and just slam your hips forward. Your erection slips easily between his lips, only stopping as his nose is pressed against your crotch. Spike sputters and coughs at the sudden intrusion of your cock, his hands moving to weakly grab your legs and push himself away - without much success, as you keep hold of him in an unrelenting grip. It feels kinda nice how his trembling tongue is moving against your cock as he tries to speak and or push your shaft aside and you leave him to struggle a bit, then finally reach down with your other hand and grab his throat. Squeezing lightly, you growl for him to hold still and listen, then lay out in no uncertain terms that he's yours to do with as you please.";
			WaitLineBreak;
			say "     You keep your grip on Spike's neck for a little while longer to allow his situation to fully sink in, then let go, chuckling a little as you feel the warmth of the shallow, panicky breaths that follow against your cock. Despite the fact that he has now given up struggling, you grab the young man's head with both hands, getting a good grip as you begin to face-fuck him. There are some gurgles and choking noises during your first few thrusts against the back of his throat, but the doggy boy learns quickly enough to cope as you just keep going, enjoying the tightness of his flexing muscles and tongue against your [Cock of Player] shaft. As Spike loses his oral virginity to you, his reflexive swallowing squeezes your dickhead in pleasant and exciting ways. You keep humping his muzzle in a fast rhythm of going in and out, some part of you enjoying the power you've got over your doggy playmate almost more than even the physical sensations.";
			say "     Used harshly as he is, Spike is panting hard, or would be if your dick wasn't in his mouth all the time. What he actually is doing is drawing in lots of air through his nose and you can feel the warmth of his breath wash over your crotch, then his wet nose right against it as you hold the dobie down and force him to huff the scent of your sweaty arousal. Alexandra's son looks a bit cross-eyed as he does so, finding himself focusing on what his sensitive nose is taking in. It's fun to see what you can make the little gangster wannabe get used to, and so it doesn't take all that much longer until you can feel a familiar tenseness grow in your balls. Stopping your thrusts for a second and keeping his nose pressed against your crotch, you bend forward and tell the young man that he's about to get what he's meant for, then take up face-fucking him with furious speed once more.";
			WaitLineBreak;
			say "     Just a moment later, as he tenses up nicely around your dick when realization about what you mean hits, you orgasm, shooting a first heavy spurt of cum right down his throat. Spike pushes against you weakly as he is subjected to the indignity of getting fed your cum, futilely struggling against your firm grip and just increasing the pleasure of your climax with everything he does. Between your satisfied growls at each throb of cum gushing into your doggy toy's stomach, you call out what a good pet and cumdump he is, rubbing your dominance in hard. Soon, Spike's resistance falters and then stops entirely as he finally seems to accept what role you've given him. To test this, you pull the dobie's muzzle off your cock with a wet slurp, then command him to open wide and aim the final few spurts of your load onto his trembling tongue, painting it with white streaks. With a grin, you give the follow-up order to swallow, which Spike does with little more than a short whimper.";
			say "     Patting your dobie companion's head possessively, you keep praising him for being a good pet, then demand that he cleans your cock and balls with his tongue. 'Y-yes boss,' the young man says in a subdued tone and gets to work, slowly lapping away at your crotch. You spend some further time having fun in teaching him the proper way to service you, making Spike re-do lick after lick of every part of your genitals, then eventually push him away from your crotch and casually tell him to clean himself up. He takes being manhandled like this without complaint, his gaze filled with just the right amount of trepidation at what you might do if he said anything.";
			now Libido of Spike is 41; [forced into it]
			now PlayerControlled of Spike is true;
			NPCSexAftermath Spike receives "OralCock" from Player;
		else: [allow him to refuse subby sex]
			LineBreak;
			say "     Slowly reaching out to put a hand on his shoulder, you smile at the young man and tell him that he doesn't have to worry. You wouldn't want to do anything that he isn't comfortable with. 'Thanks [SpikePlayerAddress], I appreciate it. I would do almost anything for you, but you know... I'm a [italic type]real[roman type] man. In control and on top. Not a bitch to service anyone - even you.' Giving him a little squeeze with your hand and nodding to the impressionable young man, you tell Spike that you'll respect his position. His tail wags left and right at this show of being treated [']right['], and it's confirmed in his stance. Looks like your decision did cost you the immediate pleasure of enjoying the doberman's mouth, but gained you a new level of devotion from your young follower.";
			now Libido of Spike is 100; [allowed him to refuse, not gonna bring it up again]
	else if Libido of Spike > 0 and Libido of Spike < 20: [repeat of talked into it]
		say "     Sliding an arm around the young doberman hips, you pull him against yourself and give him a naughty grin as you squeeze his ass. Spike's brows rise at the groping and his hands automatically start to touch your sides in turn. As he opens his muzzle to say something, you slurp the tip of his tongue into your mouth, playfully sucking at it for a second before you pull back and tell him that you want to have fun with your most trusted lieutenant. You keep praising him, stressing in a honest tone just how proud you are of his performance as your companion, and the young guy preens in the glory you shine upon him, his face soon dominated by a very wide and happy smile. Behind Spike's back, his slender tail is wagging up a storm and you let your fingers wander to it to rub the base, making his right paw reflexively scratch over the ground in pleasured response.";
		say "     Touching and stroking your armful of happy, increasingly horny dobie, you keep going until he soon asks, 'So, what do you wanna do, [SpikePlayerAddress]?' In reply, you move your hand to the back of his neck and reply that you want to feel his muzzle on your [Cock of Player] shaft, then gently press down on Spike to make him kneel before you. As he readily gets into position, you [SelfStripCrotch], then brush the strands of his neon-green hair out of his face and stroke along the side of his muzzle. The young man gives you a worshipful glance as you wrap your fingers around your dick, stroking its girth up and down slowly before holding it out to him. The anthro doberman starts out slow, exploring the full length of your manhood with the tip of his tongue until he reaches the tip and slurps up a drop of pre that already has formed at the slit. Closing his muzzle to swallow, his tail wags even harder at the enticing taste, then Spike goes back for more, licking over your dickhead again and again.";
		WaitLineBreak;
		say "     You allow the young canine a little while of just slurping at your tip, then eventually move your hand to rub the base of his ears, which Spike clearly enjoys, before cradling the back of his head in your fingers. Slowly pushing his head forward a little, he takes the hint to open his muzzle a little wider, allowing your erection to slide into it against the warm and slick surface of his floppy tongue. Holding his head steady with your hand, you pump in and out of his muzzle with steady thrusts, enjoying the feel of his mouth around your manhood. Part of you longs to just go all out in face-fucking your companion, but you temper the impulse to not overwhelm him, no matter how eager he may be. As his wet nose bumps into your crotch, with your whole cock now in his mouth, you slowly take your hand away from Spike's head, stroking his cheek as you do so.";
		say "     Finding himself in control of his own movements again, the canine pulls back a little and licks your dickhead again, then looks up to meet your gaze, a joyful twinkle in his eyes. You simply give him a supportive smile and a nod, after which he starts doing his best to please you all on his own. The young doberman leans in to lick at your balls, slurping over them and giving each one eager attention, just long enough to wind you up before he switches back to your hard length. He takes your shaft into his muzzle, careful not to brush it with any of his canine teeth, and bounces up and down on it, sucking you with an eager novice's attention. Despite the fact that he's only been sexually active for a little while, your dobie is quite good at giving oral pleasure. He also clearly enjoys hearing your joyful moans and grins around the shaft between his lips, soon pulling off for a little while to say, 'Just a second.' With that, he moves his hands to pull down the zipper of his pants, freeing a hard canine rod to stand erect as a flagpole.";
		WaitLineBreak;
		say "     With his own cock in hand and jerking it in a frantic pace, Spike gets back to servicing you, bobbing on your cock in a very enthusiastic way. It feels amazing how he lets his tongue dance over your girth and presses it up against the ribbed roof of his muzzle. Soon, your moans and grunts rise in volume as you're getting quite close to cumming, which you call out for Spike to know. He just intensifies his attack on your manhood, closing his muzzle around it and sucking hard, which serves very well to push you over the edge in very short notice. Hands shooting forward to clamp onto his canine head, you hump into his muzzle and keep his nose pressed deep into your pubes as spurts of cum splash the back of his throat. While you keep hold of Spike up top and make him eat your load, he continues jerking himself and barrels over the line of no return to his own climax just moments later.";
		say "     The young dobie grunts around the cock in his muzzle as he starts to shoot long streaks of sperm all over the ground between your legs, each spurt making his whole body twitch and tremble, including the tongue half-wrapped around your own shaft and giving you quite pleasurable sensations. Together, the two of you ride out your respective orgasms, until you eventually pull Spike off your now sensitive cock and help him to stand before you once more. Guiding his muzzle to your lips, you kiss him openly and suck on his tongue, tasting some of your own seed on it. With a teasing smile, you tell him that you're more than happy with having him as your companion. 'Me too, [SpikePlayerAddress], me too,' he answers with a smile and licks his muzzle, then pushes his softening cock back into the jeans and zips himself up.";
	else if Libido of Spike > 20 and Libido of Spike < 40: [repeat of pushed into it]
		say "     Stepping up before the young man, hands on your hips, you let your eyes roam up and down over him with a serious expression on your face. Standing at attention, the nervous-looking dobie tenses a little more with each moment that you just keep staring, until you finally grin at him and say that it is time for him to show his loyalty to you again. Spike's eyebrows rise a little at the lewd undertone of your voice, but he says nothing as you [SelfStripCrotch], then point at the ground in front of you and order him to kneel. There is a tiny moment of hesitation before Spike replies, 'Yes [SpikePlayerAddress],' then moves to comply, sinking down in front of you. The anthro dobie's muzzle twitches a little as he breathes in the first whiff of your masculine arousal, but he quickly smoothes his expression and just awaits what will come next.";
		say "     You playfully sway your hips a tiny bit, letting your hard shaft sway before Spike's eyes like the sword of Damocles, enjoying the nervous attention he is paying to it. When you finally bark out for him to get to work, he twitches visibly, the tension unloading all at once. Submitting to what he must do to keep on your good side, the young man laps over your cock with his long, floppy tongue. He starts out slow, exploring the full length of your manhood in a not quite willing partner's hesitation, until he reaches the tip and makes himself slurp up the pre that already has leaked out of your slit. Closing his muzzle to swallow, his expression showing the internal conflict at the fact that he actually kinda likes the taste, Spike then leans forward again, licking over your dickhead several more times.";
		WaitLineBreak;
		say "     You allow the young canine a little while of just slurping at your tip, then eventually declare that it isn't enough and he needs to really go down on your dick. With that said, you reach down and cradle the back of his head in your fingers. Slowly pushing his head forward, you tell him to open wide. Spike's Adam's Apple bobs nervously as he swallows, then parts his muzzle and allows your erection to slide into it against the warm and slick surface of his broad tongue. Holding his head steady with your hand, you pump in and out of his muzzle with steady thrusts, enjoying the warmth of his mouth around your manhood. Part of you longs to just go all out in face-fucking your companion, but you temper the impulse to not overwhelm the young sub. To stave off the temptation for now, you pull out instead, then slap your dripping wet shaft against the top of his muzzle, laying across its length.";
		say "     Finding himself crossing his eyes to look at your cock, the canine suppresses a whimper and huffs through his nose, the warm air washing over your balls just in front of it. He glances up to meet your eyes in an unspoken question, and you grin and order him to lick. Closing his eyes tightly for a second, maybe imagining himself somewhere else, Alexandra's son then opens his muzzle and starts to slowly lick your balls, slurping over them and giving each one some attention. Despite his reluctance, he's a natural at giving oral pleasure, and it doesn't take long before you have to tell him to get his lips around your dick again, as you want to blow in his mouth when you come. The kneeling young man nods silently and then takes your [Cock of Player] shaft into his muzzle, this time not even having to be led by your hand on his head.";
		WaitLineBreak;
		say "     Resigned to get his task over with as quick as possible, Spike bobs on your cock in a dutiful manner. Except the need for a slight smack to the back of his head as a reminder to cover his teeth with his lips, the young man actually does a nice job of it, clearly a quick study - if motivated [italic type]properly[roman type]. Soon, you can't suppress moans and grunts anymore and just let them out, loudly letting your companion know that you are about to come. He freezes for a second, tempted to pull off, then pushes aside his reluctance and instead intensifies his attack on your manhood. Closing his muzzle around it, Spike sucks hard, which serves very well to push you over the edge in very short notice. Hands shooting forward to clamp onto his canine head, you hump into his muzzle and keep his nose pressed against your crotch as spurts of cum splash the back of his throat. While you keep hold of Spike's head, the young man's hands grasp your legs, his grip tightening every time a new spurt of seed erupts into him.";
		say "     You ride out your orgasm, filling the dobie's stomach with your load, then also pulling back to cover his tongue with more of the creamy fluid. Eventually, you pull Spike off your now sensitive cock and pat his head, telling him that he's proven himself - for now. As he stands before you, an expression of mixed relief and worry washes over his face, no doubt from Spike wondering what he might need to do next. You just throw an arm around his shoulders in a vaguely possessive fashion, then rub the dobie's hair and tell him that good things come to those who prove themselves to you. 'I sure hope so,' he mumbles and brushes away a spurt of cum from the side of his muzzle, wiping it off on the ground.";
	else if Libido of Spike > 40 and Libido of Spike < 60: [repeat of forced into it]
		say "     Stepping right into the young doberman's comfort zone, you don't give him even a second to react, simply snatching him by the loose collar and using that convenient handhold to wrench him even closer. Spike lets out a somewhat choked gasp at suddenly being man-handled, his eyes wide in fear as your merciless gaze studies his face. Telling him harshly that you want to make use of his mouth, you then physically push him down, making the anthro canine fall to his knees before you. A grin spreads over your face when you look at the trembling doberman on the ground, especially as he gulps nervously when you [SelfStripCrotch], then stroke your [Cock of Player] shaft to stand erect before his eyes.";
		say "     'Please go slower this ti- oommmphh,' Spike starts to say, which gives you just what you needed, an open mouth and warm doggy tongue to slide your dick against. Grabbing a handful of his green hair, you sharply tell him to be a good doggy and fuckhole, then hold the young man's head tightly and just slam your hips forward. Your erection slips easily between his lips, only stopping as his nose is pressed against your crotch. Spike sputters and coughs at the sudden intrusion of your cock, his hands moving to weakly grab your legs and push himself away - without much success, as you keep hold of him in an unrelenting grip. It feels kinda nice how his trembling tongue is moving against your cock as he tries to speak and or push your shaft aside and you leave him to struggle a bit, then finally reach down with your other hand and grab his throat. Squeezing lightly, you growl for him to hold still and listen, then remind the young dobie that he's yours to do with as you please.";
		WaitLineBreak;
		say "     You keep your grip on Spike's neck for a little while longer to allow his situation to fully sink in, then let go, chuckling a little as you feel the warmth of the shallow, panicky breaths that follow against your cock. Despite the fact that he has now given up struggling, you grab the young man's head with both hands, getting a good grip as you begin to face-fuck him. There are less gurgles and choking noises this time, but he still struggles to take thrusts against and past the back of his throat. You just keep going, enjoying the tightness of his flexing muscles and tongue against your [Cock of Player] shaft, humping his muzzle in a fast rhythm of going in and out. Some part of you enjoys the power you've got over your doggy playmate almost more than even the physical sensations.";
		say "     Used harshly as he is, Spike is panting hard, or would be if your dick wasn't in his mouth all the time. What he actually is doing is drawing in lots of air through his nose and you can feel the warmth of his breath wash over your crotch, then his wet nose right against it as you hold the dobie down and force him to huff the scent of your sweaty arousal. Alexandra's son looks a bit cross-eyed as he does so, finding himself focusing on what his sensitive nose is taking in. It's fun to see what you can make the little gangster wannabe get used to, and so it doesn't take all that much longer until you can feel a familiar tenseness grow in your balls. Stopping your thrusts for a second and keeping his nose pressed against your crotch, you bend forward and tell the young man that he's about to get what he's meant for, then take up face-fucking him with furious speed once more.";
		WaitLineBreak;
		say "     He knows what's coming and puts his hands on your legs, squeezing them in his nervousness that also has Spike's throat muscles tremble and twitch around your shaft. This makes face-fucking him even more fun and you quickly orgasm, shooting a first heavy spurt of cum right down his throat. Spike pushes against you weakly as he is subjected to the indignity of getting fed your cum, futilely struggling against your firm grip and just increasing the pleasure of your climax with everything he does. Between your satisfied growls at each throb of cum gushing into your doggy toy's stomach, you call out what a good pet and cumdump he is, rubbing your dominance in hard. Soon, Spike's reflexive resistance falters, with him forcing himself to submit and accept what role you've given him. To test this, you pull the dobie's muzzle off your cock with a wet slurp, then command him to open wide and aim the final few spurts of your load onto his trembling tongue, painting it with white streaks. With a grin, you give the follow-up order to swallow, which Spike does with little more than a short whimper.";
		say "     Patting your dobie companion's head possessively, you keep praising him for being a good pet, then demand that he cleans your cock and balls with his tongue. 'Y-yes boss,' the young man says in a subdued tone and gets to work, slowly lapping away at your crotch. You spend some further time having fun in teaching him the proper way to service you, making Spike re-do lick after lick of every part of your genitals, then eventually push him away from your crotch and casually tell him to get dressed as you're done. He takes being manhandled like this without complaint, his gaze filled with just the right amount of trepidation at what you might do if he said anything.";

to say SpikeSex2: [oral on the player's pussy]
	if Libido of Spike is 0:
		say "     As you tell the young doberman that you want him to eat you out, he gapes openly at you and replies, 'Wait - what's this now?! I wanna be the guy on top, not be crawling between someone's legs to service them! I thought that we'd pick up some babes out on the streets to fuck, or maybe even a girly dude. Why should I be the one that gives others pleasure if I'm not getting off at the same time? I don't know, [SpikePlayerAddress].' The anthro canine takes half a step back and raises his hands in a warding gesture, clearly less than convinced that he wants to follow your request.";
		say "     [bold type]How do you want to deal with this? It will likely set the tone for your further relationship...[roman type][line break]";
		LineBreak;
		say "     [link](1)[as]1[end link] - Talk him into going down on you.";
		say "     [link](2)[as]2[end link] - Pressure Spike into servicing you.";
		say "     [link](3)[as]3[end link] - Just grab him and force him to his knees.";
		say "     [link](4)[as]4[end link] - Allow him to refuse.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 4:
			say "Choice? (1-4)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to talk him into it, [link]2[end link] to pressure him into it, [link]3[end link] to physically make him do it, or [link]4[end link] to allow Spike to refuse.";
		if calcnumber is 1: [talked into it]
			LineBreak;
			say "     Raising an eye at his refusal, you tell the young man that in order to have total trust in one another, him and you should become more than just people who work together. That there is a whole level of devotion beyond simple obedience. Drawing him in with words full of fervor, you soon have Spike listening with eager attention, his tail wagging left and right. When you then go on to say that you think he is ready to become one of the people you really trust, the young doberman sinks down in front of you and looks up with a smile on his muzzle. Stroking the strands of neon-green head-hair out of his face, you run your hand along the side of his face and proclaim that you're proud of him, then [SelfStripCrotch]. Using the fingers of one hand, you spread the folds of your sex and brush over the clit, giving him a close-up view of what makes a woman go wild.";
			say "     Spike looks wide-eyed at the bared pussy, unsure about how to proceed, even as his wagging tail tells you how happy he is to become your special friend. Placing a hand on top of his head, you gently push him towards your crotch and tell him to start licking. 'Will do, [SpikePlayerAddress],' he replies with a smile on his muzzle and gives you a worshipful glance, then laps over your nether-lips with his long, floppy tongue. The anthro doberman starts out slow, exploring the inner and outer folds in a novice's curiosity until he reaches the clit and runs his tongue-tip over it in a light touch that makes you tremble in arousal and hold your breath. As your lust spikes from his touch, you start getting wet and dripping with female lubrication, which Spike slurps up on his follow-up licks, raising his eyebrows at the unexpected and enticing taste. He keeps going back for more long laps at your crotch, eager to please.";
			WaitLineBreak;
			say "     You allow the young canine a little while of just doing slow licks and leisurely slurping up your fluids, then eventually move your hand to rub the base of his ears, which Spike clearly enjoys, before cradling the back of his head in your fingers. Gently pushing his head forward, you tell him to get his tongue in between the folds of your pussy and go deeper. Spike's tail is still wagging up a storm behind his back as the eager doberman opens up his muzzle a little wider and sticks his floppy tongue out, experimentally pressing it against your opening. His tongue easily slips inside the flexible opening, wiggling around as he explores your sex and giving you quite pleasurable sensations in the process. The young dobie's enthusiastic, if not particularly focused probing puts you on edge, panting needily and grinding a little against his face.";
			say "     Eventually, you just can't bear being inactive anymore and pull his head against your crotch with more force, really pushing his muzzle against your folds and driving the wiggling tongue even deeper. Spike is surprised at the sudden man-handling, his breath coming warm and fast through the nose wedged between your nether-lips, huffing the heady scent of your arousal and finding it very much to his own liking. He adapts to your now more demanding stance and curls that long canine tongue inside your pussy, touching and teasing your inner walls in ways that make your knees go wobbly, forcing you to hold on to his shoulders for support. You stand there for you don't know how long, clutching on to your eager canine companion as he eats you out good, your mind lost in a pleasurable haze. Yet as nice as this is, you can't get off from just his tongue alone, and so you groan out to the dobie that he should go for your clit and sink his fingers into your pussy instead.";
			WaitLineBreak;
			say "     Spike pulls back from his deep tongue-penetration of your sex, snapping his muzzle shut with a smile and swallowing down your fluids, then looks up with a worshipful expression on his face. Meeting his gaze, you stroke the side of his muzzle affectionately, then pant out in an urgent tone that you [italic type]need[roman type] him to finish you off. Prompted to look down by your fingers brushing over the pleasure-button of your clit, the anthro doberman is happy to comply, bringing his muzzle forward to lap right at it. A moaned reminder has him touching your opening a moment later too, pushing two fingers inside to spread it and rub your sensitive walls. Over your own moans and the slurps of your canine companion, you hear something else - a zipper being undone. Looking down, you see Spike's pants being open at the front, his hard canine rod erect as a flagpole as the young man closes his other hand around it.";
			say "     With his own cock in hand and jerking it in a frantic pace, Spike focuses back on his first cunnilingus experience, nodding his head with the licking motions over your button. The young man really does a nice job of it, clearly a quick study in what pleases you, picking up on the pitch of your moans at his ministrations. Soon, you can't hold back anymore and just let your moans and grunts out at full blast, sounding like a bitch in heat as you shout that you're about to come. Spike just intensifies his attack on your womanhood, the tip of his tongue circling around its edge in an incredibly nice teasing touch. Meanwhile, his fingers are inside you to the knuckles, feeling around and rubbing you in a very right way. You can't take much of this, and just a few moments later, you howl out loud, telling the world about the breathtaking orgasm just breaking over yourself. Femcum squirts out, bathing Spike's tongue and muzzle in fluids that are eagerly licked up and swallowed by him.";
			WaitLineBreak;
			say "     While you cling to Spike as he eats you out, his hand is busy jerking himself off, and so the dobie barrels over the line of no return to his own climax just moments later. He grunts loudly with his nose still buried against your crotch as he starts to shoot long streaks of sperm all over the ground between your legs, each spurt making his whole body twitch and tremble, including the tongue pressed against your clit and giving you quite pleasurable sensations. Together, the two of you ride out your respective orgasms, until you eventually pull Spike back from your now sensitive sex and help him to stand before you once more. Guiding his muzzle to your lips, you kiss him openly and suck on his tongue, tasting some of your own fluids on it. With a teasing smile, you tell him that good things come to those who prove themselves to you, and that he will enjoy himself greatly as your companion. 'I'm sure that I will,' he answers and licks his muzzle, then pushes his softening cock back into his jeans and zips himself up.";
			now Libido of Spike is 1; [talked into it]
			now PlayerFriended of Spike is true;
			NPCSexAftermath Spike receives "OralPussy" from Player;
		else if calcnumber is 2: [pressured into it]
			LineBreak;
			say "     Looking scornfully at the resistant young man, you tell him in no uncertain terms that you are very disappointed in his performance as your companion. After all, how can you count on him for important tasks if he even fails at the most simple things you give him as a test. Something even the most stupid slut you could pick up on the street would be capable of doing. Spike's face is a study of emotions as you make your accusation-filled little speech, going from disapproval, to shock, to a deep worry. He gulps when you come to a stop, looking at him expectantly, then slowly sinks to his haunches. A grin spreads over your face when you look at the trembling canine on the ground before you, especially as he gulps nervously when you [SelfStripCrotch]. Using the fingers of one hand, you spread the folds of your sex and brush over the clit, telling him that he must service you till you're satisfied.";
			say "     Spike looks wide-eyed at the bared pussy, either unsure about how to proceed or still not really wanting to do this. Doesn't matter which, as you place a hand on top of his head, then firmly push him towards your crotch and tell him to start licking. 'Uhm... okay. Will do, [SpikePlayerAddress],' he replies haltingly and glances up in the hope that you'll change his mind. It takes an impatient clearing of your throat to get him going finally. Submitting to what he must do to redeem himself in your eyes, the young man laps over your nether-lips with his long, floppy tongue. The anthro doberman starts out slow, exploring the inner and outer folds in a novice's curiosity until he reaches the clit and runs his tongue-tip over it in a light touch that makes you tremble in arousal and hold your breath. As your lust spikes from his touch, you start getting wet and dripping with female lubrication, which Spike slurps up on his follow-up licks, raising his eyebrows at the unexpected and enticing taste. After a light tap on the back of his head, he remembers to keep going, lapping away at your crotch.";
			WaitLineBreak;
			say "     You allow the young canine a little while of just doing slow licks and leisurely slurping up your fluids, then eventually move your hand to cradle the back of his head in your fingers. Gently pushing his head forward, you tell him to get his tongue in between the folds of your pussy and go deeper. Spike is nervous and tense at being made to take the submissive role, but he doesn't really resist, instead opening up his muzzle a little wider and sticking his floppy tongue out, experimentally pressing it against your opening. It easily slips inside the flexible opening, wiggling around as he explores your sex and giving you quite pleasurable sensations in the process. The young dobie's slowly increasing enthusiasm at tongue-fucking you puts you on edge, panting needily and grinding a little against his face.";
			say "     Eventually, you just can't bear being inactive anymore and pull his head against your crotch with more force, really pushing his muzzle against your folds and driving the wiggling tongue even deeper. Spike is surprised at the sudden man-handling and whimpers for a second, his breath coming warm and fast through the nose wedged between your nether-lips. Yet as he huffs the heady scent of your arousal, he can't help but be aroused too. He adapts to your now more demanding stance and curls that long canine tongue inside your pussy, touching and teasing your inner walls in ways that make your knees go wobbly, forcing you to hold on to his shoulders for support. You stand there for you don't know how long, clutching on to your compliant canine companion as he eats you out, your mind lost in a pleasurable haze. Yet as nice as this is, you can't get off from just his tongue alone, and so you groan out to the dobie that he should go for your clit and sink his fingers into your pussy instead.";
			WaitLineBreak;
			say "     Slowly getting used to what is expected of him, Spike pulls back from his deep tongue-penetration of your sex, snapping his muzzle shut and swallowing down your fluids, then looks up with a slightly conflicted expression on his face. He clearly does enjoy having sex, it's just that not being in control irks him a little. Meeting his gaze, playfully grab the scruff of his neck and call him a good dog, then pant out in an urgent tone that you [italic type]need[roman type] him to finish you off. Prompted to look down by your fingers brushing over the pleasure-button of your clit, the anthro doberman is quick to comply, bringing his muzzle forward to lap right at it. A moaned reminder has him touching your opening a moment later too, pushing two fingers inside to spread it and rub your sensitive walls.";
			say "     Spike focuses on his first cunnilingus experience, nodding his head with the licking motions over your button. The young man really does a nice job of it, clearly a quick study in what pleases you, picking up on the pitch of your moans at his ministrations. Soon, you can't hold back anymore and just let your moans and grunts out at full blast, sounding like a bitch in heat as you shout that you're about to come. Spike takes that as a command to intensify his attack on your womanhood, the tip of his tongue circling around its edge in an incredibly nice teasing touch. Meanwhile, his fingers are inside you to the knuckles, feeling around and rubbing you in a very right way. You can't take much of this, and just a few moments later, you howl out loud, telling the world about the breathtaking orgasm just breaking over yourself. Femcum squirts out, bathing Spike's tongue and muzzle in fluids that are eagerly licked up and swallowed by him.";
			WaitLineBreak;
			say "     You ride out your orgasm while the dobie drinks down your femcum and continues to lap at your sex until you pat his head and order him to stop. Pulling Spike back from your now sensitive sex, you tell him that he's proven himself - for now. As he stands before you, an expression of mixed relief and worry washes over his face, no doubt from Spike wondering what he might need to do next. You just stroke his muzzle in a vaguely possessive fashion, then rub the dobie's hair and tell him that good things come to those who prove themselves to you. 'I'll make sure to remember that,' he answers and brushes away a drop of femcum from the side of his muzzle, wiping it off on the ground.";
			now Libido of Spike is 21; [pressured into it]
			now PlayerControlled of Spike is true;
			NPCSexAftermath Spike receives "OralPussy" from Player;
		else if calcnumber is 3: [forced into it]
			LineBreak;
			say "     Stepping right into the young doberman's comfort zone, you don't give him even a second to react, simply snatching him by the loose collar and using that convenient handhold to wrench him even closer. Spike lets out a somewhat choked gasp at suddenly being man-handled, his eyes wide in fear as your merciless gaze studies his face. Telling him that he gave himself to you, with everything this implies, you then physically push him down, making the anthro canine fall to his knees before you. A grin spreads over your face when you look at the trembling canine on the ground before you, especially as he gulps nervously when you [SelfStripCrotch]. Using the fingers of one hand, you spread the folds of your sex and brush over the clit, telling him that he must service you till you're satisfied.";
			say "     'But I - oommmphh,' Spike starts to say, but you don't really care and just clamp your hand on the back of his head and force his muzzle against your crotch. He tenses, futilely pulling against your grip as he finds his nose wedged against the wet folds of your sex, with the scent of your arousal overwhelmingly strong as he huffs it with rapid, panicky breaths. You keep the anthro canine tightly under control to allow his situation to fully sink in, then let go, chuckling a little as he pulls back and glances up at you in shock. Grinning at the young man, you tell him in no uncertain terms that he will service you, licking at your pussy until you're satisfied. He swallows visibly as he hears the tone of your voice, then gives a somewhat frightened nod. Despite the fact that your canine plaything has now given up struggling, you grab the young man's head with both hands, getting a good grip as you begin to grind against his muzzle.";
			WaitLineBreak;
			say "     At first, there isn't any participation on his end, just you brushing your nether lips over his wet nose and enjoying the touch, but after a little reminder in form of a light slap to the back of his head, the doggy boy learns quickly enough to lick when you want him to. As Spike loses his oral virginity to you, he slurps up the fluids of your arousal and is surprised at the fact that he actually kinda likes the taste. Thus the young man quickly gets over his initial reluctance and attacks your sex with growing enthusiasm, the floppy length of his tongue slipping into your body and exploring it with wiggling movements. You keep humping against his muzzle even as he eats you out, some part of you enjoying the power you've got over your doggy playmate almost more than even the physical sensations.";
			say "     Used harshly as he is, Spike is panting hard against your crotch, huffing the scent of your sweaty arousal. Alexandra's son looks a bit cross-eyed as he does so, finding himself focusing on what his sensitive nose is taking in. It's fun to see what you can make the little gangster wannabe get used to, including grinding your clit against the top of his nose and inundating it in your female juices. Stopping your movements for a second and keeping his nose pressed against your crotch, you bend forward and tell the young man that he's about to get what he's meant for, then take up fucking yourself against his tongue and muzzle furious speed once more. Just a moment later, as he tenses up and his tongue curls in a very pleasurable way inside your pussy, you orgasm, a thick spurt of femcum splashing over his muzzle, followed by more and more right after. Spike pushes against you weakly as he is subjected to the indignity of getting drenched by your climax, futilely struggling against your firm grip and just increasing the pleasure of your climax with everything he does.";
			WaitLineBreak;
			say "     Between your high-pitched moans coming with each throb of femcum gushing onto your doggy toy, you call out what a good pet and bitch-boy he is, rubbing your dominance in hard. Soon, Spike's resistance falters and then stops entirely as he finally seems to accept what role you've given him. To test this, you pull the dobie's muzzle away from your crotch and command him to lick your fluids off his own muzzle, which he does with swipes of that long tongue of his. Grinning, you give the follow-up order to swallow, which Spike does with little more than a short whimper. Patting your doberman companion's head possessively, you keep praising him in a condescending tone, then demand that he cleans your crotch with his tongue. 'Y-yes boss,' the young man says in a subdued tone and gets to work, slowly lapping away at your crotch.";
			say "     You spend some further time having fun in teaching him the proper way to service you, making Spike re-do lick after lick of every part of your genitals, then eventually push him away from your crotch and casually tell him to clean himself up. He takes being manhandled like this without complaint, his gaze filled with just the right amount of trepidation at what you might do if he said anything.";
			now Libido of Spike is 41; [forced into it]
			now PlayerControlled of Spike is true;
			NPCSexAftermath Spike receives "OralPussy" from Player;
		else: [allow him to refuse subby sex]
			LineBreak;
			say "     Slowly reaching out to put a hand on his shoulder, you smile at the young man and tell him that he doesn't have to worry. You wouldn't want to do anything that he isn't comfortable with. 'Thanks [SpikePlayerAddress], I appreciate it. I would do almost anything for you, but you know... I'm a [italic type]real[roman type] man. In control and on top. Not a bitch to service anyone - even you.' Giving him a little squeeze with your hand and nodding to the impressionable young man, you tell Spike that you'll respect his position. His tail wags left and right at this show of being treated [']right['], and it's confirmed in his stance. Looks like your decision did cost you the immediate pleasure of enjoying the doberman's mouth, but gained you a new level of devotion from your young follower.";
			now Libido of Spike is 100; [allowed him to refuse, not gonna bring it up again]
	else if Libido of Spike > 0 and Libido of Spike < 20: [repeat of talked into it]
		say "     Sliding an arm around the young doberman hips, you pull him against yourself and give him a naughty grin as you squeeze his ass. Spike's brows rise at the groping and his hands automatically start to touch your sides in turn. As he opens his muzzle to say something, you slurp the tip of his tongue into your mouth, playfully sucking at it for a second before you pull back and tell him that you want to have fun with your most trusted lieutenant. You keep praising him, stressing in a honest tone just how proud you are of his performance as your companion, and the young guy preens in the glory you shine upon him, his face soon dominated by a very wide and happy smile. Behind Spike's back, his slender tail is wagging up a storm and you let your fingers wander to it to rub the base, making his right paw reflexively scratch over the ground in pleasured response.";
		say "     Touching and stroking your armful of happy, increasingly horny dobie, you keep going until he soon asks, 'So, what do you wanna do, [SpikePlayerAddress]?' In reply, you move your hand to the back of his neck and reply that you want to feel his tongue in your pussy, then gently press down on Spike to make him kneel before you. As he readily gets into position, you [SelfStripCrotch], then brush the strands of his neon-green hair out of his face and stroke along the side of his muzzle. The young man gives you a worshipful glance as you spread your folds enticingly before him, showing how wet you already are in anticipation of him going down on you. The anthro doberman starts out slow, exploring the inner and outer folds in a novice's curiosity until he reaches the clit and runs his tongue-tip over it in a light touch that makes you tremble in arousal and hold your breath.";
		WaitLineBreak;
		say "     You allow the young canine a little while of just doing slow licks and leisurely slurping up your fluids, then eventually move your hand to rub the base of his ears, which Spike clearly enjoys, before cradling the back of his head in your fingers. Gently pushing his head forward, you tell him to get his tongue in between the folds of your pussy and go deeper. Spike's tail is still wagging up a storm behind his back as the eager doberman opens up his muzzle a little wider and sticks his floppy tongue out, slipping it inside the flexible opening. It wiggles around as he explores your sex and gives quite pleasurable sensations in the process. The young dobie's enthusiastic, if not particularly focused probing puts you on edge, panting needily and grinding a little against his face.";
		say "     Eventually, you just can't bear being inactive anymore and pull his head against your crotch with more force, really pushing his muzzle against your folds and driving the wiggling tongue even deeper. Spike seems to have expected you to do this, as his nostrils flare widely when his nose gets wedged between your folds, taking deep huffs of the heady scent of your arousal. He adapts to your now more demanding stance and curls that long canine tongue inside your pussy, touching and teasing your inner walls in ways that make your knees go wobbly, forcing you to hold on to his shoulders for support. You stand there for you don't know how long, clutching on to your eager canine companion as he eats you out good, your mind lost in a pleasurable haze. Yet as nice as this is, you can't get off from just his tongue alone, and so you groan out to the dobie that he should go for your clit and sink his fingers into your pussy instead.";
		WaitLineBreak;
		say "     Spike pulls back from his deep tongue-penetration of your sex, snapping his muzzle shut with a smile and swallowing down your fluids, then looks up with a worshipful expression on his face. Meeting his gaze, you stroke the side of his muzzle affectionately, then pant out in an urgent tone that you [italic type]need[roman type] him to finish you off. Prompted to look down by your fingers brushing over the pleasure-button of your clit, the anthro doberman is happy to comply, bringing his muzzle forward to lap right at it while his hand gets raised to your crotch too and strokes against it. A moment later, two of his fingers push your pussy to spread it and rub your sensitive walls. Over your own moans and the slurps of your canine companion, you hear something else - a zipper being undone. Looking down, you see Spike's pants being open at the front, his hard canine rod erect as a flagpole as the young man closes his other hand around it.";
		say "     With his own cock in hand and jerking it in a frantic pace, Spike focuses back on his first cunnilingus experience, nodding his head with the licking motions over your button. The young man really does a nice job of it, clearly a quick study in what pleases you, picking up on the pitch of your moans at his ministrations. Soon, you can't hold back anymore and just let your moans and grunts out at full blast, sounding like a bitch in heat as you shout that you're about to come. Spike just intensifies his attack on your womanhood, the tip of his tongue circling around its edge in an incredibly nice teasing touch. Meanwhile, his fingers are inside you to the knuckles, feeling around and rubbing you in a very right way. You can't take much of this, and just a few moments later, you howl out loud, telling the world about the breathtaking orgasm just breaking over yourself. Femcum squirts out, bathing Spike's tongue and muzzle in fluids that are eagerly licked up and swallowed by him.";
		WaitLineBreak;
		say "     While you cling to Spike as he eats you out, his hand is busy jerking himself off, and so the dobie barrels over the line of no return to his own climax just moments later. He grunts loudly with his nose still buried against your crotch as he starts to shoot long streaks of sperm all over the ground between your legs, each spurt making his whole body twitch and tremble, including the tongue pressed against your clit and giving you quite pleasurable sensations. Together, the two of you ride out your respective orgasms, until you eventually pull Spike back from your now sensitive sex and help him to stand before you once more. Guiding his muzzle to your lips, you kiss him openly and suck on his tongue, tasting some of your own fluids on it. With a teasing smile, you thank him for being an amazing companion in any occasion, be it work or play. 'My pleasure,' he answers and licks his muzzle, then pushes his softening cock back into his jeans and zips himself up.";
	else if Libido of Spike > 20 and Libido of Spike < 40: [repeat of pushed into it]
		say "     Stepping up before the young man, hands on your hips, you let your eyes roam up and down over him with a serious expression on your face. Standing at attention, the nervous-looking dobie tenses a little more with each moment that you just keep staring, until you finally grin at him and say that it is time for him to show his loyalty to you again. Spike's eyebrows rise a little at the lewd undertone of your voice, but he says nothing as you [SelfStripCrotch], then point at the ground in front of you and order him to kneel. There is a tiny moment of hesitation before Spike replies, 'Yes [SpikePlayerAddress],' and moves to comply, sinking down in front of you. The anthro dobie's muzzle twitches a little as he breathes in the first whiff of your feminine arousal, but he quickly smoothes his expression and just awaits what will come next.";
		say "     You playfully sway your hips a tiny bit, drawing Spike's gaze to your crotch and enjoying the nervous attention he is paying to it. When you finally bark out for him to get to work, he twitches visibly, the tension unloading all at once. Submitting to what he must do to keep on your good side, the young man bows his head forward and laps over your crotch with his long, floppy tongue. He starts out slow, exploring the folds of your female sex in a not quite willing partner's hesitation, working his way to the clit and making himself slurp up the feminine fluids that already are beginning to lubricate your slit. Closing his muzzle to swallow, his expression showing the internal conflict at the fact that he actually kinda likes the taste, Spike then leans forward again, licking over your pussy several more times.";
		WaitLineBreak;
		say "     You allow the young canine a little while of just slow licks and leisurely slurping up your fluids, then eventually reach down to cradle the back of his head in your fingers. Slowly pushing his head forward, you tell him to get his tongue in between the folds of your pussy and go deeper. Spike's Adam's Apple bobs nervously as he swallows, then parts his muzzle and sticks his floppy tongue out, slipping it inside the flexible opening. It wiggles around as he explores your sex and gives quite pleasurable sensations in the process. Holding his head steady with your hand, you enjoy his tongue-fucking and grind lightly against him. Eventually, you just can't bear being inactive anymore and pull his head against your crotch with more force, really pushing his muzzle against your folds and driving the wiggling tongue even deeper.";
		say "     Spike seems to have expected you to do this, as his nostrils flare widely when his nose gets wedged between your folds, taking deep huffs of the heady scent of your arousal. He adapts to your now more demanding stance and curls that long canine tongue inside your pussy, touching and teasing your inner walls in ways that make your knees go wobbly, forcing you to hold on to his shoulders for support. You stand there for you don't know how long, clutching on to your compliant canine companion as he eats you out good, your mind lost in a pleasurable haze. Yet as nice as this is, you can't get off from just his tongue alone, and so you groan out to the dobie that he should go for your clit and sink his fingers into your pussy instead.";
		WaitLineBreak;
		say "     Spike pulls back from his deep tongue-penetration of your sex, snapping his muzzle shut and swallowing down your fluids, then looks up with a slightly conflicted expression on his face. He clearly does enjoy having sex, it's just that not being in control irks him a little. Meeting his gaze, playfully grab the scruff of his neck and call him a good dog, then pant out in an urgent tone that you [italic type]need[roman type] him to finish you off. Prompted to look down by your fingers brushing over the pleasure-button of your clit, the anthro doberman is quick to comply, bringing his muzzle forward to lap right at it. A moment later, two of his fingers push your pussy to spread it and rub your sensitive walls.";
		say "     Looking to get his task over as quick as possible, Spike services you in a dutiful manner and actually doing a quite nice job despite the slight reluctance. Soon, you can't hold back anymore and just let your moans and grunts out at full blast, sounding like a bitch in heat as you shout that you're about to come. Spike takes that as a command to intensify his attack on your womanhood, the tip of his tongue circling around its edge in an incredibly nice teasing touch. Meanwhile, his fingers are inside you to the knuckles, feeling around and rubbing you in a very right way. You can't take much of this, and just a few moments later, you howl out loud, telling the world about the breathtaking orgasm just breaking over yourself. Femcum squirts out, bathing Spike's tongue and muzzle in fluids that are quickly licked up and swallowed by him.";
		WaitLineBreak;
		say "     You ride out your orgasm while the dobie drinks down your femcum and continues to lap at your sex until you pat his head and order him to stop. Pulling Spike back from your now sensitive sex, you tell him that he's proven himself - for now. As he stands before you, an expression of mixed relief and worry washes over his face, no doubt from Spike wondering what he might need to do next. You just stroke his muzzle in a vaguely possessive fashion, then rub the dobie's hair and tell him that good things come to those who prove themselves to you. 'I'll make sure to remember that,' he answers and brushes away a drop of femcum from the side of his muzzle, wiping it off on the ground.";
	else if Libido of Spike > 40 and Libido of Spike < 60: [repeat of forced into it]
		say "     Stepping right into the young doberman's comfort zone, you don't give him even a second to react, simply snatching him by the loose collar and using that convenient handhold to wrench him even closer. Spike lets out a somewhat choked gasp at suddenly being man-handled, his eyes wide in fear as your merciless gaze studies his face. Telling him harshly that you want to make use of his mouth, you then physically push him down, making the anthro canine fall to his knees before you. A grin spreads over your face when you look at the trembling doberman on the ground, especially as he gulps nervously when you [SelfStripCrotch]. Using the fingers of one hand, you spread the folds of your sex and brush over the clit, telling him that he must service you till you're satisfied.";
		say "     'Please go slower this ti- oommmphh,' Spike starts to say, but you don't really care and just clamp your hand on the back of his head and force his muzzle against your crotch. He tenses, futilely pulling against your grip as he finds his nose wedged against the wet folds of your sex, with the scent of your arousal overwhelmingly strong as he huffs it with rapid, panicky breaths. Spike sputters and struggles, yet you keep the anthro canine tightly under control to allow his situation to fully sink in, then let go, chuckling a little as he pulls back and glances up at you in shock. Grinning at the young man, you remind Spike that he's yours to do with as you please and that he will service you, licking at your pussy until you're satisfied. He swallows visibly as he hears the tone of your voice, then gives a somewhat frightened nod.";
		WaitLineBreak;
		say "     Despite the fact that your canine plaything has now given up struggling, you grab the young man's head with both hands, getting a good grip as you begin to grind against his muzzle. His participation comes quicker this time, the anthro's tongue being brought to bear on your sex and slurping up the fluids of your arousal. Since he does like the taste, the young man quickly gets over his initial reluctance and attacks your sex with growing enthusiasm, the floppy length of his tongue slipping into your body and exploring it with wiggling movements. You keep humping against his muzzle even as he eats you out, some part of you enjoying the power you've got over your doggy playmate almost more than even the physical sensations.";
		say "     Used harshly as he is, Spike is panting hard against your crotch, huffing the scent of your sweaty arousal. Alexandra's son looks a bit cross-eyed as he does so, finding himself focusing on what his sensitive nose is taking in. It's fun to see what you can make the little gangster wannabe get used to, including grinding your clit against the top of his nose and inundating it in your female juices. Stopping your movements for a second and keeping his nose pressed against your crotch, you bend forward and tell the young man that he's about to get what he's meant for, then take up fucking yourself against his tongue and muzzle furious speed once more. Just a moment later, as he tenses up and his tongue curls in a very pleasurable way inside your pussy, you orgasm, a thick spurt of femcum splashing over his muzzle, followed by more and more right after. Spike pushes against you weakly as he is subjected to the indignity of getting drenched by your climax, futilely struggling against your firm grip and just increasing the pleasure of your climax with everything he does.";
		WaitLineBreak;
		say "     Between your high-pitched moans coming with each throb of femcum gushing onto your doggy toy, you call out what a good pet and bitch-boy he is, rubbing your dominance in hard. Soon, Spike's resistance falters and then stops entirely as he finally seems to accept what role you've given him. To test this, you pull the dobie's muzzle away from your crotch and command him to lick your fluids off his own muzzle, which he does with swipes of that long tongue of his. Grinning, you give the follow-up order to swallow, which Spike does with little more than a short whimper. Patting your doberman companion's head possessively, you keep praising him in a condescending tone, then demand that he cleans your crotch with his tongue. 'Y-yes boss,' the young man says in a subdued tone and gets to work, slowly lapping away at your crotch.";
		say "     You spend some further time having fun in teaching him the proper way to service you, making Spike re-do lick after lick of every part of your genitals, then eventually push him away from your crotch and casually tell him to clean himself up. He takes being manhandled like this without complaint, his gaze filled with just the right amount of trepidation at what you might do if he said anything.";

to say SpikeSex3: [oral on Spike]
	if Libido of Spike is 0 or Libido of Spike is 100: [never done anything with Spike in subby position or told him he never will have to do so]
		say "     As you tell the young doberman that you want to suck his dick, [if lust of Spike is 0]his eyebrows rise and Spike pants out, 'Really? But you're the boss and -umh,' He stops as he realizes that he's almost starting to talk himself out a blowjob, snapping his muzzle shut and looking at you eagerly, with his tail wagging. [else]a grin spreads over Spike's muzzle. 'Oh yeah, want some of this dobie cock, don't you?' he starts to boast, then sees you raise your eyebrow at his antics and snaps his muzzle shut right quick, swallowing the next few words and just looking at you eagerly, with his tail wagging hard. [end if]You let it go with a chuckle and sink to a crouch in front of him, pulling down the zipper of his jeans. Rapidly pushing out of his sheath as it gets harder by the second, Spike's dickhead comes into view right away, as your canine companion is free-balling, ready as soon as his pants are open. Popping the button next, you wrench the jeans down to his knees in a quick pull, revealing the young man's furry crotch and swinging balls too.";
		say "     Spike pants audibly as you wrap your fingers around his hot shaft, one hand of his moving to rest on your shoulder and steady himself. You can feel the trembling of his hips from just how hard the anthro's tail is wagging and find yourself grinning almost without meaning to. It's certainly fun to have a very eager partner. Leaning forward and giving his tip a lick draws a pleased gasp from the doberman, followed by a huff as he forces himself to close his open muzzle and starts to breathe through his nose, trying so very hard not to show his youth and relative inexperience. 'Nnghh, oh god!' he whispers under his breath as you take his shaft into your mouth and suck on it hard, then play your tongue over it to trace all the little veins and details one by one. At the same time, one of your hands brushes up the inside of his legs, then cups the doberman's furry balls, gently rolling them between your fingers.";
		WaitLineBreak;
		say "     Soon starting to blow your canine playmate in earnest, you bob up and down on his cock, lips tightly wrapped around his erect manhood as you suck on it and slurp up the pre-cum he is leaking. Spike has a pleasant nutty taste to his pre that makes you want more, so you massage his balls and milk him for it, little spurts delivered right onto your tongue. 'Fuck yeah,' he gasps out loud, any attempt of controlling himself quickly forgotten in view of your teasing and stroking. You can't be quite sure about it, but you feel as if the volume of his pre-spurts is increasing as you push the young man's arousal to higher and higher levels. One thing is for sure though - you can literally feel his balls getting tighter as they churn to prepare a big load for rapid delivery.";
		say "     As much fun it is to wind the dobie boy up, you eventually relent to getting him where he needs to go and take out all the stops in blowing him, slurping that hot rod of his into your mouth and bobbing on it hard. The assault of oral pleasure draws a whole new level of response from Spike, who lets out a litany of, 'Oh yeah. YEAH! Fuck, fuccckkk! Fuck I'm close!' As he gets loud, you squeeze his balls a little and rub them between your fingers, which is enough to give the young dobie offspring the final push. With a needy growl coming out of the depths of his throat, the young man hammers his hips forward in a sudden thrust, only slowed by the swell of his knot bumping against your lips. He doesn't try to force it in, simply enjoying unloading thick spurts of cum right down your throat. Pulse by pulse, he fills your stomach with rich canine seed. Only when his orgasm starts to flag a little, its intensity petering out, do you pull back and take the next few shots on your tongue, getting a taste of Spike's cum.";
		WaitLineBreak;
		say "     'That was awesome,' the young doberman pants out exhaustedly, looking down at you with a smile as you pull off his shaft and flex your tongue to spread his flavor all over it. Then he pulls his pants back up and zips up, eager for more fun times to be had with you, or out on the streets.";
	else if Libido of Spike > 0 and Libido of Spike < 20: [joyful dobie]
		say "     Sliding an arm around the young doberman hips, you pull him against yourself and give him a naughty grin as you squeeze his ass. Spike's brows rise at the groping and his hands automatically start to touch your sides in turn. As he opens his muzzle to say something, you slurp the tip of his tongue into your mouth, playfully sucking at it for a second before you pull back and tell him that you want to have fun with your most trusted lieutenant. You keep praising him, stressing in a honest tone just how proud you are of his performance as your companion, and the young guy preens in the glory you shine upon him, his face soon dominated by a very wide and happy smile. Behind Spike's back, his slender tail is wagging up a storm and you let your fingers wander to it to rub the base, making his right paw reflexively scratch over the ground in pleasured response.";
		say "     Touching and stroking your armful of happy, increasingly horny dobie, you keep going until he soon asks, 'So, what do you wanna do, [SpikePlayerAddress]?' In reply, you move your hand down to rest on the bulge in his jeans and give it a squeeze, then say that you want to taste his dobie cock. 'Wow,' the young man says under his breath, still slightly amazed that you're taking the receiving end, being his leader and all. He looks so cute and eager that you just have to kiss him again, tongue-wrestling with Spike for a little while as he replies in kind. Eventually, you pull back from making out with a chuckle and sink to a crouch in front of him, pulling down the zipper of his jeans. Rapidly pushing out of his sheath as it gets harder by the second, Spike's dickhead comes into view right away, as your canine companion is free-balling, ready as soon as his pants are open. Popping the button next, you wrench the jeans down to his knees in a quick pull, revealing the young man's furry crotch and swinging balls too.";
		WaitLineBreak;
		say "     Spike pants audibly as you wrap your fingers around his hot shaft, one hand of his moving to rest on your shoulder and steady himself. You can feel the trembling of his hips from just how hard the anthro's tail is wagging and find yourself grinning almost without meaning to. It's certainly fun to have a very eager partner. Leaning forward and giving his tip a lick draws a pleased gasp from the doberman, followed by a huff as he forces himself to close his open muzzle and starts to breathe through his nose, trying so very hard not to show his youth and relative inexperience. 'Nnghh, oh god!' he whispers under his breath as you take his shaft into your mouth and suck on it hard, then play your tongue over it to trace all the little veins and details one by one. At the same time, one of your hands brushes up the inside of his legs, then cups the doberman's furry balls, gently rolling them between your fingers.";
		say "     Soon starting to blow your canine playmate in earnest, you bob up and down on his cock, lips tightly wrapped around his erect manhood as you suck on it and slurp up the pre-cum he is leaking. Spike has a pleasant nutty taste to his pre that makes you want more, so you massage his balls and milk him for it, little spurts delivered right onto your tongue. 'Fuck yeah,' he gasps out loud, any attempt of controlling himself quickly forgotten in view of your teasing and stroking. You can't be quite sure about it, but you feel as if the volume of his pre-spurts is increasing as you push the young man's arousal to higher and higher levels. One thing is for sure though - you can literally feel his balls getting tighter as they churn to prepare a big load for rapid delivery.";
		WaitLineBreak;
		say "     As much fun it is to wind the dobie boy up, you eventually relent to getting him where he needs to go and take out all the stops in blowing him, slurping that hot rod of his into your mouth and bobbing on it hard. The assault of oral pleasure draws a whole new level of response from Spike, who lets out a litany of, 'Oh yeah. YEAH! Fuck, fuccckkk! Fuck I'm close!' As he gets loud, you squeeze his balls a little and rub them between your fingers, which is enough to give Alexandra's offspring the final push. With a needy growl coming out of the depths of his throat, the young man hammers his hips forward in a sudden thrust, only slowed by the swell of his knot bumping against your lips. He doesn't try to force it in, simply enjoying unloading thick spurts of cum right down your throat. Pulse by pulse, he fills your stomach with rich canine seed. Only when his orgasm starts to flag a little, its intensity petering out, do you pull back and take the next few shots on your tongue, getting a taste of Spike's cum.";
		say "     'That was awesome,' the young doberman pants out exhaustedly, looking down at you with a smile as you pull off his shaft and flex your tongue to spread his flavor all over it. Then he pulls his pants back up and zips them, eager for more fun times to be had with you, or out on the streets.";
	else if Libido of Spike > 20 and Libido of Spike < 40: [dutiful dobie]
		say "     Stepping up before the young man, hands on your hips, you let your eyes roam up and down over him with a serious expression on your face. Standing at attention, the nervous-looking dobie tenses a little more with each moment that you just keep staring, until you finally grin at him and say that it is time for him to show his loyalty to you again. Spike's eyebrows rise a little at the lewd undertone of your voice, then asks, 'Uhm, so what do you want to do, [SpikePlayerAddress]?' With a chuckle, you reply that he should push down his pants. There is a tiny moment of hesitation before Spike reacts, moving to comply quickly afterwards and undoing his button and zipper before pushing the jeans down over the firm curve of his ass. This bares the anthro dobie's relatively slender hips and his crotch, revealing a furry pair of balls and canine sheath. Spike is slightly surprised at you stepping up next, gasping out loud as you cup his furry balls with one hand, giving them a noticeable squeeze and rolling the sensitive orbs between your fingers.";
		say "     Your stroking leads to Spike's cock rapidly pushing out of his sheath, filling out into a quite well-sized red rocket of canine manhood. Despite the fact that he is still confused about being man-handled into getting a blowjob, the anthro dobie's body knows exactly how to react, his tail wagging in joy all of its own. Spike pants audibly as you wrap your fingers around his hot shaft, one hand of his moving to rest on your shoulder and steady himself. You can feel the trembling of his hips from just how hard the anthro's tail is wagging and find yourself chuckling at the conflicting emotions you must be giving your play-pet. It's certainly fun to have a sexy doggy to do whatever you want with. Leaning forward and giving his tip a lick draws a pleased gasp from the doberman, followed by a huff as he forces himself to close his open muzzle and starts to breathe through his nose, trying so very hard not to show his youth and relative inexperience. 'Nnghh, oh god!' he whispers under his breath as you take his shaft into your mouth and suck on it hard, then play your tongue over it to trace all the little veins and details one by one.";
		WaitLineBreak;
		say "     Soon starting to blow your canine playmate in earnest, you bob up and down on his cock, lips tightly wrapped around his erect manhood as you suck on it and slurp up the pre-cum he is leaking. Spike has a pleasant nutty taste to his pre that makes you want more, so you massage his balls and milk him for it, little spurts delivered right onto your tongue. 'Fuck yeah,' he gasps out loud, any attempt of controlling himself quickly forgotten in view of your teasing and stroking. You can't be quite sure about it, but you feel as if the volume of his pre-spurts is increasing as you push the young man's arousal to higher and higher levels. One thing is for sure though - you can literally feel his balls getting tighter as they churn to prepare a big load for rapid delivery.";
		say "     As much fun it is to wind the dobie boy up, you eventually relent to getting him where he needs to go and take out all the stops in blowing him, slurping that hot rod of his into your mouth and bobbing on it hard. The assault of oral pleasure draws a whole new level of response from Spike, who lets out a litany of, 'Oh yeah. YEAH! Fuck, fuccckkk! Fuck I'm close!' As he gets loud, you squeeze his balls a little and rub them between your fingers, which is enough to give Alexandra's offspring the final push. With a needy growl coming out of the depths of his throat, the young man hammers his hips forward in a sudden thrust, only slowed by the swell of his knot bumping against your lips. He doesn't try to force it in, simply enjoying unloading thick spurts of cum right down your throat. Pulse by pulse, he fills your stomach with rich canine seed. Only when his orgasm starts to flag a little, its intensity petering out, do you pull back and take the next few shots on your tongue, getting a taste of Spike's cum.";
		WaitLineBreak;
		say "     'Wow! That-that was awesome,' the young doberman pants out exhaustedly, looking down at you with a confused smile as you pull off his shaft and flex your tongue to spread his flavor all over it. Then he pulls his pants back up and zips them, getting ready for further adventures with you, or out on the streets.";
	else if Libido of Spike > 40 and Libido of Spike < 60: [forced dobie]
		say "     Stepping right into the young doberman's comfort zone, you don't give him even a second to react, simply snatching him by the loose collar and using that convenient handhold to wrench him even closer. Spike lets out a somewhat choked gasp at suddenly being man-handled, his eyes wide in fear as your merciless gaze studies his face. Telling him harshly that you want his dick, you leave the dobie standing with a perplexed look on his face as you sink down into a crotch right before him. With a grin on your face, you pop the button of his jeans, then wrench them down over the tight curve of his ass, baring the young man's body down to the knees. 'What the - nnnghh!' he gasps out as you cup his furry balls with one hand, giving them a noticeable squeeze and rolling the sensitive orbs between your fingers. Your stroking leads to Spike's cock rapidly pushing out of his sheath despite his clear resistance, filling out into a quite well-sized red rocket of canine manhood.";
		say "     Being slightly afraid due to being man-handled, even if he's getting a blowjob, the anthro dobie's body tenses in your grasp. Spike pants audibly as you wrap your fingers around his hot shaft, one hand of his moving to rest on your shoulder and steady himself. You can feel some trembling of his hips from the anthro's tail wagging on its own despite anything he can do and find yourself chuckling at the conflicting emotions you must be giving your play-pet. It's certainly fun to have a sexy doggy to do whatever you want with. Leaning forward and giving his tip a lick draws a pleased gasp from the doberman, followed by a huff as he forces himself to close his open muzzle and starts to breathe through his nose, trying so very hard not to show his youth and relative inexperience. The young man's eyes clench shut tightly, most likely from him imagining being somewhere else right now. 'Nnghh, oh god!' he whispers under his breath as you take his shaft into your mouth and suck on it hard, then play your tongue over it to trace all the little veins and details one by one.";
		WaitLineBreak;
		say "     Soon starting to blow your canine playmate in earnest, you bob up and down on his cock, lips tightly wrapped around his erect manhood as you suck on it and slurp up the pre-cum he is leaking. Spike has a pleasant nutty taste to his pre that makes you want more, so you massage his balls and milk him for it, little spurts delivered right onto your tongue. 'Fucking hell,' he gasps out loud, any attempt of controlling himself quickly forgotten in view of your teasing and stroking. You can't be quite sure about it, but you feel as if the volume of his pre-spurts is increasing as you push the young man's arousal to higher and higher levels. One thing is for sure though - you can literally feel his balls getting tighter as they churn to prepare a big load for rapid delivery.";
		say "     As much fun it is to wind the dobie boy up, you eventually decide that you want to milk him, taking out all the stops. Slurping that hot rod of his into your mouth and bobbing on it hard, the assault of oral pleasure draws a whole new level of response from Spike, who lets out a litany of, 'Finish me! Please! Fuccckkk, you bastard! Nnnghh, so close!' As he gets loud, you squeeze his balls a little and rub them between your fingers, which is enough to give Alexandra's offspring the final push. With a needy growl coming out of the depths of his throat, the young man hammers his hips forward in a sudden thrust, only slowed by the swell of his knot bumping against your lips. In mindless lust, he tries to force it in too, but you wrap your fingers around the swelling bulge to prevent that, even while he unloads thick spurts of cum right down your throat. Pulse by pulse, Spike fills your stomach with rich canine seed. Only when his orgasm starts to flag a little, its intensity petering out, do you pull back and take the next few shots on your tongue, getting a taste of dobie cum.";
		WaitLineBreak;
		say "     'Done using me now?' the young doberman pants out in an exhausted and somewhat defensive tone, looking down at you with a frown. You stand up wordlessly, grab the back of his neck and pulling his head back, then grunt for him to open up his muzzle. As he does so, you spit a mouthful of his own cum onto the trembling young man's tongue and order him to swallow, which he does begrudgingly. Commenting with a chuckle about how nice of a cum-dump he's becoming, you wave him trying to say something afterwards off with casual disinterest, telling him to clean himself up and get ready to serve as your companion once more.";
	if Lust of Spike is 0:
		now Lust of Spike is 1;
	PlayerEat 10;
	NPCSexAftermath Player receives "OralCock" from Spike;

to say SpikeSex4: [cherry popping]
	if Libido of Spike > 0 and Libido of Spike < 20: [joyful dobie]
		say "     Sliding an arm around the young doberman hips, you pull him against yourself and give him a naughty grin as you squeeze his ass. Spike's brows rise at the groping and his hands automatically start to touch your sides in turn. As he opens his muzzle to say something, you slurp the tip of his tongue into your mouth, playfully sucking at it for a second before you pull back and tell him that you want to have fun with your most trusted lieutenant. You keep praising him, stressing in a honest tone just how proud you are of his performance as your companion, and the young guy preens in the glory you shine upon him, his face soon dominated by a very wide and happy smile. Behind Spike's back, his slender tail is wagging up a storm and you let your fingers wander to it to rub the base, making his right paw reflexively scratch over the ground in pleasured response.";
		say "     Touching and stroking your armful of happy, increasingly horny dobie, you keep going until he soon asks, 'So, what do you wanna do, [SpikePlayerAddress]?' In reply, you slide your hand lower from where it was gripping his tail, pushing your fingers under the belt-line of his low-rising jeans. With no underwear in the way, you cup the firm curve of his buttocks and caress Spike's rear end, drawing a pleased little sigh from him. Soon, you proceed to dipping your fingers into the crack between his cheeks, making the doberman's eyes go wide. 'H-Hey, that's - um, I'm not sure if I'm ready to... nnnghhh - fuuuck!' Spike's hesitant first words lead over to a breathless gasp as you rub over his pucker and slip the tip of your finger in, smiling broadly as he pants with his tongue hanging out and a wondrous expression on his face. You can feel him stiffen in response to rubbing his prostate, his cock straining against the material of his pants.";
		WaitLineBreak;
		say "     'Wow,' the young man says under his breath, then looks into your eyes before somewhat shame-facedly asking, 'Can - can you do that again? I'm no fag, but that was strangely nice.' Happy to open up Spike's horizons, you teasingly brush your fingers over his pucker, stroking and touching his sensitive hole. Panting through his open mouth, tongue hanging out to the side, he clearly enjoys it and has his eyes half-closed as he focuses on the sensations you're giving him. Leaning into your embrace with his tail wagging eagerly, the cute canine wakes the desire in you to kiss him again, which you do after pulling his muzzle to your face. Tongue-wrestling with Spike as he happily returns your affections, you lose track of time for a little while, just enjoying the intimacy of touching and making out with your companion. Before long, your [Cock of Player] shaft is rock hard, standing proudly erect as the dobie grinds against you after another rub over his tailstar.";
		say "     Pulling away a little from the dobie, you stroke the fur at the back of his neck affectionately. Then you give the tip of his nose a quick peck and say that he's worthy for the next step to become your close confidant. After all, what could be closer than sharing one's bed? Eyes full of lust and hero worship, Spike nods in assent without even a second of further hesitation. His hands move towards his hips, then pull at his belt, soon undoing its clasp with eager haste. Then the doberman just shoves his jeans down, followed by kicking them off to the side. Standing before you, naked from the waist down, you can see that he's also hard and erect, his red rocket having a glistening drop of pre at its very tip. Swiping the pre-cum up with your finger, you hold it out to Spike with a provocative grin that only grows wider as he leans in to lick it off.";
		WaitLineBreak;
		say "     Fingers sliding under the edge of his white mesh shirt, you quickly pull the piece of cloth off Spike and drop it, then let your eyes roam over the now fully nude body of your companion. His slender yet toned form literally trembles in anticipation as he stands ready to follow your every direction. Unwilling to wait even a second longer, you make quick work of stripping down yourself, then step over the little pile of your discarded gear to draw Spike against you. His short fur feels soft and warm against your skin as you enfold him in a tight embrace and share a fun little bit of groping with each other, culminating in a request for him to get on the ground. Spike lets go after another moment or two, then crouches down and braces himself with one arm as he sits on the floor and lays back. You join him just a moment later, coming to kneel between the toned legs of the anthro canine.";
		say "     'Can you, uhm, go slow? I'm new to... butt stuff,' Spike says to you from where he lays on the ground. He's trying his best to sound butch and confident, but is unable to fully hide his nervousness about giving up his virginity to you. His innocent vulnerability makes your lust spike and you lay a hand possessively on his chest as you say that you take very good care of your partners. Gathering some spit, you let it drip off the tip of your tongue to land on your [Cock of Player] erection, stroking the shaft to spread the improvised lube. After that, you reach down to lift Spike's legs and put them in a nice spread-open position before telling tell him to take over from you. The dobie does so readily enough, then nods to you with a little smile and says in a brave tone, 'I'm ready.' Bending your cock down to line up with the young man's pucker, you slowly press forward against the resistance of the tight opening with increasing force until the head pops in, accompanied by grunts in both of your voices.";
		WaitLineBreak;
		say "     'Fuuuckk,' Spike groans, his hole reflexively contracting to squeeze your dickhead like a vise. The incredible sensation that creates has your eyes rolling back in your head and you can't help but pant out loud, yet when the state of tension of his muscles persists for a whole minute, you shake out of the bliss and focus back on your companion. Meeting his eyes, you jokingly tell him that there's much more to come than just an inch or two, if he will only release your dick. Shame-faced in his inexperience, Spike sputters for a second or two, then replies, 'Oh! Er- yeah, I'll do that then.' He pants audibly and forces his clenched fists to relax, soon placing both hands on the ground, fingers outstretched. At the same time, the young man's asshole loosens its death-grip on your cock, allowing you to start up small movements in and out.";
		say "     Each little rub of your tip against the sensitive pleasure-spot of Spike's prostate draws some noise from him - but now they're moans instead of winces. The dobie looks up at you in open amazement of just how good you make him feel. Moving a hand to stroke over his flat stomach and the lightly muscled chest as it heaves with deep breaths, you start pushing deeper into your companion, exploring the sensual pleasure his tight passage promises. Eager as the dobie is, he readily takes your advice on when to flex his inner muscles, squeezing and milking your cock inside his ass. At the same time, his own knotted cock stands proudly erect from all the anal stimulation, swaying back and forth with the continued thrusts into him. As your shared pleasure mounts, your love-making becomes increasingly intense, with deeper, ever faster penetrations and Spike hiking up his hips to meet them.";
		WaitLineBreak;
		say "     The sound of moans and your own crotch meeting his buttocks in rhythmic slaps is joined by Spike's dick smacking the flat of his abs every time you hammer into him as hard as you are. Looking down at the swinging piece of man-meat, you can see that he's leaked enough pre by now to create sticky strings between the tip of his erection and the increasingly matted fur under Spike's belly button. Clearly, your doggie boy is enjoying the wild ride he's getting. A grin spreads over your lips as you look him in the eye and tell Spike that he's your special little friend now, a real man you can trust with anything, and to underline your words, you take hold of his cock and start jerking the young man. Aligning your hand movements with the thrusts of your cock, you tell him how good his ass feels around you. Getting physical pleasure at the same time as the acknowledgement he so clearly craves pushes Spike to the next level, whimpering like a bitch in heat as he gives himself to you fully and with all his self.";
		say "     Feeling that tight, formerly virgin ass around your cock and the hot rod of Spike's erection in your hand, you're driven wild as he calls out the fateful words, 'I'm yours [SpikePlayerAddress]! You feel so good inside me!' Lust flares hotly inside you, making any and all restraint fall away as you proceed to ravage Spike's ass, pulling out all the way then slamming back inside in a single thrust, once, twice, then three times. And as your balls touch his ass this time, the over-sexed young man finally is at the end of his endurance: Barking out unintelligible sounds of pleasure, Spike thrashes under you and his cock starts to erupt with cum that splatters his heaving chest in long streaks. His inner muscles quiver and clench at the same time as the rest of the anthro male, creating the sensation of being jerked off inside his hole, which pushes you over the edge right along with him. Groaning loudly, you grind against his ass and erupt into his innermost depths, laying claim to the athletic canine by breeding his ass thoroughly.";
		WaitLineBreak;
		say "     As both of you slowly start to wind down from the incredible rush of orgasm, reason starts to re-emerge behind the abating lust. 'You really liked fucking me, didn't you? That was some finish!' the young doberman pants out exhaustedly, his ears perking up as he waits for your reply. It almost seems like he wants to make sure that your praise before wasn't just a heat of the moment thing, being still unsure about his self-worth. Looking down at the young man, sweaty and stretched out on the ground before you, his cum splattered over his own chest, you grin and reply that he's a proper little stud with an amazingly tight hole, just the man you want by your side. The anthro dobie beams happily as you pat his chest and go on a little about how nice it felt when he flexed around you, then lean in and plant a kiss on his muzzle. After a little while of banter and caresses, you eventually pull out of your young companion and stand up, holding out your hand to help him get off the ground too.";
		say "     As Spike then goes to pick up his jeans, you watch his buttocks flex and move, a little trickle of your cum visible between them. The dobie starts to get dressed, stepping into the pants and gingerly working them up over his slightly sore butt. 'Man, you really did a number on my ass,' he says half-jokingly, looking at you as he starts pulling up his zipper. 'I don't think I'll be able to sit down anytime soon.' He walks to where his mesh shirt is lying on the ground and winces as he tries to bend over to pick it up, so you step in and take it, then pull it over his head, helping your companion to get dressed. As Spike tucks the cloth into place, you proceed to affectionately rub the back of his neck and then his cheek, finally thanking him for letting you make him your special friend and giving his ass up to you. 'I figured you were right about being a team as we make this city ours, so why not become your butt-brother, hah! Much more fun than a blood oath for sure!' Tousling his green hair, you grin at the dobie and he steps up to his usual position by your right shoulder, ready to follow you to new adventures.";
		now Libido of Spike is 2; [anal virginity taken (nicely)]
	else if Libido of Spike > 20 and Libido of Spike < 40: [dutiful dobie]
		say "     Stepping up before the young man, hands on your hips, you let your eyes roam up and down over him with a serious expression on your face. Standing at attention, the nervous-looking dobie tenses a little more with each moment that you just keep staring, until you finally grin at him and say that it is time for him to show his loyalty to you again. Spike's eyebrows rise a little at the lewd undertone of your voice, then asks, 'Uhm, so what do you want to do, [SpikePlayerAddress]?' With a chuckle, you reply that he should push down his pants. There is a tiny moment of hesitation before Spike reacts, moving to comply quickly afterwards and undoing his button and zipper before pushing the jeans down over the firm curve of his ass. This bares the anthro dobie's relatively slender hips and his crotch, revealing a furry pair of balls and canine sheath.";
		say "     As you order him to get on all fours and raise his ass, Spike is visibly shocked and tries to back away, but that attempt is brought short by the jeans still around his ankles. 'Listen, I - I'm fine with the other things we've done, but-' he starts to stammer, only to be shut up as you give him a hard stare. The young doberman visibly swallows as he realizes that accepting you as his boss means that he'll have to follow all of your commands, no matter what he may think of them. Thankfully, he still remembers the speech you gave him before, so this time all it takes is clearing your throat for him to submit and start moving to follow orders. Pulling his paws out of the bunched-up pants around his ankles, the young man folds them and lays down the package to kneel on. Then he gets down on all fours and glances back at you over his shoulder, maybe hoping that this could be just a test to check his resolve and obedience. His expression falls a little as he sees that you're getting undressed.";
		WaitLineBreak;
		say "     Soon stripping off the last article of clothing, you step up to the dobie in all of your naked glory, the hard [Cock of Player] shaft between your legs swinging with every step. Looking down at your canine companion in appreciation of his lithe form and firm buttocks, the fires of lust flare up a little brighter, making you want to be inside him right away. As you get into position behind Spike, you take note of the fact that his tail is tucked down between his buttocks in a subconscious sign of discomfort, even though he might have relented to your demands. This makes you soften your approach at least a little bit, not wanting to scar your fun little boy-toy too much after all. Placing your hands on his buttocks, you give the dobie some firm but gentle caresses, then slide them underneath and feel for his sheath.";
		say "     Spike isn't hard at first, but with one hand cupping his furry balls and rolling them between your fingers and the other stroking up and down over the sheath and even slipping a finger inside, there's not long to wait before he can't help but grow erect. Wrapping your fingers around the canine's shaft, you let your other hand roam further up, feeling his chest and playing with the young man's nipples. Bent over him as you are, it isn't too hard to move your head next to his pointy ear and whisper into them that he seems to like being your obedient doggy after all, underlining the words with caresses and more stroking. 'Yes, [SpikePlayerAddress],' Spike pants out in a fairly submissive tone, with little of his earlier reluctance remaining now that you've gotten him aroused and more ready for actual fun. Pulling back, you glance at where his tail is just loosely hanging down now, easily tugged up and to the side, after which you give its base a pleasant little rub.";
		WaitLineBreak;
		say "     With the target of your lust now in sight, your dick throbs as you imagine the tight chute around it. Spike's tail-star is a little pink thing, a wrinkled ring between his buttocks that clearly hasn't ever been taken. Feeling playful about his first time, you go back to stroking the doberman's own cock some more, holding out your other hand to catch any pre he's leaking and even edging him so far as to get little spurts of pre before allowing him to cool down some more. Dipping two fingers into the small handful of slick fluid milked from your boy-toy, you brush your digits over his hole teasingly, circling around and around mixed with little almost-pushes. When you eventually slip him your middle finger, it is a sudden move, putting you knuckle deep before he can even realize that this isn't another feint at penetration. 'Nnnghh, fuck!' Spike groans as his hole tightens into a death-grip around your digit and you don't try to move it, just letting him get used to the feeling.";
		say "     To distract the anthro dobie from the momentary pain of his asshole being fingered, you use your thumb to massage his pucker from the outside some more and also stroke his cock, both of which work wonders in making Spike think of other things. This allows you to push your index-finger in too in another surprise move, starting to stretch and open your bottom in training slowly but surely as you soon begin working them in and out of him. It still takes a fair bit patience and a few gobs of spit to lube his entrance well enough, but eventually you feel that he's ready for your cock. Spike inhales a gasping breath as you tell him this with a grin on your face, and after a little coaching, you get him to call out, 'Fuck me [SpikePlayerAddress], I- I need to feel you inside me.' Playfully slapping your erection onto his buttocks left and right, you line it up with the tempting, slickened hole between them, then start to push into your little dobie.";
		WaitLineBreak;
		say "     Spike's asshole is tight as only a virgin man can be, gripping you firmly from all sides without being too restrictive. Prepping him thoroughly definitively pays off now, as you can sink your cock into him in a smooth move, slowly but surely and accompanied by your companion's whimpers and moans. Finally feeling your balls against his ass, you give a victorious grunt and grope his buttocks some more as you simply enjoy the sight of having the young man impaled on your cock all the way. After a little while of just resting inside him and letting Spike get used to being your cock-sleeve, you start pulling back, drawing more moans and pants from him as you slide against his inner walls, followed by another slow push inside. Working up to sawing your dick in and out of the young man, you slowly increase the tempo and are soon playfully timing your thrusts with his moans of pleasure, hammering into Spike as he is just breathing out and making him go light-headed as you drive the last remaining air from his lungs.";
		say "     Breathless, horny and oh so very ply-able, your dobie can properly be called a sex toy by now, pushed long past any hesitation or even intelligible speech. As such, you don't hesitate to become more extreme when the mood strikes you, for example pulling out completely to look at his stretched, somewhat reddening pucker gaping in apparent confusion, then slamming in balls deep just as it starts to pull closed again. With a whorish moan that would fit a needy bitch in heat, the dobie takes everything you can dish out and even raises his ass higher, presenting himself for deeper penetration. With all stops falling by the wayside, you use him as you see fit in a wild rush of hard fucking, stoking the fires of your lust ever higher. Then suddenly, there is an animalistic howl of pleasure as Spike starts to tremble and trash underneath you, his fuckhole clenching tight around your cock as his own knotted manhood starts to blast out sticky strings of cum.";
		WaitLineBreak;
		say "     With the music of Spike's moans in your ears and feeling the sudden vice-like tightness of his asshole, you're not far behind him in reaching your own climax. Forcefully thrusting into his innermost depths, you grind against the smooth fur of the dobie's buttocks as you blast into him hard, claiming the young man as your own by painting his insides white. Spike's inner muscles keep flexing while you both are coming, literally milking more seed out of you and prolonging the orgasm quite nicely. By the time your further spurts of cum eventually ebb off, the both of you are quite exhausted and you sink down to rest on your partner's back to rest for a little while, which makes his trembling arms buckle and lands the two of you sprawled on the ground, still connected by your erection and with your arms loosely wrapped around his chest. For a little while, you just lay there like that, breathing heavily to re-gain your breath and enjoying the afterglow.";
		say "     As the rush of sex is over and the last embers of lust die down, Spike soon starts to become a bit unruly, apparently feeling the itch and burn of an overtaxed hole now. He gingerly pushes off your arm from where it lays over his side, then slowly pulls his ass away from your hips, wincing as the girth of your softening cock slides out of his pucker. The young man reaches behind himself hesitantly, then feels around with a light touch, apparently checking the state of his freshly de-virginized hole. 'Man, you really did a number on my ass. I don't think I'll be sitting down anytime soon,' he says with a wince, then gulps a little as he sees your answering grin that promises more pounding in the future. You don't feel a need to comment any more than that, simply lying back in relaxation as you watch him get up slowly, then curse a little as he realizes that part of his load soaked into the jeans he was kneeling on. After watching him get dressed, you eventually rise from the ground yourself and prepare yourself for more adventures out in the city.";
		now Libido of Spike is 22; [anal virginity taken (middling, wild)]
	else if Libido of Spike > 40 and Libido of Spike < 60: [forced dobie]
		say "     Stepping right into the young doberman's comfort zone, you don't give him even a second to react, simply snatching him by the loose collar and using that convenient handhold to wrench him even closer. Spike lets out a somewhat choked gasp at suddenly being man-handled, his eyes wide in fear as your merciless gaze studies his face. Telling him harshly it's about time that he puts out for you brings a panicked look to his eyes. You've got little doubt that he'd whimper and beg for you not to do this, but as you're not in the mood for push-back from your soon-to-be broken-in bitch, you just clamp your fingers around his muzzle and keep it tightly shut so he can do little more than whine and huff through his nose. Gruffly telling him that he's yours and he'd do well to remember that, you then give the doberman a harsh shove that has him falling to the ground, barely catching himself from face-planting on it.";
		say "     With a merciless grin on your face, you pounce on him before he has got any chance to re-orient himself, pushing down on the middle of his back with your knee and pinning him to the ground while your hands reach for his jeans. Harshly wrenching on the pants to get them over the curve of his buttocks, they're shoved out of the way a second later, revealing the tight ass of your abused companion. An open-handed slap of his furry cheeks makes the young man thrash weakly against you in a futile attempt to free himself. 'God, that stings!' he groans against the ground, which you answer with another bit of spanking, telling him that you want him to stay in this position and keep down the whining. After a few more hits to drive your point home, you ask Spike if he understands, and the young man gives a pained nod. Testing his seeming submission, you lift your knee a little and are well satisfied in that the anthro stays as he is, ass raised high and presenting for fucking.";
		WaitLineBreak;
		say "     Moving behind the doberman, you quickly pull out your cock and slap the [Cock of Player] shaft left and right on his curving buttocks. Spike's tail is clenched between those, at least until you pull it up in a sharp tug, then use it as a handhold as you grind against his crack. Quiet grunts come from him as the tail-pulling pains Spike, not that you care a bit about that. Gathering a big glob of saliva, you spit at his hole and spread the fluid around with the tip of your erection a little, then line yourself up with his virgin passage. The tension between the doberman and yourself rises as you plant your hands on his hips and take a tight grip, followed by a brutal thrust into his tight hole. As tight and clenched as he may be, the young man's pucker is no match against your steel-hard rod, plunging into him like a hot knife into butter. There just is no way he could keep quiet through this, and a hoarse scream leaves Spike's lips as you take his virginity from him by force.";
		say "     Your unwilling sex-toy certainly has a sweet ass on him, tightly gripping the sides of your shaft as you bottom out inside him. He's almost too tight, far from having the more accommodating chute of a more experienced partner, but you're in no mood to take things slow. Slapping his buttocks once more and railing at him about relaxing his muscles, you thrust in and out in an unrelenting tempo. Grim amusement plays over your lips as you watch his skin clinging tightly to your cock on each pull out, followed by the next push inside that draws another gasp from your helpless partner. Breaking him in like this forces your boy-toy to learn the ropes quickly unless he wants his ass torn up, and so far Spike's doing a fairly nice job of it, with only one or two painful mistakes in which he didn't loosen his muscles quickly enough.";
		WaitLineBreak;
		say "     Despite the harsh treatment and you just taking what pleasure you want from his gripping asshole, the stimulation of Spike's prostate isn't something the young man can deny. He may whimper and groan as you force your dick into his hole again and again, yet somewhere in between, there's a shocked moan or two too and reaching beneath him, your questing fingers find that his canine cock has pushed out of its sheath. Squeezing his erection sharply, you laugh and comment that it can't be too bad if he's hard from being fucked, then demand for him to beg you for more sex. You do indeed get that, as Spike gasps out between groans, 'Fuck me! Take me [SpikePlayerAddress]! *Nnnnghhhh* Fuck my ass!' Going back to harsh thrusts with your hands on his hips after that, you rail your little bitch-boy good, hammering into him faster and faster until you can barely contain your lust anymore. Then finally, you slam into him one last time and erupt into his depth, flooding the young man with your virile cum and claiming his ass as yours.";
		say "     You stay on top of Spike for long enough that your spurts of cum eventually ebb off and then cease, then wrench your shaft out of his hole with little regard to the sore state of his pucker. With the pained gurgle of the dobie in your ears, you eagerly take in your handiwork: His tail-star is far from the tight little button it once was, instead showing as a reddened ring that only slowly pulls closed again. Even as it does so, at some point the movement slows down and comes to a stop, leaving a tiny bit of a gape behind, just enough for the creamy white cum you bred him with to leak out. You've definitively left a lasting mark on Spike, who just lies where you left him, exhausted and sore, while you grab your gear and get dressed again. Not really paying him too much attention while you get dressed, you see him look down in shame as he pulls his pants on a little while later, gingerly pulling it over his aching ass.";
		now Libido of Spike is 42; [anal virginity taken (brutally)]
	if Lust of Spike is 0:
		now Lust of Spike is 1;
	NPCSexAftermath Spike receives "AssFuck" from Player;

to say SpikeSex5: [repeat fuck]
	if Libido of Spike > 0 and Libido of Spike < 20: [joyful dobie]
		say "     Sliding an arm around the young doberman hips, you pull him against yourself and give him a naughty grin as you squeeze his ass. Spike's brows rise at the groping and his hands automatically start to touch your sides in turn. As he opens his muzzle to say something, you slurp the tip of his tongue into your mouth while holding him in your embrace. Playfully sucking at it for a second before you pull back and tell him that you want to have fun with your most trusted lieutenant. You keep praising him, stressing in an honest tone just how proud you are of his performance as your companion, and the young guy preens in the glory you shine upon him, his face soon dominated by a very wide and happy smile. Behind Spike's back, his slender tail is wagging up a storm and you let your fingers wander to it to rub the base, making his right paw reflexively scratch over the ground in pleasured response.";
		say "     Touching and stroking your armful of happy, increasingly horny dobie, you keep going until he soon asks, 'So, what do you wanna do, [SpikePlayerAddress]?' In reply, you undo the extra button on the back of his pants that keeps them closed above the tail, allowing you to slide your hand under the belt-line of his low-rising jeans. With no underwear in the way and the slit for the tail now hanging open, you cup the firm curve of his buttocks and caress Spike's rear end, drawing a pleased little sigh from him. Soon, you proceed to dipping your fingers into the crack between his cheeks, finding the tight ring of his pucker with a fingertip and brushing over it. The young doberman pants audibly at your touch and you notice that he pushes his hips back a little, making your finger press against his opening. He lets out a breathless chuckle, then licks the side of your neck and whispers, 'Man, this sure isn't what I thought joining your crew would be like, [SpikePlayerAddress]. It's better, so much better!'";
		WaitLineBreak;
		say "     Spike's arms tighten around you in an enthusiastic embrace as you rub over his pucker and exert some light pressure against it, smiling broadly as you feel his panting breath against your neck. Pulling your hand out of his pants, you put a finger into his mouth, letting Spike suck on it for a moment before you return to fingering him. The young man stiffens in response to you soon finding his prostate with the exploring digit, his cock straining against the material of his pants. 'Wow,' the lithe dobie male says under his breath before pulling his head back to give you the most adorable puppy-eyed look and perked-up ears, 'More please. That feels great!' Happy to oblige, you teasingly brush your fingers over his pucker, stroking and touching his sensitive hole. Panting through his open mouth, tongue hanging out to the side, he clearly enjoys it and has his eyes half-closed as he focuses on the sensations you're giving him. Further leaning into your embrace with his tail wagging eagerly, the cute canine wakes the desire in you to kiss him again, which you do after pulling his muzzle to your face.";
		say "     Tongue-wrestling with Spike as he happily returns your affections, you lose track of time for a little while, just enjoying the intimacy of touching and making out with your companion. Before long, your [Cock of Player] shaft is rock hard, standing proudly erect as the dobie grinds against you after another rub over his tailstar. Pulling away a little from the dobie, you stroke the fur at the back of his neck affectionately. Then you give the tip of his nose a quick peck and ask what he wants you to do now. He licks over your lips, a smile playing over his muzzle as he replies in an earnest tone, 'Damn, I don't even care if any asshole calls me a fag for saying this: Give me that dick! Fuck me! You make me feel so good!' His hands move towards his hips and pull at his belt, undoing its clasp with eager haste. Then the doberman just shoves his jeans down, followed by kicking them off to the side.";
		WaitLineBreak;
		say "     Standing before you, naked from the waist down, his red rocket of a canine cock presents itself with glistening drop of pre at its very tip. Swiping the pre-cum up with your finger, you hold it out to Spike with a provocative grin that only grows wider as he leans in to lick it off and proceeds to suckle on your digit. Withdrawing from your happy canine's mouth a moment later, you move your hands to slide them under the edge of his white mesh shirt and quickly pull the piece of cloth off Spike and drop it. His tail wags up a storm as you let your eyes roam over the now fully nude body of your companion, with him literally trembling in anticipation as he stands ready to follow your every direction. [if Player is naked]Drawing Spike against your naked form, you stroke his back and enjoy holding him close. [else]Unwilling to wait even a second longer, you make quick work of stripping down yourself, then step over the little pile of your discarded gear to draw Spike against you. [end if][line break]";
		say "     His short fur feels soft and warm against your skin as you enfold him in a tight embrace and share a fun little bit of groping with each other, culminating in spinning him around and pushing on his back to bend forward for you. Only too happy to obey, he presents his ass with a raised, wagging tail and both of his hands planted on his buttocks, spreading them for you. 'I'm ready for you [SpikePlayerAddress],' he says over his shoulder with a grin on his muzzle. His eagerness makes your lust flare sharply and you run a hand along his muscled side as you tell the anthro dobie what a very good dog he is. Gathering some spit, you let it drip off the tip of your tongue to land on your [Cock of Player] erection, stroking the shaft to spread the improvised lube. Bending your cock down to line up with the young man's pucker, you slowly press forward against the resistance of the tight opening with increasing force until the head pops in, accompanied by grunts in both of your voices.";
		WaitLineBreak;
		say "     'Fuuuckk yeah,' Spike groans, his hole reflexively contracting to squeeze your dickhead like a vise. The incredible sensation that creates has your eyes rolling back in your head and you can't help but pant out loud and freeze in motion, cock throbbing hard against the inner walls of your companion. The panting dobie remembers his previous lessons in taking it up the rear end after another moment or two, muscles trembling around you a little as he relaxes them and allows more of you to slide inside. Each little rub of your tip against the sensitive pleasure-spot of Spike's prostate draws eager noises from him, mostly pants and moans, but also a happy little bark as you give it a playful thrust after withdrawing all the way for a second. 'I love your dick inside me,' Spike says over his shoulder, loudly and without any hint of shame at the admission.";
		say "     Moving a hand to stroke over his flat stomach and the lightly muscled chest as it heaves with deep breaths, you start pushing deeper into your companion, exploring the sensual pleasure his tight passage promises. Proving just how eagerly he has taken to your lessons of anal sex, he demonstrates that he knows just when to flex his muscles, squeezing and milking your cock inside his ass. At the same time, his own knotted cock stands proudly erect from all the anal stimulation, swaying back and forth with the continued thrusts into him. As your shared pleasure mounts, your love-making becomes increasingly intense, with deeper, ever faster penetrations and Spike rocking back to meet them.";
		WaitLineBreak;
		say "     The sound of moans and your own crotch meeting his buttocks in rhythmic slaps is joined by Spike's dick smacking the flat of his abs every time you hammer into him as hard as you are. Reaching around your eager doggy to catch his swinging piece of man-meat, you feel it in your hand warm and wet, what with all the pre creating sticky strings between the tip of his erection and the increasingly matted fur under Spike's belly button. Clearly, your companion is more than enjoying the wild ride he's getting. A grin spreads over your lips as you lean forward and nibble at the corner of one of his sharply pointed ears, then tell him that he truly is one very special dobie to you. As he reaches back to caress your side with one arm, your own hand starts to jerk him off. Aligning your hand movements with the thrusts of your cock, you tell him how amazing his ass feels around you.";
		say "     Getting physical pleasure at the same time as the acknowledgement he so clearly craves pushes Spike to the next level, whimpering like a bitch in heat as he gives himself to you fully. 'Pound me harder, [SpikePlayerAddress]! You feel so good inside me!' the young man shouts in ecstasy, making your own lust flare hotly and almost all restraint fall away. As if possessed, you ravage Spike's ass, pulling out all the way then slamming back inside in a single thrust, once, twice, then three times. And as your balls touch his ass this time, the over-sexed young man finally is at the end of his endurance: Barking out unintelligible sounds of pleasure, Spike trembles and twitches in your embrace and his cock starts to erupt with cum that covers the ground below in messy splatters. His inner muscles quiver and clench at the same time as the rest of the anthro male, creating the sensation of being jerked off inside his hole, which pushes you over the edge right along with him. Groaning loudly, you grind against his ass and erupt into his innermost depths, laying claim to the athletic canine by breeding his ass thoroughly.";
		WaitLineBreak;
		say "     As both of you slowly start to wind down from the incredible rush of orgasm, reason starts to re-emerge behind the abating lust. 'You really like my ass a lot, don't you? That was some finish!' the young doberman pants out exhaustedly, looking over his shoulder with is his ears perked up as he waits for your reply. Given that he's got a full load of your creamy cum up his rear as proof of your lust, you can't help but feel that he's angling for emotional affection, or even more beyond that. Pulling the young man upright against your chest, you nuzzle against the side of his neck and breathe in his slightly sweaty, manly scent. Giving Spike a tight squeeze, you reply that he's a proper little stud with an amazingly tight hole, just the man you want by your side. The anthro dobie beams happily as you pat his chest and go on a little about how nice it felt when he flexed around you, then lean in and nibble on his ear a little bit more, drawing a moan from the dobie.";
		say "     After a little while of banter and caresses, you eventually pull out of your young companion and give his butt a playful pinch, laughing together with him as he turns around right quick. 'I really liked doing this with you,' he says happily, then goes to pick up his clothes after a quick lick over your lips. He's giving you quite an eyeful as he bends over to pick up the jeans, buttocks flexing and moving, a little trickle of your cum visible between them. Spike starts to get dressed, stepping into the pants and gingerly working them up over his slightly sore butt. 'Man, you really did a number on my ass,' he says half-jokingly, looking at you as he starts pulling up his zipper. 'Thank god we have nanites, eh? They'll fix me up before you know it and then we can have some more fun!' That said, he walks to where his mesh shirt is lying on the ground and winces as he tries to bend over to pick it up, so you step in and take it, then pull it over his head, helping your companion to get dressed. Tousling his green hair, you grin at the dobie and he steps up to his usual position by your right shoulder, ready to follow you to new adventures.";
		if Libido of Spike < 3:
			now Libido of Spike is 3; [repeated anal sex (nicely)]
	else if Libido of Spike > 20 and Libido of Spike < 40: [dutiful dobie]
		say "     Stepping up before the young man, hands on your hips, you let your eyes roam up and down over him with a serious expression on your face. Standing at attention, the nervous-looking dobie tenses a little more with each moment that you just keep staring, until you finally grin at him and say that it is time for him to show his loyalty to you again. Spike's eyebrows rise a little at the lewd undertone of your voice, then asks, 'Uhm, so what do you want to do, [SpikePlayerAddress]?' With a chuckle, you reply that he should strip and assume his position. The one on all fours, like a good little bitch so he can help you let off some steam. There is a tiny moment of hesitation before Spike reacts, moving to comply quickly afterwards and undoing his button and zipper before pushing the jeans down over the firm curve of his ass. This bares the anthro dobie's relatively slender hips and his crotch, revealing a furry pair of balls and canine sheath.";
		say "     As you give his butt a light slap and order him to get down and raise his ass, Spike visibly swallows before making himself give a submissive nod. No doubt, he still remembers the harsh speech you gave him before, so this time all it takes is clearing your throat for him to follow orders. Pulling his paws out of the bunched-up pants around his ankles, the young man folds them and lays down the package to kneel on. Then he gets down on all fours and glances back at you over his shoulder, watching you standing over him grinning as you get undressed yourself. Soon the last article of clothing falls on the pile with your other gear and you step up to the dobie in all of your naked glory, the hard [Cock of Player] shaft between your legs swinging with every step. Looking down at your canine companion in appreciation of his lithe form and firm buttocks, the fires of lust flare up a little brighter, making you want to be inside him right away.";
		WaitLineBreak;
		say "     As you get into position behind Spike, you take note of the fact that his tail is tucked down between his buttocks in a subconscious sign of discomfort, even though he might have relented to your demands. This makes you soften your approach at least a little bit, not wanting to scar your fun little boy-toy too much after all. Placing your hands on his buttocks, you give the dobie some firm but gentle caresses, then slide them underneath and feel for his sheath. Spike isn't hard at first, but with one hand cupping his furry balls and rolling them between your fingers and the other stroking up and down over the sheath and even slipping a finger inside, there's not long to wait before he can't help but grow erect. Wrapping your fingers around the canine's shaft, you let your other hand roam further up, feeling his chest and playing with the young man's nipples.";
		say "     Bent over him as you are, it isn't too hard to move your head next to his pointy ear and whisper into them that he seems to like being your obedient doggy after all, underlining the words with caresses and more stroking. 'Yes, [SpikePlayerAddress],' Spike pants out in a fairly submissive tone, with little of his earlier reluctance remaining now that you've gotten him aroused and more ready for actual fun. Pulling back, you glance at where his tail is just loosely hanging down now, easily tugged up and to the side, after which you give its base a pleasant little rub. With the target of your lust now in sight, your dick throbs as you imagine the tight chute around it. Spike's tail-star is a little pink thing, a wrinkled ring between his buttocks that shows almost no sign of the fact that you've rammed your cock into him before.";
		WaitLineBreak;
		say "     Knowing that he'll need the right prep-work to relax his hole, you go back to stroking the doberman's own cock some more, holding out your other hand to catch any pre he's leaking and even edging him so far as to get little spurts of pre before allowing him to cool down some more. Dipping two fingers into the small handful of slick fluid milked from your boy-toy, you brush your digits over his opening teasingly, circling around and around mixed with little almost-pushes. When you eventually slip him your middle finger, it is a sudden move, putting you knuckle deep before he can even realize that this isn't another feint at penetration. 'Nnnghh, fuck!' Spike groans as his hole tightens into a death-grip around your digit and you don't try to move it, just letting him get used to the feeling.";
		say "     To distract the anthro dobie from the momentary pain of his asshole being fingered, you use your thumb to massage his pucker from the outside some more and also stroke his cock, both of which work wonders in making Spike think of other things. This allows you to penetrate him with your index-finger as a surprise move, starting to stretch and open your bottom-boy. Thankfully, his body seems to remember being broken in by your erection, opening up to flex much more readily than the first time you took Spike. After adding some more spit and fingering his insides, you feel that he's ready for your cock. Spike inhales a gasping breath as you tell him this with a grin on your face, and he even remembers the line you taught him, calling out, 'Fuck me [SpikePlayerAddress], I- I need to feel you inside me.' Playfully slapping your erection onto his buttocks left and right, you line it up with the tempting, slickened hole between them, then start to push into your little dobie.";
		WaitLineBreak;
		say "     Spike's asshole is snug and tight, gripping you firmly from all sides without being too restrictive. You can't help but think that some effects of the nanites sure are fun as you sink your cock into him in a smooth move. Soon feeling your balls against his ass, you give a victorious grunt and grope his buttocks some more as you simply enjoy the sight of having the young man impaled on your cock all the way. After a little while of just resting inside him and letting Spike get used to being your cock-sleeve, you start pulling back, drawing more moans and pants from him as you slide against his inner walls, followed by another slow push inside. Working up to sawing your dick in and out of the young man, you slowly increase the tempo and are soon playfully timing your thrusts with his moans of pleasure, hammering into Spike as he is just breathing out and making him go light-headed as you drive the last remaining air from his lungs.";
		say "     Breathless, horny and oh so very ply-able, your dobie can properly be called a sex toy by now, pushed long past any hesitation or even intelligible speech. As such, you don't hesitate to become more extreme when the mood strikes you, for example pulling out completely to look at his stretched, somewhat reddening pucker gaping in apparent confusion, then slamming in balls deep just as it starts to pull closed again. With a whorish moan that would fit a needy bitch in heat, the dobie takes everything you can dish out and even raises his ass higher, presenting himself for deeper penetration. With all stops falling by the wayside, you use him as you see fit in a wild rush of hard fucking, stoking the fires of your lust ever higher. Then suddenly, there is an animalistic howl of pleasure as Spike starts to tremble and trash underneath you, his fuckhole clenching tight around your cock as his own knotted manhood starts to blast out sticky strings of cum.";
		WaitLineBreak;
		say "     With the music of Spike's moans in your ears and feeling the sudden vice-like tightness of his asshole, you're not far behind him in reaching your own climax. Forcefully thrusting into his innermost depths, you grind against the smooth fur of the dobie's buttocks as you blast into him hard, once more claiming the young man as your own by painting his insides white. Spike's inner muscles keep flexing while you both are coming, literally milking more seed out of you and prolonging the orgasm quite nicely. By the time your further spurts of cum eventually ebb off, the both of you are quite exhausted and you sink down to rest on your partner's back to rest for a little while, which makes his trembling arms buckle and lands the two of you sprawled on the ground, still connected by your erection and with your arms loosely wrapped around his chest. For a little while, you just lay there like that, breathing heavily to re-gain your breath and enjoying the afterglow.";
		say "     As the rush of sex is over and the last embers of lust die down, Spike soon starts to become a bit unruly, apparently feeling uncomfortable to be so closely entwined with a person that used him like you just did. He gingerly pushes off your arm from where it lays over his side, then slowly pulls his ass away from your hips, wincing as the girth of your softening cock slides out of his pucker. The young man reaches behind himself hesitantly, then feels around with a light touch, apparently checking the state of his well-bred hole. 'I'm still weirded out by this. Hurt like a bitch the first time, but now it's adapted to take dick or some shit like that,' he says with a wince, then gulps a little as he sees you nodding and giving an answering grin that promises more pounding in the future. You don't feel a need to comment any more than that, simply lying back in relaxation as you watch him get up slowly, then curse a little as he realizes that part of his load soaked into the jeans he was kneeling on. After watching him get dressed, you eventually rise from the ground yourself and prepare yourself for more adventures out in the city.";
		if Libido of Spike < 23:
			now Libido of Spike is 23; [repeated anal sex (nicely)]
	else if Libido of Spike > 40 and Libido of Spike < 60: [forced dobie]
		say "     Stepping right into the young doberman's comfort zone, you don't give him even a second to react, simply snatching him by the loose collar and using that convenient handhold to wrench him even closer. Spike lets out a somewhat choked gasp at suddenly being man-handled, his eyes wide in fear as your merciless gaze studies his face. A panicked look fills his eyes as you tell him harshly that it's about time that he puts out for sex. You've got little doubt that he'd whimper and beg for you not to do this, but as you're not in the mood for push-back from your bottom-boy bitch, you just clamp your fingers around his muzzle and keep it tightly shut so he can do little more than whine and huff through his nose. Gruffly telling him that he's yours and he'd do well to remember that, you then give the doberman a harsh shove that has him falling to the ground, barely catching himself from face-planting on it.";
		say "     With a merciless grin on your face, you pounce on him before he has got any chance to re-orient himself, pushing down on the middle of his back with your knee and pinning him to the ground while your hands reach for his jeans. Harshly wrenching on the pants to get them over the curve of his buttocks, they're shoved out of the way a second later, revealing the tight ass of your abused companion. An open-handed slap of his furry cheeks makes the young man thrash weakly against you in a futile attempt to free himself. 'God, that stings!' he groans against the ground, which you answer with another bit of spanking, telling him that you want him to stay in this position and keep down the whining. He remembers his place quickly after that, not wanting to prolong the pain and quietly saying, 'I - I'll be a good boy.' Testing his seeming submission, you lift your knee a little and are well satisfied in that the anthro stays as he is, ass raised high and presenting for fucking.";
		WaitLineBreak;
		say "     Moving behind the doberman, you quickly pull out your cock and slap the [Cock of Player] shaft left and right on his curving buttocks. Spike's tail is clenched between those, at least until you pull it up in a sharp tug, then use it as a handhold as you grind against his crack. Quiet grunts come from him as the tail-pulling pains Spike, not that you care a bit about that. Gathering a big glob of saliva, you spit at his hole and spread the fluid around with the tip of your erection a little, then line yourself up with his tight passage. The tension between the doberman and yourself rises as you plant your hands on his hips and take a tight grip, followed by a brutal thrust into his hole. As tight and clenched as he may be, the young man's pucker is no match against your steel-hard rod, plunging into him like a hot knife into butter. There just is no way he could keep quiet through this, and a hoarse scream leaves Spike's lips as you take his ass by force.";
		say "     Your unwilling sex-toy certainly has a sweet ass on him, tightly gripping the sides of your shaft as you bottom out inside him. He's almost too tight, far from having the more accommodating chute of a more experienced partner, but you're in no mood to take things slow. Slapping his buttocks once more and railing at him about relaxing his muscles, you thrust in and out in an unrelenting tempo. Grim amusement plays over your lips as you watch his skin clinging tightly to your cock on each pull out, followed by the next push inside that draws another gasp from your helpless partner. Forcing your boy-toy to better relax his muscles quickly unless he wants his ass torn up, Spike's doing a fairly nice job of it. Despite the harsh treatment and you just taking what pleasure you want from his gripping asshole, the stimulation of Spike's prostate isn't something the young man can deny.";
		WaitLineBreak;
		say "     Spike may whimper and groan as you force your dick into his hole again and again, yet somewhere in between, there's a shocked moan or two too and reaching beneath him, your questing fingers find that his canine cock has pushed out of its sheath. Squeezing his erection sharply, you laugh and comment that it can't be too bad if he's hard from being fucked, then demand for him to beg you for more sex. You do indeed get that, as Spike gasps out between groans, 'Fuck me! Take me [SpikePlayerAddress]! *Nnnnghhhh* Fuck my ass!' He most likely doesn't really mean it, but the power to make him say the words is quite arousing all of its own. Going back to harsh thrusts with your hands on his hips, you rail your little bitch-boy good, hammering into him faster and faster until you can barely contain your lust anymore. Then finally, you slam into him one last time and erupt into his depth, flooding the young man with your virile cum and once more claiming his ass as yours.";
		say "     You stay on top of Spike for long enough that your spurts of cum eventually ebb off and then cease, then wrench your shaft out of his hole with little regard to the sore state of his pucker. With the pained gurgle of the dobie in your ears, you eagerly take in your handiwork: His tail-star is far from the tight little button it once was, instead showing as a reddened ring that only slowly pulls closed again. Even as it does so, at some point the movement slows down and comes to a stop, leaving a tiny bit of a gape behind, just enough for the creamy white cum you bred him with to leak out. Even with the nanites to fix him up, it looks like you left a lasting mark on Spike, who just lies where you left him, exhausted and sore, while you grab your gear and get dressed again. Not really paying him too much attention while you get dressed, you see him look down in shame as he pulls his pants on a little while later, gingerly pulling it over his aching ass.";
		if Libido of Spike < 43:
			now Libido of Spike is 43; [repeated anal sex (nicely)]
	if Lust of Spike is 0:
		now Lust of Spike is 1;
	NPCSexAftermath Spike receives "AssFuck" from Player;

to say SpikeSex6: [player pussy fucked by Spike]
	if Libido of Spike is 0 or Libido of Spike is 100: [never done anything with Spike in subby position or told him he never will have to do so]
		say "     As you tell the young doberman that you want to feel his dick in your pussy, [if lust of Spike < 2]his eyebrows rise and Spike pants out, 'Really? But you're the boss and -umh,' He stops as he realizes that he's almost starting to talk himself out a fuck, snapping his muzzle shut and looking at you eagerly, with his tail wagging. [else]a grin spreads over Spike's muzzle. 'Oh yeah, want some of this dobie cock, don't you?' he starts to boast, then sees you raise your eyebrow at his antics and snaps his muzzle shut right quick, swallowing the next few words and just looking at you eagerly, with his tail wagging hard. [end if]You let it go with a chuckle and sink to a crouch in front of him, pulling down the zipper of his jeans. Rapidly pushing out of his sheath as it gets harder by the second, Spike's dickhead comes into view right away, as your canine companion is free-balling, ready as soon as his pants are open. Popping the button next, you wrench the jeans down to his knees in a quick pull, revealing the young man's furry crotch and swinging balls too.";
		say "     Spike pants audibly as you wrap your fingers around his hot shaft, one hand of his moving to rest on your shoulder and steady himself. You can feel the trembling of his hips from just how hard the anthro's tail is wagging and find yourself grinning almost without meaning to. It's certainly fun to have a very eager partner. Leaning forward and giving his tip a lick draws a pleased gasp from the doberman, followed by a huff as he forces himself to close his open muzzle and starts to breathe through his nose, trying so very hard not to show his youth and relative inexperience. Looking up at him and wiggling your eyebrows, you tell him that you're eager to see his manhood in action. [if lust of Spike < 2]'F-fuck yeah,' he says in a tone that betrays his boyish excitement. [else]'I'll give it to you good,' he says with a boastful grin. [end if]Chuckling, you plant a kiss on his dickhead, then sit back on the ground and start to peel off your gear and clothes.";
		WaitLineBreak;
		say "     Soon you're fully naked and leaning back, legs spread apart as you present yourself for the entranced doberman. Raising a hand to beckon him with a crooked finger, he kicks his pants off in a rush and pulls the mesh shirt over his head, flinging it aside as he sinks to his knees. Leaning forward and bracing himself on the ground with his forearms lightly brushing against your thighs, he takes a breath of the heady scent of your arousal. [if Lust of Spike < 2]'So, do I -' the young man starts to ask, only to be shut up when you pull his head down to your crotch, muzzle nudging the wet folds of your sex. He catches your meaning right away and starts to lap over your nether lips, making good use of his long, floppy tongue. [else]Lowering his muzzle to your crotch, he nudges the wet folds of your sex with his nose, then starts to lap over your nether lips, making good use of his long, floppy tongue. [end if][line break]";
		say "     Playfully running your hands through the shock of neon-green hair on top of Spike's head, you enjoy his oral service for a little while before patting the young man on both shoulders. Raising his head and licking the sides of his muzzle to slurp up the juices of your arousal, he grins eagerly and wags his tail even harder than before when you tell him to kiss you. Spike moves on top of you on all fours in a rush, his muzzle meeting your mouth in the start of an enthusiastic bout of tongue-wrestling as you make out in lustful abandon. But you want more than just kissing the eager boy-toy that is your companion, both of your hands moving down to take hold of his cock and balls. While switching over to close your lips around his tongue and suckling on it, you align his shaft with your pussy and lift your hips to brush against its tip.";
		WaitLineBreak;
		say "     The sensation of having your slick nether lips part before his pointy-tipped canine shaft is enough to set Spike off, with raw instinct taking over. In an instant, [if lust of Spike < 2]all of his inexperienced hesitation[else]any pretense at taking things slow[end if] is gone, with the athletic doberman letting out a dominant growl as he bucks into you hard, penetrating your sex with all of his erect length and making his furry balls slap against your crotch. It is fun to have such an energetic partner as him, as Spike doesn't hold still for a moment, lifting his lithe form up into a push-up position and humping you with powerful, grinding movements of his hips. The pre-knot bulge at the base of his shaft pops in and out of your sex again and again as he fucks you in an unwavering, rapid tempo. 'Feels great!' is one of the few intelligible things he grunts out in between the more animalistic sounds of his arousal. The natural urges to full a receptive pussy are certainly strong in your canine companion.";
		say "     Given the rapid-fire pounding Spike's handing out, your own reasoning mind isn't quite at its best either, so you mostly tremble and gasp under the young buck. Legs spread wide to allow him free access to your pussy, you reach for his hips with both hands and plan them on his buttocks, drawing the doberman even harder against your crotch as he thrusts in. The two of you get lost in the wild rush of bestial mating for you don't know how long, until his relentless stimulation eventually pushes the inferno of your libido beyond all bounds. With an ecstatic scream, you dig your fingers into his cheeks and clutch his hips to your body as you orgasm, [if Player is male]your own [Cock of Player] shaft throbbing hard as it erupts, splashing cum all over your chest and [end if]inner muscles twitching hard around Spike's red rocket. This bit of extra stimulation seems to have been just what the dobie himself needed, as he lets out a lewd growl, followed by you feeling his knot swelling up rapidly to lock your two bodies together.";
		WaitLineBreak;
		say "     Spike bucks against you hard as the first splash of his seed erupts into your depths, followed by another and another. A warm, pleasant feeling of fullness spreads through you as you feel the anthro canine breeding your womb with an impressively large load of virile cum, all of it ensured to stay within you until his erection eventually goes down. The two of you touch and fondle each other, sharing moans as you ride out your orgasms in a blissful haze. Exhausted by the long fuck-session, Spike's arms eventually buckle and he sinks down on top of you, his panting breath against the side of your neck. 'Wow, that was just amazing,' the young doberman gasps out while his cock still shoots a few more spurts of cum into your depths. Raising a hand to run it through his neon-green hair, you turn your head to kiss Spike on the muzzle, leading over into a comfortable, lazy bout of making out with him.";
		say "     After spending a little while entwined with Spike, his knot eventually goes down far enough that he can withdraw from your body. As the young man does so with gentle slowness, his bulge pops out of your vagina with a stretching sensation, followed by the rest of his red rocket, slick and white with some of his cum sticking to it. Running his thumb and two fingers over the shaft of his erection and then making sticky strings of semen stretch between them, Spike has a thoughful expression on his face for a moment. He shakes out of it and lets his eyes roam over your naked form, finally meeting your eyes and giving you a broad, happy grin. '[SpikePlayerAddress], joining your crew really is better than I ever imagined.' The two of you continue to talk a little about casual topics after that, before eventually cleaning yourselves up and getting dressed.";
	else if Libido of Spike > 0 and Libido of Spike < 20: [joyful dobie]
		say "     ...";
	else if Libido of Spike > 20 and Libido of Spike < 40: [dutiful dobie]
		say "     ...";
	else if Libido of Spike > 40 and Libido of Spike < 60: [forced dobie]
		say "     ...";
	if Lust of Spike is 1:
		now Lust of Spike is 2; [player pussy fucked by Spike]
	NPCSexAftermath Player receives "PussyFuck" from Spike;

to say SpikeSex7: [Spike fucks player ass]
	say "     A";
	NPCSexAftermath Player receives "AssFuck" from Spike;


to say SpikeSleepSexMenu:
	project the figure of Spike_naked_hard_icon;
	say "     What exactly do you want to do with Spike?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male and Libido of Spike is not 100: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Fuck his muzzle";
		now sortorder entry is 1;
		now description entry is "Use the dobie's mouth";
	[]
	if Player is female and Libido of Spike is not 100: [only females and herms can get eaten out]
		choose a blank row in table of fucking options;
		now title entry is "Grind against his muzzle";
		now sortorder entry is 2;
		now description entry is "Use the dobie's mouth";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Spike off";
	now sortorder entry is 3;
	now description entry is "Go down on your dobie";
	[]
	if AnalVirgin of Spike is false and player is male and Libido of Spike > 0 and Libido of Spike < 100:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Spike's ass";
		now sortorder entry is 4;
		now description entry is "Get your cock up the dobie's rear end";
	[]
	if Player is female and (Libido of Spike is 0 or Libido of Spike is 100):
		choose a blank row in table of fucking options;
		now title entry is "Ride Spike's dick";
		now sortorder entry is 5;
		now description entry is "Mount the dobie and impale your pussy on his shaft";
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
				if (nam is "Fuck his muzzle"):
					say "[SpikeSleepSex1]";
				else if (nam is "Grind against his muzzle"):
					say "[SpikeSleepSex2]";
				else if (nam is "Suck Spike off"):
					say "[SpikeSleepSex3]";
				else if (nam is "Fuck Spike's ass"):
					say "[SpikeSleepSex4]";
				else if (nam is "Ride Spike's dick"):
					say "[SpikeSleepSex5]";
				if PlayerFucked of Spike is false:
					now PlayerFucked of Spike is true;
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the young doberman, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SpikeSleepSex1:
	say "WIP";

to say SpikeSleepSex2:
	say "WIP";

to say SpikeSleepSex3:
	say "WIP";

to say SpikeSleepSex4:
	say "WIP";

to say SpikeSleepSex5:
	say "WIP";

Section 6 - NPC Interaction (Tehuantl)

instead of going up from Grey Abbey Library while (LastTehuantlSpikeScene - turns > 6 and Tehuantl is in Grey Abbey 2F and doberman companion is tamed and Energy of Spike < 2 and HP of Tehuantl > 49 and HP of Tehuantl < 100):
	move player to Grey Abbey 2F;
	if debugactive is 1:
		say "     DEBUG: Tehuantl/Spike Talk Walkin; Energy of Spike: [Energy of Spike][line break]";
	if Energy of Spike is 0: [first time]
		say "     While coming up the library stairs, your gaze is drawn to the spotted form of your jaguarman pet Tehuantl, sitting cross-legged on the ground in a corner of the upper floor, bent over his wooden shield. The piece of gear lies on the ground, the painted side down, and its surface shining in the rich brown of some tropical hardwood. Holding a bottle of olive oil in his paw, the anthro jaguar pours a little of its content carefully on the wood, then rubs it in with a rag, already pretty soaked in oil. You feel almost entranced as you watch the warrior maintain his tool. His determined, circling movements, intent on leaving no spot on the shield uncoated, and keeping the wood supple and strong, have you thinking: albeit he agreed to become your 'war-slave' and pet, Tehuantl remains a proud, dutiful, and dependable man.";
		say "     Realizing that you stopped moving to watch him, you shake out of it and move on, climbing the last few stairs to the second floor. You direct your steps to the row of windows overlooking the street next, taking the time to glance up and down the road and across it, following the T-intersection to look at the stores further west. Everything seems quiet for the moment, with only the scattered shreds of clothing on the road and a burned-out car to remind you that the nanite apocalypse is going on right now. 'So, uhm... hello there. I'm Spike,' you hear your dobie companion say a little distance away, and as you look around you see that he's addressing Tehuantl. The jaguarman calmly finishes another stroke of the oily cloth over his shield, making sure he creates a nice and even sheen before he sets it down against the wall and stands up. Green, feline eyes wander over the dobie as he takes in Spike from head to toe next, the slow waving of his tail from side to side [if MaxHP of Spike is 1]leading over into it stiffening at attention when Tehuantl's nostrils flare a little[else]betraying his interest[end if].";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Watch how this will go.";
		say "     ([link]N[as]n[end link]) - Turn your attention to other matters.";
		if Player consents:
			LineBreak;
			WaitLineBreak;
			say "     Tehuantl's tail-tip bends a little as he apparently comes to a decision and a little smile spreads over his muzzle. In a purring voice and with his exotic Aztec accent, he says, 'My name is Tehuantl, young warrior.' Letting out a breath that he didn't quite realize he held, Spike offers the other man a hand, his tail starting a careful wag behind his back. The jaguar warrior immediately moves to grab his forearm, giving it a firm squeeze that Spike returns in kind as he catches up with the foreign gesture of greeting. Looking at the two of them from where you're standing at the window, you see that Spike is just a little bit taller than the other man, especially with the sharp wedges of his upright ears and the shock of neon-green hair on his head. At the same time, he's somewhat less muscular too, and you can see a definite difference in their posture.";
			say "     While the dobie and jaguar both look young and fit with an apparent similar physical age, it is immediately apparent that Tehuantl is much more experienced and self-reliant. He holds Spike in their forearm handshake [if MaxHP of Spike is 1]for a few seconds more[else]for a fleeting moment[end if], then releases the grip with a little nod to the young canine, as if prompting him to speak. 'I - er, was wondering about you. You know, I'm the right-hand man of the boss and all. How do you fit into the organization, and all that?' Spike says to Tehuantl, steeling his voice after a little bit of a rocky start and squaring his shoulders. There is a [if MaxHP of Spike is 1]hint of a chuckle[else]pitying snort[end if] from the jaguar warrior at Spike's attempt of posturing, quickly suppressed as Tehuantl replies in a dignified tone, 'The [master] took me as their war-slave in combat. As such, I now serve [ObjectPro of Player] in any way [SubjectPro of Player] desires. Anything, from protecting this place, to warming [PosAdj of Player] bed.'";
			WaitLineBreak;
			say "     'Isn't that kinda weird? I mean, you still got that funky sword and shield of yours, and claws and teeth and shit? That's quite an armament for a slave, isn't it?' Spike asks in genuine puzzlement, in reaction to which the jaguar [if MaxHP of Spike is 1]warrior's expression falls, with him quickly suppressing a frown. His tail twitches back and forth in agitation despite this, and he bites off saying something for a few seconds before he explains, [else]warrior's ears pull back and his tail twitches in agitation. Tehuantl calms himself, yet you can still hear in his voice that he's offended. [end if]'Honor demands that I serve! Without it, men are just beasts! Should we have continued to fight until there is a sea of blood like in the battle of Otumba instead?' Hastily, Spike raises his hands in a pacifying gesture and interjects, 'Wow, wow! Calm down. I didn't mean to say that it's bad or anything. Or that you're weird, you know. You kinda seem like a cool dude to be honest.' Taking a deep breath and slowly letting it out, Tehuantl relents and nods to him. 'I accept your apology, young [if MaxHP of Spike is 1]pup[else]warrior[end if]. And I see what must be done now.'";
			say "     Raising a hand and placing it on Spike's upper arm, the anthro jaguar gives him a squeeze, as if testing his muscle tone. 'This too, I am prepared to do for my [master]. Come, we have work to do.' Surprise is written in large letters on Spike's face, and he stutters out, 'Er, what?!' Already on the way to pick up his shield, Tehuantl says over his shoulder, 'Training, of course! If you're to be [if MaxHP of Spike is 1]your [parent]'s [else][PosAdj of Player][end if]right hand, you need strength, cunning, and wisdom. I will instruct you appropriately. Come with me now.' As Spike takes the first somewhat halting steps to follow him, he asks, [if MaxHP of Spike is 1]'Wait, why do I have to listen to you? Shouldn't you just obey me, being [PosAdj of Player] slave and all?'[else]'I'm my own man! Why should I even listen to someone who is just a slave?'[end if] A chuckle rolls up the jaguar's throat, 'You'll learn soon enough, boy. War-slaves aren't passive chattel, like others may be.' And with that, he guides Spike down the stairs, soon vanishing from sight.";
		else:
			say "     [if MaxHP of Spike is 1]You smile to yourself and tune the two of them out, safe in the knowledge that Tehuantl will treat your son right[else]You tune the two of them out and turn your attention elsewhere[end if]. A few minutes later, you catch a glimpse from the corner of your eye, Tehuantl leading Spike downstairs and both of them vanishing from sight.";
		now Energy of Spike is 1; [training started]
	else if Energy of Spike is 1: [training walkin]
		say "     Coming up the library stairs, you hear someone counting up loudly, '...forty-two, forty-three, forty-four, ...' Curious, you stroll over in that direction, soon finding an open area behind a number of bookshelves, where an exercise mat has been rolled out on the ground. On it is Spike, stripped down to nothing but his fur as he is doing sit-ups, with Tehuantl holding onto his ankles to help him. The jaguar warrior proudly counts up his companion's repetitions, or maybe he's directing them rather, as you notice that Tehuantl says the words just before Spike flexes. Not wanting to interrupt them, you do stay halfway out of sight behind a bookshelf for now, simply watching as the anthro feline soon counts up to fifty and gives a pleased churr. Panting visibly, Spike flops back on the mat and looks up at his taskmaster, 'Phew, what a workout! Um - that was it right? Or do I have to jog round the block again next?'";
		LineBreak;
		increase the XP of doberman companion by level of doberman companion times four;
		say "     [bold type]Spike has gained [level of doberman companion times four] XP![roman type][line break]";
		LineBreak;
		say "     'Calm yourself, young [if MaxHP of Spike is 1]pup[else]warrior[end if]. You did well,' Tehuantl replies with a smile on his muzzle and letting out what can only be called a purr, then moves up to crouch beside Spike from where he had been kneeling up till then. 'Be proud, son of [if MaxHP of Spike is 1 and player is not defaultnamed][Name of Player][else]Alexandra[end if]. You have high dreams and ambitions, but I believe you can achieve them. Your readiness to work for that goal it speaks for you. As is the wisdom of following 'just a slave's instruction.' By now recuperated a little, the young dobie pushes himself up on his elbows and meets Tehuantl's gaze. 'Yeah, sure. Isn't that how things are supposed to go? You being an elite warrior war-slave and all?!' The purr intensifies and Tehuantl leans forward and takes a breath of Spike's somewhat sweaty, masculine scent, then licks the tip of his muzzle. 'Good. You're learning wisdom as well. Which is why I'll give you a reward.' With that, he lowers a hand to lie on Spike's abs, then strokes it down to cup his sheath. 'Oh? Oooh! You mean you want to... mmmhhh!' your dobie companion starts to say, only to moan instead as his balls are fondled.";
		LineBreak;
		say "     Already half-leaning over Spike as he works his sheath, it looks like Tehuantl is planning to give him a blowjob. [bold type]Do you want to intervene? The jaguar is your pet after all...[roman type][line break]";
		LineBreak;
		say "     [link](1)[as]1[end link] - Let them have their fun and bond. It'll be good for both of them.";
		say "     [link](2)[as]2[end link] - Leave them to their fun and walk away.";
		say "     [link](3)[as]3[end link] - Step out from behind the shelf and split them up.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to let them do it and watch, [link]2[end link] to leave or [link]3[end link] to split them up.";
		if calcnumber is 1:
			LineBreak;
			say "     A smile crosses your face at the clear affection of Tehuantl for his student, and Spike's innocently-natured reaction. Then you notice a slight up-tick of the jaguar warrior's head, making his gaze cross your location and followed by a respectful dip of his muzzle. Seems that at least one of them knows you're here and watching, and apparently [if MaxHP of Spike is 1]he sees taking care of all your son's needs and desires[else]he sees giving a show[end if] as just another duty of a war-slave. With a purr, he leans down and starts to lick the shaft slowly emerging from your dobie's sheath, making Spike pant in arousal. 'Man! That's nice! Really nice! God, where did you learn to do that with your tongue!' Soon, he's fully hard and erect, his red rocket standing straight out from his crotch, allowing Tehuantl to lick up and down along its length while wrapping a hand around the small bulge at the base, massaging what will soon become a hard knot.";
			say "     'Warriors on campaign spend long days away from any comfort of home. They should be well-prepared to take care of one another and share pleasure. Mictlantecuhtli stalks us always, and better it be in his domain of health and virility that death, eh?' 'Yeah, sure. You're right,' Spike replies in a pant, not really listening as he is focused on the pleasure the jaguar warrior is giving him. Tehuantl doesn't mind, instead moving on to bob his head up and down on his trainee's shaft, sucking and slurping at it with eager attention. He cradles Spike's balls with his free hand, rolling them gently between his fingers while tightly holding on to the dobie's cock. Given such skillful stimulation, the anthro canine is pushed to higher and higher arousal in short notice, and before long, his knot starts to swell, forcing the fingers wrapped around it further apart with each beat of the young man's heart.";
			WaitLineBreak;
			say "     Keeping him in a tight grip to give Spike the sensation of being balls-deep in someone, Tehuantl sinks his muzzle over the pointy shaft, enveloping it fully and dancing his tongue along the hard length. 'I'm gonna cuuuummmmMMMMMM!' Spike howls out suddenly, bucking up as he passes the point of no return, his cock erupting with a heavy load of canine cum that splashes the back of the jaguar's throat, to be eagerly swallowed. [if PlayerFucked of Spike is false and MaxHP of Spike is 1]You can't help but feel pride at your son's first time with your spotted sex toy, feeding the feline his load like he's doing right now. [else if MaxHP of Spike is 1]Seeing your son come down Tehuantl's throat gives you a tingle of arousal, and you move a hand to your crotch, rubbing it. [else]Seeing your dobie boytoy come down Tehuantl's throat gives you a tingle of arousal, and you move a hand to your crotch, rubbing it. [end if]Tehuantl keeps his student's erection in his muzzle for a long while, only bobbing up and down a little and breathing through his nose as he catches every last spurt of Spike's seed. Only when the dobie's orgasm eventually ebbs does he pull back, raising his head from where it was bent over Spike's crotch.";
			say "     Tehuantl licks his muzzle and smiles down at the panting canine, then pats him proudly on the chest. 'The god smiles upon you, clearly. That was a rich, tasty load.' 'Okay, if you say so,' Spike replies a bit weakly, still out of breath from just having come. He lies there on his back, grinning broadly and rolling his head around a little bit. Then he suddenly lifts his head to look at the jaguar and says, 'Wait a moment. Did you say that we have to please 'each other' earlier? Does that mean I got to...' Tehuantl smiles and holds him back from sitting up with his hand, then replies with a chuckle, 'Relax[if MaxHP of Spike is 1]pup. [else]. [end if]All in its own time. And only if you wish so. For now, rest. You did good in your workout.' And with that, the anthro jaguar gets up and walks away, just past where you are standing and giving you a deep nod of his head as he walks by.";
			now Energy of Spike is 2; [they got their BJ, player watched]
		else if calcnumber is 2:
			say "     A smile crosses your face at the clear affection of Tehuantl for his student, and Spike's innocently-natured reaction. You're about to turn away from the two of them as you notice a slight up-tick of the jaguar warrior's head, making his gaze cross your location and followed by a respectful dip of his muzzle. Then he opens it and leans down, starting to lick your [if PlayerFucked of Spike is false and MaxHP of Spike is 1]son. [else if MaxHP of Spike is 1]studly son. [else if PlayerFucked of Spike is true]dobie boytoy. [else]dobie. [end if] With a chuckle, you walk off.";
			now Energy of Spike is 3; [they got their BJ, player didn't watch]
		else:[no BJ for Spike]
			LineBreak;
			say "     You decide that Spike's gotten enough of a workout for today and step closer, sharply calling Tehuantl's name. Whipping around instantly, the anthro cat gasps out the word 'Tlacahua,' falling back to his natural Nahuatl word for master in his surprise. He wilts a little as you look at him expectantly, glancing over to Spike and back at you, 'I was just instructing your [if MaxHP of Spike is 1]pup[else]young warrior[end if], and... gods! Let my desire to see him excel and reward him for his gains lead me astray, [Master]. Frivously wanting to indulge with him and not taking keeping guard on the street outside! Forgive me, I won't let this happen again!' With that, the muscular jaguar jumps up to his feet and rushes away hastily, wanting to take an overlook post at the windows. This leaves you and the dobie behind, with Spike letting himself drop flat on the exercise mat.";
			say "     'Uhm, hi [SpikePlayerAddress]. I was just, you know, training with him,' the young man pants out a moment later, moving his hands to cover where his shaft has halfway slid out of its sheath. Then come the words, 'He's only helping me a little, to be a better right-hand man for you. I... should go too. Freshen up a bit.' The last bit is said after he sniffs himself, no doubt remembering Tehuantl's attraction to the good, honest sweat he worked up. And true to his words, Spike quickly rolls the mat up and is hurrying away just moments later.";
			LineBreak;
			say "     After giving the two of them what amounts to a bucket of ice-water just as they started having fun, you don't think you'll have to worry about Tehuantl and Spike getting frisky again anytime soon...";
			now Energy of Spike is 100; [stopped things cold]
	else if Energy of Spike is 2 or Energy of Spike is 3: [training walkin 2]
		say "     As you start going up the library stairs, you hear some loud grunts and a bark or two coming from upstairs. Curious what is going on, you take the steps two at a time, rushing to follow the sounds to an open area behind a number of bookshelves, where an exercise mat has been rolled out on the ground. On it are Spike and Tehuantl, naked down to their fur, and... the dobie is fucking your jaguar warrior?! Then you look closer and see that while Spike's on top of Tehuantl, one arm wrapped around his chest from behind, the other clamped down on the back of the anthro jaguar's right forearm and pinning it to the ground, there's no humping going on. They're wrestling! Both of them groan and grunt as muscles are flexed and tensed as the spotted feline strains against the grip of his opponent. 'Got you this time,' Spike gasps out breathlessly, after which Tehuantl appears to give in, relaxing his pinned arm and even tapping the mat once.";
		say "     A lightning-quick follow-up betrays Tehuantl's move as a ruse, as he swings the one free arm he has up, hooks Spike's head with his hand and gives a sharp pull sideways, rolling both of them over that way. 'Waaahh!' the dobie groans as his sure-thought victory is taken from him, the sudden reversal of up and down leaving him confused for a moment. This is long enough for the trained jaguar warrior to capitalize greatly on it, wrenching his other arm free and twisting his own body like an oiled snake. Somehow, he ends up sideways on Spike, his hips and midriff in contact with the young canine's chest, one leg pinning Spike's left arm, the right arm clamped down in an iron grip. 'Never relax your attention on the enemy unless you're absolutely certain you've won,' the spotted male advises sage-like while his student struggles afterwards, futilely tensing his arms, then trying to kick with his legs and raising into a bridge - which doesn't work, with Tehuantl lying on top of him.";
		WaitLineBreak;
		say "     Finally, the young man lets out a long groan, letting his head sink back on the mat. 'I give up, you win. Again!' A warm chuckle escapes Tehuantl's throat, but the jaguar doesn't let up before Spike has thumped one of his paws on the ground three times. Only then does he let go of Spike's arms, rising up on all fours and taking his muscled weight off the young man. Straightening his upper body, the jaguar then sits back on his haunches, looking down at his student. 'Do not despair, son of [if MaxHP of Spike is 1 and player is not defaultnamed][Name of Player][else]Alexandra[end if]. You almost [italic type]did[roman type] have me. If you just had angled this to brace against the roll -' he taps the dobie's knee, then gives his thigh a little squeeze, 'I could not have escaped your grasp.' Groaning and rolling his eyes, Spike takes a deep breath, then says with a laugh, 'Gah, now you tell me! If I wasn't totally beat, I'd ask for a rematch!'";
		LineBreak;
		increase the XP of doberman companion by level of doberman companion times four;
		say "     [bold type]Spike has gained [level of doberman companion times four] XP![roman type][line break]";
		LineBreak;
		say "     'In time we will do that, [if MaxHP of Spike is 1]pup[else]young warrior[end if]. Though right now there is another hindrance for that too,' the muscled feline tells his student, then reaches down to wrap his fingers around the red rocket of Spike's cock, fully erect as it is right now. 'Fuck!' Spike calls out in surprise and sits up in a jerk, wide-open eyes staring down at his manhood, then meeting Tehuantl's gaze. '[if Libido of Spike < 2]I'm no fag! why the hell is -[else]I'm not - er, I mean, I didn't plan on -[end if]' he starts to say, only to be shushed by the jaguarman. 'It's perfectly natural. Rubbing against each other, with our blood pumping. I told you that warriors bond, this is just another part of it.' As he says this, Tehuantl starts to stroke his canine companion. Tensing momentarily as he tries to decide if he needs to push the other man off to prove his masculinity, Spike is quickly won over by the pleasure he is getting and pants out, 'Fine then, keep going!'";
		LineBreak;
		say "     Looks like Spike's in for some fun. [bold type]Do you want to intervene? The jaguar is your pet after all...[roman type][line break]";
		LineBreak;
		say "     [link](1)[as]1[end link] - Let them have their fun and bond. It'll be good for both of them.";
		say "     [link](2)[as]2[end link] - Leave them to their fun and walk away.";
		say "     [link](3)[as]3[end link] - Step out from behind the shelf and split them up.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to let them do it and watch, [link]2[end link] to leave or [link]3[end link] to split them up.";
		if calcnumber is 1:
			LineBreak;
			say "     A smile crosses your face at the clear affection of Tehuantl for his student, and Spike's innocently-natured reaction. Then you notice a slight up-tick of the jaguar warrior's head, making his gaze cross your location and followed by a respectful dip of his muzzle. Seems that at least one of them knows you're here and watching, and apparently [if MaxHP of Spike is 1]he sees taking care of all your son's needs and desires[else]he sees giving a show[end if] as just another duty of a war-slave. He purrs as he strokes Spike's erection and moves his other hand to touch the young dobie's chest, running it down his front. Panting and bracing his upper body with both hands on the ground behind his back, the canine enjoys his trainer's caresses, most of the time staring into space or having his eyes closed.";
			say "     At some point though, he does throw a look to the side, taking in Tehuantl in his naked glory, including the jaguar warrior's own erect cock. 'Oh!' Spike says, staring at the other man's shaft almost spellbound for a little while before his right hand finally moves to slowly reach for it. As he takes hold of the Aztec warrior's shaft, the feline's purr intensifies greatly. When Spike actually starts stroking, Tehuantl leans in to him and licks the side of his neck, keeping up nuzzling the young man as they caress each other. The spotted male's other hand shifts down to join the first, now cupping his partner's balls as well as holding his red rocked in a tight grip. 'That feels nice,' Spike pants, moving his head a little to rub his muzzle against the side of the jaguar's furry head. In response, Tehuantl rolls his student's balls gently between his fingers while intensifying the stroking movements of his other hand.";
			WaitLineBreak;
			say "     Given the skillful stimulation, the anthro canine is pushed to higher and higher arousal in short notice, and before long, his knot starts to swell, forcing the fingers wrapped around it further apart with each beat of the young man's heart. Keeping him in a tight grip to give Spike the sensation of being balls-deep in someone, Tehuantl shifts his other hand to the top of the dobie's length, jerking up and down and rubbing the head. 'I'm gonna cuuuummmmMMMMMM!' Spike howls out suddenly, hips bucking up reflexively as he passes the point of no return, his cock erupting with a heavy load of canine cum that splashes down all over the mat they've been training on. [if PlayerFucked of Spike is false and MaxHP of Spike is 1]You can't help but feel a little bit of pride at your son's virility, with the first shot flying about four feet. [else if MaxHP of Spike is 1]Seeing your son come gives you a tingle of arousal, and you move a hand to your crotch, rubbing it. [else]Seeing your dobie boytoy come gives you a tingle of arousal, and you move a hand to your crotch, rubbing it. [end if][line break]";
			say "     As Spike's hand movements ebbed off when his own orgasm hit, Tehuantl gently slips his own fingers underneath the doberman's, taking over the gripping position around his erection. He proceeds to jerk himself off in a rapid pace, really going at it to push himself and quickly barreling towards a purr-heavy orgasm. With a lusty growl, the jaguarman's cock throbs hard and blasts out a spurt of cum that hits Spike's side, creating a white streak on his black fur. More and more of his rich seed follows, making a bit of a mess of [if MaxHP of Spike is 1]your boy's[else]your dobie companion's[end if] coat. It takes a few moments until Spike's high ebbs off far enough that he realizes what just happened, but eventually the anthro canine looks down and groans. 'Man, did you have to slime me up like that? Now I'm all sticky and washing with cold water is a bitch!'";
			WaitLineBreak;
			say "     'You won't need to clean yourself that way, [if MaxHP of Spike is 1]pup[else]young warrior[end if],' Tehuantl says in a smoothly delivered purr, then scoots back a little, lowering his head. The next thing that he does is demonstrate the typical feline way of washing someone, as he starts to lick his own cum off Spike's fur, tracing over the young man's side with broad strokes. 'Oh, I-' Spike starts to say, moving his arm out of the way to allow the other man better access and then kinda running out of ideas what to say, now that he's being cat-washed. Meanwhile, Tehuantl seems to enjoy his self-appointed task quite a bit, and you can see that he pauses a few times between licks, simply keeping his nose buried in Spike's fur and breathing in the masculine, somewhat sweaty aroma of the young man. He keeps lapping at the dobie for a little while before sitting up again and declaring him all clean.";
			say "     'Phew, that was... something,' Spike says, rubbing the back of his neck and looking in the air for a second, as if worried to meet Tehuantl's gaze. '[if Libido of Spike < 2 or Libido of Spike > 40]Listen, I'm not really into guys, so don't get any ideas. As you said, it was just because of the touching and stuff. Alright?' [else]Listen, I'm more of a pussy-hound really. Well, mostly anyways, so don't expect something like this all the time. Alright?' [end if]Tehuantl gives a shrug after licking his muzzle, and replies, 'In my experience, one should never limit themselves to just one thing. There is much to be missed that way.' Then he smiles at the canine and pats him gently on the chest. 'You did good today, boy. I'm proud to be your teacher and look forward to taking this up another day.' 'Thanks,' Spike replies a bit weakly, not quite knowing how to deal with the praise. Having said what he wanted, the anthro jaguar gets up a moment later and walks away, just past where you are standing and giving you a deep nod of his head as he walks by.";
			now Energy of Spike is 4; [shared jerking, player watched]
		else if calcnumber is 2:
			say "     A smile crosses your face at the clear affection of Tehuantl for his student, and Spike's innocently-natured reaction. You're about to turn away from the two of them as you notice a slight up-tick of the jaguar warrior's head, making his gaze cross your location and followed by a respectful dip of his muzzle. Then turns his attention fully back to Spike, jerking your [if PlayerFucked of Spike is false and MaxHP of Spike is 1]son. [else if MaxHP of Spike is 1]studly son. [else if PlayerFucked of Spike is true]dobie boytoy. [else]dobie. [end if]As you are about to turn, you see that the jaguar is erect as well and idly wonder if he'll get some action himself this time. Then you shrug and walk off with a chuckle.";
			now Energy of Spike is 5; [shared jerking, player didn't watch]
		else:[no BJ for Spike]
			LineBreak;
			say "     You decide that Spike's gotten enough of a workout for today and step closer, sharply calling Tehuantl's name. Whipping around instantly, the anthro cat gasps out the word 'Tlacahua,' falling back to his natural Nahuatl word for master in his surprise. He wilts a little as you look at him expectantly, glancing over to Spike and back at you, 'I was just instructing your [if MaxHP of Spike is 1]pup[else]young warrior[end if], and... gods! Let my desire to see him excel and reward him for his gains lead me astray, [Master]. Frivously wanting to indulge with him and not taking keeping guard on the street outside! Forgive me, I won't let this happen again!' With that, the muscular jaguar jumps up to his feet and rushes away hastily, wanting to take an overlook post at the windows. This leaves you and the dobie behind, with Spike letting himself drop flat on the exercise mat.";
			say "     'Uhm, hi [SpikePlayerAddress]. I was just, you know, training with him,' the young man pants out a moment later, moving his hands to cover his erection. Then come the words, 'He's only helping me a little, to be a better right-hand man for you. I... should go too. Freshen up a bit.' The last bit is said after he sniffs himself, no doubt remembering Tehuantl's attraction to the good, honest sweat he worked up. And true to his words, Spike quickly rolls the mat up and is hurrying away just moments later.";
			LineBreak;
			say "     After giving the two of them what amounts to a bucket of ice-water just as they started having fun, you don't think you'll have to worry about Tehuantl and Spike getting frisky again anytime soon...";
			now Energy of Spike is 100; [stopped things cold]
	now LastTehuantlSpikeScene is turns;

instead of going up from Grey Abbey Library while (Tehuantl is in Grey Abbey 2F and Energy of Spike > 3 and Energy of Spike < 100 and HP of Tehuantl > 49 and HP of Tehuantl < 100):
	move player to Grey Abbey 2F;
	say "     As you walk up the stairs of the library, you're greeted by the sight of Tehuantl standing at one of the windows, dutifully keeping watch. His gaze sweeps over the street outside, left and right, before he glances into the interior of the building a little while later and sees you. As your eyes meet, the jaguar's tail twitches and he starts walking over, clearly having something on his mind that he needs to talk to you about. Kneeling before you, he says, 'Tlacahua,' falling back to his natural Nahuatl word for master. 'I humbly beg your guidance. As you know, I have been instructing your [if MaxHP of Spike is 1]offspring[else]canine follower[end if], teaching him the arts of war. Part of that is bonding with your fellow warriors, but recently I fear I strayed beyond what I should. In the throes of lust, I dirtied his fur with my seed, then licked him clean. As his scent filled my nose I admit I felt the desire to serve him as I do you. Physically, not just as a warrior-slave.'";
	LineBreak;
	say "     [bold type]How do you react to the jaguar's admission?[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - Be a generous master and free him to offer his sexual favors to Spike too.";
	say "     [link](2)[as]2[end link] - He can keep training Spike, but shouldn't go beyond oral sex in their 'bonding'.";
	say "     [link](3)[as]3[end link] - His furry ass is yours. No more of this impertinence!";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to let Spike fuck Tehuantl, [link]2[end link] to restrict their interactions to oral at max or [link]3[end link] to split them up.";
	if calcnumber is 1:
		LineBreak;
		say "     Reaching out to stroke over the soft fur of your feline companion, you caress his side before moving on to grope his ass with a grin on your face. Then you clear your throat and add that he's been a dutiful servant ever since the museum, and you do not see any problem with him getting closer with Spike. [if MaxHP of Spike is 1]Your son[else]The boy[end if] has more needs than just training his body, so why not expand Tehuantl's duties in this way. 'Thank you, [master]. I will serve him as I do you,' comes the jaguar warrior's reply, delivered with a purr and with him leaning in to nuzzle your cheek.";
		now Energy of Spike is 6; [ready for more sexy fun]
	else if calcnumber is 2:
		LineBreak;
		say "     Reaching out to lay a hand on the shoulder of your feline companion, you give it a squeeze. Then you clear your throat and add that he's been a dutiful servant ever since the museum, and you do not see any problem with him training Spike, but his sexual favors shouldn't be extended to [if MaxHP of Spike is 1]your son[else]the boy[end if]. Nothing beyond what they've already done, at least. 'I see, [master]. I hear you and will obey,' comes the jaguar warrior's reply, delivered with him coming to attention, then returning to the window to keep lookout.";
		now Energy of Spike is 50; [no sex, just oral from now on]
	else if calcnumber is 3:
		LineBreak;
		say "     Putting on a serious expression, you grab the jaguarman by the scruff of his neck and bend his head back, pointedly staring into his eyes. In no uncertain terms, you tell the spotted feline that he's [bold type]yours[roman type] and should quickly put any such thoughts out of his mind. After wrapping up your growled instructions, you shove the man back, almost sending him sprawling on the ground. 'Yes, [master]. I will keep my distance from now on,' Tehuantl replies as he catches himself, then slinks back to the window, taking up a guarding position once more.";
		now Energy of Spike is 100; [stopped things cold]

[
after navigating Grey Abbey Library while (LastTehuantlSpikeScene - turns > 6 and Tehuantl is in Grey Abbey 2F and Spike is in Sitting Area and Energy of Spike > 0 and Energy of Spike < 4 and HP of Tehuantl > 49 and HP of Tehuantl < 100):
	say "     You arrive at the library and climb the steps to the front door, then slip inside, happy to have made it back to your refuge. Yet almost as soon as the door swings shut behind you, fighting noises reach your ears, coming from somewhere upstairs. Concerned about the people you've brought here, you quickly rush up the stairs, almost stumbling once or twice as you jump over a few of them in your haste. What awaits you upstairs is a fight, but surely not what you expected it to be: One of the two opponents is Tehuantl, carrying nothing but his shield and using it to deflect blows rained onto him by Spike, and with a mop of all things. 'Faster! Try to switch up your moves, some low, some high!' the jaguar warrior calls out to the young dobie with a grin on his muzzle, then easily parries another swipe of the improvised weapon. ";
]

Section 7 - NPC Interaction (Urik, controlled)

after going to Sitting Area while (Urik is in Sitting Area and Spike is in Sitting Area and PlayerControlled of Urik is true and Stamina of Spike is 0):
	if debugactive is 1:
		say "     DEBUG: Spike MEETS URIK - Stamina of Spike: [Stamina of Spike][line break]";
	try looking;
	say "     Walking along the upper floor of the library, you see Urik ahead of you, leaning against one of the walls and appearing a little bored. 'Hey boss,' he says, giving you a nod as he notices your presence. Just a short moment later, Spike appears from the back of the room where he's made his camp, attempting to walk past the orc. 'So, you keep a dobie, eh?' Urik comments, holding out a thick arm to block the way for your companion. 'Had a few of such puppies during hunting trips in the city. Tight little fuckers, and they're cute when they wag their tails as you thrust in! This one'll be a nice bedwarmer too - come on, let me break him in for you!' Before you can react, the orc warrior is already reaching out to grab Spike, only to find himself snatching at empty air, with the lithe dobie having ducked from his grasp and jumped to the side. With a kick at the side of the orc's knee, he makes the much larger male stumble and call out, 'Stupid little mutt! I'll show you how to behave!";
	say "[SpikeMeetsUrik_Control]";

after going to Sitting Area while (Urik is in Sitting Area and doberman companion is listed in companionList of Player and PlayerControlled of Urik is true and Stamina of Spike is 0):
	if debugactive is 1:
		say "     DEBUG: Spike MEETS URIK - Stamina of Spike: [Stamina of Spike][line break]";
	try looking;
	say "     Walking along the upper floor of the library, you come up to Urik, who's standing at the railing overlooking the lower floor of the library, appearing a little bored. As you come near, the large orc stands up straight and nods to you. 'Hey boss,' he says, then glances past you and a smile starts to spread across his face. 'Got a new pet, eh? Had a few dobies during hunting trips in the city. Tight little fuckers, and they're cute when they wag their tails as you thrust in! This one'll be a nice bedwarmer too - come on, let me break him in for you!' Before you can react, the orc warrior is already reaching out to grab Spike, only to find himself snatching at empty air, with the lithe dobie having ducked from his grasp and jumped to the side. With a kick at the back of the orc's knee, he makes the much larger male stumble and call out, 'Stupid little mutt! I'll show you how to behave!";
	say "[SpikeMeetsUrik_Control]";

to say SpikeMeetsUrik_Control:
	say "     'A little help, [SpikePlayerAddress]?' the doberman shouts, seeing himself confronted with the towering orc snarling at him and cracking his knuckles in preparation of a beatdown. To prevent the situation from escalating any further, you put two fingers in your mouth and give them a sharp whistle that draws all attention to you. Clearing your throat, you introduce them to each other, explaining that Urik is an orc warrior you won for use as your personal breeder. Meanwhile, you accepted Spike as your companion to help you out during your travels through the city, which you stress to Urik means that he can't just grab and pound him. 'So, more than a fuckpuppy then, eh?' Urik huffs, clearly disappointed that he can't just establish dominance as he would have if Spike was another slave. Looking the anthro canine up and down, he snorts. 'He might be quick, but that won't help much if someone gets a grip on him. Hear that boy? You need some more strength in the arms!'";
	WaitLineBreak;
	say "     Proudly demonstrating what he means by flexing a bicep thicker than Spike's thigh, Urik grins down at the young dobie. 'This is what a proper man looks like! But if the boss is dead set on dragging you along, we'll have to bulk you up. You brave enough to try, puppy?' Looking at the orc, you notice him smirking a little as he goads Spike like this. 'Hey!' Spike replies, 'I'm plenty strong. Just not maybe quite as big as you. And I'm brave enough for anything!' Stepping up, Urik grins down at him, then holds out his bear-paw of a hand. 'Fine then, you're gonna join me for some strength training every day! Or are you gonna wimp out after all?'";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Let them shake on it. Gaining some strength will do Spike good.";
	say "     ([link]N[as]n[end link]) - Command Urik to stop it. Enough of his teasing, he's here as your breeder after all.";
	if Player consents:
		LineBreak;
		say "     You stand back and simply watch as Spike shakes Urik's hand, sealing the deal between the two men. 'Not as stupid as you look, hah!' the orc says with a grin, placing a hand on the doberman's shoulder and pulling him closer. 'Gonna work your puppy over till he's a proper man, boss!' he adds with a nod to you, after which he lets his hand wander further down, groping Spike's ass and drawing a surprised bark from the young man. As the dobie hastily pulls away, Urik lets him go, chuckling to himself as he walks off. 'Hope I didn't make a mistake agreeing to this,' Spike says in a wary tone, then shrugs to himself. 'I did wanna get stronger anyways though.'";
		now Stamina of Spike is 1; [they met and Urik goaded Spike into training]
	else:
		LineBreak;
		say "     Calling the orc's name in a sharp tone of voice, you tell Urik to cut it out and leave Spike in peace. 'Fine boss, if you say so,' the large green male grumbles under his breath and stomps off, though not without 'accidentally' bumping Spike with his shoulder, almost knocking him over. 'Bet you'd have been too weak a bitch anyways,' he not quite whispers to the doberman before leaving. Watching him go, Spike shakes his head, 'Not a good day for him or what? That sure is one grumpy orc, [SpikePlayerAddress].' With a shrug, you explain that Urik still has to adapt to his new role in some ways. He's still quite used to just taking what he wants even though it's ingrained with him now to obey his master.";
		now Stamina of Spike is 100; [Player shut down Urik's plan]
	now SpikeEventCooldown is turns;

after going to Sitting Area while (Urik is in Sitting Area and Spike is in Sitting Area and SpikeEventCooldown - Turns > 4 and Spike is not asleep and PlayerControlled of Urik is true and Stamina of Spike is 1 and a random chance of 1 in 2 succeeds):
	if debugactive is 1:
		say "     DEBUG: Spike and Urik Train - Stamina of Spike: [Stamina of Spike][line break]";
	try looking;
	project the Figure of Spike_shirtless_icon;
	say "     Walking along the upper floor of the library, you see Urik standing over Spike lying on the ground, stretched out on a training mat wearing nothing but his jeans. He's got his big green feet planted to the left and right of the doberman's head, bending a little forward to keep his hands on the set of weights that Spike is visibly struggling with. Given their relative positions, this means that the dobie can't help but stare up at Urik's crotch and ass, which the orc seems well aware of, crouching fairly low every time he assists with the lifting. Glancing at the weights, you see that they're of the self-made variety, consisting of a road-sign pole, with both ends punched through the centers of several manhole covers. The weighty piece of equipment is clearly sized for the massive orc and far too heavy for Spike, with Urik doing most of the lifting as your dobie companion tries to push upwards.";
	say "     Of course, this doesn't stop the towering orc from goading his trainee with the words, 'Too much for you, little dog boy? Should I go and see if I can loot some baby weights somewhere?' A defiant growl rolls up from the depth of Spike's throat and he grunts, 'No! I can do this!' The orc lets out an amused snort at Spike's insistence, followed by the words, 'At least you have some spunk, boy! The will to keep going is what you need most! Now give me another twenty reps!' Swallowing the words of a reply as he gulps at the added challenge, Spike strains his muscles to push the pole up again and again, sweat matting his fur as he continues with the exercise Urik demands. By the time the orc's deep voice says, '..., nineteen, twenty!' your dobie companion is panting loudly, letting his rubbery arms drop down to the mat in exhaustion. He groans tiredly as Urik carries his weight to the side, setting it down in some deep grooves in the floor that must have been made by dropping the thing a bit too quickly.";
	WaitLineBreak;
	say "     Strolling back to the young doberman, Urik grins down at him and grabs hold of Spike's arm, effortlessly pulling the other man up to stand next to him. 'Just gotta do workouts like this two or three times a day for some time and we might make something out of you yet, boyo!' the orc says in a cheerful tone with a broad smile, while Spike gulps and looks wide-eyed at him. 'Err - three times a day?!' he gasps out, wavering a little on weak legs until Urik slips an arm around his side, his large hand gripping the doberman's chest under the armpit. 'Sure! You don't wanna stay a little stick-figure of a guy, do you?! I'll teach ya what you need to know.' 'I - I don't even know if I'm strong enough to pick my pants back up from over there. My arms are just done for now,' Spike says somewhat defeatedly, leading to Urik patting his slender chest. 'Now now, you don't wanna give up that quick, eh? You've got it in you. Just might need to have some help. Can't build some muscle out of nothing.'";
	say "     With that said, the towering orc leads his trainee over to one of the still-standing bookshelves, grabbing a plastic bottle with the logo of a popular protein shake from it. It looks fairly tiny between his fingers and you can mostly just see the bright plastic cap on its wide neck. One thing that you do notice though is that the contents of the bottle do not have the lime-green color that one'd expect, but rather are slightly off-white and cloudy. 'Here, have a protein shake! My own special blend. It's got all a puppy needs to grow into a real man!' Accepting the bottle, Spike looks at it, then takes off the cap and sniffs at it. 'Bit of a funky smell. That's supposed to be pineapple?' Urik replies gruffly, 'Just give it a go, you'll like the taste!'";
	LineBreak;
	say "     [bold type]The insistence with which Urik wants Spike to drink his 'protein shake' makes you wonder a bit...[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Watch as Spike chugs it down.";
	say "     ([link]N[as]n[end link]) - Interrupt them and stop Spike from drinking.";
	if Player consents:
		LineBreak;
		say "     Curious but not too concerned, you observe as Spike takes a first swallow, followed by licking the sides of his muzzle with his floppy tongue. 'Mmmh, tasty!' he gives his verdict, followed by a longer pull on the drink. 'See, I knew you'd like it. That stuff will give you new energy and we'll continue the workouts soon.' Grinning in obvious satisfaction, the orc gives Spike's shoulder a squeeze, then pulls his hand away from bracing the young man. Doesn't look like he's having any trouble standing straight anymore now, and he's happily swallowing more and more of the protein shake. 'Later then, doggy-boy!' Urik tells him, whistling as he strolls over to the spot he usually leans against the railing overlooking the lower floor. Left behind, Spike is busy finishing off the bottle, up to even pushing his long tongue inside it to get the last drops out.";
		say "     You're about to turn your attention to other things when your gaze wanders down a little bit and you notice that Spike's showing quite a tent in his jeans now, having become erect in short notice. With a new spring in his step that wasn't there a moment ago, the young man wanders over to his little camp, lying down and starting to jerk off to a picture of a provocatively dressed woman. He doesn't seem to think the sudden flare of arousal to be anything exceptional, but from an outside perspective, this might be an indication that there was more than just a 'normal' protein shake in that bottle. Could it be that Urik's actually dosing your dobie with a small amount of his cum in the mix? Even if it doesn't transform him, an orc's seed is quite potent stuff, and possibly habit-forming...";
		increase the XP of doberman companion by level of doberman companion times six;
		say "     [bold type]Spike has gained [level of doberman companion times six] XP![roman type][line break]";
		now Stamina of Spike is 2; [Spike got his first shake]
	else:
		LineBreak;
		say "     Clearing your throat, you draw the attention of the two men and stride up to them. Some words asking if Urik's trying to dope your canine companion have the intended effect of making Spike a bit wary of the drink, and he hands it back to the orc in short notice. 'I think... yeah, I think that orc workouts maybe aren't for me. Hell, you're two heads taller than me, and twice as wide!' With that said, he stumbles over to his mattress to lie down, moving rather stiffly. Meanwhile, Urik mumbles, 'Spoilsport' under his breath and flings the plastic bottle into a corner before wandering back to where he usually leans against the railing overlooking the lower floor.";
		increase the XP of doberman companion by level of doberman companion times four;
		say "     [bold type]Spike has gained [level of doberman companion times four] XP![roman type][line break]";
		now Stamina of Spike is 100; [Player shut down Urik's plan]
	now SpikeEventCooldown is turns;

after going up from Grey Abbey Library while (Urik is in Sitting Area and Spike is in Sitting Area and SpikeEventCooldown - Turns > 4 and Spike is not asleep and PlayerControlled of Urik is true and Stamina of Spike is 2 and a random chance of 1 in 2 succeeds):
	if debugactive is 1:
		say "     DEBUG: Spike and Urik Train - Stamina of Spike: [Stamina of Spike][line break]";
	try looking;
	project the Figure of Spike_shirtless_icon;
	say "     Coming up the stairs to the upper floor of the library, you see a shirtless, sweaty Spike flashing past the upper end of the steps. He's closely followed by Urik whose longer legs and wider strides make it fairly easy for him to chase the dobie, all the while shouting things at his trainee. 'You'll wanna run faster boy when a horny dude runs after you. Unless you wanna be caught and bent over the railing, eh puppy?' Making a lunge and giving the young man's back a push with his large hand, Urik drives Spike to a sprint, following after him in yet another circuit of the upper library floor. When they soon come around from the other direction, Spike starts to slow down a little as he sees you, calling out the words, 'Hey, [SpikePlayerAddress]!' But before he can say anything more, Urik's close up behind him and shouts, 'DID I SAY STOP, PUPPY?' driving his trainee in front of himself.";
	if Stamina of Spike is 2:
		say "     Quietly chuckling to yourself about how much Urik seems to enjoy the drill instructor role, you busy yourself with some other things, like having a look out the windows to observe the approaches to the library for example. While you do that, the two men continue running without pause, with Spike panting louder every time he passes. Eventually, the young man can't help but stumble to a stop, bracing his upper body with his arms on both thighs as he gasps for breath. Stepping up close to tower over him, Urik gruffly remarks, 'That's it? Already winded, boy? With this little stamina, you might just outrun a street dog. A three-legged one, with fleas!' Not really ready to give any sort of verbal reply, Spike shows the orc his middle finger, which makes Urik laugh. 'Fun aside, I'm impressed. Ya didn't whine or beg, just kept running. Good doggie! That deserves a reward. Here, have another protein shake!'";
		WaitLineBreak;
		say "     With that said, the towering orc walks a few steps and grabs a plastic bottle out of one of the bookshelves. It bears the logo of a popular protein shake from it, looking fairly tiny between his fingers and you can mostly just see the bright plastic cap on its wide neck. One thing that you do notice though is that the contents of the bottle do not have the lime-green color that one'd expect, but rather are slightly off-white and cloudy. With a broad grin on his face, Urik holds the bottle out to Spike. 'Drink up, it'll be good for you!'";
		LineBreak;
		say "     [bold type]The insistence with which Urik wants Spike to drink his 'protein shake' makes you wonder a bit...[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - Watch as Spike chugs it down.";
		say "     ([link]N[as]n[end link]) - Interrupt them and stop Spike from drinking.";
		if Player consents:
			LineBreak;
			say "     Curious but not too concerned, you observe as Spike takes a first swallow, followed by licking the sides of his muzzle with his floppy tongue. 'Mmmh, tasty!' he gives his verdict, followed by a longer pull on the drink. 'See, I knew you'd like it. That stuff will give you new energy and we'll continue the workouts soon.' Grinning in obvious satisfaction, the orc gives Spike's back a friendly slap. 'We'll have you made into a proper br- err, stud soon. Just imagine having muscles like this!' With that, he goes into a full-on series of poses, showing off his orcish, ripped physique. Spike looks at him somewhat enviously, staring at what the green-skinned brute flexes and shakes in front of him. 'Go on, touch it!' Urik prods him along, lowering his bulging bicep towards the doberman, who reaches out to lay his hand on it.";
			say "     There's a short while of what might be called muscle worship, with Spike rubbing and squeezing the orc, his tail wagging. Looking down a little, you see that he's hard and erect within his pants. The anthro dobie notices this himself scant moments later, freezing in motion. 'Uhm,' he starts to say, looking down over himself, only to be interrupted by Urik right away. 'Don't feel bad, kid. Of course you react to being so close to a real man. Perfectly natural.' He continues to flex a little bit more, but Spike doesn't let himself get drawn into touching him again, instead making excuses and hurrying off towards his camp and bedding. As the dobie leaves, Urik looks after him with a grin, then says under his breath, too quiet for Spike to hear, 'Have fun jerking off, little doggie. Think of my cock as you do so.'";
			increase the XP of doberman companion by level of doberman companion times six;
			say "     [bold type]Spike has gained [level of doberman companion times six] XP![roman type][line break]";
			now Stamina of Spike is 3; [Spike got his second shake]
		else:
			LineBreak;
			say "     Clearing your throat, you draw the attention of the two men and stride up to them. Some words asking if Urik's trying to dope your canine companion have the intended effect of making Spike a bit wary of the drink, and he hands it back to the orc in short notice. 'Is that the way it goes? I think that orc workouts aren't for me then,' the doberman says, then stumbles off towards his little camp to rest and recover. Meanwhile, Urik mumbles, 'Spoilsport' under his breath and flings the plastic bottle into a corner before wandering back to where he usually leans against the railing overlooking the lower floor.";
			increase the XP of doberman companion by level of doberman companion times four;
			say "     [bold type]Spike has gained [level of doberman companion times four] XP![roman type][line break]";
			now Stamina of Spike is 100; [Player shut down Urik's plan]
	else if Stamina of Spike is 50:
		say "     Quietly chuckling to yourself about how much Urik seems to enjoy the drill instructor role, you busy yourself with some other things, like having a look out the windows to ovserve the approaches to the library for example. While you do that, the two men continue running without pause, with Spike panting louder every time he passes. Eventually, the young man can't help but stumble to a stop, bracing his upper body with his arms on both thighs as he gasps for breath. Stepping up close to tower over him, Urik gruffly remarks, 'That's it? Already winded, boy? With this little stamina, you might just outrun a street dog. A three-legged one, with fleas!' Not really ready to give any sort of verbal reply, Spike shows the orc his middle finger, which makes Urik laugh. 'Fun aside, I'm impressed. Ya didn't whine or beg, just kept running. Good doggie! That deserves a reward. Here, have another protein shake!'";
		WaitLineBreak;
		say "     As Urik offers Spike the bottle with his 'special shake', the doberman doesn't make any move to take it, instead crossing his arms in front of his chest. 'No thanks, I know what you're putting in there now. I'll get my own drinks from now on.' Grumbling, the orc shrugs and says, 'Your loss, it's good stuff!' and then he chugs from the bottle and swallows the contents in big gulps. 'How can you - oh wait, you're an orc breeder. Forget I asked,' Spike murmurs to himself, with Urik stepping up to tower over him. The orc gives him a poke in the chest and squeezes Spike's bicep testingly, 'Gonna have to train you harder then if you're not drinking your supplements. Be ready for that.'";
		now Stamina of Spike is 51;
	else if Stamina of Spike is 51:
		say "     Quietly chuckling to yourself about how much Urik seems to enjoy the drill instructor role, you busy yourself with some other things, like having a look out the windows to ovserve the approaches to the library for example. While you do that, the two men continue running without pause, with Spike panting louder every time he passes. Eventually, the young man can't help but stumble to a stop, bracing his upper body with his arms on both thighs as he gasps for breath. Stepping up close to tower over him, Urik gruffly remarks, 'That's it? Already winded, boy? With this little stamina, you might just outrun a street dog. A three-legged one, with fleas!' Not really ready to give any sort of verbal reply, Spike shows the orc his middle finger, which makes Urik laugh. 'Fun aside, I'm impressed. Ya didn't whine or beg, just kept running. Good doggie!' He gives the dobie a 'friendly' slap on the back that's still hard enough to send the anthro dog stumbling forward, then chuckles as he moves away.";
	now SpikeEventCooldown is turns;

after going to Sitting Area while (Urik is in Sitting Area and Spike is in Sitting Area and SpikeEventCooldown - Turns > 4 and Spike is not asleep and PlayerControlled of Urik is true and (Stamina of Spike is 3 or Stamina of Spike is 50 or Stamina of Spike is 51) and a random chance of 1 in 2 succeeds):
	if debugactive is 1:
		say "     DEBUG: Spike and Urik Train - Stamina of Spike: [Stamina of Spike][line break]";
	try looking;
	project the Figure of Spike_clothed_icon;
	say "     Walking along the upper floor of the library, you glance around and see Spike sitting on a chair nearby, slowly paging through a magazine. For a second, you wonder what he's reading, until the question answers itself as he turns it ninety degrees and spreads out the centerfold. Must be a porn mag he looted somewhere. The dobie's tail is wagging behind his back and moves one hand down to his pants, either to adjust his bulge or to flat out unzip and start stroking. Sadly (for him) Spike's fun-time ends before it can begin, as Urik strides towards the anthro canine a moment later, carrying two weighty sports bags. The grinning orc drops his burden on the ground directly behind his trainee, creating a loud crash of clinking metal and creaking wood that you can literally feel through the floorboards.";
	say "     Spike's completely surprised by the appearance of Urik and the accompanying noise, jumping out of his chair in shock and whirling around, with the magazine going flying out over the upper floor railing and vanishing from sight as it drops. 'What the fuck?!' the young man shouts in shock, gaping wide-eyed at Urik. The orc snorts in amusement, then crosses his arms in front of his wide, muscular chest and says, 'Heya slut-puppy, I got some presents for ya! Cool your jets and have a look. You should be thankful when I go out of my way and grab equipment just for you!' Spike is still fairly shaken up by the surprise, but does react to the prompting from the orc by crouching down and pulling open the zipper on one of the bags. He raises his eyebrows at what he finds, then reaches in to lift a metal disc with a hole in the middle from it. Looks like part of an adjustable weightlifting set. Urik must have decided that the self-made orc gear he has was just too much for the dobie.";
	WaitLineBreak;
	if Stamina of Spike is 3: [he had two shakes and doesn't see them as anything out of the ordinary]
		say "     After retrieving several more metal discs and starting to stack them by weight, Spike glances up at the orc and opens his mouth, hesitating a second or two before he finds his words. 'Uhm - Thank you, Urik. This stuff will actually be useful for my training.' The green-skinned brute smiles down at him and replies gruffly, 'It's fine. Gotta get you in shape somehow. Even if it means collecting some baby weights that even a newborn orcling could throw around.' Spike rolls his eyes at the ribbing he gets, but still wags his tail a little bit as he nods to the orc, then turns back to organizing what appears to have been randomly stuffed into the sports bags. Meanwhile, Urik wanders over towards one of the still-standing shelves, reaching up to grab another of his 'protein shake' bottles from all the way on top of it, too high to reach without a ladder for most people but him.";
		say "     As Urik is about to turn around and go back, he notices a white streak on the outside of the bottle and pauses for a moment. Casually glancing over his shoulder to where Spike's still busy, he wipes the sticky goop (that looks suspiciously like cum) off with a fingertip, sticking it into his mouth to lick clean. Only then does he walk back towards his trainee, calling his name and holding out the drink to him. 'Thanks,' Spike tells him, subconsciously licking the sides of his muzzle as he accepts it. 'Gotta say that I did get used to the funky taste right quick. Almost had a craving for more, to be honest.' Setting the bottle down on the ground and finally digging out the lifting bar from the second sports bag, the doberman lays it out with all the weight discs and continues to sort the rest of the gear. While doing so, his gaze seems to drift to Urik's shake several times. You find yourself reminded of the fact that orc cum is kinda habit-forming.";
		WaitLineBreak;
		say "     [bold type]Given that Spike's getting used to chugging the special 'protein shakes', you feel that this is the last time in which you can realistically have an impact on the practice. Do you want to say something?[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - Yeah, better tell Spike what he's actually about to drink.";
		say "     ([link]N[as]n[end link]) - No, it'll be fine. You're sure that Urik's cum has lots of proteins, hormones and stuff that will help Spike in the long run.";
		if Player consents:
			LineBreak;
			say "     Stepping up and clearing your throat, you meet Spike's gaze and tell him that putting a hand on Spike's shoulder, you look into his eyes and tell him that you worry about there being more than just a protein shake in what Urik gave him. You're fairly certain that it has at least some orc cum in it. The young doberman gapes at you, then sticks out his tongue in disgust, running his fingers over it as if to scrape off some horrible taste. 'Eww, really? Bleh, that's just... Urik, what the fuck is your problem, asshole?! I think I need some mouthwash.' The orc looks at the enraged doberman with a frown on his face, putting his hands on his hips. 'What are you bitching about? A moment ago you said you like the taste! And it's good for you, slut-puppy! What do you think prepares orclings for growing six feet in a few minutes after being born? They absorb everything they need in the pouch! Doesn't look like you're turning orc either, this will make you just bulk up quicker!'";
			say "     'That's still... eww,' Spike replies with a scrunched-up muzzle, shaking his head. 'Listen, I... I guess this time you're trying to help me while being an asshole, and you did get me this nice gear. So I'll not plan any payback for when you sleep, and we'll continue training. But I'll never, ever accept anything to eat or drink from you again!' He gets a bit loud with the last words, after which Spike walks away to cool down a bit. 'Ungrateful little punk,' Urik grumbles after the anthro canine, then shrugs and collects his bottle, starting to chug the contents down himself.";
			now Stamina of Spike is 52; [new weights for Spike, future trainings without shakes]
		else:
			LineBreak;
			project the Figure of Spike_shirtless_icon;
			say "     You shrug to yourself and decide to just watch things take shape as they will. A short while later, Spike has arranged the whole weightlifting set in neat and tidy stacks, stopping after doing so to grab the 'protein shake' and take a long pull from the bottle. 'Mmmh, tasty!' comes his verdict, with Urik chuckling as a response. The orc actually helps Spike assemble the set of weights, though he puts it together in a really heavy setup, with Spike having to take off a disc or two. Soon after, the young man has pulled off his shirt and is lifting, with Urik spotting him, keeping the two of them busy for quite a while. You notice frequent pauses in between, allowing the dobie to drink some more of his 'shake', and he shows a visible bulge in his pants before their set is over.";
			increase the XP of doberman companion by level of doberman companion times six;
			say "     [bold type]Spike has gained [level of doberman companion times six] XP![roman type][line break]";
			now Stamina of Spike is 4; [new weights for Spike, future trainings always with shakes]
	else if Stamina of Spike is 50: [Spike knows what's in the shakes, Urik is still offering]
		say "     After retrieving several more metal discs and starting to stack them by weight, Spike glances up at the orc and opens his mouth, hesitating a second or two before he finds his words. 'Uhm - Thank you, Urik. This stuff will actually be useful for my training.' The green-skinned brute smiles down at him and replies gruffly, 'It's fine. Gotta get you in shape somehow. Even if it means collecting some baby weights that even a newborn orcling could throw around.' Spike rolls his eyes at the ribbing he gets, but still wags his tail a little bit as he nods to the orc, then turns back to organizing what appears to have been randomly stuffed into the sports bags. Meanwhile, Urik wanders over towards one of the still-standing shelves, reaching up to grab another of his 'protein shake' bottles from all the way on top of it, too high to reach without a ladder for most people but him.";
		say "     As Urik is about to turn around and go back, he notices a white streak on the outside of the bottle pauses for a moment. Casually glancing over his shoulder to where Spike's still busy, he wipes the sticky goop (that looks suspiciously like cum) off with a fingertip, sticking it into his mouth to lick clean. Only then does he walk back towards his trainee, calling his name and holding out the drink to him. 'Thanks, but no thanks,' Spike tells him, shaking his head. 'I know what you're putting into the stuff now! A dick move, even for you!' The orc looks at the enraged doberman with a frown on his face, putting his hands on his hips. 'What are you bitching about? It's good for you, slut-puppy! What do you think prepares orclings for growing six feet in a few minutes after being born? Doesn't look like you're turning orc either, this will make you just bulk up quicker!'";
		WaitLineBreak;
		say "     'That's still... eww,' Spike replies with a scrunched-up muzzle, shaking his head. 'Listen, I... I guess this time you're trying to help me while being an asshole, and you did get me this nice gear. So I'll not plan any payback for when you sleep, and we'll continue training. But I'll never, ever accept anything to eat or drink from you again!' He gets a bit loud with the last words, after which Spike walks away to cool down a bit. 'Ungrateful little punk,' Urik grumbles after the anthro canine, then shrugs and collects his bottle, starting to chug the contents down himself.";
		now Stamina of Spike is 52; [new weights for Spike, future trainings without shakes]
	else if Stamina of Spike is 51: [Spike knows what's in the shakes, Urik knows not to offer any more]
		project the Figure of Spike_shirtless_icon;
		say "     After retrieving several more metal discs and starting to stack them by weight, Spike glances up at the orc and opens his mouth, hesitating a second or two before he finds his words. 'Uhm - Thank you, Urik. This stuff will actually be useful for my training.' The green-skinned brute smiles down at him and replies gruffly, 'It's fine. Gotta get you in shape somehow. Even if it means collecting some baby weights that even a newborn orcling could throw around.' Spike rolls his eyes at the ribbing he gets, but still wags his tail a little bit as he nods to the orc, then turns back to organizing what appears to have been randomly stuffed into the sports bags. Urik actually helps him a little bit, grabbing the lifting bar from the second sports bag and assembling a set of weights with it. They're far too heavy and Spike has to take off a disc or two, but soon after, the young man has pulled off his shirt and is lifting, with Urik spotting him, keeping the two of them busy for quite a while.";
		increase the XP of doberman companion by level of doberman companion times four;
		say "     [bold type]Spike has gained [level of doberman companion times four] XP![roman type][line break]";
		now Stamina of Spike is 52; [new weights for Spike, future trainings without shakes]
	now SpikeEventCooldown is turns;

after going to Sitting Area while (Urik is in Sitting Area and Spike is in Sitting Area and SpikeEventCooldown - Turns > 4 and Spike is not asleep and PlayerControlled of Urik is true and (Stamina of Spike is 4 or Stamina of Spike is 52) and a random chance of 1 in 2 succeeds):
	if debugactive is 1:
		say "     DEBUG: Spike and Urik Train - Stamina of Spike: [Stamina of Spike][line break]";
	try looking;
	project the Figure of Spike_clothed_icon;
	if Stamina of Spike is 4: [training with shakes]
		say "     Walking along the upper floor of the library, you glance around and see Spike and Urik standing together in the sitting area, talking to one another. Your doberman companion is holding a bottle of Urik's special 'protein shake', taking another swig from it as you watch and apparently finishing off the bottle. As the young man puts down the empty container, his tail wagging behind his back, he touches Urik's arm and says, 'Thanks again for training me. I feel stronger already.' The orc chuckles at the words, reaching out to tousle the doberman's green hair. 'You're still a twig of a guy, but it's good you're enthusiastic. Still got a long way to go, boy! And now, down you go and give me thirty push-ups for a start!' Stiffening at the command barked at him, Spike starts to step towards a training mat laid out nearby, only to be held back by Urik's large green hand on his chest. 'Better take that off, you don't wanna get it sweaty, eh?' the orc adds, tugging at the mesh shirt on his trainee's chest.";
		say "     'Oh, yeah!' Spike replies, pulling off the article of clothing and throwing it in the direction of his little camp between the shelves. Then he gets down on the training mat and begins to do push-ups. Urik joins him a few seconds later, crouching down and looking at Spike closely. 'Gotta straighten your back more, puppy-boy! And really get on tip-toe with those paws, then go down till your puzzle is right over the ground!' He observes the doberman's efforts with a critical eye for a little while, even reaching out to push down on his naked back to make him go lower. 'That's a little better, but you still don't have quite the right form. Here, tense up a bit back here!' Urik goes on to say, smacking his hand lightly on Spike's ass and giving it a quick grope. The doberman takes his instruction without complaint, doing his best to obey, with Urik giving a grudging, 'Now keep that pose as you go up and down,' after a few more repetitions.";
		WaitLineBreak;
		project the Figure of Urik_clothed_icon;
		say "     The orc gets into position for push-ups himself, right next to the anthro canine, adding in a gruff voice, 'Gonna join you in the workout, and if you have any questions, just look at how I'm doing it!' With that said, he starts pumping his broad-shouldered body up and down with almost effortless ease. From time to time, he even does a few with just one arm as he reaches out to correct Spike again, his hand often staying to keep touching the doberman for a few seconds. The two of them keep working out for some time, with Spike having to take breaks to catch his breath while Urik just powers through. By the time the orc calls it quits, Spike's lying on the mat, panting rapidly as he tries to catch his breath. You notice that his hips are hiked up a little instead of being flat on the ground.";
		say "     Sweat glistening on his muscled chest, Urik sits up and glances over to his trainee. 'That looks uncomfortable. Ain't it a bit tight, boy?' he comments, then grabs Spike by the arm and just flips him over, flopping down on the mat to reveal a sizable bulge in the young man's jeans. Spike looks down over himself and yips, hands moving to cover his crotch, which draws a laugh from the large orc. 'Nothing to be ashamed about, kid! Completely natural. If a man gets his blood pumping, it's bout to go to the interesting bits too.' With a casual grin, Urik reaches down to his only article of clothing, almost demonstratively tugging at it to outline the shape of his semi in the stretchy material. 'But in tight pants like that, the thing must be giving you a hell of a pinch, ain't that right? Should have stripped it off too before you started training!'";
		WaitLineBreak;
		project the Figure of Spike_shirtless_icon;
		say "     Urik reaches out to pop the button and peel Spike's jeans off, only to have his hand pushed aside by the canine. 'I'm not wearing anything under it,' the dobie says hurriedly, drawing an amused snort from Urik. 'I don't mind at all. Feel free to -,' the orc starts to say, but Spike is already getting up by that time. 'Gonna go clean up, thanks for the training,' he says, then takes off in what might be called a dash, giving you a 'Hey, [SpikePlayerAddress]!' as he rushes past without stopping. Urik looks after him with a broad smirk on his face, then pulls down the front of his stretchy undies and gives his cock a few relaxed strokes before tucking it back in, now showing as a massive tent.";
		increase the XP of doberman companion by level of doberman companion times six;
		say "     [bold type]Spike has gained [level of doberman companion times six] XP![roman type][line break]";
		now Stamina of Spike is 5; [shake + shirtless pushups done]
	else if Stamina of Spike is 52: [training without shakes]
		say "     Walking along the upper floor of the library, you glance around and see Spike and Urik standing together in the sitting area, talking to one another. Your doberman companion is holding a bottle of water, taking another swig from it as you watch and apparently finishing off the bottle. As the young man puts down the empty container, his tail wagging behind his back, he touches Urik's arm and says, 'Thanks again for training me. I feel stronger already.' The orc chuckles at the words, reaching out to tousle the doberman's green hair. 'You're still a twig of a guy, but it's good you're enthusiastic. Still got a long way to go, boy! And now, down you go and give me thirty push-ups for a start!' Stiffening at the command barked at him, Spike starts to step towards a training mat laid out nearby, only to be held back by Urik's large green hand on his chest. 'Better take that off, you don't wanna get it sweaty, eh?' the orc adds, tugging at the mesh shirt on his trainee's chest.";
		say "     'Oh, uhm... yeah,' Spike replies, pulling off the article of clothing and throwing it in the direction of his little camp between the shelves. Then he gets down on the training mat and begins to do push-ups. Urik joins him a few seconds later, crouching down and looking at Spike closely. 'Gotta straighten your back more, puppy-boy! And really get on tip-toe with those paws, then go down till your puzzle is right over the ground!' He observes the doberman's efforts with a critical eye for a little while, even reaching out to push down on his naked back to make him go lower. 'That's a little better, but you still don't have quite the right form. Here, tense up a bit back here!' Urik goes on to say, smacking his hand lightly on Spike's ass and giving it a quick grope. Besides a quick, 'Hey!' at Urik squeezing his ass, the doberman takes his instruction without complaint and does his best to obey. After a few more repetitions, Urik gives him a grudging, 'Now keep that pose as you go up and down.'";
		WaitLineBreak;
		project the Figure of Urik_clothed_icon;
		say "     The orc gets into position for push-ups himself, right next to the anthro canine, adding in a gruff voice, 'Gonna join you in the workout, and if you have any questions, just look at how I'm doing it!' With that said, he starts pumping his broad-shouldered body up and down with almost effortless ease. From time to time, he even does a few with just one arm as he reaches out to correct Spike again, his hand often staying to keep touching the doberman for a few seconds. The two of them keep working out for some time, with Spike having to take breaks to catch his breath while Urik just powers through. By the time the orc calls it quits, Spike's lying on the mat, panting rapidly as he tries to catch his breath.";
		say "     Sweat glistening on his muscled chest, Urik sits up and glances over to his trainee. 'What, already exhausted? I could keep going for another hour. But I guess a delicate thing like you needs to go slow,' he comments, then grabs Spike by the arm and just flips him over, flopping down on the mat. Still panting, Spike yips at suddenly being man-handled, glancing up at Urik. 'At least you've got the spunk to keep at it, boy. No complaining from you, or are you just to weak to get it out right now?' Groaning, Spike shakes his head left and right, then gasps, 'No! I - I'm good.' The orc smirks at him, then offers a hand to help him get up from the ground, after which Spike stumbles over to his mattress on somewhat wobbly legs.";
		increase the XP of doberman companion by level of doberman companion times four;
		say "     [bold type]Spike has gained [level of doberman companion times four] XP![roman type][line break]";
		now Stamina of Spike is 53; [training without shakes, shirtless pushups done]
	now SpikeEventCooldown is turns;

after going to Sitting Area while (Urik is in Sitting Area and Spike is in Sitting Area and SpikeEventCooldown - Turns > 4 and Spike is not asleep and PlayerControlled of Urik is true and (Stamina of Spike is 5) and a random chance of 1 in 2 succeeds):
	if debugactive is 1:
		say "     DEBUG: Spike and Urik Train - Stamina of Spike: [Stamina of Spike][line break]";
	try looking;
	project the Figure of Spike_clothed_icon;
	say "     Walking along the upper floor of the library, you glance around and see Spike stand at the railing overlooking the lower floor, apparently deep in thought as he just stares ahead. Just as you start to contemplate if you should walk up and talk to him, a deep voice calls out, 'Hey, puppyboy!' It's Urik, and as Spike turns around to look at him, you notice a little wag of his tail. 'Hi Urik, what's up? Is it already time for our next training session?' The orc grins at him and nods. 'Yup, time to put you through your paces!' Urik adds, then throws a bottle of his 'protein shake' for Spike to catch. He waits for the young man to take a first swallow of the liquid, then brings forward his other hand, which had been balled to a loose fist by his side. 'After the problems you had last time, I got you this. Should fit, I'm sure,' the orc adds, opening his fingers to reveal a black piece of cloth with red borders.";
	say "     'Huh?' Spike says in a somewhat surprised tone, setting down his bottle on the ground after recapping it. Then he reaches out to take Urik's gift from the green-skinned brute's hand and inspecting it. It's a piece of underwear, shiny and stretchy from the looks of it. 'Err, thanks. But... eh, did you find this on the street or something? Looks like the back half is missing.' Turning the garment around, Spike tugs at a pair of elastic bands as if to demonstrate what he means. 'Naw, that's how it's supposed to look. It's a sports thing, and this'll be good especially for you!' Urik replies with a smile and pats Spike's head. 'Hey! What's that supposed to mean?!' the young man replies somewhat annoyedly, patting away the large hand. 'Your tail, boy! With a jockstrap you don't have to tug yer undies down at the back to make room for it. Not wearing any right now because of the chafing at the tail, ain't that right?'";
	WaitLineBreak;
	project the Figure of Spike_jockstrap_icon;
	say "     Still a bit leery about Urik picking out underwear for him, Spike looks back and forth between the piece of cloth to Urik's face. There's a moment of hesitation before he finally gives a little shrug and admits, 'Yeah, you're right. Kinda. I tried briefs a little while back and they were rubbing me the wrong way.' Urik's grin only gets broader, with the orc nodding back towards the sitting area. 'Go on then, let's see if it fits. Gotta be snug and not hang loose, we'll do another run next.' Spike looks at the much taller orc and says, 'Fine, but no peeking!' 'Wouldn't dream about it,' the orc replies, one hand casually behind his back with crossed fingers. Nodding, Spike walks past him, over to the sofa in the sitting area, where he strips down and starts to put on the jockstrap, taking a few seconds to figure out which way all the straps go. Meanwhile, Urik is watching over his shoulder, his gaze taking in the curve of the dobie's ass in detail.";
	say "     Soon, Spike's coming back, with Urik just in time stopping to peek not to be caught. 'It's certainly not loose. Might be a little tight even,' the doberman says thoughtfully, looking down at his own crotch as he walks over slowly. 'And the back feels weird. Being dressed at the front and bare there.' Urik replies, 'Let me see,' and reaches out to cup Spike's crotch, which the young man quickly deflects. 'Hey, keep your fingers to yourself. You can look, but no touching.' Grunting in amusement, the orc takes Spike by the shoulders and turns him around, looking at his hips. 'Seems alright to me, you won't have to worry about losing it as we run! Now finish off your shake and then we can get to some laps.' Spike does as requested, grabbing his bottle and chugging more of the rich mixture inside. He looks down at himself a few times as Urik chats with him for a few minutes, then finally finishes off the drink and Urik takes the empty bottle to put it away.";
	WaitLineBreak;
	say "     When Urik returns soon after, Spike has visibly relaxed about wearing the jockstrap, not fussing as much as in the beginning. At the same time, his nether regions seem to have gotten a bit excited, as he shows a little bit of a tent in the new underwear. 'Time for you to show some of that speed and endurance you need to make it in the city. We're gonna run laps, clockwise around the middle! You go first and I play one of the horny monsters out to get ya in the streets!' With a laugh, he gives Spike's bare buttocks a slap, prompting the young man to start running. The orc gives his trainee a head-start, eyes never leaving the young man's rear, then sets out after him, chasing Spike through the library in a (for him) comfortable pace. Seeing that they're just starting, you decide to turn to other things. You're fairly sure that Spike will get a thorough workout today though.";
	increase the XP of doberman companion by level of doberman companion times six;
	say "     [bold type]Spike has gained [level of doberman companion times six] XP![roman type][line break]";
	now Stamina of Spike is 6; [Spike got a jockstrap now]
	now SpikeEventCooldown is turns;

after going to Sitting Area while (Urik is in Sitting Area and Spike is in Sitting Area and SpikeEventCooldown - Turns > 4 and Spike is not asleep and PlayerControlled of Urik is true and (Stamina of Spike is 6 or Stamina of Spike is 53) and a random chance of 1 in 2 succeeds):
	if debugactive is 1:
		say "     DEBUG: Spike and Urik Story Time - Stamina of Spike: [Stamina of Spike][line break]";
	try looking;
	project the Figure of Spike_shirtless_icon;
	say "     Walking along the upper floor of the library, you glance around and see Urik and Spike sitting next to each other on the sofa further in the back. Seems they're just hanging out with each other right now, not doing any training for a change. Your doberman companion is currently telling a story, gesturing wildly as he does so. '...so when we got to the alley, she wanted me to follow her into it. At first I did for a few steps, hell, that husky had offered me her pussy, but then I heard a noise from behind one of the dumpsters in there. When she noticed that I knew something was up, the bitch shouted, 'Get him, Bill!' and this dude jumped out from his hiding spot. Half human, half husky guy, with a long metal rod he was hefting like a spear!' Spike pauses for effect, miming a guy attacking him, then goes on to say, 'But I was too quick for the dude. Dodged his thrust and shoved his girlfriend at him and the two of them went down in a tangle. Gave me the time to high-tail it out of there.'";
	say "     Urik chuckles at the story and comments, 'Yeah, you don't trust a streetwalking hooker further than you can spit. That's why you bring a buddy to double-team her. Those two you met were amateurs, but a woman and her pimp working together almost did my buddy Declan in once. Thought they could roll him, take everything he owned or whatever. That didn't work out so well, as me and a bunch of other soldiers were passing by on our way to a bar, and we gave em a good thrashing. But yeah, gotta watch out for yourself.' He nods to Spike, who was listening intently to his tale, then glances down at his forearm, making a fist and stroking over the tattoo covering his skin there. 'I miss Dec, he was a swell dude. Good tattoo artist too, he gave me these back in [']84,' Urik says, then pauses for a moment before he adds, 'Not even a year later, he got shot in the back by some little punk with a souped-up ride and inflated ego. Fuck, I'm still mad when thinking back to it. But the little murderous pissant got what was coming to him afterwards. Only wish we could have made it last longer.'";
	WaitLineBreak;
	say "     Silence stretches out for a few moments between the two of them, with Urik still reminiscing about his friend, until Spike clears his throat. 'Err, wait a minute - do you mean 1984? Just how old are you, Urik?' he blurts out, looking rather wide-eyed at the large man. Laughing out loud and slapping the side of his thigh, the orc grins at his trainee as he replies, 'I'm fifty-four years old, puppyboy! Don't look like it, do I, eh? If you ask me, this transformation business is the best thing that could have happened! Feel like I'm twenty again, and I'll take honest street-fighting over that rotten society from before any day. No more pigs who harass you just because you ride a bike. We sorted them out good, I can tell you that!' To underline his point, the green-skinned brute rubs the bulge in his pants, then begins a new tale with the words, 'Let me tell you how I got to be an orc...'";
	LineBreak;
	say "     [bold type]Do you want to listen to Urik's lewd tale?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Sure, it's bout to be hot!";
	say "     ([link]N[as]n[end link]) - Nah, not really.";
	if Player consents:
		LineBreak;
		say "     With a grin that shows his sharp tusks on his face as he recalls the day that he got transformed, Urik clears his throat and gives Spike's shoulder a friendly slap. 'So, as you might know, things were going to hell in a handbasket when this whole crazy shit started. I mean, one day things are normal, kinda slow. Bike's in the shop - don't think I'm still regretting that decision - and I'm out with some buds drinking, go home, sleep the buzz off. Next morning, I'm woken up by some asshole screaming and banging on my door. Literally, as I stumbled out of the bedroom and what did I see? My mailwoman, face pressed against the window of the door, with a big-boobed fucking gryphon shafting her from behind! Kind of a shocker, early in the morning, and I wondered if I was still drunk and not just hung over, I can tell you that! Then she looked at me and called my name, and I knew it was real. I turn away for a moment to grab the shotgun and load it, but by the time I get back, it's two dick-swinging bird-babes on my porch, one of them in she shreds of a mail uniform. Hot, but freaky, so I booked it out the back door quick after that.'";
		say "     Shrugging, Urik waves his hand in the air and adds, 'It was a big free-for-all in the streets, but critters did kinda avoid me since I was armed. Thought I'd make it to our watering hole, see if I could link up with some of the guys, get out of dodge. That plan went overboard quick when suddenly a frightened piggy peeled around the street corner in front of me at a dead run, to bounce right off me when we collided. I stumbled back a few steps, he went down on the ground. Oh, what a sight he was - pretty blue uniform shirt ripped, with the dude's pecs hanging out, and he had a wild expression on his face, calling out to help him.' The orc chuckles at that, miming himself holding a shotgun and an exaggeratedly frightened expression for the cop. 'What came after him a second later was a beast! More or less human, but big enough to have burst the clothes he had on, broad-shouldered and muscular, with protruding tusks and green skin!'";
		WaitLineBreak;
		say "     'I was halfway there to raise the gun and blast that motherfucker, humans holding together and all that shit, even if the runner was a dirty pig. And then, the greenskin grinned and laughed, saying, 'Don't recognize me, do you?!' Made me hesitate and really look at him, that - and you know who he was? My buddy Pete, with about three times the muscle that fat bastard had ever had before! The scared pig shouted for me to take him out, only to receive a bump on the head from Pete, who went on to tell me that being an orc is great. I was still doubtful for a while, but he knew shit, you know? Reminded me of the trip to Mexico we had the year before, and some shit no one else could have known. When I lowered the gun, he went ahead to casually rip the clothes of the stunned cop. Showed off his muscles and new body as he did, and a moment later rammed into him deep!' Pulling down his pants to let a fully erect, huge orc cock free from its constraints, Urik wraps his fingers around the girth of his shaft, stroking up and down. 'It was a hot show, with that thick rod going into the little punk!'";
		say "     'When he was done seeding the police bitch and pulled out of the moaning slut, Pete was all, 'Wanna have a turn?' Course I said yes!' Slapping his girthy piece of man-meat into the open palm of his other hand, Urik grins at Spike and the bulge visible in his pants. 'Oooh, does someone like the thought of shafting a squirming punk's ass? Let me tell you, he was tight! Snug around my dick even after taking that orc beercan! I pounded the little bitch, hard and deep, churning up his cum-filled boipussy! And as I was doing so, I got to thinking 'Is he getting tighter?' But that wasn't it - my dick was growing, at the same time as my skin was going green! Man, I was so horny that I didn't even care! Just kept enjoying the snug hole around my prick, right until the point that I added some spunk to the bitch's chute! Then Pete went for him again, followed by another round for me!'";
		WaitLineBreak;
		say "     Swiping up a thick drop of pre from his cum-slit, Urik rubs it over the mushroom head of his thick orc cock, then proudly holds his shaft up. Spike turns his gaze to the side, as not to stare at it[if Stamina of Spike < 50], but can't help looking from the corner of his eye after all. The doberman's nostrils flare as he takes in some scent that seems to fascinate him[end if]. Clearing his throat, Urik continues, 'By the time we were done, we didn't have a piggy there anymore. Nah, the dude had become a proper little orc breeder! Pretty but muscular, with teeny tiny tusks. Not unlike those canines you have there.' With that said, the orc uses his finger to tap Spike's muzzle, drawing a 'Hey!' from the canine and resulting Spike pulling back a little. 'Anyways, I felt as good as ever, and decided to just throw in with the orcs. Hah, going back to that cop station and joining the gangbangs around returning pigs was fun!'";
		say "     Bringing his tale to a conclusion, Urik leans back on the sofa and focuses more on the slow stroke of his dick for a moment. Then he gives Spike a light poke with his elbow. 'If you liked the story, feel free to rub out a nut too. It's just us guys, no need to be shy!' ";
		if Stamina of Spike < 50:
			say "Drawn in by the heat of the moment, Spike pulls his zipper down after a second of hesitation, freeing a red canine rocket that he quickly grabs and starts to stroke. 'That's it boy!' Urik tells him with a grin, followed by a side-by side jerking session that culminates in Urik blasting a thick load of cum all over his ripped chest, with Spike not far behind in reaching his orgasm. This time though, the orc reaches over cupping his hand over the pointy dickhead of his trainee and catching all of his cumshots on his palm. 'What are you doing?' Spike asks in a breathy tone, pushing against Urik's forearm with his free hand but unable to move it in any way. 'Just helping you clean up a bit,' the orc replies nonchalantly, pulling his hand away and making sure nothing drips onto Spike's chest. Then he licks the dobie's seed of his palm, swallowing it with a grin.";
			WaitLineBreak;
			say "     Spike looks at Urik with wide eyes, speechless for a second before saying, 'Err... thanks?' The orc just smiles and pats his arm, 'Anytime, boy!' Spike focuses on the orc, his nostrils widening as he takes in a deep breath, eyes wandering down to the large man's cum-splattered chest. He seems lost in thought for a second, then shakes his head to clear it and starts to get up. 'Thanks for the story, I - I'll go clean up now,' the young man hastily says and walks away, leaving a broadly grinning Urik behind.";
		else:
			say "The doberman looks Urik in the eye and shakes his head, 'Might have been a kinda interesting story, but I don't trust you, Urik. I'll pass.' With that said, he gets up and wanders off, leaving the orc behind. Shrugging, the big green brute jerks himself off to completion quickly, then scoops up his own cum and sucks it off his fingers.";
	else:
		LineBreak;
		say "     With a shrug, you tune the two of them out and turn your attention to other things.";
	increase Stamina of Spike by 1; [either it's 7 or 54 now - storytime with Urik]
	now SpikeEventCooldown is turns;

after going to Sitting Area while (Urik is in Sitting Area and Spike is in Sitting Area and SpikeEventCooldown - Turns > 4 and Spike is not asleep and PlayerControlled of Urik is true and (Stamina of Spike is 7 or Stamina of Spike is 54) and a random chance of 1 in 2 succeeds):
	if debugactive is 1:
		say "     DEBUG: Spike and Urik Train - Stamina of Spike: [Stamina of Spike][line break]";
	try looking;
	project the Figure of Spike_clothed_icon;
	say "     Walking along the upper floor of the library, you glance around and see Spike stand in the sitting area, [if Stamina of Spike is 7]holding a half-full protein shake [else]holding a water bottle[end if] in his hand. Taking a deep swig of it, the young doberman then walks over to Urik, who's busy unrolling two fitness mats in front of the back wall. 'So, what are we going to do today? More strength training?' Spike asks his green-skinned taskmaster, who snorts and shakes his head. 'Not quite, puppyboy. We're gonna do Yoga!' As the slender anthro canine looks at him, visibly perplexed, Urik lets out a deep laugh and lightly slaps him on the back. 'Didn't think I was the type, eh? Well, you gotta blame my nephew for it. The little shit kept going 'Uncle, it's good for you!' and he eventually talked me into trying it out. And it worked, gotta admit that.' Shrugging his very wide, muscled shoulders, the orc adds, 'Thank god I'm no longer an old fart with aching joints, but Yoga's still good stuff.'";
	say "     'If you say so,' Spike comments, then raises one eyebrow and adds, 'Just to be sure, though - I'm not calling you Sensei or Master, or anything like that!' 'That's Karate, you little punk. And do I look like a little white-bearded man to you? Nah, just use my name, this isn't some mystic mountain martial arts training!' Stepping over to place his broad green feet on the end of an extra large excercise mat, Urik nods over to the second one beside his and says, 'Okay, take your place. And you wanna strip down, this stuff may look soft, but you'll get sweaty, that's for sure!' ";
	if Stamina of Spike is 7: [jock / shake path]
		say "Finishing off his protein shake, Spike quickly pulls his mesh shirt off over his head, throwing it in the direction of his man-cave to land in a wadded-up heap just a few steps short. As he then starts to walk past the large orc, Urik holds out his hand in front of the young man and clears his throat with a nod down to his hips.";
		WaitLineBreak;
		project the Figure of Spike_jockstrap_icon;
		say "     The next thing that can be heard is a zipper being lowered as Spike takes the hint, followed by him pushing down his jeans and kicking them off. 'Good boy!' Urik tells his trainee, both for obeying as well as the fact that he's wearing the orc's earlier gift, a black jockstrap with red borders. In response to the praise, Spike's tail starts to wag and the dobie shares a smile with Urik before continuing on to the mat. ";
	else if Stamina of Spike is 54: [just training]
		say "Finishing off his water, Spike quickly pulls his mesh shirt off over his head, throwing it in the direction of his man-cave to land in a wadded-up heap just a few steps short. As he then starts to walk past the large orc, Urik holds out his hand in front of the young man and clears his throat with a nod down to his hips.";
		WaitLineBreak;
		project the Figure of Spike_shirtless_icon;
		say "     'You can forget about that. The pants stay on!' Spike throws back to Urik, meeting and holding his gaze stubbornly until the orc allows him to move on and step on his own mat. ";
	say "'Okay, now stand like this and take a deep breath, then...' the orc begins his instructions of Spike, taking him through basic breathing and pose exercises before demonstrating several poses himself and then watching the anthro doberman attempt them. He keeps up his usual banter and teasing throughout the training set, but at the same time seems genuinely pleased in working out with his canine companion, throwing in praise and a few touches and squeezes of Spike's shoulder.";
	say "     Urik's earlier announcement proves to be nothing but the truth, as the two of them do work up some sweat from the relatively slow but often repeated and held movements. The orc's large, green-skinned body glistens in the light, making watching him move quite a nice show. Beside him, Spike's panting a lot more than usual, his tongue dangling halfway out of his mouth and you can see that the short fur all over his body is matted against his skin. 'Feels good to work out all them muscles, eh boy?' the orc asks with a grin on his face, letting his eyes roam up and down over the young man's slender form. 'Guess you really do know what you're talking about. Thank you for teaching me,' Spike replies in a somewhat breathy tone, tail wagging as he does so. Being thanked brings a satisfied smile to Urik's face and you can't help but feel that his opinion of the dobie just went up a notch.";
	WaitLineBreak;
	say "     The two men continue their workout for a little while longer, before Urik eventually clears his throat and says, 'Okay, got one more thing to show you for this set. Don't worry, it'll come naturally to you! As a puppyboy, you'll have no problem with downward dog!' Not going into any more detail before, Urik takes Spike through the steps of setting his paws on the mat in their proper places, breathing in and out, followed by the words, 'And now you bend forward, putting your hands on the ground and lower your head between them.' He proceeds to demonstrate the pose with practiced ease, followed by standing up and watching Spike attempt the same with somewhat less than optimal results. ";
	if Stamina of Spike is 7: [jock / shake path]
		say "'You're close boy, but there's some things you got to adjust,' Urik comments, taking a step closer and reaching out to touch Spike. 'Okay, first you bend your legs a bit more to allow you to get into position and push your hands further to the front. Let your head hang between the arms and keep the back straight.'";
		say "     The orc's large hands stroke over his trainee's body to help him along, with Urik smiling in satisfaction as the dobie follows his instructions and posture adjustments. 'Good boy! Now raise your ass higher and start to straighten those legs!' is said next by the big man as he grips the side of Spike's hips, fingers covering the furred curve of his buttock while Urik's thumb points at his crotch. Doing as he is told, your canine companion reaches a good beginner's approximation of the downward dog pose, which clearly pleases his instructor. 'Now hold like this, feel how you're stretching your ankles, hamstrings, back and shoulders. Breathe in, and let it out slowly.' Meanwhile, the orc's hand is still halfway covering Spike's ass, but Urik doesn't do anything except giving him a light squeeze or two before pulling it away again. Sliding an arm under the doberman's chest, Urik helps Spike stand up straight after that.";
		WaitLineBreak;
		say "     Smiling and tousling the young man's green hair, Urik gives him a nod of appreciation. 'Good workout! Feels nice, doesn't it?' the orc asks, and Spike replies, 'Yeah, it does. I'm sweaty and a bit exhausted, but that was pretty good.' Urik grins broadly at him as he says, 'We'll have to keep doing it then, eh?! Good, sweaty fun. Get's one's blood pumping too!' With that said, the orc lowers his hand to adjust the half-hard cock visible in his tight stretch-fabric trunks and glances down to Spike's crotch, which is showing a bulge too. 'Oh! I -' the doberman starts to say, moving to cover himself, only to have Urik bat his hand away lightly. 'Relax, boy! When you get worked up with a buddy, that's just gonna happen. Just another part of your body to take care of. Come on, let's let off some steam!' Before Spike can reply, the orc takes hold of his pants and pushes them down in a quick move, kicking them off a second later. He wraps his hand around the large pole of his cock and starts stroking slowly, nodding to Spike to do the same.";
		say "     There is a moment of hesitation as the slender doberman seems torn between walking away and joining in for a side-by-side jerk-off session, before Spike's libido wins out and he pulls the front of his jockstrap aside to free the red rocket of his canine shaft. Seems like Urik hit the right tone with him, leaving Spike to choose and not reaching for his crotch himself. The two men beat off together, with Spike keeping his eyes closed and imagining something, while the orc feasts his eyes on the doberman instead. Eager to get his rocks off, the anthro's rapid jerking brings him close to the edge fairly quickly, as is obvious by his loud panting and the his whole body tensing up. This is just what Urik was waiting for, reaching over to cup his hand over the pointy dickhead of his trainee. As the tip of a finger brushes against the edge of Spike's head, the young man opens his eyes and pants out, 'What are you doing?'";
		WaitLineBreak;
		say "     'Would be a shame to let it go to waste - and a mess to clean up,' Urik replies, now bringing his hand even closer, so the dobie's cock is grinding against his palm while he caresses the tip of Spike's cock. The added stimulation is enough to drive the young man over the edge, letting out a lusty bark as he stiffens, balls throbbing as they send forth a thick spurt of cum to paint Urik's green skin white. Grinning broadly, the orc catches Spike's load, then brings his hand up to lick the sperm off it, watched by a wide-eyed Spike. 'Tasty!' he quips at the anthro dog, finishing off his snack with one last lick before moving on to jerking his own load into the same hand, with the sheer volume of his output threatening to overflow the cupped palm. 'It's good stuff, I love it!' the orc casually comments to his companion while his erection is still pulsing out more cum. 'You want some too?' comes the next question, with him raising the hand to offer it to Spike.";
		say "     The slender doberman quickly takes a step back and shakes his head, replying, 'No thanks, I think I'm good.' At the same time, his nostrils are flaring as he sniffs the air and takes in the scent of Urik's seed - apparently enjoying it, as the tail behind his back wags a little. His face has a bit of an odd expression on it, as if he can't believe that he likes the aroma of orc cum. Meanwhile, Urik proceeds to eat his own load, hungrily gulping it down and sucking on his fingers to get the very last drops, then smacking his lips in satisfaction. 'I look forward to our next session. You go along now, I'll clean up here,' the orc tells Spike, who tucks his jockstrap back in place and then wanders off into his little man-cave.";
	else if Stamina of Spike is 54: [just training]
		say "The young man attempts the stretch, but quickly shows a pinched expression on his face and drops the tension in his body to stand up straight afterwards and tuck at the fabric covering his crotch. 'Not the best outfit to do this one in I guess,' Urik comments with a grin before adding, 'Told ya you should have stripped down.'";
		say "     Spike glances up to meet the orc's eyes, his hands twitching towards the zipper of his tight jeans for a second before freezing halfway there. 'Wait a moment - no! I'm not gonna go bare-ass naked next to you! Hell, I can see your dick in those pants and it's already half-hard!' Looking down, Urik puts a hand on the long bulge of his rather tight stretch-fabric trunks, adjusting himself with a broad grin on his face. 'What? Feeling anxious puppyboy? Think you couldn't take it in your tiny hole? Not that I was planning anything anyways! I'm not supposed to 'force myself on anyone', remember?' The orc makes air-quotes as he says the words, complete with a little eye-roll. 'So, you got nothing to fear. Come on, do it! It's the proper capstone of the set and a great workout for the whole body!' Spike doesn't seem convinced by his words, instead shaking his head. 'I think not. Rather gonna call it a day now.' Blowing out his breath, Urik says, 'Your loss,' then goes back to his stretch and ignores Spike as he walks off.";
		increase the XP of doberman companion by level of doberman companion times four;
		say "     [bold type]Spike has gained [level of doberman companion times four] XP![roman type][line break]";
	increase Stamina of Spike by 1; [8 on the shake path, 55 otherwise]
	now SpikeEventCooldown is turns;

after going to Sitting Area while (Urik is in Sitting Area and Spike is in Sitting Area and SpikeEventCooldown - Turns > 4 and Spike is not asleep and PlayerControlled of Urik is true and (Stamina of Spike is 8 or Stamina of Spike is 55) and a random chance of 1 in 2 succeeds):
	if debugactive is 1:
		say "     DEBUG: Spike and Urik Train - Stamina of Spike: [Stamina of Spike][line break]";
	try looking;
	project the Figure of Urik_clothed_icon;
	say "     Walking along the upper floor of the library, you glance around and see Urik standing against the railing overlooking the lower floor. The big orc is busy playing a little game with himself, which is bouncing tennis balls off the top of the shelves below, timed just right so they bounce across several of the tall stacks. While you're still forming possible comments in your head, like where he got a shopping bag full of tennis balls and if Urik will clean up afterwards, a voice calls out from the side and interrupts your train of thought. Glancing over, you see that it's Spike who shouted, 'Hey Urik!' and the young doberman is now approaching on his lithe paws. 'What? Did you feel an irresistible urge to run after these?' the orc replies with a grin on his face, throwing one of the yellow balls in the air and catching it, then casually flinging the tennis ball over the railing to fall between the rows of bookshelves.";
	say "     Spike finds himself following the ball with his gaze, indeed staring after it for a second before shaking off the impulse to get the tennis ball. Clearing his throat and looking up to meet Urik's eyes, he says, 'Err... no. It's just that I was thinking that it's about time for our training. I'm ready for another session! ";
	if Stamina of Spike is 8: [jock / shake path]
		say "Also, uhm... I was wondering if I could get another protein shake. Kinda been craving the stuff.' A broad smile appears on Urik's face and he reaches out to tousle the young anthro's green hair, with Spike batting at his hand to get him to stop. 'Is that so? Looks like the training is working then! I mean - your body's building mass now, and it needs a bunch of fuel for that of course. Come on, let's get to it then!' Cheerfully, the orc gives Spike's arm a 'light' slap that has him stumbling sideways for a second, then walks towards the back of the sitting area and retrieves a plastic bottle from the top of a quite tall shelf. Having followed his trainer, Spike accepts the drink from Urik, immediately opening it and taking a deep swig of the thick fluid.";
		WaitLineBreak;
		project the Figure of Spike_jockstrap_icon;
		say "     Urik goes to collect the weightlifting set he got for Spike, effortlessly picking the push-bar and its stand up from the corner where it standing. Weights and all, the orc carries it over to Spike, placing the whole thing down over a training mat spread on the floor. Meanwhile, the anthro doberman can't seem to get enough of his shake, apparently lost to the world as he drinks it with greedy swallows. Only when the whole contents of the bottle are gone and Urik is done with the setup does Spike pay attention to his surroundings again, licking the sides of his muzzle as he looks around. 'Man, this time it's really got a kick! I feel like I could juggle with those weights in a moment! Did you change the formula or something?' Urik chuckles at the question, then smiles and explains: 'Told ya, you need the proper stuff to build muscles. That includes an upped dose of liquid protein for you! Okay then, puppyboy - get on the mat!'";
		say "     Tail wagging happily behind his back, Spike pulls his mesh shirt over his head in a swift move, throwing it aside, then proceeds to undo the button and zipper of his jeans. An eye-blink later, he's pushing them down and bending over to free his paws from the bunched-up fabric, quite oblivious to the fact that he's giving Urik a show with his bare ass. You can see the bulge in the orc's stretchy trunks grow visibly as his dick hardens partially, with Urik quickly adjusting it to keep his cock mostly tucked away. Meanwhile Spike lays down on the mat and lay his paws against the bar of the weights, waiting patiently for Urik to step over him to be his spotter. The orc stands ready to catch the weights just in case, and gives his trainee numerous bits of good advice as he goes through training. It is clear that he enjoys teaching Spike quite a bit.";
		WaitLineBreak;
		say "     As some time passes and Spike works up a good sweat, you as well as Urik notice something - the young dobie's jockstap is bulged out strongly, its tent betraying the fact that Spike has got an erection. Thinking to yourself that this must be a side effect of Urik's 'new formula', you watch a smile cross the orc's face, who helps Spike put the weight bar on its rack right after, then hands his trainee some lighter dumbbells that he can hold on one hand each. 'Give me at least fifty lifts with each arm!' Urik grunts as a challenge to the anthro doberman and counts the first five aloud with Spike's movements before he starts to walk around him. Soon arriving next to the stretched-out form of Spike, Urik then crouches down and says loudly, 'Keep going, no matter what! I don't want to see you put down those weights until you're done with your set!' Between his pants, Spike's reply isn't so much words but rather a compliant grunt, and he puts in a new burst of energy to his lifting.";
		say "     'Good boy,' Urik comments with a smile, then adds, 'But we got to fix your pose a little too. Here, bend your knees and brace those paws against the mat.' As he says this, the large orc puts a big green hand on Spike's thigh, squeezing it before sliding his fingers underneath and guiding Spike into a new position with his legs. The dobie is very focused on lifting the weights again and again, so he doesn't really register that Urik touches him quite a bit more than needed, running his fingers up and down the young man's furred thighs and feeling them up. Only when the orc then lays a hand on his bare chest does Spike look over to meet his gaze, panting between lifts, 'What - are you - doing?' 'Just checking your progress. Feels like you've already built a little muscle mass here,' Urik says nonchalantly, covering Spike's left pec with his hand and brushing the side of his thumb over the dobie's nipple.";
		WaitLineBreak;
		say "     'Just keep lifting,' the orc tells his trainee, meanwhile letting his fingers wander down over Spike's naked chest. Soon, he reaches the quite visible tent in the jockstrap covering Spike's crotch and bumps it with the side of his hand, just as the dumbbells are at their highest. 'But what do we have here? Someone's getting excited for their workouts, eh?' Spike glances down, his eyes widening, yet he can't say anything, panting from holding heavy weights lifted in the air right now. Then Urik's other hand is laid on his chest, holding him down with a gentle but firm push as the orc says, 'Don't fret, that happens to many who get really pumped by their training. Actually, why don't we add it to the workout?' With that said, he pulls the fabric of the jockstrap down, hooking it underneath Spike's erection. With the red rocket of his canine cock now standing proud and erect in full view, Urik wraps his fingers around it and starts to stroke him. Slowly, one stroke for each push with the weights.";
		say "     With his big, green-skinned personal trainer to motivate him, both with words as well as a very personal touch, the doberman actually manages to complete the workout, even though he's more than a little tired, and very aroused by the end. As the dumbbells land on the ground with a thud, Urik says with a broad grin, 'And now you'll get your reward!' Taking out all the stops to really jerk Spike off with rapid hand movements, it takes just a few moments before the panting and exhausted canine gasps and thrusts his hips reflexively against the orc's hand. With a quick move, Urik cups his hand over the top of the throbbing shaft, stopping Spike's blasts of cum from making a mess of anything more than his palm. Grinning broadly, the orc then brings his hand up to lick the sperm off it, watched by a wide-eyed Spike. 'Tasty!' he quips at the anthro dog, finishing off his snack with one last lick.";
		WaitLineBreak;
		say "     'I look forward to our next session, now that we know how to motivate you properly. You go along now, I'll clean up here,' the orc tells Spike, who tucks his jockstrap back in place and gets up to collect his clothes before wandering off into his little man-cave. Meanwhile, Urik packs away the weights and the training mat, whistling under his breath and apparently in quite a good mood.";
		increase the XP of doberman companion by level of doberman companion times six;
		say "     [bold type]Spike has gained [level of doberman companion times six] XP![roman type][line break]";
	else if Stamina of Spike is 55: [just training]
		say "Finishing off his water, Spike quickly pulls his mesh shirt off over his head, throwing it in the direction of his man-cave to land in a wadded-up heap just a few steps short. As he then starts to walk past the large orc, Urik holds out his hand in front of the young man and clears his throat with a nod down to his hips. 'Ya really should strip down all the way, puppyboy! You don't wanna get those all sweaty and dirty, do ya?' Spike snorts and shakes his head, 'Dream on, green man. I'm here to train, not give you a strip show.'";
		WaitLineBreak;
		project the Figure of Spike_shirtless_icon;
		say "     'Fine then, - get on the mat!' Urik replies with only a little grumble, watching Spike's ass quite closely as the young doberman walks past to get to the training area. You can see the bulge in the orc's stretchy trunks  twitch a little, with Urik quickly adjusting it before walking after his trainee. Meanwhile Spike has already gotten down on the mat, his hands resting against the bar of the weights, waiting patiently for Urik to step over him to be his spotter. The orc stands ready to catch the weights just in case, and gives his trainee numerous bits of good advice as he goes through training. It is clear that he enjoys teaching Spike quite a bit. After some time passes and Spike works up a good sweat, the orc helps Spike put the weight bar on its rack, then hands the dobie some lighter dumbbells that he can hold on one hand each.";
		say "     'Give me at least fifty lifts with each arm!' Urik grunts as a challenge to the anthro doberman and counts the first five aloud with Spike's movements before he starts to walk around him. Soon arriving next to the stretched-out form of Spike, Urik then crouches down and says loudly, 'Keep going, no matter what! I don't want to see you put down those weights until you're done with your set!' Between his pants, Spike's reply isn't so much words but rather a compliant grunt, and he puts in a new burst of energy to his lifting. 'Bend your knees and brace on the ground with those paws, yeah just like that.' With his big, green-skinned personal trainer to motivate him, the doberman actually manages to complete the workout, even though he's more than a little tired by the end. Urik holds out his hand to pull the canine to his feet, congratulating him and giving his back - and lower back - a pat. 'Good puppy, might just make something out of you yet.'";
		increase the XP of doberman companion by level of doberman companion times four;
		say "     [bold type]Spike has gained [level of doberman companion times four] XP![roman type][line break]";
	increase Stamina of Spike by 1; [8 on the shake path, 55 otherwise]
	now SpikeEventCooldown is turns;



to say SpikeTalk11: [talk about Urik]
	if Stamina of Spike is 1:
		say "     As you bring up Urik, the doberman bristles a little and crosses his arms in front of his chest. 'What about him? The guy's an asshole, that's for sure. Pfft, trying to say that I'm not strong enough for his stupid training. But I'll show him what's what!' Apparently his need to prove himself translates into the young man starting to flex and pose for you too, showing off some nice muscle tone on his lean body. It doesn't really compare to the shredded beast that Urik is, but the dobie is fit and active enough to be a help in combat for you.";
		LineBreak;
		say "     [link](1)[as]1[end link] - Wish him good luck in training with the orc. He's sure to learn a lot.";
		say "     [link](2)[as]2[end link] - Tell Spike that he doesn't need to be a muscle hunk. You like him the way he is.";
		say "     [link](3)[as]3[end link] - Explain that Urik just likes goading people and he shouldn't waste his time reacting to it.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to encourage training, [link]2[end link] to discourage training or [link]3[end link] to turn Spike against Urik.";
		if calcnumber is 1:
			LineBreak;
			say "     Reaching out and giving Spike's shoulder a pat and a little squeeze, you tell the young man that he should train with Urik. It'll be good for him and all that. 'Okay then, [SpikePlayerAddress]! I'm gonna show that green-skinned brute what I'm made of!'";
		else if calcnumber is 2:
			LineBreak;
			say "     Stepping up and throwing an arm around Spike's shoulders, you pat his chest and tell him that maybe he shouldn't train with the orc. Being lithe and quick on his paws is quite something already, and in trying to be a muscle hunk, he could very well trade down. Spike almost soaks up each word of praise you give him, his chest swelling a little and the tail behind his back starting to wag. 'Really? I mean, yeah totally! I'll focus on getting quicker instead! I wanna be my best for you, [SpikePlayerAddress]!'";
			now Stamina of Spike is 100; [training ended]
		else if calcnumber is 3:
			LineBreak;
			say "     Stepping up and putting a hand on Spike's shoulder, you look into his eyes and tell him that he really shouldn't pay any mind to what Urik's saying. The orc just likes to goad and push people, and reacting to it just makes things worse. He'll just find new things to rib him with. 'But I wanna show that asshole that...' Spike starts to reply angrily, only to stop and say, 'Oh! Uhm, I'm doing exactly what he wanted, aren't I? Damn, you're right [SpikePlayerAddress]! Enough of this then. I'll keep my distance and won't pay him no mind anymore.'";
			now Stamina of Spike is 100; [training ended]
	else if Stamina of Spike is 2 or Stamina of Spike is 3:
		say "     As you bring up Urik, the doberman stiffens a little, putting his hands on his hips and letting out a breath. 'What can I say about him? The guy's an asshole, that's for sure. Kept calling me weak and 'puppy-boy', just because I can't lift that monster set of weights he's got from the get-go!' Apparently he feels the need to convince himself of his own strength, as the doberman raises one arm and starts to flex his bicep, stroking over it with the free hand. 'I feel ready for a fight already, but I'll be an even better companion for you once I'm through that ridiculous training routine of his. Hope the protein shakes will help too. Good stuff!' Spike adds next, putting on a determined expression and subconsciously licking his muzzle.";
		LineBreak;
		say "     [link](1)[as]1[end link] - Wish him good luck in training with the orc. He's sure to learn a lot.";
		say "     [link](2)[as]2[end link] - Tell Spike that he doesn't need to be a muscle hunk. You like him the way he is.";
		say "     [link](3)[as]3[end link] - Explain that Urik might actually be dosing him with something, possibly orc cum.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to encourage training, [link]2[end link] to discourage training or [link]3[end link] to turn Spike against Urik.";
		if calcnumber is 1:
			LineBreak;
			say "     Reaching out and giving Spike's shoulder a pat and a little squeeze, you tell the young man that he should train with Urik. It'll be good for him and all that. 'Okay then, [SpikePlayerAddress]! I'm gonna show that green-skinned brute what I'm made of!'";
		else if calcnumber is 2:
			LineBreak;
			say "     Stepping up and throwing an arm around Spike's shoulders, you pat his chest and tell him that maybe he shouldn't train with the orc. Being lithe and quick on his paws is quite something already, and in trying to be a muscle hunk, he could very well trade down. Spike almost soaks up each word of praise you give him, his chest swelling a little and the tail behind his back starting to wag. 'Really? I mean, yeah totally! I'll focus on getting quicker instead! I wanna be my best for you, [SpikePlayerAddress]!'";
			now Stamina of Spike is 100; [training ended]
		else if calcnumber is 3:
			LineBreak;
			say "     Stepping up and putting a hand on Spike's shoulder, you look into his eyes and tell him that you worry about there being more than just a protein shake in what Urik gave him to drink. There's a good possibility that it had at least some orc cum in it. The young doberman gapes at you, then sticks out his tongue in disgust, running his fingers over it as if to scrape off some horrible taste. 'Eww, really? Bleh, that's just... who would do such a thing? Oh wait, a total asshole would. Almost forgot who we're talking about! I think I need some mouthwash.' With the young man being quite obviously repelled by the thought of Urik's seed in his mouth, you can be sure that he won't accept any more drinks from the orc.";
			now Stamina of Spike is 50; [Spike won't accept any drinks from Urik now, still training though]
	else if Stamina of Spike is 4 or Stamina of Spike is 5 or Stamina of Spike is 6: [training always with shakes]
		say "     As you bring up Urik, the doberman stiffens a little, putting his hands on his hips and letting out a breath. 'What can I say about him? The guy's an asshole, that's for sure. But he's been fairly civil lately. Seems he really does want to train me. Even went so far to get new equipment just for me, and he's preparing those drinks too.' As he says the last words, the dobie almost automatically licks his lips. Seems like he's got a light craving for more of his new favorite drink. A moment later, he adds with a shrug, 'Don't think we'll be the best of friends anytime soon, but I can stand him, more often than not. Also, look - I think it's working!' With that said, the dobie peels off his shirt and does a little posing. From what you can see, there's a little more tone to his muscles, and he smiles happily as you say so.";
	else if Stamina of Spike is 4 or Stamina of Spike is 7: [Urik told his tale]
		say "     As you bring up Urik, the doberman stiffens a little, putting his hands on his hips and letting out a breath. 'What can I say about him? The guy's a character, that's for sure. Did he ever tell you how he became an orc? Quite a tale. Other than his usual 'puppyboy' bullshit, he's been fairly civil lately. Seems he really does want to train me. Even went so far to get new equipment just for me, and he's preparing those drinks too.' As he says the last words, the dobie almost automatically licks his lips. Seems like he's got a light craving for more of his new favorite drink. A moment later, he adds with a shrug, 'I can stand him, more often than not. Also, look - I think it's working!' With that said, the dobie peels off his shirt and does a little posing. From what you can see, there's a little more tone to his muscles, and he smiles happily as you say so.";
	else if Stamina of Spike is 50 or Stamina of Spike is 51:
		say "     As you bring up Urik, the doberman bristles a little and crosses his arms in front of his chest. 'What about him? The guy's an asshole, that's for sure. Pfft, trying to say that I'm not strong enough for his stupid training. But I'll show him what's what! And definitively not accept any drinks from him in the future!' Apparently his need to prove himself translates into the young man starting to flex and pose for you too, showing off some nice muscle tone on his lean body. It doesn't really compare to the shredded beast that Urik is, but the dobie is fit and active enough to be a help in combat for you.";
		LineBreak;
		say "     [link](1)[as]1[end link] - Wish him good luck in training with the orc. He's sure to learn a lot.";
		say "     [link](2)[as]2[end link] - Tell Spike that he doesn't need to be a muscle hunk. You like him the way he is.";
		say "     [link](3)[as]3[end link] - Explain that Urik just likes goading people and he shouldn't waste his time reacting to it.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to encourage training, [link]2[end link] to discourage training or [link]3[end link] to turn Spike against Urik.";
		if calcnumber is 1:
			LineBreak;
			say "     Reaching out and giving Spike's shoulder a pat and a little squeeze, you tell the young man that he should train with Urik. It'll be good for him and all that. 'Okay then, [SpikePlayerAddress]! I'm gonna show that green-skinned brute what I'm made of!'";
		else if calcnumber is 2:
			LineBreak;
			say "     Stepping up and throwing an arm around Spike's shoulders, you pat his chest and tell him that maybe he shouldn't train with the orc. Being lithe and quick on his paws is quite something already, and in trying to be a muscle hunk, he could very well trade down. Spike almost soaks up each word of praise you give him, his chest swelling a little and the tail behind his back starting to wag. 'Really? I mean, yeah totally! I'll focus on getting quicker instead! I wanna be my best for you, [SpikePlayerAddress]!'";
			now Stamina of Spike is 100; [training ended]
		else if calcnumber is 3:
			LineBreak;
			say "     Stepping up and putting a hand on Spike's shoulder, you look into his eyes and tell him that he really shouldn't pay any mind to what Urik's saying. The orc just likes to goad and push people, and reacting to it just makes things worse. He'll just find new things to rib him with. 'But I wanna show that asshole that...' Spike starts to reply angrily, only to stop and say, 'Oh! Uhm, I'm doing exactly what he wanted, aren't I? Damn, you're right [SpikePlayerAddress]! Enough of this then. I'll keep my distance and won't pay him no mind anymore.'";
			now Stamina of Spike is 100; [training ended]
	else if Stamina of Spike > 51 and Stamina of Spike < 100: [training without shakes]
		say "     As you bring up Urik, the doberman stiffens a little, putting his hands on his hips and letting out a breath. 'What can I say about him? The guy's an asshole, that's for sure. But, well - besides the whole 'protein shake' yuck, he's been fairly civil lately. Seems he really does want to train me.' With a shrug, he adds, 'Don't think we'll be the best of friends anytime soon, but I can stand him, more often than not. Also, look - I think it's working!' With that said, the dobie peels off his shirt and does a little posing. From what you can see, there's a little more tone to his muscles, and he smiles happily as you say so.";
	else if Stamina of Spike is 100: [training ended]
		say "     As you bring up Urik, the doberman bristles a little and crosses his arms in front of his chest. 'That dude? What an asshole - a wyvern can eat him for all I care. Gonna keep my distance from now on, that's for sure!' With a throwing-away gesture, Spike blows the topic off, and you talk a little about other matters instead.";


Section 8 - NPC Interaction (Urik, befriended)

after going to Sitting Area while (Urik is in Sitting Area and Spike is in Sitting Area and PlayerFriended of Urik is true and Dexterity of Spike is 0 and Libido of Spike < 40):
	if debugactive is 1:
		say "     DEBUG: Spike MEETS URIK - Dexterity of Spike: [Dexterity of Spike][line break]";
	try looking;
	if "Private Breeder" is listed in Traits of Urik: [Urik's not supposed to sex up anyone]
		say "     Walking along the upper floor of the library, you see Urik ahead of you, leaning against one of the walls and appearing a little bored. 'Hey boss,' he says, giving you a nod as he notices your presence. Just a short moment later, Spike appears from the back of the room where he's made his camp, attempting to walk past the orc. 'So, still keeping the dobie, eh?' Urik comments, holding out a thick arm to block the way for your companion. 'Ran into a few such puppies during my hunting trips in the city. Tight little fuckers, really twitching on your dick and they start wagging their short tails when they're well-filled up with cum, hah!' Ears drawing back in annoyance, Spike says, 'Hey! I'm not a sex toy, asshole!' He puts both of his hands on Urik's forearm and tries to push it out of the way, without much success. Instead, the orc grunts, 'Wanna start something, puppyboy?' and easily shoves Spike back a few steps with a swipe of his arm. Then the orc reaches out to grab Spike, only to find himself snatching at empty air, with the lithe dobie having ducked from his grasp and jumped to the side. With a kick at the side of the orc's knee, he makes the much larger male stumble and call out, 'Stupid little mutt! I'll show you how to behave!'";
	else:
		say "     Walking along the upper floor of the library, you see Urik ahead of you, leaning against one of the walls and appearing a little bored. 'Hey boss,' he says, giving you a nod as he notices your presence. Just a short moment later, Spike appears from the back of the room where he's made his camp, attempting to walk past the orc. 'So, still keeping the dobie, eh?' Urik comments, holding out a thick arm to block the way for your companion. 'Had a few of such puppies during hunting trips in the city. Tight little fuckers, and they're cute when they wag their short tails as you thrust in! This one'll be a nice bedwarmer too - come on, let me break him in for you!' Before you can react, the orc warrior is already reaching out to grab Spike, only to find himself snatching at empty air, with the lithe dobie having ducked from his grasp and jumped to the side. With a kick at the side of the orc's knee, he makes the much larger male stumble and call out, 'Stupid little mutt! I'll show you how to behave!'";
	say "[SpikeMeetsUrik_Friend]";

after going to Sitting Area while (Urik is in Sitting Area and doberman companion is listed in companionList of Player and PlayerFriended of Urik is true and Dexterity of Spike is 0 and Libido of Spike < 40): [excludes forcefully broken in Spike]
	if debugactive is 1:
		say "     DEBUG: Spike MEETS URIK - Dexterity of Spike: [Dexterity of Spike][line break]";
	try looking;
	if "Private Breeder" is listed in Traits of Urik: [Urik's not supposed to sex up anyone]
		say "     Walking along the upper floor of the library, you come up to Urik, who's standing at the railing overlooking the lower floor of the library, appearing a little bored. As you come near, the large orc stands up straight and nods to you. 'Hey boss,' he says, then glances past you and a smile starts to spread across his face. 'Still keeping the dobie pet, eh? Ran into a few such puppies during my hunting trips in the city. Tight little fuckers, really twitching on your dick and they start wagging their short tails when they're well-filled up with cum, hah! Urik comments, holding out a thick arm to block the way for your companion. Ears drawing back in annoyance, Spike says, 'Hey! I'm not a sex toy, asshole!' He puts both of his hands on Urik's forearm and tries to push it out of the way, without much success. Instead, the orc grunts, 'Wanna start something, puppyboy?' and easily shoves Spike back a few steps with a swipe of his arm. Then the orc reaches out to grab Spike, only to find himself snatching at empty air, with the lithe dobie having ducked from his grasp and jumped to the side. With a kick at the side of the orc's knee, he makes the much larger male stumble and call out, 'Stupid little mutt! I'll show you how to behave!'";
	else:
		say "     Walking along the upper floor of the library, you come up to Urik, who's standing at the railing overlooking the lower floor of the library, appearing a little bored. As you come near, the large orc stands up straight and nods to you. 'Hey boss,' he says, then glances past you and a smile starts to spread across his face. 'Still keeping the dobie pet, eh? Had a few dobies during hunting trips in the city. Tight little fuckers, and they're cute when they wag their short tails as you thrust in! This one'll be a nice bedwarmer too - come on, let me break him in for you!' Before you can react, the orc warrior is already reaching out to grab Spike, only to find himself snatching at empty air, with the lithe dobie having ducked from his grasp and jumped to the side. With a kick at the back of the orc's knee, he makes the much larger male stumble and call out, 'Stupid little mutt! I'll show you how to behave!";
	say "[SpikeMeetsUrik_Friend]";

to say SpikeMeetsUrik_Friend:
	say "     'A little help, [SpikePlayerAddress]?' the doberman shouts, seeing himself confronted with the towering orc snarling at him and cracking his knuckles in preparation of a beatdown. To prevent the situation from escalating any further, you put two fingers in your mouth and give them a sharp whistle that draws all attention to you. Clearing your throat, you introduce them to each other, explaining that Urik is a strong orc warrior that joined you and that he will be living in the library from now on. 'Huh? But you've got me, why did you bring him in?!' Spike comments, still in a defensive position next to the green-skinned brute, and apparently also a bit competitive for your attention. Reaching out to pat his shoulder, you tell him to calm down, explaining that if you're going to take on the rest of the city. It's just that you need everyone you can get on your side. After a little pause, the young man takes a deep breath and replies, 'Fine, I guess.' He still doesn't seem completely onboard with having such a big brute as a neighbor.";
	if "Selective Breeding" is listed in Traits of Urik: [player decides whom he can fuck]
		say "     Turning to Urik, you give him a stern look and express your disappointment at him so easily forgetting that you'll be the one who decides if and whom he gets to fuck. So he has no right to try to molest anyone, least of all [if MaxHP of Spike is 1]your [italic type]son[roman type], [end if]or even just someone whom you've invited to be your companion! 'Yeah, right!' Spike barks at the orc from the side, with you having to wave him down to stop the canine from interfering. ";
	else if "Molestation Detox" is listed in Traits of Urik: [gave Urik a time-out for forcing himself on others]
		say "     Turning to Urik, you give him a stern look and express your disappointment at him so easily forgetting what you talked about in regards to becoming physical with others. He was trying to molest someone, then get into a fight at the drop of a hat when that didn't work. On top of that, Spike is [if MaxHP of Spike is 1]your [italic type]son[roman type], and [end if]someone whom you've invited to be your companion! So they should work together, not have infighting right here in their home! 'Yeah, right!' Spike barks at the orc from the side, and you give him a small wave to stop the canine from interfering. ";
	else if "Private Breeder" is listed in Traits of Urik: [Urik's not supposed to touch anyone] [TODO: adjust if the player has a romantic relationship with Spike]
		say "     Turning to Urik, you give him a stern look and express your disappointment at him going on about his previous fucks, offending Spike and beginning a scuffle with him. You don't really want to hear about others he bedded, now that the orc is with you. On top of that, he should think before getting into a fight with someone [if MaxHP of Spike is 1]your [italic type]son[roman type], [end if]or even just someone whom you've invited to be your companion!' They should work together, not have infighting right here in their home! 'Yeah, right!' Spike barks at the orc from the side, and you give him a small wave to stop the canine from interfering. ";
	else if "Stud" is listed in Traits of Urik or "Everything Goes" is listed in Traits of Urik: [he may fuck others]
		say "     Turning to Urik, you give him a stern look and express your disappointment at him so easily making assumptions and becoming aggressive towards another who is living in your home. He should have thought before he acted, trying to molest [if MaxHP of Spike is 1]your [italic type]son[roman type], [end if]or even just someone whom you've invited to be your companion!' ";
	else: [default, before Urik's behavior is set]
		say "     Turning to Urik, you tell him in no uncertain terms that Spike is [if MaxHP of Spike is 1]your [italic type]son[roman type], and [end if]someone you've invited to be your companion for exploration of the city! Or course he can't just grab and pound him! ";
	say "Eyes widening as he hears your words, Urik [if MaxHP of Spike is 1]bursts out with, 'Oh, shit! This is [italic type]your[roman type] boy? I'm sorry [UrikPlayerAddress]!' clearly admitting he was wrong. [else]pulls a face and begrudgingly says, 'I'm sorry [UrikPlayerAddress].' [end if]Holding his gaze for a few seconds to make your meaning settle in, you add that he needs to control himself better in the future, with Urik nodding to show that he heard you. The doberman by your side lets out a huff through his nose as he sees Urik give in, with a bit of a smirk appearing on his muzzle.";
	WaitLineBreak;
	say "     For a second, you think the matter is dealt with now, but the orc goes on to looking the Spike up and down and snorts. 'He might be quick, but that won't help much if someone gets a grip on him. Hear that boy? You need some more strength in the arms!' Proudly demonstrating what he means by flexing a bicep thicker than Spike's thigh, Urik grins down at the young dobie. 'This is what a proper man looks like! Not a stick-figure like yourself!' Laughing as he points at Spike, Urik shakes his head, 'Think you'd be able to fight off a wyvern or anything actually dangerous, not that piddly little chickenshit street fighting? You'd be in a heap on the ground in a moment! What are you gonna do? Run back to mommy and hide?' 'Hey!' Spike replies, 'I'm plenty strong, you asshole!' Snorting as he goads further, Urik reaches out to pat Spike's head, with the canine batting away his hand angrily.";
	say "     'If you don't want to stay a lapdog and be actually useful, we'll bulk you up. You brave enough to try, puppy?' His hackles raised in defiance, Spike barks back 'Sure I am! Bring it on, you bastard!' Stepping up, Urik grins down at him, then holds out his bear-paw of a hand. 'Fine then, you're gonna join me for some strength training every day! Or are you gonna wimp out after all?'";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Let them shake on it. Gaining some strength will do Spike good.";
	say "     ([link]N[as]n[end link]) - Command Urik to stop it. Enough of his teasing, he should just leave Spike alone.";
	if Player consents:
		LineBreak;
		say "     You stand back and simply watch as Spike shakes Urik's hand, sealing the deal between the two men. 'Not as stupid as you look, hah!' the orc says with a grin, placing a hand on the doberman's shoulder and pulling him closer. 'Gonna work your puppy over till he's a proper man, [UrikPlayerAddress]!' he adds with a nod to you, ";
		if "Private Breeder" is not listed in Traits of Urik:
			say "after which he lets his hand wander further down, groping Spike's ass and drawing a defiant bark from the young man as he jumps back from his reach. ";
		else:
			say "after which he gives Spike's ass a challenging little slap, drawing a surprised bark from the young man. ";
		say "Giving the orc a sharp reminder not to go too far, you have him promise to be at his best behavior. After giving a grunt in assent, Urik walks off, chuckling to himself as he leaves. 'Hope I didn't make a mistake agreeing to this,' Spike says in a wary tone, then shrugs to himself. 'I did wanna get stronger anyways though.'";
		now Dexterity of Spike is 1; [they met and Urik goaded Spike into training]
	else:
		LineBreak;
		say "     Calling the orc's name in a sharp tone of voice, you tell Urik to cut it out and leave Spike in peace. 'Fine [UrikPlayerAddress], if you say so. But how much use will he be for you if he just hides behind you in a fight? Not strong enough to stand on his own, bah!' the large green male grumbles under his breath and stomps off. '[if MaxHP of Spike is 1]Bitchy little daddy's boy[else]Bet you'd have been too weak a bitch anyways[end if],' he not quite whispers to the doberman before leaving. Watching him go, Spike shakes his head, 'Not a good day for him or what? That sure is one grumpy orc, [SpikePlayerAddress].' With a shrug, you explain that Urik still has to adapt to his new role in some ways. He's still quite used to being the biggest and baddest out there.";
		if MaxHP of Spike is 1:
			say "     Then you recount what Urik went through in the orc lair, and the incident that put him into that position, down to the breaking of Toven's arm. The big brute has it in him to overreact badly if pushed. ";
			if "Molestation Detox" is listed in Traits of Urik:
				say "You're trying to get him better, but it's a long process, and all that. ";
			say "'Oh,' Spike replies, looking after Urik's receding form. 'I'll keep my distance then.'";
		now Dexterity of Spike is 100; [Player shut down the workout path]
	if MaxHP of Spike is 1:
		add "Spike_Player_Son" to Traits of Urik; [he knows]
	now SpikeEventCooldown is turns;

after going to Sitting Area while (Urik is in Sitting Area and Spike is in Sitting Area and SpikeEventCooldown - Turns > 4 and Spike is not asleep and PlayerFriended of Urik is true and Dexterity of Spike is 1 and a random chance of 1 in 2 succeeds):
	if debugactive is 1:
		say "     DEBUG: Spike and Urik Train - Dexterity of Spike: [Dexterity of Spike][line break]";
	try looking;
	project the Figure of Spike_shirtless_icon;
	say "     Walking along the upper floor of the library, you see Urik standing over Spike lying on the ground, stretched out on a training mat wearing nothing but his jeans. He's got his big green feet planted to the left and right of the doberman's head, bending a little forward to keep his hands on the set of weights that Spike is visibly struggling with. Given their relative positions, this means that the dobie can't help but stare up at Urik's crotch and ass, which the orc seems well aware of, crouching fairly low every time he assists with the lifting. The dobie makes a smart-ass comment of, 'Man, can't you get some proper pants? Got half your ass hanging out back there!' ";
	if "Private Breeder" is listed in Traits of Urik: [Urik's not supposed to touch anyone]
		say "Urik laughs in reply, then says, 'What, you jealous? Gotta look the best for the [UrikPlayerAddress]!' ";
	else: [default]
		say "Urik laughs in reply, then says, 'You can look, but that's it! This ass isn't for you, puppy! Just gotta look the best for the [UrikPlayerAddress]!' ";
	say "Glancing at the weights, you see that they're of the self-made variety, consisting of a road-sign pole, with both ends punched through the centers of several manhole covers. The weighty piece of equipment is clearly sized for the massive orc and far too heavy for Spike, with Urik doing most of the lifting in a very visible fashion as your [if MaxHP of Spike is 1]son[else]dobie companion[end if] tries to push upwards.";
	say "     To rub it in a bit more the towering orc goads his trainee with the words, 'Too much for you, little dog boy? Should I go and see if I can loot some baby weights somewhere?' A defiant growl rolls up from the depth of Spike's throat and he grunts, 'No! I can do this!' The orc lets out an amused snort at Spike's insistence, followed by the words, 'At least you have some spunk, boy! The will to keep going is what you need most! Now give me another twenty reps!' Swallowing the words of a reply as he gulps at the added challenge, Spike strains his muscles to push the pole up again and again, sweat matting his fur as he continues with the exercise Urik demands. By the time the orc's deep voice says, '..., nineteen, twenty!' your dobie companion is panting loudly, letting his rubbery arms drop down to the mat in exhaustion. He groans tiredly as Urik carries his weight to the side, setting it down in some deep grooves in the floor that must have been made by dropping the thing a bit too quickly.";
	WaitLineBreak;
	say "     Strolling back to the young doberman, Urik grins down at him and grabs hold of Spike's arm, effortlessly pulling the other man up to stand next to him. 'Just gotta do workouts like this two or three times a day for some time and we might make something out of you yet, boyo!' the orc says in a cheerful tone with a broad smile, while Spike gulps and looks wide-eyed at him. 'Err - three times a day?!' he gasps out, wavering a little on weak legs until Urik slips an arm around his side, his large hand gripping the doberman's chest under the armpit. 'Sure! You don't wanna stay a little stick-figure of a guy, do you?! I'll teach ya what you need to know.' 'I - I don't even know if I'm strong enough to pick my pants back up from over there. My arms are just done for now,' Spike says somewhat defeatedly, leading to Urik patting his slender chest. 'Now, now, you don't wanna give up that quick, eh? You've got it in you. Just might need to have some help. Can't build some muscle out of nothing.'";
	say "     With that said, the towering orc leads his trainee over to one of the still-standing bookshelves, grabbing a plastic bottle with the logo of a popular energy drink from it. It looks fairly tiny between his fingers and you can mostly just see the bright plastic cap on its wide neck. The orc must have gone out of his way to find the stuff somewhere, preparing for his training with Spike. As the dobie opens the bottle, you can faintly hear its freshness seal pop, followed by him taking a deep swig of clear, lime-green liquid. 'Mhh, not as bad as I thought, but it still tastes like they cooked it up on a lab. What's this supposed to be, even?' he gives as a verdict, looking down at the bottle. 'Eh? I guess people can't complain about the taste if they didn't even model it after anything real and just say 'Taste the Unbridled Spirit!' on here. Oh well.' Urik puts a large hand on Spike's shoulder and squeezes it, 'You'll get used to it. That stuff will give you new energy and we'll continue the workouts soon.' With that said, Urik strolls over to the spot he usually leans against the railing overlooking the lower floor. Left behind, Spike decides to sit on the nearby sofa for a little while, casually finishing off his drink.";
	increase the XP of doberman companion by level of doberman companion times four;
	say "     [bold type]Spike has gained [level of doberman companion times four] XP![roman type][line break]";
	now Dexterity of Spike is 2; [Spike got his first (normal energy) drink]
	now SpikeEventCooldown is turns;

after going up from Grey Abbey Library while (Urik is in Sitting Area and Spike is in Sitting Area and SpikeEventCooldown - Turns > 4 and Spike is not asleep and PlayerFriended of Urik is true and Dexterity of Spike is 2 and a random chance of 1 in 2 succeeds):
	if debugactive is 1:
		say "     DEBUG: Spike and Urik Train - Dexterity of Spike: [Dexterity of Spike][line break]";
	try looking;
	project the Figure of Spike_shirtless_icon;
	say "     Coming up the stairs to the upper floor of the library, you see a shirtless, sweaty Spike flashing past the upper end of the steps. He's closely followed by Urik whose longer legs and wider strides make it fairly easy for him to chase the dobie, all the while shouting things at his trainee. 'You'll wanna run faster boy when a horny dude runs after you. Unless you wanna be caught and bent over the railing, eh puppy?' Making a lunge and giving the young man's back a push with his large hand, Urik drives Spike to a sprint, following after him in yet another circuit of the upper library floor. When they soon come around from the other direction, Spike starts to slow down a little as he sees you, calling out the words, 'Hey, [SpikePlayerAddress]!' But before he can say anything more, Urik's close up behind him and shouts, 'DID I SAY STOP, PUPPY?' driving his trainee in front of himself like a drill sergeant. He gives you a little wink to the side, showing that he saw you.";
	say "     Quietly chuckling to yourself about how much Urik seems to enjoy the drill instructor role, you busy yourself with some other things, like having a look out the windows to observe the approaches to the library for example. While you do that, the two men continue running without pause, with Spike panting louder every time he passes. Eventually, the young man can't help but stumble to a stop, bracing his upper body with his arms on both thighs as he gasps for breath. Stepping up close to tower over him, Urik gruffly remarks, 'That's it? Already winded, boy? With this little stamina, you might just outrun a street dog. A three-legged one, with fleas!' Not really ready to give any sort of verbal reply, Spike shows the orc his middle finger, which makes Urik laugh. 'Fun aside, I'm impressed. Ya didn't whine or beg, just kept running. Good doggie! That deserves a reward. Here, have another energy drink!'";
	WaitLineBreak;
	say "     With that said, the towering orc walks a few steps and grabs a plastic bottle out of one of the bookshelves. It bears the logo of a popular energy drink from it, looking fairly tiny between his fingers and you can mostly just see the bright plastic cap on its wide neck. With a broad grin on his face, Urik holds the bottle out to Spike. 'Drink up, it'll be good for you!' As the dobie opens the bottle, you can faintly hear its freshness seal pop, followed by him taking a deep swig of clear, lime-green liquid. 'Bleh, all that tastes of is sweetness and chemicals,' the dobie says with a sigh, but he keeps drinking. 'Then concentrate on drinking it quicker instead! You need to refill your energy and we'll continue the workouts soon.' Grinning in obvious satisfaction, the orc gives Spike's back a friendly slap. 'Just imagine having muscles like this!' With that, he goes into a full-on series of poses, showing off his orcish, ripped physique. Spike looks at him somewhat enviously, staring at what the green-skinned brute flexes and shakes in front of him.";
	say "     'Go on, touch it!' Urik prods him along, lowering his bulging bicep towards the doberman, who reaches out to lay his hand on it. There's a short while of what might be called muscle worship, with Spike rubbing and squeezing the orc, his tail wagging. 'That's quite something, your muscles I mean,' the anthro says admiringly. ";
	if "Private Breeder" is not listed in Traits of Urik:
		say "'I could show you some other parts of me that'd blow your socks off puppyboy,' Urik replies, grinning broadly as he makes the offer. Spike freezes in motion as he hears this, staring straight ahead with his muzzle almost touching Urik's chest before he shakes out of it and takes a step back. 'Just offering, eh?' the orc tells him with a wink and starts another set of flexes, but Spike doesn't let himself get drawn into touching him again, instead making excuses and hurrying off towards his camp and bedding. As the dobie leaves, Urik looks after him with a grin.";
	else:
		say "'I got another muscle down here, really thick and strong. Not that you could handle it, even if it was yours to take, puppyboy,' Urik replies, grinning broadly as he teases his trainee. Spike freezes in motion as he hears this, staring straight ahead with his muzzle almost touching Urik's chest before he shakes out of it and takes a step back. 'Um, I - I think I'm good,' the young man stammers, suppressing the reflexive urge to throw back that he can take anything, given the topic of conversation. Urik grins broadly and starts another set of flexes, explaining the names of each part and how best to work them out. The two of them spend some time like that, until the orc eventually finishes his posturing and they walk over to their usual hangout spots.";
	increase the XP of doberman companion by level of doberman companion times four;
	say "     [bold type]Spike has gained [level of doberman companion times four] XP![roman type][line break]";
	now Dexterity of Spike is 3; [Spike got his second (normal) drink]
	now SpikeEventCooldown is turns;

after going to Sitting Area while (Urik is in Sitting Area and Spike is in Sitting Area and SpikeEventCooldown - Turns > 4 and Spike is not asleep and PlayerFriended of Urik is true and (Dexterity of Spike is 3 or Dexterity of Spike is 50 or Dexterity of Spike is 51) and a random chance of 1 in 2 succeeds):
	if debugactive is 1:
		say "     DEBUG: Spike and Urik Train - Dexterity of Spike: [Dexterity of Spike][line break]";
	try looking;
	project the Figure of Spike_clothed_icon;
	say "     Walking along the upper floor of the library, you glance around and see Spike sitting on a chair nearby, slowly paging through a magazine. For a second, you wonder what he's reading, until the question answers itself as he turns it ninety degrees and spreads out the centerfold. Must be a porn mag he looted somewhere. The dobie's tail is wagging behind his back and moves one hand down to his pants, either to adjust his bulge or to flat out unzip and start stroking. Sadly (for him) Spike's fun-time ends before it can begin, as Urik strides towards the anthro canine a moment later, carrying two weighty sports bags. The grinning orc drops his burden on the ground directly behind his trainee, creating a loud crash of clinking metal and creaking wood that you can literally feel through the floorboards.";
	say "     Spike's completely surprised by the appearance of Urik and the accompanying noise, jumping out of his chair in shock and whirling around, with the magazine going flying out over the upper floor railing and vanishing from sight as it drops. 'What the fuck?!' the young man shouts in shock, gaping wide-eyed at Urik. The orc snorts in amusement, his nostrils flaring as he takes in the scent of pre-cum in the air around Spike. Urik gets a far-away look in his eyes for a second, then shakes out of it and crosses his arms in front of his wide, muscular chest. 'Heya slut-puppy, I got some presents for ya! Cool your jets and have a look. You should be thankful when I go out of my way and grab equipment just for you!' Spike is still fairly shaken up by the surprise, but does react to the prompting from the orc by crouching down and pulling open the zipper on one of the bags. He raises his eyebrows at what he finds, then reaches in to lift a metal disc with a hole in the middle from it. Looks like part of an adjustable weightlifting set. Urik must have decided that the self-made orc gear he has was just too much for the dobie.";
	WaitLineBreak;
	say "     After retrieving several more metal discs and starting to stack them by weight, Spike glances up at the orc and opens his mouth, hesitating a second or two before he finds his words. 'Uhm - Thank you, Urik. This stuff will actually be useful for my training.' The green-skinned brute smiles down at him and replies gruffly, 'It's fine. Gotta get you in shape somehow so you can properly help [if MaxHP of Spike is 1]your daddy[else]the [UrikPlayerAddress][end if] in a fight. Even if it means collecting some baby weights that even a newborn orcling could throw around.' Spike rolls his eyes at the ribbing he gets, but still wags his tail a little bit as he nods to the orc, then turns back to organizing what appears to have been randomly stuffed into the sports bags. Meanwhile, Urik wanders over towards one of the still-standing shelves, reaching up to grab another of his energy drink bottles from all the way on top of it, too high to reach without a ladder for most people but him.";
	say "     Then he walks back towards his trainee, calling Spike's name and holding out the drink to him. 'Thanks,' the dobie tells him, looking down at the bottle in his hand, 'Man, I guess I really should stop complaining about the funky taste of this stuff. I mean, you found a supply of the stuff in the midst of all this chaos, just for me.' That said, he reaches out to pat Urik's arm, with the orc covering his hand with a much larger one. 'Ah, that was nothing, pup. Gotta keep my little fighter hydrated and all that good shit!' Soon after setting the bottle down on the ground and finally digging out the lifting bar from the second sports bag, the doberman lays it out with all the weight discs and continues to sort the rest of the gear, helped by Urik crouching down next to him. Once they have arranged the whole weightlifting set in neat and tidy stacks, the orc helps Spike assemble the set of weights.";
	WaitLineBreak;
	say "     'Come on, let's get you started. And take off that shirt, you'll just get it sweaty otherwise,' Urik then tells the dobie, his eyes ";
	if "Private Breeder" is not listed in Traits of Urik:
		say "unashamedly checking out the other male's chest as he does so. ";
	else:
		say "reflexively focusing on the other male's chest as he does so, but Urik looking away quickly as he seems to remember you wanting to be exclusive with him. "; [TODO: Adjust if the player starts a relationship with Spike]
	say "Coming to a broad-legged stance, the orc then instructs Spike to stretch out on the ground under him, allowing Urik to spot for him and give advice as the young man starts his lifting. Working out keeps the two of them busy for quite a while, with some pauses in between as Urik explains something or Spike needs to take a drink.";
	increase the XP of doberman companion by level of doberman companion times four;
	say "     [bold type]Spike has gained [level of doberman companion times four] XP![roman type][line break]";
	now Dexterity of Spike is 4; [new weights for Spike]
	now SpikeEventCooldown is turns;

after going to Sitting Area while (Urik is in Sitting Area and Spike is in Sitting Area and SpikeEventCooldown - Turns > 4 and Spike is not asleep and PlayerFriended of Urik is true and (Dexterity of Spike is 4 or Dexterity of Spike is 52) and a random chance of 1 in 2 succeeds):
	if debugactive is 1:
		say "     DEBUG: Spike and Urik Train - Dexterity of Spike: [Dexterity of Spike][line break]";
	try looking;
	project the Figure of Spike_clothed_icon;
	say "     Walking along the upper floor of the library, you glance around and see Spike and Urik standing together in the sitting area, talking to one another. Your doberman companion is holding a bottle of water, taking another swig from it as you watch and apparently finishing off the bottle. As the young man puts down the empty container, his tail wagging behind his back, he touches Urik's arm and says, 'Thanks again for training me. I feel stronger already.' The orc chuckles at the words, reaching out to tousle the doberman's green hair. 'You're still a twig of a guy, but it's good you're enthusiastic. Still got a long way to go, boy! And now, down you go and give me thirty push-ups for a start!' Stiffening at the command barked at him, Spike starts to step towards a training mat laid out nearby, only to be held back by Urik's large green hand on his chest. 'Better take that off, you don't wanna get it sweaty, eh?' the orc adds, tugging at the mesh shirt on his trainee's chest.";
	say "     'Oh, uhm... yeah,' Spike replies, pulling off the article of clothing and throwing it in the direction of his little camp between the shelves. Then he gets down on the training mat and begins to do push-ups. Urik joins him a few seconds later, crouching down and looking at Spike closely. 'Gotta straighten your back more, puppy-boy! And really get on tip-toe with those paws, then go down till your muzzle is right over the ground!' He observes the doberman's efforts with a critical eye for a little while, even reaching out to push down on his naked back to make him go lower. 'That's a little better, but you still don't have quite the right form. Here, tense up a bit back here!' Urik goes on to say, smacking his hand lightly on Spike's ass";
	if "Private Breeder" is not listed in Traits of Urik:
		say "and giving it a quick grope. ";
	else:
		say ". ";
	say "Besides a quick, 'Hey!' at Urik touching his ass, the doberman takes his instruction without complaint and does his best to obey. After a few more repetitions, Urik gives him a grudging, 'Now keep that pose as you go up and down.'";
	WaitLineBreak;
	project the Figure of Urik_clothed_icon;
	say "     The orc gets into position for push-ups himself, right next to the anthro canine, adding in a gruff voice, 'Gonna join you in the workout, and if you have any questions, just look at how I'm doing it!' With that said, he starts pumping his broad-shouldered body up and down with almost effortless ease. From time to time, he even does a few with just one arm as he reaches out to correct Spike again, his hand often staying to keep touching the doberman for a few seconds. The two of them keep working out for some time, with Spike having to take breaks to catch his breath while Urik just powers through. By the time the orc calls it quits, Spike's lying on the mat, panting rapidly as he tries to catch his breath.";
	say "     Sweat glistening on his muscled chest, Urik sits up and glances over to his trainee. 'What, already exhausted? I could keep going for another hour. But I guess a delicate thing like you needs to go slow,' he comments, then grabs Spike by the arm and just flips him over, flopping down on the mat. Still panting, Spike yips at suddenly being man-handled, glancing up at Urik. 'At least you've got the spunk to keep at it, boy. No complaining from you, or are you just to weak to get it out right now?' Groaning, Spike shakes his head left and right, then gasps, 'No! I - I'm good.' The orc smirks at him, then offers a hand to help him get up from the ground, after which Spike stumbles over to his mattress on somewhat wobbly legs.";
	increase the XP of doberman companion by level of doberman companion times four;
	say "     [bold type]Spike has gained [level of doberman companion times four] XP![roman type][line break]";
	now Dexterity of Spike is 5; [training without shakes, shirtless pushups done]
	now SpikeEventCooldown is turns;

after going to Sitting Area while (Urik is in Sitting Area and Spike is in Sitting Area and SpikeEventCooldown - Turns > 4 and Spike is not asleep and PlayerFriended of Urik is true and (Dexterity of Spike is 5) and a random chance of 1 in 2 succeeds):
	if debugactive is 1:
		say "     DEBUG: Spike and Urik Train - Dexterity of Spike: [Dexterity of Spike][line break]";
	try looking;
	project the Figure of Spike_clothed_icon;
	say "     Walking along the upper floor of the library, you glance around and see Spike stand at the railing overlooking the lower floor, apparently deep in thought as he just stares ahead. Just as you start to contemplate if you should walk up and talk to him, a deep voice calls out, 'Hey, puppyboy!' It's Urik, and as Spike turns around to look at him, you notice a little wag of his tail. 'Hi Urik, what's up? Is it already time for our next training session?' The orc grins at him and nods. 'Yup, time to put you through your paces!' Urik adds, then throws a bottle of his energy drink for Spike to catch. He waits for the young man to take a first swallow of the liquid, then brings forward his other hand, which had been balled to a loose fist by his side. 'Skinny jeans aren't really the proper thing to do any sort of running in, I got you this. Should fit, I'm sure,' the orc adds, opening his fingers to reveal a black piece of cloth with red borders.";
	say "     'Huh?' Spike says in a somewhat surprised tone, setting down his bottle on the ground after recapping it. Then he reaches out to take Urik's gift from the green-skinned brute's hand and inspecting it. It's a piece of underwear, shiny and stretchy from the looks of it. 'Err, thanks. But... eh, did you find this on the street or something? Looks like the back half is missing.' Turning the garment around, Spike tugs at a pair of elastic bands as if to demonstrate what he means. 'Naw, that's how it's supposed to look. It's a sports thing, and this'll be good especially for you!' Urik replies with a smile and pats Spike's head. 'Hey! What's that supposed to mean?!' the young man replies somewhat annoyedly, patting away the large hand. 'Your tail, boy! With a jockstrap you don't have to tug yer undies down at the back to make room for it. Not wearing any right now because of the chafing at the tail, ain't that right?'";
	WaitLineBreak;
	project the Figure of Spike_jockstrap_icon;
	say "     Still a bit leery about Urik picking out underwear for him, Spike looks back and forth between the piece of cloth to Urik's face. There's a moment of hesitation before he finally gives a little shrug and admits, 'Yeah, you're right. Kinda. I tried boxer briefs a little while back and they were rubbing me the wrong way.' Urik's grin only gets broader, with the orc nodding back towards the sitting area. 'Go on then, let's see if it fits. Gotta be snug and not hang loose. Once you're ready, we'll do another run.' Spike looks at the much taller orc and says, 'Fine, but no peeking!' 'Wouldn't dream about it,' the orc replies";
	if "Private Breeder" is listed in Traits of Urik:
		say " with a roll of his eyes. 'Shush now, go already!' he tells Spike, crossing his arms and demonstratively staring at the walls and ceiling. Nodding, the doberman walks past him, over to the sofa in the sitting area, where he strips down and starts to put on the jockstrap, taking a few seconds to figure out which way all the straps go. Urik blows out his breath as he waits, but controls his desire to have a peek.";
	else:
		say ", one hand casually behind his back with crossed fingers. Nodding, Spike walks past him, over to the sofa in the sitting area, where he strips down and starts to put on the jockstrap, taking a few seconds to figure out which way all the straps go. Meanwhile, Urik is watching over his shoulder, his gaze taking in the curve of the dobie's ass in detail.";
	say "     Soon, Spike's coming back. 'It's certainly not loose. Might be a little tight even,' the doberman says thoughtfully, looking down at his own crotch as he walks over slowly. 'And the back feels weird. Being dressed at the front and bare there.' Urik replies, 'Let me see,' and reaches out to cup Spike's crotch, which the young man quickly deflects. 'Hey, keep your fingers to yourself. You can look, but no touching.' Grunting in amusement, the orc takes Spike by the shoulders and turns him around, looking at his hips. 'Seems alright to me, you won't have to worry about losing it as we run! Now finish off your energy drink and then we can get to some laps.' Spike does as requested, grabbing his bottle and chugging more of the artificially flavored liquid. He looks down at himself a few times as Urik chats with him for a few minutes, then finally finishes off the bottle and hands it to Urik so he hand put it away.";
	WaitLineBreak;
	say "     When Urik returns soon after, Spike has relaxed at least a little about wearing the jockstrap, though he's still fussing about it some, tugging at the material. 'Time for you to show some of that speed and endurance you need to make it in the city. We're gonna run laps, clockwise around the middle! You go first and I play one of the horny monsters out to get ya in the streets!' With a laugh, he gives Spike's bare buttocks a slap, prompting the young man to start running. The orc gives his trainee a head-start, then sets out after him, chasing Spike through the library in a (for him) comfortable pace.";
	LineBreak;
	say "     [bold type]Do you want to join them?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Sure, let's jog!";
	say "     ([link]N[as]n[end link]) - Nah, not really.";
	if Player consents:
		LineBreak;
		say "     Calling out to the two of them, you put in a little sprint and catch up, then join them in their workout routine. It feels nice to just hang out and do something simple and physical with the orc and doberman for a while.";
		XPGain 15;
		SanBoost 10;
	else:
		LineBreak;
		say "     You decide to turn to other things while Spike gets a thorough workout with Urik.";
	increase the XP of doberman companion by level of doberman companion times four;
	say "     [bold type]Spike has gained [level of doberman companion times four] XP![roman type][line break]";
	now Dexterity of Spike is 6; [Spike got a jockstrap now]
	now SpikeEventCooldown is turns;

after going to Sitting Area while (Urik is in Sitting Area and Spike is in Sitting Area and SpikeEventCooldown - Turns > 4 and Spike is not asleep and PlayerFriended of Urik is true and (Dexterity of Spike is 6) and a random chance of 1 in 2 succeeds):
	if debugactive is 1:
		say "     DEBUG: Spike and Urik Story Time - Dexterity of Spike: [Dexterity of Spike][line break]";
	try looking;
	project the Figure of Spike_shirtless_icon;
	say "     Walking along the upper floor of the library, you glance around and see Urik and Spike sitting next to each other on the sofa further in the back. Seems they're just hanging out with each other right now, not doing any training for a change. Your doberman companion is currently telling a story, gesturing wildly as he does so. '...so when we got to the alley, she wanted me to follow her into it. At first I did for a few steps, hell, that husky had offered me her pussy, but then I heard a noise from behind one of the dumpsters in there. When she noticed that I knew something was up, the bitch shouted, 'Get him, Bill!' and this dude jumped out from his hiding spot. Half human, half husky guy, with a long metal rod he was hefting like a spear!' Spike pauses for effect, miming a guy attacking him, then goes on to say, 'But I was too quick for the dude. Dodged his thrust and shoved his girlfriend at him and the two of them went down in a tangle. Gave me the time to high-tail it out of there.'";
	say "     Urik chuckles at the story and comments, 'Yeah, you don't trust a streetwalking hooker further than you can spit. That's why you bring a buddy to double-team her. If they're into that with women, you know. Those two you met were amateurs, but a woman and her pimp working together almost did my buddy Declan in once. Thought they could roll him, take everything he owned or whatever. That didn't work out so well, as me and a bunch of other soldiers were passing by on our way to a bar, and we gave em a good thrashing. But yeah, gotta watch out for yourself.' He nods to Spike, who was listening intently to his tale, then glances down at his forearm, making a fist and stroking over the tattoo covering his skin there. 'I miss Dec, he was a swell dude. Good tattoo artist too, he gave me these back in [']84,' Urik says, then pauses for a moment before he adds, 'Not even a year later, he got shot in the back by some little punk with a souped-up ride and inflated ego. Fuck, I'm still mad when thinking back to it. But the little murderous pissant got what was coming to him afterwards. Only wish we could have made it last longer.'";
	WaitLineBreak;
	say "     Silence stretches out for a few moments between the two of them, with Urik still reminiscing about his friend and Spike half-raising a hand towards the orc, then letting it drop. Finally, Spike clears his throat. 'Err, wait a minute - do you mean 1984? Just how old are you, Urik?' he blurts out, looking rather wide-eyed at the large man. Laughing out loud and slapping the side of his thigh, the orc grins at his trainee as he replies, 'I'm fifty-four years old, puppyboy! Don't look like it, do I, eh? If you ask me, this transformation business is the best thing that could have happened! Feel like I'm twenty again, and I'll take honest street-fighting over that rotten society from before any day. No more pigs who harass you just because you ride a bike. We sorted them out good, I can tell you that!' To underline his point, the green-skinned brute rubs the bulge in his pants, then begins a new tale with the words, 'Let me tell you how I got to be an orc...'";
	LineBreak;
	say "     [bold type]Do you want to listen to Urik's lewd tale?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Sure, it's bout to be hot!";
	say "     ([link]N[as]n[end link]) - Nah, not really.";
	if Player consents:
		LineBreak;
		say "     With a grin that shows his sharp tusks on his face as he recalls the day that he got transformed, Urik clears his throat and gives Spike's shoulder a friendly slap. 'So, as you might know, things were going to hell in a handbasket when this whole crazy shit started. I mean, one day things are normal, kinda slow. Bike's in the shop - don't think I'm still regretting that decision - and I'm out with some buds drinking, go home, sleep the buzz off. Next morning, I'm woken up by some asshole screaming and banging on my door. Literally, as I stumbled out of the bedroom and what did I see? My mailwoman, face pressed against the window of the door, with a big-boobed fucking gryphon shafting her from behind! Kind of a shocker, early in the morning, and I wondered if I was still drunk and not just hung over, I can tell you that! Then she looked at me and called my name, and I knew it was real. I turn away for a moment to grab the shotgun and load it, but by the time I get back, it's two dick-swinging bird-babes on my porch, one of them in she shreds of a mail uniform. Hot, but freaky, so I booked it out the back door quick after that.'";
		say "     Shrugging, Urik waves his hand in the air and adds, 'It was a big free-for-all in the streets, but critters did kinda avoid me since I was armed. Thought I'd make it to our watering hole, see if I could link up with some of the guys, get out of dodge. That plan went overboard quick when suddenly a frightened piggy peeled around the street corner in front of me at a dead run, to bounce right off me when we collided. I stumbled back a few steps, he went down on the ground. Oh, what a sight he was - pretty blue uniform shirt ripped, with the dude's pecs hanging out, and he had a wild expression on his face, calling out to help him.' The orc chuckles at that, miming himself holding a shotgun and an exaggeratedly frightened expression for the cop. 'What came after him a second later was a beast! More or less human, but big enough to have burst the clothes he had on, broad-shouldered and muscular, with protruding tusks and green skin!'";
		WaitLineBreak;
		say "     'I was halfway there to raise the gun and blast that motherfucker, humans holding together and all that shit, even if the runner was a dirty pig. And then, the greenskin grinned and laughed, saying, 'Don't recognize me, do you?!' Made me hesitate and really look at him, that - and you know who he was? My buddy Pete, with about three times the muscle that fat bastard had ever had before! The scared pig shouted for me to take him out, only to receive a bump on the head from Pete, who went on to tell me that being an orc is great. I was still doubtful for a while, but he knew shit, you know? Reminded me of the trip to Mexico we had the year before, and some shit no one else could have known. When I lowered the gun, he went ahead to casually rip the clothes of the stunned cop. Showed off his muscles and new body as he did, and a moment later rammed into him deep!' Pulling down his pants to let a fully erect, huge orc cock free from its constraints, Urik wraps his fingers around the girth of his shaft, stroking up and down. 'It was a hot show, with that thick rod going into the little punk!'";
		say "     'When he was done seeding the police bitch and pulled out of the moaning slut, Pete was all, 'Wanna have a turn?' Course I said yes!' Slapping his girthy piece of man-meat into the open palm of his other hand, Urik grins at Spike and the bulge visible in his pants. 'Oooh, does someone like the thought of shafting a squirming punk's ass? Let me tell you, he was tight! Snug around my dick even after taking that orc beer-can! I pounded the little bitch, hard and deep, churning up his cum-filled boipussy! And as I was doing so, I got to thinking 'Is he getting tighter?' But that wasn't it - my dick was growing, at the same time as my skin was going green! Man, I was so horny that I didn't even care! Just kept enjoying the snug hole around my prick, right until the point that I added some spunk to the bitch's chute! Then Pete went for him again, followed by another round for me!'";
		WaitLineBreak;
		say "     Swiping up a thick drop of pre from his cum-slit, Urik rubs it over the mushroom head of his thick orc cock, then proudly holds his shaft up. Spike turns his gaze to the side, as not to stare at it, but can't help looking from the corner of his eye after all. The doberman's nostrils flare a little as he takes a deeper whiff of Urik's scent. Clearing his throat, Urik continues, 'By the time we were done, we didn't have a piggy there anymore. Nah, the dude had become a proper little orc breeder! Pretty but muscular, with teeny tiny tusks";
		if "Private Breeder" is not listed in Traits of Urik:
			say ". Not unlike those canines you have there.' With that said, the orc uses his finger to tap Spike's muzzle, [if PlayerRomanced of Spike is false]drawing a 'Hey!' from the canine and resulting Spike pulling back a little[else]<TODO: Add Romance Text here>[end if]. 'Anyways, I felt as good as ever, and decided to just throw in with the orcs. Hah, going back to that cop station and joining the gangbangs around returning pigs was fun!'";
		else:
			say ". Anyways, I felt as good as ever, and decided to just throw in with the orcs. Hah, going back to that cop station and joining the gangbangs around returning pigs was fun!'";
		say "     Bringing his tale to a conclusion, Urik leans back on the sofa and focuses more on the slow stroke of his dick for a moment. Then he gives Spike a light poke with his elbow. 'If you liked the story, feel free to rub out a nut too. It's just us guys, no need to be shy!' Spike looks at Urik with wide eyes, speechless for a second before saying, 'Err... thanks?' The orc just smiles and pats his arm, 'Anytime, boy!' Spike focuses on the orc, his nostrils widening as he takes in a deep breath, eyes wandering down to the large man's cum-splattered chest. 'Thanks for the story, I'll go clean up now,' the young man hastily says and walks away, leaving a broadly grinning Urik behind.";
	else:
		LineBreak;
		say "     With a shrug, you tune the two of them out and turn your attention to other things.";
	now Dexterity of Spike is 7; [storytime with Urik done]
	now SpikeEventCooldown is turns;

after going to Sitting Area while (Urik is in Sitting Area and Spike is in Sitting Area and SpikeEventCooldown - Turns > 4 and Spike is not asleep and PlayerFriended of Urik is true and (Dexterity of Spike is 7) and a random chance of 1 in 2 succeeds):
	if debugactive is 1:
		say "     DEBUG: Spike and Urik Train - Dexterity of Spike: [Dexterity of Spike][line break]";
	try looking;
	project the Figure of Spike_clothed_icon;
	say "     Walking along the upper floor of the library, you glance around and see Spike stand in the sitting area, holding a half-full energy drink in his hand. Taking a deep swig of it, the young doberman then walks over to Urik, who's busy unrolling two fitness mats in front of the back wall. 'So, what are we going to do today? More strength training?' Spike asks his green-skinned taskmaster, who snorts and shakes his head. 'Not quite, puppyboy. We're gonna do Yoga!' As the slender anthro canine looks at him, visibly perplexed, Urik lets out a deep laugh and lightly slaps him on the back. 'Didn't think I was the type, eh? Well, you gotta blame my nephew Troy for it. The little shit kept going 'Uncle, it's good for you!' and he eventually talked me into trying it out. And it worked, gotta admit that.' Shrugging his very wide, muscled shoulders, the orc adds, 'Thank god I'm no longer an old fart with aching joints, but Yoga's still good stuff.'";
	say "     'If you say so,' Spike comments, then raises one eyebrow and adds, 'Just to be sure, though - I'm not calling you Sensei or Master, or anything like that!' 'That's Karate, you little punk. And do I look like a little white-bearded man to you?' Putting on a challenging smirk on his muzzle, the dobie replies, 'Well, weren't you, old man? Half a century more white hair than I have!' Their eyes meet in a stare-down, with a silly grin growing on Spike's face before too long, then a chuckle bursting out of him. Urik raises an eyebrow at that, then snorts and adds while patting Spike's head, 'Got a point at that I guess, puppy-boy. Nah, just use my name, this isn't some mystic mountain martial arts training!' Stepping over to place his broad green feet on the end of an extra large exercise mat, Urik nods over to the second one beside his and says, 'Okay, take your place. And you wanna strip down, this stuff may look soft, but you'll get sweaty, that's for sure!' Finishing off his energy drink, Spike peels the tight mesh shirt off his body, throwing it in the direction of his man-cave to land in a wadded-up heap just a few steps short. As he then starts to walk past the large orc, Urik holds out his hand in front of the young man and clears his throat with a nod down to his hips.";
	WaitLineBreak;
	say "     The next thing that can be heard is a zipper being lowered as Spike takes the hint, followed by him pushing down his jeans and kicking them off. 'Good boy!' Urik tells his trainee, both for obeying as well as the fact that he's wearing the orc's earlier gift, a black jockstrap with red borders. In response to the praise, Spike's tail starts to wag. The dobie realizes this and pushes the appendage down with one hand, clamping it down as he throws Urik a look of youthful rebelliousness. 'I'm a badass, not a puppy! Remember that! And no staring at my ass!' Urik doesn't reward him with a reply, simply snorting and then going on to say, 'Okay, now stand like this and take a deep breath. Then...' the orc begins his instructions of Spike, taking him through basic breathing and pose exercises before demonstrating several poses himself and then watching the anthro doberman attempt them. He keeps up his usual banter and teasing throughout the training set, but at the same time seems genuinely pleased in working out with his canine friend, throwing in praise and a few touches and squeezes of Spike's shoulder.";
	say "     Urik's earlier announcement proves to be nothing but the truth, as the two of them do work up some sweat from the relatively slow but often repeated and held movements. The orc's large, green-skinned body glistens in the light, making watching him move quite a nice show. Beside him, Spike's panting a lot more than usual, his tongue dangling halfway out of his mouth and you can see that the short fur all over his body is matted against his skin. His anthro heritage shows through that, as you're fairly sure that real dogs don't have any sweat glands on their body. 'Feels good to work out all them muscles, eh mister badass?' the orc asks with a grin on his face, letting his eyes roam up and down over the young man's slender form. ";
	if "Private Breeder" is not listed in Traits of Urik:
		say "His cock throbs visibly inside his pants as the orc does so. ";
	say "'Yeah! Guess you're not just full of hot air! Um... thank you for teaching me,' Spike replies in a somewhat breathy tone, tail wagging as he does so. Being thanked brings a satisfied smile to Urik's face and you can't help but feel that his opinion of the dobie just went up a notch.";
	WaitLineBreak;
	project the Figure of Spike_jockstrap_icon;
	say "     The two men continue their workout for a little while longer, before Urik eventually clears his throat and says, 'Okay, got one more thing to show you for this set.' With that said, the orc chuckles heartily and winks at Spike. 'Don't worry, it'll come naturally to you! As a puppyboy, you'll have no problem with downward dog!' Not going into any more detail before, Urik takes Spike through the steps of setting his paws on the mat in their proper places, breathing in and out, followed by the words, 'And now you bend forward, putting your hands on the ground and lower your head between them.' He proceeds to demonstrate the pose with practiced ease, followed by standing up and watching Spike attempt the same with somewhat less than optimal results. 'You're close boy, but there's some things you got to adjust,' Urik comments, taking a step closer and reaching out to touch Spike. 'Okay, first you bend your legs a bit more to allow you to get into position and push your hands further to the front. Let your head hang between the arms and keep the back straight.'";
	say "     The orc's large hands stroke over his trainee's body to help him along, with Urik smiling in satisfaction as the dobie follows his instructions and posture adjustments. 'Good boy! Now raise your ass higher and start to straighten those legs!' is said next by the big man as he grips the side of Spike's hips, fingers covering the furred curve of his buttock while Urik's thumb points at his crotch. Spike tenses for a second at the touch, but he lightens the mood by quipping, 'I knew you just wanted to get your hands on my ass, old man! Help, I'm being assaulted by a pervert!' Urik snorts, 'Smartass, just stick your rear out properly for the pose!' Doing as he is told, Spike reaches a good beginner's approximation of the downward dog pose, which clearly pleases his instructor. 'Now hold like this, feel how you're stretching your ankles, hamstrings, back and shoulders. Breathe in, and let it out slowly.' ";
	if "Private Breeder" is not listed in Traits of Urik:
		say "Meanwhile, the orc's hand is still halfway covering Spike's ass, but Urik doesn't do anything except giving him a light squeeze or two before pulling it away again. [if PlayerRomanced of Spike is true]<TODO: Add romance mention here>. [end if]Sliding an arm under the doberman's chest, Urik helps Spike stand up straight afterwards.";
	else:
		say "Having taken away the hand from Spike's ass, Urik watches Spike hold the pose for a moment, then helps the dobie stand up straight afterwards.";
	WaitLineBreak;
	say "     Smiling and tousling the young man's green hair, Urik gives him a nod of appreciation, then pushes the long strands aside with his finger again in an almost paternal gesture. 'Good workout! Feels nice, doesn't it?' the orc asks, and Spike replies, 'Yeah, it does. I'm sweaty and a bit exhausted, but that was pretty good.' Urik grins broadly at him as he says, 'We'll have to keep doing it then, eh?! Good, sweaty fun! Before long, you'll be a real badass and able to have any bitch on the streets that you want, eh?! Just imagine it - you walking down a street, showing your bulging pecs and arms to all of them. Weaker men running off in fear and bitches begging you to breed them!' As he follows Urik's words, Spike closes his eyes, forming a mental image of the scene - which clearly has quite an effect, judging from a quick look at his crotch. The orc's watching the growing bulge there with interest, adjusting his own cock as he gets somewhat hot and bothered himself.";
	say "     As Urik has stopped saying more to guide his fantasy along, Spike opens his eyes before too long and realizes the orc is checking out the hardon in his pants. 'Oh! I -' the doberman starts to say, moving to cover himself, only to have Urik tap his arm lightly. 'Relax, boy! Sorry about revving your engines. Didn't mean to do that actually, hah! Still, no need to be ashamed of it! ";
	if "Private Breeder" is not listed in Traits of Urik:
		if PlayerRomanced of Spike is true:
			say "<TODO: write romance variant>";
		else:
			say "Just another part of your body to take care of. Come on, let's let off some steam!' Before Spike can reply, the orc takes hold of his own pants and pushes them down in a quick move, kicking them off a second later. He wraps his hand around the large pole of his cock and starts stroking slowly, nodding to Spike to do the same. There is a moment of hesitation as the slender doberman seems torn between walking away and joining in for a jerk-off session with the orc present, before Spike's libido wins out and he pulls the front of his jockstrap aside to free the red rocket of his canine shaft. He does keep several steps distance to Urik though.";
			say "     Seems like the green-skinned brute hit just the right tone with him, leaving Spike to choose and not reaching for his crotch himself. The two men beat off together, with Spike keeping his eyes closed and going back into an imaginary scene, while the orc feasts his eyes on the doberman instead. Eager to get his rocks off, the anthro's rapid jerking brings him close to the edge fairly quickly, as is obvious by his loud panting and the his whole body tensing up. Reacting almost on instinct, Urik reaches over to cup his hand over the pointy dickhead of his canine buddy. As the tip of a finger brushes against the edge of Spike's head, the young man opens his eyes and barks in a sharp tone, 'What are you doing?!' Pulling his fingers away from Spike's cock as if he touched hot coals, Urik bursts out in frustration, 'Uh, shit! Didn't mean to - er, damn. It's hard to explain. Fuck these breeder urges!'";
			WaitLineBreak;
			say "     The expression of anger and annoyance that darkened Spike's face for a moment is replaced by surprise instead as he hears Urik's words. 'Huh?! What do you mean? You told me that breeders are smaller, weaker orcs! You're a warrior, aren't you?' The orc seems to shrink in on himself despite his towering stature, opening his mouth, then closing it again. Finally, he draws a shame-filled grimace as he meets Spike's gaze. 'I - uhm... not exactly.' Silence stretches out for a second or two, with a little bit of concern rising in the dobie's expression. He reaches out to touch the orc's arm lightly, then asks, 'You okay? Wanna talk about it?' Urik nods silently, and the two of them walk over to the nearby sofa to sit down on it. Both of them have gone soft by now, with the atmosphere changing away from sexual to emotional. It is an odd image to see the two of them there, now with Spike almost appearing to be the more mature person, simply laying his paw-hand on Urik's shoulder and waiting for him to speak.";
			say "     Taking a deep breath, Urik finally says, 'I - I fucked up. In the orc lair. Badly.' He waves a hand in the air in a vague movement, then sets it down in his lap defeatedly. 'I lost it all. Being a proud warrior, with even Boghrim respecting me. I took my punishment, that's what a man does, but my life was over at that point.' The shrunken form of the orc straightens a little as he adds, 'Or so I thought, until [if Player is not defaultnamed][Name of Player][else][SubjectPro of Player][end if] came and got me out of there. Brought me here, to this place.' Spike looks at him, nodding to acknowledge his words, but also asks, 'What's got that to do with the whole warrior or breeder thing?' Blowing out his breath, Urik replies, 'I'm both, now. Yeah, still got the muscles and all that, but on the inside... I, I crave cum now. Orc cum mainly, but... also from others. And I can have orclings. Kinda want orclings.' He touches his abs as he says this, looking a bit shameful as he admits to it.";
			WaitLineBreak;
			say "     'Wow,' Spike says, a bit lost for words. 'That's... heavy stuff.' He glances at his hand, still resting on the orc's shoulder, then gives Urik a firm squeeze with it. 'So, I think... no hard feelings then, okay? I understand now why you went for my dick. Guess I was right about you being a dirty old pervert!' His last words are added in a joking tone, as the young man tries to escape the glum mood by throwing a bit of their previous banter into the room. Urik grunts as he hears this, putting on a little bit of a smile. 'So, how does the cum thing work exactly? Are you just, er, hungry for it? Wanna chug it down? Or does it have to go in the other end? And what's so special about orc cum?' the dobie asks next, curiosity audible in his voice. Urik nods down at his own cock, hanging limply on top of his large balls. A smirk grows on his face as he cups his balls and says, 'Okay, grasshopper - let's teach you the 101 of orc cum. You see, orcs don't need weapons. We got all we need down here!'";
			say "     'Orc cum is potent stuff. Addictive, in large enough doses. And you can imagine just how much cum these things put out, hah! Just gotta give a dude we pick up out on the streets a taste, and more often than not they'll beg to be taken along and fed more of it all the time. Feels amazing in either end, just so you know.' Spike raises an eyebrow and throws in a comment of, 'If you say so. Don't think it's for me. Tasted my own, but it was nothing that made me go crazy for it. Or is it different for an orc breeder?' Urik lets out a breath through his nose in a huff, looking over to meet the dobie's eyes. 'There's nothing better than a dude's cum! Man, that taste on your tongue is just... something else. Wouldn't have believed it before I became, you know, half n['] half, but yeah! It's amazing stuff!";
			WaitLineBreak;
			say "     Clearing his throat, Urik continues, 'As for the orc cum and other cum thing... kinda like different flavors of candy. Orc cum is the good stuff, but who wants to eat nothing but chocolate all day, every day? Another dude's cum can be... a treat, you know. Different taste and all that, especially if it's coming from a hot dude.' As he says this, the orc's gaze drops to Spike's crotch and an almost longing expression crosses his face. The doberman is surprised by the attention, unaccustomed to the feeling of someone desiring just that part of him. Apparently he can't help but react to the compliment, as his dick gives a little twitch in its sheath. 'Uhm, if you wanna... taste me, I could, ...' he starts, with Urik not even waiting before he says a breathy, 'Yeah!' Spike adds, 'But no touching!' and then starts to stroke himself, first playing a little with his balls, then taking hold of his red rocket as it emerges from the sheath.";
			say "     The young doberman closes his eyes and begins to jerk off in earnest, no doubt imagining a sexy bitch or so. At the same time, Urik watches him, taking in the naked canine, one hand resting on his own green leg, ready to catch Spike's cum when the time comes. As the dobie goes at it with full speed, not holding back and just wanting to get off, he fills the room with moans and grunts, as well as panted out words to go with his fantasy, like, 'Take it, slut! Yeah, you bitch, feel my dick!' It doesn't take all that long before he humps his hips reflexively and stiffens, moaning as the first spurt shoots out, right into Urik's quickly interposed palm, with the orc's fingers barely an inch above Spike's abs. Catching the cum as white streaks on the orc's green palm, Urik waits just long enough for Spike's orgasm to start to flag before he leans over and starts to lap his friend's cum off.";
			WaitLineBreak;
			say "     At just that moment, Spike opens his eyes, seeing the orc so very close to himself, eagerly slurping up his seed. This seems to make his libido flare up for a second, and his climax puts in an encore, sending more thick, creamy spurt flying to hit Urik in the face. 'Ooops, sorry!' Spike sputters out, looking wide-eyed at Urik, who turns his white-streaked face to look at him. As their eyes meet, both of them burst out into laughter, followed by a grinning Urik wiping the cum off his face and sucking it off his fingers. 'Tasty!' he quips at the anthro dog after finishing off his snack, then smacking his lips in satisfaction. 'You go along now, I'll clean up here,' the orc tells Spike, who tucks his jockstrap back in place and then wanders off into his little man-cave.";
	else:
		say "Just another part of your body to take care of. You can jerk it out right here!' Urik's gaze is firmly on Spike's bulge at this point, which the doberman comments with the words, 'What's going on now? You seem oddly keen on my jerking off?!' Urik looks up, pressing his lips together, then bursts out in frustration, 'Uh, er, damn. It's hard to explain. Fuck these breeder urges!'";
		WaitLineBreak;
		say "     The wariness that was on Spike's face for a moment is replaced by surprise instead as he hears Urik's words. 'Huh?! What do you mean? You told me that breeders are smaller, weaker orcs! You're a warrior, aren't you?' The orc seems to shrink in on himself despite his towering stature, opening his mouth, then closing it again. Finally, he draws a shame-filled grimace as he meets Spike's gaze. 'I - uhm... not exactly.' Silence stretches out for a second or two, with a little bit of concern rising in the dobie's expression. He reaches out to touch the orc's arm lightly, then asks, 'You okay? Wanna talk about it?' Urik nods silently, and the two of them walk over to the nearby sofa to sit down on it. Both of them have gone soft by now, with the atmosphere changing away from sexual to emotional. It is an odd image to see the two of them there, now with Spike almost appearing to be the more mature person, simply laying his paw-hand on Urik's shoulder and waiting for him to speak.";
		say "     Taking a deep breath, Urik finally says, 'I - I fucked up. In the orc lair. Badly.' He waves a hand in the air in a vague movement, then sets it down in his lap defeatedly. 'I lost it all. Being a proud warrior, with even Boghrim respecting me. I took my punishment, that's what a man does, but my life was over at that point.' The shrunken form of the orc straightens a little as he adds, 'Or so I thought, until [if Player is not defaultnamed][Name of Player][else][SubjectPro of Player][end if] came and got me out of there. Brought me here, to this place.' Spike looks at him, nodding to acknowledge his words, but also asks, 'What's got that to do with the whole warrior or breeder thing?' Blowing out his breath, Urik replies, 'I'm both, now. Yeah, still got the muscles and all that, but on the inside... I, I crave cum now. Orc cum mainly, but... also from others. And I can have orclings. Kinda want orclings.' He touches his abs as he says this, looking a bit shameful as he admits to it.";
		WaitLineBreak;
		say "     'Wow,' Spike says, a bit lost for words. 'That's... heavy stuff.' He glances at his hand, still resting on the orc's shoulder, then gives Urik a firm squeeze with it. 'So, I think... no hard feelings then, okay? I understand now why you went for my dick. Guess I was right about you being a dirty old pervert!' His last words are added in a joking tone, as the young man tries to escape the glum mood by throwing a bit of their previous banter into the room. Urik grunts as he hears this, putting on a little bit of a smile. 'So, how does the cum thing work exactly? Are you just, er, hungry for it? Wanna chug it down? Or does it have to go in the other end? And what's so special about orc cum?' the dobie asks next, curiosity audible in his voice. Urik nods down at his own cock, hanging limply on top of his large balls. A smirk grows on his face as he cups his balls and says, 'Okay, grasshopper - let's teach you the 101 of orc cum. You see, orcs don't need weapons. We got all we need down here!'";
		say "     'Orc cum is potent stuff. Addictive, in large enough doses. And you can imagine just how much cum these things put out, hah! Just gotta give a dude we pick up out on the streets a taste, and more often than not they'll beg to be taken along and fed more of it all the time. Feels amazing in either end, just so you know.' Spike raises an eyebrow and throws in a comment of, 'If you say so. Don't think it's for me. Tasted my own, but it was nothing that made me go crazy for it. Or is it different for an orc breeder?' Urik lets out a breath through his nose in a huff, looking over to meet the dobie's eyes. 'There's nothing better than a dude's cum! Man, that taste on your tongue is just... something else. Wouldn't have believed it before I became, you know, half n['] half, but yeah! It's amazing stuff!";
		WaitLineBreak;
		say "     Clearing his throat, Urik continues, 'As for the orc cum and other cum thing... kinda like different flavors of candy. Orc cum is the good stuff. But really, [if Player is not defaultnamed]only [Name of Player]'s is the stuff for me these days! [else]I know I got a special someone here who takes care of all my needs! [end if] You go along now, I'll clean up here,' the orc tells Spike, [if PlayerRomanced of Spike is true]<TODO: Add short mention of Spike also being into the player.>[else]who tucks his jockstrap back in place and then wanders off into his little man-cave. [end if][line break]";
	increase the XP of doberman companion by level of doberman companion times four;
	say "     [bold type]Spike has gained [level of doberman companion times four] XP![roman type][line break]";
	now Dexterity of Spike is 8; [Urik and Spike did Yoga]
	now SpikeEventCooldown is turns;

after going to Sitting Area while (Urik is in Sitting Area and Spike is in Sitting Area and SpikeEventCooldown - Turns > 4 and Spike is not asleep and PlayerFriended of Urik is true and (Dexterity of Spike is 8 or Dexterity of Spike is 55) and a random chance of 1 in 2 succeeds):
	if debugactive is 1:
		say "     DEBUG: Spike and Urik Train - Dexterity of Spike: [Dexterity of Spike][line break]";
	try looking;
	project the Figure of Urik_clothed_icon;
	say "     Walking along the upper floor of the library, you glance around and see Urik standing against the railing overlooking the lower floor. The big orc is busy playing a little game with himself, which is bouncing tennis balls off the top of the shelves below, timed just right so they bounce across several of the tall stacks. While you're still forming possible comments in your head, like where he got a shopping bag full of tennis balls and if Urik will clean up afterwards, a voice calls out from the side and interrupts your train of thought. Glancing over, you see that it's Spike who shouted, 'Hey Urik!' and the young doberman is now approaching on his lithe paws. 'What? Did you feel an irresistible urge to run after these?' the orc replies with a grin on his face, throwing one of the yellow balls in the air and catching it, then casually tossing it at Spike's chest, who catches it and gives the orc an eyeroll and smirk.";
	say "     Spike raises the ball in his hand, shaking his head. 'Err... no. Out of the two of us, I think you're the one chasing balls all the time, old man! I'm just here for some more training!' A broad smile appears on Urik's face and he reaches out to tousle the young anthro's green hair, with Spike batting at his hand to get him to stop. 'Always nice to see such an eager puppy, hah! Looks like the training is working too! Your body's building mass now! Come on, let's get to it then!' Cheerfully, the orc gives Spike's arm a 'light' slap that has him stumbling sideways for a second, then walks towards the back of the sitting area and retrieves a plastic bottle from the top of a quite tall shelf. Having followed his trainer, Spike accepts the drink from Urik, immediately opening it and taking a deep swig of the lime-green fluid.";
	WaitLineBreak;
	project the Figure of Spike_jockstrap_icon;
	say "     Urik goes to collect the weightlifting set he got for Spike, effortlessly picking the push-bar and its stand up from the corner where it standing. Weights and all, the orc carries it over to Spike, placing the whole thing down over a training mat spread on the floor. 'Okay then, puppyboy - get on the mat!' Tail wagging happily behind his back, Spike peels the mesh shirt off his chest, throwing it aside, then proceeds to undo the button and zipper of his jeans. An eye-blink later, he's pushing them down and bending over to free his paws from the bunched-up fabric, quite oblivious to the fact that he's giving Urik a show with his bare ass. You can see the bulge in the orc's stretchy trunks grow visibly as his dick hardens partially, with Urik ";
	if "Private Breeder" is not listed in Traits of Urik:
		say "quickly adjusting it, giving his cock a squeeze but still keeping it tucked away. ";
	else:
		say "giving a chuckle at the dobie's naivety of exposing himself, followed by a smile about the trust Spike his showing. ";
	say "Meanwhile Spike lays down on the mat and lay his paws against the bar of the weights, waiting patiently for Urik to step over him to be his spotter. The orc stands ready to catch the weights just in case, and gives his trainee numerous bits of good advice as he goes through training. It is clear that he enjoys teaching Spike quite a bit.";
	say "     As some time passes and Spike works up a good sweat, Urik helps Spike put the weight bar on its rack, then hands his trainee some lighter dumbbells that he can hold on one hand each. 'Give me at least fifty lifts with each arm!' Urik grunts as a challenge to the anthro doberman and counts the first five aloud with Spike's movements before he starts to walk around him. Soon arriving next to the stretched-out form of Spike, Urik then crouches down and says loudly, 'Keep going, no matter what! I don't want to see you put down those weights until you're done with your set! Think of why you're doing this! Imagine being in a fight, out there on the streets, with one dude trying to keep you pinned while his two friends rough up [if Player is not defaultnamed][Name of Player][else]the boss[end if]! You [italic type]have[roman type] to get out of that bind to help [ObjectPro of Player]!' Between his pants, Spike's reply isn't so much words but rather a [if PlayerRomanced of Spike is true or MaxHP of Spike is 1]sharp bark[else]compliant grunt[end if], and he puts in a new burst of energy to his lifting. 'Good boy,' Urik comments with a smile, then adds, 'But we got to fix your pose a little too. Here, bend your knees and brace those paws against the mat.'";
	WaitLineBreak;
	say "     As he says this, the large orc puts a big green hand on Spike's thigh, guiding Spike into a new position with his legs. The dobie is very focused on lifting the weights again and again, making him almost putty in Urik's hands. 'Just keep lifting,' the orc tells his trainee, patting Spike's naked chest with a satisfied smile and adding, 'doing good! With his big, green-skinned personal trainer to motivate him, the doberman actually manages to complete the workout, even though he's more than a little tired by the end. Urik holds out his hand to pull the canine to his feet, congratulating him and giving his back - and lower back - a pat. 'Good puppy, might just make something out of you yet.'";
	increase the XP of doberman companion by level of doberman companion times four;
	say "     [bold type]Spike has gained [level of doberman companion times four] XP![roman type][line break]";
	now Dexterity of Spike is 9; [Urik and Spike did weightlifting]
	now SpikeEventCooldown is turns;

to say SpikeTalk12: [talk about Urik]
	if Dexterity of Spike is 1:
		say "     As you bring up Urik, the doberman bristles a little and crosses his arms in front of his chest. 'What about him? The guy's an asshole, that's for sure. Pfft, trying to say that I'm not strong enough for his stupid training. But I'll show him what's what!' Apparently his need to prove himself translates into the young man starting to flex and pose for you too, showing off some nice muscle tone on his lean body. It doesn't really compare to the shredded beast that Urik is, but the dobie is fit and active enough to be a help in combat for you.";
		LineBreak;
		say "     [link](1)[as]1[end link] - Wish him good luck in training with the orc. He's sure to learn a lot.";
		say "     [link](2)[as]2[end link] - Tell Spike that he doesn't need to be a muscle hunk. You like him the way he is.";
		say "     [link](3)[as]3[end link] - Explain that Urik just likes goading people and he shouldn't waste his time reacting to it.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to encourage training, [link]2[end link] to discourage training or [link]3[end link] to turn Spike against Urik.";
		if calcnumber is 1:
			LineBreak;
			say "     Reaching out and giving Spike's shoulder a pat and a little squeeze, you tell the young man that he should train with Urik. It'll be good for him and all that. 'Okay then, [SpikePlayerAddress]! I'm gonna show that green-skinned brute what I'm made of!'";
		else if calcnumber is 2:
			LineBreak;
			say "     Stepping up and throwing an arm around Spike's shoulders, you pat his chest and tell him that maybe he shouldn't train with the orc. Being lithe and quick on his paws is quite something already, and in trying to be a muscle hunk, he could very well trade down. Spike almost soaks up each word of praise you give him, his chest swelling a little and the tail behind his back starting to wag. 'Really? I mean, yeah totally! I'll focus on getting quicker instead! I wanna be my best for you, [SpikePlayerAddress]!'";
			now Dexterity of Spike is 100; [training ended]
		else if calcnumber is 3:
			LineBreak;
			say "     Stepping up and putting a hand on Spike's shoulder, you look into his eyes and tell him that he really shouldn't pay any mind to what Urik's saying. The orc just likes to goad and push people, and reacting to it just makes things worse. He'll just find new things to rib him with. 'But I wanna show that asshole that...' Spike starts to reply angrily, only to stop and say, 'Oh! Uhm, I'm doing exactly what he wanted, aren't I? Damn, you're right [SpikePlayerAddress]! Enough of this then. I'll keep my distance and won't pay him no mind anymore.'";
			now Dexterity of Spike is 100; [training ended]
	else if Dexterity of Spike is 2 or Dexterity of Spike is 3:
		say "     As you bring up Urik, the doberman stiffens a little, putting his hands on his hips and letting out a breath. 'What can I say about him? The guy's an asshole, that's for sure. Kept calling me weak and 'puppy-boy', just because I can't lift that monster set of weights he's got from the get-go!' Apparently he feels the need to convince himself of his own strength, as the doberman raises one arm and starts to flex his bicep, stroking over it with the free hand. 'I feel ready for a fight already, but I'll be an even better companion for you once I'm through that ridiculous training routine of his. Hope the energy drinks will help too. Good stuff!' Spike adds next, putting on a determined expression and subconsciously licking his muzzle.";
		LineBreak;
		say "     [link](1)[as]1[end link] - Wish him good luck in training with the orc. He's sure to learn a lot.";
		say "     [link](2)[as]2[end link] - Tell Spike that he doesn't need to be a muscle hunk. You like him the way he is.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 2:
			say "Choice? (1-2)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to encourage training or [link]2[end link] to discourage training.";
		if calcnumber is 1:
			LineBreak;
			say "     Reaching out and giving Spike's shoulder a pat and a little squeeze, you tell the young man that he should train with Urik. It'll be good for him and all that. 'Okay then, [SpikePlayerAddress]! I'm gonna show that green-skinned brute what I'm made of!'";
		else if calcnumber is 2:
			LineBreak;
			say "     Stepping up and throwing an arm around Spike's shoulders, you pat his chest and tell him that maybe he shouldn't train with the orc. Being lithe and quick on his paws is quite something already, and in trying to be a muscle hunk, he could very well trade down. Spike almost soaks up each word of praise you give him, his chest swelling a little and the tail behind his back starting to wag. 'Really? I mean, yeah totally! I'll focus on getting quicker instead! I wanna be my best for you, [SpikePlayerAddress]!'";
			now Dexterity of Spike is 100; [training ended]
	else if Dexterity of Spike is 4 or Dexterity of Spike is 5 or Dexterity of Spike is 6: [training always with (normal) shakes]
		say "     As you bring up Urik, the doberman stiffens a little, putting his hands on his hips and letting out a breath. 'What can I say about him? The guy's an asshole, that's for sure. But he's been fairly civil lately. Seems he really does want to train me. Even went so far to get new equipment just for me, and he's going out to get those drinks for me too. They taste awfully sweet and chemical, but if he says they're good stuff, but it's okay.' A moment later, he adds with a shrug, 'Don't think we'll be the best of friends anytime soon, but I can stand him, more often than not. Also, look - I think it's working!' With that said, the dobie peels off his shirt and does a little posing. From what you can see, there's a little more tone to his muscles, and he smiles happily as you say so.";
	else if Dexterity of Spike > 6 and Dexterity of Urik < 100: [Urik told his tale]
		say "     As you bring up Urik, the doberman stiffens a little, putting his hands on his hips and letting out a breath. 'What can I say about him? The guy's a character, that's for sure. Did he ever tell you how he became an orc? Quite a tale. Other than his usual 'puppyboy' bullshit, he's been fairly civil lately. Seems he really does want to train me. Even went so far to get new equipment just for me, and he's going out getting those drinks for me too.' A moment later, he adds with a shrug, 'I can stand him, more often than not. Also, look - I think it's working!' With that said, the dobie peels off his shirt and does a little posing. From what you can see, there's a little more tone to his muscles, and he smiles happily as you say so.";
	else if Dexterity of Spike is 100: [training ended]
		say "     As you bring up Urik, the doberman bristles a little and crosses his arms in front of his chest. 'That dude? What an asshole - a wyvern can eat him for all I care. Gonna keep my distance from now on, that's for sure!' With a throwing-away gesture, Spike blows the topic off, and you talk a little about other matters instead.";


Spike ends here.

[
Scene Ideas:

Spike goes for Candy and the raccoon throws himself at himself

Spike gets to know Regular Chris (friendship)

]

[ Idea for Start of Romance Path: ]
[ Event where Alexandra berates Spike for leaving her pack and running around outside with the player, some shouting, her eventually going "So you think you mean anything to <player> other than being a fuckhole? Dream on boy!" - player then being able to just stay out of it, defend Spike and say that he's a good right hand man, or draw him close and kiss him, saying that he's more than just a battle brother to them - making Spike thrilled and Alexandra grumpy]
