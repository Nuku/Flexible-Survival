Version 1 of Lilith by Wahn begins here.
[Version 1: Npc setup]

"Adds an NPC named Lilith to the Flexible Survival game"

[ HP states of Lilith (localisation)                                 ]
[   0: never met her                                                 ]
[   1: met her, without demon brute                                  ] 
[   2: met her, with demon brute                                     ] 

[ LilithPregnancy - pregnancy progress variable                      ]
[  0: not preggers                                                   ]
[  1: male player knocked her up (invisible)                         ]
[  2: male player knocked her up (slightly visible)                  ]
[  3: male player knocked her up (bulging belly)                     ]
[  4: after the kid's been born                                      ]

[ LilithKidCounter - number of children with the player              ]
[ LilithPregCounter - timer for the next birth (48h from start)      ]

Section 1 - Lilith, the succubus

Lilith is a woman. Lilith is in Sacristy. The hp of Lilith is normally 0.
The description of Lilith is "[LilithDesc]";
The conversation of Lilith is { "Mew!" }.
lastLilithTalk is a number that varies.  lastLilithTalk is usually 555.		[turn-counter for talking delays (humanity restoration)]														
LilithPregnancy is a number that varies.				
LilithKidCounter is a number that varies.				
LilithPregCounter is a number that varies.

An everyturn rule:
	if LilithPregCounter is 1:
		say "You have a strange feeling in your body, as if you somehow just know that one of your offspring has entered this world. Maybe you should back to the Burned-Out Chapel and check with Lilith.";
		increase LilithKidCounter by 1;
		increase score by a random number between 5 and 10;
		now LilithPregnancy is 4;     [so she can tell the player about their kid in the next meeting]
		now LilithPregCounter is 0;
	if LilithPregCounter is 12:
		now LilithPregnancy is 3;   [very visible pregnancy]
	if LilithPregCounter is 24:
		now LilithPregnancy is 2;   [visible pregnancy]
	if LilithPregCounter is greater than 1:
		decrease LilithPregCounter by 1;

instead of sniffing Lilith:
	say "Lilith smells... definitively female, seductive, enticing - but with a slight undertone of brimstone.";

to say LilithDesc:
	if (hp of Lilith is 0):   [starting state]
		say "ERROR-Lilith-001A: She should not be around yet anywhere where players can see her.";
	otherwise:
		say "     Lilith is a woman with breathtaking looks and a curvy body, which she shamelessly displays for you in all its naked glory. Looking her over you would almost think she was still human, if it weren't for the large bat-like wings coming out of her back, and of course, the small horns on her head and the rather feral look in her green, slit pupil eyes.";
		if LilithPregnancy is 2:
			say "    Her belly is currently bulging outwards in a small curve, showing the result of your recent coupling growing inside her.";
		otherwise if LilithPregnancy is 3:
			say "    Her belly is currently bulging outwards quite a bit, showing the result of your recent coupling growing inside her. The impressive breasts on her chest have filled out even more, with their nipples sometimes leaking small amounts of succubi milk.";		

instead of conversing the Lilith:
	if (hp of Lilith is 0):      					[not yet met]
		say "ERROR-Lilith-001B: She should not be around yet anywhere where players can see her.";
	otherwise:
		say "[LilithTalkMenu]";

to say LilithTalkMenu:
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Just chat a bit";
	now sortorder entry is 1;
	now description entry is "Talk a bit about this and that.";
	now toggle entry is LilithTalk rule;
	if Elijah is in the Burned-Out Chapel or hp of Elijah > 0:
		choose a blank row in table of fucking options;
		now title entry is "Ask about Elijah";
		now sortorder entry is 2;
		now description entry is "Inquire about the captured angel.";
		now toggle entry is LilithTalk rule;	
	if companion of player is demon brute:
 		choose a blank row in table of fucking options;
		now title entry is "Let her change your demon brute pet";
		now sortorder entry is 3;
		now description entry is "Make him herm if male, or fully female if herm.";
		now toggle entry is LilithTalk rule;
	choose a blank row in table of fucking options;
	now title entry is "Nothing";
	now sortorder entry is 10;
	now description entry is "Break off the conversation.";
	now toggle entry is LilithTalk rule;	
	sort the table of fucking options in sortorder order;
	change the current menu to table of fucking options;
	carry out the displaying activity;
	clear the screen;

This is the LilithTalk rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry][line break]";
	say "Is this what you want?";
	if player consents:
		decrease menu depth by 1;
		clear the screen;
		if (nam is "Just chat a bit"):
			say "[LilithTalk1]";
		if (nam is "Ask about Elijah"):
			say "[LilithTalk2]";	
		if (nam is "Let her change your demon brute pet"):
			say "[LilithTalk3]";	
		wait for any key;
		
