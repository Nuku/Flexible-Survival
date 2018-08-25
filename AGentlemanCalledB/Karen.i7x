Karen by AGentlemanCalledB begins here.
[Version 1.1 - Made Karen an NPC located in the library breakroom - Luneth      ]

[  HP of Rex                                                                    ]
[ 0 = not met                                                                   ]
[ 1 = done event once, received bone                                            ]
[ 2-4 = used bone  1-3 times                                                    ]
[ 5 = met Rex, lost bone                                                        ]
[ 6-9 = Training phase, fucked Rex, pet offer at 9                              ]
[ 10 = Pet game over 1                                                          ]
[ 11 = Accepted collar                                                          ]
[ 49 = Defeated by Rex in escape quest                                          ]
[ 50 = Defeated Rex                                                             ]

[  HP of Karen                                                                  ]
[ 0 = Default state                                                             ]
[ 1 = Refused Rex offer @ Rex HP 9                                              ]
[ 2 = talked about bakery                                                       ]
[ 3 = Spoke to Francois, got cookies                                            ]
[ 4 = Trigger Fight against Rex                                                 ]
[ 5 = Defeated Rex, default Pet Karen Value                                     ]
[ 6 = Agreed to see Francois                                                    ]
[ 7 = Met Francois, locker event opened                                         ]
[ 8 = Completed locker event                                                    ]

Section 1 - Karen as a pet/NPC

KarenTimer is a number that Varies.

the linkaction of Karen is "[Karenlinkaction]".

to say Karenlinkaction:
	say "Possible Actions: [link]talk[as]talk Karen[end link], [link]smell[as]smell Karen[end link], [link]fuck[as]fuck Karen[end link][line break]";

Retriever Girl is a pet. Retriever Girl is a part of the player.
understand "Karen" as Retriever Girl.
The description of Retriever Girl is "[KarenDesc]".
The weapon damage of Retriever Girl is 7.
The level of Retriever Girl is 5.
The Dexterity of Retriever Girl is 18.
The summondesc of Retriever Girl is "[SummonKaren]".
The dismissdesc of Retriever Girl is "[DismissKaren]".
The assault of Retriever Girl is "[one of]Stepping forward quickly, [or]Circling around behind the enemy, [or]Rushing recklessly towards your foe, [or][at random]Karen [one of]strikes with her short claws[or]attacks with a swift, low kick[or]clips the opponent with a quick strike as she runs past[at random].".
the fuckscene of Retriever Girl is "[SexWithKaren]".

to say SummonKaren:
	remove Karen from play;
	if player is in Breakroom and Karen is in Breakroom: [summoning while standing next to her]
		say "     ...";
	else: [regular summoning]
		say "     Karen smiles happily as you wave her over, hiking her bag up over her shoulder as she jogs forward.";

to say DismissKaren:
	move Karen to Breakroom;
	if player is not in Breakroom: [regular dismiss]
		say "     Telling Karen that you're going to go forward solo she quickly nods and starts to run back towards the library on all fours.";
	else: [dismissing her in the abbey]
		say "     ...";

Karen is a woman.
The description of Karen is "[KarenDesc]".

instead of sniffing Karen:
	say "[KarenScent]";

instead of fucking Karen:
	say "[SexWithKaren]";

to say KarenDesc:
	if Karen is in Rex's Place:
		say "     Looking over Karen, you recognize her as the same retriever bitch that you saw abducted by Rex some time ago, now wearing a thin pink collar with a heart-shaped tag that has her name engraved on it.";
	else:
		say "     Karen is a shapely female canine with a thick coat of golden fur. Currently unclothed, her four firms breasts and delicate female features are all out on display. Her canine tail wags happily behind her as she notices you looking at her.";

instead of sniffing Retriever Girl:
	say "[KarenScent]";

to say KarenScent:
	if Karen is in Rex's Place:
		say "     Karen smells strongly of Rex's powerful musk, mixed with the scent of her own dripping cunt, and strangely a faint hint of strawberry.";
	else:
		say "     Karen has a light scent of an aroused female canine.";

instead of conversing the Karen:
	if Karen is visible:
		say "[KarenTalkMenu]";
	else if companion of player is Retriever Girl:
		say "[KarenTalkMenu]";
	else:
		say "     Karen isn't here.";

instead of conversing Retriever Girl:
	if Retriever Girl is not tamed:
		say "     Who?";
	else:
		if player is in Breakroom and Karen is in Breakroom:
			say "[KarenTalkMenu]";
		else if companion of player is Retriever Girl:
			say "[KarenTalkMenu]";
		else:
			say "     Karen isn't here.";

