Version 1 of Viking by Wahn begins here.
[Version 1 - Initial Setup]

"Adds a Female Viking to Flexible Survivals Wandering Monsters table"

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
				say "     Suddenly, Sonya calls 'It's time!' and starts panting loudly, holding her bulging stomach with both hands. You rush over to her and help her to sit on the bed, then open the door to the lengthwise hallway through the ship and shout for help. In no time at all, an elderly viking woman and two younger women rush into the cabin and help Sonya out of her clothes while telling her to keep calm breathe. So you're not standing in the way, they just tell you to sit on the bed besides your wife, keeping her company and holding her hand.";
				if a random chance of 1 in 2 succeeds:  [kid is a boy]
					if VikingKidShape is "human":
						say "     Soon, her contractions come quicker and quicker, and then with a gush of fluids, Sonya's child is pushed out of her stretched vagina. The matronly viking gives him a soft slap on the butt and the baby takes his first breath, then immediately starts bawling at full volume. After tying off the umbilical cord and cutting it, the little one is quickly picked up by the experienced women and wiped down, then brought up to his mother, who puts him against her chest in a loving embrace. A bit of peace and quiet returns to the cabin a moment later as he finds her breast and starts suckling. The little human boy in Sonya's arms - your child - looks so incredibly cute, you just can't help yourself from leaning over to kiss him on the head, then give your wife a loving kiss on the lips.";
						say "     While you hold and kiss your viking wife, the reality of a nanite-infected world starts to show itself in your child, as the boy grows and grows, seemingly getting weeks, if not months older with each swallow of her milk. The baby quickly becomes a toddler, then a very young child, getting older and more developed by the second. By the time he's finished drinking from one breast, then the other, a boy looking about fourteen years old is sitting between the two of you. He gives Sonya and you a hug, then shouts 'I'm gonna go play catch with [one of]Svetjalf[or]Snorri[or]Leif[or]Arnvid[or]Ari[or]Finn[or]Gudrun[or]Halla[or]Svala[at random]', jumping off the bed to run out of the room, naked as he is. Seems like he absorbed the knowledge about the other children directly from his mother. Oh, kids grow up so fast these days...";
					otherwise:
						say "     Soon, her contractions come quicker and quicker, and then with a gush of fluids, Sonya's child is pushed out of her stretched vagina. The matronly viking gives him a soft slap on the butt and the baby takes his first breath, then immediately starts bawling at full volume. After tying off the umbilical cord and cutting it, the little one is quickly picked up by the experienced women and wiped down, then brought up to his mother, who puts him against her chest in a loving embrace. A bit of peace and quiet returns to the cabin a moment later as he finds her breast and starts suckling. The little baby in Sonya's arms - your child - looks so incredibly cute in a half-human, half-[VikingKidShape] way, you just can't help yourself from leaning over to kiss him on the head, then give your wife a loving kiss on the lips.";
						say "     While you hold and kiss your viking wife, the reality of a nanite-infected world starts to show itself in your child, as the boy grows and grows, seemingly getting weeks, if not months older with each swallow of her milk. The baby quickly becomes a toddler, then a very young child, getting older and more developed by the second. By the time he's finished drinking from one breast, then the other, a boy looking about fourteen is sitting between the two of you. He gives Sonya and you a hug, then shouts 'I'm gonna go play catch with [one of]Svetjalf[or]Snorri[or]Leif[or]Arnvid[or]Ari[or]Finn[or]Gudrun[or]Halla[or]Svala[at random]', jumping off the bed to run out of the room, naked as he is. Seems like he absorbed the knowledge about the other children directly from his mother. Oh, kids grow up so fast these days...";						
					if VikingKidGender is 0:
						now VikingKidGender is 1;
					otherwise if VikingKidGender is 2:
						now VikingKidGender is 3;
				otherwise:  [kid was a girl]
					if VikingKidShape is "human":
						say "     Soon, her contractions come quicker and quicker, and then with a gush of fluids, Sonya's child is pushed out of her stretched vagina. The matronly viking gives her a soft slap on the butt and the baby takes her first breath, then immediately starts bawling at full volume. After tying off the umbilical cord and cutting it, the little one is quickly picked up by the experienced women and wiped down, then brought up to her mother, who puts her against her chest in a loving embrace. A bit of peace and quiet returns to the cabin a moment later as the girl finds her breast and starts suckling. The little human baby in Sonya's arms - your child - looks so incredibly cute, you just can't help yourself from leaning over to kiss her on the head, then give your wife a loving kiss on the lips.";
						say "     While you hold and kiss your viking wife, the reality of a nanite-infected world starts to show itself in your child, as the girl grows and grows, seemingly getting weeks, if not months, older with each swallow of her milk. The baby quickly becomes a toddler, then a very young child, getting more developed by the second. By the time she's finished drinking from one breast, then the other, a girl looking about fourteen years old is sitting between the two of you. She gives Sonya and you a hug, then shouts 'I'm gonna go play catch with [one of]Svetjalf[or]Snorri[or]Leif[or]Arnvid[or]Ari[or]Finn[or]Gudrun[or]Halla[or]Svala[at random]', jumping off the bed to run out of the room, naked as she is. Seems like she absorbed the knowledge about the other children directly from her mother. Oh, kids grow up so fast these days...";
					otherwise:
						say "     Soon, her contractions come quicker and quicker, and then with a gush of fluids, Sonya's child is pushed out of her stretched vagina. The matronly viking gives her a soft slap on the butt and the baby takes her first breath, then immediately starts bawling at full volume. After tying off the umbilical cord and cutting it, the little one is quickly picked up by the experienced women and wiped down, then brought up to her mother, who puts her against her chest in a loving embrace. A bit of peace and quiet returns to the cabin a moment later as the girl finds her breast and starts suckling. The little baby in Sonya's arms - your child - looks so incredibly cute in a half-human, half-[VikingKidShape] way, you just can't help yourself from leaning over to kiss her on the head, then give your wife a loving kiss on the lips.";
						say "     While you hold and kiss your viking wife, the reality of a nanite-infected world starts to show itself in your child, as the girl grows and grows, seemingly getting weeks, if not months, older with each swallow of her milk. The baby quickly becomes a toddler, then a very young child, getting more developed by the second. By the time she's finished drinking from one breast, then the other, a girl looking about fourteen years old is sitting between the two of you. She gives Sonya and you a hug, then shouts 'I'm gonna go play catch with [one of]Svetjalf[or]Snorri[or]Leif[or]Arnvid[or]Ari[or]Finn[or]Gudrun[or]Halla[or]Svala[at random]', jumping off the bed to run out of the room, naked as she is. Seems like she absorbed the knowledge about the other children directly from her mother. Oh, kids grow up so fast these days...";
					if VikingKidGender is 0:
						now VikingKidGender is 2;
					otherwise if VikingKidGender is 1:
						now VikingKidGender is 3;			
				now VikingPregnancy is 0;     [no need to tell the player about the birth, as he was present]
			otherwise:
				say "You have a strange feeling in your body, as if you somehow just know that one of your offspring has entered this world. Maybe you should look for Sonya again on the beach[if VikingRelationship is 20] or visit her in her cabin on the Viking ship[end if]...";			
				now VikingPregnancy is 4;     [so she can tell the player about their kid in the next meeting]
			now VikingPregCounter is 0;
		otherwise if VikingPregCounter is 12:
			now VikingPregnancy is 3;   [very visible pregnancy]
		otherwise if VikingPregCounter is 24:
			now VikingPregnancy is 2;   [visible pregnancy]
			if VikingRelationship < 7:		[getting visibly pregnant will get Sonya's involvement with the player noticed]
				now VikingRelationship is 7;
		if VikingPregCounter is greater than 1:
			decrease VikingPregCounter by 1;
	if VikingUltimatum is 1:
		say "You remember the [bold type]challenge of the viking chieftain[roman type] against you - running out right about now, your time being up. With you not even showing up, now they'll see Sonya as doubly dishonored - losing in combat against an outlander (with most of them suspecting you of magic or some trickery), who additionally isn't even brave enough to fight her father. Hopefully, you won't run into any of them again, as this'll enrage all of them - even Sonya - a lot. She'd likely try to kill you...";
		now VikingUltimatum is 0;
		now Chieftain's Challenge is resolved;		
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Viking":
				now monster is y;
				now area entry is "nowhere";
				break;		
	otherwise if VikingUltimatum is 8:
		say "Time's ticking away if you want to fight for Sonya. The [bold type]chieftain's challenge[roman type] you can answer on the beach will run out today, so better grab your gear now and get moving - but watch out, the man will actually try to kill you...";		
	otherwise if VikingUltimatum is 16:
		say "Time's ticking away if you want to fight for Sonya. The [bold type]chieftain's challenge[roman type] you can answer on the beach will run out in two days, so better grab your gear now and get moving soon - but watch out, the man will actually try to kill you...";			
	if VikingUltimatum is greater than 1:
		decrease VikingUltimatum by 1;

Section 1 - Monster Responses

to say Viking wins:
	if VikingRelationship is 9:	  [fighting Sonya's father]
		say "";   [dealt with in the event]		
	otherwise:	
		if hp of player > 0:    [player submits]
			if the player is not facially human or the player is not bodily human or the player is not skintone human:    [non-human player = a monster, in her words]
				if VikingRelationship is 1:             [first time submit]
					if charisma of player > 15:   [handsome enough for some sexy time]
						say "     'What kind of monster are you, meekly surrendering to me? I was told there are powerful beasts in the world, not... this.' With a scoff, she shoves you to the ground. 'Let's see if you're at least of use for some pleasure.' With that, she puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
						say "[VikingWinSex]";       
					otherwise:    [ugly people just get robbed]
						say "     'What kind of monster are you, meekly surrendering to me? I was told there are powerful beasts in the world, not... this.' With a scoff, she shoves you to the ground. 'Let's see if you've at least got something worth taking.' With that, she starts poking around in your stuff.";  
						if carried of food >= 1:
							say "     Finding some food in your pack, she puts it in her satchel and then walks away, leaving you lying in the dust without any look back.";
							decrease carried of food by 1;
						otherwise if carried of water bottle >= 1:
							say "     Finding a bottle of water in your pack, she puts it in her satchel and then walks away, leaving you lying in the dust without a look back.";
							decrease carried of water bottle by 1;
						otherwise:
							say "     Not finding anything to her liking as she throws one after another of your belongings aside, the Viking woman grumbles 'What a waste of time.' Then she turns away from you and walks off, leaving you lying in the dust without any look back.";           
				otherwise if VikingRelationship is 2:   [submit after one victory]
					say "     'What?!' She shoves you to the ground 'To think you beat me! Must have been a lucky blow, with you proving so meek now.' With a scoff, she glares down at you. 'Let's see if you're at least of use for some pleasure.' With that, she puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
					say "[VikingWinSex]";       
				otherwise if VikingRelationship is 3:   [submit after 2 victories]
					say "     A disappointed expression appears on the face of the Viking woman's face 'No spirit to fight, monster? And I thought you were shaping up so well until now.' With a sigh, she shrugs and continues 'Well then, if you want to be a tame monster, get busy and give me some pleasure.' She puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
					say "[VikingWinSex]";       
				otherwise if VikingRelationship > 3:    [submit after 3 and more victories]
					say "     She is a bit nonplussed, saying 'What's this, my monster? Don't you want to fight and prove your power over me again and ravish me afterwards?' Looking at you affectionately for a moment, she shrugs and continues 'Well, I won't just have sex with you - can't, really - I don't want to appear weak. But we can still have some fun...' She puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
					say "[AffectionateVikingWinSex]";
			otherwise:    [human form player]
				if VikingRelationship is 1:             [first time submit]
					if charisma of player > 15:   [handsome enough for some sexy time]
						say "     'Hmph - you're just another of those weaklings that run around like frightened chickens when they're raided. I had hoped to find somewhat more impressing people in this new land.' With a scoff, she shoves you to the ground. 'Let's see if you're at least of use for some pleasure.' With that, she puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
						say "[VikingWinSex]";       
					otherwise:    [ugly people just get robbed]
						say "     'Hmph - you're just another of those weaklings that run around like frightened chickens when they're raided. I had hoped to find somewhat more impressing people in this new land.' With a scoff, she shoves you to the ground. 'Let's see if you've at least got something worth taking.' With that, she starts poking around in your stuff.";         
						if carried of food >= 1:
							say "     Finding some food in your pack, she puts it in her satchel and then walks away, leaving you lying in the dust without any look back.";
							decrease carried of food by 1;
						otherwise if carried of water bottle >= 1:
							say "     Finding a bottle of water in your pack, she puts it in her satchel and then walks away, leaving you lying in the dust without a look back.";
							decrease carried of water bottle by 1;
						otherwise:
							say "     Not finding anything to her liking as she throws one after another of your belongings aside, the Viking woman grumbles 'What a waste of time.' Then she turns away from you and walks off, leaving you lying in the dust without any look back.";             
				otherwise if VikingRelationship is 2:   [submit after one victory]
					say "     'What?!' She shoves you to the ground 'You think I'd treat you differently like any other outlander, only because you've beaten me once? Must have been a lucky blow too, with you proving so meek now.' With a scoff, she glares down at you. 'Let's see if you're at least of use for some pleasure.' With that, she puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
					say "[VikingWinSex]";       
				otherwise if VikingRelationship is 3:   [submit after 2 victories]
					say "     A disappointed expression appears on the face of the Viking woman's face 'No spirit to fight? And I thought you were shaping up so well until now.' With a sigh, she shrugs and continues 'Well then, if you want to be just a servant, get busy and give me some pleasure.' She puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
					say "[VikingWinSex]";       
				otherwise if VikingRelationship > 3:    [submit after 3 and more victories]
					say "     She is a bit nonplussed, saying 'What's this, my warrior? Don't you want to fight and prove your power over me again and ravish me afterwards?' Looking at you affectionately for a moment, she shrugs and continues 'Well, I won't just have sex with you - can't, really - I don't want to appear weak. But we can still have some fun...' She puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
					say "[AffectionateVikingWinSex]";
		otherwise:      [player loses]
			if the player is not facially human or the player is not bodily human or the player is not skintone human:    [non-human player = a monster, in her words]
				if VikingRelationship is 1:             [first time loss]
					if charisma of player > 15:   [handsome enough for some sexy time]
						say "     Leaving you dazed with her last blow, she gives you a shove and you fall on your ass. 'A bit weak for a monster, aren't you? Oh well, maybe you're just a stunted one.' Looking down on your prone form, she lets her gaze wander over you appraisingly. 'Still, there was at least some fight in you. I wonder if you can please a woman too, creature...' With that, she puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
						say "[VikingWinSex]";       
					otherwise:    [ugly people just get robbed]
						say "     Leaving you dazed with her last blow, she gives you a shove and you fall on your ass. 'A bit weak for a monster, aren't you? Oh well, maybe you're just a stunted one.' Looking down on your prone form, she lets her gaze wander over you appraisingly. 'Let's see if you've at least got something worth taking.' With that, she starts poking around in your stuff.";          
						if carried of food >= 1:
							say "     Finding some food in your pack, she puts it in her satchel and then walks away, leaving you lying in the dust without any look back.";
							decrease carried of food by 1;
						otherwise if carried of water bottle >= 1:
							say "     Finding a bottle of water in your pack, she puts it in her satchel and then walks away, leaving you lying in the dust without a look back.";
							decrease carried of water bottle by 1;
						otherwise:
							say "     Not finding anything to her liking as she throws one after another of your belongings aside, the Viking woman grumbles 'What a waste of time.' Then she turns away from you and walks off, leaving you lying in the dust without any look back.";             
				otherwise if VikingRelationship is 2:   [loss after one victory]
					say "     Leaving you dazed with her last blow, she gives you a shove and you fall on your ass. 'I win.' Looking down on your prone form, she lets her gaze wander over you appraisingly and a small smile comes to her lips. 'That victory of yours from before must have been pure luck, but still... you've got some spirit to fight. I could imagine taking you with me when we finally raid this land. For now, I'll just have some fun with you and catch you again later.' With that, she puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
					say "[VikingWinSex]";       
				otherwise if VikingRelationship is 3:   [loss after 2 victories]
					say "     Leaving you dazed with her last blow, she puts a finger against your chest, then slowly pushes your swaying body until you fall on your ass. 'I win. You won't get another victory against me today.' Looking down on your prone form, she lets her gaze wander over you appraisingly and a wide smile comes to her lips. 'Though that you actually did beat me twice shows that there's more to you than I thought at first. You might just be worth as a pet to accompany me into battle. I look forward to fighting and capturing you when we finally raid this coast. But for now, how about you give me some pleasure.' With that, she puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
					say "[VikingWinSex]";       
				otherwise if VikingRelationship > 3:    [loss after 3 and more victories]
					say "     She is a bit nonplussed, saying 'Not quite up to your usual form, my monster? You'll have to do better if you want to prove your power over me again and ravish me afterwards.' Looking at you affectionately for a moment, she shrugs and continues 'Well, sex is out for now, but we can still have some fun...' Guiding you up behind a dune, she tells you to strip and then softly pushes you to lie on the ground. Taking off her own gear, she reveals a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
					say "[AffectionateVikingWinSex]";
			otherwise:    [human form player]
				if VikingRelationship is 1:
					if charisma of player > 15:   [handsome enough for some sexy time]        
						say "     Leaving you dazed with her last blow, she gives you a shove and you fall on your ass. 'I win. Not a big surprise, but at least you fought back a bit.' Looking down on your prone form, she lets her gaze wander over you appraisingly. 'You've shown some courage and just might be worth taking as a serf. Let's see how you measure up providing pleasure to me...' With that, she puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
						say "[VikingWinSex]";       
					otherwise:    [ugly people just get robbed]
						say "     Leaving you dazed with her last blow, she gives you a shove and you fall on your ass. 'A bit weak for a monster, aren't you? Oh well, maybe you're just a stunted one.' Looking down on your prone form, she lets her gaze wander over you appraisingly. 'Let's see if you've at least got something worth taking.' With that, she starts poking around in your stuff.";          
						if carried of food >= 1:
							say "     Finding some food in your pack, she puts it in her satchel and then walks away, leaving you lying in the dust without any look back.";
							decrease carried of food by 1;
						otherwise if carried of water bottle >= 1:
							say "     Finding a bottle of water in your pack, she puts it in her satchel and then walks away, leaving you lying in the dust without a look back.";
							decrease carried of water bottle by 1;
						otherwise:
							say "     Not finding anything to her liking as she throws one after another of your belongings aside, the Viking woman grumbles 'What a waste of time.' Then she turns away from you and walks off, leaving you lying in the dust without any look back.";             
				otherwise if VikingRelationship is 2:   [loss after one victory]
					say "     Leaving you dazed with her last blow, she gives you a shove and you fall on your ass. 'I win. Not a big surprise, but at least you fought back.' Looking down on your prone form, she lets her gaze wander over you appraisingly and a small smile comes to her lips. 'That time you won before must have been pure luck, but still... I like my serfs to have a bit of spirit. Too bad I'm in the middle of scouting this coast, or I'd take you along to the ship. For now, I'll just have some fun with you and catch you later, when we really raid.' With that, she puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
					say "[VikingWinSex]";       
				otherwise if VikingRelationship is 3:   [loss after 2 victories]
					say "     Leaving you dazed with her last blow, she puts a finger against your chest, then slowly pushes your swaying body until you fall on your ass. 'I win. You won't get another victory against me today.' Looking down on your prone form, she lets her gaze wander over you appraisingly and a wide smile comes to her lips. 'Though that you actually did beat me twice shows that there's more to you than I thought at first. You'll be my favorite serf after we raid this coast and carry off our loot. I look forward to fighting and capturing you then. But for now, how about you give me some pleasure.' With that, she puts down her weapon and starts undressing, revealing a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
					say "[AffectionateVikingWinSex]";       
				otherwise if VikingRelationship > 3:    [loss after 3 and more victories]
					say "     She is a bit nonplussed, saying 'Not quite up to your usual form, my warrior? You'll have to do better if you want to prove your power over me again and ravish me afterwards.' Looking at you affectionately for a moment, she shrugs and continues 'Well, sex is out for now, but we can still have some fun...' Guiding you up behind a dune, she tells you to strip and then softly pushes you to lie on the ground. Taking off her own gear, she reveals a tough and strong body, though not without female curves and a pair of well-rounded, perky breasts.";
					say "[AffectionateVikingWinSex]";
				
to say VikingWinSex:                 [demanding sex]
	say "     [WaitLineBreak]";
	say "     Coming to stand over you, she puts a hand to her pussy and spreads its lips a bit. The tall Nordic beauty just looks amazing standing over you, and your gaze inevitably is drawn to wander over her perfect, pale skin, the pretty bush of blond pubic hair, her toned body and finally the pair of well-rounded breasts. You get so distracted by the alluring sights that you totally blank out that she says something. Only when you get poked in the side by her naked foot do you hear the by then impatient order 'Get busy - now!'";
	say "     Sitting up, you bring your head up between her legs, your nose almost bumping against her crotch in your hurry. Licking over her folds and teasing the Viking's clit with your tongue, you start giving her the oral attention she demands. Then you bring your fingers into the game too, stroking her nether lips, then pushing one and another into her vagina, spreading and caressing her inner passage. Pleasing this attractive woman has your own libido rising to new heights, [if cocks of player > 0]your cock almost painfully hard[otherwise if cunts of player > 0]your cunt drippingly wet[otherwise]your whole body tingling[end if], but you don't dare slowing down on her to take care of yourself.";   
	say "     [WaitLineBreak]";
	say "     Fingering and licking her pussy, you draw pleased gasps and moans from the woman, which get louder and louder as she quickly moves towards orgasm. Her hands grab your head tightly at one point to hold you against her tightly for some extra tongue action, during which a new tone of urgency comes into her shouts of pleasure. Then finally, she reaches the point of no return, panting and shaking as her climax courses through her whole body. You can feel her inner muscles tense and twitch around your fingers, and femcum starts running down your fingers and onto your tongue.";
	if the player is not facially human or the player is not bodily human or the player is not skintone human:    [non-human player = a monster, in her words]  
		say "     As her orgasm slowly winds down, the Nordic woman takes a few deep breaths, then goes to collect her gear. Meanwhile, you get busy [if cocks of player > 0]stroking your cock[otherwise if cunts of player > 0]fingering your pussy[otherwise]stroking yourself[end if] to take care of your own needs. As the Viking bends over to pick up her sword, she gives you another look and chuckles. 'Hah, maybe you're just another kind of monster - less powerful, but skilled in other ways. You'll be busy when we finally raid this coast.' With that, she turns and walks away.";
	otherwise:   [human player]
		say "     As her orgasm slowly winds down, the Nordic woman takes a few deep breaths, then goes to collect her gear. Meanwhile, you get busy [if cocks of player > 0]stroking your cock[otherwise if cunts of player > 0]fingering your pussy[otherwise]stroking yourself[end if] to take care of your own needs. As the Viking bends over to pick up her sword, she gives you another look and chuckles. 'Hah, at least that's something you're good at. Keep up training your skills, you'll need them again when we come to really raid this coast.' With that, she turns and walks away.";
		
to say AffectionateVikingWinSex:     [sex with player, gets the player off too]
	say "     [WaitLineBreak]";
	if the player is not facially human or the player is not bodily human or the player is not skintone human:    [non-human player = a monster, in her words]  
		say "     Kneeling in the sand between your legs, Sonya runs her hands up your body and slides herself forward to lie on top of you. The soft touch of her perky breasts against your chest sends pleasant tingles through your body. A lustful moan escapes your lips, leading over into a hungry kiss as she presses her lips against yours and explores your mouth with her tongue. 'My [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[or]beautiful[or]handsome[at random] monster, how I long for your touch. You might be just an outsider and not one of us, though... maybe you could be. But for now, let's just enjoy this.'";
	otherwise:    [human player]
		say "     Kneeling in the sand between your legs, Sonya runs her hands up your body and slides herself forward to lie on top of you. The soft touch of her perky breasts against your chest sends pleasant tingles through your body. A lustful moan escapes your lips, leading over into a hungry kiss as she presses her lips against yours and explores your mouth with her tongue. 'My [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[or]beautiful[or]handsome[at random] warrior, how I long for your touch. You might be just an outsider and not one of us, though... maybe you could be. But for now, let's just enjoy this.'";    
	say "     [line break]";
	if cocks of player > 0:                      [male+herm]
		say "     With that, she grinds her crotch against yours, your hard shaft rubbing against her soft, pale skin. Panting in lust, you bring your hands to her hips, pushing them up a bit so you can align your cock with her pussy. Touching her nether lips with its tip, you can feel them spreading a bit for your entry, then... pull away. Sonya grins down at you, saying 'Ahah - you didn't earn that this time, lover. See it as a motivation to fight better next time...' She moves further up and turns around, then leans forward until she's in the 69 position on top of you. Her crotch is right in your face and the blond hair of her bush tickles your chin. Going with the flow, you put your tongue to work, licking and teasing her pussy. Meanwhile, your Viking partner takes hold of your cock, stroking it and fondling your balls softly. Then she takes the tip into her mouth and sinks her lips deeper around the shaft, bobbing up and down."; 
		say "     The two of you lick and suck and stroke each other for quite a while, each totally focused on the other's pleasure. When things get pretty close for both of you, Sonya changes positions again, getting to kneel over your crotch. With flowing movements of her hips, she rubs the moist and swollen lips of her pussy along the shaft of your cock, sometimes teasingly letting the tip of it come between them then quickly moving down along the shaft again. It doesn't take more than a minute or two of this to finally drive you over the edge, gasping as your balls twitch and spurt after spurt of your seed splats all over your chest and abdomen. The Viking woman isn't far behind, the feel of your pulsing shaft rubbing against her pussy lips giving her an intense climax."; 
		say "     [WaitLineBreak]";
		if the player is not facially human or the player is not bodily human or the player is not skintone human:      
			say "     Sticky with sweat, cum and female juices, you lie there together, holding each other in your arms as your orgasms wind down. Breathing deeply, Sonya moans 'I love you, my monster.' and presses a kiss against your lips. You keep making out for a moment longer, then each gather your gear and get back to everyday post-apocalyptic survival.";
		otherwise:
			say "     Sticky with sweat, cum and female juices, you lie there together, holding each other in your arms as your orgasms wind down. Breathing deeply, Sonya moans 'I love you, my warrior.' and presses a kiss against your lips. You keep making out for a moment longer, then each gather your gear and get back to everyday post-apocalyptic survival.";
	otherwise if cunts of player > 0:            [female]
		say "     With that, she grinds her crotch against yours, rubbing your two pussies against each other. Sonya grins down at you, saying 'How about we eat each other out...' She moves further up and turns around, then leans forward until she's in the 69 position on top of you. Her crotch is right in your face and the blond hair of her bush tickles your chin. Going with the flow, you put your tongue to work, licking and teasing her pussy. Meanwhile, your Viking partner does the same below, her tongue and fingers expertly stimulating your pussy."; 
		say "     The two of you lick and suck and stroke each other for quite a while, each totally focused on the other's pleasure. When things get pretty close for both of you, Sonya changes positions again, getting to kneel over your crotch. With flowing movements of her hips, she rubs the moist and swollen lips of her pussy against yours. Knowing exactly how to please a woman, she moves you towards orgasm at the same pace as herself, and less than a minute later, the two of you climax at the same time, loud gasps and moans only interrupted as she kisses you.";  
		say "     [WaitLineBreak]";
		if the player is not facially human or the player is not bodily human or the player is not skintone human:      
			say "     Sticky with sweat and female juices, you lie there together, holding each other in your arms as your orgasms wind down. Breathing deeply, Sonya moans 'I love you, my monster.' and presses another kiss against your lips. You keep making out for a moment longer, then rub yourselves clean with the beach's very fine dry sand and each gather your gear. Time to get back to everyday post-apocalyptic survival.";
		otherwise:
			say "     Sticky with sweat and female juices, you lie there together, holding each other in your arms as your orgasms wind down. Breathing deeply, Sonya moans 'I love you, my warrior.' and presses another kiss against your lips. You keep making out for a moment longer, then rub yourselves clean with the beach's very fine dry sand and each gather your gear. Time to get back to everyday post-apocalyptic survival.";
	otherwise:                                   [neuter]
		say "     With that, she grinds her crotch against yours, and even though you don't have any genitals, her touch wakes urges inside you. Sonya grins down at you, saying 'How about you eat me out and I stoke you there...' She moves further up and turns around, then leans forward until she's in the 69 position on top of you. Her crotch is right in your face and the blond hair of her bush tickles your chin. Going with the flow, you put your tongue to work, licking and teasing her pussy. Meanwhile, your Viking partner caresses the skin of your bare crotch with her fingers and tongue."; 
		say "     The two of you lick and stroke each other for quite a while, each totally focused on the other's pleasure. When things get pretty close for both of you, Sonya changes positions again, getting to kneel over your crotch again. With flowing movements of her hips, she rubs the moist and swollen lips of her pussy against you. It feels great, and less than a minute later, a tingly feeling of satisfaction runs through your whole body. Satisfied, Sonya quickly strokes herself and joins you just moments later, her femcum dripping down on you.";  
		say "     [WaitLineBreak]";
		if the player is not facially human or the player is not bodily human or the player is not skintone human:      
			say "     Sticky with sweat and female juices, you lie there together, holding each other in your arms as your orgasms wind down. Breathing deeply, Sonya moans 'I love you, my monster.' and presses another kiss against your lips. You keep making out for a moment longer, then rub yourselves clean with the beach's very fine dry sand and each gather your gear. Time to get back to everyday post-apocalyptic survival.";
		otherwise:
			say "     Sticky with sweat and female juices, you lie there together, holding each other in your arms as your orgasms wind down. Breathing deeply, Sonya moans 'I love you, my warrior.' and presses another kiss against your lips. You keep making out for a moment longer, then rub yourselves clean with the beach's very fine dry sand and each gather your gear. Time to get back to everyday post-apocalyptic survival.";

to say Viking loses:
	if VikingRelationship is 1:             [first time victory over her]
		if the player is not facially human or the player is not bodily human or the player is not skintone human:    [non-human player = a monster, in her words]
			say "     Your last hit leaves the Viking woman swaying on her feet. For a moment it looks like she's gathering strength to continue fighting, then she lets out her breath in a huff and drops her sword and shield. 'You're stronger than I thought, monster. *pant* I... I Sonya Frithjofsdotter - I must admit defeat. I still can't believe this - no one ever beat me!' She looks to the ground for a moment, then back at you. 'Well then - time to keep my promises. I swore an oath to Freya that I wouldn't let a weakling be my first, and so I never, I couldn't - even Leif's son Snorri wasn't strong enough. I never thought that a monster would be...'";       
		otherwise:  [human player]
			say "     Your last hit leaves the Viking woman swaying on her feet. For a moment it looks like she's gathering strength to continue fighting, then she lets out her breath in a huff and drops her sword and shield. 'You're stronger than I thought, outlander. *pant* I... I Sonya Frithjofsdotter - I must admit defeat. I still can't believe this - no one ever beat me!' She looks to the ground for a moment, then back at you. 'Well then - time to keep my promises. I swore an oath to Freya that I wouldn't let a weakling be my first, and so I never, I couldn't - even Leif's son Snorri wasn't strong enough. I never thought that an outlander would be...'";        
		say "     Falling silent, the young Viking woman leads you up and over the crest of the nearest dune, then starts taking off her armor and clothes. Do you want to have sex with her? ";
		if player consents:
			say "[Line Break]";
			say "[VikingVirginSex]";       
		otherwise:
			say "[line break]";			
			say "     As you tell her she doesn't have to do this, she's not at all relieved, as you might have thought, but rather... annoyed. Pulling off the scale mail covering her chest and revealing a very attractive upper body with pale skin and two perky breasts, she growls 'What part of 'Oath to a god' did you not understand, you idiot?' Uhoh - looks like her eyes glowed a bit as she said that, and there's a hum of electricity in the air that makes you feel very uneasy about declining her again. So you decide it'd be better to just go with it after all...";
			say "[Line Break]";
			say "[VikingVirginSex]";            
		increase VikingRelationship by 1;
	otherwise if VikingRelationship is 2:   [second victory]
		if the player is not facially human or the player is not bodily human or the player is not skintone human:    [non-human player = a monster, in her words]
			say "     Breathing heavily, Sonya stumbles back from your last hit, then lowers her sword and shield with a grunt, looking annoyed. 'You beat me - again! There just might be more to the legends about you monsters you than I thought.' With a shrug, her expression changes to one that is a bit more friendly, coupled with eyes that roam over your body with interest. She bites her lip for a second, then continues 'You know... last time with you wasn't half bad, and you certainly proved yourself again. How about another tumble in the dunes?' ";
		otherwise:  [human player]
			say "     Breathing heavily, Sonya stumbles back from your last hit, then lowers her sword and shield with a grunt, looking annoyed. 'You beat me - again! There just might be more to you than I thought. You're certainly no easily raided outlander.' With a shrug, her expression changes to one that is a bit more friendly, coupled with eyes that roam over your body with interest. She bites her lip for a second, then continues 'You know... last time with you wasn't half bad, and you certainly proved yourself again. How about another tumble in the dunes?'";           
		say "     Do you let her lead you there for another round of sex with this beautiful Viking woman?";
		if player consents:
			say "[Line Break]";
			say "[VikingLossSex]";       
		otherwise:
			say "[line break]";			
			say "     You excuse yourself and tell her now isn't a good time. Sonya isn't too pleased with your rejection, but it doesn't go further than a few grumbles to herself as she walks off without a look back.";
		increase VikingRelationship by 1;
	otherwise if VikingRelationship > 2 and VikingRelationship < 7:  [three+ victories]
		if the player is not facially human or the player is not bodily human or the player is not skintone human:    [non-human player = a monster, in her words]
			say "     Breathing heavily, Sonya stumbles back from your last hit, then lowers her shield and sheathes her sword. With only a tiny bit of hesitation, she acknowledges defeat, then walks up to you and kisses your lips. 'Another victory for you, my brave monster.' She rubs her nose against yours and lets her hands roam over your body, then nods towards the nearby dunes. 'Come, let's have some fun!'";
		otherwise:  [human player]
			say "     Breathing heavily, Sonya stumbles back from your last hit, then lowers her shield and sheathes her sword. With only a tiny bit of hesitation, she acknowledges defeat, then walks up to you and kisses your lips. 'Another victory for you, my outlander warrior.' She rubs her nose against yours and lets her hands roam over your body, then nods towards the nearby dunes. 'Come, let's have some fun!'";     
		say "     Do you let her lead you there for another round of sex with this beautiful Viking woman?";
		if player consents:  [sexy time]
			say "[Line Break]";
			say "[AffectionateVikingLossSex]";
		otherwise:  [no sex after all]
			say "[line break]";			
			say "     You excuse yourself and tell her now isn't a good time. Sonya isn't too pleased with your rejection, but it doesn't go further than a few grumbles to herself as she walks off without a look back.";
		increase VikingRelationship by 1;
	otherwise if VikingRelationship is 20:  [victory by a player who won her hand]
		if the player is not facially human or the player is not bodily human or the player is not skintone human:    [non-human player = a monster, in her words]
			say "     Breathing heavily, Sonya stumbles back from your last hit, then lowers her shield and sheathes her sword. With only a tiny bit of hesitation, she acknowledges defeat, then walks up to you and kisses your lips. 'Another victory for you, my brave monster.' She rubs her nose against yours and lets her hands roam over your body, then nods towards the nearby dunes. 'Come, let's have some fun!'";
		otherwise:  [human player]
			say "     Breathing heavily, Sonya stumbles back from your last hit, then lowers her shield and sheathes her sword. With only a tiny bit of hesitation, she acknowledges defeat, then walks up to you and kisses your lips. 'Another victory for you, my outlander warrior.' She rubs her nose against yours and lets her hands roam over your body, then nods towards the nearby dunes. 'Come, let's have some fun!'";     
		say "     Do you let her lead you there for another round of sex with your beautiful Viking wife?";
		if player consents:  [sexy time]
			say "[Line Break]";
			say "[AffectionateVikingLossSex]";
		otherwise:  [no sex after all]
			say "[line break]";			
			say "     You excuse yourself and tell her now isn't a good time. Sonya isn't too pleased with your rejection, but it doesn't go further than a few grumbles to herself as she walks off without a look back.";		
	if VikingRelationship is 9:	  [fighting Sonya's father]
		say "";   [dealt with in the event]				

to say VikingVirginSex:             [first time with the player]
	if cocks of player > 0:                      [male+herm]
		say "     You watch Sonya take off her armor and then the rest of her clothes, revealing the pale-skinned perfection of her well-trained body. There is a certain... urgency to her movements, as you guess there would be with her a virgin and all. Now completely naked, her perky breasts bouncing as she moves, the young Viking moves to lie down in the sand, spreading her legs a bit and looking up expectantly at you. 'Come on, claim your prize - But you better be good. I've been waiting a long time for this.' Feeling decidedly overdressed, you quickly remove your own clothes, freeing your by now fully hard erection.";
		say "     [WaitLineBreak]";		
		say "     Following your stiff organ's lead, you kneel between Sonya's legs, running your hands down over the smooth skin of her legs then reaching out to cup her breasts. She moans softly as you stroke them and move on to taking her nipples, one after another, into your mouth and suckle on them. 'That feels *gasp* great, but... but come on - Fuck me!' she says, her hand sliding down your body to grasp your hard shaft and setting it against her moist pussy lips. Eager to fulfill her wish, you thrust into her body, easily penetrating her hymen and sliding deeper until you bottom out. It feels amazing to have her warm and tight passage stretched around your manhood, a sentiment clearly shared by the Nordic warrior-woman. You rest like that for a moment, balls deep inside this pale beauty, letting her get used to it.";
		say "     Soon, Sonya moans 'Go on. Take me!', her legs wrapping around your hips to pull you deeper into her vagina. Taking up sliding out then pounding deep into her again, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. Her arms wrap around your upper body, pulling you fully on top of her as she seeks your lips with hers, hungrily making out with you. For a while, anything but the wild and urgent sex you have with her is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
		say "     [WaitLineBreak]";
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, the muscles in her vagina tightening their grip on your cock as the Viking orgasms. Not to lag too far behind, you abandon all restraint, grinding against her crotch urgently, and blow your load moments later. Pulse after pulse of your fertile seed shoot deep into the young woman's insides, making her well and truly deflowered.";
		say "     Exhausted, you stay on top of her, still with your cock inside, and try to catch your breath. Looks like Sonya has other ideas... suddenly the world spins as she rolls the two of you over until she's on top and straddling your hips. With a new composure, now that her lusts have been satisfied, she pulls off your softening shaft and cleans up a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her gear.";
	otherwise if cunts of player > 0:            [female]
		say "     You watch Sonya take off her armor and then the rest of her clothes, revealing the pale-skinned perfection of her well-trained body. There is a certain... urgency to her movements, as you guess there would be with her a virgin and all. Now completely naked, her perky breasts bouncing as she moves, the young Viking moves to lie down in the sand, spreading her legs a bit and looking up expectantly at you. 'Come on, claim your prize - But you better be good. I've been waiting a long time for this.' Feeling decidedly overdressed, you quickly remove your own clothes, revealing your own pussy.";
		say "     With a sigh and a chuckle, Sonya remarks 'Finally getting beaten - and then by a woman who can't even take me properly. But we're in luck - seems like Freya foresaw this and led my steps earlier when I found...' She stretches over to the pile of her clothing, opening up her satchel and... pulls out a bright green double headed dildo. Where the hell did she pick that up? Ah, who cares - your eyes riveted to the rubber sex toy, you kneel between the young Viking's legs and take it from her. Pushing one end in between her pussy lips, you have Sonya softly moaning as she's getting penetrated for the first time. Then you hit something - her hymen - and slowly increase the pressure till it gives way and you can push more and more of the rubber cock into her.";
		say "     [WaitLineBreak]";
		say "     Time to get into the action yourself... bending the other end of the sex toy up a bit, you slide it into your vagina, then thrust forward a bit with your hips, making it move in both of you. You still have to hold on to it when you pull back, but you can fuck each other, in a fashion. As you are grinding against each other at the hips, Sonya's hands roam over your body, stroking and touching you. It feels amazing to be so intimately close to her, and feeling her movements through the rubber cock you two share.";
		say "     Soon, Sonya moans 'Harder, harder!', her legs wrapping around your hips to make you push the dildo deeper into her vagina. Taking up sliding it out then pounding deep into her again, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. Her arms wrap around your upper body, pulling you fully on top of her as she seeks your lips with hers, hungrily making out with you. For a while, anything but the wild and urgent sex you have with her is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
		say "     [WaitLineBreak]";
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo connecting you. Not to lag too far behind, you push the sex toy deeper into yourself, rubbing it against your inner walls until you reach your peak a moment later. A trickle of your femcum runs down over the sex toy, to drip down into she sand with your partner's.";
		say "     Exhausted, you stay on top of her, still with the dildo connecting you, and try to catch your breath. Looks like Sonya has other ideas... suddenly the world spins as she rolls the two of you over until she's on top and straddling your hips. With a new composure, now that her lusts have been satisfied, she pulls the rubber cock out of both of you and cleans up a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her other gear.";
	otherwise:                                   [neuter]
		say "     You watch Sonya take off her armor and then the rest of her clothes, revealing the pale-skinned perfection of her well-trained body. There is a certain... urgency to her movements, as you guess there would be with her a virgin and all. Now completely naked, her perky breasts bouncing as she moves, the young Viking moves to lie down in the sand, spreading her legs a bit and looking up expectantly at you. 'Come on, claim your prize - But you better be good. I've been waiting a long time for this.' Feeling decidedly overdressed, you quickly remove your own clothes, revealing your bare, genital-less crotch.";
		say "     Sonya gives a surprised 'What?', then remarks with a sigh 'Finally getting beaten - and then by... what are you, even? With nothing between your... ah, no matter. Seems like Freya foresaw your little problem and led my steps earlier when I found...' She stretches over to the pile of her clothing, opening up her satchel and... pulls out a bright green double headed dildo. Your eyes riveted to the rubber sex toy, you kneel between the young Viking's legs and take it from her. Pushing one end in between her pussy lips, you have Sonya softly moaning as she's getting penetrated for the first time. Then you hit something - her hymen - and slowly increase the pressure till it gives way and you can push more and more of the rubber cock into her.";
		say "     [WaitLineBreak]";
		say "     Pushing the sex toy in and out of her, you slowly fuck Sonya while your other hand explores her body, stroking over soft skin and fondling her breasts. With her writhing in pleasure under your ministrations, there soon is a gasp of 'Kiss me', and you eagerly comply, moving up on top of her and finding her lips with yours. It feels amazing to be so intimately close to her, and making out as you fuck her with a dildo.";
		say "     Before long, Sonya moans 'Harder, harder!' her arms pulling you tight against her. Taking up the speed of your thrusts into her, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. It's great fun finding out what she likes best and how you can make her squeal in delight. For a while, anything but making out, touching and fucking is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
		say "     [WaitLineBreak]";
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo in your hand as her inner muscles grip it. A trickle of her femcum runs down over the sex toy, to drip down into she sand.";
		say "     After a moment of catching her breath, Sonya looks up at you and... suddenly the world spins as she rolls the two of you over until she's on top and straddling your hips. With a new composure, now that her lusts have been satisfied, she pulls the rubber cock out herself and cleans up a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her other gear.";
	say "     [line break]";
	if the player is not facially human or the player is not bodily human or the player is not skintone human:    [non-human player = a monster, in her words]    
		say "     As she pulls her clothes back on, Sonya gives your naked body a glance that lingers for a moment, then she shakes her head. 'You weren't half bad in fulfilling your duty in my oath - but don't think that makes you special in any way or gives you rights with me. You're still just a foreign monster, and one victory over me won't change that!' On that note, she turns away and walks off without a look back."; 
	otherwise:    [human player]
		say "     As she pulls her clothes back on, Sonya gives your naked body a glance that lingers for a moment, then she shakes her head. 'You weren't half bad in fulfilling your duty in my oath - but don't think that makes you special in any way or gives you rights with me. You're still just an outlander, and one victory over me won't change that!' On that note, she turns away and walks off without a look back.";

to say VikingLossSex:               [second time with the player]          
	if cocks of player > 0:
		say "     After following the young viking to a secluded spot behind the crest of a dune, you watch Sonya take off her armor and then the rest of her clothes, revealing the pale-skinned perfection of her well-trained body. Now completely naked, her perky breasts bouncing as she moves, the young Viking moves to lie down in the sand, spreading her legs a bit and looking up expectantly at you. 'Come on, claim your prize.' Feeling decidedly overdressed, you quickly remove your own clothes, freeing your by now fully hard erection.";
		say "     [WaitLineBreak]";		
		say "     Following your stiff organ's lead, you kneel between Sonya's legs, running your hands down over the smooth skin of her legs then reaching out to cup her breasts. She moans softly as you stroke them and move on to taking her nipples, one after another, into your mouth and suckle on them. 'That feels *gasp* great, but... I need you in me - Now!' she says, her hand sliding down your body to grasp your hard shaft and setting it against her moist pussy lips. Eager to fulfill her wish, you thrust into her body, sliding deeper and deeper until you bottom out. It feels amazing to have her warm and tight passage stretched around your manhood, a sentiment clearly shared by the Nordic warrior-woman. You rest like that for a moment, balls deep inside this pale beauty, letting her get used to it.";
		say "     Soon, Sonya moans 'Go on. Take me!', her legs wrapping around your hips to pull you deeper into her vagina. Taking up sliding out then pounding deep into her again, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. Her arms wrap around your upper body, pulling you fully on top of her as she seeks your lips with hers, hungrily making out with you. For a while, anything but the wild and urgent sex you have with her is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
		say "     [WaitLineBreak]";
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, the muscles in her vagina tightening their grip on your cock as the Viking orgasms. Not to lag too far behind, you abandon all restraint, grinding against her crotch urgently, and blow your load moments later. Pulse after pulse of your fertile seed shoot deep into the young woman's insides.";
		say "     Exhausted, you stay on top of her, still with your cock inside, and try to catch your breath. Looks like Sonya has other ideas... suddenly the world spins as she rolls the two of you over until she's on top and straddling your hips. With a new composure, now that her lusts have been satisfied, she pulls off your softening shaft and cleans up a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her gear.";
	otherwise if cunts of player > 0:            [female]
		say "     After following the young viking to a secluded spot behind the crest of a dune, you watch Sonya take off her armor and then the rest of her clothes, revealing the pale-skinned perfection of her well-trained body. There is a certain... urgency to her movements, as you guess there would be with her a virgin and all. Now completely naked, her perky breasts bouncing as she moves, the young Viking moves to lie down in the sand, spreading her legs a bit and looking up expectantly at you. 'Come on, claim your prize - But you better be good. I've been waiting a long time for this.' Feeling decidedly overdressed, you quickly remove your own clothes, revealing your own pussy.";
		say "     [line break]";
		say "     With a chuckle, Sonya remarks 'I come prepared...' She stretches over to the pile of her clothing, opening up her satchel and... pulls out a bright green double headed dildo. Your eyes riveted to the rubber sex toy, you kneel between the young Viking's legs and take it from her. Pushing one end in between her pussy lips, her moans encourage you to go deeper and deeper. Then it's time to get into the action yourself... bending the other end of the sex toy up a bit, you slide it into your vagina, then thrust forward a bit with your hips, making it move in both of you. You still have to hold on to it when you pull back, but you can fuck each other, in a fashion. As you are grinding against each other at the hips, Sonya's hands roam over your body, stroking and touching you. It feels amazing to be so intimately close to her, and feeling her movements through the rubber cock you two share.";
		say "     Soon, Sonya moans 'Harder, harder!', her legs wrapping around your hips to make you push the dildo deeper into her vagina. Taking up sliding it out then pounding deep into her again, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. Her arms wrap around your upper body, pulling you fully on top of her as she seeks your lips with hers, hungrily making out with you. For a while, anything but the wild and urgent sex you have with her is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
		say "     [WaitLineBreak]";
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo connecting you. Not to lag too far behind, you push the sex toy deeper into yourself, rubbing it against your inner walls until you reach your peak a moment later. A trickle of your femcum runs down over the sex toy, to drip down into she sand with your partner's.";
		say "     Exhausted, you stay on top of her, still with the dildo connecting you, and try to catch your breath. Looks like Sonya has other ideas... suddenly the world spins as she rolls the two of you over until she's on top and straddling your hips. With a new composure, now that her lusts have been satisfied, she pulls the rubber cock out of both of you and cleans up a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her other gear.";
	otherwise:                                   [neuter]
		say "     After following the young viking to a secluded spot behind the crest of a dune, you watch Sonya take off her armor and then the rest of her clothes, revealing the pale-skinned perfection of her well-trained body. There is a certain... urgency to her movements, as you guess there would be with her a virgin and all. Now completely naked, her perky breasts bouncing as she moves, the young Viking moves to lie down in the sand, spreading her legs a bit and looking up expectantly at you. 'Come on, claim your prize - But you better be good. I've been waiting a long time for this.' Feeling decidedly overdressed, you quickly remove your own clothes, revealing your bare, genital-less crotch.";
		say "     Sonya looks at you and remarks 'I still don't know how you can live without... oh well. Luckily, I come prepared...' She stretches over to the pile of her clothing, opening up her satchel and... pulls out a bright green double headed dildo. Your eyes riveted to the rubber sex toy, you kneel between the young Viking's legs and take it from her. Pushing one end in between her pussy lips, her moans encourage you to go deeper and deeper.";
		say "     [WaitLineBreak]";
		say "     Sliding the sex toy in and out of her, you slowly fuck Sonya while your other hand explores her body, stroking over soft skin and fondling her breasts. With her writhing in pleasure under your ministrations, there soon is a gasp of 'Kiss me', and you eagerly comply, moving up on top of her and finding her lips with yours. It feels amazing to be so intimately close to her, and making out as you fuck her with a dildo.";
		say "     Before long, Sonya moans 'Harder, harder!' her arms pulling you tight against her. Taking up the speed of your thrusts into her, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. It's great fun finding out what she likes best and how you can make her squeal in delight. For a while, anything but making out, touching and fucking is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
		say "     [WaitLineBreak]";
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo in your hand as her inner muscles grip it. A trickle of her femcum runs down over the sex toy, to drip down into she sand.";
		say "     After a moment of catching her breath, Sonya looks up at you and... suddenly the world spins as she rolls the two of you over until she's on top and straddling your hips. With a new composure, now that her lusts have been satisfied, she pulls the rubber cock out herself and cleans up a bit by rubbing off with the beach's very fine dry sand. Then she goes to collect her other gear.";
	say "     [line break]";
	if the player is not facially human or the player is not bodily human or the player is not skintone human:    [non-human player = a monster, in her words]    
		say "     As she pulls her clothes back on, Sonya gives your naked body a glance that lingers for a moment, and you can almost see lust and desire flickering up in her eyes again. Then she shakes her head. 'You're not bad at all at this - or fighting, I have to admit. But now I've got to go, monster. Raiding targets don't scout themselves, you know...' She winks at you, then walks away, giving you a short look back as she climbs over the crest of the dune.";
	otherwise:    [human player]
		say "     As she pulls her clothes back on, Sonya gives your naked body a glance that lingers for a moment, and you can almost see lust and desire flickering up in her eyes again. Then she shakes her head. 'You're not bad at all at this - or fighting, I have to admit. But now I've got to go, outlander. Raiding targets don't scout themselves, you know...' She winks at you, then walks away, giving you a short look back as she climbs over the crest of the dune.";

to say AffectionateVikingLossSex:   [3+ times with the player]       
	if cocks of player > 0:                      [male+herm]
		say "     Hand in hand, you climb over the crest of a nearby dune, stopping several times on the way to share hungry kisses. After finally arriving in a somewhat protected spot, out of sight from the beach, Sonya pushes you to sit in the sand and starts to undress in a hot little strip-show. It's amazing how arousing she can make taking off scale mail armor and then piece by piece her other clothing. She quickly has you so hot and bothered that you just can't resist standing up and 'helping her' a bit, pulling off articles of clothing and caressing her. Soon she is completely naked, revealing the pale-skinned perfection of her well-trained body. A beaming smile on her face, she starts undressing you too, rubbing her breasts and body against you as you're stripped bare.";
		say "     Sonya gooses your ass, daring you to catch her, and runs off a few steps, her perky breasts bouncing as she moves. With her not really trying to get away, you quickly catch her, embracing her as you plant a kiss on her lips. Holding on you, she lets herself fall into the sand on the side of the dune, and you find yourself lying on the eager young woman, your cock poking against her pubic mound. Not one to waste such an opportunity, you move your hips a bit till the tip of your manhood brushes over her nether lips, then thrust in, sinking deep into your Viking's moist vagina.";
		say "     [WaitLineBreak]";		
		say "     As you bottom out inside her, Sonya wraps her legs around your hips, holding you tight against herself. Her arms pull your upper body down on her too, so she can make out with you. In between kisses she pants 'Fuck me hard!' and you comply eagerly, pulling out most of your shaft before plunging back in in a fast rhythm. The sexy Viking even pushes down her hips to meet each of your thrusts and pulls you down on her with her legs around your ass. It feels amazing to have her warm and tight passage stretched around your manhood as you are pounding the Nordic warrior-woman's pussy. For a while, anything but the wild and urgent sex you have with her is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
		say "     [WaitLineBreak]";
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, the muscles in her vagina tightening their grip on your cock as the Viking orgasms. Not to lag too far behind, you abandon all restraint, grinding against her crotch urgently, and blow your load moments later. Pulse after pulse of your fertile seed shoot deep into the young woman's insides.";
		say "     Exhausted, you stay on top of her, still with your cock inside, and try to catch your breath. She strokes your back softly, content in just lying there with you for a while, resting and holding one another. Then, she sighs, rubbing your nose with hers before sliding out from under you and sitting up. After cleaning up a bit by rubbing off with the beach's very fine dry sand, she stands up and goes to collect her gear.";
		if VikingPregnancy is 0:              [not already preggers]
			let VikingPregChance be a random number from 1 to 20;  	
			if VikingPregChance > 10:           [50% chance]
				now VikingPregCounter is 48;      [48 turns till birth] 
				now VikingPregnancy is 1;					[invisibly pregnant]
				if the player is not facially human or the player is not bodily human or the player is not skintone human:     [player a legendary monster]
					now VikingKidShape is bodyname of player;					
				otherwise:    [human player]		
					now VikingKidShape is "human";		
	otherwise if cunts of player > 0:            [female]
		say "     Hand in hand, you climb over the crest of a nearby dune, stopping several times on the way to share hungry kisses. After finally arriving in a somewhat protected spot, out of sight from the beach, Sonya pushes you to sit in the sand and starts to undress in a hot little strip-show. It's amazing how arousing she can make taking off scale mail armor and then piece by piece her other clothing. She quickly has you so hot and bothered that you just can't resist standing up and 'helping her' a bit, pulling off articles of clothing and caressing her. Soon she is completely naked, revealing the pale-skinned perfection of her well-trained body. A beaming smile on her face, she starts undressing you too, rubbing her breasts and body against you as you're stripped bare.";
		say "     Acting all inconspicuous as she picks up the green dildo you used before from among her things, Sonya saunters over to you. She gooses your ass, daring you to catch her, and runs off a few steps, her perky breasts bouncing as she moves. With her not really trying to get away, you quickly catch her, embracing her as you plant a kiss on her lips. Holding on you, she lets herself fall into the sand on the side of the dune, and you find yourself lying on the eager young woman, your crotch rubbing against hers. It's a matter of moments to put the double-headed dildo back to its intended use, connecting you two pussy to pussy.";
		say "     [WaitLineBreak]";	
		say "     Holding on to the rubber sex toy when you pull back, you can fuck each other, in a fashion. As you are grinding against each other at the hips, Sonya's hands roam over your body, stroking and touching you. It feels amazing to be so intimately close to her, and feeling her movements through the rubber cock you two share. Soon, Sonya moans 'Harder, harder!', her legs wrapping around your hips to make you push the dildo deeper into her vagina. Taking up sliding it out then pounding deep into her again, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. Her arms wrap around your upper body, pulling you fully on top of her as she seeks your lips with hers, hungrily making out with you. For a while, anything but the wild and urgent sex you have with her is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";		
		say "     [WaitLineBreak]";
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo connecting you. Not to lag too far behind, you push the sex toy deeper into yourself, rubbing it against your inner walls until you reach your peak a moment later. A trickle of your femcum runs down over the sex toy, to drip down into she sand with your partner's.";
		say "     Exhausted, you stay on top of her, the dildo connecting you, and try to catch your breath. She strokes your back softly, content in just lying there with you for a while, resting and holding one another. Then, she sighs, rubbing your nose with hers before sliding out from under you and sitting up. After cleaning up a bit by rubbing off with dry sand, she stands up and goes to collect her gear.";
	otherwise:                                   [neuter]
		say "     Hand in hand, you climb over the crest of a nearby dune, stopping several times on the way to share hungry kisses. After finally arriving in a somewhat protected spot, out of sight from the beach, Sonya pushes you to sit in the sand and starts to undress in a hot little strip-show. It's amazing how arousing she can make taking off scale mail armor and then piece by piece her other clothing. She quickly has you so hot and bothered that you just can't resist standing up and 'helping her' a bit, pulling off articles of clothing and caressing her. Soon she is completely naked, revealing the pale-skinned perfection of her well-trained body. A beaming smile on her face, she starts undressing you too, rubbing her breasts and body against you as you're stripped bare.";
		say "     Acting all inconspicuous as she picks up the green dildo you used before from among her things, Sonya saunters over to you. She gooses your ass, daring you to catch her, and runs off a few steps, her perky breasts bouncing as she moves. With her not really trying to get away, you quickly catch her, embracing her as you plant a kiss on her lips. Holding on you, she lets herself fall into the sand on the side of the dune, and you find yourself lying on the eager young woman, your crotch rubbing against hers. It's a matter of moments to put the double-headed dildo back to its intended use, sliding in and out of your partner as you guide it with your hand.";
		say "     [WaitLineBreak]";	
		say "     You slowly fuck Sonya while your other hand explores her body, stroking over soft skin and fondling her breasts. With her writhing in pleasure under your ministrations, there soon is a gasp of 'Kiss me', and you eagerly comply, moving up on top of her and finding her lips with yours. It feels amazing to be so intimately close to her, and making out as you fuck her with a dildo.";
		say "     Before long, Sonya moans 'Harder, harder!' her arms pulling you tight against her. Taking up the speed of your thrusts into her, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. It's great fun finding out what she likes best and how you can make her squeal in delight. For a while, anything but making out, touching and fucking is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
		say "     [WaitLineBreak]";
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo in your hand as her inner muscles grip it. A trickle of her femcum runs down over the sex toy, to drip down into she sand.";
		say "     Exhausted, you stay on top of her, the dildo connecting you, and try to catch your breath. She strokes your back softly, content in just lying there with you for a while, resting and holding one another. Then, she sighs, rubbing your nose with hers before sliding out from under you and sitting up. After cleaning up a bit by rubbing off with dry sand, she stands up and goes to collect her gear.";
	say "     [line break]";	
	if the player is not facially human or the player is not bodily human or the player is not skintone human:    [non-human player = a monster, in her words]    
		say "     As she pulls her clothes back on, Sonya gives your naked body a glance that lingers for a moment, and you can almost see lust and desire flickering up in her eyes again. Then she shakes her head with a sigh. 'I'd have another go with you, my handsome monster, but... there's my duty to be done. Raiding targets don't scout themselves, you know...' She kneels next to you for a quick kiss, then stands up and walks away, turning her head for one last look back as she climbs over the crest of the dune.";
	otherwise:    [human player]
		say "     As she pulls her clothes back on, Sonya gives your naked body a glance that lingers for a moment, and you can almost see lust and desire flickering up in her eyes again. Then she shakes her head with a sigh. 'I'd have another go with you, my outlander warrior, but... there's my duty to be done. Raiding targets don't scout themselves, you know...' She kneels next to you for a quick kiss, then stands up and walks away, turning her head for one last look back as she climbs over the crest of the dune.";
			
to say VikingDesc:
	if debugactive is 1:
		say "DEBUG -> VIKINGRELATIONSHIP: [VikingRelationship], VIKINGPREGNANCY: [VikingPregnancy], PREGCOUNTER: [VikingPregCounter], KIDCOUNTER: [VikingKidCounter] <- DEBUG[line break]";	
	if VikingRelationship is 0:   [first meeting]
		say "     As you walk along the beach, you notice something moving out on the water. Turning your gaze toward it and straining your eyes a bit, you recognize it as a Viking longboat with a big square sail. Where did that thing come from? On the other hand... with all the things happening these days, the sudden appearance of Vikings isn't all that surprising. As you watch, you see a smaller boat being rowed towards the bigger one. Looks like they went ashore a while ago - or maybe dropped off som-[line break][line break]";
		say "     *thunk, thunk* sounds come from behind you, and as you turn around you find yourself confronted with a female Viking, hitting the broad side of her sword against her round wooden shield to attract your attention. She's got shoulder-length blond hair, the impressive physique of a seasoned fighter and is dressed in light scale mail. Her gaze wanders over you appraisingly, then she says:[line break]";
		if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
			say "     'So we did land in the land of the legends, with monsters roaming about. Let's see if the old men spoke the truth when they told their stories about oh so powerful beasts. Let's fight, creature!' A challenging look in her eye, she brings up her shield again and raises the sword, rushing at you.";
		otherwise:    [human player to be raided]
			say "     'So you're an inhabitant of this strange land? I'm not impressed. I bet you'll just squawk like a plucked chicken as all the others did when we carried off the loot. But who knows - prove me wrong if you can, weakling!' A challenging look in her eye, she brings up her shield again and raises the sword, rushing at you.";     
		now VikingRelationship is 1;
	otherwise if VikingRelationship is 1: [never won against her]
		say "     Walking along the beach, you suddenly find yourself confronted with a female Viking, running down the raise of the dune where she lay in wait and rushing at you. The attractive blond woman in her light scale mail brandishes her sword and shield as she lets her gaze wander over you appraisingly.";
		if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
			say "     'Another monster - or is it the same one? Bah, who cares.' She gives you a challenging look. 'Let's see if at least one of you critters is as powerful and strong as the old men told in their stories.' She brings up her shield again and raises the sword, rushing at you.";
		otherwise:    [human player to be raided]
			say "     'Another sheep waiting to be shorn - or is it the same one? Bah, who cares.' She gives you a challenging look. 'Fear me and get ready to loose your wool - or prove me wrong if you can, weakling!' She brings up her shield again and raises the sword, rushing at you.";      
	otherwise if VikingRelationship is 2:  [player beat her once]
		say "     Walking along the beach, you suddenly find yourself confronted with a female Viking, running down the raise of the dune where she lay in wait and rushing at you. The attractive blond woman in light scale mail brandishes her sword and shield as she lets her gaze wander over you appraisingly.";
		if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
			say "     'So we meet again, monster.' She gives you a challenging look. 'You beat me once, but I bet that was just luck. This time, I'll show you!' She brings up her shield again and raises the sword, rushing at you.";
		otherwise:    [human player to be raided]
			say "     'So we meet again, outlander.' She gives you a challenging look. 'You beat me once, but I bet that was just luck. This time, I'll show you!' She brings up her shield again and raises the sword, rushing at you.";
	otherwise if VikingRelationship is 3:  [player beat her twice]
		say "     Walking along the beach, you suddenly find yourself confronted with a female Viking, running down the raise of the dune where she lay in wait and rushing at you. The attractive blond woman in light scale mail brandishes her sword and shield as she lets her gaze wander over you appraisingly.";
		if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
			say "     'Face to face again, monster.' She gives you a challenging look. 'You're not a bad fighter, I have to admit - but this time, I'll show you!' She brings up her shield again and raises the sword, rushing at you.";
		otherwise:    [human player to be raided]
			say "     'Face to face again, little warrior.' She gives you a challenging look. 'You're not a bad fighter, I have to admit - but this time, I'll show you!' She brings up her shield again and raises the sword, rushing at you.";
	otherwise if (VikingRelationship > 3 and VikingRelationship < 7) or VikingRelationship is 20:  [player beat her three+ times]
		if VikingPregnancy is 0:
			say "     Walking along the beach, you suddenly find yourself confronted with a female Viking, running down the raise of the dune where she lay in wait and rushing at you. The attractive blond woman in light scale mail brandishes her sword and shield as she lets her gaze wander over you.";
			if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
				say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] monster. You're everything - and more - that the old men said you'd be when they told us the legends.' She gives you a challenging look. 'How about you prove your power again and then ravish me? Let's fight!' She brings up her shield again and raises the sword, rushing at you.";
			otherwise:    [human player to be raided]
				say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] warrior. I'll admit that you've proven me wrong about your people again and again.' She gives you a challenging look. 'How about you show me your power another time and then ravish me? Let's fight!' She brings up her shield again and raises the sword, rushing at you.";     
		if VikingPregnancy is 1:
			say "     Walking along the beach, you suddenly find yourself confronted with a female Viking, running down the raise of the dune where she lay in wait and rushing at you. The attractive blond woman in light scale mail brandishes her sword and shield as she lets her gaze wander over you.";
			if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
				say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] monster. I've been feeling... different, lately. Looks like your seed has done its work and we'll have a child.' She gives you a challenging look. 'But don't you think that'll mean I'll end up a tame brood-cow. I can fight, no matter what - and if you want another tumble in the dunes, you'll have to fight!' She brings up her shield again and raises the sword, rushing at you.";
			otherwise:    [human player to be raided]
				say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] warrior. I've been feeling... different, lately. Looks like your seed has done its work and we'll have a child.' She gives you a challenging look. 'But don't you think that'll mean I'll end up a tame brood-cow. I can fight, no matter what - and if you want another tumble in the dunes, you'll have to fight!' She brings up her shield again and raises the sword, rushing at you.";   
		otherwise if VikingPregnancy is 2:
			say "     Walking along the beach, you suddenly find yourself confronted with a female Viking, running down the raise of the dune where she lay in wait and rushing at you. The attractive blond woman in light scale mail brandishes her sword and shield as she lets her gaze wander over you. There's somewhat of a bulge noticeable in her midriff, showing proof of your sperm's virility.";
			if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
				say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] monster. Our child grows quick, as you can see. He'll be as powerful as his father, for sure.' She rubs her belly through the tunic and gives you a challenging look. 'But don't you think I've become a tame brood-cow now. I'd love another tumble in the dunes, but you'll still have to prove your power. Let's fight!' She brings up her shield again and raises the sword, rushing at you.";
			otherwise:    [human player to be raided]
				say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] warrior. Our child grows quick, as you can see. He'll be as powerful as his father, for sure.' She rubs her belly through the tunic and gives you a challenging look. 'But don't you think I've become a tame brood-cow now. I'd love another tumble in the dunes, but you'll still have to prove your power. Let's fight!' She brings up her shield again and raises the sword, rushing at you.";     
		otherwise if VikingPregnancy is 3:
			say "     Walking along the beach, you suddenly find yourself confronted with a female Viking, running down the raise of the dune where she lay in wait and rushing at you. The attractive blond woman in a woolen tunic brandishes her sword and shield as she lets her gaze wander over you. She is quite obviously pregnant, with a bulging belly showing proof of your sperm's virility.";
			if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
				say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] monster. Our child told me you were close. He always gets more active when you're there.' She rubs her belly through the tunic and gives you a challenging look. 'But don't you think I've become a tame brood-cow now. I'd love another tumble in the dunes, but you'll still have to prove your power. Let's fight!' She brings up her shield again and raises the sword, rushing at you.";
			otherwise:    [human player to be raided]
				say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] warrior. Our child told me you were close. He always gets more active when you're there.' She rubs her belly through the tunic and gives you a challenging look. 'But don't you think I've become a tame brood-cow now. I'd love another tumble in the dunes, but you'll still have to prove your power. Let's fight!' She brings up her shield again and raises the sword, rushing at you.";     
		otherwise if VikingPregnancy is 4:
			say "     Walking along the beach, you suddenly find yourself confronted with a female Viking, running down the raise of the dune where she lay in wait and rushing at you. The attractive blond woman in light scale mail brandishes her sword and shield as she lets her gaze wander over you.";
			if a random chance of 1 in 2 succeeds:  [kid was a boy]
				if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
					say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] monster. Our child is strong and healthy, a beautiful little boy. He looks a lot like you and will become a powerful warrior for sure, being half-monster like in the legends.' Biting her lip, she gives you a look, half challenging half needful. 'I miss having part of you inside me, and by body tells me I'm ready again already. How about you prove your power over me again and ravish me? Let's fight!' She brings up her shield again and raises the sword, rushing at you.";
				otherwise:    [human player to be raided]
					say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] warrior. Our child is strong and healthy, a beautiful little boy. He looks a lot like you and will become a powerful warrior for sure.' Biting her lip, she gives you a look, half challenging half needful. 'I miss having part of you inside me, and by body tells me I'm ready again already. How about you prove your power over me again and ravish me? Let's fight!' She brings up her shield again and raises the sword, rushing at you."; 
					if VikingKidGender is 0:
						now VikingKidGender is 1;
					otherwise if VikingKidGender is 2:
						now VikingKidGender is 3;
			otherwise:  [kid was a girl]
				if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
					say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] monster. Our child is strong and healthy, a beautiful little girl. She looks a lot like you and will become a powerful warrior for sure, being half-monster like in the legends.' Biting her lip, she gives you a look, half challenging half needful. 'I miss having part of you inside me, and by body tells me I'm ready again already. How about you prove your power over me again and ravish me? Let's fight!' She brings up her shield again and raises the sword, rushing at you.";
				otherwise:    [human player to be raided]
					say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] warrior. Our child is strong and healthy, a beautiful little girl. She looks a lot like you and will become a powerful warrior for sure.' Biting her lip, she gives you a look, half challenging half needful. 'I miss having part of you inside me, and by body tells me I'm ready again already. How about you prove your power over me again and ravish me? Let's fight!' She brings up her shield again and raises the sword, rushing at you."; 				
					if VikingKidGender is 0:
						now VikingKidGender is 2;
					otherwise if VikingKidGender is 1:
						now VikingKidGender is 3;					
			now VikingPregnancy is 0;    [reset into receptive state]
	otherwise if VikingRelationship is 7:  [Sonya is on the ship, her cousin appears and offers an ultimatum]
		now VikingUltimatum is 24;  	[72h to appear for the challenge]
		now Chieftain's Challenge is unresolved;
		if the player is not facially human or the player is not bodily human or the player is not skintone human:     [they see the player as a monster]
			say "     Walking along the beach, you suddenly find yourself confronted with two male Vikings, rushing towards you as they spot you. The young blond men in light scale mail carry round shields and brandish sharp-looking axes - and are pretty enraged. Seems like your previous encounters Sonya didn't go over too well with these two... brothers, you'd say, from their similar looks. For a moment, it looks like one of them would just keep coming and attack you, until he's stopped in his tracks by the other calling out 'Stop, Svetjalf. This... creature is not ours to slay. We've got a message to deliver.'";
			say "     The Viking turns to you and continues with a snarl 'So you're the beast that despoiled our cousin? How did you beat her in a fight - or make her believe you did? Magic? Some other treachery? Clearly you've got her controlled somehow, or she wouldn't praise an outlander beast so highly. Bah.' He spits in the sand before your feet. 'Our chieftain Frithjof sent us to pass on a message. He calls upon you, the one who dishonored his daughter, to come to those big rocks at the end of the beach during the next three days. You'll fight - in front of the rest of the clan, to prevent any of your tricks - and he'll spill your guts on the sand. If you at least have the decency to appear and die like a man would, that'll restore some honor to Sonya...' With that said, he and his brother give you a final angry stare, then turn around and walk off to a waiting rowboat some way along the beach.";
		otherwise:  [human-like player]
			say "     Walking along the beach, you suddenly find yourself confronted with two male Vikings, rushing towards you as they spot you. The young blond men in light scale mail carry round shields and brandish sharp-looking axes - and are pretty enraged. Seems like your encounters Sonya didn't go over too well with these two... brothers, you'd say, from their similar looks. For a moment, it looks like one of them would just keep coming and attack you, until he's stopped in his tracks by the other calling out 'Stop, Svetjalf. This... outlander is not ours to slay. We've got a message to deliver.'";
			say "     The Viking turns to you and continues with a snarl 'So you're the bastard that despoiled our cousin? How did you beat her in a fight - or make her believe you did? Magic? Some other treachery? Clearly you've got her controlled somehow, or she wouldn't praise an outlander so highly. Bah.' He spits in the sand before your feet. 'Our chieftain Frithjof sent us to pass on a message. He calls upon you, the one who dishonored his daughter, to come to those big rocks at the end of the beach during the next three days. You'll fight - in front of the rest of the clan, to prevent any of your tricks - and he'll spill your guts on the sand. If you at least have the decency to appear and die like a man would, that'll restore some honor to Sonya...' With that said, he and his brother give you a final angry stare, then turn around and walk off to a waiting rowboat some way along the beach.";			
		say "     [line break]";
		say "     You've got [bold type]72 hours (24 turns)[roman type] from now on to appear at the [bold type]chieftain's challenge[roman type] here on the beach and fight it out with him. Beating the man in an honest one on one duel should hopefully convince the gathered vikings that you didn't trick or bespell Sonya and really are worthy of her.";
		say "     [line break]";
		say "     Prepare yourself well for the duel - you could be gutted like a fish (and die) - or gain the admiration of Vikings if you win (and see Sonya again).";
		now combat abort is 1;		
		now VikingRelationship is 8;		
	otherwise if VikingRelationship is 8:  [ultimatum is ticking away]
		if VikingUltimatum > 16:
			say "     Walking along the beach, you suddenly find yourself confronted with two male Vikings, rushing towards you as they spot you. It's Sonya's two cousins again, who snarl and glower at you as they get closer. 'Remember, you've got [bold type]three days[roman type] to show up for the [bold type]chieftain's challenge[roman type]. Less than that by now, really. Have at least the decency to show up and die properly - Sonya will never be able to succeed her father as leader of the clan now, disgraced as she is by losing herself to some of your tricks, but she'll at least regain some of her honor that way.' says the more talkative of them before they move on.";	
		otherwise if VikingUltimatum > 8:
			say "     Walking along the beach, you suddenly find yourself confronted with two male Vikings, rushing towards you as they spot you. It's Sonya's two cousins again, who snarl and glower at you as they get closer. 'We waited for you yesterday, coward. Have at least the decency to show up and die properly - Sonya will never be able to succeed her father as leader of the clan now, disgraced as she is by losing herself to some of your tricks, but she'll at least regain some of her honor that way. You've got [bold type]two days[roman type] left to show up for the [bold type]chieftain's challenge[roman type].' says the more talkative of them before they move on.";	
		otherwise:
			say "     Walking along the beach, you suddenly find yourself confronted with two male Vikings, rushing towards you as they spot you. It's Sonya's two cousins again, who snarl and glower at you as they get closer. 'You're not gonna show up and allow Sonya to reclaim some of her honor as she watches you bleed out? Filthy coward! You've got [bold type]one day[roman type] left to show up for the [bold type]chieftain's challenge[roman type].' says the more talkative of them, only barely holding back from attacking you.";	
		now combat abort is 1;
	otherwise if VikingRelationship is 9:
		say "     Gripping the handle of his axe tightly, the Viking chieftain points at you with it. 'I still don't know what you did to my daughter, but you'll pay for it, may it have been a spell, drug or anything else. No amount of trickery can save you now!' Then he attacks, rushing at you with a loud war-cry.";
	otherwise if VikingRelationship is 100:
		say "     Error: The vikings should have left the area since you didn't snow up for the duel with their chief. Please report how you saw this.";		