to say LilithTalk1:
	say "     With a smile on her lips, Lilith recounts several of her sexual encounters, in very graphic detail. You get drawn into the story, touching and stroking her as she puts your hands on her body to demonstrate this or that. When you finally shake out of it and remember that you only wanted to talk to her, not have sex, you're still a bit more horny and aroused than before.";
	increase libido of player by 10;
	
to say LilithTalk2:
	if hp of Elijah is 0:
		say "     'Oh, him? Nice catch by the others, but I didn't bother to reserve a place in line.' She shrugs and runs a finger down over her breasts and to her pussy, drawing your looks with it. 'Been there, done that, you know. Other than all these new converts, I was there at the beginning and had lots of fun with the winged boys after I broke up with my ex. They're cute and all, but how good in bed can a man be if he's only had his cock for a few hours or days?'";
	otherwise if hp of Elijah > 0 and hp of Elijah < 99:
		say "     'Everyone is still winging about losing the angel. I don't really care - it's their own fault, if they couldn't even fight you off. All of them against one of you - they came at you one after another, didn't they? Amateurs.' She shrugs, then starts running her finger around one of her nipples. 'If they had done it right and properly seduced him, he wouldn't even have wanted to go. Who needs chains if you can control lust.' With a seductive wink, she saunters over to the bed and fingers her pussy, sitting in a position in which you can see everythings.";
	otherwise if hp of Elijah is 99:
		say "     'Good work in making something out of the kid... he's come visiting a few times now. Not bad at all between the sheets, and black really is his color.'";		
	otherwise if hp of Elijah is 100:
		say "     'That little winged cutie? He's down below now... and I hear he's made quite a splash with Lucifer. His angel ass is out infernal master's new favorite toy. He won't even stop fucking him when meeting the demon princes - just has their meetings in his quarters as he rams his ass, or carries his angel pet around impaled on his shaft.'";		

to say LilithTalk3:
	if DemonBruteStatus is 0:
		say "     She smiles at you, then gives the demon brute a cruel grin. 'You hear that, big boy? Let's get you a pussy so you're ready to get fucked!' Your companion snarls, his muscles tensing, but the magic holds and he can't do anything.";	
		say "     [LilithPregCheck]";	
	otherwise if DemonBruteStatus is 1:
		say "     She smiles at you, then gives the demon brute a cruel grin. 'Let's make your pet fully female then. You hear that, big boy? No more cock for you...' Your companion snarls, his muscles tensing, but the magic holds and he can't do anything.";
		say "     [LilithPregCheck]";
	otherwise if DemonBruteStatus is 2:
		say "     She looks a bit surprised and says 'Your pet's already fully female. What do you want to do? Make him grow another vagina? That's not a good idea, believe me...'";	
				
