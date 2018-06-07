Version 1 of Viking by Wahn begins here.
[Version 1 - Initial Setup]

"Adds a Female Viking to Flexible Survival's Wandering Monsters table"

when play begins:
	add { "Viking" } to infections of girl; [she is female]
	add { "Viking" } to infections of guy;  [and makes the player male]

[ VikingRelationship - relationship and quest variable             ]
[   0: never met                                                   ]
[   1: initial encounter done, no player win yet                   ]
[   2: player won once                                             ]
[   3: player won twice                                            ]
[   4: player won three times (Sonya likes them)                   ]
[   5: player won four times                                       ]
[   6: player won five times                                       ]
[   7: father heard about the player - her cousin appears instead  ]
[   8: the father is waiting for the player to appear for a fight  ]
[   9: during the fight                                            ]
[  20: player won her hand                                         ]
[ 100: player ran away from the father, Vikings sailed away        ]
[ 101: (not used really, father killed the player)                 ]
[ 150: player punched Sonya instead of taking her virginity        ]
[ VikingPregnancy - pregnancy progress variable                    ]
[  0: not preggers                                                 ]
[  1: male player knocked her up (invisible)                       ]
[  2: male player knocked her up (slightly visible)                ]
[  3: male player knocked her up (bulging belly)                   ]
[  4: after the kid's been born                                    ]

[ VikingKidGender                                                  ]
[  0: no kids                                                      ]
[  1: just boys                                                    ]
[  2: just girls                                                   ]
[  3: mixed                                                        ]

[ VikingKidShape - Sonya's kids are part human, part X             ]
[ VikingKidCounter - number of children with the player            ]
[ VikingPregCounter - timer for the next birth (48h from start)    ]

VikingRelationship is a number that varies.			[main variable, something for the saveword]
VikingPregnancy is a number that varies.
VikingKidShape is a text that varies.
VikingKidGender is a number that varies.
VikingKidCounter is a number that varies.				[another thing that should be saved]
VikingPregCounter is a number that varies.
VikingUltimatum is a number that varies.

An everyturn rule:
	if VikingRelationship < 100:  [to prevent birth-messages after she's gone from play]
		if VikingPregCounter is 1:
			increase VikingKidCounter by 1;
			increase score by a random number between 5 and 10;
			if player is in Sonya's Cabin:
				say "     Suddenly, Sonya calls 'It's time!' and starts panting loudly, holding her bulging stomach with both hands. You rush over to her and help her to sit on the bed, then open the door to the lengthwise hallway through the ship and shout for help. In no time at all, an elderly viking woman and two younger women rush into the cabin and help Sonya out of her clothes while telling her to keep calm breathe. So you're not standing in the way, they just tell you to sit on the bed beside your wife, keeping her company and holding her hand.";
				if a random chance of 1 in 2 succeeds:  [kid is a boy]
					if VikingKidShape is "Human":
						say "     Soon, her contractions come quicker and quicker, and then with a gush of fluids, Sonya's child is pushed out of her stretched vagina. The matronly viking gives him a soft slap on the butt and the baby takes his first breath, then immediately starts bawling at full volume. After tying off the umbilical cord and cutting it, the little one is quickly picked up by the experienced women and wiped down, then brought up to his mother, who puts him against her chest in a loving embrace. A bit of peace and quiet returns to the cabin a moment later as he finds her breast and starts suckling. The little human boy in Sonya's arms - your child - looks so incredibly cute, you just can't help yourself from leaning over to kiss him on the head, then give your wife a loving kiss on the lips.";
						say "     While you hold and kiss your viking wife, the reality of a nanite-infected world starts to show itself in your child, as the boy grows and grows, seemingly getting weeks, if not months older with each swallow of her milk. The baby quickly becomes a toddler, then a very young child, getting older and more developed by the second. By the time he's finished drinking from one breast, then the other, a boy looking about fourteen years old is sitting between the two of you. He gives Sonya and you a hug, then shouts 'I'm gonna go play catch with [one of]Svetjalf[or]Snorri[or]Leif[or]Arnvid[or]Ari[or]Finn[or]Gudrun[or]Halla[or]Svala[at random]', jumping off the bed to run out of the room, naked as he is. Seems like he absorbed the knowledge about the other children directly from his mother. Oh, kids grow up so fast these days...";
					else:
						say "     Soon, her contractions come quicker and quicker, and then with a gush of fluids, Sonya's child is pushed out of her stretched vagina. The matronly viking gives him a soft slap on the butt and the baby takes his first breath, then immediately starts bawling at full volume. After tying off the umbilical cord and cutting it, the little one is quickly picked up by the experienced women and wiped down, then brought up to his mother, who puts him against her chest in a loving embrace. A bit of peace and quiet returns to the cabin a moment later as he finds her breast and starts suckling. The little baby in Sonya's arms - your child - looks so incredibly cute in a half-human, half-[VikingKidShape] way, you just can't help yourself from leaning over to kiss him on the head, then give your wife a loving kiss on the lips.";
						say "     While you hold and kiss your viking wife, the reality of a nanite-infected world starts to show itself in your child, as the boy grows and grows, seemingly getting weeks, if not months older with each swallow of her milk. The baby quickly becomes a toddler, then a very young child, getting older and more developed by the second. By the time he's finished drinking from one breast, then the other, a boy looking about fourteen is sitting between the two of you. He gives Sonya and you a hug, then shouts 'I'm gonna go play catch with [one of]Svetjalf[or]Snorri[or]Leif[or]Arnvid[or]Ari[or]Finn[or]Gudrun[or]Halla[or]Svala[at random]', jumping off the bed to run out of the room, naked as he is. Seems like he absorbed the knowledge about the other children directly from his mother. Oh, kids grow up so fast these days...";
					if VikingKidGender is 0:
						now VikingKidGender is 1;
					else if VikingKidGender is 2:
						now VikingKidGender is 3;
				else:  [kid was a girl]
					if VikingKidShape is "Human":
						say "     Soon, her contractions come quicker and quicker, and then with a gush of fluids, Sonya's child is pushed out of her stretched vagina. The matronly viking gives her a soft slap on the butt and the baby takes her first breath, then immediately starts bawling at full volume. After tying off the umbilical cord and cutting it, the little one is quickly picked up by the experienced women and wiped down, then brought up to her mother, who puts her against her chest in a loving embrace. A bit of peace and quiet returns to the cabin a moment later as the girl finds her breast and starts suckling. The little human baby in Sonya's arms - your child - looks so incredibly cute, you just can't help yourself from leaning over to kiss her on the head, then give your wife a loving kiss on the lips.";
						say "     While you hold and kiss your viking wife, the reality of a nanite-infected world starts to show itself in your child, as the girl grows and grows, seemingly getting weeks, if not months, older with each swallow of her milk. The baby quickly becomes a toddler, then a very young child, getting more developed by the second. By the time she's finished drinking from one breast, then the other, a girl looking about fourteen years old is sitting between the two of you. She gives Sonya and you a hug, then shouts 'I'm gonna go play catch with [one of]Svetjalf[or]Snorri[or]Leif[or]Arnvid[or]Ari[or]Finn[or]Gudrun[or]Halla[or]Svala[at random]', jumping off the bed to run out of the room, naked as she is. Seems like she absorbed the knowledge about the other children directly from her mother. Oh, kids grow up so fast these days...";
					else:
						say "     Soon, her contractions come quicker and quicker, and then with a gush of fluids, Sonya's child is pushed out of her stretched vagina. The matronly viking gives her a soft slap on the butt and the baby takes her first breath, then immediately starts bawling at full volume. After tying off the umbilical cord and cutting it, the little one is quickly picked up by the experienced women and wiped down, then brought up to her mother, who puts her against her chest in a loving embrace. A bit of peace and quiet returns to the cabin a moment later as the girl finds her breast and starts suckling. The little baby in Sonya's arms - your child - looks so incredibly cute in a half-human, half-[VikingKidShape] way, you just can't help yourself from leaning over to kiss her on the head, then give your wife a loving kiss on the lips.";
						say "     While you hold and kiss your viking wife, the reality of a nanite-infected world starts to show itself in your child, as the girl grows and grows, seemingly getting weeks, if not months, older with each swallow of her milk. The baby quickly becomes a toddler, then a very young child, getting more developed by the second. By the time she's finished drinking from one breast, then the other, a girl looking about fourteen years old is sitting between the two of you. She gives Sonya and you a hug, then shouts 'I'm gonna go play catch with [one of]Svetjalf[or]Snorri[or]Leif[or]Arnvid[or]Ari[or]Finn[or]Gudrun[or]Halla[or]Svala[at random]', jumping off the bed to run out of the room, naked as she is. Seems like she absorbed the knowledge about the other children directly from her mother. Oh, kids grow up so fast these days...";
					if VikingKidGender is 0:
						now VikingKidGender is 2;
					else if VikingKidGender is 1:
						now VikingKidGender is 3;
				now VikingPregnancy is 0;     [no need to tell the player about the birth, as he was present]
			else:
				say "You have a strange feeling in your body, as if you somehow just know that one of your offspring has entered this world. Maybe you should look for Sonya again on the beach[if VikingRelationship is 20] or visit her in her cabin on the Viking ship[end if]...";
				now VikingPregnancy is 4;     [so she can tell the player about their kid in the next meeting]
			now VikingPregCounter is 0;
		else if VikingPregCounter is 12:
			now VikingPregnancy is 3;   [very visible pregnancy]
		else if VikingPregCounter is 24:
			now VikingPregnancy is 2;   [visible pregnancy]
			if VikingRelationship < 7:[getting visibly pregnant will get Sonya's involvement with the player noticed]
				now VikingRelationship is 7;
		if VikingPregCounter > 1:
			decrease VikingPregCounter by 1;
	if VikingUltimatum is 1:
		say "You remember the [bold type]challenge of the viking chieftain[roman type] against you - running out right about now, your time being up. With you not even showing up, now they'll see Sonya as doubly dishonored - losing in combat against an outlander (with most of them suspecting you of magic or some trickery), who additionally isn't even brave enough to fight her father. Hopefully, you won't run into any of them again, as this'll enrage all of them - even Sonya - a lot. She'd likely try to kill you...";
		now VikingUltimatum is 0;
		now Chieftain's Challenge is resolved;
		repeat with y running from 1 to number of filled rows in Table of random critters:
			choose row y in table of random critters;
			if name entry is "Viking":
				now monster is y;
				now area entry is "nowhere";
				break;
	else if VikingUltimatum is 8:
		say "Time's ticking away if you want to fight for Sonya. The [bold type]chieftain's challenge[roman type] you can answer on the beach will run out today, so better grab your gear now and get moving - but watch out, the man will actually try to kill you...";
	else if VikingUltimatum is 16:
		say "Time's ticking away if you want to fight for Sonya. The [bold type]chieftain's challenge[roman type] you can answer on the beach will run out in two days, so better grab your gear now and get moving soon - but watch out, the man will actually try to kill you...";
	if VikingUltimatum > 1:
		decrease VikingUltimatum by 1;

Section 1 - Monster Responses

to say Viking wins:
	if VikingRelationship is 9:  [fighting Sonya's father]
		say "";   [dealt with in the event]
	else:
		if HP of player > 0:    [player submits]
			if the player is not facially human or the player is not bodily human or the player is not skintone human:    [non-human player = a monster, in her words]
				if VikingRelationship is 1:             [first time submit]
					if charisma of player > 15:   [handsome enough for some sexy time]
						say "     'What kind of monster are you, meekly surrendering to me? I was told there are powerful beasts in the world, not... this.' With a scoff, she shoves you to the ground. 'Let's see if you're at least of use for some pleasure.' With that, she puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
						say "[VikingWinSex]";
					else:    [ugly people just get robbed]
						say "     'What kind of monster are you, meekly surrendering to me? I was told there are powerful beasts in the world, not... this.' With a scoff, she shoves you to the ground. 'Let's see if you've at least got something worth taking.' With that, she starts poking around in your stuff.";
						if carried of food >= 1:
							say "     Finding some food in your pack, she puts it in her satchel and then walks away, leaving you lying in the dust without any look back.";
							decrease carried of food by 1;
						else if carried of water bottle >= 1:
							say "     Finding a bottle of water in your pack, she puts it in her satchel and then walks away, leaving you lying in the dust without a look back.";
							decrease carried of water bottle by 1;
						else:
							say "     Not finding anything to her liking as she throws one after another of your belongings aside, the Viking woman grumbles 'What a waste of time.' Then she turns away from you and walks off, leaving you lying in the dust without any look back.";
				else if VikingRelationship is 2:   [submit after one victory]
					say "     'What?!' She shoves you to the ground 'To think you beat me! Must have been a lucky blow, with you proving so meek now.' With a scoff, she glares down at you. 'Let's see if you're at least of use for some pleasure.' With that, she puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
					say "[VikingWinSex]";
				else if VikingRelationship is 3:   [submit after 2 victories]
					say "     A disappointed expression appears on the face of the Viking woman's face 'No spirit to fight, monster? And I thought you were shaping up so well until now.' With a sigh, she shrugs and continues 'Well then, if you want to be a tame monster, get busy and give me some pleasure.' She puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
					say "[VikingWinSex]";
				else if VikingRelationship > 3:    [submit after 3 and more victories]
					say "     She is a bit nonplussed, saying 'What's this, my monster? Don't you want to fight and prove your power over me again and ravish me afterwards?' Looking at you affectionately for a moment, she shrugs and continues 'Well, I won't just have sex with you - can't, really - I don't want to appear weak. But we can still have some fun...' She puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
					say "[AffectionateVikingWinSex]";
			else:    [human form player]
				if VikingRelationship is 1:             [first time submit]
					if charisma of player > 15:   [handsome enough for some sexy time]
						say "     'Hmph - you're just another of those weaklings that run around like frightened chickens when they're raided. I had hoped to find somewhat more impressing people in this new land.' With a scoff, she shoves you to the ground. 'Let's see if you're at least of use for some pleasure.' With that, she puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
						say "[VikingWinSex]";
					else:    [ugly people just get robbed]
						say "     'Hmph - you're just another of those weaklings that run around like frightened chickens when they're raided. I had hoped to find somewhat more impressing people in this new land.' With a scoff, she shoves you to the ground. 'Let's see if you've at least got something worth taking.' With that, she starts poking around in your stuff.";
						if carried of food >= 1:
							say "     Finding some food in your pack, she puts it in her satchel and then walks away, leaving you lying in the dust without any look back.";
							decrease carried of food by 1;
						else if carried of water bottle >= 1:
							say "     Finding a bottle of water in your pack, she puts it in her satchel and then walks away, leaving you lying in the dust without a look back.";
							decrease carried of water bottle by 1;
						else:
							say "     Not finding anything to her liking as she throws one after another of your belongings aside, the Viking woman grumbles 'What a waste of time.' Then she turns away from you and walks off, leaving you lying in the dust without any look back.";
				else if VikingRelationship is 2:   [submit after one victory]
					say "     'What?!' She shoves you to the ground 'You think I'd treat you differently like any other outlander, only because you've beaten me once? Must have been a lucky blow too, with you proving so meek now.' With a scoff, she glares down at you. 'Let's see if you're at least of use for some pleasure.' With that, she puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
					say "[VikingWinSex]";
				else if VikingRelationship is 3:   [submit after 2 victories]
					say "     A disappointed expression appears on the face of the Viking woman's face 'No spirit to fight? And I thought you were shaping up so well until now.' With a sigh, she shrugs and continues 'Well then, if you want to be just a servant, get busy and give me some pleasure.' She puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
					say "[VikingWinSex]";
				else if VikingRelationship > 3:    [submit after 3 and more victories]
					say "     She is a bit nonplussed, saying 'What's this, my warrior? Don't you want to fight and prove your power over me again and ravish me afterwards?' Looking at you affectionately for a moment, she shrugs and continues 'Well, I won't just have sex with you - can't, really - I don't want to appear weak. But we can still have some fun...' She puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
					say "[AffectionateVikingWinSex]";
		else:      [player loses]
			if the player is not facially human or the player is not bodily human or the player is not skintone human:    [non-human player = a monster, in her words]
				if VikingRelationship is 1:             [first time loss]
					if charisma of player > 15:   [handsome enough for some sexy time]
						say "     Leaving you dazed with her last blow, she gives you a shove and you fall on your ass. 'A bit weak for a monster, aren't you? Oh well, maybe you're just a stunted one.' Looking down on your prone form, she lets her gaze wander over you appraisingly. 'Still, there was at least some fight in you. I wonder if you can please a woman too, creature...' With that, she puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
						say "[VikingWinSex]";
					else:    [ugly people just get robbed]
						say "     Leaving you dazed with her last blow, she gives you a shove and you fall on your ass. 'A bit weak for a monster, aren't you? Oh well, maybe you're just a stunted one.' Looking down on your prone form, she lets her gaze wander over you appraisingly. 'Let's see if you've at least got something worth taking.' With that, she starts poking around in your stuff.";
						if carried of food >= 1:
							say "     Finding some food in your pack, she puts it in her satchel and then walks away, leaving you lying in the dust without any look back.";
							decrease carried of food by 1;
						else if carried of water bottle >= 1:
							say "     Finding a bottle of water in your pack, she puts it in her satchel and then walks away, leaving you lying in the dust without a look back.";
							decrease carried of water bottle by 1;
						else:
							say "     Not finding anything to her liking as she throws one after another of your belongings aside, the Viking woman grumbles 'What a waste of time.' Then she turns away from you and walks off, leaving you lying in the dust without any look back.";
				else if VikingRelationship is 2:   [loss after one victory]
					say "     Leaving you dazed with her last blow, she gives you a shove and you fall on your ass. 'I win.' Looking down on your prone form, she lets her gaze wander over you appraisingly and a small smile comes to her lips. 'That victory of yours from before must have been pure luck, but still... you've got some spirit to fight. I could imagine taking you with me when we finally raid this land. For now, I'll just have some fun with you and catch you again later.' With that, she puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
					say "[VikingWinSex]";
				else if VikingRelationship is 3:   [loss after 2 victories]
					say "     Leaving you dazed with her last blow, she puts a finger against your chest, then slowly pushes your swaying body until you fall on your ass. 'I win. You won't get another victory against me today.' Looking down on your prone form, she lets her gaze wander over you appraisingly and a wide smile comes to her lips. 'Though that you actually did beat me twice shows that there's more to you than I thought at first. You might just be worth as a pet to accompany me into battle. I look forward to fighting and capturing you when we finally raid this coast. But for now, how about you give me some pleasure.' With that, she puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
					say "[VikingWinSex]";
				else if VikingRelationship > 3:    [loss after 3 and more victories]
					say "     She is a bit nonplussed, saying 'Not quite up to your usual form, my monster? You'll have to do better if you want to prove your power over me again and ravish me afterwards.' Looking at you affectionately for a moment, she shrugs and continues 'Well, sex is out for now, but we can still have some fun...' Guiding you up behind a dune, she tells you to strip and then softly pushes you to lie on the ground. Taking off her own gear, she reveals a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
					say "[AffectionateVikingWinSex]";
			else:    [human form player]
				if VikingRelationship is 1:
					if charisma of player > 15:   [handsome enough for some sexy time]
						say "     Leaving you dazed with her last blow, she gives you a shove and you fall on your ass. 'I win. Not a big surprise, but at least you fought back a bit.' Looking down on your prone form, she lets her gaze wander over you appraisingly. 'You've shown some courage and just might be worth taking as a serf. Let's see how you measure up providing pleasure to me...' With that, she puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
						say "[VikingWinSex]";
					else:    [ugly people just get robbed]
						say "     Leaving you dazed with her last blow, she gives you a shove and you fall on your ass. 'A bit weak for a monster, aren't you? Oh well, maybe you're just a stunted one.' Looking down on your prone form, she lets her gaze wander over you appraisingly. 'Let's see if you've at least got something worth taking.' With that, she starts poking around in your stuff.";
						if carried of food >= 1:
							say "     Finding some food in your pack, she puts it in her satchel and then walks away, leaving you lying in the dust without any look back.";
							decrease carried of food by 1;
						else if carried of water bottle >= 1:
							say "     Finding a bottle of water in your pack, she puts it in her satchel and then walks away, leaving you lying in the dust without a look back.";
							decrease carried of water bottle by 1;
						else:
							say "     Not finding anything to her liking as she throws one after another of your belongings aside, the Viking woman grumbles 'What a waste of time.' Then she turns away from you and walks off, leaving you lying in the dust without any look back.";
				else if VikingRelationship is 2:   [loss after one victory]
					say "     Leaving you dazed with her last blow, she gives you a shove and you fall on your ass. 'I win. Not a big surprise, but at least you fought back.' Looking down on your prone form, she lets her gaze wander over you appraisingly and a small smile comes to her lips. 'That time you won before must have been pure luck, but still... I like my serfs to have a bit of spirit. Too bad I'm in the middle of scouting this coast, or I'd take you along to the ship. For now, I'll just have some fun with you and catch you later, when we really raid.' With that, she puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
					say "[VikingWinSex]";
				else if VikingRelationship is 3:   [loss after 2 victories]
					say "     Leaving you dazed with her last blow, she puts a finger against your chest, then slowly pushes your swaying body until you fall on your ass. 'I win. You won't get another victory against me today.' Looking down on your prone form, she lets her gaze wander over you appraisingly and a wide smile comes to her lips. 'Though that you actually did beat me twice shows that there's more to you than I thought at first. You'll be my favorite serf after we raid this coast and carry off our loot. I look forward to fighting and capturing you then. But for now, how about you give me some pleasure.' With that, she puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
					say "[AffectionateVikingWinSex]";
				else if VikingRelationship > 3:    [loss after 3 and more victories]
					say "     She is a bit nonplussed, saying 'Not quite up to your usual form, my warrior? You'll have to do better if you want to prove your power over me again and ravish me afterwards.' Looking at you affectionately for a moment, she shrugs and continues 'Well, sex is out for now, but we can still have some fun...' Guiding you up behind a dune, she tells you to strip and then softly pushes you to lie on the ground. Taking off her own gear, she reveals a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
					say "[AffectionateVikingWinSex]";

to say VikingWinSex:                 [demanding sex]
	WaitLineBreak;
	say "     Coming to stand over you, she puts a hand to her pussy and spreads its lips a bit. The tall Nordic beauty just looks amazing standing over you, and your gaze inevitably is drawn to wander over her perfect, pale skin, the pretty bush of blond pubic hair, her toned body and finally the pair of well-rounded breasts. You get so distracted by the alluring sights that you totally blank out that she says something. Only when you get poked in the side by her naked foot do you hear the by then impatient order 'Get busy - now!'";
	say "     Sitting up, you bring your head up between her legs, your nose almost bumping against her crotch in your hurry. Licking over her folds and teasing the Viking's clit with your tongue, you start giving her the oral attention she demands. Then you bring your fingers into the game too, stroking her nether lips, then pushing one and another into her vagina, spreading and caressing her inner passage. Pleasing this attractive woman has your own libido rising to new heights, [if cocks of player > 0]your cock almost painfully hard[else if cunts of player > 0]your cunt drippingly wet[else]your whole body tingling[end if], but you don't dare slowing down on her to take care of yourself.";
	WaitLineBreak;
	say "     Fingering and licking her pussy, you draw pleased gasps and moans from the woman, which get louder and louder as she quickly moves towards orgasm. Her hands grab your head tightly at one point to hold you against her tightly for some extra tongue action, during which a new tone of urgency comes into her shouts of pleasure. Then finally, she reaches the point of no return, panting and shaking as her climax courses through her whole body. You can feel her inner muscles tense and twitch around your fingers, and femcum starts running down your fingers and onto your tongue.";
	if the player is not facially human or the player is not bodily human or the player is not skintone human:    [non-human player = a monster, in her words]
		say "     As her orgasm slowly winds down, the Nordic woman takes a few deep breaths, then goes to collect her gear. Meanwhile, you get busy [if cocks of player > 0]stroking your cock[else if cunts of player > 0]fingering your pussy[else]stroking yourself[end if] to take care of your own needs. As the Viking bends over to pick up her sword, she gives you another look and chuckles. 'Hah, maybe you're just another kind of monster - less powerful, but skilled in other ways. You'll be busy when we finally raid this coast.' With that, she turns and walks away.";
	else:   [human player]
		say "     As her orgasm slowly winds down, the Nordic woman takes a few deep breaths, then goes to collect her gear. Meanwhile, you get busy [if cocks of player > 0]stroking your cock[else if cunts of player > 0]fingering your pussy[else]stroking yourself[end if] to take care of your own needs. As the Viking bends over to pick up her sword, she gives you another look and chuckles. 'Hah, at least that's something you're good at. Keep up training your skills, you'll need them again when we come to really raid this coast.' With that, she turns and walks away.";

to say AffectionateVikingWinSex:     [sex with player, gets the player off too]
	WaitLineBreak;
	if the player is not facially human or the player is not bodily human or the player is not skintone human:    [non-human player = a monster, in her words]
		say "     Kneeling in the sand between your legs, Sonya runs her hands up your body and slides herself forward to lie on top of you. The soft touch of her perky breasts against your chest sends pleasant tingles through your body. A lustful moan escapes your lips, leading over into a hungry kiss as she presses her lips against yours and explores your mouth with her tongue. 'My [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[or]beautiful[or]handsome[at random] monster, how I long for your touch. You might be just an outsider and not one of us, though... maybe you could be. But for now, let's just enjoy this.'";
	else:    [human player]
		say "     Kneeling in the sand between your legs, Sonya runs her hands up your body and slides herself forward to lie on top of you. The soft touch of her perky breasts against your chest sends pleasant tingles through your body. A lustful moan escapes your lips, leading over into a hungry kiss as she presses her lips against yours and explores your mouth with her tongue. 'My [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[or]beautiful[or]handsome[at random] warrior, how I long for your touch. You might be just an outsider and not one of us, though... maybe you could be. But for now, let's just enjoy this.'";
	LineBreak;
	if cocks of player > 0:                      [male+herm]
		say "     With that, she grinds her crotch against yours, your hard shaft rubbing against her soft, pale skin. Panting in lust, you bring your hands to her hips, pushing them up a bit so you can align your cock with her pussy. Touching her nether lips with its tip, you can feel them spreading a bit for your entry, then... pull away. Sonya grins down at you, saying 'Ahah - you didn't earn that this time, lover. See it as a motivation to fight better next time...' She moves further up and turns around, then leans forward until she's in the 69 position on top of you. Her crotch is right in your face and the blond hair of her bush tickles your chin. Going with the flow, you put your tongue to work, licking and teasing her pussy. Meanwhile, your Viking partner takes hold of your cock, stroking it and fondling your balls softly. Then she takes the tip into her mouth and sinks her lips deeper around the shaft, bobbing up and down.";
		say "     The two of you lick and suck and stroke each other for quite a while, each totally focused on the other's pleasure. When things get pretty close for both of you, Sonya changes positions again, getting to kneel over your crotch. With flowing movements of her hips, she rubs the moist and swollen lips of her pussy along the shaft of your cock, sometimes teasingly letting the tip of it come between them then quickly moving down along the shaft again. It doesn't take more than a minute or two of this to finally drive you over the edge, gasping as your balls twitch and spurt after spurt of your seed splats all over your chest and abdomen. The Viking woman isn't far behind, the feel of your pulsing shaft rubbing against her pussy lips giving her an intense climax.";
		WaitLineBreak;
		if the player is not facially human or the player is not bodily human or the player is not skintone human:
			say "     Sticky with sweat, cum and female juices, you lie there together, holding each other in your arms as your orgasms wind down. Breathing deeply, Sonya moans 'I love you, my monster.' and presses a kiss against your lips. You keep making out for a moment longer, then each gather your gear and get back to everyday post-apocalyptic survival.";
		else:
			say "     Sticky with sweat, cum and female juices, you lie there together, holding each other in your arms as your orgasms wind down. Breathing deeply, Sonya moans 'I love you, my warrior.' and presses a kiss against your lips. You keep making out for a moment longer, then each gather your gear and get back to everyday post-apocalyptic survival.";
	else if cunts of player > 0:            [female]
		say "     With that, she grinds her crotch against yours, rubbing your two pussies against each other. Sonya grins down at you, saying 'How about we eat each other out...' She moves further up and turns around, then leans forward until she's in the 69 position on top of you. Her crotch is right in your face and the blond hair of her bush tickles your chin. Going with the flow, you put your tongue to work, licking and teasing her pussy. Meanwhile, your Viking partner does the same below, her tongue and fingers expertly stimulating your pussy.";
		say "     The two of you lick and suck and stroke each other for quite a while, each totally focused on the other's pleasure. When things get pretty close for both of you, Sonya changes positions again, getting to kneel over your crotch. With flowing movements of her hips, she rubs the moist and swollen lips of her pussy against yours. Knowing exactly how to please a woman, she moves you towards orgasm at the same pace as herself, and less than a minute later, the two of you climax at the same time, loud gasps and moans only interrupted as she kisses you.";
		WaitLineBreak;
		if the player is not facially human or the player is not bodily human or the player is not skintone human:
			say "     Sticky with sweat and female juices, you lie there together, holding each other in your arms as your orgasms wind down. Breathing deeply, Sonya moans 'I love you, my monster.' and presses another kiss against your lips. You keep making out for a moment longer, then rub yourselves clean with the beach's very fine dry sand and each gather your gear. Time to get back to everyday post-apocalyptic survival.";
		else:
			say "     Sticky with sweat and female juices, you lie there together, holding each other in your arms as your orgasms wind down. Breathing deeply, Sonya moans 'I love you, my warrior.' and presses another kiss against your lips. You keep making out for a moment longer, then rub yourselves clean with the beach's very fine dry sand and each gather your gear. Time to get back to everyday post-apocalyptic survival.";
	else:                                   [neuter]
		say "     With that, she grinds her crotch against yours, and even though you don't have any genitals, her touch wakes urges inside you. Sonya grins down at you, saying 'How about you eat me out and I stoke you there...' She moves further up and turns around, then leans forward until she's in the 69 position on top of you. Her crotch is right in your face and the blond hair of her bush tickles your chin. Going with the flow, you put your tongue to work, licking and teasing her pussy. Meanwhile, your Viking partner caresses the skin of your bare crotch with her fingers and tongue.";
		say "     The two of you lick and stroke each other for quite a while, each totally focused on the other's pleasure. When things get pretty close for both of you, Sonya changes positions again, getting to kneel over your crotch again. With flowing movements of her hips, she rubs the moist and swollen lips of her pussy against you. It feels great, and less than a minute later, a tingly feeling of satisfaction runs through your whole body. Satisfied, Sonya quickly strokes herself and joins you just moments later, her femcum dripping down on you.";
		WaitLineBreak;
		if the player is not facially human or the player is not bodily human or the player is not skintone human:
			say "     Sticky with sweat and female juices, you lie there together, holding each other in your arms as your orgasms wind down. Breathing deeply, Sonya moans 'I love you, my monster.' and presses another kiss against your lips. You keep making out for a moment longer, then rub yourselves clean with the beach's very fine dry sand and each gather your gear. Time to get back to everyday post-apocalyptic survival.";
		else:
			say "     Sticky with sweat and female juices, you lie there together, holding each other in your arms as your orgasms wind down. Breathing deeply, Sonya moans 'I love you, my warrior.' and presses another kiss against your lips. You keep making out for a moment longer, then rub yourselves clean with the beach's very fine dry sand and each gather your gear. Time to get back to everyday post-apocalyptic survival.";

to say Viking loses:
	if VikingRelationship is 1:             [first time victory over her]
		if the player is not facially human or the player is not bodily human or the player is not skintone human:    [non-human player = a monster, in her words]
			say "     Your last hit leaves the Viking woman swaying on her feet. For a moment it looks like she's gathering strength to continue fighting, then she lets out her breath in a huff and drops her sword and shield. 'You're stronger than I thought, monster. *pant* I... I Sonya Frithjofsdotter - I must admit defeat. I still can't believe this - no one ever beat me!' She looks to the ground for a moment, then back at you. 'Well then - time to keep my promises. I swore an oath to Freya that I wouldn't let a weakling be my first, and so I never, I couldn't - even Leif's son Snorri wasn't strong enough. I never thought that a monster would be...'";
		else:  [human player]
			say "     Your last hit leaves the Viking woman swaying on her feet. For a moment it looks like she's gathering strength to continue fighting, then she lets out her breath in a huff and drops her sword and shield. 'You're stronger than I thought, outlander. *pant* I... I Sonya Frithjofsdotter - I must admit defeat. I still can't believe this - no one ever beat me!' She looks to the ground for a moment, then back at you. 'Well then - time to keep my promises. I swore an oath to Freya that I wouldn't let a weakling be my first, and so I never, I couldn't - even Leif's son Snorri wasn't strong enough. I never thought that an outlander would be...'";
		LineBreak;
		say "     Falling silent, the young Viking woman leads you up and over the crest of the nearest dune, then starts taking off her armor and clothes.";
		LineBreak;
		say "     [bold type]What now?[roman type][line break]";	
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Have sex with her.";
		say "     ([link]N[as]n[end link]) - Tell her she doesn't have to do this.";
		if player consents:
			LineBreak;
			say "[VikingVirginSex]";
			increase VikingRelationship by 1;
		else:
			LineBreak;
			say "     As you tell her she doesn't have to do this, she's not at all relieved, as you might have thought, but rather... annoyed. Pulling off the scale mail covering her chest and revealing a very attractive upper body with pale skin and two perky breasts, she growls 'What part of 'Oath to a god' did you not understand, you idiot?' Uhoh - looks like her eyes glowed a bit as she said that, and there's a hum of electricity in the air that makes you feel very uneasy about declining her again.";
			LineBreak;
			say "     [bold type]Fuck her after all?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Better to just go with it...";
			say "     ([link]N[as]n[end link]) - Hell no!";
			if player consents:
				LineBreak;
				LineBreak;
				say "[VikingVirginSex]";
				increase VikingRelationship by 1;
			else:
				LineBreak;
				say "     Making a fist, you punch the viking woman in the nose, sending her sprawling backwards on the sand. She appears dazed for the moment - giving you a chance to gain some ground and get away from her. As you hurry over the beach, a static charge starts to buld all around you. Uh-oh... that doesn't seem like a good thing. You tense for what might happen next, then feel the hum of electricity suddenly quiet down - like the calm before a storm. Your first instinct in that moment is to jump to the side... and it definitively was the right one. A literal thunderbolt hits the sand right where you had been standing, leaving a patch of it molten into glass, spraying outside in a shower of searing hot droplets. Quite a few of them hit and singe you, but at least you didn't get fried by that lightning bolt.";
				if HP of player > 10:
					now HP of player is 7;
	else if VikingRelationship is 2:   [second victory]
		if the player is not facially human or the player is not bodily human or the player is not skintone human:    [non-human player = a monster, in her words]
			say "     Breathing heavily, Sonya stumbles back from your last hit, then lowers her sword and shield with a grunt, looking annoyed. 'You beat me - again! There just might be more to the legends about you monsters you than I thought.' With a shrug, her expression changes to one that is a bit more friendly, coupled with eyes that roam over your body with interest. She bites her lip for a second, then continues 'You know... last time with you wasn't half bad, and you certainly proved yourself again. How about another tumble in the dunes?'";
		else:  [human player]
			say "     Breathing heavily, Sonya stumbles back from your last hit, then lowers her sword and shield with a grunt, looking annoyed. 'You beat me - again! There just might be more to you than I thought. You're certainly no easily raided outlander.' With a shrug, her expression changes to one that is a bit more friendly, coupled with eyes that roam over your body with interest. She bites her lip for a second, then continues 'You know... last time with you wasn't half bad, and you certainly proved yourself again. How about another tumble in the dunes?'";
		LineBreak;
		say "     [bold type]Do you let her lead you there for another round of sex with this beautiful Viking woman?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Get it on with Sonya.";
		say "     ([link]N[as]n[end link]) - Excuse yourself for now.";
		if player consents:
			LineBreak;
			say "[VikingLossSex]";
		else:
			LineBreak;
			say "     You excuse yourself and tell her now isn't a good time. Sonya isn't too pleased with your rejection, but it doesn't go further than a few grumbles to herself as she walks off without a look back.";
		increase VikingRelationship by 1;
	else if VikingRelationship > 2 and VikingRelationship < 7:  [three+ victories]
		if the player is not facially human or the player is not bodily human or the player is not skintone human:    [non-human player = a monster, in her words]
			say "     Breathing heavily, Sonya stumbles back from your last hit, then lowers her shield and sheathes her sword. With only a tiny bit of hesitation, she acknowledges defeat, then walks up to you and kisses your lips. 'Another victory for you, my brave monster.' She rubs her nose against yours and lets her hands roam over your body, then nods towards the nearby dunes. 'Come, let's have some fun!'";
		else:  [human player]
			say "     Breathing heavily, Sonya stumbles back from your last hit, then lowers her shield and sheathes her sword. With only a tiny bit of hesitation, she acknowledges defeat, then walks up to you and kisses your lips. 'Another victory for you, my outlander warrior.' She rubs her nose against yours and lets her hands roam over your body, then nods towards the nearby dunes. 'Come, let's have some fun!'";
		LineBreak;
		say "     [bold type]Do you let her lead you there for another round of sex with this beautiful Viking woman?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Get it on with Sonya.";
		say "     ([link]N[as]n[end link]) - Excuse yourself for now.";
		if player consents:  [sexy time]
			LineBreak;
			say "[AffectionateVikingLossSex]";
		else:  [no sex after all]
			LineBreak;
			say "     You excuse yourself and tell her now isn't a good time. Sonya isn't too pleased with your rejection, but it doesn't go further than a few grumbles to herself as she walks off without a look back.";
		increase VikingRelationship by 1;
	else if VikingRelationship is 20:  [victory by a player who won her hand]
		if the player is not facially human or the player is not bodily human or the player is not skintone human:    [non-human player = a monster, in her words]
			say "     Breathing heavily, Sonya stumbles back from your last hit, then lowers her shield and sheathes her sword. With only a tiny bit of hesitation, she acknowledges defeat, then walks up to you and kisses your lips. 'Another victory for you, my brave monster.' She rubs her nose against yours and lets her hands roam over your body, then nods towards the nearby dunes. 'Come, let's have some fun!'";
		else:  [human player]
			say "     Breathing heavily, Sonya stumbles back from your last hit, then lowers her shield and sheathes her sword. With only a tiny bit of hesitation, she acknowledges defeat, then walks up to you and kisses your lips. 'Another victory for you, my outlander warrior.' She rubs her nose against yours and lets her hands roam over your body, then nods towards the nearby dunes. 'Come, let's have some fun!'";
		LineBreak;
		say "     [bold type]Do you let her lead you there for another round of sex with your beautiful Viking wife?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Get it on with Sonya.";
		say "     ([link]N[as]n[end link]) - Excuse yourself for now.";
		if player consents:  [sexy time]
			LineBreak;
			say "[AffectionateVikingLossSex]";
		else:  [no sex after all]
			LineBreak;
			say "     You excuse yourself and tell her now isn't a good time. Sonya isn't too pleased with your rejection, but it doesn't go further than a few grumbles to herself as she walks off without a look back.";
	if VikingRelationship is 9:  [fighting Sonya's father]
		say "";   [dealt with in the event]

to say VikingVirginSex:             [first time with the player]
	if cocks of player > 0:                      [male+herm]
		say "     You watch Sonya take off her armor and then the rest of her clothes, revealing the pale-skinned perfection of her well-trained body. There is a certain... urgency to her movements, as you guess there would be with her a virgin and all. Now completely naked, her perky breasts bouncing as she moves, the young Viking moves to lie down in the sand, spreading her legs a bit and looking up expectantly at you. 'Come on, claim your prize - But you better be good. I've been waiting a long time for this.' Feeling decidedly overdressed, you quickly remove your own clothes, freeing your by now fully hard erection.";
		WaitLineBreak;
		say "     Following your stiff organ's lead, you kneel between Sonya's legs, running your hands down over the smooth skin of her legs then reaching out to cup her breasts. She moans softly as you stroke them and move on to taking her nipples, one after another, into your mouth and suckle on them. 'That feels *gasp* great, but... but come on - Fuck me!' she says, her hand sliding down your body to grasp your hard shaft and setting it against her moist pussy lips. Eager to fulfill her wish, you thrust into her body, easily penetrating her hymen and sliding deeper until you bottom out. It feels amazing to have her warm and tight passage stretched around your manhood, a sentiment clearly shared by the Nordic warrior-woman. You rest like that for a moment, balls deep inside this pale beauty, letting her get used to it.";
		say "     Soon, Sonya moans 'Go on. Take me!', her legs wrapping around your hips to pull you deeper into her vagina. Taking up sliding out then pounding deep into her again, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. Her arms wrap around your upper body, pulling you fully on top of her as she seeks your lips with hers, hungrily making out with you. For a while, anything but the wild and urgent sex you have with her is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
		WaitLineBreak;
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, the muscles in her vagina tightening their grip on your cock as the Viking orgasms. Not to lag too far behind, you abandon all restraint, grinding against her crotch urgently, and blow your load moments later. Pulse after pulse of your fertile seed shoot deep into the young woman's insides, making her well and truly deflowered.";
		say "     Exhausted, you stay on top of her, still with your cock inside, and try to catch your breath. Looks like Sonya has other ideas... suddenly the world spins as she rolls the two of you over until she's on top and straddling your hips. With a new composure, now that her lusts have been satisfied, she pulls off your softening shaft and cleans up a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her gear.";
	else if cunts of player > 0:            [female]
		say "     You watch Sonya take off her armor and then the rest of her clothes, revealing the pale-skinned perfection of her well-trained body. There is a certain... urgency to her movements, as you guess there would be with her a virgin and all. Now completely naked, her perky breasts bouncing as she moves, the young Viking moves to lie down in the sand, spreading her legs a bit and looking up expectantly at you. 'Come on, claim your prize - But you better be good. I've been waiting a long time for this.' Feeling decidedly overdressed, you quickly remove your own clothes, revealing your own pussy.";
		say "     With a sigh, Sonya remarks, 'Finally getting beaten - and then by a woman who can't even take me properly. Oh, why did it have to be you.' Looking down on the pale-skinned, beautiful woman, you tell her that she shouldn't worry about that - there are quite a lot that two women can do to enjoy themselves. Demonstrating one of them, you lie down yourself and part your legs, then tell the viking to get licking. After all, it's her duty to please you if she wants to fulfill that oath. Sonya grimaces slightly, clearly having imagined her first sexual encounter very differently, but after a moment of hesitation, she stands up with a huff and gets on all fours in front of you. Lowering her head, the striking woman then gives your pussy a first hesitant little lick.";
		WaitLineBreak;
		say "     You moan loudly as Sonya makes her first experiences with pleasing a woman orally, still somewhat resentful that you don't have a cock. Despite this, she gives it her best try, honor-bound as she is, and... after a little bit of fumbling around, it turns out she's a natural at it - licking and nibbling your sensitive little clit, gently rubbing and spreading your nether lips as a finger strokes the opening of your vagina. Of course, being a female herself, the viking just knows what to go for and how to drive a woman to the edge of orgasm, then across. After a short while of breathtaking stimulation by the blond beauty, you give a satisfied gasp, throwing your head back as femcum squirts from your opening and hits Sonya's face.";
		say "     The viking wipes your juices off her skin with a snort, then says, 'There, I took care of it for you. Now...' She starts to raise herself up, seemingly ready to leave the let-down of a first time behind - but you grab her by the shoulder and push her back down, as you're far from done with the sexy woman. Ordering Sonya to stay as she is, you move around to the Viking's backside, running a hand over her firm, well-rounded butt-cheeks. There is a pant from the Nordic beauty as your hand slides between her legs, brushing against sensitive nether lips and then reaching her little clit. Sonya gives a breathless gasp as you rub over her button with a finger, gently tickling it while your other hand starts to spread the lips of her pussy apart.";
		WaitLineBreak;
		say "     As you slide one of your digits into Sonya, rubbing her virgin passage, you can't help but thing that there is something very delicious about having this strong woman before you on her hands and knees, shivering and panting helplessly as you touch her. This animates you to really put in some effort, teasing her first in one spot, then another, finding out what really gets her going. It's quite a lot of fun to learn that if you slide your finger in... just... like... so... and... then... do THIS - Sonya throws her head back moaning loudly as a mini-orgasm runs through her body. By now, her earlier reluctance is long forgotten, washed away with the steady trickle of female juices from a very, very wet and swollen pussy.";
		say "     You keep going for a while like this, playing with Sonya's body, making her tremble, pant and gasp, before you finally go all out, intensifying your finger-work to get her to the climax that has been building all this time. The beautiful woman's moans get louder and more high-pitched as they come faster and faster, then she gives something halfway between a squeak and an aroused shout as the point of no return is reached. Sonya rocks back - hard - to get even more of your teasing fingers inside her. As she does so, you feel something push back against them for a fraction of a second, then break - there it goes, Sonya's hymen. The pain of losing her cherry doesn't even register with the pale-skinned woman, as deep as she is in the grip of her orgasm...";
		WaitLineBreak;
		say "     Sinking forward to lie panting on the ground, her ass still half-raised, Sonya regains her breath after a minute or two, then rolls over on her side to look at you. Her eyes roam up and down your body, resting for a second on your own pussy, then she says, 'That was... unexpectedly good. I - I still would have preferred a cock though - I think. Well, my oath is now well and truly fulfilled.' With a new composure, now that her lusts have been satisfied, she sits up and cleans herself a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her gear.";
		now Dexterity of Sonya is 1;
	else:                                   [neuter]
		say "     You watch Sonya take off her armor and then the rest of her clothes, revealing the pale-skinned perfection of her well-trained body. There is a certain... urgency to her movements, as you guess there would be with her a virgin and all. Now completely naked, her perky breasts bouncing as she moves, the young Viking moves to lie down in the sand, spreading her legs a bit and looking up expectantly at you. 'Come on, claim your prize - But you better be good. I've been waiting a long time for this.' Feeling decidedly overdressed, you quickly remove your own clothes, revealing your bare, genital-less crotch.";
		say "     Sonya gives a surprised 'What?', then remarks with a sigh 'Finally getting beaten - and then by... what are you, even? With nothing between your...' Looking down on the pale-skinned, beautiful woman, you tell her that she shouldn't worry about that - there are quite a lot she can do with you, even if it isn't fucking. Demonstrating one of them, you lie down yourself and part your legs, then tell the viking to get licking. After all, it's your right as the victor. Sonya grimaces slightly, her idea of a good time more centered on hard cocks and male bodies, but after a moment of hesitation, she stands up with a huff and gets on all fours in front of you. Lowering her head, the striking woman then gives your smooth crotch a first hesitant little lick.";
		WaitLineBreak;
		say "     You moan loudly as Sonya makes her first experiences with pleasing a genderless person orally, still somewhat resentful that you don't have a cock. Despite this, she gives it her best try, honor-bound as she is, and... after a little bit of fumbling around, it turns out she's a natural at it - licking and nibbling your sensitive skin, gently rubbing and finding the most tender spots. After a short while of breathtaking stimulation by the blond beauty, you give a satisfied gasp, throwing your head back as tremors of lust run through your whole being.";
		say "     The viking wipes her lips with a snort, then says, 'There, I took care of it for you. Now...' She starts to raise herself up, seemingly ready to leave - but you grab her by the shoulder and push her back down, as you're far from done with the sexy woman. Ordering Sonya to stay as she is, you move around to the Viking's backside, running a hand over her firm, well-rounded butt-cheeks. There is a pant from the Nordic beauty as your hand slides between her legs, brushing against sensitive nether lips and then reaching her little clit. Sonya gives a breathless gasp as you rub over her button with a finger, gently tickling it while your other hand starts to spread the lips of her pussy apart.";
		WaitLineBreak;
		say "     As you slide one of your digits into Sonya, rubbing her virgin passage, you can't help but thing that there is something very delicious about having this strong woman before you on her hands and knees, shivering and panting helplessly as you touch her. This animates you to really put in some effort, teasing her first in one spot, then another, finding out what really gets her going. It's quite a lot of fun to learn that if you slide your finger in... just... like... so... and... then... do THIS - Sonya throws her head back moaning loudly as a mini-orgasm runs through her body. By now, her earlier reluctance is long forgotten, washed away with the steady trickle of female juices from a very, very wet and swollen pussy.";
		say "     You keep going for a while like this, playing with Sonya's body, making her tremble, pant and gasp, before you finally go all out, intensifying your finger-work to get her to the climax that has been building all this time. The beautiful woman's moans get louder and more high-pitched as they come faster and faster, then she gives something halfway between a squeak and an aroused shout as the point of no return is reached. Sonya rocks back - hard - to get even more of your teasing fingers inside her. As she does so, you feel something push back against them for a fraction of a second, then break - there it goes, Sonya's hymen. The pain of losing her cherry doesn't even register with the pale-skinned woman, as deep as she is in the grip of her orgasm...";
		WaitLineBreak;
		say "     Sinking forward to lie panting on the ground, her ass still half-raised, Sonya regains her breath after a minute or two, then rolls over on her side to look at you. Her eyes roam up and down your body, resting for a second on your own pussy, then she says, 'That was... unexpectedly good. I - I still would have preferred a cock though - I think. Well, my oath is now well and truly fulfilled.' With a new composure, now that her lusts have been satisfied, she sits up and cleans herself a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her gear.";
	LineBreak;
	if the player is not facially human or the player is not bodily human or the player is not skintone human:    [non-human player = a monster, in her words]
		say "     As she pulls her clothes back on, Sonya gives your naked body a glance that lingers for a moment, then she shakes her head. 'You weren't half bad in fulfilling your duty in my oath - but don't think that makes you special in any way or gives you rights with me. You're still just a foreign monster, and one victory over me won't change that!' On that note, she turns away and walks off without a look back.";
	else:    [human player]
		say "     As she pulls her clothes back on, Sonya gives your naked body a glance that lingers for a moment, then she shakes her head. 'You weren't half bad in fulfilling your duty in my oath - but don't think that makes you special in any way or gives you rights with me. You're still just an outlander, and one victory over me won't change that!' On that note, she turns away and walks off without a look back.";

to say VikingLossSex:               [second time with the player]
	if cocks of player > 0:
		say "     After following the young viking to a secluded spot behind the crest of a dune, you watch Sonya take off her armor and then the rest of her clothes, revealing the pale-skinned perfection of her well-trained body. Now completely naked, her perky breasts bouncing as she moves, the young Viking moves to lie down in the sand, spreading her legs a bit and looking up expectantly at you. 'Come on, claim your prize.' Feeling decidedly overdressed, you quickly remove your own clothes, freeing your by now fully hard erection.";
		WaitLineBreak;
		say "     Following your stiff organ's lead, you kneel between Sonya's legs, running your hands down over the smooth skin of her legs then reaching out to cup her breasts. She moans softly as you stroke them and move on to taking her nipples, one after another, into your mouth and suckle on them. 'That feels *gasp* great, but... I need you in me - Now!' she says, her hand sliding down your body to grasp your hard shaft and setting it against her moist pussy lips. Eager to fulfill her wish, you thrust into her body, sliding deeper and deeper until you bottom out. It feels amazing to have her warm and tight passage stretched around your manhood, a sentiment clearly shared by the Nordic warrior-woman. You rest like that for a moment, balls deep inside this pale beauty, letting her get used to it.";
		say "     Soon, Sonya moans 'Go on. Take me!', her legs wrapping around your hips to pull you deeper into her vagina. Taking up sliding out then pounding deep into her again, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. Her arms wrap around your upper body, pulling you fully on top of her as she seeks your lips with hers, hungrily making out with you. For a while, anything but the wild and urgent sex you have with her is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
		WaitLineBreak;
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, the muscles in her vagina tightening their grip on your cock as the Viking orgasms. Not to lag too far behind, you abandon all restraint, grinding against her crotch urgently, and blow your load moments later. Pulse after pulse of your fertile seed shoot deep into the young woman's insides.";
		say "     Exhausted, you stay on top of her, still with your cock inside, and try to catch your breath. Looks like Sonya has other ideas... suddenly the world spins as she rolls the two of you over until she's on top and straddling your hips. With a new composure, now that her lusts have been satisfied, she pulls off your softening shaft and cleans up a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her gear.";
	else if cunts of player > 0:            [female]
		if Dexterity of Sonya is 0: [first time FF]
			say "     After following the young viking to a secluded spot behind the crest of a dune, you watch Sonya take off her armor and then the rest of her clothes, revealing the pale-skinned perfection of her well-trained body. Now completely naked, her perky breasts bouncing as she moves, the young Viking moves to lie down in the sand, spreading her legs a bit and looking up expectantly at you. 'Come on, claim your prize - But you better be good.' Feeling decidedly overdressed, you quickly remove your own clothes, revealing your own pussy.";
			say "     With a sigh, Sonya remarks 'Getting beaten - and then by a woman who can't even take me properly. Oh, why did it have to be you.' Looking down on the pale-skinned, beautiful woman, you tell her that she shouldn't worry about that - there are quite a lot that two women can do to enjoy themselves. Demonstrating one of them, you lie down yourself and part your legs, then tell the viking to get licking. After all, it's your right as the victor. Sonya grimaces slightly, her idea of a good time more centered on hard cocks and male bodies, but after a moment of hesitation, she stands up with a huff and gets on all fours in front of you. Lowering her head, the striking woman then gives your pussy a first hesitant little lick.";
			WaitLineBreak;
			say "     You moan loudly as Sonya makes her first experiences with pleasing a woman orally, still somewhat resentful that you don't have a cock. Despite this, she gives it her best try, honor-bound as she is, and... after a little bit of fumbling around, it turns out she's a natural at it - licking and nibbling your sensitive little clit, gently rubbing and spreading your nether lips as a finger strokes the opening of your vagina. Of course, being a female herself, the viking just knows what to go for and how to drive a woman to the edge of orgasm, then across. After a short while of breathtaking stimulation by the blond beauty, you give a satisfied gasp, throwing your head back as femcum squirts from your opening and hits Sonya's face.";
			say "     The viking wipes your juices off her skin with a snort, then says, 'There, I took care of it for you. Now...' She starts to raise herself up, seemingly ready to leave - but you grab her by the shoulder and push her back down, as you're far from done with the sexy woman. Ordering Sonya to stay as she is, you move around to the Viking's backside, running a hand over her firm, well-rounded butt-cheeks. There is a pant from the Nordic beauty as your hand slides between her legs, brushing against sensitive nether lips and then reaching her little clit. Sonya gives a breathless gasp as you rub over her button with a finger, gently tickling it while your other hand starts to spread the lips of her pussy apart.";
			WaitLineBreak;
			say "     As you slide one of your digits into Sonya, rubbing her passage, you can't help but thing that there is something very delicious about having this strong woman before you on her hands and knees, shivering and panting helplessly as you touch her. This animates you to really put in some effort, teasing her first in one spot, then another, finding out what really gets her going. It's quite a lot of fun to learn that if you slide your finger in... just... like... so... and... then... do THIS - Sonya throws her head back moaning loudly as a mini-orgasm runs through her body. By now, her earlier reluctance is long forgotten, washed away with the steady trickle of female juices from a very, very wet and swollen pussy.";
			say "     You keep going for a while like this, playing with Sonya's body, making her tremble, pant and gasp, before you finally go all out, intensifying your finger-work to get her to the climax that has been building all this time. The beautiful woman's moans get louder and more high-pitched as they come faster and faster, then she gives something halfway between a squeak and an aroused shout as the point of no return is reached. Sonya rocks back - hard - to get even more of your teasing fingers inside her.";
			WaitLineBreak;
			say "     Sinking forward to lie panting on the ground, her ass still half-raised, Sonya regains her breath after a minute or two, then rolls over on her side to look at you. Her eyes roam up and down your body, resting for a second on your own pussy, then she says, 'That was... unexpectedly good. I - I still would have preferred a cock though - I think.' With a new composure, now that her lusts have been satisfied, she sits up and cleans herself a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her gear.";
			now Dexterity of Sonya is 1;
		else if Dexterity of Sonya is 1: [repeat FF]
			say "     After following the young viking to a secluded spot behind the crest of a dune, you watch Sonya take off her armor and then the rest of her clothes, revealing the pale-skinned perfection of her well-trained body. Now completely naked, her perky breasts bouncing as she moves, the young Viking moves to lie down in the sand, spreading her legs a bit and looking up expectantly at you. 'Come on, claim your prize - But you better be good.' Feeling decidedly overdressed, you quickly remove your own clothes, revealing your own pussy.";
			say "     With a sigh, Sonya remarks 'I have to admit... I came pretty hard from the last time, but - aren't the people in this strange land able to change their form? Maybe you could - grow a cock and fuck me with it properly?' Looking down on the pale-skinned, beautiful woman, you tell her that she shouldn't worry about that - there are quite a lot that two women can do to enjoy themselves. Demonstrating one of them, you lie down yourself and part your legs, then tell the viking to get licking. After all, it's your right as the victor. Sonya gives a resigned shrug, her idea of a good time more centered on hard cocks and male bodies, but after a short moment of hesitation, she stands up with a huff and gets on all fours in front of you. Lowering her head, the striking woman then gives your pussy a first hesitant little lick.";
			WaitLineBreak;
			say "     You moan loudly as Sonya makes some more experiences with pleasing a woman orally, still somewhat annoyed that you don't have a cock. Despite this, she gives it her best try, and... after a little bit of fumbling around, it turns out she's a natural at it - licking and nibbling your sensitive little clit, gently rubbing and spreading your nether lips as a finger strokes the opening of your vagina. Of course, being a female herself, the viking just knows what to go for and how to drive a woman to the edge of orgasm, then across. After a short while of breathtaking stimulation by the blond beauty, you give a satisfied gasp, throwing your head back as femcum squirts from your opening and hits Sonya's face.";
			say "     The viking wipes your juices off her skin with a snort, then says, 'There, I took care of it for you. Now... Would you care to return the favor?' She looks up at you, then wiggles her hips invitingly. Taking hold of her shoulder, you stroke down Sonya's side as you move around her body, letting your fingers slide over her soft and warm skin until they reach the firm, well-rounded cheeks of her butt. There is a pant from the Nordic beauty as your hand slides between her legs, brushing against sensitive nether lips and then reaching her little clit. Sonya gives a breathless gasp as you rub over her button with a finger, gently tickling it while your other hand starts to spread the lips of her pussy apart.";
			WaitLineBreak;
			say "     As you slide one of your digits into Sonya, rubbing her passage, you can't help but thing that there is something very delicious about having this strong woman before you on her hands and knees, shivering and panting helplessly as you touch her. This animates you to really put in some effort, teasing her first in one spot, then another, finding out what really gets her going. It's quite a lot of fun to learn that if you slide your finger in... just... like... so... and... then... do THIS - Sonya throws her head back moaning loudly as a mini-orgasm runs through her body. By now, her earlier reluctance is long forgotten, washed away with the steady trickle of female juices from a very, very wet and swollen pussy.";
			say "     You keep going for a while like this, playing with Sonya's body, making her tremble, pant and gasp, before you finally go all out, intensifying your finger-work to get her to the climax that has been building all this time. The beautiful woman's moans get louder and more high-pitched as they come faster and faster, then she gives something halfway between a squeak and an aroused shout as the point of no return is reached. Sonya rocks back - hard - to get even more of your teasing fingers inside her.";
			WaitLineBreak;
			say "     Sinking forward to lie panting on the ground, her ass still half-raised, Sonya regains her breath after a minute or two, then rolls over on her side to look at you. Her eyes roam up and down your body, resting for a second on your own pussy, then she says, 'That was... really good. I - I still would have preferred a cock, but... there's something to this too.' With a new composure, now that her lusts have been satisfied, she sits up and cleans herself a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her gear.";
			now Dexterity of Sonya is 2;
		else if Dexterity of Sonya is 2: [first time with dildo]
			say "     After following the young viking to a secluded spot behind the crest of a dune, you watch Sonya take off her armor and then the rest of her clothes, revealing the pale-skinned perfection of her well-trained body. Now completely naked, her perky breasts bouncing as she moves, the young Viking moves to lie down in the sand, spreading her legs a bit and looking up expectantly at you. 'Come on, claim your prize - But you better be good.' Feeling decidedly overdressed, you quickly remove your own clothes, revealing your own pussy.";
			say "     An impish smile on her lips, Sonya remarks, 'How about we... make things a bit more interesting between the two of us? I like being with you, even though we're both women, but I feel like I... need something long and hard thrusting deep into me. So - I got something for us...' Looking down on the pale-skinned, beautiful woman, you stroke her cheek and give her a curious expression. Sonya playfully catches your hand, closing her lips around one of your fingers and sucking on it sensually, then she pulls away and stretches over to the pile of her clothing, opening up a satchel and... pulls out a bright green double headed dildo. 'I... want you to take me, please. Make use of this cock snake and fuck me good...,' Sonya moans huskily as she raises the artificial cock high.";
			WaitLineBreak;
			say "     Your eyes are riveted to the rubber sex toy for a moment, then you kneel between the young Viking's legs and take it from her. Pushing one end in between her pussy lips, her moans encourage you to go deeper and deeper. Then it's time to get into the action yourself... bending the other end of the sex toy up a bit, you slide it into your vagina and start thrusting forward with your hips, making it move in both of you. You still have to hold on to its shaft when you pull back, but you can fuck like this, in a fashion. As you are grinding against each other at the hips, Sonya's hands roam over your body, stroking and touching you. It feels amazing to be so intimately close to her, and feeling her movements through the rubber cock you two share.";
			say "     Soon, Sonya moans 'Harder, harder!', her legs wrapping around your hips to make you push the dildo deeper into her vagina. Taking up sliding it out then pounding deep into her again, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. Her arms wrap around your upper body, pulling you fully on top of her as she seeks your lips with hers, hungrily making out with you. For a while, anything but the wild and urgent sex you have with her is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
			WaitLineBreak;
			say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo connecting you. Not to lag too far behind, you push the sex toy deeper into yourself, rubbing it against your inner walls until you reach your peak a moment later. A trickle of your femcum runs down over the sex toy, to drip down into she sand with your partner's.";
			say "     Exhausted, you stay on top of her, still with the dildo connecting you, and try to catch your breath. Looks like Sonya has other ideas... suddenly the world spins as she rolls the two of you over until she's on top and straddling your hips. With a new composure, now that her lusts have been satisfied, she pulls the rubber cock out of both of you and cleans up a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her other gear.";
			now Dexterity of Sonya is 3;
		else if Dexterity of Sonya is 3: [dildo or fingers]
			say "     After following the young viking to a secluded spot behind the crest of a dune, you watch Sonya take off her armor and then the rest of her clothes, revealing the pale-skinned perfection of her well-trained body. Now completely naked, her perky breasts bouncing as she moves, the young Viking moves to lie down in the sand, spreading her legs a bit and looking up expectantly at you. 'Come on, claim your prize - But you better be good.' Feeling decidedly overdressed, you quickly remove your own clothes, revealing your own pussy.";
			LineBreak;
			say "     [bold type]You can feel the Viking's eyes on you as you stand there naked, then she says, 'Do you want to just use your tongue, or should I get out the two-headed cock-snake?'[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Have oral sex with Sonya.";
			say "     ([link]N[as]n[end link]) - Make use of the double-dong dildo.";
			if player consents:
				LineBreak;
				say "     Kneeling down in the sand with your legs spread, you put both hands on your hips and just look at Sonya expectantly - to which the warrioress gives a sexy little smile and licks her lips. Then Sonya gets down on all fours, prowling closer to you in a playful, cat-like way that involves showing off her beautiful, naked body. Arriving directly before you just a short moment later, the striking woman lowers her head and gives your pussy a first eager little lick.";
				WaitLineBreak;
				say "     You moan loudly as Sonya makes good use of her experiences with pleasing a woman orally, more than willing to have fun with you even though you've chosen not to make use of her not so little dildo. And she really is a natural at it - licking and nibbling your sensitive little clit, gently rubbing and spreading your nether lips as a finger strokes the opening of your vagina. Of course, being a female herself, the viking just knows what to go for and how to drive a woman to the edge of orgasm, then across. After a short while of breathtaking stimulation by the blond beauty, you give a satisfied gasp, throwing your head back as femcum squirts from your opening and hits Sonya's face.";
				say "     The viking wipes your juices off her skin with a snort, then licks it off her fingers, before eventually saying, 'That was fun - and tasty. Now... Would you care to return the favor?' She looks up at you, then wiggles her hips invitingly. Taking hold of her shoulder, you stroke down Sonya's side as you move around her body, letting your fingers slide over her soft and warm skin until they reach the firm, well-rounded cheeks of her butt. There is a pant from the Nordic beauty as your hand slides between her legs, brushing against sensitive nether lips and then reaching her little clit. Sonya gives a breathless gasp as you rub over her button with a finger, gently tickling it while your other hand starts to spread the lips of her pussy apart.";
				WaitLineBreak;
				say "     As you slide one of your digits into Sonya, rubbing her passage, you can't help but thing that there is something very delicious about having this strong woman before you on her hands and knees, shivering and panting helplessly as you touch her. This animates you to really put in some effort, teasing her first in one spot, then another, making good use of all the little sensitive spots you know of Sonya. It's quite a lot of fun to see her react when you slide your finger in... just... like... so... and... then... do THIS - Sonya throws her head back moaning loudly as a mini-orgasm runs through her body.";
				say "     You keep going for a while like this, playing with Sonya's body, making her tremble, pant and gasp, before you finally go all out, intensifying your finger-work to get her to the climax that has been building all this time. The beautiful woman's moans get louder and more high-pitched as they come faster and faster, then she gives something halfway between a squeak and an aroused shout as the point of no return is reached. Sonya rocks back - hard - to get even more of your teasing fingers inside her.";
				WaitLineBreak;
				say "     Sinking forward to lie panting on the ground, her ass still half-raised, Sonya regains her breath after a minute or two, then rolls over on her side to look at you. Her eyes roam up and down your body, resting for a second on your own pussy, then she says, 'That was... really good. Thank you, my love.' With a new composure, now that her lusts have been satisfied, she sits up and cleans herself a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her gear.";
			else:
				LineBreak;
				say "     Kneeling between Sonya's legs, you brush your fingers over her already pretty wet pussy, then sink two of them deep inside. She lets you finger her for a moment, then stretches over to the pile of her clothing, opening up a satchel and pulls out the bright green double headed dildo you've had so much fun with in the past. 'Take me, please. Fuck me good with this,' Sonya moans huskily as she raises the artificial cock high.";
				WaitLineBreak;
				say "     Your eyes are riveted to the rubber sex toy for a moment, then you kneel between the young Viking's legs and take it from her. Pushing one end in between her pussy lips, her moans encourage you to go deeper and deeper. Then it's time to get into the action yourself... bending the other end of the sex toy up a bit, you slide it into your vagina and start thrusting forward with your hips, making it move in both of you. You still have to hold on to its shaft when you pull back, but you can fuck like this, in a fashion. As you are grinding against each other at the hips, Sonya's hands roam over your body, stroking and touching you. It feels amazing to be so intimately close to her, and feeling her movements through the rubber cock you two share.";
				say "     Soon, Sonya moans 'Harder, harder!', her legs wrapping around your hips to make you push the dildo deeper into her vagina. Taking up sliding it out then pounding deep into her again, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. Her arms wrap around your upper body, pulling you fully on top of her as she seeks your lips with hers, hungrily making out with you. For a while, anything but the wild and urgent sex you have with her is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
				WaitLineBreak;
				say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo connecting you. Not to lag too far behind, you push the sex toy deeper into yourself, rubbing it against your inner walls until you reach your peak a moment later. A trickle of your femcum runs down over the sex toy, to drip down into she sand with your partner's.";
				say "     Exhausted, you stay on top of her, still with the dildo connecting you, and try to catch your breath. Looks like Sonya has other ideas... suddenly the world spins as she rolls the two of you over until she's on top and straddling your hips. With a new composure, now that her lusts have been satisfied, she pulls the rubber cock out of both of you and cleans up a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her other gear.";
	else:                                   [neuter]
		if Dexterity of Sonya is 0: [first time FF]
			say "     You watch Sonya take off her armor and then the rest of her clothes, revealing the pale-skinned perfection of her well-trained body. There is a certain... urgency to her movements, as you guess there would be with her a virgin and all. Now completely naked, her perky breasts bouncing as she moves, the young Viking moves to lie down in the sand, spreading her legs a bit and looking up expectantly at you. 'Come on, claim your prize - But you better be good. I've been waiting a long time for this.' Feeling decidedly overdressed, you quickly remove your own clothes, revealing your bare, genital-less crotch.";
			say "     Sonya gives a shocked 'What?' then remarks with a sigh, 'Finally getting beaten - and then by... what are you, even? With nothing between your... You can't even take me properly. Oh, why did it have to be you.' Looking down on the pale-skinned, beautiful woman, you tell her that she shouldn't worry about that - there are quite a lot she can do with you, even if it isn't fucking. Demonstrating one of them, you lie down yourself and part your legs, then tell the viking to get licking. After all, it's your right as the victor. Sonya grimaces slightly, her idea of a good time more centered on hard cocks and male bodies, but after a moment of hesitation, she stands up with a huff and gets on all fours in front of you. Lowering her head, the striking woman then gives your smooth crotch a first hesitant little lick.";
			WaitLineBreak;
			say "     You moan loudly as Sonya makes her first experiences with pleasing a genderless person orally, still somewhat resentful that you don't have a cock. Despite this, she gives it her best try, honor-bound as she is, and... after a little bit of fumbling around, it turns out she's a natural at it - licking and nibbling your sensitive skin, gently rubbing and finding the most tender spots. After a short while of breathtaking stimulation by the blond beauty, you give a satisfied gasp, throwing your head back as tremors of lust run through your whole being.";
			say "     The viking wipes her lips with a snort, then says, 'There, I took care of it for you. Now...' She starts to raise herself up, seemingly ready to leave - but you grab her by the shoulder and push her back down, as you're far from done with the sexy woman. Ordering Sonya to stay as she is, you move around to the Viking's backside, running a hand over her firm, well-rounded butt-cheeks. There is a pant from the Nordic beauty as your hand slides between her legs, brushing against sensitive nether lips and then reaching her little clit. Sonya gives a breathless gasp as you rub over her button with a finger, gently tickling it while your other hand starts to spread the lips of her pussy apart.";
			WaitLineBreak;
			say "     As you slide one of your digits into Sonya, rubbing her passage, you can't help but thing that there is something very delicious about having this strong woman before you on her hands and knees, shivering and panting helplessly as you touch her. This animates you to really put in some effort, teasing her first in one spot, then another, finding out what really gets her going. It's quite a lot of fun to learn that if you slide your finger in... just... like... so... and... then... do THIS - Sonya throws her head back moaning loudly as a mini-orgasm runs through her body. By now, her earlier reluctance is long forgotten, washed away with the steady trickle of female juices from a very, very wet and swollen pussy.";
			say "     You keep going for a while like this, playing with Sonya's body, making her tremble, pant and gasp, before you finally go all out, intensifying your finger-work to get her to the climax that has been building all this time. The beautiful woman's moans get louder and more high-pitched as they come faster and faster, then she gives something halfway between a squeak and an aroused shout as the point of no return is reached. Sonya rocks back - hard - to get even more of your teasing fingers inside her.";
			WaitLineBreak;
			say "     Sinking forward to lie panting on the ground, her ass still half-raised, Sonya regains her breath after a minute or two, then rolls over on her side to look at you. Her eyes roam up and down your body, resting for a second on your own pussy, then she says, 'That was... unexpectedly good. I - I still would have preferred a cock though - I think.' With a new composure, now that her lusts have been satisfied, she sits up and cleans herself a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her gear.";
			now Dexterity of Sonya is 1;
		else if Dexterity of Sonya is 1: [repeat FF]
			say "     You watch Sonya take off her armor and then the rest of her clothes, revealing the pale-skinned perfection of her well-trained body. There is a certain... urgency to her movements, as you guess there would be with her a virgin and all. Now completely naked, her perky breasts bouncing as she moves, the young Viking moves to lie down in the sand, spreading her legs a bit and looking up expectantly at you. 'Come on, claim your prize - But you better be good. I've been waiting a long time for this.' Feeling decidedly overdressed, you quickly remove your own clothes, revealing your bare, genital-less crotch.";
			say "     With a sigh, Sonya remarks 'I have to admit... I came pretty hard from the last time, but - aren't the people in this strange land able to change their form? Maybe you could - grow a cock and fuck me with it properly?' Looking down on the pale-skinned, beautiful woman, you tell her that she shouldn't worry about that - there are quite a lot that you two can do to enjoy themselves. Demonstrating one of them, you lie down yourself and part your legs, then tell the viking to get licking. After all, it's your right as the victor. Sonya gives a resigned shrug, her idea of a good time more centered on hard cocks and male bodies, but after a short moment of hesitation, she stands up with a huff and gets on all fours in front of you. Lowering her head, the striking woman then gives your smooth crotch a first hesitant little lick.";
			WaitLineBreak;
			say "     You moan loudly as Sonya makes some more experiences with pleasing a genderless person orally, still somewhat annoyed that you don't have a cock. Despite this, she gives it her best try, honor-bound as she is, and... after a little bit of fumbling around, it turns out she's a natural at it - licking and nibbling your sensitive skin, gently rubbing and finding the most tender spots. After a short while of breathtaking stimulation by the blond beauty, you give a satisfied gasp, throwing your head back as tremors of lust run through your whole being.";
			say "     The viking wipes her lips with an amused snort, then says, 'There, I took care of it for you. Now... Would you care to return the favor?' She looks up at you, then wiggles her hips invitingly. Taking hold of her shoulder, you stroke down Sonya's side as you move around her body, letting your fingers slide over her soft and warm skin until they reach the firm, well-rounded cheeks of her butt. There is a pant from the Nordic beauty as your hand slides between her legs, brushing against sensitive nether lips and then reaching her little clit. Sonya gives a breathless gasp as you rub over her button with a finger, gently tickling it while your other hand starts to spread the lips of her pussy apart.";
			WaitLineBreak;
			say "     As you slide one of your digits into Sonya, rubbing her passage, you can't help but thing that there is something very delicious about having this strong woman before you on her hands and knees, shivering and panting helplessly as you touch her. This animates you to really put in some effort, teasing her first in one spot, then another, finding out what really gets her going. It's quite a lot of fun to learn that if you slide your finger in... just... like... so... and... then... do THIS - Sonya throws her head back moaning loudly as a mini-orgasm runs through her body. By now, her earlier reluctance is long forgotten, washed away with the steady trickle of female juices from a very, very wet and swollen pussy.";
			say "     You keep going for a while like this, playing with Sonya's body, making her tremble, pant and gasp, before you finally go all out, intensifying your finger-work to get her to the climax that has been building all this time. The beautiful woman's moans get louder and more high-pitched as they come faster and faster, then she gives something halfway between a squeak and an aroused shout as the point of no return is reached. Sonya rocks back - hard - to get even more of your teasing fingers inside her.";
			WaitLineBreak;
			say "     Sinking forward to lie panting on the ground, her ass still half-raised, Sonya regains her breath after a minute or two, then rolls over on her side to look at you. Her eyes roam up and down your body, resting for a second on your own pussy, then she says, 'That was... really good. I - I still would have preferred a cock, but... there's something to this too.' With a new composure, now that her lusts have been satisfied, she sits up and cleans herself a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her gear.";
			now Dexterity of Sonya is 2;
	LineBreak;
	if the player is not facially human or the player is not bodily human or the player is not skintone human:    [non-human player = a monster, in her words]
		say "     As she pulls her clothes back on, Sonya gives your naked body a glance that lingers for a moment, and you can almost see lust and desire flickering up in her eyes again. Then she shakes her head. 'You're not bad at all at this - or fighting, I have to admit. But now I've got to go, monster. Raiding targets don't scout themselves, you know...' She winks at you, then walks away, giving you a short look back as she climbs over the crest of the dune.";
	else:    [human player]
		say "     As she pulls her clothes back on, Sonya gives your naked body a glance that lingers for a moment, and you can almost see lust and desire flickering up in her eyes again. Then she shakes her head. 'You're not bad at all at this - or fighting, I have to admit. But now I've got to go, outlander. Raiding targets don't scout themselves, you know...' She winks at you, then walks away, giving you a short look back as she climbs over the crest of the dune.";

to say AffectionateVikingLossSex:   [3+ times with the player]
	if cocks of player > 0:                      [male+herm]
		say "     Hand in hand, you climb over the crest of a nearby dune, stopping several times on the way to share hungry kisses. After finally arriving in a somewhat protected spot, out of sight from the beach, Sonya pushes you to sit in the sand and starts to undress in a hot little strip-show. It's amazing how arousing she can make taking off scale mail armor and then piece by piece her other clothing. She quickly has you so hot and bothered that you just can't resist standing up and 'helping' a bit, pulling off articles of clothing and caressing her. Soon she is completely naked, revealing the pale-skinned perfection of her well-trained body. A beaming smile on her face, she starts undressing you too, rubbing her breasts and body against you as you're stripped bare.";
		say "     Sonya gooses your ass, daring you to catch her, and runs off a few steps, her perky breasts bouncing as she moves. With her not really trying to get away, you quickly catch her, embracing her as you plant a kiss on her lips. Holding on you, she lets herself fall into the sand on the side of the dune, and you find yourself lying on the eager young woman, your cock poking against her pubic mound. Not one to waste such an opportunity, you move your hips a bit till the tip of your manhood brushes over her nether lips, then thrust in, sinking deep into your Viking's moist vagina.";
		WaitLineBreak;
		say "     As you bottom out inside her, Sonya wraps her legs around your hips, holding you tight against herself. Her arms pull your upper body down on her too, so she can make out with you. In between kisses she pants 'Fuck me hard!' and you comply eagerly, pulling out most of your shaft before plunging back in in a fast rhythm. The sexy Viking even pushes down her hips to meet each of your thrusts and pulls you down on her with her legs around your ass. It feels amazing to have her warm and tight passage stretched around your manhood as you are pounding the Nordic warrior-woman's pussy. For a while, anything but the wild and urgent sex you have with her is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
		WaitLineBreak;
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, the muscles in her vagina tightening their grip on your cock as the Viking orgasms. Not to lag too far behind, you abandon all restraint, grinding against her crotch urgently, and blow your load moments later. Pulse after pulse of your fertile seed shoot deep into the young woman's insides.";
		say "     Exhausted, you stay on top of her, still with your cock inside, and try to catch your breath. She strokes your back softly, content in just lying there with you for a while, resting and holding one another. Then, she sighs, rubbing your nose with hers before sliding out from under you and sitting up. After cleaning up a bit by rubbing off with the beach's very fine dry sand, she stands up and goes to collect her gear.";
		if VikingPregnancy is 0:              [not already preggers]
			let VikingPregChance be a random number from 1 to 20;
			if VikingPregChance > 10:           [50% chance]
				now VikingPregCounter is 48;      [48 turns till birth]
				now VikingPregnancy is 1;[invisibly pregnant]
				if the player is not facially human or the player is not bodily human or the player is not skintone human:     [player a legendary monster]
					now VikingKidShape is bodyname of player;
				else:    [human player]
					now VikingKidShape is "Human";
	else if cunts of player > 0:            [female]
		if Dexterity of Sonya is 0: [first time FF]
			say "     Hand in hand, you climb over the crest of a nearby dune, stopping several times on the way to share hungry kisses. After finally arriving in a somewhat protected spot, out of sight from the beach, Sonya pushes you to sit in the sand and starts to undress in a hot little strip-show. It's amazing how arousing she can make taking off scale mail armor and then piece by piece her other clothing. She quickly has you so hot and bothered that you just can't resist standing up and 'helping' a bit, pulling off articles of clothing and caressing her. Soon she is completely naked, revealing the pale-skinned perfection of her well-trained body. A beaming smile on her face, she starts undressing you too, rubbing her breasts and body against you as you're stripped bare.";
			say "     As your pussy is revealed, Sonya remarks with a sigh, 'Hm... as a woman you can't take me properly.' Turning around to kiss the pale-skinned, beautiful woman, you tell her that she shouldn't worry about that - there are quite a lot that two women can do to enjoy themselves. Demonstrating one of them, you lie down yourself and part your legs, then tell the viking to get licking. After all, it's your right as the victor. Sonya gives you a bewildered look for a second, her idea of a good time more centered on hard cocks and male bodies, but after a moment of hesitation, she gets on all fours in front of you. Lowering her head, the striking woman then gives your pussy a first hesitant little lick.";
			WaitLineBreak;
			say "     You moan loudly as Sonya makes her first experiences with pleasing a woman orally, though still somewhat miffed that you don't have a cock. Despite this, she gives it her best try, and... after a little bit of fumbling around, it turns out she's a natural at it - licking and nibbling your sensitive little clit, gently rubbing and spreading your nether lips as a finger strokes the opening of your vagina. Of course, being a female herself, the viking just knows what to go for and how to drive a woman to the edge of orgasm, then across. After a short while of breathtaking stimulation by the blond beauty, you give a satisfied gasp, throwing your head back as femcum squirts from your opening and hits Sonya's face.";
			say "     The viking wipes your juices off her skin with a snort, then says, 'There, I took care of it for you. Now... you Would you care to return the favor?' She looks up at you, then wiggles her hips invitingly. Taking hold of her shoulder, you stroke down Sonya's side as you move around her body, letting your fingers slide over her soft and warm skin until they reach the firm, well-rounded cheeks of her butt. There is a pant from the Nordic beauty as your hand slides between her legs, brushing against sensitive nether lips and then reaching her little clit. Sonya gives a breathless gasp as you rub over her button with a finger, gently tickling it while your other hand starts to spread the lips of her pussy apart.";
			WaitLineBreak;
			say "     As you slide one of your digits into Sonya, rubbing her passage, you can't help but thing that there is something very delicious about having this strong woman before you on her hands and knees, shivering and panting helplessly as you touch her. This animates you to really put in some effort, teasing her first in one spot, then another, finding out what really gets her going. It's quite a lot of fun to learn that if you slide your finger in... just... like... so... and... then... do THIS - Sonya throws her head back moaning loudly as a mini-orgasm runs through her body. By now, her earlier reluctance is long forgotten, washed away with the steady trickle of female juices from a very, very wet and swollen pussy.";
			say "     You keep going for a while like this, playing with Sonya's body, making her tremble, pant and gasp, before you finally go all out, intensifying your finger-work to get her to the climax that has been building all this time. The beautiful woman's moans get louder and more high-pitched as they come faster and faster, then she gives something halfway between a squeak and an aroused shout as the point of no return is reached. Sonya rocks back - hard - to get even more of your teasing fingers inside her.";
			WaitLineBreak;
			say "     Sinking forward to lie panting on the ground, her ass still half-raised, Sonya regains her breath after a minute or two, then rolls over on her side to look at you. Her eyes roam up and down your body, resting for a second on your own pussy, then she says, 'That was... unexpectedly good. I - I still would have preferred a cock though - I think.' With a new composure, now that her lusts have been satisfied, she sits up and cleans herself a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her gear.";
			now Dexterity of Sonya is 1;
		else if Dexterity of Sonya is 1: [repeat FF]
			say "     Hand in hand, you climb over the crest of a nearby dune, stopping several times on the way to share hungry kisses. After finally arriving in a somewhat protected spot, out of sight from the beach, Sonya pushes you to sit in the sand and starts to undress in a hot little strip-show. It's amazing how arousing she can make taking off scale mail armor and then piece by piece her other clothing. She quickly has you so hot and bothered that you just can't resist standing up and 'helping' a bit, pulling off articles of clothing and caressing her. Soon she is completely naked, revealing the pale-skinned perfection of her well-trained body. A beaming smile on her face, she starts undressing you too, rubbing her breasts and body against you as you're stripped bare.";
			say "     Soon ending up standing naked with Sonya's arms wrapped around you from behind, you revel in the feel of her curves and smooth skin against you, as well as the young woman's hands that sensually stroke your body. Her hand dips down your front eventually, stroking over your clit in a feather-light touch that has you panting in lust. After a moment of this, she whispers in your ear, 'I love being with you, but there is this craving to feel a hard cock inside me. Aren't the people in this strange land able to change their form? Maybe you could - grow a cock and fuck me with it properly?' Reaching back to slide your hand down the pale-skinned, beautiful woman's side, you tell her that you'll have to think about it... but for now - there are quite a lot that two women can do to enjoy themselves. Demonstrating one of them, you lie down yourself and part your legs, then tell the viking to get licking. After all, it's your right as the victor. Sonya gives a saucy smile, then gets on all fours in front of you. Lowering her head, the striking woman then gives your pussy a first eager lick.";
			WaitLineBreak;
			say "     You moan loudly as Sonya makes some more experiences with pleasing a woman orally, even though you can tell she is still somewhat disappointed that you don't have a cock. Despite this, she gives it her best try, and... it turns out she's a natural at it - licking and nibbling your sensitive little clit, gently rubbing and spreading your nether lips as a finger strokes the opening of your vagina. Of course, being a female herself, the viking just knows what to go for and how to drive a woman to the edge of orgasm, then across. After a short while of breathtaking stimulation by the blond beauty, you give a satisfied gasp, throwing your head back as femcum squirts from your opening and hits Sonya's face.";
			say "     The viking wipes your juices off her skin with an amused snort, then licks it off her fingers, before eventually saying, 'That was fun - and tasty. Now... Would you care to return the favor?' She looks up at you, then wiggles her hips invitingly. Taking hold of her shoulder, you stroke down Sonya's side as you move around her body, letting your fingers slide over her soft and warm skin until they reach the firm, well-rounded cheeks of her butt. There is a pant from the Nordic beauty as your hand slides between her legs, brushing against sensitive nether lips and then reaching her little clit. Sonya gives a breathless gasp as you rub over her button with a finger, gently tickling it while your other hand starts to spread the lips of her pussy apart.";
			WaitLineBreak;
			say "     As you slide one of your digits into Sonya, rubbing her passage, you can't help but thing that there is something very delicious about having this strong woman before you on her hands and knees, shivering and panting helplessly as you touch her. This animates you to really put in some effort, teasing her first in one spot, then another, finding out what really gets her going. It's quite a lot of fun to learn that if you slide your finger in... just... like... so... and... then... do THIS - Sonya throws her head back moaning loudly as a mini-orgasm runs through her body. By now, her earlier reluctance is long forgotten, washed away with the steady trickle of female juices from a very, very wet and swollen pussy.";
			say "     You keep going for a while like this, playing with Sonya's body, making her tremble, pant and gasp, before you finally go all out, intensifying your finger-work to get her to the climax that has been building all this time. The beautiful woman's moans get louder and more high-pitched as they come faster and faster, then she gives something halfway between a squeak and an aroused shout as the point of no return is reached. Sonya rocks back - hard - to get even more of your teasing fingers inside her.";
			WaitLineBreak;
			say "     Sinking forward to lie panting on the ground, her ass still half-raised, Sonya regains her breath after a minute or two, then rolls over on her side to look at you. Her eyes roam up and down your body, resting for a second on your own pussy, then she says, 'That was... really good. I - I still would have preferred a cock, but... there's something to this too.' With a new composure, now that her lusts have been satisfied, she sits up and cleans herself a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her gear.";
			now Dexterity of Sonya is 2;
		else if Dexterity of Sonya is 2: [first time with dildo]
			say "     Hand in hand, you climb over the crest of a nearby dune, stopping several times on the way to share hungry kisses. After finally arriving in a somewhat protected spot, out of sight from the beach, Sonya pushes you to sit in the sand and starts to undress in a hot little strip-show. It's amazing how arousing she can make taking off scale mail armor and then piece by piece her other clothing. She quickly has you so hot and bothered that you just can't resist standing up and 'helping' a bit, pulling off articles of clothing and caressing her. Soon she is completely naked, revealing the pale-skinned perfection of her well-trained body. A beaming smile on her face, she starts undressing you too, rubbing her breasts and body against you as you're stripped bare.";
			say "     An impish smile on her lips, Sonya remarks, 'How about we... make things a bit more interesting between the two of us? I love being with you, even though we're both women, but I feel like I... need something long and hard thrusting deep into me. So - I got something for us...' Looking at the pale-skinned, beautiful woman, you stroke her cheek and give her a curious expression. She just smiles mysteriously, then steps over to the pile of her discarded clothing and bends over to open her satchel, giving you a very inviting view of her shapely ass and the wet and swollen pussy between her legs. Sonya turns around a moment later with... a green double-headed dildo in hand, giving a pleased little laugh as she sees where your gaze rests. Then she gets down, stretching out in the sand with her shoulders and head resting on the pile of her clothes and spreading those long, lithe legs invitingly. The sexy woman raises her hand with the dildo a moment later, and waves it at you, making the ends wobble in the air. 'I... want you to take me, please. Make use of this 'cock snake' and fuck me good...'";
			WaitLineBreak;
			say "     Your eyes are riveted to the rubber sex toy for a moment, then you kneel between the young Viking's legs and take it from her. Pushing one end in between her pussy lips, her moans encourage you to go deeper and deeper. Then it's time to get into the action yourself... bending the other end of the sex toy up a bit, you slide it into your vagina and start thrusting forward with your hips, making it move in both of you. You still have to hold on to its shaft when you pull back, but you can fuck like this, in a fashion. As you are grinding against each other at the hips, Sonya's hands roam over your body, stroking and touching you. It feels amazing to be so intimately close to her, and feeling her movements through the rubber cock you two share.";
			say "     Soon, Sonya moans 'Harder, harder!', her legs wrapping around your hips to make you push the dildo deeper into her vagina. Taking up sliding it out then pounding deep into her again, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. Her arms wrap around your upper body, pulling you fully on top of her as she seeks your lips with hers, hungrily making out with you. For a while, anything but the wild and urgent sex you have with her is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
			WaitLineBreak;
			say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo connecting you. Not to lag too far behind, you push the sex toy deeper into yourself, rubbing it against your inner walls until you reach your peak a moment later. A trickle of your femcum runs down over the sex toy, to drip down into she sand with your partner's.";
			say "     Exhausted, you stay on top of her, still with the dildo connecting you, and try to catch your breath. Looks like Sonya has other ideas... suddenly the world spins as she rolls the two of you over until she's on top and straddling your hips. With a new composure, now that her lusts have been satisfied, she pulls the rubber cock out of both of you and cleans up a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her other gear.";
			now Dexterity of Sonya is 3;
		else if Dexterity of Sonya is 3: [dildo or fingers]
			say "     Hand in hand, you climb over the crest of a nearby dune, stopping several times on the way to share hungry kisses. After finally arriving in a somewhat protected spot, out of sight from the beach, Sonya pushes you to sit in the sand and starts to undress in a hot little strip-show. It's amazing how arousing she can make taking off scale mail armor and then piece by piece her other clothing. She quickly has you so hot and bothered that you just can't resist standing up and 'helping' a bit, pulling off articles of clothing and caressing her. Soon she is completely naked, revealing the pale-skinned perfection of her well-trained body. A beaming smile on her face, she starts undressing you too, rubbing her breasts and body against you as you're stripped bare.";
			say "     Soon ending up standing naked with Sonya's arms wrapped around you from behind, you revel in the feel of her curves and smooth skin against you, as well as the young woman's hands that sensually stroke your body. Her hand dips down your front eventually, stroking over your clit in a feather-light touch that has you panting in lust.";
			LineBreak;
			say "     [bold type]After a moment of this, she whispers in your ear, 'Should we just use our tongues, or do you want me to get the cock-snake out for some real fun?'[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Have oral sex with Sonya.";
			say "     ([link]N[as]n[end link]) - Make use of the double-dong dildo.";
			if player consents:
				LineBreak;
				say "     Turning around to face Sonya, you give her a hungry kiss, then pant that you want her to go down on you as you come up for air afterwards. With that, you pull away from your sexy viking and kneel down in the sand with your legs spread. Both hands on your hips, you just look at Sonya expectantly - to which the warrioress gives a sexy little smile and licks her lips. Then Sonya gets down on all fours, prowling closer to you in a playful, cat-like way that involves showing off her beautiful, naked body. Arriving directly before you just a short moment later, the striking woman lowers her head and gives your pussy a first eager little lick.";
				WaitLineBreak;
				say "     You moan loudly as Sonya makes good use of her experiences with pleasing a woman orally, more than willing to have fun with you even though you've chosen not to make use of her not so little dildo. And she really is a natural at it - licking and nibbling your sensitive little clit, gently rubbing and spreading your nether lips as a finger strokes the opening of your vagina. Of course, being a female herself, the viking just knows what to go for and how to drive a woman to the edge of orgasm, then across. After a short while of breathtaking stimulation by the blond beauty, you give a satisfied gasp, throwing your head back as femcum squirts from your opening and hits Sonya's face.";
				say "     The viking wipes your juices off her skin with an amused snort, then licks it off her fingers, before eventually saying, 'That was fun - and tasty. Now... Would you care to return the favor?' She looks up at you, then wiggles her hips invitingly. Taking hold of her shoulder, you stroke down Sonya's side as you move around her body, letting your fingers slide over her soft and warm skin until they reach the firm, well-rounded cheeks of her butt. There is a pant from the Nordic beauty as your hand slides between her legs, brushing against sensitive nether lips and then reaching her little clit. Sonya gives a breathless gasp as you rub over her button with a finger, gently tickling it while your other hand starts to spread the lips of her pussy apart.";
				WaitLineBreak;
				say "     As you slide one of your digits into Sonya, rubbing her passage, you can't help but thing that there is something very delicious about having this strong woman before you on her hands and knees, shivering and panting helplessly as you touch her. This animates you to really put in some effort, teasing her first in one spot, then another, making good use of all the little sensitive spots you know of Sonya. It's quite a lot of fun to see her react when you slide your finger in... just... like... so... and... then... do THIS - Sonya throws her head back moaning loudly as a mini-orgasm runs through her body.";
				say "     You keep going for a while like this, playing with Sonya's body, making her tremble, pant and gasp, before you finally go all out, intensifying your finger-work to get her to the climax that has been building all this time. The beautiful woman's moans get louder and more high-pitched as they come faster and faster, then she gives something halfway between a squeak and an aroused shout as the point of no return is reached. Sonya rocks back - hard - to get even more of your teasing fingers inside her.";
				WaitLineBreak;
				say "     Sinking forward to lie panting on the ground, her ass still half-raised, Sonya regains her breath after a minute or two, then rolls over on her side to look at you. Her eyes roam up and down your body, resting for a second on your own pussy, then she says, 'That was... really good. Thank you, my love.' With a new composure, now that her lusts have been satisfied, she sits up and cleans herself a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her gear.";
			else:
				LineBreak;
				say "     Turning around to face Sonya, you give her a hungry kiss while one of your hands snakes down between you, its fingers dipping into her pussy an eye-blink later. As you thrust in with two fingers and start to wiggle them around, Sonya can't help but lean her head back and give a loud moan. You tell her that you want to 'take her', letting the two of you feel each other inside. Moving your head to find one of her perky nipples with your lips as you continue to finger Sonya, you do playfully suckle on it, which gives the young woman's aroused squeals a whole new note of urgency. Then finally after a short little while, you do pull back, allowing her to catch her breath and for the lustful haze to recede from her mind.";
				say "     Eager to get on the real action after you warming her up like this, she steps over to the pile of her discarded clothing and bends over to open her satchel, giving you a very inviting view of her shapely ass and the wet and swollen pussy between her legs. Sonya turns around a moment later with the green double-headed dildo in hand, giving a pleased little laugh as she sees where your gaze rests. Then she gets down, stretching out in the sand with her shoulders and head resting on the pile of her clothes and spreading those long, lithe legs invitingly. The sexy woman raises her hand with the dildo a moment later, and waves it at you, making the ends wobble in the air.";
				WaitLineBreak;
				say "     Your eyes are riveted to the rubber sex toy for a moment, then you kneel between the young Viking's legs and take it from her. Pushing one end in between her pussy lips, her moans encourage you to go deeper and deeper. Then it's time to get into the action yourself... bending the other end of the sex toy up a bit, you slide it into your vagina and start thrusting forward with your hips, making it move in both of you. You still have to hold on to its shaft when you pull back, but you can fuck like this, in a fashion. As you are grinding against each other at the hips, Sonya's hands roam over your body, stroking and touching you. It feels amazing to be so intimately close to her, and feeling her movements through the rubber cock you two share.";
				say "     Soon, Sonya moans 'Harder, harder!', her legs wrapping around your hips to make you push the dildo deeper into her vagina. Taking up sliding it out then pounding deep into her again, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. Her arms wrap around your upper body, pulling you fully on top of her as she seeks your lips with hers, hungrily making out with you. For a while, anything but the wild and urgent sex you have with her is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
				WaitLineBreak;
				say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo connecting you. Not to lag too far behind, you push the sex toy deeper into yourself, rubbing it against your inner walls until you reach your peak a moment later. A trickle of your femcum runs down over the sex toy, to drip down into she sand with your partner's.";
				say "     Exhausted, you stay on top of her, still with the dildo connecting you, and try to catch your breath. Looks like Sonya has other ideas... suddenly the world spins as she rolls the two of you over until she's on top and straddling your hips. With a new composure, now that her lusts have been satisfied, she pulls the rubber cock out of both of you and cleans up a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her other gear.";
	else:                                   [neuter]
		if Dexterity of Sonya is 0: [first time FF]
			say "     Hand in hand, you climb over the crest of a nearby dune, stopping several times on the way to share hungry kisses. After finally arriving in a somewhat protected spot, out of sight from the beach, Sonya pushes you to sit in the sand and starts to undress in a hot little strip-show. It's amazing how arousing she can make taking off scale mail armor and then piece by piece her other clothing. She quickly has you so hot and bothered that you just can't resist standing up and 'helping' a bit, pulling off articles of clothing and caressing her. Soon she is completely naked, revealing the pale-skinned perfection of her well-trained body. A beaming smile on her face, she starts undressing you too, rubbing her breasts and body against you as you're stripped bare.";
			say "     As your genderless crotch is revealed, Sonya remarks with a sigh, 'I still don't know how you can live without... oh never-mind. But how are we gonna have fun with - well, nothing between your legs?' Turning around to kiss the pale-skinned, beautiful woman, you tell her that she shouldn't worry about that - there are quite a lot that the two of you can do to enjoy yourselves. Demonstrating one of them, you lie down yourself and part your legs, then tell the viking to get licking. After all, it's your right as the victor. Sonya gives you a bewildered look for a second, her idea of a good time more centered on hard cocks and male bodies, but after a moment of hesitation, she gets on all fours in front of you. Lowering her head, the striking woman then gives your smooth crotch a first hesitant little lick.";
			WaitLineBreak;
			say "     You moan loudly as Sonya makes her first experiences with pleasing a genderless person orally, still somewhat resentful that you don't have a cock. Despite this, she gives it her best try, honor-bound as she is, and... after a little bit of fumbling around, it turns out she's a natural at it - licking and nibbling your sensitive skin, gently rubbing and finding the most tender spots. After a short while of breathtaking stimulation by the blond beauty, you give a satisfied gasp, throwing your head back as tremors of lust run through your whole being.";
			say "     The viking wipes her lips with a snort, then says, 'There, I took care of it for you. Now...' She starts to raise herself up, seemingly ready to leave - but you grab her by the shoulder and push her back down, as you're far from done with the sexy woman. Ordering Sonya to stay as she is, you move around to the Viking's backside, running a hand over her firm, well-rounded butt-cheeks. There is a pant from the Nordic beauty as your hand slides between her legs, brushing against sensitive nether lips and then reaching her little clit. Sonya gives a breathless gasp as you rub over her button with a finger, gently tickling it while your other hand starts to spread the lips of her pussy apart.";
			WaitLineBreak;
			say "     As you slide one of your digits into Sonya, rubbing her passage, you can't help but thing that there is something very delicious about having this strong woman before you on her hands and knees, shivering and panting helplessly as you touch her. This animates you to really put in some effort, teasing her first in one spot, then another, finding out what really gets her going. It's quite a lot of fun to learn that if you slide your finger in... just... like... so... and... then... do THIS - Sonya throws her head back moaning loudly as a mini-orgasm runs through her body. By now, her earlier reluctance is long forgotten, washed away with the steady trickle of female juices from a very, very wet and swollen pussy.";
			say "     You keep going for a while like this, playing with Sonya's body, making her tremble, pant and gasp, before you finally go all out, intensifying your finger-work to get her to the climax that has been building all this time. The beautiful woman's moans get louder and more high-pitched as they come faster and faster, then she gives something halfway between a squeak and an aroused shout as the point of no return is reached. Sonya rocks back - hard - to get even more of your teasing fingers inside her.";
			WaitLineBreak;
			say "     Sinking forward to lie panting on the ground, her ass still half-raised, Sonya regains her breath after a minute or two, then rolls over on her side to look at you. Her eyes roam up and down your body, resting for a second on your own pussy, then she says, 'That was... unexpectedly good. I - I still would have preferred a cock though - I think.' With a new composure, now that her lusts have been satisfied, she sits up and cleans herself a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her gear.";
			now Dexterity of Sonya is 1;
		else if Dexterity of Sonya is 1: [repeat FF]
			say "     Hand in hand, you climb over the crest of a nearby dune, stopping several times on the way to share hungry kisses. After finally arriving in a somewhat protected spot, out of sight from the beach, Sonya pushes you to sit in the sand and starts to undress in a hot little strip-show. It's amazing how arousing she can make taking off scale mail armor and then piece by piece her other clothing. She quickly has you so hot and bothered that you just can't resist standing up and 'helping' a bit, pulling off articles of clothing and caressing her. Soon she is completely naked, revealing the pale-skinned perfection of her well-trained body. A beaming smile on her face, she starts undressing you too, rubbing her breasts and body against you as you're stripped bare.";
			say "     Soon ending up standing naked with Sonya's arms wrapped around you from behind, you revel in the feel of her curves and smooth skin against you, as well as the young woman's hands that sensually stroke your body. Her hand dips down your front eventually, stroking over your smooth crotch in a feather-light touch that has you panting in lust. After a moment of this, she whispers in your ear, 'I love being with you, but there is this craving to feel a hard cock inside me. Aren't the people in this strange land able to change their form? Maybe you could - grow a cock and fuck me with it properly?' Reaching back to slide your hand down the pale-skinned, beautiful woman's side, you tell her that you'll have to think about it... but for now - there are quite a lot that the two of you can enjoy yourselves. Demonstrating one of them, you lie down yourself and part your legs, then tell the viking to get licking. After all, it's your right as the victor. Sonya gives a saucy smile, then gets on all fours in front of you. Lowering her head, the striking woman then gives your crotch a first eager lick.";
			WaitLineBreak;
			say "     You moan loudly as Sonya makes some more experiences with pleasing someone orally, even though you can tell she is still somewhat disappointed that you don't have a cock. Despite this, she gives it her best try, and... it turns out she's a natural at it - licking and nibbling your sensitive skin, gently rubbing and finding the most tender spots. After a short while of breathtaking stimulation by the blond beauty, you give a satisfied gasp, throwing your head back as tremors of lust run through your whole being.";
			say "     The viking wipes her lips with an amused snort, then says, 'That was fun. Now... Would you care to return the favor?' She looks up at you, then wiggles her hips invitingly. Taking hold of her shoulder, you stroke down Sonya's side as you move around her body, letting your fingers slide over her soft and warm skin until they reach the firm, well-rounded cheeks of her butt. There is a pant from the Nordic beauty as your hand slides between her legs, brushing against sensitive nether lips and then reaching her little clit. Sonya gives a breathless gasp as you rub over her button with a finger, gently tickling it while your other hand starts to spread the lips of her pussy apart.";
			WaitLineBreak;
			say "     As you slide one of your digits into Sonya, rubbing her passage, you can't help but thing that there is something very delicious about having this strong woman before you on her hands and knees, shivering and panting helplessly as you touch her. This animates you to really put in some effort, teasing her first in one spot, then another, finding out what really gets her going. It's quite a lot of fun to learn that if you slide your finger in... just... like... so... and... then... do THIS - Sonya throws her head back moaning loudly as a mini-orgasm runs through her body. By now, her earlier reluctance is long forgotten, washed away with the steady trickle of female juices from a very, very wet and swollen pussy.";
			say "     You keep going for a while like this, playing with Sonya's body, making her tremble, pant and gasp, before you finally go all out, intensifying your finger-work to get her to the climax that has been building all this time. The beautiful woman's moans get louder and more high-pitched as they come faster and faster, then she gives something halfway between a squeak and an aroused shout as the point of no return is reached. Sonya rocks back - hard - to get even more of your teasing fingers inside her.";
			WaitLineBreak;
			say "     Sinking forward to lie panting on the ground, her ass still half-raised, Sonya regains her breath after a minute or two, then rolls over on her side to look at you. Her eyes roam up and down your body, resting for a second on your own pussy, then she says, 'That was... really good. I - I still would have preferred a cock, but... there's something to this too.' With a new composure, now that her lusts have been satisfied, she sits up and cleans herself a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her gear.";
			now Dexterity of Sonya is 2;
		else if Dexterity of Sonya is 2: [first time with dildo]
			say "     Hand in hand, you climb over the crest of a nearby dune, stopping several times on the way to share hungry kisses. After finally arriving in a somewhat protected spot, out of sight from the beach, Sonya pushes you to sit in the sand and starts to undress in a hot little strip-show. It's amazing how arousing she can make taking off scale mail armor and then piece by piece her other clothing. She quickly has you so hot and bothered that you just can't resist standing up and 'helping' a bit, pulling off articles of clothing and caressing her. Soon she is completely naked, revealing the pale-skinned perfection of her well-trained body. A beaming smile on her face, she starts undressing you too, rubbing her breasts and body against you as you're stripped bare.";
			say "     An impish smile on her lips, Sonya remarks, 'How about we... make things a bit more interesting? I love being with you, even though you've got nothing down there, but I feel like I... need something long and hard thrusting deep into me. So - I got something for us...' Looking at the pale-skinned, beautiful woman, you stroke her cheek and give her a curious expression. She just smiles mysteriously, then steps over to the pile of her discarded clothing and bends over to open her satchel, giving you a very inviting view of her shapely ass and the wet and swollen pussy between her legs. Sonya turns around a moment later with... a green double-headed dildo in hand, giving a pleased little laugh as she sees where your gaze rests. Then she gets down, stretching out in the sand with her shoulders and head resting on the pile of her clothes and spreading those long, lithe legs invitingly. The sexy woman raises her hand with the dildo a moment later, and waves it at you, making the ends wobble in the air. 'I... want you to take me, please. Make use of this 'cock snake' and fuck me good...'";
			WaitLineBreak;
			say "     Your eyes riveted to the rubber sex toy, you kneel between the young Viking's legs and take it from her. Pushing one end in between Sonya's pussy lips, her moans encourage you to go deeper and deeper. Sliding it in and out of her, you slowly fuck Sonya while your other hand explores her body, stroking over soft skin and fondling her breasts. With her writhing in pleasure under your ministrations, there soon is a gasp of 'Kiss me', and you eagerly comply, moving up on top of her and finding her lips with yours. It feels amazing to be so intimately close to her, and making out as you fuck her with a dildo.";
			say "     Before long, Sonya moans 'Harder, harder!' her arms pulling you tight against her. Taking up the speed of your thrusts into her, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. It's great fun finding out what she likes best and how you can make her squeal in delight. For a while, anything but making out, touching and fucking is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
			WaitLineBreak;
			say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo in your hand as her inner muscles grip it. A trickle of her femcum runs down over the sex toy, to drip down into she sand.";
			say "     After a moment of catching her breath, Sonya looks up at you and... suddenly the world spins as she rolls the two of you over until she's on top and straddling your hips. With a new composure, now that her lusts have been satisfied, she pulls the rubber cock out herself and cleans up a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her other gear.";
			now Dexterity of Sonya is 3;
		else if Dexterity of Sonya is 3: [dildo or fingers]
			say "     Hand in hand, you climb over the crest of a nearby dune, stopping several times on the way to share hungry kisses. After finally arriving in a somewhat protected spot, out of sight from the beach, Sonya pushes you to sit in the sand and starts to undress in a hot little strip-show. It's amazing how arousing she can make taking off scale mail armor and then piece by piece her other clothing. She quickly has you so hot and bothered that you just can't resist standing up and 'helping' a bit, pulling off articles of clothing and caressing her. Soon she is completely naked, revealing the pale-skinned perfection of her well-trained body. A beaming smile on her face, she starts undressing you too, rubbing her breasts and body against you as you're stripped bare.";
			say "     Soon ending up standing naked with Sonya's arms wrapped around you from behind, you revel in the feel of her curves and smooth skin against you, as well as the young woman's hands that sensually stroke your body. Her hand dips down your front eventually, stroking over your smooth crotch in a feather-light touch that has you panting in lust.";
			LineBreak;
			say "     [bold type]After a moment of this, she whispers in your ear, 'Should we just use our tongues, or do you want me to get the cock-snake out for some real fun?'[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Have oral sex with Sonya.";
			say "     ([link]N[as]n[end link]) - Make use of the double-dong dildo.";
			if player consents:
				LineBreak;
				say "     Turning around to face Sonya, you give her a hungry kiss, then pant that you want her to go down on you as you come up for air afterwards. With that, you pull away from your sexy viking and kneel down in the sand with your legs spread. Both hands on your hips, you just look at Sonya expectantly - to which the warrioress gives a sexy little smile and licks her lips. Then Sonya gets down on all fours, prowling closer to you in a playful, cat-like way that involves showing off her beautiful, naked body. Arriving directly before you just a short moment later, the striking woman lowers her head and gives your smooth crotch a first eager little lick.";
				WaitLineBreak;
				say "     You moan loudly as Sonya makes some more experiences with pleasing someone orally, even though you can tell she is still somewhat disappointed that you don't have a cock. Despite this, she gives it her best try, and... it turns out she's a natural at it - licking and nibbling your sensitive skin, gently rubbing and finding the most tender spots. After a short while of breathtaking stimulation by the blond beauty, you give a satisfied gasp, throwing your head back as tremors of lust run through your whole being.";
				say "     The viking wipes her lips with an amused snort, then says, 'That was fun. Now... Would you care to return the favor?' She looks up at you, then wiggles her hips invitingly. Taking hold of her shoulder, you stroke down Sonya's side as you move around her body, letting your fingers slide over her soft and warm skin until they reach the firm, well-rounded cheeks of her butt. There is a pant from the Nordic beauty as your hand slides between her legs, brushing against sensitive nether lips and then reaching her little clit. Sonya gives a breathless gasp as you rub over her button with a finger, gently tickling it while your other hand starts to spread the lips of her pussy apart.";
				WaitLineBreak;
				say "     As you slide one of your digits into Sonya, rubbing her passage, you can't help but thing that there is something very delicious about having this strong woman before you on her hands and knees, shivering and panting helplessly as you touch her. This animates you to really put in some effort, teasing her first in one spot, then another, making good use of all the little sensitive spots you know of Sonya. It's quite a lot of fun to see her react when you slide your finger in... just... like... so... and... then... do THIS - Sonya throws her head back moaning loudly as a mini-orgasm runs through her body.";
				say "     You keep going for a while like this, playing with Sonya's body, making her tremble, pant and gasp, before you finally go all out, intensifying your finger-work to get her to the climax that has been building all this time. The beautiful woman's moans get louder and more high-pitched as they come faster and faster, then she gives something halfway between a squeak and an aroused shout as the point of no return is reached. Sonya rocks back - hard - to get even more of your teasing fingers inside her.";
				WaitLineBreak;
				say "     Sinking forward to lie panting on the ground, her ass still half-raised, Sonya regains her breath after a minute or two, then rolls over on her side to look at you. Her eyes roam up and down your body, resting for a second on your own pussy, then she says, 'That was... really good. Thank you, my love.' With a new composure, now that her lusts have been satisfied, she sits up and cleans herself a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her gear.";
			else:
				LineBreak;
				say "     Turning around to face Sonya, you give her a hungry kiss while one of your hands snakes down between you, its fingers dipping into her pussy an eye-blink later. As you thrust in with two fingers and start to wiggle them around, Sonya can't help but lean her head back and give a loud moan. You tell her that you want to 'take her', letting the two of you feel each other inside. Moving your head to find one of her perky nipples with your lips as you continue to finger Sonya, you do playfully suckle on it, which gives the young woman's aroused squeals a whole new note of urgency. Then finally after a short little while, you do pull back, allowing her to catch her breath and for the lustful haze to recede from her mind.";
				say "     Eager to get on the real action after you warming her up like this, she steps over to the pile of her discarded clothing and bends over to open her satchel, giving you a very inviting view of her shapely ass and the wet and swollen pussy between her legs. Sonya turns around a moment later with the green double-headed dildo in hand, giving a pleased little laugh as she sees where your gaze rests. Then she gets down, stretching out in the sand with her shoulders and head resting on the pile of her clothes and spreading those long, lithe legs invitingly. The sexy woman raises her hand with the dildo a moment later, and waves it at you, making the ends wobble in the air.";
				WaitLineBreak;
				say "     Your eyes riveted to the rubber sex toy, you kneel between the young Viking's legs and take it from her. Pushing one end in between Sonya's pussy lips, her moans encourage you to go deeper and deeper. Sliding it in and out of her, you slowly fuck Sonya while your other hand explores her body, stroking over soft skin and fondling her breasts. With her writhing in pleasure under your ministrations, there soon is a gasp of 'Kiss me', and you eagerly comply, moving up on top of her and finding her lips with yours. It feels amazing to be so intimately close to her, and making out as you fuck her with a dildo.";
				say "     Before long, Sonya moans 'Harder, harder!' her arms pulling you tight against her. Taking up the speed of your thrusts into her, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. It's great fun finding out what she likes best and how you can make her squeal in delight. For a while, anything but making out, touching and fucking is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
				WaitLineBreak;
				say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo in your hand as her inner muscles grip it. A trickle of her femcum runs down over the sex toy, to drip down into she sand.";
				say "     After a moment of catching her breath, Sonya looks up at you and... suddenly the world spins as she rolls the two of you over until she's on top and straddling your hips. With a new composure, now that her lusts have been satisfied, she pulls the rubber cock out herself and cleans up a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her other gear.";
	LineBreak;
	if the player is not facially human or the player is not bodily human or the player is not skintone human:    [non-human player = a monster, in her words]
		say "     As she pulls her clothes back on, Sonya gives your naked body a glance that lingers for a moment, and you can almost see lust and desire flickering up in her eyes again. Then she shakes her head with a sigh. 'I'd have another go with you, my handsome monster, but... there's my duty to be done. Raiding targets don't scout themselves, you know...' She kneels next to you for a quick kiss, then stands up and walks away, turning her head for one last look back as she climbs over the crest of the dune.";
	else:    [human player]
		say "     As she pulls her clothes back on, Sonya gives your naked body a glance that lingers for a moment, and you can almost see lust and desire flickering up in her eyes again. Then she shakes her head with a sigh. 'I'd have another go with you, my outlander warrior, but... there's my duty to be done. Raiding targets don't scout themselves, you know...' She kneels next to you for a quick kiss, then stands up and walks away, turning her head for one last look back as she climbs over the crest of the dune.";

to say VikingDesc:
	setmongender 4;
	if debugactive is 1:
		say "DEBUG -> VIKINGRELATIONSHIP: [VikingRelationship], VIKINGPREGNANCY: [VikingPregnancy], PREGCOUNTER: [VikingPregCounter], KIDCOUNTER: [VikingKidCounter] <- DEBUG[line break]";
	if VikingRelationship is 0:   [first meeting]
		say "     As you walk along the beach, you notice something moving out on the water. Turning your gaze toward it and straining your eyes a bit, you recognize it as a Viking longboat with a big square sail. Where did that thing come from? On the other hand... with all the things happening these days, the sudden appearance of Vikings isn't all that surprising. As you watch, you see a smaller boat being rowed towards the bigger one. Looks like they went ashore a while ago - or maybe dropped off som-[line break][line break]";
		say "     *thunk, thunk* sounds come from behind you, and as you turn around you find yourself confronted with a female Viking, hitting the broad side of her sword against her round wooden shield to attract your attention. She's got shoulder-length blond hair, the impressive physique of a seasoned fighter and is dressed in light scale mail. Her gaze wanders over you appraisingly, then she says:[line break]";
		if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
			say "     'So we did land in the land of the legends, with monsters roaming about. Let's see if the old men spoke the truth when they told their stories about oh so powerful beasts. Let's fight, creature!' A challenging look in her eye, she brings up her shield again and raises the sword, rushing at you.";
		else:    [human player to be raided]
			say "     'So you're an inhabitant of this strange land? I'm not impressed. I bet you'll just squawk like a plucked chicken as all the others did when we carried off the loot. But who knows - prove me wrong if you can, weakling!' A challenging look in her eye, she brings up her shield again and raises the sword, rushing at you.";
		now VikingRelationship is 1;
	else if VikingRelationship is 1: [never won against her]
		say "     Walking along the beach, you suddenly find yourself confronted with a female Viking, running down the raise of the dune where she lay in wait and rushing at you. The attractive blond woman in her light scale mail brandishes her sword and shield as she lets her gaze wander over you appraisingly.";
		if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
			say "     'Another monster - or is it the same one? Bah, who cares.' She gives you a challenging look. 'Let's see if at least one of you critters is as powerful and strong as the old men told in their stories.' She brings up her shield again and raises the sword, rushing at you.";
		else:    [human player to be raided]
			say "     'Another sheep waiting to be shorn - or is it the same one? Bah, who cares.' She gives you a challenging look. 'Fear me and get ready to loose your wool - or prove me wrong if you can, weakling!' She brings up her shield again and raises the sword, rushing at you.";
	else if VikingRelationship is 2:  [player beat her once]
		say "     Walking along the beach, you suddenly find yourself confronted with a female Viking, running down the raise of the dune where she lay in wait and rushing at you. The attractive blond woman in light scale mail brandishes her sword and shield as she lets her gaze wander over you appraisingly.";
		if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
			say "     'So we meet again, monster.' She gives you a challenging look. 'You beat me once, but I bet that was just luck. This time, I'll show you!' She brings up her shield again and raises the sword, rushing at you.";
		else:    [human player to be raided]
			say "     'So we meet again, outlander.' She gives you a challenging look. 'You beat me once, but I bet that was just luck. This time, I'll show you!' She brings up her shield again and raises the sword, rushing at you.";
	else if VikingRelationship is 3:  [player beat her twice]
		say "     Walking along the beach, you suddenly find yourself confronted with a female Viking, running down the raise of the dune where she lay in wait and rushing at you. The attractive blond woman in light scale mail brandishes her sword and shield as she lets her gaze wander over you appraisingly.";
		if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
			say "     'Face to face again, monster.' She gives you a challenging look. 'You're not a bad fighter, I have to admit - but this time, I'll show you!' She brings up her shield again and raises the sword, rushing at you.";
		else:    [human player to be raided]
			say "     'Face to face again, little warrior.' She gives you a challenging look. 'You're not a bad fighter, I have to admit - but this time, I'll show you!' She brings up her shield again and raises the sword, rushing at you.";
	else if (VikingRelationship > 3 and VikingRelationship < 7) or VikingRelationship is 20:  [player beat her three+ times]
		if VikingPregnancy is 0:
			say "     Walking along the beach, you suddenly find yourself confronted with a female Viking, running down the raise of the dune where she lay in wait and rushing at you. The attractive blond woman in light scale mail brandishes her sword and shield as she lets her gaze wander over you.";
			if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
				say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] monster. You're everything - and more - that the old men said you'd be when they told us the legends.' She gives you a challenging look. 'How about you prove your power again and then ravish me? Let's fight!' She brings up her shield again and raises the sword, rushing at you.";
			else:    [human player to be raided]
				say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] warrior. I'll admit that you've proven me wrong about your people again and again.' She gives you a challenging look. 'How about you show me your power another time and then ravish me? Let's fight!' She brings up her shield again and raises the sword, rushing at you.";
		if VikingPregnancy is 1:
			say "     Walking along the beach, you suddenly find yourself confronted with a female Viking, running down the raise of the dune where she lay in wait and rushing at you. The attractive blond woman in light scale mail brandishes her sword and shield as she lets her gaze wander over you.";
			if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
				say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] monster. I've been feeling... different, lately. Looks like your seed has done its work and we'll have a child.' She gives you a challenging look. 'But don't you think that'll mean I'll end up a tame brood-cow. I can fight, no matter what - and if you want another tumble in the dunes, you'll have to fight!' She brings up her shield again and raises the sword, rushing at you.";
			else:    [human player to be raided]
				say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] warrior. I've been feeling... different, lately. Looks like your seed has done its work and we'll have a child.' She gives you a challenging look. 'But don't you think that'll mean I'll end up a tame brood-cow. I can fight, no matter what - and if you want another tumble in the dunes, you'll have to fight!' She brings up her shield again and raises the sword, rushing at you.";
		else if VikingPregnancy is 2:
			say "     Walking along the beach, you suddenly find yourself confronted with a female Viking, running down the raise of the dune where she lay in wait and rushing at you. The attractive blond woman in light scale mail brandishes her sword and shield as she lets her gaze wander over you. There's somewhat of a bulge noticeable in her midriff, showing proof of your sperm's virility.";
			if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
				say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] monster. Our child grows quick, as you can see. He'll be as powerful as his father, for sure.' She rubs her belly through the tunic and gives you a challenging look. 'But don't you think I've become a tame brood-cow now. I'd love another tumble in the dunes, but you'll still have to prove your power. Let's fight!' She brings up her shield again and raises the sword, rushing at you.";
			else:    [human player to be raided]
				say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] warrior. Our child grows quick, as you can see. He'll be as powerful as his father, for sure.' She rubs her belly through the tunic and gives you a challenging look. 'But don't you think I've become a tame brood-cow now. I'd love another tumble in the dunes, but you'll still have to prove your power. Let's fight!' She brings up her shield again and raises the sword, rushing at you.";
		else if VikingPregnancy is 3:
			say "     Walking along the beach, you suddenly find yourself confronted with a female Viking, running down the raise of the dune where she lay in wait and rushing at you. The attractive blond woman in a woolen tunic brandishes her sword and shield as she lets her gaze wander over you. She is quite obviously pregnant, with a bulging belly showing proof of your sperm's virility.";
			if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
				say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] monster. Our child told me you were close. He always gets more active when you're there.' She rubs her belly through the tunic and gives you a challenging look. 'But don't you think I've become a tame brood-cow now. I'd love another tumble in the dunes, but you'll still have to prove your power. Let's fight!' She brings up her shield again and raises the sword, rushing at you.";
			else:    [human player to be raided]
				say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] warrior. Our child told me you were close. He always gets more active when you're there.' She rubs her belly through the tunic and gives you a challenging look. 'But don't you think I've become a tame brood-cow now. I'd love another tumble in the dunes, but you'll still have to prove your power. Let's fight!' She brings up her shield again and raises the sword, rushing at you.";
		else if VikingPregnancy is 4:
			say "     Walking along the beach, you suddenly find yourself confronted with a female Viking, running down the raise of the dune where she lay in wait and rushing at you. The attractive blond woman in light scale mail brandishes her sword and shield as she lets her gaze wander over you.";
			if a random chance of 1 in 2 succeeds:  [kid was a boy]
				if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
					say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] monster. Our child is strong and healthy, a beautiful little boy. He looks a lot like you and will become a powerful warrior for sure, being half-monster like in the legends.' Biting her lip, she gives you a look, half challenging half needful. 'I miss having part of you inside me, and by body tells me I'm ready again already. How about you prove your power over me again and ravish me? Let's fight!' She brings up her shield again and raises the sword, rushing at you.";
				else:    [human player to be raided]
					say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] warrior. Our child is strong and healthy, a beautiful little boy. He looks a lot like you and will become a powerful warrior for sure.' Biting her lip, she gives you a look, half challenging half needful. 'I miss having part of you inside me, and by body tells me I'm ready again already. How about you prove your power over me again and ravish me? Let's fight!' She brings up her shield again and raises the sword, rushing at you.";
					if VikingKidGender is 0:
						now VikingKidGender is 1;
					else if VikingKidGender is 2:
						now VikingKidGender is 3;
			else:  [kid was a girl]
				if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
					say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] monster. Our child is strong and healthy, a beautiful little girl. She looks a lot like you and will become a powerful warrior for sure, being half-monster like in the legends.' Biting her lip, she gives you a look, half challenging half needful. 'I miss having part of you inside me, and by body tells me I'm ready again already. How about you prove your power over me again and ravish me? Let's fight!' She brings up her shield again and raises the sword, rushing at you.";
				else:    [human player to be raided]
					say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] warrior. Our child is strong and healthy, a beautiful little girl. She looks a lot like you and will become a powerful warrior for sure.' Biting her lip, she gives you a look, half challenging half needful. 'I miss having part of you inside me, and by body tells me I'm ready again already. How about you prove your power over me again and ravish me? Let's fight!' She brings up her shield again and raises the sword, rushing at you.";
					if VikingKidGender is 0:
						now VikingKidGender is 2;
					else if VikingKidGender is 1:
						now VikingKidGender is 3;
			now VikingPregnancy is 0;    [reset into receptive state]
	else if VikingRelationship is 7:  [Sonya is on the ship, her cousin appears and offers an ultimatum]
		now VikingUltimatum is 24;    [72h to appear for the challenge]
		now Chieftain's Challenge is unresolved;
		if the player is not facially human or the player is not bodily human or the player is not skintone human:     [they see the player as a monster]
			say "     Walking along the beach, you suddenly find yourself confronted with two male Vikings, rushing towards you as they spot you. The young blond men in light scale mail carry round shields and brandish sharp-looking axes - and are pretty enraged. Seems like your previous encounters Sonya didn't go over too well with these two... brothers, you'd say, from their similar looks. For a moment, it looks like one of them would just keep coming and attack you, until he's stopped in his tracks by the other calling out 'Stop, Svetjalf. This... creature is not ours to slay. We've got a message to deliver.'";
			say "     The Viking turns to you and continues with a snarl 'So you're the beast that despoiled our cousin? How did you beat her in a fight - or make her believe you did? Magic? Some other treachery? Clearly you've got her controlled somehow, or she wouldn't praise an outlander beast so highly. Bah.' He spits in the sand before your feet. 'Our chieftain Frithjof sent us to pass on a message. He calls upon you, the one who dishonored his daughter, to come to those big rocks at the end of the beach during the next three days. You'll fight - in front of the rest of the clan, to prevent any of your tricks - and he'll spill your guts on the sand. If you at least have the decency to appear and die like a man would, that'll restore some honor to Sonya...' With that said, he and his brother give you a final angry stare, then turn around and walk off to a waiting rowboat some way along the beach.";
		else:  [human-like player]
			say "     Walking along the beach, you suddenly find yourself confronted with two male Vikings, rushing towards you as they spot you. The young blond men in light scale mail carry round shields and brandish sharp-looking axes - and are pretty enraged. Seems like your encounters Sonya didn't go over too well with these two... brothers, you'd say, from their similar looks. For a moment, it looks like one of them would just keep coming and attack you, until he's stopped in his tracks by the other calling out 'Stop, Svetjalf. This... outlander is not ours to slay. We've got a message to deliver.'";
			say "     The Viking turns to you and continues with a snarl 'So you're the bastard that despoiled our cousin? How did you beat her in a fight - or make her believe you did? Magic? Some other treachery? Clearly you've got her controlled somehow, or she wouldn't praise an outlander so highly. Bah.' He spits in the sand before your feet. 'Our chieftain Frithjof sent us to pass on a message. He calls upon you, the one who dishonored his daughter, to come to those big rocks at the end of the beach during the next three days. You'll fight - in front of the rest of the clan, to prevent any of your tricks - and he'll spill your guts on the sand. If you at least have the decency to appear and die like a man would, that'll restore some honor to Sonya...' With that said, he and his brother give you a final angry stare, then turn around and walk off to a waiting rowboat some way along the beach.";
		LineBreak;
		say "     You've got [bold type]72 hours (24 turns)[roman type] from now on to appear at the [bold type]chieftain's challenge[roman type] here on the beach and fight it out with him. Beating the man in an honest one on one duel should hopefully convince the gathered vikings that you didn't trick or bespell Sonya and really are worthy of her.";
		LineBreak;
		say "     Prepare yourself well for the duel - you could be gutted like a fish (and die) - or gain the admiration of Vikings if you win (and see Sonya again).";
		now combat abort is 1;
		now VikingRelationship is 8;
	else if VikingRelationship is 8:  [ultimatum is ticking away]
		if VikingUltimatum > 16:
			say "     Walking along the beach, you suddenly find yourself confronted with two male Vikings, rushing towards you as they spot you. It's Sonya's two cousins again, who snarl and glower at you as they get closer. 'Remember, you've got [bold type]three days[roman type] to show up for the [bold type]chieftain's challenge[roman type]. Less than that by now, really. Have at least the decency to show up and die properly - Sonya will never be able to succeed her father as leader of the clan now, disgraced as she is by losing herself to some of your tricks, but she'll at least regain some of her honor that way,' says the more talkative of them before they move on.";
		else if VikingUltimatum > 8:
			say "     Walking along the beach, you suddenly find yourself confronted with two male Vikings, rushing towards you as they spot you. It's Sonya's two cousins again, who snarl and glower at you as they get closer. 'We waited for you yesterday, coward. Have at least the decency to show up and die properly - Sonya will never be able to succeed her father as leader of the clan now, disgraced as she is by losing herself to some of your tricks, but she'll at least regain some of her honor that way. You've got [bold type]two days[roman type] left to show up for the [bold type]chieftain's challenge[roman type].' says the more talkative of them before they move on.";
		else:
			say "     Walking along the beach, you suddenly find yourself confronted with two male Vikings, rushing towards you as they spot you. It's Sonya's two cousins again, who snarl and glower at you as they get closer. 'You're not gonna show up and allow Sonya to reclaim some of her honor as she watches you bleed out? Filthy coward! You've got [bold type]one day[roman type] left to show up for the [bold type]chieftain's challenge[roman type].' says the more talkative of them, only barely holding back from attacking you.";
		now combat abort is 1;
	else if VikingRelationship is 9:
		say "     Gripping the handle of his axe tightly, the Viking chieftain points at you with it. 'I still don't know what you did to my daughter, but you'll pay for it, may it have been a spell, drug or anything else. No amount of trickery can save you now!' Then he attacks, rushing at you with a loud war-cry.";
	else if VikingRelationship is 100:
		say "     Error: The vikings should have left the area since you didn't snow up for the duel with their chief. Please report how you saw this.";