to say VikingAttacks:
	if VikingRelationship is 9:	
		say "[one of]Chief Frithjof swings his axe and lands a hit on you, though you luckily manage to turn away from it in time so it just leaves a bleeding cut and doesn't take your arm off.[or]The Viking chieftain slams his shield against your chest, making you stumble backwards dazedly.[or]A sudden kick from the Viking Chieftain against the side of your leg leaves you numb and weakened.[or]You manage to evade a swing of his axe, but the chieftain slams the hilt of the weapon into your stomach, making you double over in pain.[or]Frithjof slams his shield into your chest, driving the air from your lungs.[or]Rushing at you with his shield held in front of him, Frithjof slams against you and bowls you over.[at random]";		
	otherwise:
		say "[one of]She lands a shallow cut on you. Luckily, she's not trying to kill you, or she could have skewered you there...[or]The Viking woman slaps the broad side of her sword against your head, leaving you seeing stars for a moment.[or]A sudden kick against the side of your leg leaves you numb and weakened.[or]She slams her shield into your chest, driving the air from your lungs.[at random]";
												
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Viking"; 
	now attack entry is "[VikingAttacks]";
	now defeated entry is "[Viking loses]";      
	now victory entry is  "[Viking wins]";         
	now desc entry is "[VikingDesc]";            
	now face entry is "a handsome young man's, framed by a mane of shoulder-long, unkempt blond hair. Your cheeks and chin sport a short blond beard";
	now body entry is "that of a young man, quite fit and healthy. It is garbed in a woolen tunic and pants, plus a pair of leather boots";
	now skin entry is "smooth, pale"; [ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a tight, firmly muscled butt."; [ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "human"; [ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "it shapes itself into a handsome male visage, the cheeks and chin covered by a short blond beard. Your hair turns into a shoulder-length blond mane"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "it is reshaped into a that of a young man, and a fit and healthy one at that"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "it smoothes out, becoming the pale tint of a northern European"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "it gets tight and firmly muscled"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it becomes human-shaped"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 20;
	now dex entry is 20;
	now sta entry is 18;
	now per entry is 15;
	now int entry is 12;
	now cha entry is 18;
	now sex entry is "Male";
	now hp entry is 80;
	now lev entry is 9;
	now wdam entry is 15;
	now area entry is "Beach";                [ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;                     [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 10;              [ Length infection will make cock grow to if cocks]
	now cock width entry is 5;                [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;                   [ Number of Breasts infection will give you. ]
	now breast size entry is 0;               [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;          [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;                     [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;               [ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 0;                [ Width of female sex  infection will try and give you ] 
	now libido entry is 10;                   [ Amount player Libido will go up if defeated ]
	now loot entry is "mead horn";            [ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 40;               [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;                     [ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "Nordic";    [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "human";                [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;                 [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;             [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;         [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;            [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";         [ Row used to designate any special combat features, "default" for standard combat. ]
		
Section 3 - Events

	
Chieftain's Challenge is a situation. The level of Chieftain's Challenge is 1. Chieftain's Challenge is resolved.
The sarea of Chieftain's Challenge is "Beach".
		 
Instead of resolving a Chieftain's Challenge:		
	if the player is not facially human or the player is not bodily human or the player is not skintone human:     [they see the player as a monster]
		say "     Arriving at the rocky part of the beach, you find an armored grey-bearded Viking waiting for you there. The old man glowers at you as you come closer, then calls in a disparaging tone 'So you actually showed up, outlander monster. I'd have expected you to run like a coward.' Turning from you to climb on the largest of the rocks, he waves to the viking ship out in the ocean, signaling them. You see smaller boats getting lowered into the water, Vikings getting in them and rowing towards the shore. 'It won't be long until the clan is here to witness your death. Chief Frithjof will gut you for what you did to Sonya' the old man says as he climbs back down and leans against the rocks to watch the ship and boats.";
		say "     [WaitLineBreak]";
		say "     It takes several trips from and to the ship to ferry all the Vikings over (except a few watch-standers on the ship), though with lots of young blond and red-headed young men to row the boats, they're still quicker than you'd have expected. Soon there's a circle of more than thirty Vikings around you, mostly men but also some women in various age-groups. The majority looks to be about 20-30, though there are some grey-beards and still beardless youngsters too. All of them - except Sonya, who stands flanked by her two cousins - give you rather hostile looks and there's a background murmur of speculation about you. You hear them call you all kinds of names as they speculate what you used to bespell or control Sonya.";
		say "     Everyone goes silent as a large and muscular man steps forward into the ring of people, pretty imposing in scale-mail armor. He's got the bearing of a seasoned fighter and is armed with a wickedly sharp-looking axe and a large round shield. From his scowl at you and the similar looks, this must be Sonya's father.";
	otherwise:     [player is a human-like person]
		say "     Arriving at the rocky part of the beach, you find an armored grey-bearded Viking waiting for you there. The old man glowers at you as you come closer, then calls in a disparaging tone 'So you actually showed up, outlander bastard. I'd have expected you to run like a coward.' Turning from you to climb on the largest of the rocks, he waves to the viking ship out in the ocean, signaling them. You see smaller boats getting lowered into the water, Vikings getting in them and rowing towards the shore. 'It won't be long until everyone's here to witness your death. Chief Frithjof will gut you for what you did to Sonya' the old man says as he climbs back down and leans against the rocks to watch the ship and boats.";
		say "     [WaitLineBreak]";
		say "     It takes several trips from and to the ship to ferry all the Vikings over, though with lots of young blond and red-headed young men to row the boats, they're still quicker than you'd have expected. Soon there's a circle of more than thirty Vikings around you, mostly men but also some women in various age-groups. The majority looks to be about 20-30, though there are some grey-beards and still beardless youngsters too. All of them - except Sonya, who stands flanked by her two cousins - give you rather hostile looks and there's a background murmur of speculation about you. You hear them call you all kinds of names, wondering what kind of drug, poison, spell, or the like you used to control Sonya.";
		say "     Everyone goes silent as a large and muscular man steps forward into the ring of people, pretty imposing in scale-mail armor. He's got the bearing of a seasoned fighter and is armed with a wickedly sharp-looking axe and a large round shield. From his scowl at you and the similar looks, this must be Sonya's father.";
	say "     [line break]";		
	now VikingRelationship is 9;
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Viking":
			now monster is y;
			break;	
	choose row monster from the table of random critters;   [the chieftain is stronger than Sonya]
	now hp entry is 275;
	now monsterhp is 275;
	now lev entry is 15;
	now wdam entry is 30;
	now lootchance entry is 0;
	challenge "Viking";		
	if fightoutcome >= 20 and fightoutcome <= 29:									[lost]
		say "     [VikingDuelDeath]";
	otherwise if fightoutcome >= 30:		                        	[fled]			
		say "     [VikingDuelEscape]";
	otherwise if fightoutcome >= 10 and fightoutcome <= 19:  			[won]	
		say "     [VikingDuelVictory]";
	choose row monster from the table of random critters;   [restoring the original values]
	now hp entry is 80;
	now monsterhp is 80;
	now lev entry is 9;
	now wdam entry is 15;
	now lootchance entry is 40;		
	now Chieftain's Challenge is resolved;	
	now VikingUltimatum	is 0;   [finished, one way or another]	
	
to say VikingDuelDeath:
	say "     With a final combination of a shield-bash to the head and a heavy kick against your leg, you fall down into the sand. Holding your sprained - possibly broken - leg with both hands as you scream in pain, you don't even see the Viking Chieftain's axe raise and fall to put an end to your suffering - by separating your head from the body below.";	
	say "     The matter at hand dealt with, the Vikings move back to their boats and row out to the larger ship, many stopping to give your lifeless body a kick on the way over. The last one to leave is Sonya, giving your remains a disappointed look, then stepping into a boat to be brought back to the Viking ship.";
	now hp of player is -200;
	now tailname of player is "dead";
	Now facename of player is "dead";
	now skinname of player is "dead";
	now bodyname of player is "dead";
	now cockname of player is "dead";	
	end the game saying "You're dead - DEAD!";
	
to say VikingDuelEscape:
	say "     After you showed up to fight, it seems the Vikings assumed you had the honor to see it through till the end - which is why you totally managed to surprise them when you suddenly took off. You broke out of the circle of watchers, bowling two of them over and running away before they even realized what was happening. After a moment of shock, the gathered onlookers took up chase, throwing rocks and even one or two axes after you, resulting in many bruises and even a moderately severe cut.";
	say "     Followed by shouts of 'Coward', 'Wimp' and lots of worse terms, you're hunted almost to exhaustion by the enraged mob. Only by dashing through what looked like some talk or negotiation between the hyenas and leopardmen did you finally manage the lose them. Before the representatives of the two gangs managed to react with anything but growls at your sudden appearance, the viking lynch-mob ran straight into them, causing a free for all fight. Not even looking back to check what was happening there or if anyone was still following you, you just kept going until you finally arrived at the library, bloodied and exhausted.";
	now hp of player is 1;
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
		say "     A murmur goes through the crowd of Vikings, then Sonya steps forward, brushing off the hands of her cousins who half-heartedly try to hold her back. Coming to stand in the circle next to you, she gives the gathered crowd and her father an angry stare, then shouts 'I told you this monster was mighty in combat - I wouldn't have let anyone else touch me! But did anyone believe me? No - you just nattered old-wives tales about magic.' With a defiant glare at her father, Sonya moves to stand besides you.";	
	otherwise:
		say "     As you land blow after blow on the mighty Viking chieftain, the jeers and shouted abuse from the crowd of onlookers slowly ebb out until all of them finally just watch excitedly as the two of you fight on. A few minutes later, you land a solid blow against Frithjof's face, leaving the man to stumble backward a bit and shake his head to clear it. Wiping his bloodied lip, he spits a broken tooth into the sand, then meets your eyes with a glare - before suddenly giving you a grin and a hearty chuckle. 'Seems like I underestimated you, [if cunts of player > 0 and cocks of player is 0]girl[otherwise]boy[end if]. You can fight!'";
		say "     A murmur goes through the crowd of Vikings, then Sonya steps forward, brushing off the hands of her cousins who half-heartedly try to hold her back. Coming to stand in the circle next to you, she gives the gathered crowd and her father an angry stare, then shouts 'I told you this outlander was a powerful warrior - I wouldn't have let anyone else touch me! But did anyone believe me? No - you just nattered old-wives tales about magic.' With a defiant glare at her father, Sonya moves to stand besides you, a hand on your shoulder in support.";
	say "     [WaitLineBreak]";
	say "     Frithjof looks at you and Sonya, then nods. 'Hah - seems like we've got a wedding to celebrate! With you already having fucked the girl and having given her father a well-deserved thrashing to beat some sense into him, it's a done deal. Back to the ship - met for everyone!' A cheer goes through the gathered Vikings, and they come together to congratulate the two of you. Lifting Sonya and you into the air, they carry you along to the boats, set you down in one together and row back towards the large Viking ship.";
	say "     As you arrive there, Frithjof himself tells the few people who stayed on the boat what happened, then sends one of his nephew to get Sonya's sword. Drawing it out of its scabbard, he looks at the shining blade then offers it to you, hilt first. 'This is now yours, as well as is the duty to use it to protect your new wife with it. Not that my daughter will need much help here, she's no blushing shy bride.' With a grin, he lets the two of you come to the foredeck of the ship, puts your hands into each others and raises them high. 'They're now one, in front of the clan, and the gods.' he shouts getting a loud cheer as an answer.";
	say "     The celebration that follows is a quite wild affair, lots of singing and boasting as more than one cask of mead is carried up from under the deck. Horns of the sweet drink are filled and drunk, spilled and poured over people, making everyone more than a bit inebriated before long. Vikings really know how to party hard. A while into it, Sonya and you reenact your first victory over her, making a nice show out of it as you demonstrate blow after (cushioned) blow for the cheering Vikings. Finally, as she mimes swaying from your last hit, you pull your bride against yourself and give her a deep kiss, accompanied by a loud cheer of the surrounding people.";
	say "     [WaitLineBreak]";
	say "     As you come up for air, Sonya whispers to you 'Wanna show them what came next?', a lustful twinkle in her eye. Might just be the met talking in your drunkenness, but you feel an urge inside you to just go for it, fucking your Viking wife right here and now, in full view of everyone. Do you follow those urges?[line break]";
	if player consents:
		say "     You smile at Sonya and nod, then give her another kiss, after which she quickly goes below-deck, coming back up just moments later with a bundle of furs. She throws them down on a crate standing on deck, then shouts 'But that isn't all [if cunts of player > 0 and cocks of player is 0]she[otherwise]he[end if] did to me that day.' Then she undoes her belt, pulling her tunic up over her head and baring her shapely breasts and pale-skinned upper body before the crowd. Her trousers follow a second later, leaving your bride to walk up to you naked, swaying her hips. Taking your hand, she leads you to the improvised bedding, kissing your cheek and saying 'Show them what you can do, my love' before she lays down on it, her legs dangling over the edge and slightly spread.";
		say "     [line break]";
		say "     [VikingPublicSex]";
	otherwise:
		say "     You smile at Sonya, but shake your head, telling her it'd be too cruel to show all those men and women a perfect body - her perfect body - that they can never have. Not that you aren't tempted, you say with a grin, goosing Sonya's ass playfully. 'As you wish, [if cunts of player > 0 and cocks of player is 0]my wife[otherwise]my husband[end if]' she says, then gives you another quick kiss before going to fill your mead-horns again. Stories of battles and raids told by the other Vikings follow, although with another mead cask soon empty, the tales get more and more incomprehensible.";
		say "     Nevertheless, the party is great fun - at least what you remember of it when you wake up several hours later, lying in a pile of furs next to Sonya on her bed. Seems like the two of you wanted to get some action going at some point, but drunkenly fell asleep before you got more than halfway undressed. With a wince at the hangover almost splitting your skill, you stand up quietly, leaving your wife to sleep hers off in peace. Going back on deck, you find one man who isn't quite as bad off as yourself, then let him row you back to shore. As you leave the boat, he tells you how you can signal for a pickup when you want to return to the [bold type]Viking Ship[roman type].";		
	increase carried of viking sword by 1;
	now Viking Ship is known;
	now VikingRelationship is 20;

to say VikingPublicSex:
	if cocks of player > 0:                      [male+herm]
		say "     Accompanied by whistles and cheers from the drink Vikings, you quickly pull off your own clothes, letting them drop to the floor to lie with Sonya's, then step up to her, stroking the insides of her legs as you spread them a bit further. Your by now completely hard shaft rests hotly against her pubic mound as you lean over her and cup her breasts, taking one nipple, then the other into your mouth to gently suck on them. Then she pulls your head up to hers for a quick kiss, followed by a moaned 'Fuck me - now!'";
		say "     [WaitLineBreak]";
		say "     Who could resist their wife making such a demand - instantly, your hand is at your cock, aiming it straight at the swollen pussy lips of your beautiful Viking woman. Moving forward, you slide into her, spreading the opening of her sex around your erect shaft. Helped along by her legs wrapping around your hips, pulling you closer, you quickly bottom out in her, eliciting a shared moan between the two of you (and a cheer from the drunk spectators) as your crotch touches hers. Next, you pull back, taking out most of your shaft before thrusting it back in with an audible slap as your hips meet hers, then keep going in a fast rhythm. The sexy Viking pants and gasps in lust, gripping the furs under her tightly to hold on to something.";
		say "     It feels absolutely amazing to have her warm and tight passage stretched around your manhood as you pound the Nordic warrior-woman's pussy. For a while, anything but the wild and urgent sex you have with her is forgotten, though you think you remember feeling someone - or rather more than one someone - touch your back and rub the curve of your ass, just watching not being enough for some of the aroused Vikings.";
		say "     [WaitLineBreak]";
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster over time, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, the muscles in her vagina tightening their grip on your cock as the Viking orgasms. Not to lag too far behind, you abandon all restraint, grinding against her crotch urgently, and blow your load moments later. Pulse after pulse of your fertile seed shoot deep into the young woman's insides.";
		say "     Exhausted, you stay on top of her, still with your cock inside, and try to catch your breath. She strokes your back softly, then pulls your lips to hers, giving you a kiss. 'I am yours, husband' she says, then lets her head sink down on the fur under her. Wanting to stay close with her but in a bit more comfortable a position, you pull out, then plop down on the furs besides her, holding your wife as you lie there, together in the blissful aftermath of sex.";
		say "     [WaitLineBreak]";
		say "     ...and that is where you fell asleep too, only awakening several hours later besides Sonya, on a ship full of still-dozing or already awake and hung-over Vikings. Having to get back to your efforts of surviving in this new world, you find one man who isn't quite as bad off, then let him row you back to shore. As you leave the boat, he tells you how you can signal for a pickup when you want to return to the [bold type]Viking Ship[roman type].";		
		now Viking Ship is known;
		if VikingPregnancy is 0:              [not already preggers]
			let VikingPregChance be a random number from 1 to 20;  	
			if VikingPregChance > 10:           [50% chance]
				now VikingPregCounter is 48;      [48 turns till birth] 
				now VikingPregnancy is 1;					[invisibly pregnant]
				if the player is not facially human or the player is not bodily human or the player is not skintone human:     [player a legendary monster]
					now VikingKidShape is bodyname of player;					
				otherwise:    [human player]		
					now VikingKidShape is "human";						
	otherwise if cunts of player > 0:            [female]
		say "     Accompanied by whistles and cheers from the drink Vikings, you quickly pull off your own clothes, letting them drop to the floor to lie with Sonya's, then step up to her, stroking the insides of her legs as you spread them a bit further. Your by also pretty moist pussy rubs against her her pubic mound as you lean over her and cup her breasts, taking one nipple, then the other into your mouth to gently suck on them. Then she pulls your head up to hers for a quick kiss, followed by a moaned 'Fuck me - now!' She feels around between the furs for a moment, then pulls the green dildo you two used before out from under one and presses it in your hand.";
		say "     [WaitLineBreak]";
		say "     Who could resist their wife making such a demand - it's a matter of moments to put the double-headed dildo to its intended use, sliding its firm but flexible shape into your own sex, then guiding it with your hand so you can penetrate Sonya with it. Holding on to the rubber sex toy when you pull back, you can fuck each other, in a fashion, stimulating both of you as your hips thrust forward as if you were a man. While you are grinding against each other at the hips, Sonya grips the furs under her tightly to have something to hold onto in her lust.";
		say "     She starts moaning 'Harder, harder!', her legs wrapping around your hips to make you push the dildo deeper into her vagina. Taking up sliding it out then pounding deep into her again, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. Her arms wrap around your upper body, pulling you fully on top of her as she seeks your lips with hers, hungrily making out with you. For a while, anything but the wild and urgent sex you have with her is forgotten, though you think you remember feeling someone - or rather more than one someone - touch your back and rub the curve of your ass, just watching not being enough for some of the aroused Vikings.";
		say "     [WaitLineBreak]";
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster over time, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo connecting you. Not to lag too far behind, you push the sex toy deeper into yourself, rubbing it against your inner walls until you reach your peak a moment later. A trickle of your femcum runs down over the sex toy, to drip down to soak into the spread-out furs with your partner's.";
		say "     Exhausted, you stay on top of her, the dildo connecting you, and try to catch your breath. She strokes your back softly, then pulls your lips to hers, giving you a kiss. 'I am yours, my wife' she says, then lets her head sink down on the fur under her. Wanting to stay close with her but in a bit more comfortable a position, you pull the dildo out and drop it on the pile of your clothes, then plop down on the furs besides her, holding your wife as you lie there, together in the blissful aftermath of sex.";
		say "     [WaitLineBreak]";
		say "     ...and that is where you fell asleep too, only awakening several hours later besides Sonya, on a ship full of still-dozing or already awake and hung-over Vikings. Having to get back to your efforts of surviving in this new world, you find one man who isn't quite as bad off, then let him row you back to shore. As you leave the boat, he tells you how you can signal for a pickup when you want to return to the [bold type]Viking Ship[roman type].";			
	otherwise:                                   [neuter]
		say "     Accompanied by whistles and cheers from the drink Vikings, you quickly pull off your own clothes, letting them drop to the floor to lie with Sonya's, then step up to her, stroking the insides of her legs as you spread them a bit further. Your by also pretty moist pussy rubs against her her pubic mound as you lean over her and cup her breasts, taking one nipple, then the other into your mouth to gently suck on them. Then she pulls your head up to hers for a quick kiss, followed by a moaned 'Fuck me - now!' She feels around between the furs for a moment, then pulls the green dildo you two used before out from under one and presses it in your hand.";
		say "     [WaitLineBreak]";
		say "     Who could resist their wife making such a demand - it's a matter of moments to put the double-headed dildo to its intended use, guiding its firm but flexible shape in between Sonya's moist and swollen pussy lips, penetrating her body with it. You slowly fuck Sonya while your other hand explores her body, stroking over soft skin and fondling her breasts. With her writhing in pleasure under your ministrations, there soon is a gasp of 'Kiss me', and you eagerly comply, moving up on top of her and finding her lips with yours. It feels amazing to be so intimately close to her, and making out as you fuck her with a dildo.";
		say "     Before long, Sonya moans 'Harder, harder!' her arms pulling you tight against her. Taking up the speed of your thrusts into her, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. It's great fun to rub her most sensitive spots and make her squeal in delight. For a while, anything but making out, touching and fucking is forgotten, though you think you remember feeling someone - or rather more than one someone - touch your back and rub the curve of your ass, just watching not being enough for some of the aroused Vikings.";
		say "     [WaitLineBreak]";
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster over time, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo in your hand as her inner muscles grip it. A trickle of her femcum runs down over the sex toy, to drip down and soak into the spread-out furs.";
		say "     Happy in shared pleasure, you stay on top of her, still holding the dildo in your hand. She strokes your back softly, then pulls your lips to hers, giving you a kiss. 'I am yours, my love' she says, then lets her head sink down on the fur under her. Wanting to stay close with her but in a bit more comfortable a position, you pull the dildo out and drop it on the pile of your clothes, then plop down on the furs besides her, holding your wife as you lie there, together in the blissful aftermath of sex.";
		say "     [WaitLineBreak]";
		say "     ...and that is where you fell asleep too, only awakening several hours later besides Sonya, on a ship full of still-dozing or already awake and hung-over Vikings. Having to get back to your efforts of surviving in this new world, you find one man who isn't quite as bad off, then let him row you back to shore. As you leave the boat, he tells you how you can signal for a pickup when you want to return to the [bold type]Viking Ship[roman type].";	
				
Section 4 - Viking Ship

Viking Ship is a room. It is a fasttravel. Viking Ship is private.
The description of Viking Ship is "[VShipDesc]".

to say VShipDesc:
	if daytimer is day:
		say "     You're on the deck of a large sailing vessel, crewed by about forty people - Vikings, to be specific, looking pretty alike to each other with their pale, Nordic skins and blond hair. Many of them are men, though there are also some women around, who don't rank much below their fellows in muscles and toughness. The majority looks to be about 20-30, though there are some grey-beards and still beardless youngsters as well as teenage girls too.";
		say "     During the day as it is right now, many of the Vikings are on deck, preparing caught fish as food, practicing fighting, etc.";
	otherwise:
		say "     You're on the deck of a large sailing vessel, crewed by about forty people - Vikings, to be specific, looking pretty alike to each other with their pale, Nordic skins and blond hair. Many of them are men, though there are also some women around, who don't rank much below their fellows in muscles and toughness. The majority looks to be about 20-30, though there are some grey-beards and still beardless youngsters as well as teenage girls too.";
		say "     As it is night currently, there are only few Vikings on deck, just a few watch-standers and a group of men playing dice in the bow.";		

Instead of sniffing Viking Ship:
	say "     The air smells salty in your nose, no wonder - you're on a ship.";

instead of navigating Viking Ship:
	say "     Making your way to the right spot on the beach, you signal the Viking ship out before the coast and soon get picked up by a muscled Viking who rows a boat to the beach and back.[line break]";
	move player to Viking Ship;
	
down from Viking Ship is Sonya's Cabin.
Sonya's Cabin is a room. 
The description of Sonya's Cabin is "[SCDesc]".

to say SCDesc:
	say "     Sonya's cabin is relatively big - being the chieftain's daughter has its perks - and sports a bed big enough for two, covered in soft furs. You can see that it's bolted to the wooden floorboards, just like the two chests that stand against the opposite wall. Not much for loose clutter, these vikings - those three items are the only furniture in here. But then, that's just a sensible thing to do, avoiding things being thrown around in a storm... and also allowing to do all kinds of sexy stuff in the bed without it knocking against the neighbouring cabin wall.";
	
instead of going down from Viking Ship:
	say "     Going to the door leading below-deck, you climb down a steep set of stairs, then make your way to the cabin in which your viking wife awaits you.";
	say "     [line break]";
	if VikingPregnancy is 4:
		if a random chance of 1 in 2 succeeds:  [kid was a boy]
			if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
				say "     As you enter, you're greeted by Sonya, who says 'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] monster. Our child came while you were out - he's strong and healthy, a beautiful little boy. He looks a lot like you and will become a powerful warrior for sure, being half-monster like in the legends.' Biting her lip, she gives you a look, half challenging half needful. '[if VikingKidCounter > 4]Father is already joking that we'll have to build another ship soon if we keep going like this, but...[otherwise]But[end if] I miss having part of you inside me, and by body tells me I'm ready again already. How a taking me for a ride in the sheets?'";
			otherwise:    [human player to be raided]
				say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] warrior. Our child came while you were out - he's strong and healthy, a beautiful little boy. He looks a lot like you and will become a powerful warrior for sure.' Biting her lip, she gives you a look, half challenging half needful. '[if VikingKidCounter > 4]Father is already joking that we'll have to build another ship soon if we keep going like this, but...[otherwise]But[end if] I miss having part of you inside me, and by body tells me I'm ready again already. How a taking me for a ride in the sheets?'";
				if VikingKidGender is 0:
					now VikingKidGender is 1;
				otherwise if VikingKidGender is 2:
					now VikingKidGender is 3;
		otherwise:  [kid was a girl]
			if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
				say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] monster. Our child came while you were out - she's strong and healthy, a beautiful little girl. She looks a lot like you and will become a powerful warrior for sure, being half-monster like in the legends.' Biting her lip, she gives you a look, half challenging half needful. '[if VikingKidCounter > 4]Father is already joking that we'll have to build another ship soon if we keep going like this, but...[otherwise]But[end if] I miss having part of you inside me, and by body tells me I'm ready again already. How a taking me for a ride in the sheets?'";
			otherwise:    [human player to be raided]
				say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] warrior. Our child came while you were out - she's strong and healthy, a beautiful little girl. She looks a lot like you and will become a powerful warrior for sure.' Biting her lip, she gives you a look, half challenging half needful. '[if VikingKidCounter > 4]Father is already joking that we'll have to build another ship soon if we keep going like this, but...[otherwise]But[end if] I miss having part of you inside me, and by body tells me I'm ready again already. How a taking me for a ride in the sheets?'";
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

[ 		
If you can add Sonya to the viking longboat, along with discussion topics and a sex scene, just fingers and body contact for women, the guy on top for the other gender. I'd like her to have some scaling conversation about how many children she and the PC have had, some conversations and pointers about interesting events at the Beach for the player to look for. I'm keeping this one simple for the time being.		
]

Sonya is a woman.  The hp of Sonya is normally 0. 
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
	otherwise if (VikingRelationship > 99):
		say "ERROR-Sonya-100A: She should no longer be in the game, the player having refused her father's challenge.";
	otherwise: 
		say "     Sonya Frithjofsdotter is a very attractive blond woman with shoulder-long golden-blond hair. She is dressed in fur-rimmed boots, a comfortable set of leather pants and a woolen tunic pulled tight with a belt. Everything about her screams warrior, from her lithe and muscled shape to simply the way she stands, a confident look in her eyes that says she can take anyone in a fight - well, except you, the [if cunts of player > 0 and cocks of player is 0]wife[otherwise]husband[end if] she adores. ";
		if VikingPregnancy is 1:
			say "There is a kind of special glow about her that tells you she's expecting a child, thanks to your sperm's virility.";
		otherwise if VikingPregnancy is 2:
			say "A slight bulge of her stomach shows the first visible proof of her pregnancy and tells you that your child is developing well.";
		otherwise if VikingPregnancy is 3:
			say "She is quite obviously pregnant, with a bulging belly showing proof of your sperm's virility.";
		otherwise:
			say "[line break]";
		say "     As Sonya notices your intense gaze upon her, she walks up to you and playfully pulls you close, meeting your lips to share a loving kiss.";

instead of conversing the Sonya:
	if (VikingRelationship < 20):   [not yet married]
		say "ERROR-Sonya-020A: She should not be here to look at yet, as her relationship value is [VikingRelationship]. Please report this.";
	otherwise if (VikingRelationship > 99):
		say "ERROR-Sonya-100A: She should no longer be in the game, the player having refused her father's challenge.";
	otherwise:      				
		if the player is not facially human or the player is not bodily human or the player is not skintone human: 
			say "     Seeing that you want to talk to her, Sonya smiles at you and says 'Yes, my brave monster?'";			
		otherwise: 		
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
	otherwise if (VikingKidCounter > 1):
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
			say "     Sonya says in a thoughtful tone: 'Seeing many men, women and beasts enjoy themselves so wantonly all over this strange land made me curse myself for swearing my oath more than once. Even the strongest warrior finds lust difficult to resist... and it was hard, every day I was out there.' She smiles at you, embracing you and affectionately brushing her cheek against yours, then says 'Thank the gods I met you, my brave [if cunts of player > 0 and cocks of player is 0]wife[otherwise]husband[end if]. All the waiting was worth it, for getting you in the end.'";
					
to say SonyaTalk2:
	if VikingKidCounter is 1:    [just one kid so far]
		if VikingKidGender is 0:	 [in case something with the gender determination went wrong]
			if a random chance of 1 in 2 succeeds:
				now VikingKidGender is 1;  [boy]
			otherwise:
				now VikingKidGender is 2;  [girl]
		if VikingKidGender is 1: [a boy]
			say "     Sonya gives you a beaming smile as she tells you about your child, how quickly the little boy grows and how strong he's getting. [one of]He even already got his first wooden sword from one of his uncles and now is constantly swinging away with it.[or]He's apparently the new champion when it comes to wrestling with the other youngsters on the ship.[at random] Seems like your kid has a bright future as a warrior ahead of him.";
		otherwise:  [a girl]
			say "     Sonya gives you a beaming smile as she tells you about your child, how quickly the little girl grows and how strong she's getting. There is a proud gleam in her eye as she tells you how [one of]she's roughhousing with the other youngsters on the ship - and that she broke the nose of one of them when he grabbed her butt.[or]she got a wooden sword from her uncle and is pretty good with that already, just like her mother.[or]she already learned how to swim very well.[at random]";					
	otherwise if VikingKidCounter > 1:  [more than one kid]
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
		otherwise if VikingKidGender is 2: [only girls so far - one of the girls]
			say "     Sonya gives you a beaming smile as she tells you about your [VikingKidCounter] children, picking out one that she's especially proud of - a girl who grows especially quickly and is getting pretty strong for a kid. There is a proud gleam in her eye as she tells you how your daughter [one of]is roughhousing with the other youngsters on the ship - and that she broke the nose of one of them when he grabbed her butt.[or]got a wooden sword from her uncle and is pretty good with that already, just like her mother.[or]already learned how to swim and dive.[at random]";					
		otherwise if VikingKidGender is 3: [mixed children]
			if a random chance of 1 in 2 succeeds:   [a boy]
				say "     Sonya gives you a beaming smile as she tells you about your [VikingKidCounter] children, picking out one that she's especially proud of - a boy who grows really quickly and is getting pretty strong for a kid. [one of]He even already got his first wooden sword from one of his uncles and now is constantly swinging away with it.[or]He's apparently the new champion when it comes to wrestling with the other youngsters on the ship.[at random] Seems like your kid has a bright future as a warrior ahead of him.";
			otherwise:
				say "     Sonya gives you a beaming smile as she tells you about your [VikingKidCounter] children, picking out one that she's especially proud of - a girl who grows especially quickly and is getting pretty strong for a kid. There is a proud gleam in her eye as she tells you how your daughter [one of]is roughhousing with the other youngsters on the ship - and that she broke the nose of one of them when he grabbed her butt.[or]got a wooden sword from her uncle and is pretty good with that already, just like her mother.[or]already learned how to swim and dive.[at random]";					
						
to say SonyaTalk3:
	let randomnumber be a random number from 1 to 9;
	if randomnumber is:
		-- 1:		
			say "     ";
			

Instead of fucking the Sonya:
	if(lastfuck of Sonya - turns < 5):
		say "     Sonya puts a hand on your chest to hold you back, gently but firmly. With a little shake of her head, she says 'Sorry my love, I [one of]can't spend all my energy here in bed with you - even though I want to. We can't raid if no one scouts the coast and I've got to go soon.' [or]have got to clean my armor and sharpen my sword right now.' [or]need a bit of a break. You can really wear a woman out, you know.' [at random]Giving you an affectionate kiss on the cheek, your viking wife then steps away from you.";
	otherwise:
		say "[SonyaSexMenu]";

to say SonyaSexMenu:
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Fuck her pussy";
	now sortorder entry is 5;
	now description entry is "Have sex with your Viking wife.";
	now toggle entry is SonyaSex rule;
[
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have her blow your cock";
		now sortorder entry is 1;
		now description entry is "Let the Viking beauty blow you.";
		now toggle entry is SonyaSex rule;
	choose a blank row in table of fucking options;
	now title entry is "Have oral sex with her (69)";
	now sortorder entry is 3;
	now description entry is "Offer Sonya to please each other with your tongues.";
	now toggle entry is SonyaSex rule;
	choose a blank row in table of fucking options;
	now title entry is "Finger her pussy";
	now sortorder entry is 4;
	now description entry is "Finger-fuck Sonya's pussy to make her come.";
	now toggle entry is SonyaSex rule;		
	if (cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Let her fuck your pussy";
		now sortorder entry is 6;
		now description entry is "Share Sonya's double dildo.";
		now toggle entry is SonyaSex rule;		
	if (cocks of player > 0 and lust of Sonya > 1):
		choose a blank row in table of fucking options;
		now title entry is "Take Sonya ass";
		now sortorder entry is 8;
		now description entry is "Fill the Viking woman's ass with your cock.";
		now toggle entry is SonyaSex rule;
	choose a blank row in table of fucking options;
	now title entry is "Let her fuck your ass";
	now sortorder entry is 9;
	now description entry is "Take Sonya's double dildo in your rear entrance.";
	now toggle entry is SonyaSex rule;			
]
	sort the table of fucking options in sortorder order;
	change the current menu to table of fucking options;
	carry out the displaying activity;
	clear the screen;

This is the SonyaSex rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry][line break]";
	say "Is this what you want?";
	if player consents:
		decrease menu depth by 1;
		clear the screen;
		if (nam is "Fuck her pussy"):
			say "[SonyaSex1]";
		wait for any key;
	now lastfuck of Sonya is turns;
			
to say SonyaSex1:  [fucking her]
	if cocks of player > 0:
		say "     Wrapping an arm around your beautiful Viking wife, you pull her close and meet her lips with yours, sharing a hot kiss that leaves you wanting more. And Sonya is only too happy to give you that, making out with her husband while at the same time snaking a hand down your back to grab your butt. Some moments full of breathless kissing and fondling later, she pulls back from you, softly pushing against your chest as she tells you to wait there with a teasing smile on her lips. Then the blond goddess saunters over to her bed, swaying her hips seductively and giving you lusty looks over her shoulders. After quickly pulling off her boots, Sonya then gets on the bed, kneeling on its soft furs, and starts to undress in an incredibly hot little strip-show.";
		say "     Starting by sinuously moving her shoulders cupping those oh so well-rounded breasts through the fabric of her tunic, she then slowly undoes her belt, making you hard from just the anticipation of seeing her pale, perfect body. A moment later, her arms grab the lower edge of her tunic, pulling it over her head to be dropped to the side, revealing your wife's muscled, but still feminine curves. Now with her shapely breasts in full view and Sonya sticking out her chest while she rubs their nipples, your legs walk you closer almost on their own - and you can't resist but 'help her' a bit when she undoes her pants, pulling them down and off her legs, quickly followed by a silky soft pair of panties. Soon she is completely naked, lying on her side and showing off the pale-skinned perfection of her well-trained body[if VikingPregnancy is 2]and the slight curve of her belly that has your child growing inside of it[otherwise if VikingPregnancy is 3]and the bulging curve of her belly that has your child growing inside of it[end if]. A beaming smile on her face, she says 'Your turn, my love.'";
		say "     [WaitLineBreak]";		
		say "     Under the lusty gaze of your Viking woman, you undress much more quickly, too horny and wound-up to give her such a nice show as she did herself. Sonya doesn't mind, though, as she's more than ready to get into the real fun herself now. Rising back up on her knees, she even reaches out to touch your naked body, then pulls you close for a hungry kiss with some urgency. A bit too quickly, actually, as you lose your balance and fall into bed with her, still eagerly kissing each other. Finding yourself lying on the eager young wife, your cock poking against her pubic mound, you're not one to waste such an opportunity and just move your hips a bit. The tip of your manhood brushes over her nether lips in no time at all and you thrust in, sinking deep into your Viking's moist vagina.";
		say "     As you bottom out inside her, Sonya wraps her legs around your hips, holding you tight against herself. Her arms stay around your chest likewise, to hold you close as she makes out with you. In between kisses she pants 'Fuck me hard!' and you comply eagerly, pulling out most of your shaft before plunging back in in a fast rhythm. The sexy Viking even pushes down her hips to meet each of your thrusts and pulls you down on her with her legs around your ass. It feels amazing to have her warm and tight passage stretched around your manhood as you are pounding the Nordic warrior-woman's pussy. For a while, anything but the wild and urgent sex you have with her is forgotten, the two of you filling the cabin with loud moans and gasps of pleasure...";
		say "     [WaitLineBreak]";
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, the muscles in her vagina tightening their grip on your cock as the Viking orgasms. Not to lag too far behind, you abandon all restraint, grinding against her crotch urgently, and blow your load moments later. Pulse after pulse of your fertile seed shoot deep into the young woman's insides.";
		say "     Exhausted, you roll the two of you over to lie on your sides, still with your cock inside her, and try to catch your breath. Sonya strokes your chest softly and looks deep into your eyes, content in just lying there on the warm furs with you for a while, resting and holding one another. Then, she sighs 'I love you, my husband', rubbing your nose with hers before sitting up. After cleaning up a bit with a soft towel from one of the two chests against the wall, she gathers up her clothes and gets dressed.";
		if VikingPregnancy is 0:              [not already preggers]
			let VikingPregChance be a random number from 1 to 20;  	
			if VikingPregChance > 10:           [50% chance]
				now VikingPregCounter is 48;      [48 turns till birth] 
				now VikingPregnancy is 1;					[invisibly pregnant]
				if the player is not facially human or the player is not bodily human or the player is not skintone human:     [player a legendary monster]
					now VikingKidShape is bodyname of player;					
				otherwise:    [human player]		
					now VikingKidShape is "human";		
	otherwise if cunts of player > 0:            [female]
		say "     Wrapping an arm around your beautiful Viking wife, you pull her close and meet her lips with yours, sharing a hot kiss that leaves you wanting more. And Sonya is only too happy to give you that, making out with her wife while at the same time snaking a hand down your back to grab your butt. Some moments full of breathless kissing and fondling later, she pulls back from you, softly pushing against your chest as she tells you to wait there with a teasing smile on her lips. Then the blond goddess saunters over to her bed, swaying her hips seductively and giving you lusty looks over her shoulders. After quickly pulling off her boots, Sonya then gets on the bed, kneeling on its soft furs, and starts to undress in an incredibly hot little strip-show.";
		say "     Starting by sinuously moving her shoulders cupping those oh so well-rounded breasts through the fabric of her tunic, she then slowly undoes her belt, making you all wet from just the anticipation of seeing her pale, perfect body. A moment later, her arms grab the lower edge of her tunic, pulling it over her head to be dropped to the side, revealing your wife's muscled, but still feminine curves. Now with her shapely breasts in full view and Sonya sticking out her chest while she rubs their nipples, your legs walk you closer almost on their own - and you can't resist but 'help her' a bit when she undoes her pants, pulling them down and off her legs, quickly followed by a silky soft pair of panties. Soon she is completely naked, lying on her side and showing off the pale-skinned perfection of her well-trained body[if VikingPregnancy is 2]and the slight curve of her belly that has your child growing inside of it[otherwise if VikingPregnancy is 3]and the bulging curve of her belly that has your child growing inside of it[end if]. A beaming smile on her face, she says 'Your turn, my love.'";		
		say "     [WaitLineBreak]";		
		say "     Under the lusty gaze of your Viking woman, you undress much more quickly, too horny and wound-up to give her such a nice show as she did herself. Sonya doesn't mind, though, as she's more than ready to get into the real fun herself now. Rising back up on her knees, she even reaches out to touch your naked body, then pulls you close for a hungry kiss with some urgency. A bit too quickly, actually, as you lose your balance and fall into bed with her, still eagerly kissing each other. With you lying on top of her and just a bit distracted by Sonya's breasts rubbing against your chest, the Viking woman inconspicuously reaches over to feel between the soft furs on the bed, pulling out a long green dildo a moment later. It's a matter of moments to put the double-headed sex toy to its intended use, connecting you two pussy to pussy.";
		say "     Holding on to the rubber dick when you pull back, you can fuck each other, in a fashion. As you are grinding against each other at the hips, Sonya's hands roam over your body, stroking and touching you. It feels amazing to be so intimately close to her, and feeling her movements through the rubber cock you two share. Soon, Sonya moans 'Harder, harder!', her legs wrapping around your hips to make you push the dildo even deeper into her vagina. Taking up sliding it out then pounding deep into her again, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. Her arms wrap around your upper body, pulling you fully on top of her as she seeks your lips with hers, hungrily making out with you. For a while, anything but the wild and urgent sex you have with her is forgotten, the two of you filling the cabin with loud moans and gasps of pleasure...";		
		say "     [WaitLineBreak]";
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo connecting you. Not to lag too far behind, you push the sex toy deeper into yourself, rubbing it against your inner walls until you reach your peak a moment later. A trickle of your femcum runs down over the sex toy, to drip down to soak into the furs under you.";
		say "     Exhausted, you roll the two of you over to lie on your sides, the dildo still connecting you, and try to catch your breath. Sonya strokes your chest softly and looks deep into your eyes, content in just lying there on the warm furs with you for a while, resting and holding one another. Then, she sighs 'I love you, my wife', rubbing your nose with hers before sitting up. After cleaning up a bit with a soft towel from one of the two chests against the wall, she gathers up her clothes and gets dressed.";		
	otherwise:                                   [neuter]
		say "     Wrapping an arm around your beautiful Viking wife, you pull her close and meet her lips with yours, sharing a hot kiss that leaves you wanting more. And Sonya is only too happy to give you that, making out with her wife while at the same time snaking a hand down your back to grab your butt. Some moments full of breathless kissing and fondling later, she pulls back from you, softly pushing against your chest as she tells you to wait there with a teasing smile on her lips. Then the blond goddess saunters over to her bed, swaying her hips seductively and giving you lusty looks over her shoulders. After quickly pulling off her boots, Sonya then gets on the bed, kneeling on its soft furs, and starts to undress in an incredibly hot little strip-show.";
		say "     Starting by sinuously moving her shoulders cupping those oh so well-rounded breasts through the fabric of her tunic, she then slowly undoes her belt, making you all tingly from just the anticipation of seeing her pale, perfect body. A moment later, her arms grab the lower edge of her tunic, pulling it over her head to be dropped to the side, revealing your wife's muscled, but still feminine curves. Now with her shapely breasts in full view and Sonya sticking out her chest while she rubs their nipples, your legs walk you closer almost on their own - and you can't resist but 'help her' a bit when she undoes her pants, pulling them down and off her legs, quickly followed by a silky soft pair of panties. Soon she is completely naked, lying on her side and showing off the pale-skinned perfection of her well-trained body[if VikingPregnancy is 2]and the slight curve of her belly that has your child growing inside of it[otherwise if VikingPregnancy is 3]and the bulging curve of her belly that has your child growing inside of it[end if]. A beaming smile on her face, she says 'Your turn, my love.'";		
		say "     [WaitLineBreak]";		
		say "     Under the lusty gaze of your Viking woman, you undress much more quickly, too horny and wound-up to give her such a nice show as she did herself. Sonya doesn't mind, though, as she's more than ready to get into the real fun herself now. Rising back up on her knees, she even reaches out to touch your naked body, then pulls you close for a hungry kiss with some urgency. A bit too quickly, actually, as you lose your balance and fall into bed with her, still eagerly kissing each other. With you lying on top of her and just a bit distracted by Sonya's breasts rubbing against your chest, the Viking woman inconspicuously reaches over to feel between the soft furs on the bed, pulling out a long green dildo a moment later. It's a matter of moments to put the double-headed dildo back to its intended use, sliding in and out of your partner as you guide it with your hand.";
		say "     You slowly fuck Sonya while your other hand explores her body, stroking over soft skin and fondling her breasts. With her writhing in pleasure under your ministrations, there soon is a gasp of 'Kiss me', and you eagerly comply, moving up on top of her and finding her lips with yours. It feels amazing to be so intimately close to her, and making out as you fuck her with a dildo. Before long, Sonya moans 'Harder, harder!' her arms pulling you tight against her. Taking up the speed of your thrusts into her, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. It's great fun finding out what she likes best and how you can make her squeal in delight. For a while, anything but making out, touching and fucking is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
		say "     [WaitLineBreak]";
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo in your hand as her inner muscles grip it. A trickle of her femcum runs down over the sex toy, to soak into the furs under you.";
		say "     Exhausted, you roll the two of you over to lie on your sides, the dildo still connecting you, and try to catch your breath. Sonya strokes your chest softly and looks deep into your eyes, content in just lying there on the warm furs with you for a while, resting and holding one another. Then, she sighs 'I love you, my wife', rubbing your nose with hers before sitting up. After cleaning up a bit with a soft towel from one of the two chests against the wall, she gathers up her clothes and gets dressed.";			
			
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
	decrease thirst of player by 6;
	if thirst of player < 0, now thirst of player is 0;
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
"viking sword"	"A beautifully crafted sword, about 30 inches long, with a keen edge to its blade. The favorite weapon of your Viking wife, Sonya, it became yours as you married. Better take good care of it - it's a pretty good weapon, well-balanced ...and there might be some marital problems ahead if you let it rust or lose it."	5	viking sword

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
		if humanity of player is less than 10:   [succumbed]
			say "     A";
		otherwise:    [sane]
			say "     B";
]		
		

Viking ends here.