to say LilithPregCheck:
	if LilithPregnancy is 0 or LilithPregnancy is 4:
		if cocks of player > 0:
			say "     She turns back to you and runs her tongue sensously along her lips. 'There's a small hitch yet... in order to do what you want with your pet, there's one irreplaceable thing we still need. Succubus breast milk.' She strokes along the side of your chest, then rubs your crotch. 'But having a willing succubus and yourself here, that shouldn't be a problem for long...' She gives you a seductive smile, nodding towards her bed.";
		otherwise:
			say "     She turns back to you and runs her tongue sensously along her lips. 'There's a small hitch yet... in order to do what you want with your pet, there's one irreplaceable thing we still need. Succubus breast milk.' She strokes along the side of your chest, then rubs her stomach. 'You've got a succubus here willing to help you out with that. Why don't you go find a way to grow a cock, and after that, the milk shouldn't be a problem for long...' She gives you a seductive smile, nodding towards her bed.";			
	otherwise if LilithPregnancy is 1:
		if cocks of player > 0:		
			say "     She turns back to you and runs her tongue sensously along her lips. 'There's a small hitch yet... in order to do what you want with your pet, there's one irreplaceable thing we still need. Succubus breast milk.' She strokes along the side of your chest, then rubs her stomach. 'I think you've knocked me up last time, but... why don't we just make sure.' She gives you a seductive smile, nodding towards her bed.";					
		otherwise:
			say "     She turns back to you and runs her tongue sensously along her lips. 'There's a small hitch yet... in order to do what you want with your pet, there's one irreplaceable thing we still need. Succubus breast milk.' She strokes along the side of your chest, then rubs her stomach. 'I think you've knocked me up last time, but... how about you go get your cock back and we make sure.' She gives you a seductive smile, nodding towards her bed.";								
	otherwise if LilithPregnancy is 2:
		say "     She strokes the bulge in her stomach, saying 'Your child is growing fast, and I feel my breasts getting ready for it. Not much longer now...'";
	otherwise if LilithPregnancy is 3:
		say "     After stroking over her strongly bulging stomach, the succubus moves a hand up to her breast, slightly squeezing it, which results in a small trickle of milk from her nipple. 'Yes, now we're ready.' she says with a grin. 'Could you give me that?' Following her pointing finger, you pick up a, somewhat dented and sticky with cum, golden chalice from the ground and hand it over. She proceeds to milk her own breasts into it, filling the thoroughly desecrated vessel with her milk. Holding it out to you, she continues 'Now just add a drop of blood and dip the amulet in it.'";
		say "     Your blood in another ritual - do you really want to go through with this? ";
		if player consents:
			say "     Taking the demontooth amulet from around your neck, you prick your finger with its sharp point and squeeze out a drop of blood into the chalice. Then you dip the amulet itself into the while liquid with its swirl of red and listen to Lilith chant something in a long forgotten language. 'There.' she finally says after a while, then nods towards your captive demon brute. You pull the amulet back out and put it around your neck and take the chalice from her. Walking to the demon, careful not to spill anything, you command the creature to open up and pour the liquid down his throat.";
			if DemonBruteStatus is 0:
				say "     A growl rumbles in your demon companion's throat as he fights the change, his whole body trembling. To no avail - falling to his knees, then sinking down to the ground, you see and hear a pussy wetly form between his legs, right under his somewhat reduced cock and balls.";
			otherwise if DemonBruteStatus is 1:
				say "     A growl rumbles in your demon companion's throat as he fights the change, his whole body trembling. To no avail - falling to his knees, then sinking down to the ground, you see his cock and balls shrink further and further and his pussy move up a bit until he finally is a full female.";		
			increase DemonBruteStatus by 1;
		otherwise:
			say "     'Getting cold feet? Now, of all times?' Lilith sighs, then drains the chalice, licking the last of the milk off her lips. 'Not very reliable, my mortal lover. Well, at least you came through for me - or rather into me - when it did count.' She rubs her stomach, bulging with your child, and lies on the bed to stroke her pussy a bit.";
			
instead of going northeast from Burned-Out Chapel while hp of Lilith is 0:
	move player to Sacristy;
	say "     As you enter the sacristy, you find a breathtakingly beautiful succubus there, lounging on a large bed. She stretches and flexes her naked body to give you quite a show as she stands up from the bed and comes to stand before you. 'Hello there, brave traveller. You walk right into a building inhabited by demons to visit me - that has to be rewarded. Come on, why don't you share this bed with me...' As she talks, she gives you gives you little touches and caresses, inevitably heightening your arousal a bit.";
	increase libido of player by 5;
	now hp of Lilith is 1;   [has met the player, not the demon brute yet]
								
instead of going northeast from Burned-Out Chapel while hp of Lilith is 1 and companion of player is demon brute:
	move player to Sacristy;
	say "     Lilith looks very interested as the captured demon brute follows you into the sacristy. 'A very nice pet... how did you get him so - tame?'";
	say "     She saunters over to your demon brute, stroking her hand over his muscled form and grabbing his balls. He snarls, clearly aching to rape her, you, anyone - then starts to whimper as the succubus squeezes tightly. She gives a somewhat cruel chuckle as she turns to you, her eyes searching out the amulet around your neck. 'Magic, hm? That opens some possibilities... I could change your pet a bit, if you're interested. Just think about how much fun you could have with this big boy if he had a pussy too...'";
	now hp of Lilith is 2;   [met the demon brute pet]
								