to say VikingAttacks:
	if VikingRelationship is 9:
		say "[one of]Chief Frithjof swings his axe and lands a hit on you, though you luckily manage to turn away from it in time so it just leaves a bleeding cut and doesn't take your arm off.[or]The Viking chieftain slams his shield against your chest, making you stumble backwards dazedly.[or]A sudden kick from the Viking Chieftain against the side of your leg leaves you numb and weakened.[or]You manage to evade a swing of his axe, but the chieftain slams the hilt of the weapon into your stomach, making you double over in pain.[or]Frithjof slams his shield into your chest, driving the air from your lungs.[or]Rushing at you with his shield held in front of him, Frithjof slams against you and bowls you over.[at random]";
	else:
		say "[one of]She lands a shallow cut on you. Luckily, she's not trying to kill you, or she could have skewered you there...[or]The Viking woman slaps the broad side of her sword against your head, leaving you seeing stars for a moment.[or]A sudden kick against the side of your leg leaves you numb and weakened.[or]She slams her shield into your chest, driving the air from your lungs.[at random]";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Viking";
	now attack entry is "[VikingAttacks]";
	now defeated entry is "[Viking loses]";
	now victory entry is "[Viking wins]";
	now desc entry is "[VikingDesc]";
	now face entry is "a handsome young man's, framed by a mane of shoulder-long, unkempt blond hair. Your cheeks and chin sport a short blond beard";
	now body entry is "that of a young man, quite fit and healthy. It is garbed in a woolen tunic and pants, plus a pair of leather boots";
	now skin entry is "smooth, pale"; [ format as the text "You have (your text) skin"]
	now tail entry is "You have a tight, firmly muscled butt."; [ write a whole Sentence or leave blank. ]
	now cock entry is "Human"; [ format as "You have a 'size' (your text) cock ]
	now face change entry is "it shapes itself into a handsome male visage, the cheeks and chin covered by a short blond beard. Your hair turns into a shoulder-length blond mane"; [ format as "Your face feels funny as (your text)" ]
	now body change entry is "it is reshaped into a that of a young man, and a fit and healthy one at that"; [  format as "Your body feels funny as (your text)" ]
	now skin change entry is "it smoothes out, becoming the pale tint of a northern European"; [ format as "Your skin feels funny as (your text)" ]
	now ass change entry is "it gets tight and firmly muscled"; [ format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it becomes human-shaped"; [ format as "Your cock feels funny as (your text)" ]
	now str entry is 20;
	now dex entry is 20;
	now sta entry is 18;
	now per entry is 15;
	now int entry is 12;
	now cha entry is 18;
	now sex entry is "Male";
	now HP entry is 80;
	now lev entry is 9;
	now wdam entry is 15;
	now area entry is "Beach";             [ Case sensitive]
	now cocks entry is 1;                  [ number of cocks if sex is 'Male' or 'Both' ]
	now cock length entry is 10;
	now cock width entry is 5;             [ Size of balls ]
	now breasts entry is 2;                [ Number of nipples. ]
	now breast size entry is 0;            [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;       [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;                  [ number of pussies if sex is 'Female' or 'Both' ]
	now cunt length entry is 0;
	now cunt width entry is 0;
	now libido entry is 10;                [ Amount player Libido will go up if defeated ]
	now loot entry is "mead horn";         [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 40;            [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;                  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "Nordic"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "Human";             [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	blank out the nocturnal entry;         [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";

Section 3 - Events


Chieftain's Challenge is a situation. The level of Chieftain's Challenge is 1. Chieftain's Challenge is resolved.
The sarea of Chieftain's Challenge is "Beach".

Instead of resolving a Chieftain's Challenge:
	if the player is not facially human or the player is not bodily human or the player is not skintone human:     [they see the player as a monster]
		say "     Arriving at the rocky part of the beach, you find an armored grey-bearded Viking waiting for you there. The old man glowers at you as you come closer, then calls in a disparaging tone 'So you actually showed up, outlander monster. I'd have expected you to run like a coward.' Turning from you to climb on the largest of the rocks, he waves to the viking ship out in the ocean, signaling them. You see smaller boats getting lowered into the water, Vikings getting in them and rowing towards the shore. 'It won't be long until the clan is here to witness your death. Chief Frithjof will gut you for what you did to Sonya' the old man says as he climbs back down and leans against the rocks to watch the ship and boats.";
		WaitLineBreak;
		say "     It takes several trips from and to the ship to ferry all the Vikings over (except a few watch-standers on the ship), though with lots of young blond and red-headed young men to row the boats, they're still quicker than you'd have expected. Soon there's a circle of more than thirty Vikings around you, mostly men but also some women in various age-groups. The majority looks to be about 20-30, though there are some grey-beards and still beardless youngsters too. All of them - except Sonya, who stands flanked by her two cousins - give you rather hostile looks and there's a background murmur of speculation about you. You hear them call you all kinds of names as they speculate what you used to bespell or control Sonya.";
		say "     Everyone goes silent as a large and muscular man steps forward into the ring of people, pretty imposing in scale-mail armor. He's got the bearing of a seasoned fighter and is armed with a wickedly sharp-looking axe and a large round shield. From his scowl at you and the similar looks, this must be Sonya's father.";
	else:     [player is a human-like person]
		say "     Arriving at the rocky part of the beach, you find an armored grey-bearded Viking waiting for you there. The old man glowers at you as you come closer, then calls in a disparaging tone 'So you actually showed up, outlander bastard. I'd have expected you to run like a coward.' Turning from you to climb on the largest of the rocks, he waves to the viking ship out in the ocean, signaling them. You see smaller boats getting lowered into the water, Vikings getting in them and rowing towards the shore. 'It won't be long until everyone's here to witness your death. Chief Frithjof will gut you for what you did to Sonya' the old man says as he climbs back down and leans against the rocks to watch the ship and boats.";
		WaitLineBreak;
		say "     It takes several trips from and to the ship to ferry all the Vikings over, though with lots of young blond and red-headed young men to row the boats, they're still quicker than you'd have expected. Soon there's a circle of more than thirty Vikings around you, mostly men but also some women in various age-groups. The majority looks to be about 20-30, though there are some grey-beards and still beardless youngsters too. All of them - except Sonya, who stands flanked by her two cousins - give you rather hostile looks and there's a background murmur of speculation about you. You hear them call you all kinds of names, wondering what kind of drug, poison, spell, or the like you used to control Sonya.";
		say "     Everyone goes silent as a large and muscular man steps forward into the ring of people, pretty imposing in scale-mail armor. He's got the bearing of a seasoned fighter and is armed with a wickedly sharp-looking axe and a large round shield. From his scowl at you and the similar looks, this must be Sonya's father.";
	LineBreak;
	now VikingRelationship is 9;
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Viking":
			now monster is y;
			break;
	choose row monster from the table of random critters;   [the chieftain is stronger than Sonya]
	now HP entry is 275;
	now monsterHP is 275;
	now lev entry is 15;
	now wdam entry is 30;
	now lootchance entry is 0;
	challenge "Viking";
	if fightoutcome >= 20 and fightoutcome <= 29:            [lost]
		say "     [VikingDuelDeath]";
	else if fightoutcome >= 30:                         [fled]
		say "     [VikingDuelEscape]";
	else if fightoutcome >= 10 and fightoutcome <= 19:  [won]
		say "     [VikingDuelVictory]";
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Viking":
			now monster is y;
			break;
	choose row monster from the table of random critters;
	now HP entry is 80;
	now monsterHP is 80;
	now lev entry is 9;
	now wdam entry is 15;
	now lootchance entry is 40;
	now Chieftain's Challenge is resolved;
	now VikingUltimatum	is 0;  [finished, one way or another]

to say VikingDuelDeath:
	say "     With a final combination of a shield-bash to the head and a heavy kick against your leg, you fall down into the sand. Holding your sprained - possibly broken - leg with both hands as you scream in pain, you don't even see the Viking Chieftain's axe raise and fall to put an end to your suffering - by separating your head from the body below.";
	say "     The matter at hand dealt with, the Vikings move back to their boats and row out to the larger ship, many stopping to give your lifeless body a kick on the way over. The last one to leave is Sonya, giving your remains a disappointed look, then stepping into a boat to be brought back to the Viking ship.";
	now battleground is "void";
	now bodyname of player is "dead";
	end the story saying "You're dead - DEAD!";

to say VikingDuelEscape:
	say "     After you showed up to fight, it seems the Vikings assumed you had the honor to see it through till the end - which is why you totally managed to surprise them when you suddenly took off. You broke out of the circle of watchers, bowling two of them over and running away before they even realized what was happening. After a moment of shock, the gathered onlookers took up chase, throwing rocks and even one or two axes after you, resulting in many bruises and even a moderately severe cut.";
	say "     Followed by shouts of 'Coward', 'Wimp' and lots of worse terms, you're hunted almost to exhaustion by the enraged mob. Only by dashing through what looked like some talk or negotiation between the hyenas and leopardmen did you finally manage the lose them. Before the representatives of the two gangs managed to react with anything but growls at your sudden appearance, the viking lynch-mob ran straight into them, causing a free for all fight. Not even looking back to check what was happening there or if anyone was still following you, you just kept going until you finally arrived at the library, bloodied and exhausted.";
	now HP of player is 1;
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Viking":
			now monster is y;
			break;
	now area entry is "Nowhere";
	now VikingRelationship is 100;     [the Vikings are gone, having sailed further down the coast after their fight with the gangs]
	move player to Grey Abbey Library;

to say VikingDuelVictory:
	if the player is not facially human or the player is not bodily human or the player is not skintone human:     [they see the player as a monster]
		say "     As you land blow after blow on the mighty Viking chieftain, the jeers and shouted abuse from the crowd of onlookers slowly ebb out until all of them finally just watch excitedly as the two of you fight on. A few minutes later, you land a solid blow against Frithjof's face, leaving the man to stumble backward a bit and shake his head to clear it. Wiping his bloodied lip, he spits a broken tooth into the sand, then meets your eyes with a glare - before suddenly giving you a grin and a hearty chuckle. 'Seems like I underestimated you, creature. You can fight!'";
		say "     A murmur goes through the crowd of Vikings, then Sonya steps forward, brushing off the hands of her cousins who half-heartedly try to hold her back. Coming to stand in the circle next to you, she gives the gathered crowd and her father an angry stare, then shouts 'I told you this monster was mighty in combat - I wouldn't have let anyone else touch me! But did anyone believe me? No - you just nattered old-wives tales about magic.' With a defiant glare at her father, Sonya moves to stand beside you.";
	else:
		say "     As you land blow after blow on the mighty Viking chieftain, the jeers and shouted abuse from the crowd of onlookers slowly ebb out until all of them finally just watch excitedly as the two of you fight on. A few minutes later, you land a solid blow against Frithjof's face, leaving the man to stumble backward a bit and shake his head to clear it. Wiping his bloodied lip, he spits a broken tooth into the sand, then meets your eyes with a glare - before suddenly giving you a grin and a hearty chuckle. 'Seems like I underestimated you, [if cunts of player > 0 and cocks of player is 0]girl[else]boy[end if]. You can fight!'";
		say "     A murmur goes through the crowd of Vikings, then Sonya steps forward, brushing off the hands of her cousins who half-heartedly try to hold her back. Coming to stand in the circle next to you, she gives the gathered crowd and her father an angry stare, then shouts 'I told you this outlander was a powerful warrior - I wouldn't have let anyone else touch me! But did anyone believe me? No - you just nattered old-wives tales about magic.' With a defiant glare at her father, Sonya moves to stand beside you, a hand on your shoulder in support.";
	WaitLineBreak;
	say "     Frithjof looks at you and Sonya, then nods. 'Hah - seems like we've got a wedding to celebrate! With you already having fucked the girl and having given her father a well-deserved thrashing to beat some sense into him, it's a done deal. Back to the ship - met for everyone!' A cheer goes through the gathered Vikings, and they come together to congratulate the two of you. Lifting Sonya and you into the air, they carry you along to the boats, set you down in one together and row back towards the large Viking ship.";
	say "     As you arrive there, Frithjof himself tells the few people who stayed on the boat what happened, then sends one of his nephews to get Sonya's sword. Drawing it out of its scabbard, he looks at the shining blade then offers it to you, hilt first. 'This is now yours, as well as is the duty to use it to protect your new wife with it. Not that my daughter will need much help here, she's no blushing shy bride.' With a grin, he lets the two of you come to the foredeck of the ship, puts your hands into each others and raises them high. 'They're now one, in front of the clan, and the gods,' he shouts, getting a loud cheer as an answer.";
	say "     The celebration that follows is a quite wild affair, lots of singing and boasting as more than one cask of mead is carried up from under the deck. Horns of the sweet drink are filled and drunk, spilled and poured over people, making everyone more than a bit inebriated before long. Vikings really know how to party hard. A while into it, Sonya and you reenact your first victory over her, making a nice show out of it as you demonstrate blow after (cushioned) blow for the cheering Vikings. Finally, as she mimes swaying from your last hit, you pull your bride against yourself and give her a deep kiss, accompanied by a loud cheer of the surrounding people.";
	WaitLineBreak;
	say "     As you come up for air, Sonya whispers to you 'Want to show them what came next?', a lustful twinkle in her eye. Might just be the met talking in your drunkenness, but you feel an urge inside you to just go for it, fucking your Viking wife right here and now, in full view of everyone.[line break]";
	LineBreak;
	say "     [bold type]Do you follow those urges?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Have public sex with Sonya.";
	say "     ([link]N[as]n[end link]) - Just party with the vikings, for now.";
	if player consents:
		say "     You smile at Sonya and nod, then give her another kiss, after which she quickly goes below-deck, coming back up just moments later with a bundle of furs. She throws them down on a crate standing on deck, then shouts 'But that isn't all [if cunts of player > 0 and cocks of player is 0]she[else]he[end if] did to me that day.' Then she undoes her belt, pulling her tunic up over her head and baring her shapely breasts and pale-skinned upper body before the crowd. Her trousers follow a second later, leaving your bride to walk up to you naked, swaying her hips. Taking your hand, she leads you to the improvised bedding, kissing your cheek and saying 'Show them what you can do, my love' before she lays down on it, her legs dangling over the edge and slightly spread.";
		LineBreak;
		say "     [VikingPublicSex]";
	else:
		say "     You smile at Sonya, but shake your head, telling her it'd be too cruel to show all those men and women a perfect body - her perfect body - that they can never have. Not that you aren't tempted, you say with a grin, goosing Sonya's ass playfully. 'As you wish, [if cunts of player > 0 and cocks of player is 0]my wife[else]my husband[end if],' she says, then gives you another quick kiss before going to fill your mead-horns again. Stories of battles and raids told by the other Vikings follow, although with another mead cask soon empty, the tales get more and more incomprehensible.";
		say "     Nevertheless, the party is great fun - at least what you remember of it when you wake up several hours later, lying in a pile of furs next to Sonya on her bed. Seems like the two of you wanted to get some action going at some point, but drunkenly fell asleep before you got more than halfway undressed. With a wince at the hangover almost splitting your skill, you stand up quietly, leaving your wife to sleep hers off in peace. Going back on deck, you find one man who isn't quite as bad off as yourself, then let him row you back to shore. As you leave the boat, he tells you how you can signal for a pickup when you want to return to the [bold type]Viking Ship[roman type].";
	increase carried of viking sword by 1;
	now Viking Ship is known;
	now VikingRelationship is 20;

to say VikingPublicSex:
	if cocks of player > 0:                      [male+herm]
		say "     Accompanied by whistles and cheers from the drink Vikings, you quickly pull off your own clothes, letting them drop to the floor to lie with Sonya's, then step up to her, stroking the insides of her legs as you spread them a bit further. Your by now completely hard shaft rests hotly against her pubic mound as you lean over her and cup her breasts, taking one nipple, then the other into your mouth to gently suck on them. Then she pulls your head up to hers for a quick kiss, followed by a moaned 'Fuck me - now!'";
		WaitLineBreak;
		say "     Who could resist their wife making such a demand - instantly, your hand is at your cock, aiming it straight at the swollen pussy lips of your beautiful Viking woman. Moving forward, you slide into her, spreading the opening of her sex around your erect shaft. Helped along by her legs wrapping around your hips, pulling you closer, you quickly bottom out in her, eliciting a shared moan between the two of you (and a cheer from the drunk spectators) as your crotch touches hers. Next, you pull back, taking out most of your shaft before thrusting it back in with an audible slap as your hips meet hers, then keep going in a fast rhythm. The sexy Viking pants and gasps in lust, gripping the furs under her tightly to hold on to something.";
		say "     It feels absolutely amazing to have her warm and tight passage stretched around your manhood as you pound the Nordic warrior-woman's pussy. For a while, anything but the wild and urgent sex you have with her is forgotten, though you think you remember feeling someone - or rather more than one someone - touch your back and rub the curve of your ass, just watching not being enough for some of the aroused Vikings.";
		WaitLineBreak;
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster over time, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, the muscles in her vagina tightening their grip on your cock as the Viking orgasms. Not to lag too far behind, you abandon all restraint, grinding against her crotch urgently, and blow your load moments later. Pulse after pulse of your fertile seed shoot deep into the young woman's insides.";
		say "     Exhausted, you stay on top of her, still with your cock inside, and try to catch your breath. She strokes your back softly, then pulls your lips to hers, giving you a kiss. 'I am yours, husband,' she says, then lets her head sink down on the fur under her. Wanting to stay close with her but in a bit more comfortable a position, you pull out, then plop down on the furs beside her, holding your wife as you lie there, together in the blissful aftermath of sex.";
		WaitLineBreak;
		say "     ...and that is where you fell asleep too, only awakening several hours later beside Sonya, on a ship full of still-dozing or already awake and hung-over Vikings. Having to get back to your efforts of surviving in this new world, you find one man who isn't quite as bad off, then let him row you back to shore. As you leave the boat, he tells you how you can signal for a pickup when you want to return to the [bold type]Viking Ship[roman type].";
		now Viking Ship is known;
		if VikingPregnancy is 0:              [not already preggers]
			let VikingPregChance be a random number from 1 to 20;
			if VikingPregChance > 10:           [50% chance]
				now VikingPregCounter is 48;      [48 turns till birth]
				now VikingPregnancy is 1;[invisibly pregnant]
				if the player is not facially human or the player is not bodily human or the player is not skintone human:     [player a legendary monster]
					now VikingKidShape is bodyname of player;
				else:    [human player]
					now VikingKidShape is "Human";
	else if cunts of player > 0:            [female]
		say "     Accompanied by whistles and cheers from the drink Vikings, you quickly pull off your own clothes, letting them drop to the floor to lie with Sonya's, then step up to her, stroking the insides of her legs as you spread them a bit further. Your by now also pretty moist pussy rubs against her pubic mound as you lean over her and cup her breasts, taking one nipple, then the other into your mouth to gently suck on them. Then she pulls your head up to hers for a quick kiss, followed by a moaned 'Fuck me - now!' She feels around between the furs for a moment, then pulls the green dildo you two used before out from under one and presses it in your hand.";
		WaitLineBreak;
		say "     Who could resist their wife making such a demand - it's a matter of moments to put the double-headed dildo to its intended use, sliding its firm but flexible shape into your own sex, then guiding it with your hand so you can penetrate Sonya with it. Holding on to the rubber sex toy when you pull back, you can fuck each other, in a fashion, stimulating both of you as your hips thrust forward as if you were a man. While you are grinding against each other at the hips, Sonya grips the furs under her tightly to have something to hold onto in her lust.";
		say "     She starts moaning 'Harder, harder!', her legs wrapping around your hips to make you push the dildo deeper into her vagina. Taking up sliding it out then pounding deep into her again, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. Her arms wrap around your upper body, pulling you fully on top of her as she seeks your lips with hers, hungrily making out with you. For a while, anything but the wild and urgent sex you have with her is forgotten, though you think you remember feeling someone - or rather more than one someone - touch your back and rub the curve of your ass, just watching not being enough for some of the aroused Vikings.";
		WaitLineBreak;
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster over time, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo connecting you. Not to lag too far behind, you push the sex toy deeper into yourself, rubbing it against your inner walls until you reach your peak a moment later. A trickle of your femcum runs down over the sex toy, to drip down to soak into the spread-out furs with your partner's.";
		say "     Exhausted, you stay on top of her, the dildo connecting you, and try to catch your breath. She strokes your back softly, then pulls your lips to hers, giving you a kiss. 'I am yours, my wife,' she says, then lets her head sink down on the fur under her. Wanting to stay close with her but in a bit more comfortable a position, you pull the dildo out and drop it on the pile of your clothes, then plop down on the furs beside her, holding your wife as you lie there, together in the blissful aftermath of sex.";
		WaitLineBreak;
		say "     ...and that is where you fell asleep too, only awakening several hours later beside Sonya, on a ship full of still-dozing or already awake and hung-over Vikings. Having to get back to your efforts of surviving in this new world, you find one man who isn't quite as bad off, then let him row you back to shore. As you leave the boat, he tells you how you can signal for a pickup when you want to return to the [bold type]Viking Ship[roman type].";
	else:                                   [neuter]
		say "     Accompanied by whistles and cheers from the drink Vikings, you quickly pull off your own clothes, letting them drop to the floor to lie with Sonya's, then step up to her, stroking the insides of her legs as you spread them a bit further. Your by now also pretty moist pussy rubs against her pubic mound as you lean over her and cup her breasts, taking one nipple, then the other into your mouth to gently suck on them. Then she pulls your head up to hers for a quick kiss, followed by a moaned 'Fuck me - now!' She feels around between the furs for a moment, then pulls the green dildo you two used before out from under one and presses it in your hand.";
		WaitLineBreak;
		say "     Who could resist their wife making such a demand - it's a matter of moments to put the double-headed dildo to its intended use, guiding its firm but flexible shape in between Sonya's moist and swollen pussy lips, penetrating her body with it. You slowly fuck Sonya while your other hand explores her body, stroking over soft skin and fondling her breasts. With her writhing in pleasure under your ministrations, there soon is a gasp of 'Kiss me', and you eagerly comply, moving up on top of her and finding her lips with yours. It feels amazing to be so intimately close to her, and making out as you fuck her with a dildo.";
		say "     Before long, Sonya moans 'Harder, harder!' her arms pulling you tight against her. Taking up the speed of your thrusts into her, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. It's great fun to rub her most sensitive spots and make her squeal in delight. For a while, anything but making out, touching and fucking is forgotten, though you think you remember feeling someone - or rather more than one someone - touch your back and rub the curve of your ass, just watching not being enough for some of the aroused Vikings.";
		WaitLineBreak;
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster over time, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo in your hand as her inner muscles grip it. A trickle of her femcum runs down over the sex toy, to drip down and soak into the spread-out furs.";
		say "     Happy in shared pleasure, you stay on top of her, still holding the dildo in your hand. She strokes your back softly, then pulls your lips to hers, giving you a kiss. 'I am yours, my love,' she says, then lets her head sink down on the fur under her. Wanting to stay close with her but in a bit more comfortable a position, you pull the dildo out and drop it on the pile of your clothes, then plop down on the furs beside her, holding your wife as you lie there, together in the blissful aftermath of sex.";
		WaitLineBreak;
		say "     ...and that is where you fell asleep too, only awakening several hours later beside Sonya, on a ship full of still-dozing or already awake and hung-over Vikings. Having to get back to your efforts of surviving in this new world, you find one man who isn't quite as bad off, then let him row you back to shore. As you leave the boat, he tells you how you can signal for a pickup when you want to return to the [bold type]Viking Ship[roman type].";

Section 4 - Viking Ship

Viking Ship is a room. It is a fasttravel. Viking Ship is private.
The description of Viking Ship is "[VShipDesc]".

to say VShipDesc:
	if daytimer is day:
		say "     You're on the deck of a large sailing vessel, crewed by about forty people - Vikings, to be specific, looking pretty alike to each other with their pale, Nordic skins and blond hair. Many of them are men, though there are also some women around, who don't rank much below their fellows in muscles and toughness. The majority looks to be about 20-30, though there are some grey-beards and still beardless youngsters as well as teenage girls too.";
		say "     During the day as it is right now, many of the Vikings are on deck, preparing caught fish as food, practicing fighting, etc.";
	else:
		say "     You're on the deck of a large sailing vessel, crewed by about forty people - Vikings, to be specific, looking pretty alike to each other with their pale, Nordic skins and blond hair. Many of them are men, though there are also some women around, who don't rank much below their fellows in muscles and toughness. The majority looks to be about 20-30, though there are some grey-beards and still beardless youngsters as well as teenage girls too.";
		say "     As it is night currently, there are only few Vikings on deck, just a few watch-standers and a group of men playing dice in the bow.";

Instead of sniffing Viking Ship:
	say "     The air smells salty in your nose, no wonder - you're on a ship.";

instead of navigating Viking Ship:
	say "[NavCheck Viking Ship]";
	if NavCheckReturn is false, stop the action;
	move player to Viking Ship;
	say "     Making your way to the right spot on the beach, you signal the Viking ship out before the coast and soon get picked up by a muscled Viking who rows a boat to the beach and back.[line break]";
	if a random chance of 1 in 5 succeeds: [random event]
		if lastfuck of Sonya - turns < 10: [really horny]
			say "     Sonya is already waiting for you as you climb aboard, embracing you and planting a long kiss on your lips before you even have a chance to greet her. While her hands continue to move over your body, stroking and caressing, she eventually comes back up for air and pants, 'Welcome back, my love. I've missed you...' Even before she pushes a hand down the front of your pants a moment later, groping you with eager attention, it's more than obvious that your viking wife is more than just a little horny and pent up.";
			LineBreak;
			say "     [bold type]What now?[roman type][line break]";	
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Get it on with Sonya and take care of your woman's needs.";
			say "     ([link]N[as]n[end link]) - Put things off for now.";
			if player consents:
				LineBreak;
				say "[SonyaArrivalSexMenu]";
			else:
				LineBreak;
				say "     You joyfully greet Sonya in turn, then carefully explain that you're not quite in the mood right now. Never one to give up easily, your wife continues to grope your crotch for a moment then eventually gives up with a sigh and walks to the hatch below deck. 'I'll be in our cabin when you change your mind,' the young woman says with a needy edge in her voice, then adds a bit more assertively, 'Don't leave me waiting too long...' as she walks down the stairs.";
		else: [catch-all for the rest]
			say "     Sonya is already waiting for you as you climb aboard, embracing you and planting a long kiss on your lips before you even have a chance to greet her. Then she says, 'Welcome back, my love. Want to join me in our cabin?' With that, the beautiful woman goes to the hatch below deck, giving you a lusty grin before walking down the stairs.";

down from Viking Ship is Sonya's Cabin.
Sonya's Cabin is a room.
The description of Sonya's Cabin is "[SCDesc]".

to say SCDesc:
	say "     Sonya's cabin is relatively big - being the chieftain's daughter has its perks - and sports a bed big enough for two, covered in soft furs. You can see that it's bolted to the wooden floorboards, just like the two chests that stand against the opposite wall. Not much for loose clutter, these vikings - those three items are the only furniture in here. But then, that's just a sensible thing to do, avoiding things being thrown around in a storm... and also allowing to do all kinds of sexy stuff in the bed without it knocking against the neighbouring cabin wall.";

instead of going down from Viking Ship:
	say "     Going to the door leading below-deck, you climb down a steep set of stairs, then make your way to the cabin in which your viking wife awaits you.";
	LineBreak;
	if VikingPregnancy is 4:
		if a random chance of 1 in 2 succeeds:  [kid was a boy]
			if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
				say "     As you enter, you're greeted by Sonya, who says 'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] monster. Our child came while you were out - he's strong and healthy, a beautiful little boy. He looks a lot like you and will become a powerful warrior for sure, being half-monster like in the legends.' Biting her lip, she gives you a look, half challenging half needful. '[if VikingKidCounter > 4]Father is already joking that we'll have to build another ship soon if we keep going like this, but... [else]But [end if]having part of you inside me, and my body tells me I'm ready again already. How about taking me for a ride in the sheets?'";
			else:    [human player to be raided]
				say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] warrior. Our child came while you were out - he's strong and healthy, a beautiful little boy. He looks a lot like you and will become a powerful warrior for sure.' Biting her lip, she gives you a look, half challenging half needful. '[if VikingKidCounter > 4]Father is already joking that we'll have to build another ship soon if we keep going like this, but... [else]But [end if]I miss having part of you inside me, and my body tells me I'm ready again already. How about taking me for a ride in the sheets?'";
				if VikingKidGender is 0:
					now VikingKidGender is 1;
				else if VikingKidGender is 2:
					now VikingKidGender is 3;
		else:  [kid was a girl]
			if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
				say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] monster. Our child came while you were out - she's strong and healthy, a beautiful little girl. She looks a lot like you and will become a powerful warrior for sure, being half-monster like in the legends.' Biting her lip, she gives you a look, half challenging half needful. '[if VikingKidCounter > 4]Father is already joking that we'll have to build another ship soon if we keep going like this, but... [else]But [end if]I miss having part of you inside me, and my body tells me I'm ready again already. How about taking me for a ride in the sheets?'";
			else:    [human player to be raided]
				say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] warrior. Our child came while you were out - she's strong and healthy, a beautiful little girl. She looks a lot like you and will become a powerful warrior for sure.' Biting her lip, she gives you a look, half challenging half needful. '[if VikingKidCounter > 4]Father is already joking that we'll have to build another ship soon if we keep going like this, but... [else]But [end if]I miss having part of you inside me, and my body tells me I'm ready again already. How about taking me for a ride in the sheets?'";
		now VikingPregnancy is 0;  [told the player about his offspring, resetting to receptive state]
	move player to Sonya's Cabin;

Section 5 - NPC Sonya

[ VikingPregnancy - pregnancy progress variable                    ]
[  0: not preggers                                                 ]
[  1: male player knocked her up (invisible)                       ]
[  2: male player knocked her up (slightly visible)                ]
[  3: male player knocked her up (bulging belly)                   ]
[  4: after the kid's been born                                    ]

[ VikingKidCounter - number of children with the player            ]
[ VikingPregCounter - timer for the next birth (48h from start)    ]

[ Dexterity of Sonya - Sex with Females                            ]
[  0: none                                                         ]
[  1: once                                                         ]
[  2: twice - has gotten the dildo                                 ]

[
If you can add Sonya to the viking longboat, along with discussion topics and a sex scene, just fingers and body contact for women, the guy on top for the other gender. I'd like her to have some scaling conversation about how many children she and the PC have had, some conversations and pointers about interesting events at the Beach for the player to look for. I'm keeping this one simple for the time being.
]

Sonya is a woman. The HP of Sonya is normally 0.
Sonya is in Sonya's Cabin.
The description of Sonya is "[SonyaDesc]".
The conversation of Sonya is { "Mew!" }.

instead of sniffing Sonya:
	say "Sonya has a pleasant feminine smell.";

to say SonyaDesc:
	if debugactive is 1:
		say "DEBUG -> VIKINGRELATIONSHIP: [VikingRelationship], PREGTIMER: [VikingPregCounter], KIDS: [VikingKidCounter], PREG VISIBILITY: [VikingPregnancy] <- DEBUG[line break]";
	if (VikingRelationship < 20):   [not yet married]
		say "ERROR-Sonya-020A: She should not be here to look at yet, as her relationship value is [VikingRelationship]. Please report this.";
	else if (VikingRelationship > 99):
		say "ERROR-Sonya-100A: She should no longer be in the game, the player having refused her father's challenge.";
	else:
		say "     Sonya Frithjofsdotter is a very attractive blond woman with shoulder-long golden-blond hair. She is dressed in fur-rimmed boots, a comfortable set of leather pants and a woolen tunic pulled tight with a belt. Everything about her screams warrior, from her lithe and muscled shape to simply the way she stands, a confident look in her eyes that says she can take anyone in a fight - well, except you, the [if cunts of player > 0 and cocks of player is 0]wife[else]husband[end if] she adores. ";
		if VikingPregnancy is 1:
			say "There is a kind of special glow about her that tells you she's expecting a child, thanks to your sperm's virility.";
		else if VikingPregnancy is 2:
			say "A slight bulge of her stomach shows the first visible proof of her pregnancy and tells you that your child is developing well.";
		else if VikingPregnancy is 3:
			say "She is quite obviously pregnant, with a bulging belly showing proof of your sperm's virility.";
		else:
			LineBreak;
		say "     As Sonya notices your intense gaze upon her, she walks up to you and playfully pulls you close, meeting your lips to share a loving kiss.";

instead of conversing the Sonya:
	if (VikingRelationship < 20):   [not yet married]
		say "ERROR-Sonya-020A: She should not be here to look at yet, as her relationship value is [VikingRelationship]. Please report this.";
	else if (VikingRelationship > 99):
		say "ERROR-Sonya-100A: She should no longer be in the game, the player having refused her father's challenge.";
	else:
		if the player is not facially human or the player is not bodily human or the player is not skintone human:
			say "     Seeing that you want to talk to her, Sonya smiles at you and says 'Yes, my brave monster?'";
		else:
			say "     Seeing that you want to talk to her, Sonya smiles at you and says 'Yes, my outlander warrior?'";
		wait for any key;
		say "[SonyaTalkMenu]";

to say SonyaTalkMenu:
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Talk about the things happening along the coast";
	now sortorder entry is 1;
	now description entry is "Have her tell you what she's seen while exploring.";
	now toggle entry is SonyaTalk rule;
	choose a blank row in table of fucking options;
	if (VikingKidCounter is 1):
		choose a blank row in table of fucking options;
		now title entry is "Talk about your child";
		now sortorder entry is 2;
		now description entry is "Ask her about your offspring.";
		now toggle entry is SonyaTalk rule;
	else if (VikingKidCounter > 1):
		choose a blank row in table of fucking options;
		now title entry is "Talk about your children";
		now sortorder entry is 3;
		now description entry is "Ask her about your offspring.";
		now toggle entry is SonyaTalk rule;
[
	choose a blank row in table of fucking options;
	now title entry is "Talk about the Vikings";
	now sortorder entry is 3;
	now description entry is "Ask her about her family and Vikings in general.";
	now toggle entry is SonyaTalk rule;
]
	sort the table of fucking options in sortorder order;
	change the current menu to table of fucking options;
	carry out the displaying activity;
	clear the screen;

This is the SonyaTalk rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry][line break]";
	say "Is this what you want?";
	if player consents:
		decrease menu depth by 1;
		clear the screen;
		if (nam is "Talk about the things happening along the coast"):
			say "[SonyaTalk1]";
		if (nam is "Talk about your child"):
			say "[SonyaTalk2]";
		if (nam is "Talk about your children"):
			say "[SonyaTalk2]";
		if (nam is "Talk about the Vikings"):
			say "[SonyaTalk3]";
		wait for any key;

to say SonyaTalk1:
	let randomnumber be a random number from 1 to 10;
	if randomnumber is:
		-- 1:
			say "     Sonya says: 'Some of those blue winged beasts - gryphons - seem to be nesting up on the cliffs along the shore. Thankfully, they seem concentrate their activity on the city, but I've one or another of them come and go in the sky many times. So be careful when you're near the cliffs, my love.'";
		-- 2:
			say "     Sonya says: 'Those sand-men out there could be a real threat if they stopped just lounging around and wearing those garishly colored speedos that make em easy to spot. Some real fighter with that kind of camouflage on the beach could ambush anyone. And they're impervious to damage too - the last one that tried to touch me lost his forearm to my sword... until it just reformed out of the sand he was standing on.'";
		-- 3:
			say "     Sonya says: 'Some mighty sorcerer or god lives in a floating castle out in the ocean. It's tempting to raid such a place - imagine the treasures that must lie within. But there are strange, rubbery creatures roaming near it, and with such minions who knows how mighty their master is. For now, we're raiding the ripe pickings elsewhere along the coast. Most of those I see when scouting are far too busy fucking to pose any kind of real resistance.'";
		-- 4:
			say "     Sonya says: 'Beware the otters on the beach, my love. They may be relatively short and thin, but they're excellent swimmers. The little bastards overturned one of our rowing boats a while back, carrying off my cousin Thundalf... Even a young and strong warrior can fall prey to them if he gets swarmed.'";
		-- 5:
			say "     Sonya says: 'This is a strange land indeed. I've seen one of the mighty blackfish walk out of the ocean on legs. They've always managed to catch seals right up in the surf, but now even those who keep their distance can fall prey to them...'";
		-- 6:
			say "     Sonya says: 'Some shark pirates tried to attack out ship a while back. Hah, as if they were a match for real Viking raiders!'";
		-- 7:
			say "     Sonya says: 'Don't listen to the siren's songs if you are unlucky enough to encounter one of them. They're known to lull and lure men and women out into the sea. Many never return.'";
		-- 8:
			say "     Sonya says: 'There is a large group of creatures over where stairs lead up to the beach plaza, just lounging around, playing and often copulating. They seem peaceful, but I don't trust that impression to walk through between them. Better safe than sorry and swarmed by the whole group. There's enough other, more stealthy ways to enter the city - through the dunes or climbing up the lower sections of the cliffs for example.'";
		-- 9:
			say "     Sonya says: 'Legends tell of a strange tree whose fruit allows men to breathe water like a fish. With all the strange things going on in this land, it might just exist here...'";
		-- 10:
			say "     Sonya says in a thoughtful tone: 'Seeing many men, women and beasts enjoy themselves so wantonly all over this strange land made me curse myself for swearing my oath more than once. Even the strongest warrior finds lust difficult to resist... and it was hard, every day I was out there.' She smiles at you, embracing you and affectionately brushing her cheek against yours, then says 'Thank the gods I met you, my brave [if cunts of player > 0 and cocks of player is 0]wife[else]husband[end if]. All the waiting was worth it, for getting you in the end.'";

to say SonyaTalk2:
	if VikingKidCounter is 1:    [just one kid so far]
		if VikingKidGender is 0: [in case something with the gender determination went wrong]
			if a random chance of 1 in 2 succeeds:
				now VikingKidGender is 1;  [boy]
			else:
				now VikingKidGender is 2;  [girl]
		if VikingKidGender is 1: [a boy]
			say "     Sonya gives you a beaming smile as she tells you about your child, how quickly the little boy grows and how strong he's getting. [one of]He even already got his first wooden sword from one of his uncles and now is constantly swinging away with it.[or]He's apparently the new champion when it comes to wrestling with the other youngsters on the ship.[at random] Seems like your kid has a bright future as a warrior ahead of him.";
		else:  [a girl]
			say "     Sonya gives you a beaming smile as she tells you about your child, how quickly the little girl grows and how strong she's getting. There is a proud gleam in her eye as she tells you how [one of]she's roughhousing with the other youngsters on the ship - and that she broke the nose of one of them when he grabbed her butt.[or]she got a wooden sword from her uncle and is pretty good with that already, just like her mother.[or]she already learned how to swim very well.[at random]";
	else if VikingKidCounter > 1:  [more than one kid]
		let randomnumber be a random number from 1 to 3;  [in case something with the gender determination went wrong]
		if randomnumber is:
			-- 1:
				now VikingKidGender is 1;  [only boys]
			-- 2:
				now VikingKidGender is 2;  [only girls]
			-- 3:
				now VikingKidGender is 3;  [mixed bag]
		if VikingKidGender is 1: [only boys so far - and one of them]
			say "     Sonya gives you a beaming smile as she tells you about your [VikingKidCounter] children, picking out one that she's especially proud of - a boy who grows really quickly and is getting pretty strong for a kid. [one of]He even already got his first wooden sword from one of his uncles and now is constantly swinging away with it.[or]He's apparently the new champion when it comes to wrestling with the other youngsters on the ship.[at random] Seems like your kid has a bright future as a warrior ahead of him.";
		else if VikingKidGender is 2: [only girls so far - one of the girls]
			say "     Sonya gives you a beaming smile as she tells you about your [VikingKidCounter] children, picking out one that she's especially proud of - a girl who grows especially quickly and is getting pretty strong for a kid. There is a proud gleam in her eye as she tells you how your daughter [one of]is roughhousing with the other youngsters on the ship - and that she broke the nose of one of them when he grabbed her butt.[or]got a wooden sword from her uncle and is pretty good with that already, just like her mother.[or]already learned how to swim and dive.[at random]";
		else if VikingKidGender is 3: [mixed children]
			if a random chance of 1 in 2 succeeds:   [a boy]
				say "     Sonya gives you a beaming smile as she tells you about your [VikingKidCounter] children, picking out one that she's especially proud of - a boy who grows really quickly and is getting pretty strong for a kid. [one of]He even already got his first wooden sword from one of his uncles and now is constantly swinging away with it.[or]He's apparently the new champion when it comes to wrestling with the other youngsters on the ship.[at random] Seems like your kid has a bright future as a warrior ahead of him.";
			else:
				say "     Sonya gives you a beaming smile as she tells you about your [VikingKidCounter] children, picking out one that she's especially proud of - a girl who grows especially quickly and is getting pretty strong for a kid. There is a proud gleam in her eye as she tells you how your daughter [one of]is roughhousing with the other youngsters on the ship - and that she broke the nose of one of them when he grabbed her butt.[or]got a wooden sword from her uncle and is pretty good with that already, just like her mother.[or]already learned how to swim and dive.[at random]";

to say SonyaTalk3:
	let randomnumber be a random number from 1 to 9;
	if randomnumber is:
		-- 1:
			say "     ";

Instead of fucking the Sonya:
	if(lastfuck of Sonya - turns < 5):
		say "     Sonya puts a hand on your chest to hold you back, gently but firmly. With a little shake of her head, she says 'Sorry my love, I [one of]can't spend all my energy here in bed with you - even though I want to. We can't raid if no one scouts the coast and I've got to go soon[or]have got to clean my armor and sharpen my sword right now[or]need a bit of a break. You can really wear a woman out, you know[at random].' Giving you an affectionate kiss on the cheek, your viking wife then steps away from you.";
	else:
		say "[SonyaSexMenu]";

to say SonyaSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Fuck her pussy";
	now sortorder entry is 1;
	now description entry is "Have sex with your Viking wife";
	[]
	if cocks of player > 0 and cockname of player is listed in infections of Knotlist:
		choose a blank row in table of fucking options;
		now title entry is "Mount her doggy-style";
		now sortorder entry is 2;
		now description entry is "Have sex with your Viking wife, tying her with your knot";
	[]
	if cocks of player > 0 and cockname of player is listed in infections of felinelist:
		choose a blank row in table of fucking options;
		now title entry is "Let her ride your feline shaft";
		now sortorder entry is 3;
		now description entry is "Have sex with your Viking wife, letting her enjoy the spines of your cock";
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
				if (nam is "Fuck her pussy"):
					say "[SonyaSex1]";
				if (nam is "Mount her doggy-style"):
					say "[SonyaSex2]";
				if (nam is "Let her ride your feline shaft"):
					say "[SonyaSex3]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the sexy viking, shaking your head slightly as she gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say SonyaSex1:  [fucking her]
	if cocks of player > 0:
		say "     Wrapping an arm around your beautiful Viking wife, you pull her close and meet her lips with yours, sharing a hot kiss that leaves you wanting more. And Sonya is only too happy to give you that, making out with her husband while at the same time snaking a hand down your back to grab your butt. Some moments full of breathless kissing and fondling later, she pulls back from you, softly pushing against your chest as she tells you to wait there with a teasing smile on her lips. Then the blond goddess saunters over to her bed, swaying her hips seductively and giving you lusty looks over her shoulders. After quickly pulling off her boots, Sonya then gets on the bed, kneeling on its soft furs, and starts to undress in an incredibly hot little strip-show.";
		say "     Starting by sinuously moving her shoulders cupping those oh so well-rounded breasts through the fabric of her tunic, she then slowly undoes her belt, making you hard from just the anticipation of seeing her pale, perfect body. A moment later, her arms grab the lower edge of her tunic, pulling it over her head to be dropped to the side, revealing your wife's muscled, but still feminine curves. Now with her shapely breasts in full view and Sonya sticking out her chest while she rubs their nipples, your legs walk you closer almost on their own - and you can't resist but 'help her' a bit when she undoes her pants, pulling them down and off her legs, quickly followed by a silky soft pair of panties. Soon she is completely naked, lying on her side and showing off the pale-skinned perfection of her well-trained body[if VikingPregnancy is 2]and the slight curve of her belly that has your child growing inside of it[else if VikingPregnancy is 3]and the bulging curve of her belly that has your child growing inside of it[end if]. A beaming smile on her face, she says 'Your turn, my love.'";
		WaitLineBreak;
		say "     Under the lusty gaze of your Viking woman, you undress much more quickly, too horny and wound-up to give her such a nice show as she did herself. Sonya doesn't mind, though, as she's more than ready to get into the real fun herself now. Rising back up on her knees, she even reaches out to touch your naked body, then pulls you close for a hungry kiss with some urgency. A bit too quickly, actually, as you lose your balance and fall into bed with her, still eagerly kissing each other. Finding yourself lying on the eager young wife, your cock poking against her pubic mound, you're not one to waste such an opportunity and just move your hips a bit. The tip of your manhood brushes over her nether lips in no time at all and you thrust in, sinking deep into your Viking's moist vagina.";
		say "     As you bottom out inside her, Sonya wraps her legs around your hips, holding you tight against herself. Her arms stay around your chest likewise, to hold you close as she makes out with you. In between kisses she pants 'Fuck me hard!' and you comply eagerly, pulling out most of your shaft before plunging back in in a fast rhythm. The sexy Viking even pushes down her hips to meet each of your thrusts and pulls you down on her with her legs around your ass. It feels amazing to have her warm and tight passage stretched around your manhood as you are pounding the Nordic warrior-woman's pussy. For a while, anything but the wild and urgent sex you have with her is forgotten, the two of you filling the cabin with loud moans and gasps of pleasure...";
		WaitLineBreak;
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, the muscles in her vagina tightening their grip on your cock as the Viking orgasms. Not to lag too far behind, you abandon all restraint, grinding against her crotch urgently, and blow your load moments later. Pulse after pulse of your fertile seed shoot deep into the young woman's insides.";
		say "     Exhausted, you roll the two of you over to lie on your sides, still with your cock inside her, and try to catch your breath. Sonya strokes your chest softly and looks deep into your eyes, content in just lying there on the warm furs with you for a while, resting and holding one another. Then, she sighs 'I love you, my husband', rubbing your nose with hers before sitting up. After cleaning up a bit with a soft towel from one of the two chests against the wall, she gathers up her clothes and gets dressed.";
		if VikingPregnancy is 0:              [not already preggers]
			let VikingPregChance be a random number from 1 to 20;
			if VikingPregChance > 10:           [50% chance]
				now VikingPregCounter is 48;      [48 turns till birth]
				now VikingPregnancy is 1;[invisibly pregnant]
				if the player is not facially human or the player is not bodily human or the player is not skintone human:     [player a legendary monster]
					now VikingKidShape is bodyname of player;
				else:    [human player]
					now VikingKidShape is "Human";
	else if cunts of player > 0:            [female]
		say "     Wrapping an arm around your beautiful Viking wife, you pull her close and meet her lips with yours, sharing a hot kiss that leaves you wanting more. And Sonya is only too happy to give you that, making out with her wife while at the same time snaking a hand down your back to grab your butt. Some moments full of breathless kissing and fondling later, she pulls back from you, softly pushing against your chest as she tells you to wait there with a teasing smile on her lips. Then the blond goddess saunters over to her bed, swaying her hips seductively and giving you lusty looks over her shoulders. After quickly pulling off her boots, Sonya gets on the bed, kneeling on its soft furs, and starts to undress in an incredibly hot little strip-show.";
		say "     Starting by sinuously moving her shoulders cupping those oh so well-rounded breasts through the fabric of her tunic, she slowly undoes her belt, making you all wet from just the anticipation of seeing her pale, perfect body. A moment later, her arms grab the lower edge of her tunic, pulling it over her head to be dropped to the side, revealing your wife's muscled, but still feminine curves. Now with her shapely breasts in full view and Sonya sticking out her chest while she rubs their nipples, your legs walk you closer almost on their own - and you can't resist but 'help her' a bit when she undoes her pants, pulling them down and off her legs, quickly followed by a silky soft pair of panties. Soon she is completely naked, lying on her side and showing off the pale-skinned perfection of her well-trained body[if VikingPregnancy is 2]and the slight curve of her belly that has your child growing inside of it[else if VikingPregnancy is 3]and the bulging curve of her belly that has your child growing inside of it[end if]. A beaming smile on her face, she says 'Your turn, my love.'";
		WaitLineBreak;
		say "     Under the lusty gaze of your Viking woman, you undress much more quickly, too horny and wound-up to give her such a nice show as she did herself. Sonya doesn't mind, though, as she's more than ready to get into the real fun herself now. Rising back up on her knees, she even reaches out to touch your naked body, then pulls you close for a hungry kiss with some urgency. A bit too quickly, actually, as you lose your balance and fall into bed with her, still eagerly kissing each other. With you lying on top of her and just a bit distracted by Sonya's breasts rubbing against your chest, the Viking woman inconspicuously reaches over to feel between the soft furs on the bed, pulling out a long green dildo a moment later. It's a matter of moments to put the double-headed sex toy to its intended use, connecting you two pussy to pussy.";
		say "     Holding on to the rubber dick when you pull back, you can fuck each other, in a fashion. As you are grinding against each other at the hips, Sonya's hands roam over your body, stroking and touching you. It feels amazing to be so intimately close to her, and feeling her movements through the rubber cock you two share. Soon, Sonya moans 'Harder, harder!', her legs wrapping around your hips to make you push the dildo even deeper into her vagina. Taking up sliding it out then pounding deep into her again, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. Her arms wrap around your upper body, pulling you fully on top of her as she seeks your lips with hers, hungrily making out with you. For a while, anything but the wild and urgent sex you have with her is forgotten, the two of you filling the cabin with loud moans and gasps of pleasure...";
		WaitLineBreak;
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo connecting you. Not to lag too far behind, you push the sex toy deeper into yourself, rubbing it against your inner walls until you reach your peak a moment later. A trickle of your femcum runs down over the sex toy, to drip down to soak into the furs under you.";
		say "     Exhausted, you roll the two of you over to lie on your sides, the dildo still connecting you, and try to catch your breath. Sonya strokes your chest softly and looks deep into your eyes, content in just lying there on the warm furs with you for a while, resting and holding one another. Then, she sighs 'I love you, my wife', rubbing your nose with hers before sitting up. After cleaning up a bit with a soft towel from one of the two chests against the wall, she gathers up her clothes and gets dressed.";
	else:                                   [neuter]
		say "     Wrapping an arm around your beautiful Viking wife, you pull her close and meet her lips with yours, sharing a hot kiss that leaves you wanting more. And Sonya is only too happy to give you that, making out with her wife while at the same time snaking a hand down your back to grab your butt. Some moments full of breathless kissing and fondling later, she pulls back from you, softly pushing against your chest as she tells you to wait there with a teasing smile on her lips. Then the blond goddess saunters over to her bed, swaying her hips seductively and giving you lusty looks over her shoulders. After quickly pulling off her boots, Sonya gets on the bed, kneeling on its soft furs, and starts to undress in an incredibly hot little strip-show.";
		say "     Starting by sinuously moving her shoulders cupping those oh so well-rounded breasts through the fabric of her tunic, she slowly undoes her belt, making you all tingly from just the anticipation of seeing her pale, perfect body. A moment later, her arms grab the lower edge of her tunic, pulling it over her head to be dropped to the side, revealing your wife's muscled, but still feminine curves. Now with her shapely breasts in full view and Sonya sticking out her chest while she rubs their nipples, your legs walk you closer almost on their own - and you can't resist but 'help her' a bit when she undoes her pants, pulling them down and off her legs, quickly followed by a silky soft pair of panties. Soon she is completely naked, lying on her side and showing off the pale-skinned perfection of her well-trained body[if VikingPregnancy is 2]and the slight curve of her belly that has your child growing inside of it[else if VikingPregnancy is 3]and the bulging curve of her belly that has your child growing inside of it[end if]. A beaming smile on her face, she says 'Your turn, my love.'";
		WaitLineBreak;
		say "     Under the lusty gaze of your Viking woman, you undress much more quickly, too horny and wound-up to give her such a nice show as she did herself. Sonya doesn't mind, though, as she's more than ready to get into the real fun herself now. Rising back up on her knees, she even reaches out to touch your naked body, then pulls you close for a hungry kiss with some urgency. A bit too quickly, actually, as you lose your balance and fall into bed with her, still eagerly kissing each other. With you lying on top of her and just a bit distracted by Sonya's breasts rubbing against your chest, the Viking woman inconspicuously reaches over to feel between the soft furs on the bed, pulling out a long green dildo a moment later. It's a matter of moments to put the double-headed dildo back to its intended use, sliding in and out of your partner as you guide it with your hand.";
		say "     You slowly fuck Sonya while your other hand explores her body, stroking over soft skin and fondling her breasts. With her writhing in pleasure under your ministrations, there soon is a gasp of 'Kiss me', and you eagerly comply, moving up on top of her and finding her lips with yours. It feels amazing to be so intimately close to her, and making out as you fuck her with a dildo. Before long, Sonya moans 'Harder, harder!' her arms pulling you tight against her. Taking up the speed of your thrusts into her, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. It's great fun finding out what she likes best and how you can make her squeal in delight. For a while, anything but making out, touching and fucking is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
		WaitLineBreak;
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo in your hand as her inner muscles grip it. A trickle of her femcum runs down over the sex toy, to soak into the furs under you.";
		say "     Exhausted, you roll the two of you over to lie on your sides, the dildo still connecting you, and try to catch your breath. Sonya strokes your chest softly and looks deep into your eyes, content in just lying there on the warm furs with you for a while, resting and holding one another. Then, she sighs 'I love you, my wife', rubbing your nose with hers before sitting up. After cleaning up a bit with a soft towel from one of the two chests against the wall, she gathers up her clothes and gets dressed.";
	now lastfuck of Sonya is turns;

to say SonyaSex2:  [doggy-style]
	say "     Wrapping an arm around your beautiful Viking wife, you pull her close and meet her lips with yours, sharing a hot kiss that leaves you wanting more. And Sonya is only too happy to give you that, making out with her husband while at the same time snaking a hand down your back to grab your butt. Some moments full of breathless kissing and fondling later, she pulls back from you, softly pushing against your chest as she tells you to wait there with a teasing smile on her lips. Then the blond goddess saunters over to her bed, swaying her hips seductively and giving you lusty looks over her shoulders. After quickly pulling off her boots, Sonya gets on the bed, kneeling on its soft furs, and starts to undress in an incredibly hot little strip-show.";
	say "     Starting by sinuously moving her shoulders cupping those oh so well-rounded breasts through the fabric of her tunic, she slowly undoes her belt, making you hard from just the anticipation of seeing her pale, perfect body. A moment later, her arms grab the lower edge of her tunic, pulling it over her head to be dropped to the side, revealing your wife's muscled, but still feminine curves. Now with her shapely breasts in full view and Sonya sticking out her chest while she rubs their nipples, your legs walk you closer almost on their own - and you can't resist but 'help her' a bit when she undoes her pants, pulling them down and off her legs, quickly followed by a silky soft pair of panties. Soon she is completely naked, lying on her side and showing off the pale-skinned perfection of her well-trained body[if VikingPregnancy is 2]and the slight curve of her belly that has your child growing inside of it[else if VikingPregnancy is 3]and the bulging curve of her belly that has your child growing inside of it[end if]. A beaming smile on her face, she says 'Your turn, my love.'";
	WaitLineBreak;
	say "     Under the lusty gaze of your Viking woman, you undress much more quickly, too horny and wound-up to give her such a nice show as she did herself. Sonya doesn't mind, though, as she's more than ready to get into the real fun herself now. Rising back up on her knees, she then reaches out to touch your rock-hard manhood, feeling its pointy end before letting her hand wander up the shaft and gripping the yet small and un-swollen bulge of your knot. Sonya's moans of anticipation join your own at getting your cock stroked and rubbed, and she continues to say in a husky voice, 'I want you to take me like the sexy beast you are, husband. Mount your woman and breed her like a bitch!' That said, the beautiful young woman, moves to kneel on all fours, arching her back with her legs spread a bit to provide a very enticing view of her up-turned butt and wet pussy.";
	say "     You can't help but follow your libido's urgent demands of taking her without delay - lining up the tip of your [cock of player] cock with the viking woman's sex and starting right away with a hard thrust, making Sonya grip the furs on her bed with both hands as she howls in lust and fulfilled need. Horny as you are, you just keep going in the same pace, sliding deeper in a fast and fluid move until the bulge of your knot is touching her nether lips. With a growl that is immediately joined by an aroused gasp of your wife, you give another sharp thrust that pops the last bit of your manhood into Sonya's pussy. After giving her a second to simply enjoy the full feeling such a nonhuman cock brings, you then pull back until the knot comes out again with a wet little slurp and start fucking the sexy woman doggy-style.";
	WaitLineBreak;
	say "     As you pump in and out, you play a bit at drawing moans and gasps from your wife by switching your moves up a bit - mostly just letting your knot brush against her nether lips before pulling back, but sometimes suddenly following up with another quick hump that pops it in and out again - or even simply hammering all of your manhood into her with one quick thrust. In between gasps and moans, Sonya manages to bring out, 'Yeah baby! Unngh! Harder! Make the ship rock with your power!' Eagerly complying with such a sexy demand, you pull out most of your shaft before plunging back in all the way... which might not make the viking vessel move, but definitively tells everyone on board that you and your wife are going at it with full force, as the Nordic warrior-woman howls in lust at each new thrust. It simply feels amazing to have her warm and tight passage stretched around your manhood as you pound into Sonya, and for a while, anything but the wild and urgent sex you have with her is forgotten...";
	say "     As much as you wish this could last forever, there are limits to everything. A certain urgency becomes audible in Sonya's aroused shouts and they become faster and somewhat breathless, then she suddenly rocks back hard against you and shouts 'I'm coming!' You can feel the young woman's whole body shuddering under yours, the muscles in her vagina tightening their grip on your cock as the Viking orgasms. In between the sensations of her wet passage milking your cock a bit and the feeling of contentment at bringing your wife to a screaming orgasm, you're not too far behind and feel your knot expand to its full size moments later, locking the two of you together. Pulse after pulse of your fertile seed shoots deep into the young woman's insides, making her your well-bred bitch.";
	WaitLineBreak;
	say "     Exhausted, you move to let the two of you sink down on your sides, still with your cock inside her, and try to catch your breath. Sonya reaches back to stroke your side softly, then pulls your arm around her, giving you a little kiss on the hand before letting it rest against her chest. For a while, the two of you just lie there, content in simply enjoying the warm furs on the bed and holding one another. Then eventually, after your knot has done its duty of ensuring that the young woman's womb has had a good long time filled to the brink with your seed, your cock gets soft enough to slip out again, together with a little gush of cum to run down Sonya's legs. She reaches down to feel her wet pussy lips and your cum-dripping member, then says a moment later, 'I love you, my husband - but we can't lie around all day' After rubbing your nose with hers, she gives a little sigh and sits up, then proceeds to clean up a bit with a soft towel from one of the two chests against the wall. Finally, the sexy warrior-woman gathers up her clothes and gets dressed, though not without showing off a bit, which you of course watch with eager eyes from the bed.";
	if VikingPregnancy is 0:              [not already preggers]
		let VikingPregChance be a random number from 1 to 20;
		if VikingPregChance > 10:           [50% chance]
			now VikingPregCounter is 48;      [48 turns till birth]
			now VikingPregnancy is 1;[invisibly pregnant]
			if the player is not facially human or the player is not bodily human or the player is not skintone human:     [player a legendary monster]
				now VikingKidShape is bodyname of player;
			else:    [human player]
				now VikingKidShape is "Human";
	now lastfuck of Sonya is turns;

to say SonyaSex3:  [feline spines]
	say "     Wrapping an arm around your beautiful Viking wife, you pull her close and meet her lips with yours, sharing a hot kiss that leaves you wanting more. And Sonya is only too happy to give you that, making out with her husband while at the same time snaking a hand down your back to grab your butt. Some moments full of breathless kissing and fondling later, she pulls back from you, softly pushing against your chest as she tells you to wait there with a teasing smile on her lips. Then the blond goddess saunters over to her bed, swaying her hips seductively and giving you lusty looks over her shoulders. After quickly pulling off her boots, Sonya gets on the bed, kneeling on its soft furs, and starts to undress in an incredibly hot little strip-show.";
	say "     Starting by sinuously moving her shoulders cupping those oh so well-rounded breasts through the fabric of her tunic, she slowly undoes her belt, making you hard from just the anticipation of seeing her pale, perfect body. A moment later, her arms grab the lower edge of her tunic, pulling it over her head to be dropped to the side, revealing your wife's muscled, but still feminine curves. Now with her shapely breasts in full view and Sonya sticking out her chest while she rubs their nipples, your legs walk you closer almost on their own - and you can't resist but 'help her' a bit when she undoes her pants, pulling them down and off her legs, quickly followed by a silky soft pair of panties. Soon she is completely naked, lying on her side and showing off the pale-skinned perfection of her well-trained body[if VikingPregnancy is 2]and the slight curve of her belly that has your child growing inside of it[else if VikingPregnancy is 3]and the bulging curve of her belly that has your child growing inside of it[end if]. A beaming smile on her face, she says 'Your turn, my love.'";
	WaitLineBreak;
	say "     Under the lusty gaze of your Viking woman, you undress much more quickly, too horny and wound-up to give her such a nice show as she did herself. Sonya doesn't mind, though, as she's more than ready to get into the real fun herself now. Rising back up on her knees, she then reaches out to touch your rock-hard manhood, feeling its pointy end before letting her hand wander up the shaft and brushing over the soft spines along its length. Sonya's moans of anticipation join your own at getting your cock stroked and rubbed, and she continues to say in a husky voice, 'I want to enjoy these sexy nubs you have to their fullest, my husband. Please let me ride your manhood!' You're more than willing to let yourself be pushed over, flopping down on your back with your hard cock standing straight up like a flagpole. Sonya then moves to kneel over you, looking down with pure lust in her eyes. After stroking her own breasts to give you a little show, she then spreads her nether lips with two fingers, bracing herself with the other hand on your chest as she starts to lower her hips.";
	say "     The moment the tip of your manhood nudges against Sonya's puffy pussy lips, you can't help but follow your libido's urgent demand for action and thrust upwards hard with your hips, sinking more than half your cock into her in one stroke. Your sexy Viking's aroused gasp at the sudden penetration then escalates into a full-throated howl as the spines of your cock rake softly against her inner walls, creating powerful sensations much unlike what a human woman usually experiences. Though maybe it's not so unusual anymore these days - with all the interspecies mating going on right now. No matter what, the two of you enjoyed it quite a bit, and as your cock slips out of Sonya again to land on your stomach with a little slap, Sonya leans over you to give you a hungry kiss. Even as you continue to make out for a bit longer after that, her hand already moves back down between your bodies, taking hold of your erection and lining it up with her moist and ready sex.";
	WaitLineBreak;
	say "     Lowering her hips towards your crotch, the sexy viking sinks herself back down on the hard pole of your erection, gasping softly as it fills her more and more, then giving a lustful groan as she slowly pulls herself up again afterwards. There is something very satisfying about feeling the spines on your feline cock slide against her inner walls, even more so because she experiments with tilting her hips a bit this way or that, then rocks a little up and down as she finds an especially good spot. Continuing to ride your manhood up and down and enjoying the sensations the two of you share in the progress, Sonya fucks herself for quite a while on your cock, driving your arousal to new heights - so much so, that the basic urges to mount and breed an available female overwhelms all other concerns in your mind, making you grab hold of the viking warrior, clutching her to your chest as you roll over, putting her under you with her back on the bed's furs.";
	say "     Grunting loudly from the rut you find yourself, you pull out almost all the way in one fast stroke, making Sonya's eyes roll back and her howl in pleasure, then you hammer all of your cock right back in hard. As you bottom out inside her, the horny viking wraps her legs around your hips, pulling you even closer and animating you to really grind your hips against hers. The young woman's arms pull on your head at the same time, drawing you down so she can make out with you. In between kisses, she pants, 'Harder. Harder!' and you comply eagerly, pulling out all the stops as you pound into her with full force and pull back just as quickly, scratching the inner walls of her pussy with your soft spines. It really feels amazing to have her warm and tight passage stretched around your manhood as you are pounding the Nordic warrior-woman's pussy. For a while, anything but the wild and urgent sex you have with her is forgotten, the two of you filling the cabin with loud moans and gasps of pleasure...";
	WaitLineBreak;
	say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, the muscles in her vagina tightening their grip on your cock as the Viking orgasms. Not to lag too far behind, you abandon all restraint, grinding against her crotch urgently, and blow your load moments later. Pulse after pulse of your fertile seed shoot deep into the young woman's insides.";
	say "     Exhausted, you roll the two of you over to lie on your sides, still with your cock inside her, and try to catch your breath. Sonya strokes your chest softly and looks deep into your eyes, content in just lying there on the warm furs with you for a while, resting and holding one another. Then, she sighs 'I love you, my husband', rubbing your nose with hers before sitting up. After cleaning up a bit with a soft towel from one of the two chests against the wall, she gathers up her clothes and gets dressed.";
	if VikingPregnancy is 0:              [not already preggers]
		let VikingPregChance be a random number from 1 to 20;
		if VikingPregChance > 5:           [75% chance]
			now VikingPregCounter is 48;      [48 turns till birth]
			now VikingPregnancy is 1;[invisibly pregnant]
			if the player is not facially human or the player is not bodily human or the player is not skintone human:     [player a legendary monster]
				now VikingKidShape is bodyname of player;
			else:    [human player]
				now VikingKidShape is "Human";
	now lastfuck of Sonya is turns;

to say SonyaArrivalSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Fuck right now, in public";
	now sortorder entry is 1;
	now description entry is "Take Sonya right here and now, in full view of everyone on deck of the ship";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Go for a refreshing swim";
	now sortorder entry is 2;
	now description entry is "Go swimming with Sonya, and spend some intimate moments over at some rocks poking out of the water nearby";
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
				if nam is "Fuck right now, in public":
					say "[SonyaArrivalSex1]";
				if nam is "Go for a refreshing swim":
					say "[SonyaArrivalSex2]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the beautiful viking, shaking your head slightly as she gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say SonyaArrivalSex1:
	if cocks of player > 0:                      [male+herm]
		say "     Eager to tend to the needs of your beautiful[if VikingPregnancy is 2 or VikingPregnancy is 3] and pregnant[end if] wife, you undo the front of your pants and just let them drop. Your willingness for instant action puts a beaming smile on the blond Viking's face, and you barely think about the fact that you're openly showing your quickly hardening cock - with Sonya's hand wrapped around it - to anyone on deck who cares to look... meaning pretty much everyone except a few kids who are far too young to have developed any interest in such matters. As your wife's people are well-used to living in tight confines on a ship, nakedness and even public sex aren't really taboos - so all that happens is a few wolf whistles and several people casually sauntering closer to get a better look.";
		say "     As you quickly pull off the rest of your clothes, just dropping them where you stand, as is Sonya doing herself right now, you hear two young men talking quietly nearby. 'Hot - he's gonna fuck her right out here on deck,' one of them says, answered by, 'Of course he is - what sane man would hesitate even a second to hump a woman like Sonya all day. I wouldn't stop, ever, if she put out for me.' There is a short chuckle, then the first viking says in a somewhat mocking tone, 'Getting a bit envious since you couldn't win her hand in marriage?' His buddy gives him a friendly punch on the shoulder, then replies, 'At least I lasted longer than thirty seconds... unlike some people I could name.'";
		WaitLineBreak;
		say "     Your attention wanders from the young Viking's squabbling as Sonya drops the last piece of her clothing, now standing completely naked before you and taking a very enticing pose. A moment later, she saunters over to a large box of supplies that does double duty as a bench, cushioned with a thick piece of fur thrown over it. Sitting down, Sonya bares her wet pussy in a very inviting manner for you. Eager and horny, you step up to your wife, stroking the insides of her legs as you spread them a bit further. Your by now completely hard shaft comes to rest hotly against her pubic mound as you lean over her and cup her breasts, taking one nipple, then the other into your mouth to gently suck on them. Then she pulls your head up to hers for a quick kiss, followed by a moaned 'Fuck me - now!'";
		say "     Who could resist their wife making such a demand - instantly, your hand is at your cock, aiming it straight at the swollen pussy lips of your beautiful Viking woman. Moving forward, you slide into her, spreading the opening of her sex around your erect shaft. Helped along by her legs wrapping around your hips, pulling you closer, you quickly bottom out in her, eliciting a shared moan between the two of you (and a cheer from the small crowd of spectators) as your crotch touches hers. Next, you pull back, taking out most of your shaft before thrusting it back in with an audible slap as your hips meet hers, then keep going in a fast rhythm. The sexy Viking pants and gasps in lust, gripping the furs under her tightly to hold on to something.";
		say "     It feels absolutely amazing to have her warm and tight passage stretched around your manhood as you pound the Nordic warrior-woman's pussy. For a while, anything but the wild and urgent sex you have with her is forgotten, though you think you remember feeling someone - or rather more than one someone - touch your back and rub the curve of your ass, just watching not being enough for some of the aroused Vikings.";
		WaitLineBreak;
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster over time, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, the muscles in her vagina tightening their grip on your cock as the Viking orgasms. Not to lag too far behind, you abandon all restraint, grinding against her crotch urgently, and blow your load moments later. Pulse after pulse of your fertile seed shoot deep into the young woman's insides.";
		say "     Exhausted, you stay on top of her, still with your cock inside, and try to catch your breath. She strokes your back softly, then pulls your lips to hers, giving you a kiss. 'Well done, husband,' she says, then lets her head sink down on the fur under her. Wanting to stay close with her but in a bit more comfortable a position, you pull out, then plop down on the furs beside her, holding your wife as you lie there, together in the blissful aftermath of sex.";
		WaitLineBreak;
		say "     ...and that is where you fell asleep too, only awakening at least an hour later beside Sonya, covered in a bear's pelt that someone was nice enough to drape over you.";
		if VikingPregnancy is 0:              [not already preggers]
			let VikingPregChance be a random number from 1 to 20;
			if VikingPregChance > 10:           [50% chance]
				now VikingPregCounter is 48;      [48 turns till birth]
				now VikingPregnancy is 1;[invisibly pregnant]
				if the player is not facially human or the player is not bodily human or the player is not skintone human:     [player a legendary monster]
					now VikingKidShape is bodyname of player;
				else:    [human player]
					now VikingKidShape is "Human";
	else if cunts of player > 0:            [female]
		say "     Eager to tend to the needs of your beautiful[if VikingPregnancy is 2 or VikingPregnancy is 3] and pregnant[end if] wife, you undo the front of your pants and just let them drop. Your willingness for instant action puts a beaming smile on the blond Viking's face, and you barely think about the fact that you're openly showing your own moist pussy - with two of Sonya's fingers buried between the swollen nether lips and her thumb gently rubbing over the little button of your clit - to anyone on deck who cares to look... meaning pretty much everyone except a few kids who are far too young to have developed any interest in such matters. As your wife's people are well-used to living in tight confines on a ship, nakedness and even public sex aren't really taboos - so all that happens is a few wolf whistles and several people casually sauntering closer to get a better look.";
		say "     As you quickly pull off the rest of your clothes, just dropping them where you stand, as is Sonya doing herself right now, you hear two young men talking quietly nearby. 'Hot - two sexy babes gonna do each other right out here on deck,' one of them says, answered by, 'Of course they are - what sane person would hesitate even a second to enjoy themselves with a woman like Sonya. I wouldn't stop, ever, if she put out for me.' There is a short chuckle, then the first viking says in a somewhat mocking tone, 'Getting a bit envious since you couldn't win her hand in marriage?' His buddy gives him a friendly punch on the shoulder, then replies, 'At least I lasted longer than thirty seconds... unlike some people I could name.'";
		WaitLineBreak;
		say "     Your attention wanders from the young Viking's squabbling as Sonya drops the last piece of her clothing, now standing completely naked before you and taking a very enticing pose. A moment later, she saunters over to a large box of supplies that does double duty as a bench, cushioned with a thick piece of fur thrown over it. Sitting down, Sonya bares her wet pussy in a very inviting manner for you. Eager and horny, you step up to your wife, stroking the insides of her legs as you spread them a bit further and feast your eyes on the delicious view. Putting a hand between her legs to rub over Sonya's nether lips, you lean over the beautiful woman and cup her breasts, taking one nipple, then the other into your mouth to gently suck on them. A moment later, Sonya pulls your head up to hers for a quick kiss, followed by a moaned 'Climb on with me - I want to lick you!'";
		say "     Who could resist their wife making such a demand - it's a matter of moments for you to get on the fur-covered box yourself, getting into position on top of Sonya as she scoots up a bit. Now in a classic 69 pose, your head is right over Sonya's crotch - as is hers below yours, and she starts lapping your sex right away. Moaning in lust, you look down to see your wife eagerly servicing your pussy - as well as two young vikings from earlier, standing some short distance away and watching with attentive eyes. You can't help but smile at the thought of enjoying what they can never have, then lower your head and do just that, giving Sonya's pussy a good long lick before starting to nibble on her clit.";
		WaitLineBreak;
		say "     Wanting to really please your wife, you soon progress to using your fingers too, sliding first one of your digits deep into her and rubbing the sensitive passage. You can't help but thing that there is something very delicious about having this strong woman lying under you, shivering and panting helplessly as you touch her. This animates you to really put in some effort, teasing her first in one spot, then another, finding out what really gets her going. It's quite a lot of fun to learn that if you slide your finger in... just... like... so... and... then... do THIS - Sonya throws her head back moaning loudly as a mini-orgasm runs through her body.";
		say "     You keep going for a while like this, playing with Sonya's body as she plays with yours, making each other tremble, pant and gasp, before you finally go all out, intensifying your finger-work to get her to the climax that has been building all this time. The beautiful woman's moans get louder and more high-pitched as they come faster and faster, then she gives something halfway between a squeak and an aroused shout as the point of no return is reached. You can feel Sonya's breath hotly against your own pussy as she pants loudly and trembles all over in orgasm.";
		WaitLineBreak;
		say "     Head sinking back to rest on the furs below, Sonya regains her breath after a minute or two, then goes right back to lapping at your own private parts, down below. As hot and bothered as you are from all the fun you had with your wife, it doesn't take long before her nibbling at your clit allows you to reach a breathtaking climax, squirting femcum which she eagerly laps up.";
	else:                                   [neuter]
		say "     Eager to tend to the needs of your beautiful[if VikingPregnancy is 2 or VikingPregnancy is 3] and pregnant[end if] wife, you undo the front of your pants and just let them drop. Your willingness for instant action puts a beaming smile on the blond Viking's face, and you barely think about the fact that you're openly showing your naked, sexless crotch - with Sonya's fingers caressing its sensitive skin - to anyone on deck who cares to look... meaning pretty much everyone except a few kids who are far too young to have developed any interest in such matters. As your wife's people are well-used to living in tight confines on a ship, nakedness and even public sex aren't really taboos - so all that happens is a few wolf whistles and several people casually sauntering closer to get a better look.";
		say "     As you quickly pull off the rest of your clothes, just dropping them where you stand, as is Sonya doing herself right now, you hear two young men talking quietly nearby. 'Hot - sexy action with Sonya right out here on deck,' one of them says, answered by, 'Of course - what sane person would hesitate even a second to enjoy themselves with a woman like Sonya. I wouldn't stop, ever, if she put out for me.' There is a short chuckle, then the first viking says in a somewhat mocking tone, 'Getting a bit envious since you couldn't win her hand in marriage?' His buddy gives him a friendly punch on the shoulder, then replies, 'At least I lasted longer than thirty seconds... unlike some people I could name.'";
		WaitLineBreak;
		say "     Your attention wanders from the young Viking's squabbling as Sonya drops the last piece of her clothing, now standing completely naked before you and taking a very enticing pose. A moment later, she saunters over to a large box of supplies that does double duty as a bench, cushioned with a thick piece of fur thrown over it. Sitting down, Sonya bares her wet pussy in a very inviting manner for you. Eager and horny, you step up to your wife, stroking the insides of her legs as you spread them a bit further and feast your eyes on the delicious view. Putting a hand between her legs to rub over Sonya's nether lips, you lean over the beautiful woman and cup her breasts, taking one nipple, then the other into your mouth to gently suck on them. A moment later, Sonya pulls your head up to hers for a quick kiss, followed by a moaned 'Climb on with me - I want to lick you!'";
		say "     Who could resist their wife making such a demand - it's a matter of moments for you to get on the fur-covered box yourself, getting into position on top of Sonya as she scoots up a bit. Now in a classic 69 pose, your head is right over Sonya's crotch - as is hers below yours, and she starts lapping your crotch right away. Moaning in lust, you look down to see your wife eagerly servicing you - as well as two young vikings from earlier, standing some short distance away and watching with attentive eyes. You can't help but smile at the thought of enjoying what they can never have, then lower your head and do just that, giving Sonya's pussy a good long lick before starting to nibble on her clit.";
		WaitLineBreak;
		say "     Wanting to really please your wife, you soon progress to using your fingers too, sliding first one of your digits deep into her and rubbing the sensitive passage. You can't help but thing that there is something very delicious about having this strong woman lying under you, shivering and panting helplessly as you touch her. This animates you to really put in some effort, teasing her first in one spot, then another, finding out what really gets her going. It's quite a lot of fun to learn that if you slide your finger in... just... like... so... and... then... do THIS - Sonya throws her head back moaning loudly as a mini-orgasm runs through her body.";
		say "     You keep going for a while like this, playing with Sonya's body as she plays with yours, making each other tremble, pant and gasp, before you finally go all out, intensifying your finger-work to get her to the climax that has been building all this time. The beautiful woman's moans get louder and more high-pitched as they come faster and faster, then she gives something halfway between a squeak and an aroused shout as the point of no return is reached. You can feel Sonya's breath hotly against your own pussy as she pants loudly and trembles all over in orgasm.";
		WaitLineBreak;
		say "     Head sinking back to rest on the furs below, Sonya regains her breath after a minute or two, then goes right back to lapping at your own private parts, down below. As hot and bothered as you are from all the fun you had with your wife, it doesn't take long before her attention allows you to reach a breathtaking climax, trembling all over as your body reaches release.";
	now lastfuck of Sonya is turns;

to say SonyaArrivalSex2:
	if cocks of player > 0:                      [male+herm]
		say "     Eager to tend to the needs of your beautiful[if VikingPregnancy is 2 or VikingPregnancy is 3] and pregnant[end if] wife, but also wanting to make it a bit more interesting, you challenge the Viking beauty to a race for the rocks and tiny bit of beach sticking out of the sea not too far away. 'I accept, my husband,' the proud woman says, smiling as she then adds, 'And what will be my prize if I win?' while at the same time giving your erection a little squeeze. Leaning in to kiss her, you reply that there's sure to be something you'll both agree too and let your hand creep up her side to cup one of your wife's luscious breasts.";
		say "     After a second of just sharing a lusty grin with the beautiful woman, the two of you start to hurriedly strip, just tearing off your clothes and throwing them down on the wooden deck in full view of all the other vikings on board. But as your wife's people are well-used to living in tight confines on a ship, nakedness and even public sex aren't really taboos - so all that happens is a few wolf whistles and several people casually sauntering closer to get a better look. Sonya is the first to be completely naked, much to the enjoyment of several male viking teenagers who can't stop staring at her curvy form and spring very obvious boners. As you take off the last piece of clothing yourself, you stroke your cock demonstratively and give them a grin, silently bragging with the fact that you'll be enjoying yourself with Sonya soon enough.";
		WaitLineBreak;
		say "     Jumping into the gently sloshing waters of the ocean with your sexy wife by your side, the two of you immediately start tearing through the water, racing to the tiny bit of island not too far ahead. It really is a close thing, with Sonya pulling ahead a little at first, then having to slow down a bit again as not to wear herself out - well, or possibly your favorite viking is horny and aroused enough to throw the race and just wants to 'pay up' - with you mounting her all pumped up with adrenaline. No matter what, it is you who reaches the small piece of rock and sand first, joined a second later by the pale and beautiful woman.";
		say "     Pulling yourselves up onto the little sandbank on the current-protected side of the rocks, the two of you give each other some still a bit breathless kisses, then Sonya leans back, stretching out her shapely body in the shallow water. Lust flares brightly inside you as your eyes wander over your wife's naked form, the [if VikingPregnancy is 2 or VikingPregnancy is 3]life-promising bulge of her pregnant belly poking out of[else]flat and muscled abs of her raised chest still under[end if] the water, then the twin mounds of her amazing breasts standing out in the swaying water, pulling you into almost a trance with their firm curves and hard nipples. 'Claim your prize my husband - I'm all yours,' Sonya tells you with a purr, then spreads her legs a little more in obvious invitation.";
		WaitLineBreak;
		say "     You don't hesitate a moment longer after that and just do what instinct and arousal tell you to do - sliding smoothly through the water to get on top of the beautiful viking and planting a hungry kiss on her open lips while your hard cock rubs against the inside of her legs. Moving your hips a little bit, your erection then hits its mark, nudging apart Sonya's nether lips and sinking right into her ready and waiting pussy. The sexy viking moans into your mouth as you penetrate her fully, making a delightfully needy sound - which you draw from her again and again as you pull back and thrust, fucking your wife with all the stamina you can muster.";
		say "     What pants, moans and gasps the two of you share echo out over the water, drawing more than a few creatures near to investigate. In between pumping in and out of Sonya's tightly-gripping pussy and nuzzling her breasts, sucking the salty taste of the water from her nipples, you become aware of several heads popping out from underwater at the edge of your vision, marking the arrival of a number of new spectators. It's mostly aquatic anthros and ferals, but also one or two land-living creatures who happened to be near for a swim. You're pretty sure the anthro [one of]giraffe[or]tiger[or]zebra[or]beagle[or]German shepherd[or]lynx[or]panda[at random] over there won't be forgetting this trip to the beach anytime soon - not with how eagerly she watches and rubs her own breasts with both hands. There is even one especially brazen otter who simply climbs up on the rocks, finally coming to sit on top of one of the higher ones to have the best possible view.";
		WaitLineBreak;
		say "     So your little tryst at a not quite so lonely bunch of rocks turned out to be a very public affair - but you're pretty sure that Sonya gets off more than a little bit from the fact that so many people are watching... watching her strong and worthy husband mount her long and hard. There's a number of little glances she gives to the side, and you could swear the blond woman starts moaning specially loud as she does so, as if to show off how much she's enjoying herself. No matter what goes on around you, you're having a blast at fucking in this somewhat unusual location - and you can't help but feel a bit like the nanite apocalypse was... kinda worth it. Sure, human civilization is pretty fucked right now, but... how improbable would it have been to find yourself with a breathtakingly beautiful viking wife without it?";
		say "     Thrusting deep into Sonya's welcoming depths again and again, you soon feel the need to come rise up inside you and quickly bottom out in her one last time, grinding your hips against her crotch as you finally reach your climax. Your warm and creamy [cock of player] seed splashes against the Viking's cervix, then gets pushed through the ring muscle directly into her womb as you fill her up with more and more cum. While still panting hard as blast after blast of your seed shoots out, you slide a hand down where your hips meet and start to rub Sonya's little clit with eager attention, wanting to get her off right away too... and it doesn't take long at all, as wound up as your woman already is. Just moments later, Sonya gives a loud lust-filled shout and starts to writhe in your embrace, twitching and panting as she rides you - and your cock - to climax.";
		WaitLineBreak;
		say "     'That was... wow,' Sonya pants in a satisfied tone some short while later when you've both come off your orgasms, then continues, 'I love you, my husband - let's do this again sometime soon.' That said, the blond woman kisses you and gently slides off your still half-hard cock. Standing up in the shallow water, she then does a little spin that shows off her naked body to all the spectators - including the white trickle of your creamy cum down the inside of her legs. 'That's it for now,' she shouts, basking in the hoots and wolf-whistles she gets for a second before getting fully back in the water with you again and starting to swim back to the ship with you.";
		LineBreak;
		say "     As you move along and leave the watchers behind to get back to whatever they were doing before your little show, you notice two shapes glide through the water under you. A moment later, they surface in front of you, revealing themselves to be a pair of mer-people, with long fish's tails and fins as well as attractive human upper halves. They're male and female, with relatively similar features and long, brown hair - and you can see the flare of lust in their eyes. 'Hello there,' the mermaid says with a smile, then nods to Sonya and yourself before continuing, 'I'm Sylvie, and this is Kev. We watched your very nice performance back there and... would like to extend an invitation to share some good times.'";
		say "     Her companion speaks up after that, giving a charming smile and saying, 'We love having fun with other couples. Just think about what we could do together...' That said, both merfolk present themselves a bit, posing while they let their eyes wander over you - and they don't just have eyes for their opposite sex. You do notice Sylvie licking her lips as she glances at Sonya's breasts, while Kev shows an intrigued expression as he glances through the water at your own crotch. After a moment of mutual inspection, Sylvie says, 'We'll be in the area,' then nods towards the viking ship and continues, 'you've parked not far from where we live... so, if you want to have some fun, it shouldn't be hard to find us.' With that, the two of them give a wave and dive underwater, swimming away.";
		if VikingPregnancy is 0:              [not already preggers]
			let VikingPregChance be a random number from 1 to 20;
			if VikingPregChance > 10:           [50% chance]
				now VikingPregCounter is 48;      [48 turns till birth]
				now VikingPregnancy is 1;[invisibly pregnant]
				if the player is not facially human or the player is not bodily human or the player is not skintone human:     [player a legendary monster]
					now VikingKidShape is bodyname of player;
				else:    [human player]
					now VikingKidShape is "Human";
	else if cunts of player > 0:
		say "     Eager to tend to the needs of your beautiful[if VikingPregnancy is 2 or VikingPregnancy is 3] and pregnant[end if] wife, but also wanting to make it a bit more interesting, you challenge the Viking beauty to a race for the rocks and tiny bit of beach sticking out of the sea not too far away. 'I accept, my wife,' the proud woman says, smiling as she then adds, 'And what will be my prize if I win?' while at the same time rubbing the opening of your pussy with two fingers. Leaning in to kiss her, you reply that there's sure to be something you'll both agree too and let your hand creep up her side to cup one of your wife's luscious breasts.";
		say "     After a second of just sharing a lusty grin with the beautiful woman, the two of you start to hurriedly strip, just tearing off your clothes and throwing them down on the wooden deck in full view of all the other vikings on board. But as your wife's people are well-used to living in tight confines on a ship, nakedness and even public sex aren't really taboos - so all that happens is a few wolf whistles and several people casually sauntering closer to get a better look. Sonya is the first to be completely naked, much to the enjoyment of several male viking teenagers who can't stop staring at her curvy form and spring very obvious boners. As you take off the last piece of clothing yourself, you stroke your pussy demonstratively and give them a grin, silently bragging with the fact that you'll be enjoying yourself with Sonya soon enough.";
		WaitLineBreak;
		say "     Jumping into the gently sloshing waters of the ocean with your sexy wife by your side, the two of you immediately start tearing through the water, racing to the tiny bit of island not too far ahead. It really is a close thing, with Sonya pulling ahead a little at first, then having to slow down a bit again as not to wear herself out - well, or possibly your favorite viking is horny and aroused enough to throw the race and just wants to 'pay up'. No matter what, it is you who reaches the small piece of rock and sand first, joined a second later by the pale and beautiful woman.";
		say "     Pulling yourselves up onto the little sandbank on the current-protected side of the rocks, the two of you give each other some still a bit breathless kisses, then Sonya leans back, stretching out her shapely body in the shallow water. Lust flares brightly inside you as your eyes wander over your wife's naked form, the [if VikingPregnancy is 2 or VikingPregnancy is 3]life-promising bulge of her pregnant belly poking out of[else]flat and muscled abs of her raised chest still under[end if] the water, then the twin mounds of her amazing breasts standing out in the swaying water, pulling you into almost a trance with their firm curves and hard nipples. 'Claim your prize my wife - I'm all yours,' Sonya tells you with a purr, then spreads her legs a little more in obvious invitation.";
		WaitLineBreak;
		say "     You don't hesitate a moment longer after that and just do what instinct and arousal tell you to do - sliding smoothly through the water to get on top of the beautiful viking and planting a hungry kiss on her open lips while your hand explores between her legs. Feeling around a little bit, you find the soft folds of her waiting pussy, making her tremble in arousal as you rub over it. Stroking Sonya with your fingers, you pay special attention to her little button of a clit at the top and give it a gentle tease. The sexy viking moans into your mouth as you stimulate her at this sensitive spot, making a delightfully needy sound - which you draw from her again and again as you keep going, fingering your wife with eager care, then eventually bring your crotch against hers to rub your female parts together.";
		say "     What pants, moans and gasps the two of you share echo out over the water, drawing more than a few creatures near to investigate. In between grinding your sex against her own and nuzzling the viking woman's breasts, sucking the salty taste of the water from her nipples, you become aware of several heads popping out from underwater at the edge of your vision, marking the arrival of a number of new spectators. It's mostly aquatic anthros and ferals, but also one or two land-living creatures who happened to be near for a swim. You're pretty sure the anthro [one of]giraffe[or]tiger[or]zebra[or]beagle[or]German shepherd[or]lynx[or]panda[at random] over there won't be forgetting this trip to the beach anytime soon - not with how eagerly she watches and rubs her own breasts with both hands. There is even one especially brazen otter who simply climbs up on the rocks, finally coming to sit on top of one of the higher ones to have the best possible view.";
		WaitLineBreak;
		say "     So your little tryst at a not quite so lonely bunch of rocks turned out to be a very public affair - but you're pretty sure that Sonya gets off more than a little bit from the fact that so many people are watching... watching her strong and worthy wife give her so much pleasure. There's a number of little glances she gives to the side, and you could swear the blond woman starts moaning specially loud as she does so, as if to show off how much she's enjoying herself. No matter what goes on around you, you're having a blast at fucking in this somewhat unusual location - and you can't help but feel a bit like the nanite apocalypse was... kinda worth it. Sure, human civilization is pretty fucked right now, but... how improbable would it have been to find yourself with a breathtakingly beautiful viking wife without it?";
		say "     Grinding against Sonya's welcoming body again and again, you soon feel the need to come become stronger and stronger inside you and eventually just can't hold back anymore, shouting in lust as the last little touch of your clit drives you over the edge. Leaking femcum in the water to form a small cloud before it is washed away, you hold on to Sonya and give her a very satisfied kiss on the lips. While doing so, you also slide a hand down where your hips meet and start to rub Sonya's little clit with eager attention, wanting to get her off right away too... and it doesn't take long at all, as wound up as your woman already is. Just moments later, Sonya gives a loud lust-filled shout and starts to writhe in your embrace, twitching and panting as she joins you in climax.";
		WaitLineBreak;
		say "     'That was... wow,' Sonya pants in a satisfied tone some short while later when you've both come off your orgasms, then continues, 'I love you, my wife - let's do this again sometime soon.' That said, the blond woman kisses you and gently disentangles herself from your embrace. Standing up in the shallow water, she then does a little spin that shows off her naked body to all the spectators - including showing that the mostly clear trickle down the inside of her legs is femcum. 'That's it for now,' she shouts, basking in the hoots and wolf-whistles she gets for a second before getting fully back in the water with you again and starting to swim back to the ship with you.";
		LineBreak;
		say "     As you move along and leave the watchers behind to get back to whatever they were doing before your little show, you notice two shapes glide through the water under you. A moment later, they surface in front of you, revealing themselves to be a pair of mer-people, with long fish's tails and fins as well as attractive human upper halves. They're male and female, with relatively similar features and long, brown hair - and you can see the flare of lust in their eyes. 'Hello there,' the mermaid says with a smile, then nods to Sonya and yourself before continuing, 'I'm Sylvie, and this is Kev. We watched your very nice performance back there and... would like to extend an invitation to share some good times.'";
		say "     Her companion speaks up after that, giving a charming smile and saying, 'We love having fun with other couples. Just think about what we could do together...' That said, both merfolk present themselves a bit, posing while they let their eyes wander over you - and they don't just have eyes for their opposite sex. You do notice Sylvie licking her lips as she glances at Sonya's breasts, while Kev lets his gaze wander between the three females in his sight. After a moment of mutual inspection, Sylvie says, 'We'll be in the area,' then nods towards the viking ship and continues, 'you've parked not far from where we live... so, if you want to have some fun, it shouldn't be hard to find us.' With that, the two of them give a wave and dive underwater, swimming away.";
	else:
		say "     Eager to tend to the needs of your beautiful[if VikingPregnancy is 2 or VikingPregnancy is 3] and pregnant[end if] wife, but also wanting to make it a bit more interesting, you challenge the Viking beauty to a race for the rocks and tiny bit of beach sticking out of the sea not too far away. 'I accept, my husband,' the proud woman says, smiling as she then adds, 'And what will be my prize if I win?' while at the same time rubbing the sensitive skin of your crotch with her fingers. Leaning in to kiss her, you reply that there's sure to be something you'll both agree too and let your hand creep up her side to cup one of your wife's luscious breasts.";
		say "     After a second of just sharing a lusty grin with the beautiful woman, the two of you start to hurriedly strip, just tearing off your clothes and throwing them down on the wooden deck in full view of all the other vikings on board. But as your wife's people are well-used to living in tight confines on a ship, nakedness and even public sex aren't really taboos - so all that happens is a few wolf whistles and several people casually sauntering closer to get a better look. Sonya is the first to be completely naked, much to the enjoyment of several male viking teenagers who can't stop staring at her curvy form and spring very obvious boners. As you take off the last piece of clothing yourself, you stroke your body demonstratively and give them a grin, silently bragging with the fact that you'll be enjoying yourself with Sonya soon enough.";
		WaitLineBreak;
		say "     Jumping into the gently sloshing waters of the ocean with your sexy wife by your side, the two of you immediately start tearing through the water, racing to the tiny bit of island not too far ahead. It really is a close thing, with Sonya pulling ahead a little at first, then having to slow down a bit again as not to wear herself out - well, or possibly your favorite viking is horny and aroused enough to throw the race and just wants to 'pay up'. No matter what, it is you who reaches the small piece of rock and sand first, joined a second later by the pale and beautiful woman.";
		say "     Pulling yourselves up onto the little sandbank on the current-protected side of the rocks, the two of you give each other some still a bit breathless kisses, then Sonya leans back, stretching out her shapely body in the shallow water. Lust flares brightly inside you as your eyes wander over your wife's naked form, the [if VikingPregnancy is 2 or VikingPregnancy is 3]life-promising bulge of her pregnant belly poking out of[else]flat and muscled abs of her raised chest still under[end if] the water, then the twin mounds of her amazing breasts standing out in the swaying water, pulling you into almost a trance with their firm curves and hard nipples. 'Claim your prize my wife - I'm all yours,' Sonya tells you with a purr, then spreads her legs a little more in obvious invitation.";
		WaitLineBreak;
		say "     You don't hesitate a moment longer after that and just do what instinct and arousal tell you to do - sliding smoothly through the water to get on top of the beautiful viking and planting a hungry kiss on her open lips while your hand explores between her legs. Feeling around a little bit, you find the soft folds of her waiting pussy, making her tremble in arousal as you rub over it. Stroking Sonya with your fingers, you pay special attention to her little button of a clit at the top and give it a gentle tease. The sexy viking moans into your mouth as you stimulate her at this sensitive spot, making a delightfully needy sound - which you draw from her again and again as you keep going, fingering your wife with eager care, then eventually bring your crotch against hers to rub your sensitive skin against her female parts.";
		say "     What pants, moans and gasps the two of you share echo out over the water, drawing more than a few creatures near to investigate. In between grinding your sexless crotch against her own and nuzzling the viking woman's breasts, sucking the salty taste of the water from her nipples, you become aware of several heads popping out from underwater at the edge of your vision, marking the arrival of a number of new spectators. It's mostly aquatic anthros and ferals, but also one or two land-living creatures who happened to be near for a swim. You're pretty sure the anthro [one of]giraffe[or]tiger[or]zebra[or]beagle[or]German shepherd[or]lynx[or]panda[at random] over there won't be forgetting this trip to the beach anytime soon - not with how eagerly she watches and rubs her own breasts with both hands. There is even one especially brazen otter who simply climbs up on the rocks, finally coming to sit on top of one of the higher ones to have the best possible view.";
		WaitLineBreak;
		say "     So your little tryst at a not quite so lonely bunch of rocks turned out to be a very public affair - but you're pretty sure that Sonya gets off more than a little bit from the fact that so many people are watching... watching her strong and worthy wife give her so much pleasure. There's a number of little glances she gives to the side, and you could swear the blond woman starts moaning specially loud as she does so, as if to show off how much she's enjoying herself. No matter what goes on around you, you're having a blast at fucking in this somewhat unusual location - and you can't help but feel a bit like the nanite apocalypse was... kinda worth it. Sure, human civilization is pretty fucked right now, but... how improbable would it have been to find yourself with a breathtakingly beautiful viking wife without it?";
		say "     Grinding against Sonya's welcoming body again and again, you soon feel the need to come become stronger and stronger inside you and eventually just can't hold back anymore, shouting in lust as the last little touch drives you over the edge. Shivering and twitching all over, you hold on to Sonya and give her a very satisfied kiss on the lips. While doing so, you also slide a hand down where your hips meet and start to rub Sonya's little clit with eager attention, wanting to get her off right away too... and it doesn't take long at all, as wound up as your woman already is. Just moments later, Sonya gives a loud lust-filled shout and starts to writhe in your embrace, twitching and panting as she joins you in climax.";
		WaitLineBreak;
		say "     'That was... wow,' Sonya pants in a satisfied tone some short while later when you've both come off your orgasms, then continues, 'I love you, my wife - let's do this again sometime soon.' That said, the blond woman kisses you and gently disentangles herself from your embrace. Standing up in the shallow water, she then does a little spin that shows off her naked body to all the spectators - including showing that the mostly clear trickle down the inside of her legs is femcum. 'That's it for now,' she shouts, basking in the hoots and wolf-whistles she gets for a second before getting fully back in the water with you again and starting to swim back to the ship with you.";
		LineBreak;
		say "     As you move along and leave the watchers behind to get back to whatever they were doing before your little show, you notice two shapes glide through the water under you. A moment later, they surface in front of you, revealing themselves to be a pair of mer-people, with long fish's tails and fins as well as attractive human upper halves. They're male and female, with relatively similar features and long, brown hair - and you can see the flare of lust in their eyes. 'Hello there,' the mermaid says with a smile, then nods to Sonya and yourself before continuing, 'I'm Sylvie, and this is Kev. We watched your very nice performance back there and... would like to extend an invitation to share some good times.'";
		say "     Her companion speaks up after that, giving a charming smile and saying, 'We love having fun with other couples. Just think about what we could do together...' That said, both merfolk present themselves a bit, posing while they let their eyes wander over you - and they don't just have eyes for their opposite sex. You do notice Sylvie licking her lips as she glances at Sonya's breasts, while Kev lets his gaze wander over you with an intrigued expression. After a moment of mutual inspection, Sylvie says, 'We'll be in the area,' then nods towards the viking ship and continues, 'you've parked not far from where we live... so, if you want to have some fun, it shouldn't be hard to find us.' With that, the two of them give a wave and dive underwater, swimming away.";
	now lastfuck of Sonya is turns;

Section 6 - Drop Item

Table of Game Objects (continued)
name	desc	weight	object
"mead horn"	"A hollowed-out cow's horn, stoppered at the wider end. Delicious mead sloshes around in it. Looks like Sonya already drank a bit before it ended up in your hands."	1	mead horn

instead of sniffing mead horn:
say "You open the stopper for a moment and take a sniff. Mmmh! Delicious honey-wine.";

mead horn is a grab object.
the usedesc of mead horn is "[mead horn use]";

to say mead horn use:
	say "Taking the stopper out of the horn's opening, you put it to your mouth and take a swallow of the mead. Mjam - tasty and alcoholic. Before long, the horn is empty and you're lightly buzzed. A thought comes up in the back of your head, and you wonder if it's such a good idea to share drinking utensils with other people these days... but then, becoming more like Sonya wouldn't be so bad, would it?";
	PlayerDrink 6;
	VikingInfect;

to VikingInfect:
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Viking":
			now monster is y;
			break;
	now non-infectious entry is false;
	infect "Viking";
	now non-infectious entry is true;

Table of Game Objects(continued)
name	desc	weight	object
"viking sword"	"A beautifully crafted sword, about 30 inches long, with a keen edge to its blade. The favorite weapon of your Viking wife, Sonya, it became yours as you married. Better take good care of it - it's a pretty good weapon, well-balanced... and there might be some marital problems ahead if you let it rust or lose it."	5	viking sword

viking sword is an armament.
It is part of the player.
It has a weapon "shining steel blade". The weapon damage of viking sword is 8. The weapon type of viking sword is "Melee". It is not temporary. The objsize of viking sword is 2.

Instead of sniffing viking sword:
	say "The blade smells of nothing but metal. Sonya always kept it clean without fail, and you've done the same since you got it.";

Section 7 - Endings

when play ends:
	if bodyname of player is "dead":
		stop the action;

[
when play ends:
	if bodyname of player is "Viking":
		if humanity of player < 10:   [succumbed]
			say "     A";
		else:    [sane]
			say "     B";
]


Viking ends here.