to say KarenTalkMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Chit Chat";
	now sortorder entry is 1;
	now description entry is "Just have some simple chit chat";
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
				if (nam is "Chit Chat"):
					say "[KarenTalk1]";
				wait for any key;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the Retriever Girl, shaking your head slightly as she gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say KarenTalk1:
	if Karen is in Rex's Place:
		if HP of Karen is 1:
			say "     Seeing Karen sitting alone, you realize she may know of some way you could distract Rex. You subtly try and get any information she may have by asking her about her previous life. Not surprisingly, she doesn't remember much. She tells you about the few fuzzy memories she has of her old self; most of the vague tales of her life as a student are unhelpful, but one story does catch your attention. She tells you about an unusual bakery on the outskirts of the high rise district she and Rex used to visit when he was the pet instead of her, a place that specialized in premium pet treats. Most of the story ends up revolving around how much she'd like to try one of those cookies now, but she does let slip that the old Rex was always ecstatic to visit and sample their wares. Perhaps this could provide the distraction you need?";
			now HP of Karen is 2;
		else if HP of Rex > 9:
			say "     [one of]I'm so glad you decided to stay with us; I'm sure you'll love it.[or]Karen takes a moment to admire the collar Rex has given you to wear, comparing it to her own for a moment before complimenting you on how nice it looks.[or]Karen is far too busy playing with Rex on the floor to talk right now.[or]Karen is sitting on the floor in front of Rex, begging for the treat he has suspended above her head. Clearly she's far too focused on Rex and the cookie to talk right now.[or]Karen barely acknowledges you as you approach, apparently not interested in conversation while cleaning herself up after her latest escapade with Rex.[or]Karen smiles up at you as she eats from a small pink dog bowl, offering you a taste before she digs back in.[at random]";
		else:
			say "     [one of]Karen is far too busy playing with Rex on the floor to talk right now.[or]Karen is sitting on the floor in front of Rex, begging for the treat he has suspended above her head, clearly she's far too focused on Rex and the cookie to talk right now.[or]'I'm so glad that bone brought me back here to Rex, and you're pretty lucky it brought you here to him too!' Karen says with a smile.[or]'Are you sure you don't want to stay here with us?' Karen asks with a cute pout.[or]Karen barely acknowledges you as you approach, apparently not interested in conversation while cleaning herself up after her latest escapade with Rex.[or]Karen smiles up at you as she eats from a small pink dog bowl, offering you a taste before she digs back in.[at random]";
	else if companion of player is Retriever Girl or Karen is in Breakroom:
		if HP of Karen is 5 and ( KarenTimer - turns > 8 ):
			say "     Noticing Karen looking a little down, you ask her what's on her mind. 'It's been a while now since we got away from Rex, but I still can't remember much of who I was before I met him. It's a little bit frightening, not knowing who you are,' she says, clearly struggling to keep her emotions in check. Recalling that Francois seemed to remember her from before the outbreak, you suggest going to see him. Karen perks up a little at the suggestion. 'Really? Do you think he would help? I suppose it couldn't hurt,' she replies with a weak smile. 'It'll be nice to see another friendly face, at least.'";
			now HP of Karen is 6;
		else:
			say " 	 [one of]'Thanks again for bringing me with you. I feel so much safer with you around.'[or]'It's nice to be able to think clearly again, but I'm still having trouble remembering much of my old life.'[or]'I hope Rex isn't out causing trouble for someone else now that he doesn't have me keeping him occupied.'[or]'I still feel that need welling up inside me occasionally... promise me you won't let me give in to it again, ok?'[at random]";
	else:
		if HP of Karen > 4:
			say " 	 Karen is not around, you should call her over first.";
		else:
			say "     You don't see any such thing.";

to say SexWithKaren:
	if HP of Karen < 5:
		say "     When you begin to approach Karen, wondering if she might be interested in having some fun with you, you hear a low growl behind you.";
		say "     You turn around to see Rex, an uncharacteristic scowl across his muzzle, apparently aware of your intentions. Glancing back at Karen for a moment, you decide it's best to stay on Rex's good side and leave his pet be.";
	else if companion of player is Retriever Girl or Karen is in Breakroom:
		if HP of Karen is 8:
			say "     Karen bites her lip and stares at you longingly for a moment before refusing. 'I don't think I should be doing anything like that... yet.'";
			say "     (Sorry - This quest/character is still a work in progress, this is where it ends for now. -The author)";
		else if HP of Karen > 4:
			say "     Karen bites her lip and stares at you longingly for a moment before refusing. 'I don't think I should be doing anything like that... yet.'";
	else:
		if HP of Karen > 4:
			say "     Karen is not currently your active companion, you should call her over first.";
		else:
			say "     You don't see any such thing.";

Section 2- Karen Quest

Forgotten Past is a situation. Forgotten Past is Resolved.
The sarea of Forgotten Past is "Campus".

Instead of resolving a Forgotten Past:
	if HP of Karen is 7 and companion of player is Retriever Girl:
		say "     While exploring a secluded hall of the campus, Karen suddenly stops. You look back at her as her ears perk up. 'I know this place,' she says, lifting her nose to the air and taking a few sniffs. 'I can smell... me.' Striding purposefully down the hall, Karen continues following her nose, pausing briefly at each locker she passes. Finally she stops, several meters down the hall in front of a still-sealed locker. 'This one, it's this one. This was my locker,' she says softly, taking hold of the small pink padlock. 'Can you help me get it open?'";
		say "     A short while later you finally manage to [if intelligence of player > strength of player]open the lock with a makeshift shim[else]break the door off its hinges with a liberal application of brute force[end if]. Stepping aside, you let Karen open the door and peer inside. The locker is filled mostly with textbooks pertaining primarily to animal medicine. It seems she was studying for a veterinary degree at the campus. 'I was going to be a vet... and now here I am, a dog,' she says, running a paw along the neatly stacked books. With a sigh she continues her search of the locker. While most of the locker's contents prove unhelpful, she does find a large book bag, which will hold significantly more than the small sack she's been carrying around, and a couple bottles of water which she shares with you. After picking out a few of the generalized-sounding textbooks and slipping them into her new bag along with the contents of her old bag, she peels the timetable off the locker door and pushes it shut. 'It looks like all my courses took place in one classroom,' she says, looking the timetable over. 'Maybe we could stop by there next?'";
		say "     As you leave the row of lockers and head back towards safer grounds, you can't help but notice Karen's head held a little higher and an ever-so-slight spring in her step.";
		say "     (Note - This quest/character is still a work in progress, this is where it ends for now. Sorry! -The author)";
		now HP of Karen is 8;
		increase carried of water bottle by 1;
		now Forgotten Past is resolved;
	else:
		say "     While wandering a secluded hall of the campus, you recall Karen was hoping you would bring her here to search for clues to her past. Perhaps you should return here later with her.";


Karen ends here.