instead of going northeast from Burned-Out Chapel while LilithPregnancy is 4:
	move player to Sacristy;
	say "     As you enter the sacristy, you find Lilith there, with a young incubus nuzzling her breasts and her hand on his hard cock. The male demon, looking about eighteen years old in human terms, looks up to you and with a small shock you recognize his features as very similar to your own. Your son gives you a broad grin as his mother continues to stroke him, and soon blows an impressive load all over himself, her and the bed. Scooping up a bit of cum with her fingers, Lilith licks it off them and tells him 'Leave us, for now.' Your handsome and bare-ass naked offspring saunters out of the room, not without giving you a suggestive wink.";
	now LilithPregnancy is 0;

Section 2 - Fucking Lilith

Instead of fucking the Lilith:
	if (hp of Lilith is 0):   						[not yet met]
		say "ERROR-Lilith-001C: She should not be around yet anywhere where players can see her.";
	otherwise:
		if(lastfuck of Lilith - turns < 5):
			say "     Lilith says 'Even a succubus needs some breaks. Come back later.'";
		otherwise:
			say "[LilithSexMenu]";

to say LilithSexMenu:
	blank out the whole of table of fucking options;
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have her blow your cock";
		now sortorder entry is 1;
		now description entry is "Let the succubus blow you.";
		now toggle entry is LilithSex rule;
	if (cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have her lick your pussy";
		now sortorder entry is 2;
		now description entry is "Put the succubus mouth to good use.";
		now toggle entry is LilithSex rule;	
	choose a blank row in table of fucking options;
	now title entry is "Eat Lilith out";
	now sortorder entry is 3;
	now description entry is "Give the succubus some oral attention.";
	now toggle entry is LilithSex rule;		
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Fuck her pussy";
		now sortorder entry is 4;
		now description entry is "Fill the succubus pussy with your cock.";
		now toggle entry is LilithSex rule;	
	if (lust of Lilith > 1):
		choose a blank row in table of fucking options;
		now title entry is "Take Lilith's ass";
		now sortorder entry is 5;
		now description entry is "Fill the succubus ass with your cock.";
		now toggle entry is LilithSex rule;
	sort the table of fucking options in sortorder order;
	change the current menu to table of fucking options;
	carry out the displaying activity;
	clear the screen;

This is the LilithSex rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry][line break]";
	say "Is this what you want?";
	if player consents:
		decrease menu depth by 1;
		clear the screen;
		if (nam is "Have her blow your cock"):
			say "[LilithSex1]";
		if (nam is "Have her lick your pussy"):
			say "[LilithSex2]";	
		otherwise if (nam is "Eat Lilith out"):
			say "[LilithSex3]";
		otherwise if (nam is "Fuck her pussy"):
			say "[LilithSex4]";
		otherwise if (nam is "Take Lilith's ass"):
			say "[LilithSex5]";
		wait for any key;
	now lastfuck of Lilith is turns;

to say LilithSex1:    [Have her blow your cock]
	say "     As you open your mouth to say what you want from her, the succubus moves in close against you and shuts you up good with a hungry kiss planted on your lips. She moans 'I know what you need, just let me take care of you' while her hands slide down to your crotch and she takes hold of your rapidly hardening erection. Stroking it, her other hand gently fondling your balls, Lilith guides you to the bed, then gives a soft push against your chest to make you fall back on it. She quickly pulls off any clothing you might be wearing, then kneels between your legs as they hang over the edge of the bed. After another moment of stroking your manhood, you feel her incredibly soft succubus lips slide over it, then sink deeper as she takes it all into her mouth.";
	if cunts of player > 0:    [herms]
		say "     She really knows all the tricks in pleasing a herm with her mouth and fingers, driving you to ever new heights as she bobs up and down on your shaft, teasing it with her tongue while fingering your pussy. Her expert ministrations keep you at the edge of orgasm for you don't know - or care - how long, your mind in a lust-filled haze. Then finally, she goes for the finish line, taking out all the stops. Within moments, you feel the urge to cum rise past the point of no return, long blasts of your seed starting to fill the succubus mouth. Her lips stay tight around the head of your cock so she doesn't lose a drop, then after the last spurt, she demonstratively swallows it all. Lying down next to you, she croons 'Nice and tasty, loverboy.' and softly strokes your body until you catch your breath and stand up.";
	otherwise:                 [males]
		say "     She really knows all the tricks in pleasing a man with her mouth and fingers, driving you to ever new heights as she bobs up and down on your shaft, teasing it with her tongue while fondling your balls. Her expert ministrations keep you at the edge of orgasm for you don't know - or care - how long, your mind in a lust-filled haze. Then finally, she goes for the finish line, taking out all the stops. Within moments, you feel the urge to cum rise past the point of no return, long blasts of your seed starting to fill the succubus mouth. Her lips stay tight around the head of your cock so she doesn't lose a drop, then after the last spurt, she demonstratively swallows it all. Lying down next to you, she croons 'Nice and tasty, loverboy.' and softly strokes your body until you catch your breath and stand up.";
			
