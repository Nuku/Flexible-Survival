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
[   4: player won three times                                      ]
[   5: father heard about the player                               ]
[   6: fight vs father imminent                                    ]
[   7: player won her hand                                         ]
[ 100: player ran away from the father, she has contempt vs player ]
[ 101: (not used really, father killed the player)                 ]

[ VikingPregnancy - pregnancy progress variable                    ]
[  0: not preggers                                                 ]
[  1: male player knocked her up (invisible)                       ]
[  2: male player knocked her up (slightly visible)                ]
[  3: male player knocked her up (bulging belly)                   ]
[  4: after the kid's been born                                    ]

[ VikingKidCounter - number of children with the player            ]
[ VikingPregCounter - timer for the next birth (48h from start)    ]

VikingRelationship is a number that varies.			[main variable, something for the saveword]
VikingPregnancy is a number that varies.				
VikingKidCounter is a number that varies.				[another thing that should be saved]
VikingPregCounter is a number that varies.

An everyturn rule:
	if VikingPregCounter is 1:
		say "You have a strange feeling in your body, as if you somehow just know that one of your offspring has entered this world. Maybe you should look for Sonya again on the beach...";
		increase VikingKidCounter by 1;
		increase score by a random number between 5 and 10;
		now VikingPregnancy is 4;     [so she can tell the player about their kid in the next meeting]
		now VikingPregCounter is 0;
	if VikingPregCounter is 12:
		now VikingPregnancy is 3;   [very visible pregnancy]
	if VikingPregCounter is 24:
		now VikingPregnancy is 2;   [visible pregnancy]
	if VikingPregCounter is greater than 1:
		decrease VikingPregCounter by 1;

Section 1 - Monster Responses

to say Viking wins:
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
			say "     Sticky with sweat and female juices, you lie there together, holding each other in your arms as your orgasms wind down. Breathing deeply, Sonya moans 'I love you, my monster.' and presses another kiss against your lips. You keep making out for a moment longer, then rub yourselves clean with dry sand and each gather your gear. Time to get back to everyday post-apocalyptic survival.";
		otherwise:
			say "     Sticky with sweat and female juices, you lie there together, holding each other in your arms as your orgasms wind down. Breathing deeply, Sonya moans 'I love you, my warrior.' and presses another kiss against your lips. You keep making out for a moment longer, then rub yourselves clean with dry sand and each gather your gear. Time to get back to everyday post-apocalyptic survival.";
	otherwise:                                   [neuter]
		say "     With that, she grinds her crotch against yours, and even though you don't have any genitals, her touch wakes urges inside you. Sonya grins down at you, saying 'How about you eat me out and I stoke you there...' She moves further up and turns around, then leans forward until she's in the 69 position on top of you. Her crotch is right in your face and the blond hair of her bush tickles your chin. Going with the flow, you put your tongue to work, licking and teasing her pussy. Meanwhile, your Viking partner caresses the skin of your bare crotch with her fingers and tongue."; 
		say "     The two of you lick and stroke each other for quite a while, each totally focused on the other's pleasure. When things get pretty close for both of you, Sonya changes positions again, getting to kneel over your crotch again. With flowing movements of her hips, she rubs the moist and swollen lips of her pussy against you. It feels great, and less than a minute later, a tingly feeling of satisfaction runs through your whole body. Satisfied, Sonya quickly strokes herself and joins you just moments later, her femcum dripping down on you.";  
		say "     [WaitLineBreak]";
		if the player is not facially human or the player is not bodily human or the player is not skintone human:      
			say "     Sticky with sweat and female juices, you lie there together, holding each other in your arms as your orgasms wind down. Breathing deeply, Sonya moans 'I love you, my monster.' and presses another kiss against your lips. You keep making out for a moment longer, then rub yourselves clean with dry sand and each gather your gear. Time to get back to everyday post-apocalyptic survival.";
		otherwise:
			say "     Sticky with sweat and female juices, you lie there together, holding each other in your arms as your orgasms wind down. Breathing deeply, Sonya moans 'I love you, my warrior.' and presses another kiss against your lips. You keep making out for a moment longer, then rub yourselves clean with dry sand and each gather your gear. Time to get back to everyday post-apocalyptic survival.";

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
	otherwise if VikingRelationship > 2:    [three+ victories]
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
		if VikingRelationship is 3:
			now VikingRelationship is 4;

to say VikingVirginSex:             [first time with the player]
	if cocks of player > 0:                      [male+herm]
		say "     You watch Sonya take off her armor and then the rest of her clothes, revealing the pale-skinned perfection of her well-trained body. There is a certain... urgency to her movements, as you guess there would be with her a virgin and all. Now completely naked, her perky breasts bouncing as she moves, the young Viking moves to lie down in the sand, spreading her legs a bit and looking up expectantly at you. 'Come on, claim your prize - But you better be good. I've been waiting a long time for this.' Feeling decidedly overdressed, you quickly remove your own clothes, freeing your by now fully hard erection.";
		say "     [WaitLineBreak]";		
		say "     Following your stiff organ's lead, you kneel between Sonya's legs, running your hands down over the smooth skin of her legs then reaching out to cup her breasts. She moans softly as you stroke them and move on to taking her nipples, one after another, into your mouth and suckle on them. 'That feels *gasp* great, but... but come on - Fuck me!' she says, her hand sliding down your body to grasp your hard shaft and setting it against her moist pussy lips. Eager to fulfill her wish, you thrust into her body, easily penetrating her hymen and sliding deeper until you bottom out. It feels amazing to have her warm and tight passage stretched around your manhood, a sentiment clearly shared by the Noridc warrior-woman. You rest like that for a moment, balls deep inside this pale beauty, letting her get used to it.";
		say "     Soon, Sonya moans 'Go on. Take me!', her legs wrapping around your hips to pull you deeper into her vagina. Taking up sliding out then pounding deep into her again, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. Her arms wrap around your upper body, pulling you fully on top of her as she seeks your lips with hers, hungrily making out with you. For a while, anything but the wild and urgent sex you have with her is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
		say "     [WaitLineBreak]";
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, the muscles in her vagina tightening their grip on your cock as the Viking orgasms. Not to lag too far behind, you abandon all restraint, grinding against her crotch urgently, and blow your load moments later. Pulse after pulse of your fertile seed shoot deep into the young woman's insides, making her well and truly deflowered.";
		say "     Exhausted, you stay on top of her, still with your cock inside, and try to catch your breath. Looks like Sonya has other ideas... suddenly the world spins as she rolls the two of you over until she's on top and straddling your hips. With a new composure, now that her lusts have been satisfied, she pulls off your softening shaft and cleans up a bit by rubbing off with dry sand. Then she goes to collect her gear.";
	otherwise if cunts of player > 0:            [female]
		say "     You watch Sonya take off her armor and then the rest of her clothes, revealing the pale-skinned perfection of her well-trained body. There is a certain... urgency to her movements, as you guess there would be with her a virgin and all. Now completely naked, her perky breasts bouncing as she moves, the young Viking moves to lie down in the sand, spreading her legs a bit and looking up expectantly at you. 'Come on, claim your prize - But you better be good. I've been waiting a long time for this.' Feeling decidedly overdressed, you quickly remove your own clothes, revealing your own pussy.";
		say "     With a sigh and a chuckle, Sonya remarks 'Finally getting beaten - and then by a woman who can't even take me properly. But we're in luck - seems like Freya forsaw this and led my steps earlier when I found...' She stretches over to the pile of her clothing, opening up her satchel and... pulls out a bright green double headed dildo. Where the hell did she pick that up? Ah, who cares - your eyes riveted to the rubber sex toy, you kneel between the young Viking's legs and take it from her. Pushing one end in between her pussy lips, you have Sonya softly moaning as she's getting penetrated for the first time. Then you hit something - her hymen - and slowly increase the pressure till it gives way and you can push more and more of the rubber cok into her.";
		say "     [WaitLineBreak]";
		say "     Time to get into the action yourself... bending the other end of the sex toy up a bit, you slide it into your vagina, then thrust forward a bit with your hips, making it move in both of you. You still have to hold on to it when you pull back, but you can fuck each other, in a fashion. As you are grinding against each other at the hips, Sonya's hands roam over your body, stroking and touching you. It feels amazing to be so intimately close to her, and feeling her movements through the rubber cock you two share.";
		say "     Soon, Sonya moans 'Harder, harder!', her legs wrapping around your hips to make you push the dildo deeper into her vagina. Taking up sliding it out then pounding deep into her again, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. Her arms wrap around your upper body, pulling you fully on top of her as she seeks your lips with hers, hungrily making out with you. For a while, anything but the wild and urgent sex you have with her is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
		say "     [WaitLineBreak]";
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo connecting you. Not to lag too far behind, you push the sex toy deeper into yourself, rubbing it against your inner walls until you reach your peak a moment later. A trickle of your femcum runs down over the sex toy, to drip down into she sand with your partner's.";
		say "     Exhausted, you stay on top of her, still with the dildo connecting you, and try to catch your breath. Looks like Sonya has other ideas... suddenly the world spins as she rolls the two of you over until she's on top and straddling your hips. With a new composure, now that her lusts have been satisfied, she pulls the rubber cock out of both of you and cleans up a bit by rubbing off with dry sand. Then she goes to collect her other gear.";
	otherwise:                                   [neuter]
		say "     You watch Sonya take off her armor and then the rest of her clothes, revealing the pale-skinned perfection of her well-trained body. There is a certain... urgency to her movements, as you guess there would be with her a virgin and all. Now completely naked, her perky breasts bouncing as she moves, the young Viking moves to lie down in the sand, spreading her legs a bit and looking up expectantly at you. 'Come on, claim your prize - But you better be good. I've been waiting a long time for this.' Feeling decidedly overdressed, you quickly remove your own clothes, revealing your bare, genital-less crotch.";
		say "     Sonya gives a surprised 'What?', then remarks with a sigh 'Finally getting beaten - and then by... what are you, even? With nothing between your... ah, no matter. Seems like Freya forsaw your little problem and led my steps earlier when I found...' She stretches over to the pile of her clothing, opening up her satchel and... pulls out a bright green double headed dildo. Your eyes riveted to the rubber sex toy, you kneel between the young Viking's legs and take it from her. Pushing one end in between her pussy lips, you have Sonya softly moaning as she's getting penetrated for the first time. Then you hit something - her hymen - and slowly increase the pressure till it gives way and you can push more and more of the rubber cock into her.";
		say "     [WaitLineBreak]";
		say "     Pushing the sex toy in and out of her, you slowly fuck Sonya while your other hand explores her body, stroking over soft skin and fondling her breasts. With her writhing in pleasure under your ministrations, there soon is a gasp of 'Kiss me', and you eagerly comply, moving up on top of her and finding her lips with yours. It feels amazing to be so intimately close to her, and making out as you fuck her with a dildo.";
		say "     Before long, Sonya moans 'Harder, harder!' her arms pulling you tight against her. Taking up the speed of your thrusts into her, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. It's great fun finding out what she likes best and how you can make her squeal in delight. For a while, anything but making out, touching and fucking is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
		say "     [WaitLineBreak]";
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo in your hand as her inner muscles grip it. A trickle of your femcum runs down over the sex toy, to drip down into she sand.";
		say "     After a moment of catching her breath, Sonya looks up at you and... suddenly the world spins as she rolls the two of you over until she's on top and straddling your hips. With a new composure, now that her lusts have been satisfied, she pulls the rubber cock out herself and cleans up a bit by rubbing off with dry sand. Then she goes to collect her other gear.";
	say "     [line break]";
	if the player is not facially human or the player is not bodily human or the player is not skintone human:    [non-human player = a monster, in her words]    
		say "     As she pulls her clothes back on, Sonya gives your naked body a glance that lingers for a moment, then she shakes her head. 'You weren't half bad in fulfilling your duty in my oath - but don't think that makes you special in any way or gives you rights with me. You're still just a foreign monster, and one victory over me won't change that!' On that note, she turns away and walks off without a look back."; 
	otherwise:    [human player]
		say "     As she pulls her clothes back on, Sonya gives your naked body a glance that lingers for a moment, then she shakes her head. 'You weren't half bad in fulfilling your duty in my oath - but don't think that makes you special in any way or gives you rights with me. You're still just an outlander, and one victory over me won't change that!' On that note, she turns away and walks off without a look back.";

to say VikingLossSex:               [second time with the player]          
	if cocks of player > 0:
		say "     After following the young viking to a secluded spot behind the crest of a dune, you watch Sonya take off her armor and then the rest of her clothes, revealing the pale-skinned perfection of her well-trained body. Now completely naked, her perky breasts bouncing as she moves, the young Viking moves to lie down in the sand, spreading her legs a bit and looking up expectantly at you. 'Come on, claim your prize.' Feeling decidedly overdressed, you quickly remove your own clothes, freeing your by now fully hard erection.";
		say "     [WaitLineBreak]";		
		say "     Following your stiff organ's lead, you kneel between Sonya's legs, running your hands down over the smooth skin of her legs then reaching out to cup her breasts. She moans softly as you stroke them and move on to taking her nipples, one after another, into your mouth and suckle on them. 'That feels *gasp* great, but... I need you in me - Now!' she says, her hand sliding down your body to grasp your hard shaft and setting it against her moist pussy lips. Eager to fulfill her wish, you thrust into her body, sliding deeper and deeper until you bottom out. It feels amazing to have her warm and tight passage stretched around your manhood, a sentiment clearly shared by the Noridc warrior-woman. You rest like that for a moment, balls deep inside this pale beauty, letting her get used to it.";
		say "     Soon, Sonya moans 'Go on. Take me!', her legs wrapping around your hips to pull you deeper into her vagina. Taking up sliding out then pounding deep into her again, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. Her arms wrap around your upper body, pulling you fully on top of her as she seeks your lips with hers, hungrily making out with you. For a while, anything but the wild and urgent sex you have with her is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
		say "     [WaitLineBreak]";
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, the muscles in her vagina tightening their grip on your cock as the Viking orgasms. Not to lag too far behind, you abandon all restraint, grinding against her crotch urgently, and blow your load moments later. Pulse after pulse of your fertile seed shoot deep into the young woman's insides.";
		say "     Exhausted, you stay on top of her, still with your cock inside, and try to catch your breath. Looks like Sonya has other ideas... suddenly the world spins as she rolls the two of you over until she's on top and straddling your hips. With a new composure, now that her lusts have been satisfied, she pulls off your softening shaft and cleans up a bit by rubbing off with dry sand. Then she goes to collect her gear.";
	otherwise if cunts of player > 0:            [female]
		say "     After following the young viking to a secluded spot behind the crest of a dune, you watch Sonya take off her armor and then the rest of her clothes, revealing the pale-skinned perfection of her well-trained body. There is a certain... urgency to her movements, as you guess there would be with her a virgin and all. Now completely naked, her perky breasts bouncing as she moves, the young Viking moves to lie down in the sand, spreading her legs a bit and looking up expectantly at you. 'Come on, claim your prize - But you better be good. I've been waiting a long time for this.' Feeling decidedly overdressed, you quickly remove your own clothes, revealing your own pussy.";
		say "     [line break]";
		say "     With a chuckle, Sonya remarks 'I come prepared...' She stretches over to the pile of her clothing, opening up her satchel and... pulls out a bright green double headed dildo. Your eyes riveted to the rubber sex toy, you kneel between the young Viking's legs and take it from her. Pushing one end in between her pussy lips, her moans encourage you to go deeper and deeper. Then it's time to get into the action yourself... bending the other end of the sex toy up a bit, you slide it into your vagina, then thrust forward a bit with your hips, making it move in both of you. You still have to hold on to it when you pull back, but you can fuck each other, in a fashion. As you are grinding against each other at the hips, Sonya's hands roam over your body, stroking and touching you. It feels amazing to be so intimately close to her, and feeling her movements through the rubber cock you two share.";
		say "     Soon, Sonya moans 'Harder, harder!', her legs wrapping around your hips to make you push the dildo deeper into her vagina. Taking up sliding it out then pounding deep into her again, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. Her arms wrap around your upper body, pulling you fully on top of her as she seeks your lips with hers, hungrily making out with you. For a while, anything but the wild and urgent sex you have with her is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
		say "     [WaitLineBreak]";
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo connecting you. Not to lag too far behind, you push the sex toy deeper into yourself, rubbing it against your inner walls until you reach your peak a moment later. A trickle of your femcum runs down over the sex toy, to drip down into she sand with your partner's.";
		say "     Exhausted, you stay on top of her, still with the dildo connecting you, and try to catch your breath. Looks like Sonya has other ideas... suddenly the world spins as she rolls the two of you over until she's on top and straddling your hips. With a new composure, now that her lusts have been satisfied, she pulls the rubber cock out of both of you and cleans up a bit by rubbing off with dry sand. Then she goes to collect her other gear.";
	otherwise:                                   [neuter]
		say "     After following the young viking to a secluded spot behind the crest of a dune, you watch Sonya take off her armor and then the rest of her clothes, revealing the pale-skinned perfection of her well-trained body. There is a certain... urgency to her movements, as you guess there would be with her a virgin and all. Now completely naked, her perky breasts bouncing as she moves, the young Viking moves to lie down in the sand, spreading her legs a bit and looking up expectantly at you. 'Come on, claim your prize - But you better be good. I've been waiting a long time for this.' Feeling decidedly overdressed, you quickly remove your own clothes, revealing your bare, genital-less crotch.";
		say "     Sonya looks at you and remarks 'I still don't know how you can live without... oh well. Luckily, I come prepared...' She stretches over to the pile of her clothing, opening up her satchel and... pulls out a bright green double headed dildo. Your eyes riveted to the rubber sex toy, you kneel between the young Viking's legs and take it from her. Pushing one end in between her pussy lips, her moans encourage you to go deeper and deeper.";
		say "     [WaitLineBreak]";
		say "     Sliding the sex toy in and out of her, you slowly fuck Sonya while your other hand explores her body, stroking over soft skin and fondling her breasts. With her writhing in pleasure under your ministrations, there soon is a gasp of 'Kiss me', and you eagerly comply, moving up on top of her and finding her lips with yours. It feels amazing to be so intimately close to her, and making out as you fuck her with a dildo.";
		say "     Before long, Sonya moans 'Harder, harder!' her arms pulling you tight against her. Taking up the speed of your thrusts into her, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. It's great fun finding out what she likes best and how you can make her squeal in delight. For a while, anything but making out, touching and fucking is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
		say "     [WaitLineBreak]";
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo in your hand as her inner muscles grip it. A trickle of your femcum runs down over the sex toy, to drip down into she sand.";
		say "     After a moment of catching her breath, Sonya looks up at you and... suddenly the world spins as she rolls the two of you over until she's on top and straddling your hips. With a new composure, now that her lusts have been satisfied, she pulls the rubber cock out herself and cleans up a bit by rubbing off with dry sand. Then she goes to collect her other gear.";
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
		say "     As you bottom out inside her, Sonya wraps her legs around your hips, holding you tight against herself. Her arms pull your upper body down on her too, so she can make out with you. In between kisses she pants 'Fuck me hard!' and you comply eagerly, pulling out most of your shaft before plunging back in in a fast rhythm. The sexy Viking even pushes down her hips to meet each of your thrusts and pulls you down on her with her legs around your ass. It feels amazing to have her warm and tight passage stretched around your manhood as you are pounding the Noridc warrior-woman's pussy. For a while, anything but the wild and urgent sex you have with her is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
		say "     [WaitLineBreak]";
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, the muscles in her vagina tightening their grip on your cock as the Viking orgasms. Not to lag too far behind, you abandon all restraint, grinding against her crotch urgently, and blow your load moments later. Pulse after pulse of your fertile seed shoot deep into the young woman's insides.";
		say "     Exhausted, you stay on top of her, still with your cock inside, and try to catch your breath. She strokes your back softly, content in just lying there with you for a while, resting and holding one another. Then, she sighs, rubbing your nose with hers before sliding out from under you and sitting up. After cleaning up a bit by rubbing off with dry sand, she stands up and goes to collect her gear.";
		if VikingPregnancy is 0:              [not already preggers]
			let VikingPregChance be a random number from 1 to 20;  	
			if VikingPregChance > 10:           [50% chance]
				now VikingPregCounter is 48;      [48 turns till birth] 
				now VikingPregnancy is 1;					[invisibly pregnant]
	otherwise if cunts of player > 0:            [female]
		say "     Hand in hand, you climb over the crest of a nearby dune, stopping several times on the way to share hungry kisses. After finally arriving in a somewhat protected spot, out of sight from the beach, Sonya pushes you to sit in the sand and starts to undress in a hot little strip-show. It's amazing how arousing she can make taking off scale mail armor and then piece by piece her other clothing. She quickly has you so hot and bothered that you just can't resist standing up and 'helping her' a bit, pulling off articles of clothing and caressing her. Soon she is completely naked, revealing the pale-skinned perfection of her well-trained body. A beaming smile on her face, she starts undressing you too, rubbing her breasts and body against you as you're stripped bare.";
		say "     Acting all inconspicous as she picks up the green dildo you used before from among her things, Sonya saunters over to you. She gooses your ass, daring you to catch her, and runs off a few steps, her perky breasts bouncing as she moves. With her not really trying to get away, you quickly catch her, embracing her as you plant a kiss on her lips. Holding on you, she lets herself fall into the sand on the side of the dune, and you find yourself lying on the eager young woman, your crotch rubbing against hers. It's a matter of moments to put the double-headed dildo back to its intended use, connecting you two pussy to pussy.";
		say "     [WaitLineBreak]";	
		say "     Holding on to the rubber sex toy when you pull back, you can fuck each other, in a fashion. As you are grinding against each other at the hips, Sonya's hands roam over your body, stroking and touching you. It feels amazing to be so intimately close to her, and feeling her movements through the rubber cock you two share. Soon, Sonya moans 'Harder, harder!', her legs wrapping around your hips to make you push the dildo deeper into her vagina. Taking up sliding it out then pounding deep into her again, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. Her arms wrap around your upper body, pulling you fully on top of her as she seeks your lips with hers, hungrily making out with you. For a while, anything but the wild and urgent sex you have with her is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";		
		say "     [WaitLineBreak]";
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo connecting you. Not to lag too far behind, you push the sex toy deeper into yourself, rubbing it against your inner walls until you reach your peak a moment later. A trickle of your femcum runs down over the sex toy, to drip down into she sand with your partner's.";
		say "     Exhausted, you stay on top of her, the dildo connecting you, and try to catch your breath. She strokes your back softly, content in just lying there with you for a while, resting and holding one another. Then, she sighs, rubbing your nose with hers before sliding out from under you and sitting up. After cleaning up a bit by rubbing off with dry sand, she stands up and goes to collect her gear.";
	otherwise:                                   [neuter]
		say "     Hand in hand, you climb over the crest of a nearby dune, stopping several times on the way to share hungry kisses. After finally arriving in a somewhat protected spot, out of sight from the beach, Sonya pushes you to sit in the sand and starts to undress in a hot little strip-show. It's amazing how arousing she can make taking off scale mail armor and then piece by piece her other clothing. She quickly has you so hot and bothered that you just can't resist standing up and 'helping her' a bit, pulling off articles of clothing and caressing her. Soon she is completely naked, revealing the pale-skinned perfection of her well-trained body. A beaming smile on her face, she starts undressing you too, rubbing her breasts and body against you as you're stripped bare.";
		say "     Acting all inconspicous as she picks up the green dildo you used before from among her things, Sonya saunters over to you. She gooses your ass, daring you to catch her, and runs off a few steps, her perky breasts bouncing as she moves. With her not really trying to get away, you quickly catch her, embracing her as you plant a kiss on her lips. Holding on you, she lets herself fall into the sand on the side of the dune, and you find yourself lying on the eager young woman, your crotch rubbing against hers. It's a matter of moments to put the double-headed dildo back to its intended use, sliding in and out of your partner as you guide it with your hand.";
		say "     [WaitLineBreak]";	
		say "     You slowly fuck Sonya while your other hand explores her body, stroking over soft skin and fondling her breasts. With her writhing in pleasure under your ministrations, there soon is a gasp of 'Kiss me', and you eagerly comply, moving up on top of her and finding her lips with yours. It feels amazing to be so intimately close to her, and making out as you fuck her with a dildo.";
		say "     Before long, Sonya moans 'Harder, harder!' her arms pulling you tight against her. Taking up the speed of your thrusts into her, you find yourself with a very enthusiastic partner, meeting each of your thrusts with a push of her hips. It's great fun finding out what she likes best and how you can make her squeal in delight. For a while, anything but making out, touching and fucking is forgotten, the two of you filling the air with loud moans and gasps of pleasure...";
		say "     [WaitLineBreak]";
		say "     As much as you wish this could last forever, there are limits to everything. Her pants having gotten louder and faster quickly, Sonya suddenly pulls you even tighter against herself, holding you there as she shouts 'I'm coming!' You can feel her whole body shuddering under yours, a tremble running through the dildo in your hand as her inner muscles grip it. A trickle of your femcum runs down over the sex toy, to drip down into she sand.";
		say "     Exhausted, you stay on top of her, the dildo connecting you, and try to catch your breath. She strokes your back softly, content in just lying there with you for a while, resting and holding one another. Then, she sighs, rubbing your nose with hers before sliding out from under you and sitting up. After cleaning up a bit by rubbing off with dry sand, she stands up and goes to collect her gear.";
	say "     [line break]";	
	if the player is not facially human or the player is not bodily human or the player is not skintone human:    [non-human player = a monster, in her words]    
		say "     As she pulls her clothes back on, Sonya gives your naked body a glance that lingers for a moment, and you can almost see lust and desire flickering up in her eyes again. Then she shakes her head with a sigh. 'I'd have another go with you, my handsome monster, but... there's my duty to be done. Raiding targets don't scout themselves, you know...' She kneels next to you for a quick kiss, then stands up and walks away, turning her head for one last look back as she climbs over the crest of the dune.";
	otherwise:    [human player]
		say "     As she pulls her clothes back on, Sonya gives your naked body a glance that lingers for a moment, and you can almost see lust and desire flickering up in her eyes again. Then she shakes her head with a sigh. 'I'd have another go with you, my outlander warrior, but... there's my duty to be done. Raiding targets don't scout themselves, you know...' She kneels next to you for a quick kiss, then stands up and walks away, turning her head for one last look back as she climbs over the crest of the dune.";
			
to say VikingDesc:
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
	otherwise if VikingRelationship is 4:  [player beat three+ times]
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
			if the player is not facially human or the player is not bodily human or the player is not skintone human:     [sees player as a legendary monster]
				say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] monster. Our child is strong and healthy, a beautiful little [one of]boy. He[or]girl. She[at random] looks a lot like you and will become a powerful warrior for sure, being half-monster like in the legends.' Biting her lip, she gives you a look, half challenging half needful. 'I miss having part of you inside me, and by body tells me I'm ready again already. How about you prove your power over me again and ravish me? Let's fight!' She brings up her shield again and raises the sword, rushing at you.";
			otherwise:    [human player to be raided]
				say "     'Hello, my [one of]brave[or]strong[or]powerful[or]beloved[or]handsome[at random] warrior. Our child is strong and healthy, a beautiful little [one of]boy. He[or]girl. She[at random] looks a lot like you and will become a powerful warrior for sure.' Biting her lip, she gives you a look, half challenging half needful. 'I miss having part of you inside me, and by body tells me I'm ready again already. How about you prove your power over me again and ravish me? Let's fight!' She brings up her shield again and raises the sword, rushing at you."; 
			now VikingPregnancy is 0;    [reset into receptive state]
									
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Viking"; 
	now attack entry is "[one of]She lands a shallow cut on you. Luckily, she's not trying to kill you, or she could have skewered you there...[or]The Viking woman slaps the broad side of her sword against your head, leaving you seeing stars for a moment.[or]A sudden kick against the side of your leg leaves you numb and weakened.[or]She slams her shield into your chest, driving the air from your lungs.[at random]";
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

[ meeting & fighting her father ]
		
Section 4 - Endings

[
when play ends:
	if bodyname of player is "Viking":
		if humanity of player is less than 10:   [succumbed]
			say "     A";
		otherwise:    [sane]
			say "     B";
]

Section 5 - Drop Item 
	
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

Viking ends here.