to say LilithSex2:    [Have her lick your pussy]
	say "     As you open your mouth to say what you want from her, the succubus moves in close against you and shuts you up good with a hungry kiss planted on your lips. She moans 'I know what you need, just let me take care of you' while her hands slide down to your crotch. Stroking your pussy lips, Lilith guides you to the bed, then gives a soft push against your chest to make you fall back on it. She quickly pulls off any clothing you might be wearing, then kneels between your legs as they hang over the edge of the bed. After another moment of her fingers brushing your sensitive pussy lips, you feel her spread them a bit, then she puts her mouth to your pussy, licking and teasing with her tongue.";
	if cocks of player > 0:    [herms]
		say "     She really knows all the tricks in pleasing a herm with her mouth and fingers, driving you to ever new heights as she licks you, her hands meanwhile busy on your cock. Her expert ministrations keep you at the edge of orgasm for you don't know - or care - how long, your mind in a lust-filled haze. Then finally, she goes for the finish line, taking out all the stops. Within moments, you feel the urge to cum rise past the point of no return, long blasts of your seed arching from your cock to splat on your chest. Lilith stays between your legs, eagerly licking up your femcum, then moves up to taste some cum from your chest too and demonstratively swallows it all. Lying down next to you, she croons 'Nice and tasty, loverboy.' and softly strokes your body until you catch your breath and stand up.";
	otherwise:                 [females]
		say "     She really knows all the tricks in pleasing a woman with her mouth and fingers, driving you to ever new heights as she licks you and fondles with her fingers. Her expert ministrations keep you at the edge of orgasm for you don't know - or care - how long, your mind in a lust-filled haze. Then finally, she goes for the finish line, taking out all the stops. Within moments, you feel your climax approaching, a pleasant tingly feeling spreading through your whole body and femcum starting to drip from your pussy. Lilith stays between your legs, eagerly licking it all up, then stands up so you can see her and demonstratively swallows it all. Lying down next to you, she croons 'Nice and tasty, lovergirl.' and softly strokes your body until you catch your breath and stand up.";
			
to say LilithSex3:    [Eat Lilith out]
	say "     Stepping up close to Lilith, you lower your hand to her crotch, stroking over her pussy lips and dipping a finger in between them. The beautiful demoness moans in lust as you fondle her and readily lets herself be led to the bed to sit on it. Kneeling between her legs, you run your hands along the soft skin of her thighs, pushing them apart to allow yourself access to her waiting pussy. The succubus nether lips already swollen and moist in anticipation, you dive dright in, getting to work licking her and fondling her inner passage with probing fingers.";
	say "     Doing your best to keep the female demon at maximul arousal, you're rewarded with getting her to moan, pant and even scream in lust. Her hands on your head, she shows you what she especially likes, pulling you tight against her crotch so you keep going. As Lilith's moans get louder and louder, she finally reaches the peak of her lust in a messy orgasm, squirting femcum over your hand and face. You lick some of it off yourself, then hold out your hand to the infernal seductress, which leads to her making a show of sucking your fingers one by one.";
	
to say LilithSex4:    [Fuck her pussy]
	say "     As you open your mouth to say what you want from her, the succubus moves in close against you and shuts you up good with a hungry kiss planted on your lips. She moans 'I know what you desire. You want to fuck me with this bad boy' while her hands slide down to your crotch and she takes hold of your rapidly hardening erection. Stroking it, her other hand gently fondling your balls, Lilith guides you to the bed, getting on it and spreading her legs for you, the moist and ready pussy between them just waiting to be filled. Not being able to think of anything else, you almost rip your clothes off your own body, then climb on the bed and mount the irresistible demoness, driving your hard cock into her in one deep stroke. A loud moan escapes your lips as you feel her pussy tightly gripping your manhood, then start to fuck her with rapid and hard thrusts.";
	say "     Having sex with this succubus is almost incomparable with other females, as she does and feels exaclty how you like it, how you need it, her demonic powers making her the perfect woman to fuck. Gripping your shaft with her pussy, rubbing her curvy body against yours, stroking you and enfolding you with her wings, she's got you totally in her power. It's no surprise that, with your libido reaching new heights rapidly, you're driven to (your first) climax, cock pulsing with blast after blast of your load you shoot into Lilth's womb.";
	say "     [WaitLineBreak]";
	if LilithPregnancy is 0 or LilithPregnancy is 4:
		say "     'Yes, yes!' she moans, pulling your lips to hers for a deep kiss. 'I can feel your load inside me, filling me. Invading my womb.' She lets you rest for a moment, then starts stroking your body, the muscles in her pussy gripping your cock and almost masturbating it, giving it no chance to go soft. Animated by the insatiable demoness, you start fucking her again, thrusting in and out rapidly, feeling your own cum lubricate your movements and squirt out around your shaft as you pound into her. On your second go, you last longer than the first, mostly due to just having come already, but even then her expert skills quickly move you to another mindblasting climax. With two loads inside her, the succubus relents, satisfied for now. Holding and stroking you, she moans 'You were amazing, lover. Let's hope it takes. Together we can populate this earth with demons.'";
	otherwise:
		say "     'Yes, yes!' she moans, pulling your lips to hers for a deep kiss. 'I can feel your load inside me, filling me. Invading my womb, bathing our son in his father's seed.' She lets you rest for a moment, then starts stroking your body, the muscles in her pussy gripping your cock and almost masturbating it, giving it no chance to go soft. Animated by the insatiable demoness, you start fucking her again, thrusting in and out rapidly, feeling your own cum lubricate your movements and squirt out around your shaft as you pound into her. On your second go, you last longer than the first, mostly due to just having come already, but even then her expert skills quickly move you to another mindblasting climax. With two loads inside her, the succubus relents, satisfied for now. Holding and stroking you, she moans 'You were amazing, lover. Teaching your demon son the taste of cum before he's even born. He'll be an amazing incubus.'";		
	if LilithPregnancy is 0:              [not already preggers]
		let LilithPregChance be a random number from 1 to 20;  	
		if LilithPregChance > 5:            [75% chance]
			now LilithPregCounter is 48;      [48 turns till birth] 
			now LilithPregnancy is 1;					[invisibly pregnant]	
	
to say LilithSex5:    [Take Lilith's ass]
	say "     Coming up behind Lilith, your hands find the well-rounded curves of her butt, stroking and squeezing her cheeks. She moves back a slight bit, bringing her ass in contact with your crotch and rubbing against your bulge. Looking over her shoulder, the succubus grins and says 'Ah, so you want to fuck my ass. Wonderful idea.' Lilith saunters over to the edge of the bed, then bends over and wiggles her ass at you. 'I'm waiting, loverboy.' You're barely able to take your eye off the enticing display as you quickly slide off your clothes, then move into position behind the succubus. Kneading her asscheeks with your fingers, you pull them apart a bit, revealing her pucker. Your hips almost move forward on their own, causing your hard manhood to bump against her soft skin. Moving a tiny bit to let your cock find its mark, you then push in, easily penetrating the succubus well-trained rear entrance. It's amazing how tight she feels, even as her passage readily stretches around you. Then finally, you're all the way in, your crotch coming in contact with her ass. A moan comes from Lilith 'Yes, yes! You feel great inside me. Now fuck me - hard!'";
	say "     Eager to follow her wishes, you pull back until you're almost all the way out, then slam forward again, making your bodies meet with an audible slap and a pleased gasp from her. Continuing to fuck this beautiful demonesses ass in likewise fashion, the two of you fill this formerly consecrated room with the sounds of enthusiastically performed, amazing sex. Your coupling goes on quite a while, and you think you acquired some spectators in between, watching from the door until they decided to have sex in the main church chamber. Not that you really care, totally concentrated on the hot demoness under you and around your cock.";
	say "     Some time later, you feel the urgent urge to cum rise inside you, making you speed up even more, and soon you pass the point of no return. Driving all the way into Lilith's ass one last time, you gasp loudly as your balls pulse, sending burst after burst of cum deep into the succubus ass. You stay like that for a moment, just standing behind her and holding on to her until you catch your breath. Then you pull out slowly, allowing her to pucker to pull tight again and not even lose a drop of cum. The satisfied demoness turns around, gives you a hot kiss on the lips, then goes to lie on the bed, lounging in an erotic pose.";

Section 3 - Endings

[
when play ends:
	if (hp of Lilith > 0:  [player met her and is sane]
		say "    A";
]
Lilith ends here.
