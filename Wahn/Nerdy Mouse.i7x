Version 1 of Nerdy Mouse by Wahn begins here.
[Original by McRabid]
[Version 0.5 - Touch-ups and framework for player victory sex created.]
[Version 1 - Moved to Guest Writers]
[Version 2 - Moved to Wahn in preparation of some work on him]

[ Character Info:                                                                     ]
[ Name: Wesley                                                                        ]
[ Group: ORC - Omicron Rho Chi (Nerd Frat)                                            ]
[ Background: Gets bullied (a lot) by a large group of jocks, mainly a African lion   ]
[             named Jorge (who also sexually abuses him)                              ]
[ Character: Prim & Proper Upbringing, somewhat childish, arrogant about intelligence ]

[ Relationship Options (future plans)                                                 ]
[ A - Player Protector for Wesley vs Jocks                                            ]
[     1 - Boyfriend (no cuck for Wesley)                                              ]
[         possible loving mpreg option here (exclusive for this route)                ]
[           Options                                                                   ]
[           -> mouse cubs safe in a nursery in the nerd frat (no fast grow)           ]
[           -> fast grow mouse teens (aged up), possible incest/group content with Wes]
[     2 - Buddy (nonsexual)                                                           ]
[     3 - Buddy (friend with benefits)                                                ]
[ B - Player becomes Wesley's Pimp - still some protection vs Jocks, but he's getting ]
[     fucked and the player profits                                                   ]
[     1 - Player bullied/raped Wesley himself and things fall into this area as jocks ]
[         become aware/ meet you                                                      ]
[         possible mpreg mouse slut option                                            ]
[     2 - Player befriended Wesley, but then was shown the sex tape and decided they  ]
[         don't want to be real friends with a slut, but want to benefit from him     ]

[ Notes for the future:                                                               ]
[ - make sure Wesley has no erection when he's being used in a scene with the jocks   ]

[   Scene hook:  Player and Wesley start hanging out, Jorge hears about it and comes  ]
[                by to mock Wesley, throwing a tape to the player with a comment of   ]
[                "you really want to hang out with a slut like this?" - then Wesley   ]
[                can explain that they abused him, and the player can destroy the     ]
[                tape right away in front of him, or keep it to maybe watch           ]
[                (video tape of Jorge and buddies using him, up to and including      ]
[                Wesley passing out and them just continuing)                         ]

[ Note to bring up later: He's got allergies (despite the nanites and all)
 'I... s-sorry - allergies. There's so many people out and about now, with all sorts of shapes, that an allergy to pet dander is even more annoying than it was before. Can't even quite be sure what species my nose reacts to. Really hope I'm not allergic to myself or something like that.']

"Adds a Nerdy Mouse creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

to say NerdyMouseDesc:
	choose a row with name of "Nerdy Mouse" in the Table of Random Critters;
	if enemy type entry is 1 and "Player-Bullied" is not listed in Traits of Wesley: [Player doesn't know him]
		say "     As you're exploring the Campus Quad you almost run into a four foot tall anthro brown mouse, tightly clutching a messenger bag to his side, which is hanging from a strap over his shoulder. He's got a pair of  thick circular glasses with a silver-rimmed frame on his nose, giving him the appearance of having fairly large eyes. Further, he's wearing a t-shirt with a large D20 dice on it, and a pair of blue jeans - given his small size, these must have been children's clothes, possibly even girl's children clothes for the pants, as they're not quite fitting the frame of the rodent. Being proportioned like an adult despite the small stature really makes him far more slender than a little human would be. Letting out a startled squeak and jumping back as if he touched a searing-hot stove, the mouse almost hyperventilates, staring wildly at you from behind his large glasses. Clearly, he's a tightly wound ball of anxiety, and you can almost see the fight or flight impulses battle in him, by the way his gaze sweeps left and right, trying to analyze the situation.";
		say "     With you standing in his way forward, and some other passersby not too far in the other direction, he seems to be stuck between impulses, and then he screams, 'I... I'll not stand for bullying anymore! Get out of my way!' With that said, he rushes forward, arms flailing wildly in a pathetic attempt of a threat display - which would be more effective if he didn't squeeze his eyes shut at the same time. As you easily side-step him, the nerd stumbles over the edge of the walkway and falls flat on his face, scraping his arm against and making the glasses go tumbling off his nose, landing on the ground nearby. This just exasperates his frantic state, as he grabs for them like a drowning man and puts the glasses back on hastily, then jumps back to his feet. With you still being far too close still, and him getting hurt, he snaps to a fairly comical fighting stance, arms raised like a caricature of a boxer. 'You shall not put a hand on me, villain!' he shouts, then throws himself at you in a fatalistic attack.";
	else if "Beat Up Player" is listed in Traits of Wesley:
		say "     Moving along one of the campus walkways, you round the corner of a building, finding yourself face to face with that nerdy mouse you ran into before. He recognizes you immediately in turn, eyebrows drawing together and nose ruffling in disgust. 'Oh, it's you. You want some more, eh loser?!' he says in a hostile tone, then throws himself at you, ready to fight.";
	else if "Player-Bullied" is listed in Traits of Wesley:
		if PlayerFucked of Wesley is true: [raped him before]
			say "     Moving along one of the campus walkways, you round the corner of a building, finding yourself face to face with that nerdy mouse you ran into before. He recognizes you immediately in turn, eyebrows drawing together and nose ruffling in disgust. 'Oh my god,' he screams, eyes frantic as he seeks a way of escape, then snaps to trying to doge past you at a run. With a chuckle at the pathetic showing bubbling up inside you, your arm almost automatically shoots out, making him basically clothesline himself, falling on his ass as he runs face-first into an immovable object. Letting out a cruel laugh as you see him fall down and hit his head, almost rolling over backwards. Stepping closer as you watch the show, you're ready to pounce as he gets back up, with a fight ensuing between the two of you.";
		else:
			say "     Moving along one of the campus walkways, you round the corner of a building, finding yourself face to face with that nerdy mouse you ran into before. He recognizes you immediately in turn, eyebrows drawing together and nose ruffling in disgust. 'Oh, it's you,' he says in a hostile tone, then adopts an almost comical boxing stance before shouting, 'You bully! No more! I... I'll show you this time!' With that said, he charges in with his arms flailing, throwing himself at you in fatalistic desperation.";
	else if enemy type entry is 2: [Player knows him by name]
		say "     As you're on your way along one of the walkways of the campus, you see Wesley speed-walking ahead of you, his head down and messenger bag clutched to his side. Raising a hand in a wave to greet him, you're about to say something when he literally just walks into you, not having looked up in time to actually see you standing right in front of him. As he bounces off you with a thud and a squeak, the nerdy mouse stares at you from behind his large glasses for a second, then says, 'Oh! Hey, it's you! Sorry about, you know, running into you.' He seems slightly ashamed at the lame greeting, but is still markedly nervous about standing still out in the open, glancing left and right warily.";
		say "     [bold type]What do you want to do now?[roman type][line break]";
		let Wesley_Peaceful_Choices be a list of text;
		add "Have a friendly talk with Wesley." to Wesley_Peaceful_Choices;
		add "Escort him to where he's going." to Wesley_Peaceful_Choices;
		add "Shrug it off and wish him a good day." to Wesley_Peaceful_Choices;
		let Wesley_Peaceful_Choice be what the player chooses from Wesley_Peaceful_Choices;
		if Wesley_Peaceful_Choice is:
			-- "Have a friendly talk with Wesley.":
				say "     Raising a hand in a calming gesture, you try to get Wesley to wind down a little, and tell him that you'd like to talk to him. After another quick glance all around, he lets out a relieved breath and relaxes, adjusting his glasses as he attentively waits for you to speak.";
				TraitGain "Second Talk" for Wesley;
				say "[WesleyTalkMenu]";
			-- "Escort him to where he's going.":
				say "     You offer to accompany Wesley for a little while, and he gladly accepts. 'Safety in numbers!' he says with a knowing smile, then points forward in a faux-heroic pose, 'Onwards ho!' With the anthro mouse keeping close to your side as you move ahead, his slender paws having to quickly pad forwards to keep pace, you make good headway towards the lecture hall he's bound for. When you arrive at your destination soon after, the now-smiling nerd raises his right hand to lay it over his heart, then gives you a half-bow, intoning the words, 'Your assistance was greatly appreciated, gentlebeing.' Wiggling his nose and letting out a happy chuckle at being able to deliver what you assume is some quote, he then adds a little wave and quickly vanishes in the building.";
			-- "Shrug it off and wish him a good day.":
				say "     Smiling and commenting that the little bump was nothing to worry about, you wish Wesley a good day, leaving him to give you a friendly nod before moving on in a wary dash. Hopefully he'll be able to avoid running into any of the bullies that have been plaguing his existence lately.";
		now combat abort is 1; [he won't fight people he knows]

to say losetonerdymouse:
	if "Player-Bullied" is listed in Traits of Wesley:
		if HP of Player > 0:
			say "     As you raise your hands and tell him that you surrender, the mouse nerd scrunches his nose at you and growls, 'Guess, I'm just some sort of joke to you, eh?! Someone to beat up and then act like nothing happened afterwards. Go to hell!' Gathering up a wad of spit, he lets it fly to hit you in the chest. He's trembling from the impulse to take things further, but it seems his nerve runs out, and storms off before you can retaliate, running away at a not unimpressive speed. Looks like he got plenty of cardio from fleeing being his best survival strategy... Hmpf, and that's when you even tried to be somewhat nicer this time. [bold type]Almost seems like he doesn't trust you. Seems he can't handle a little bit of ribbing or [if PlayerFucked of Wesley is true]some sexual attention (not like he'd ever have gotten any on his own)[else]something[end if].[roman type][line break]";
		else:
			say "     As you collapse in front of the nerdy mouse, he lets out a shrill scream, continuing to rain down blows and kicks upon your form, forcing you to curl up in a ball to try to protect your head and chest. After unloading his rage for several long moments, the red mist in his gaze eventually lifts and he runs off, seemingly shocked at what he just did.";
			TraitGain "Beat Up Player" for Wesley;
	else: [player hasn't made him an enemy yet]
		if HP of Player > 0: [surrender]
			say "     As you raise your hands and tell him that you surrender, the mouse nerd hesitates, staring at you with a baffled expression. 'W-wait, what?' he says, eyebrows rising behind the large round glasses on his nose, then slowly lets his raised fists sink down. 'I - uhm, you mean you weren't... planning on roughing me up?' As you shake your head, he swallows visibly, then bursts out with rapid-fire words, 'It's what a bunch of those jock assholes have been doing to me, you know. Before and after this whole transformation thing started. At least now it doesn't hurt so much, afterwards. What bruises I get vanish moments after. But they ramped up the frequency of beatings!' Running a little bit out of steam, water wells up at the edge of his eyes, and he stops to take a breath, then suddenly gasps and takes a step back. 'God, I'm almost as bad as them now! I lashed out, just because... because... because you were in my way! I'm sorry!' A whimper escapes his lips, and he seems to shrink in on himself, ears drooping as he stares at his trembling hands. Glancing up again, all twitchy and distraught, he seems to be seconds before running away in shame.";
			let Wesley_Peaceful_Choices be a list of text;
			add "Tell him to relax and slow down, take a breath, and actually talk with him." to Wesley_Peaceful_Choices;
			add "Get angry and yell at him, ensuring that he won't bother you again." to Wesley_Peaceful_Choices;
			add "Shrug and let him run." to Wesley_Peaceful_Choices;
			let Wesley_Peaceful_Choice be what the player chooses from Wesley_Peaceful_Choices;
			if Wesley_Peaceful_Choice is:
				-- "Tell him to relax and slow down, take a breath, and actually talk with him.":
					say "     Doing your best not to make any sudden moves, you say in a firm tone that you're okay, and no one got hurt. He should try to relax, maybe step over to that bench over there with you and sit down, so he can take a deep breath. The frantic expression on the mouse's face smooths out a little as he listens to your words, and actually does move to the bench along with you, though his hands are almost wringing the carry strap of his messenger bag, betraying his anxiousness. Once you're both seated, with him just on the edge of the bench, you introduce yourself and add that you just want to talk. 'Oh? I - I'm Wesley. My friends call me Wes, but I actually prefer Wesley. Because it's my name,' he replies sheepishly, seemingly not quite sure where you're going with this. Man, this rodent is really wound up tight, the bullying must have been intense!";
					say "[WesleyTalkMenu]";
					choose a row with name of "Nerdy Mouse" in the Table of Random Critters;
					now enemy type entry is 2; [Player knows him by name]
				-- "Get angry and yell at him, ensuring that he won't bother you again.":
					say "     As the anthro mouse almost stumbles in his need to get away, you give him a proper earful, shouting that he's a proper asshole himself, or maybe a lunatic, blowing his lid like he did. With the brown fur covering his whole body including the face, you can't really make out anything like a blush, but judging from the pink tinge that comes to his ears, he must be bright red in the face right now. The college nerd flees as fast as he can, shame driving him to put as much space between the two of you as possible. While doing so, he snags his messenger bag on a signpost that he barely dodges at a full run, but is in such a panic that he doesn't even stop to free it, instead just slipping out of the carrying strap to get away.";
					say "     [bold type]Given the level of his shame and embarrassment right now, you wouldn't be surprised if the nerd hid out in his dorm room for the next few days. And even if he'll later dare to go out again, he'll avoid you for sure from now on. You'll not see this mouse out on the campus grounds again. [roman type][line break]";
					choose a row with name of "Nerdy Mouse" in the Table of Random Critters;
					now area entry is "Nowhere";
				-- "Shrug and let him run.":
					say "     Blowing out your breath, you watch the mouse flee in shame. While one could hope he'd learn something from this, it somehow seems unlikely. All the bullying seems to have made him fairly volatile and ready to lash out at the slightest hint of a perceived threat.";
		else: [normal combat loss]
			say "     The mouse grins at you and sticks his tongue out mockingly, 'I've laid you low, bugbear! You shall not trouble me anymore!' Seeming overly proud of his achievement, he glances around, as if to look for someone he knows to applaud his victory. As no one pays you too much attention, with small fights being not that uncommon these days, he deflates a little, focusing back on you. He's not quite sure what to do next, he then falls back to raising a hand and slowly extending the middle finger, almost experimentally, before brandishing it and adding in a deep, manly voice, 'Fuck you, punk!' A little giggle expressing newfound joy at the crude gesture directly afterwards dashes the intended tone, but the mouse doesn't seem to notice that for himself. Instead, having finished his victorious grandstanding, he actually takes a closer look at you now.";
			if Player is purefemale: [female]
				say "     The rodent freezes as he stares at you. 'Oh crap, oh crap... I... I am so... soooo sorry. I... I was just so caught up in defending myself... Are you okay Miss?' As he talks, he's hurrying to your side to help you up, only to trip over his own feet. [if Breast Size of Player > 3]The nerd ends up face first between your breasts. He pulls back quickly, his ears blushing beet-red in embarrassment. 'I didn't mean it! I would never do... er... not that you aren't pretty. I just.. prefer girls that have an IQ higher than their bust size.' The mouse's embarrassment had been so cute right up until that point. As if sensing your rising anger, he gives a startled squeak before scampering away as fast as he can. [else if Breast Size of Player > 0]The nerd ends up face first between your breasts. He pulls back quickly, his ears blushing beet-red in embarrassment. 'I didn't mean it! I would never do... er... not that you aren't pretty. And I like that your bust size doesn't outpace your IQ.' The mouse's embarrassment had been so cute right up until that point. As if sensing your rising anger, he gives a startled squeak before scampering away as fast as he can. [else]The nerd ends up face-planting against your flat chest. He pulls back quickly, his ears blushing beet-red in embarrassment. 'I didn't mean it! I would never do... er... not that you aren't pretty. A bit flat, but that's nothing against you, eh?' The mouse's embarrassment had been so cute right up until that point. As if sensing your rising anger, he gives a startled squeak before scampering away as fast as he can. [end if][line break]";
			else if Player is male: [male + herm]
				say "     'You're the loser now. Jerk!' [if Breast Size of Player > 1]Then he starts to stutter, as his eyes fall on your breasts. 'Err, I mean...' Somehow he manages to trip over his own feet at that moment, landing half on top of you and in starting to push himself up, puts a hand accidentally on your crotch. The mouse bolts upright, his face covered in a blush. 'You... have a...' He clears his throat, blushing. 'I didn't mean to grab... I... uh...' He stands quickly, an obvious bulge in his pants, and without another word, bolts as quickly as he can. [else]Snorting, he adds, 'Not such a big guy now anymore, eh?!' Somehow he manages to trip over his own feet at that moment, landing half on top of you and in starting to push himself up, puts a hand accidentally on your crotch. The mouse bolts upright, his face covered in a blush. 'Your... er, sorry for touching...' He clears his throat, blushing. 'I didn't mean to grab... I... uh... nope, I'm into girls, you know!' He stands quickly, an obvious bulge in his pants, and without another word, bolts as quickly as he can. [end if][line break]";
			else:
				say "     'You're the loser now. Jerk!' The mouse, empowered with his victory over you, grows bold and spits on you. Having had enough of this smarmy little bastard you stagger to your feet with fists balled. He gives a terrified squeak before darting off as fast as he can run.";

to say beatthenerdymouse:
	if "Player-Bullied" is listed in Traits of Wesley:
		say "     The defeated nerd slumps to the ground with a whimper. 'You... you're just jealous that I'm smarter than you,' the anthro mouse sniffles as he pushes his glasses back up on his nose.";
		say "     [bold type]What do you want to do now?[roman type][line break]";
		let Wesley_Roughed_Choices be a list of text;
		add "Offer to help him up, and have a chat with him." to Wesley_Roughed_Choices;
		add "You've got him on the ground and vulnerable - get your fuck on, you earned it!" to Wesley_Roughed_Choices;
		add "He's just asking to be bullied, so you're ready to oblige." to Wesley_Roughed_Choices;
		add "Shrug it off, step over him and keep moving." to Wesley_Roughed_Choices;
		let Wesley_Roughed_Choice be what the player chooses from Wesley_Roughed_Choices;
		if Wesley_Roughed_Choice is:
			-- "Offer to help him up, and have a chat with him.":
				say "     As you step up and hold out a hand, offering to help him up, the nerdy mouse lets out a defeated sigh and pushes himself a little up from the ground. He raises a hand defensively to ward you off instead, then suddenly jumps to his feet and runs off as fast as he can, the moment of surprise giving him just enough time to make a clean getaway. [bold type]Almost seems like he doesn't trust you. Seems he can't handle a little bit of ribbing or [if PlayerFucked of Wesley is true]some sexual attention (not like he'd ever have gotten any on his own)[else]something[end if].[roman type][line break]";
			-- "You've got him on the ground and vulnerable - get your fuck on, you earned it!":
				say "[WesleyForcedSexMenu]";
			-- "He's just asking to be bullied, so you're ready to oblige.":
				say "You stare at him for some time, giving the nerd enough time to stand back up, but a warning look from you makes him think better of running away. You feel a growing urge to get some payback on the little upstart.";
				say "     [one of]You grin widely as you wrap the nerd up in a headlock and give him a brutal noogie. 'Stoppiiiiiiit noooo!' the puny mouse squeaks. He struggles impotently to wind himself out of your grip, sniffling and begging to be let go. Pathetic loser! [or]You wrap your arm over the little guy's shoulders and noisily slurp your finger before jabbing it into one of his big, round ears. 'Aaaah noooo! Wet willie!' the puny mouse. He struggles impotently to wind himself out of your grip, sniffling and begging to be let go. Pathetic loser! [or]Acting like you're leaving, you walk past him before quickly grabbing the waistband of his underwear and yanking it upwards, forcing the rodent's tail into a sharp twist too. 'AAGH!' The mouse gives a high-pitched squeak before falling over from your wedgie. He writhes on the ground for a moment, sniffling and crying. What a pathetic loser! [at random]Satisfied with adding insult to injury you wander away from the humiliated nerd.";
				TraitGain "Player-Bullied" for Wesley;
			-- "Shrug it off, step over him and keep moving.":
				say "     Now that the uppity mouse isn't in your way anymore, you inform him that you'll be seeing him around with a smirk, then step over the nerd and keep moving along the pathway.";
	else: [player hasn't made an enemy of him yet]
		say "     The defeated nerd slumps to the ground with a whimper. 'You... you're just jealous that I'm smarter than you,' the anthro mouse sniffles as he pushes his glasses back up on his nose.";
		say "     [bold type]What do you want to do now?[roman type][line break]";
		let Wesley_Roughed_Choices be a list of text;
		add "Remind him that he started this and hold a hand out to help him get up, then have a chat." to Wesley_Roughed_Choices;
		add "You've got him on the ground and vulnerable - get your fuck on, you earned it!" to Wesley_Roughed_Choices;
		add "He's just asking to be bullied, so you're ready to oblige." to Wesley_Roughed_Choices;
		add "Shrug it off, step over him and keep moving." to Wesley_Roughed_Choices;
		let Wesley_Roughed_Choice be what the player chooses from Wesley_Roughed_Choices;
		if Wesley_Roughed_Choice is:
			-- "Remind him that he started this and hold a hand out to help him get up, then have a chat.":
				say "     As you step up, he cringes back, expecting a beatdown, but you hold out a hand instead. His eyes go wide as you tell him somewhat apologetically that he was the one who started this fight. The mouse stares at your offered hand suspiciously, then finally gives himself a push to accept being helped to his feet. 'What is this?' he asks in a guarded tone, at which point you introduce yourself and tell him that you simply want to have a talk with him. 'Oh? I - I'm Wesley,' he replies sheepishly, pushing up the glasses on his nose to cover his uncertainty about where you're going with this. Man, this rodent is really wound up tight, likely from a cruel amount of bullying he must have endured before!";
				say "[WesleyTalkMenu]";
				choose a row with name of "Nerdy Mouse" in the Table of Random Critters;
				now enemy type entry is 2; [Player knows him]
			-- "You've got him on the ground and vulnerable - get your fuck on, you earned it!":
				say "[WesleyForcedSexMenu]";
			-- "He's just asking to be bullied, so you're ready to oblige.":
				say "You stare at him for some time, giving the nerd enough time to stand back up, but a warning look from you makes him think better of running away. You feel a growing urge to get some payback on the little upstart.";
				say "     [one of]You grin widely as you wrap the nerd up in a headlock and give him a brutal noogie. 'Stoppiiiiiiit noooo!' the puny mouse squeaks. He struggles impotently to wind himself out of your grip, sniffling and begging to be let go. Pathetic loser! [or]You wrap your arm over the little guy's shoulders and noisily slurp your finger before jabbing it into one of his big, round ears. 'Aaaah noooo! Wet willie!' the puny mouse. He struggles impotently to wind himself out of your grip, sniffling and begging to be let go. Pathetic loser! [or]Acting like you're leaving, you walk past him before quickly grabbing the waistband of his underwear and yanking it upwards, forcing the rodent's tail into a sharp twist too. 'AAGH!' The mouse gives a high-pitched squeak before falling over from your wedgie. He writhes on the ground for a moment, sniffling and crying. What a pathetic loser! [at random]Satisfied with adding insult to injury you wander away from the humiliated nerd.";
				TraitGain "Player-Bullied" for Wesley;
			-- "Shrug it off, step over him and keep moving.":
				say "     Now that the uppity mouse isn't in your way anymore, you simply shrug and step over him, then keep moving along the pathway. He started a fight, you ended it, simple as that.";

to say WesleyTalkMenu:
	let DoneTalking be false;
	LineBreak;
	say "     [bold type]What do you wish to talk about with Wesley?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just have a pleasant chat";
	now sortorder entry is 1;
	now description entry is "Try to connect to him";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about the jocks";
	now sortorder entry is 2;
	now description entry is "Ask him about the bane of his college life";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about if he has friends";
	now sortorder entry is 3;
	now description entry is "Find out who he hangs around with";
	[]
	if "Second Talk" is listed in Traits of Wesley and "Nerd Connection" is listed in Traits of Wesley and "ORC Mentioned" is listed in Traits of Wesley and "Jorge Mentioned" is listed in Traits of Wesley:
		choose a blank row in table of fucking options;
		now title entry is "Tell him he's cute, and you'd like to have some fun together";
		now sortorder entry is 10;
		now description entry is "Offer him a good time";
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
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Just have a pleasant chat"):
				say "[Wesley_Chat]";
			else if (nam is "Ask about the jocks"):
				say "[Wesley_Jocks]";
			else if (nam is "Ask about if he has friends"):
				say "[Wesley_Friends]";
			else if (nam is "Tell him he's cute, and you'd like to have some fun together"):
				if PlayerFucked of Wesley is false:
					say "     Blue eyes going wide, Wesley looks at you in shocked surprise. [if Player is male]You can see his Adam's apple bob as he swallows, then replies, 'I - er, I don't know.' His gaze flicks down to your crotch, with him, biting his lip nervously. 'You being a dude, is... is fine, I guess. I kinda prefer girls, but guys can be nice too. I- is that alright?' He's trembling a little, afraid to have offended you, only relaxing when you say a few calming words, then slowly reach out and give his shoulder a light squeeze. [else]You can see his Adam's apple bob as he swallows, then replies, 'Wow! Er, I mean - thank you for, for the compliment. I'd like that very much. You look really nice, and, and...' He's trembling a little, afraid to offend in some way, only relaxing when you say a few calming words, then slowly reach out and give his shoulder a light squeeze. [end if][bold type]Remembering what he told you before, you realize that he must have mostly been used by others to get off - against his will. And likely, he's expecting the same from you, just with the metaphorical slap to the face garbed in a soft glove. So unless you want to be associated with his abusers in the cute mouse's mind, it'd be best to give Wesley some pleasure to show that you're actually different.[roman type][line break]";
				else:
					say "     Blue eyes going wide, Wesley blushes all the way up to his large ears as he hears you say that. [if Player is male]You can see his Adam's apple bob as he swallows, then replies, 'I - er, didn't think you'd be wanting to do more. With me.' He's trembling a little, only relaxing when you say a few calming words, then slowly reach out and give his shoulder a light squeeze. [else]You can see his Adam's apple bob as he swallows, then replies, 'Wow! Er, I mean - thank you for, for the compliment. I'd like that very much. You look really nice, and, and...' He's trembling a little, afraid to offen in some way, only relaxing when you say a few calming words, then slowly reach out and give his shoulder a light squeeze. [end if]With a chuckle on your lips, you pull him closer, letting your hand wander to feel his crotch. Definitely some movement there, haha!";
				say "[WesleySexMenu]";
				now DoneTalking is true;
			if DoneTalking is false:
				say "[WesleyTalkMenu]"; [looping back to continue talking]
			else:
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Saying that it's about time you get going, you say your goodbyes to Wesley, who gives you a shy smile as he replies, 'Okay. I - uhm, hope to see you again.'";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say Wesley_Chat:
	say "     Trying to connect with the anthro rodent, you draw him into a conversation about the d20 dice on his shirt, using what little (or much) you may know about tabletop games. After some initial wariness about the topic, he opens up and comes out of his shell when he manages to push aside his expectations of being made fun of for his interests. Wesley has some neat and funny things to say, making the conversation fairly pleasant. Among other adventures, he recounts in excited tones the time his paladin character saved the day, raising his holy avenger sword to fend off a powerful demon while the rest of the party finished the ritual to seal the beast away forever in a magical prison. Then there was the time when the paladin was kissed by the elven princess, and...";
	say "     For a nice little while, both of you forget about the troubles of the changed world and chaotic city, instead simply chatting along. You can't help but feel like this little interlude is good for you, making you remember that there's more to life than the struggle to survive in the city...";
	TraitGain "Nerd Connection" for Wesley;
	SanBoost 10;

to say Wesley_Jocks:
	say "     Curiosity drives you to ask about what problems Wesley has been having with those jocks he mentioned, and after a moment of hesitation, the floodgates open, with him starting to unload. Apparently things started to wrong for him eight months before the nanite apocalypse, when he tried to earn some extra money by doing tutoring. One of his clients, a baseball jock named Jorge, wasn't so much interested in getting help in learning, but rather wanted Wesley to write assays and projects for him instead. Wesley tried to say no, and report such academic insincerity, not that it led to anything! No, all it resulted in was him being exposed to threats and some violence to play along, with the administration simply ignoring the issue. And ever since then, the clique of friends around Jorge have been picking on him any chance they could. 'The asshole is a fucking mountain lion now! Laughed his ass off when he saw that I turned into a mouse. He was bad before, but now he's got CLAWS and scary teeth!' You can see some tears welling up in the corner of Wesley's eyes, and barely catch the whisper of 'And he's... horny... all the time,' under the mouse's breath.";
	say "     Pressing his lips together and not saying anything more for a little while, it's not hard to guess what might be going on there. Must be a really touchy subject for him, if he can barely speak the words. A minute later, Wesley adds quietly, 'I even thought about going to the Spartans, but then I saw that three of them are his buddies, and so that option's no help either. Been doing my best to avoid Jorge and all the rest of them since, and I've been reading up on boxing, kung fu, kendo, all such stuff. To protect myself.' As if to demonstrate his 'skills', the small mouse shows you some poses, all of wildly conflicting martial traditions that do not work together at all. He really should have focused on one of those, and trained to increase his strength instead, but maybe it is best to wait with telling him that, not to dash his hopes too roughly.";
	TraitGain "Jorge Mentioned" for Wesley;

to say Wesley_Friends:
	say "     As you ask your question, Wesley adjusts his glasses and nods to you. Proudly stretching out his chest, the mouse then adds, 'I'm actually in a frat, Omicron Rho Chi, or ORC. It's the one place I can actually relax and be safe, without having to look over my shoulder constantly. No one can mess with me in the House, nope, not happening! It's because the guys look out for me, even though I - I don't quite fit in with them anymore.' His expression droops visibly, and for a moment the anthro mouse seems even smaller than he actually is, letting out a sigh before continuing. 'You see, when this whole thing started and reached the campus, I was one of the first to... transform. I blame it on the study I'm running as a term project. You see, there's this maze in the lab, huge thing, fills a whole table, about ten feet by five feet, and it's got levers and buttons and... it's pretty neat, in short. And you know who gets sent through that? Half a dozen brown mice.' With a theatric sigh, he spreads his slender, brown-furred arms and lets his head hang for a moment.";
	say "     'People were pretty freaked out at first, we quarantined ourselves in the frat house for days, with me having to stay in my room, and the others dropping off food in front of the door then getting to safety before I opened it. We even had our usual RPG nights like that, you know, through the door with them camping in the hallway. Then eventually, when some patterns started to emerge, turning into what you contact, man to man transmission and all that, we voted and decided to make the best of the situation. Invested most of the money we had on hand, and a bunch of supplies to pay people for expeditions, out into the city.' He looks a little guilty when he adds, 'Some didn't come back, maybe because its so dangerous, maybe they just ran off with the payment, but the ones who did... they brought just what we needed! So in short order, the frat was filled with elves, and orcs, and lizardmen, and Arnold even turned into an efreet! There were some hiccups, what with Mathias and Theo trying for being hill giants and then kinda just... merging into one. Freaked em out a bunch, having two heads on one huge body, but thankfully they're best buds so it... worked itself out, with them enjoying being an actual, real life ettin.";
	WaitLineBreak;
	say "     Taking a deep breath, and then blowing it out slowly, Wesley adds, 'And me? I tried to become an angel. You know, tall, strong, shining white wings and all that. Can you imagine - an actual angel paladin? Hah, that was my dream!' Shrinking in on himself, he looks down, then adds quietly, 'It... didn't take.' Pressing his lips together, he shakes his head and then puts on a resigned expression. 'Maybe it's for the best. Bet I'd have accidentally crashed into a building or something when trying to fly.' His expression makes it clear that the college student is just trying to soothe his disappointment at how things turned out to be. Seeing all of his friends gain amazing new bodies while he was left in this diminutive form must have really stung and been devastating for his self-image.";
	TraitGain "ORC Mentioned" for Wesley;

to say WesleySexMenu:
	project Figure of Nerdy Mouse_hard_icon;
	say "     [bold type]What exactly do you want to do with the anthro mouse?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if "Pleasure Given" is not listed in Traits of Wesley:
		choose a blank row in table of fucking options;
		now title entry is "Show him that he deserves some pleasure and you don't just want to use him";
		now sortorder entry is 1;
		now description entry is "Get on your knees and show Wesley a good time";
	else:
		[]
		choose a blank row in table of fucking options;
		now title entry is "Give him a blowjob and swallow his cum";
		now sortorder entry is 1;
		now description entry is "Get on your knees and show Wesley a good time";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Ask him for some oral fun";
		now sortorder entry is 2;
		now description entry is "See what the mouse boy can do with his tongue";
		[]
	Sort the table of fucking options in sortorder order;
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
				if (nam is "Show him that he deserves some pleasure and you don't just want to use him"):
					say "[Wesley_First_BJ]";
				if (nam is "Give him a blowjob and swallow his cum"):
					say "[Wesley_BJ]";
				if (nam is "Ask him for some oral fun"):
					say "[Wesley_GivesOral]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Giving him an apologetic look, you tell Wesley that you changed your mind. He looks distraught at this rejection, sobbing quietly, and things get fairly awkward, with him making up an excuse to get going soon after.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say Wesley_First_BJ:
	say "     Slipping the nerdy mouse's hand into your own, you give it a soft, comforting squeeze, then tell him that he'll enjoy what comes next. Gently pulling him along, you look to find a good spot... and soon, something catches your eye that'll be just perfect: Around the corner of a building, with some tall bushes to hide the two of you from the sight of casual passersby. 'You want to... do stuff right here?' he asks, a little shocked but by the semi-public setting for your shared adventure. Giving him a grinning nod, you pull his messenger bag from over the young rodent's shoulder and lower it to the ground, something Wesley watches with a little tension. He seems to like that you put it down carefully, but can't quite help himself and steps over to place the bag leaning upright against the wall, not just lying on the grass. The nerdy rodent blushes a little bit as he notices you watching him being so particular about this, but you give him a smile to scatter any worries, then move up close to him again.";
	say "     Accompanied by a compliment about his soft fur as you run your hand up his arm, then across his slender chest, you tuck up his t-shirt and let your fingers come to rest on his beltline. And that is when you break out of the track he expects, starting to sink to your knees before his short form. With your fingers beginning to work on the button and zipper of his pants, he stares down at you in bafflement. 'What are you doing? I thought you'd, we'd... that I was supposed to...' Tugging open the jeans he is wearing and revealing a pair of white briefs beneath, you lay a hand on the crotch area and squeeze it lightly. Then you tell him that you want this to be about [italic type]him[roman type], and that you're gonna give him a good time. He matters, and while you could go on about him being cute and sexy (which makes him blush again), you want to show him that in actions, not words.";
	WaitLineBreak;
	say "     Then, you try continue to work the fairly skinny jeans down from his hips, only to have Wesley suddenly say, 'Wait! There's... there's a button back over the tail.' Seemingly still not quite believing that you actually care and want to do this for him, he guides your hands behind his back, where you un-do the last fastener of his jeans, then slide them down along his slender, brown-furred legs. The sensual caress of your fingers along his thighs has a marked effect on the young man, as a little moan escapes his lips. He lifts his legs to allow you to slip the slender foot-paws out of the bunched-up jeans, giving them a little rub that makes him giggle. This just leaves a pair of simple white briefs between you and your objective, which already betrays his arousal state by a big bulge in Wesley's underwear. Un-hooking the fabric from over his erection, you quickly slide the briefs down too along the smooth brown fur of his legs.";
	say "     Almost surprising for his relatively slim build, the young man is sporting a respectably long cock, at least compared to his four foot tall body size. Six inches looks huge on such a small frame, even if it is a little more slender than average. Underneath it are two modestly-sized balls in a snug furry sack. Looks like the mouse is somewhat of a sniper in the genital-department - long barrel, small magazine. But in the end, a guy doesn't need massive amounts of cum if he delivers his shot right on target, and pretty deep. The slender rodent is holding his breath as you inspect his crotch, almost as if afraid you or someone else might suddenly jump out to laugh, slap his manhood, or the like, and he lets out a pleasantly relieved sigh as you gently take hold of his pink-skinned member, stroking its length up and down. 'T-that's nice. You know, that's the one part that didn't shrink when I transformed. I was so glad about that!' he says with a shy smile, his hips pushing a little forward to get closer to your touch. Wanting to add to his pleasure, you cup his balls and play your fingers over them in massaging movements.";
	WaitLineBreak;
	say "     Hearing his breath come a little more quickly, you glance up to meet Wesley's gaze, looking into those baby-blue eyes framed by the large silver frames of his glasses. Still watching him, you then open your mouth, sticking out its tongue to stretch it to the nerdy mouse's dickhead. As your flexing tip touches the head of Wesley's cock, taking in a first taste of his pre-cum that is welling up at the cum-slit, the college student lets out a panted breath, closing his eyes to fully focus on the sensation you are giving him. Amusedly telling him that this is just the start, you proceed to slide your lips over the mushroom head of his cock, tracing its rim with your tongue and just suckling on the end of his erection for now. 'Yes, yes, yes,' Wesley say under his breath, and you can feel his hand a moment later, lightly touching your head - not so much in an effort to control you, but rather to connect, to stroke and touch you back.";
	say "     Smiling around the dickhead in your mouth, you proceed to go deeper, taking one inch, then another one or two, all the wile exploring his shaft's skin with your tongue, its tip playing over Wesley's sensitive skin. It is fun to listen to the little noises he makes as you go down on him, aroused gasps and longing sighs, suppressed moans and little squeaks as he tries to not betray your presence behind the bushes. Eventually, you've gone all the way down, with his whole length in your mouth and down your throat while your nose is nuzzling into the slightly longer fur of his crotch. He is clean and well-groomed, leaving just his natural, furry scent to pleasantly fill your nostrils. Almost reluctantly, you pull back a moment later when you need to take a breath, eyes flicking down to focus on the pink shaft sliding out of your mouth.";
	WaitLineBreak;
	say "     After filling your lungs, you smile and give the mushroom-shaped head a little peck before inhaling the length of Wesley's cock with a big gulp and starting to bob up and down on his erection. His hand squeezes your shoulder as the young man says breathlessly, 'That feels... really... amazing!' and you take this as a challenge to up your game even further. Sucking on his dick and pushing deep to take it down your throat, you move your hand back to his balls, massaging them to increase the pleasure of your rodent partner even more. He squeaks in lust, not so quiet anymore, and his breath quickens markedly as he gives in to the feelings you're waking inside him. With the stimulation pressing all his buttons HARD, it's not surprising that Wesley soon gasps out the words, 'I'm getting really close now!' while patting your shoulder to give you time to pull off. Instead, you go down on him with a vengeance, nuzzling into his bush once more and sucking hard to be rewarded by hearing the grunt heralding his orgasm.";
	say "     'Nnghh,' Wesley says unintelligibly, his fingers clamping down on your shoulder as he has to steady himself after the first hard throb of his cock, splashing his seed down your throat, followed by another, and another. You can feel his balls twitching in your grasp as they pulse and pump out fresh mouse cum, straight into your stomach. This is when he surprises you a little bit, as the young man keeps shooting for longer than you'd have expected - you count seven, eight, nine, ten, then eleven spurts of cum as his cock pulses against your tongue. Squeezing out number twelve by flexing your throat muscles as if you wanted to outright swallow Wesley's cock, you earn a lustful but somewhat shocked squeak from him, followed by the words, 'Getting a little s-sensitive now!' With a chuckle in your throat, you slowly and gently pull off the mouse's still fairly hard cock, giving its head a last little kiss after it passes your lips.";
	WaitLineBreak;
	say "     Standing up in front of the rodent, you meet the gaze of a smiling, well-satisfied young man now. 'That was, just... wow!' he says with eyes full of honest admiration. 'I didn't think I'd ever be the one to... you know, be the one who was sucked off. What with J-' he says, at which point you put your finger on his lips and say that he shouldn't even be thinking about that guy right now. This is about you and Wesley, and you enjoyed giving him a good time quite a bit. Then you lean down and pick up his bag, holding it ready for Wesley while he puts his clothes in order. As he accepts the messenger bag, you add the compliment that he's a proper, virile man, who needs to have his needs met too. He grins as you say this, trying to square his shoulders and look more masculine, with his self-worth getting quite a boost right now. 'Really gotta get going now but, I - uhm, wouldn't mind seeing you again, sometime,' he says in a hopeful tone, then hurries off to whatever he was doing before you ran into each other.";
	NPCSexAftermath Player receives "OralCock" from Wesley;
	TraitGain "Pleasure Given" for Wesley;

to say Wesley_BJ:
	say "     Grabbing the nerdy mouse by the hand, you give him a wink and pull him along beside you, as you look to find a good spot... and soon, you spot a location that's just perfect: Around the corner of a building, with some tall bushes to hide the two of you from the sight of casual passersby. 'You want to... do stuff right here?' he asks, a little shocked but also excited by the semi-public setting for your shared adventure. Giving him a grinning nod, you pull his messenger bag from over the young rodent's shoulder and lower it to the ground. He seems to like that you put it down carefully, but can't quite help himself and steps over to place the bag leaning upright against the wall, not just lying on the grass. The nerdy rodent blushes a little bit as he notices you watching him being so particular about this, but you give him a smile to scatter any worries, then move up close to him again. Accompanied by a compliment about his soft fur as you run your hand up his arm, then across his slender chest, you tuck up his t-shirt and let your fingers come to rest on his beltline.";
	say "     Your fingers quickly undo the front and back buttons of his pants, followed by you sinking to your knees, working the skinny jeans down from his hips as you do. This just leaves a pair of simple white briefs between you and your objective, which already betrays its hard state by the big bulge in Wesley's underwear. Un-hooking the fabric from over his erection, you quickly slide the briefs down along the smooth brown fur of his legs. Almost surprising for his relatively slim build, the young man is sporting a respectably long cock, at least compared to his four foot tall body size. Six inches looks huge on such a small frame, even if it is a little more slender than average. Underneath it are two modestly-sized balls in a snug furry sack. Looks like the mouse is somewhat of a sniper in the genital-department - long barrel, small magazine. But in the end, a guy doesn't need massive amounts of cum if he delivers his shot right on target, and pretty deep. The slender rodent is holding his breath as you inspect his crotch, almost as if afraid you or someone else might suddenly jump out to laugh, slap his manhood, or the like, and he lets out a pleasantly relieved sigh as you gently take hold of his pink-skinned member, stroking its length up and down.";
	WaitLineBreak;
	say "     'T-that's nice,' he says with a shy smile, his hips pushing a little forward to get closer to your touch. Wanting to add to his pleasure, you cup his balls and play your fingers over them in massaging movements. Hearing his breath come a little more quickly, you glance up to meet Wesley's gaze, looking into those baby-blue eyes framed by the large silver frames of his glasses. Still watching him, you then open your mouth, sticking out its tongue to stretch it to the nerdy mouse's dickhead. As your flexing tip touches the head of Wesley's cock, taking in a first taste of his pre-cum that is welling up at the cum-slit, the college student lets out a panted breath, closing his eyes to fully focus on the sensation you are giving him. Amusedly telling him that this is just the start, you proceed to slide your lips over the mushroom head of his cock, tracing its rim with your tongue and just suckling on the end of his erection for now. 'Yes, yes, yes,' Wesley say under his breath, and you can feel his hand a moment later, lightly touching your head - not so much in an effort to control you, but rather to connect, to stroke and touch you back.";
	say "     Smiling around the dickhead in your mouth, you proceed to go deeper, taking one inch, then another one or two, all the wile exploring his shaft's skin with your tongue, its tip playing over Wesley's sensitive skin. It is fun to listen to the little noises he makes as you go down on him, aroused gasps and longing sighs, suppressed moans and little squeaks as he tries to not betray your presence behind the bushes. Eventually, you've gone all the way down, with his whole length in your mouth and down your throat while your nose is nuzzling into the slightly longer fur of his crotch. He is clean and well-groomed, leaving just his natural, furry scent to pleasantly fill your nostrils. Almost reluctantly, you pull back a moment later when you need to take a breath, eyes flicking down to focus on the pink shaft sliding out of your mouth.";
	WaitLineBreak;
	say "     After filling your lungs, you smile and give the mushroom-shaped head a little peck before inhaling the length of Wesley's cock with a big gulp and starting to bob up and down on his erection. His hand squeezes your shoulder as the young man says breathlessly, 'That feels... really... amazing!' and you take this as a challenge to up your game even further. Sucking on his dick and pushing deep to take it down your throat, you move your hand back to his balls, massaging them to increase the pleasure of your rodent partner even more. He squeaks in lust, not so quiet anymore, and his breath quickens markedly as he gives in to the feelings you're waking inside him. With the stimulation pressing all his buttons HARD, it's not surprising that Wesley soon gasps out the words, 'I'm getting really close now!' while patting your shoulder to give you time to pull off. Instead, you go down on him with a vengeance, nuzzling into his bush once more and sucking hard to be rewarded by hearing the grunt heralding his orgasm.";
	say "     'Nnghh,' Wesley says unintelligibly, his fingers clamping down on your shoulder as he has to steady himself after the first hard throb of his cock, splashing his seed down your throat, followed by another, and another. You can feel his balls twitching in your grasp as they pulse and pump out fresh mouse cum, straight into your stomach. This is when he surprises you a little bit, as the young man keeps shooting for longer than you'd have expected - you count seven, eight, nine, ten, then eleven spurts of cum as his cock pulses against your tongue. Squeezing out number twelve by flexing your throat muscles as if you wanted to outright swallow Wesley's cock, you earn a lustful but somewhat shocked squeak from him, followed by the words, 'Getting a little s-sensitive now!' With a chuckle in your throat, you slowly and gently pull off the mouse's still fairly hard cock, giving its head a last little kiss after it passes your lips.";
	WaitLineBreak;
	say "     Standing up in front of the rodent, you meet the gaze of a smiling, well-satisfied young man now. 'That was, just... wow!' he says with eyes full of honest admiration. Replying that you had a bunch of fun too while playing with him like this, you then lean down and pick up his bag, holding it ready for Wesley while he puts his clothes in order. 'Really gotta get going now but, I - uhm, wouldn't mind seeing you again, sometime,' he says in a hopeful tone, then hurries off to whatever he was doing before you ran into each other.";
	NPCSexAftermath Player receives "OralCock" from Wesley;

to say Wesley_GivesOral:
	say "     Grabbing the nerdy mouse by the hand, you give him a wink and pull him along beside you, as you look to find a good spot... and soon, you spot a location that's just perfect: Around the corner of a building, with some tall bushes to hide the two of you from the sight of casual passersby. 'You want to... do stuff right here?' he asks, a little shocked but also excited by the semi-public setting for your shared adventure. Giving him a grinning nod, you pull his messenger bag from over the young rodent's shoulder and lower it to the ground, then tuck up his t-shirt after running your hands over the slender chest of the college student. Your fingers slide down to cup the bulge in his pants, proof of how aroused he is to be doing something like this. You'd bet you could make him do anything right now - and so you decide to pat him on the shoulders, then push down on them while nodding towards the ground.";
	say "     Wesley is quick enough to pick up on your intent, bending his body forwards to bring his head closer to your crotch. He looks pretty cute, with his baby-blue eyes surrounded by the silver frames of his glasses, and that tuft of blond head-fur between the large round ears. With a smile, you tousle the hair a little bit, then ask him to help you out with something... [if Player is not barecrotch]while starting to bare your crotch and putting down any gear that might hinder you, before finally [end if]pointing at your crotch, then winking meaningfully. As he opens his mouth, but doesn't quite find the words to speak at first, you decide to just push ahead, moving your hand to stroke his cheek, then run your fingertips over his lips, before pushing your digits into his mouth. He readily obeys as you tell him to suck on them, closing his lips around your fingers and doing as he is told. Pleased by the good start, you soon escalate by guiding his head closer to your crotch...";
	WaitLineBreak;
	if Player is male:
		say "     There is a momentary flash of something... fear, you think ...in Wesley's eyes as he finds himself eye to [']eye['] with your [Cock of Player] shaft, already hard and erect in anticipation. You put your hand on his chin and lift it, to look into the young man's eyes to ask if he's alright, and that he can stop if this is too much. He seems relieved at your thoughtfulness, then shakes his head slightly to show that he'll be fine, before steeling himself and focusing on your erection once more. Clearly, the young rodent needs a bit of a softer touch, so that's what you give him, with a stroke along the curve of his cheek, and some encouraging words. And it works - Wesley slowly opens his mouth and starts to lick your shaft, starting at the base and working his way up towards the head. He still seems hesitant at first, frequently glancing up to take in your reactions, but soon finds his groove, moving more confidently to suck your cock. It's clearly not the first dick he's had in his mouth, given that he knows to keep his teeth well-away from touching your erection, but apparently he usually is quite harshly used.";
		say "     Letting the young rodent move at his own pace, you're treated to a pleasant bout of your cock being licked along the shaft and worshiped, with the fine whiskers of the mouse student tickling the insides of your thighs. Then he takes the head into his mouth, playing his tongue-tip over it before moving on to going deeper. Your shaft slides between his lips, and down Wesley's throat with an ease that betrays his experience. At the same time, he's smiling around the cock in his mouth, happy that you're letting him take his time. Eventually, after going down on you a few times, nice and slow, feeling out your erection in his mouth, the college student pulls back again and starts to pant quickly, taking in gulps of air almost as if to store up some oxygen. Looking up and putting on a brave expression, he says, 'I - I can do this!', more to himself than to you. Then he opens his mouth wide and basically inhales your cock in one gulp, quickly followed by him pulling off it again with his lips tight around the shaft, and another deep gulp right after.";
		WaitLineBreak;
		say "     While demonstrating his skill at being on the receiving end of a cock, of his own free will this time, Wesley feels around to get hold of your hand, then guides it to the back of his slender neck, so you can cradle his head with your fingers. Meeting your eyes while having your cock balls-deep in his throat, he makes a humming sound that nicely vibrates around your shaft, then adds a meaningful nod. Looks like he's asking you to thrust into his mouth, and you're more than happy to oblige. With a good and solid grip on the rodent's head, you pull back your hips, then thrust into him with gentle forcefulness, reveling in the feeling of thrusting into a warm and tight hole, with your balls smacking against his chin every time you hammer home. While enjoying a very pleasurable deep-throating session with the talented rodent, you keep your hands on his head, fingers working to massage the base of his large ears to give back a little pleasure in turn.";
		say "     As much as you might wish that you could keep enjoying this forever, you're rapidly approaching the point of no return before too much longer. ";
		if "Player BJ Done" is listed in Traits of Wesley: [has previously blown the player]
			say "Knowing that he is fine with swallowing and won't freak out, and you let out a satisfied bellow as you start to come, burying your shaft down Wesley's throat as you begin to unload a heavy load into the slender young man. With your hand on the back of his head, you keep him pressed firmly against your crotch, the gurgling and slurping noises from the rodent being music to your ears - until you soon feel his hand giving you a pat on the hip, signifying that he does indeed need air at some point. With a somewhat breathless apology, you soften your grip and allow him to pull off, having to brace himself against the floor as he gasps for breath.";
		else:
			say "Knowing that he might be sensitive about this part, you make yourself loosen your grip on his head, pulling your hands away from holding onto Wesley. He looks up, surprised, then pulls back off your cock and asks, 'What's wrong? Did - did I do something you don't like?' Breathlessly, you reply that he's absolutely amazing and you're very, very close to coming, but you were not sure he was alright with you coming in his mouth. You absolutely don't want to make it appear that you're wanting to force a load down his throat. 'Thank you,' he says happily, giving your dickhead a flick of his tongue. 'But I can handle this. It's actually kind of fun, doing this with someone like you!' That said, he opens his mouth wide and smoothly slides his lips over your shaft again, sucking hard on its erect length. The eager mouse going down on you soon results in a satisfied bellow emerging from your throat, coming HARD with your shaft buried down Wesley's throat. He decides to keeps you inside his mouth for as long as he can to prolong your pleasure, only pulling off when he really can't hold out his breath anymore, having to brace himself against the floor as he gulps in fresh air afterwards.";
		WaitLineBreak;
		say "     'Was - was it good for you?' he asks shyly after a little while, almost beaming as you praise him and stroke his hair in response. Man, this little mouse really has been beaten down quite a bit, if he's unsure about anyone being satisfied with this great a blowjob... Stressing again that you had a lot of fun playing with him like this, you hold out a hand to help him up, then also retrieve the messenger bag to hand it to him after he puts his clothes in order and wipes his muzzle dry with a cloth handkerchief. 'Really gotta get going now but, I - uhm, wouldn't mind seeing you again, sometime,' he says in a hopeful tone, then hurries off to whatever he was doing before you ran into each other.";
		NPCSexAftermath Wesley receives "OralCock" from Player;
	else if Player is female:
		say "     There is a moment of surprised elation at the situation he's found himself in, Wesley's eyes going wide as his muzzle comes to be just inches in front of your bared pussy. He seems happy as you tousle the blond hair on his head, then boop his cute nose, telling him to go down on you. Raising a hand to your crotch, he strokes over your nether lips with slender fingers, seemingly fascinated by the shape of your labia. The young man spreads your folds gently, and you can hear him say 'Wow!' under his breath, just before he moves his thumb to rub against your clit, sending a shiver of pleasure up your spine. 'Do you like this?' he asks shyly, tracing the edge of his finger along the sides of your magic button, the stimulation drawing a satisfied moan from your lips. Taking this as a sign that he's doing alright so far, Wesley leans forward and places his muzzle over your clit, tongue flicking out to lap at it while his fingers move further down to probe at your opening.";
		say "     Fingers exploring your welcoming, moist slit, the nerdy rodent slides them deeper slowly but surely. While doing so, he comes across some fairly sensitive and arousing spots, pausing each time when he hears your breath quicken, curling his fingers to rub and stroke each new discovery along your inner walls to see if he can increase your pleasure even further, utterly focused on finding out just what best to do with you. Before long, he also puts his mouth further into play, as he puts his lips right over your clit, then starts to lightly suckle on it, making you almost feel a little light-headed for a moment. Having to steady yourself, you put one hand on Wesley's shoulder, the other one on top of his head. While he continues to stimulate you with his touch and tongue, your own fingers run through his soft, blond hair, sometimes stroking the curves of his large ears.";
		WaitLineBreak;
		say "     In a slow, but steady buildup, Wesley continues to tease your body to new heights, until you finally can't contain yourself anymore and let out a loud, satisfied moan, having to brace yourself with the hand on his shoulder to not collapse as your knees get a little weak for a moment. Pleasant tingles run up and down your body, filling you with an orgasmic high that lingers for a pleasant little while. Looking up at you through those huge silver-rimmed eyeglasses, Wesley shyly asks, 'Was - was it good for you?' As you respond by praising the young man for taking such very good care of you, he almost beams in joy at the response. Stoking his soft-furred cheek, you can't help but think to yourself that this little mouse really has been beaten down quite a bit, if he's unsure about anyone being satisfied with this level of oral pleasure.";
		say "     Stressing again that you had a lot of fun playing with him like this, you hold out a hand to help him up, then also retrieve the messenger bag to hand it to him after he puts his clothes in order. 'Really gotta get going now but, I - uhm, wouldn't mind seeing you again, sometime,' he says in a hopeful tone, then hurries off to whatever he was doing before you ran into each other.";
		NPCSexAftermath Wesley receives "OralPussy" from Player;
	else:
		say "     Starting to run the slender fingers of one hand over the smooth area between your legs, Wesley is clearly confused at first. Seems like he expected some sort of well-hidden slit, or anything really, not a complete absence of genitals. 'I - uhm, what should I do?' comes his shy question next, and when you tell him to stroke and lick you, the college student takes right to it. Questing fingers trace over your skin, with the young man glancing up to see your reaction, and especially his large, round ears picking up on even the most quiet sigh or gasp of pleasure. Then comes his tongue, flicking over your crotch quickly and sending pleasant tingles up your spine. He's actually pretty good at this, stimulating your body so much that you lean your head back and close your eyes, simply giving in to the sensations the anthro mouse wakes inside you.";
		say "     Breath quickening as your arousal mounts, you almost feel a little light-headed for a moment, so you steady yourself by putting one hand on Wesley's shoulder, the other one on top of his head. While he continues to stimulate you with his touch and tongue, your own fingers run through his soft, blond hair, sometimes stroking the curves of his large ears. In a slow, but steady buildup, Wesley continues to tease your body to new heights, until you finally can't contain yourself anymore and let out a loud, satisfied moan, having to brace yourself with the hand on his shoulder to not collapse as your knees get a little weak for a moment. Pleasant tingles run up and down your body, filling you with an orgasmic high that lingers for a pleasant little while. Looking up at you through those huge silver-rimmed eyeglasses, Wesley shyly asks, 'Was - was it good for you?'";
		WaitLineBreak;
		say "     As you praise the young man for taking such very good care of you, he almost beams in joy at the response. Stoking his soft-furred cheek, you can't help but think to yourself that this little mouse really has been beaten down quite a bit, if he's unsure about anyone being satisfied with this level of oral pleasure. Stressing again that you had a lot of fun playing with him like this, you hold out a hand to help him up, then also retrieve the messenger bag to hand it to him after he puts his clothes in order. 'Really gotta get going now but, I - uhm, wouldn't mind seeing you again, sometime,' he says in a hopeful tone, then hurries off to whatever he was doing before you ran into each other.";

to say WesleyForcedSexMenu:
	project Figure of Nerdy Mouse_hard_icon;
	say "     Seemingly able to recognize the glint of unbridled lust in your eyes, the mouse nerd lets out an startled squeak, followed by the words, 'I'll miss my lecture! Let me go, okay?' At the same time, he's trying to get away - half-crawling, half trying to get his feet back under him, which ends up being less successful than fully committing to either strategy, as he's off-balance and not making much headway. As such, it's pathetically easy for you to catch up with him, wrapping an arm around his slender form, firmly gripping the mouse's shoulder on the other side. Patting his chest with your free hand, you let out a laugh and tell him to man up a bit. So what if he'll miss some stupid lecture, this is much more fun! Looking up at you resignedly, the mouse gives in, allowing you to lead him along with you, behind some conveniently placed nearby bushes. He's making a bit of a long face, clutching his stupid little book bag tightly, right up to the point when you give the nerd a shove, leading to him face-planting a step or two ahead of you. His head whips left and right, trying to find some avenue of escape now that you're getting a little rough - but no, thankfully there's just the windowless side wall of a building, forming the interior of an L corner. No easy way for the spineless rodent to slip away from you.";
	say "     [bold type]What exactly do you want to do with the anthro mouse?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Push him to the ground and use his asshole";
		now sortorder entry is 1;
		now description entry is "Get your dick in the rodent's rear end";
	[]
	if Player is female: [female + herm]
		choose a blank row in table of fucking options;
		now title entry is "Ride this mouse's cock vaginally";
		now sortorder entry is 2;
		now description entry is "Make some use of his dick";
	[
	choose a blank row in table of fucking options;
	now title entry is "Ride this mouse's cock anally";
	now sortorder entry is 3;
	now description entry is "Make some use of his dick";
	]
	Sort the table of fucking options in sortorder order;
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
				if (nam is "Push him to the ground and use his asshole"):
					say "[Wesley_ForcedAnal]";
				else if (nam is "Ride this mouse's cock vaginally"):
					say "[Wesley_ForcedPussyRide]";
				else if (nam is "Ride this mouse's cock anally"):
					say "[Wesley_ForcedAssRide]";
				TraitGain "Player-Bullied" for Wesley;
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Looking at the rodent, you let out a grunt and decide that you've got better things to do after all. He looks at you wide-eyed as you simply turn around and leave him lying where he is without even doing anything.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say Wesley_ForcedAnal:
	say "     Stepping up to where the nerdy mouse is lying on the ground, you look down at him with a smug grin on your face, then lean down, planting a hand on the middle of his back to pin him down. Your other hand meanwhile lands on his rear end, squeezing the curves of his buttocks through the fabric of his pants. Interestingly, the college student doesn't even try to squirm out of your grip, or to beg for release, instead just sighing silently as he submits to what you have in store for him. Letting your fingers circle around the smooth, pink-skinned length of his tail, to where its base emerges from a V-cut in the pants, you swiftly undo the button securing his jeans above the tail. The little twerp is inviting people to have a go - why else would he put on pants that show his ass off otherwise? You grasp the beltline of the garment and just give it a sharp, powerful yank, managing to wrench the cloth down over his ass without even undoing the front side. Your little play-toy for right now sure got dainty, slender hips...";
	say "     The snug white briefs covering his buttocks are even less of a hindrance to you than the pants, and after giving them a feel, you spank the mouse's ass with a grin on your face. Then you grab a handful of the fabric and rip it away, accompanied by a short squeak of 'Hey!' before he lowers his head again and gets back to just enduring. Having reduced the mouse's undies to tatters, you shove his legs to the sides, spreading them to allow you to see the pink skin in the depth of his butt-crack shine invitingly at you from between the brown-furred curves of his buns. For a second, the mouse's tail is in your way, seemingly interposing itself out of reflex, but a single sharp pull on the appendage after catching it reminds the young man who's in control here, and he keeps it firmly bent to the side and up after that. Then you plant both of your hands down, one on each buttock, and spread him open before you. It's almost cute how his pucker trembles as it is exposed, and you playfully blow over it, making the nerd flex his back muscles from the unexpected sensation.";
	WaitLineBreak;
	say "     After giving a gruff command for him to stay in position and not move one muscle, or else, you quickly free yourself from your gear[if Player is not naked] and clothes[end if], piling it all up nearby before returning to your mousy plaything. Gathering a big gob of spit, you let it drip down into his butt-crack from the tip of your tongue, then push the wetness to his pucker with your index finger, tracing over it, then around and around, before finally pressing your fingertip in against the middle. [if PlayerFucked of Wesley is false]Interestingly, it relatively easy to get into him - not that he isn't snug and tight around your exploring digit, but the death-grip tightness of a desperate virgin trying to hold out an unwilling suitor, this is not. You're clearly not the first one taking this little mouse for a ride. Stupid wimp to try to keep his ass from you, if he's putting out for who knows else already! [else]His hole opens up readily enough around your finger, still pleasantly snug and tight despite having been pounded more than once before. [end if]The nerd lets out a groan as you add another digit to spread his hole, and he mumbles something to himself, of which you can barely make out the words, '...another bastard like Jorge.'";
	say "     With this weakling rodent calling you names now, any intent you had in maybe going a little gentler on the small-ish anthro goes up in smoke. Plus, his ass already broken in for fucking, so there's no dire need to take things slow, is there? Why shouldn't you enjoy this asshole to the fullest, hah?! Let's see how you can make him squeal! Gripping the base of your [Cock of Player] erection, you smack it between the nerd's buttocks, lining yourself up with his back door. The tip of your cock touching the wrinkled ring of his pucker makes him tense up, holding his breath as he digs his fingers into the grass covering the ground. Weak resistance to your first push against the opening falters in a heartbeat, and you ram more than half your length into him in a harsh thrust! Yeahhh - the mouse's insides are snug and taut around your hard rod, feeling silky smooth and warm to push into!";
	WaitLineBreak;
	say "     'Fuuckkk,' your captive nerd groans through clenched teeth, his slender fingers ripping out tufts of grass as he endures the sudden anal invasion. You can't help but chuckle, leaning forward over him and grabbing the back of his neck, then bringing your mouth right up against one of those large, round ears of his. As you mockingly tell him how many more inches he's got to take, a tremble goes through his body, and the anal muscles around your shaft, giving you a nice little extra stimulation. Then you hammer your crotch forward in a sudden thrust, shouting out loud in satisfaction as you sheathe yourself in the rodent, balls smacking against his furry ass. Looking down at the young man's face, with its clenched-together lips and eyes, a sudden impulse drives you to slap the back of his head, asking if he can feel your cock throb in him, and if he likes it. There is no response at first, so you give him another smack, which finally results in him whimpering and nodding his head.";
	say "     Oh, if he likes this so much, you'll have to give him more of it, don't you?! In a - very - sexualized form of a push-up, you brace yourself against the ground left and right of his slender torso, then lift yourself up slowly sliding out of the mouse's ass until only the very head remains inside. And then, you give him another deep thrust, going balls-deep! Continuing in the same pattern for a while, you rail your college fuck-toy hard and vigorously, only switching it up once in a while with more gentle grinding, to make sure you don't come too fast. But before long, you always return to hammering away at his ass, enjoying the squeaks, whimpers and unwilling moans you can tease out of the nerd. Even if he hates you for doing this, the effects of a no-holds-barred prostate pounding can't be denied, and you're sure that if you flipped him over, he'd be rock-hard and leaking.";
	WaitLineBreak;
	say "     Your fun-time of enjoying the nerdy mouse's tight hole isn't exactly private anymore, not with the sounds both of you make as you get your fuck on, so you're not surprised when you hear a rustle from somewhere to the side. Turning your head, you see between the branches of one of the bushes the curious eyes of someone who just passed by and wanted to check out what's going on, followed by a smartphone being raised and a flash of light betraying a picture being taken, then another two, three, four. Chuckling, your watcher then withdraws, leaving you to focus back on the rodent your dick is buried in. The thought bubbles up in your mind that doing this out here in the open, just barely out of sight, is really, really hot, and you can't help but feel your arousal closer to the edge than ever before in the current fuck-session. The drive to come overpowers any restraint for trying to prolong the experience, making you fall into jack-hammering the tight fuckhole with unrelenting force.";
	say "     All of a sudden, your little buddy starts to make quite a bit of noise himself, those pressed-together lips now parting as he pants rapidly and lets out a loud moan - then you feel it, his anal muscles squeezing around your shaft in a rhythmic pattern. Looks like you made him come, and with the way his insides are almost milking your dick, you're not far behind. Driving inside his asshole, you grind your crotch against the soft-furred buns of the mouse, and explode deep inside, your seed painting his insides white. A pity that you're not the first in here, but he'll definitely remember you, hah! You stay buried in his ass for a little while longer, riding out the ebbing pulses of your orgasm until every last drop of the cum your balls are sending forth is deposited inside him. Then you withdraw, a smile playing over your lips as you see the somewhat reddened ring of his originally pink pucker pull tight once more, sealing your load inside.";
	WaitLineBreak;
	say "     Playful curiosity drives you to tear at and snap the elastic of his shredded undies, pulling the remaining white fabric from underneath the college student. The crotch area is quite obviously wet with cum, proving that you indeed drove him over the edge at the end there. Armed with this amusing bit of knowledge, you pull the mouse up by the back of his neck, making him look at the proof of his climax and mockingly say that you knew he'd like it. As he opens his muzzle, no doubt to give you a whiny response or something like that, you stuff the cum-soaked briefs right in his mouth, shutting him up for now. Then you let go, with him dropping down to the ground and just staying there, utterly defeated and humiliated. With a smile on your face, you then gather up your gear [if Player is not naked]and clothes [end if]again, before getting back onto the campus pathways with a spring in your step.";
	NPCSexAftermath Wesley receives "AssFuck" from Player;

to say Wesley_ForcedPussyRide:
	say "     Stepping up to where the nerdy mouse is lying on the ground, you look down at him with a smug grin on your face, then lean down, planting a hand on the middle of his back to pin him down. Your other hand meanwhile lands on his rear end, and you let out a mocking laugh, teasing him about not having much of an ass to write home about. Interestingly, the college student doesn't even try to wind out of your grip anymore, or to beg for release, instead just sighing silently as he submits to what you have in store for him. Letting your fingers circle around the smooth, pink-skinned length of his tail, to where its base emerges from a V-cut in the pants, you swiftly undo the button securing his jeans above the tail. The little twerp is inviting people to have a go - why else would he put on pants that show his ass off otherwise? Not that there's much to it - does the loser think his flat piece of tail will draw much attention from anyone? Chuckling and shaking your head at the thought, you grasp the beltline of the garment and just give it a sharp, powerful yank, managing to wrench the cloth down over his ass without even undoing the front side. Your little play-toy really has some dainty, slender hips on him...";
	say "     The snug white briefs covering his buttocks are even less of a hindrance to you than the pants, as you simply grab a handful of the fabric and rip it away, accompanied by a short squeak of 'Hey!' before he lowers his head again and gets back to just enduring. Having reduced the mouse's undies to tatters, you finish the job by snapping the elastic, then tugging the remaining white fabric from underneath him. Next, you grab one arm and leg to flip the partly-stripped rodent over, to land on his back and gaze up at you with surprise on his face. 'W-what are you doing?' he asks fearfully, with surprise in his voice betraying that you seem to have left the path of what he expected to happen. A beating, followed by... Spanking? Fucking? Whatever it was, he's far less used to your new plans for right now, and the uncertainty is making him tremble.";
	WaitLineBreak;
	say "     As you reach out for his limp dick, the rodent puts a hand up as if to push yours away. Can't have that, now can we - so you catch his wrists and push them up over his head to pin them down, then shove his t-shirt up over his torso, to cover his head and arms. Grabbing a handful of fabric and pulling the t-shirt around his arms tight, you put a knot in it, creating an improvised restraint for the little mouse. Not hard to get out of really, but enough to keep him tied for a little while, especially with an added dire warning about not trying to get free. This leaves you with the nerd stretched out in front of you, his slender, naked torso and exposed crotch just waiting to be touched. While moving one hand to his flat pecs, starting to tease and pinch his nipples, he whimpers in fear, trying to move his arms down to cover himself. Almost casually slapping his arms down, then pinning them with one hand, your other hand goes right for the crotch, playing with his family jewels and still limp cock.";
	say "     Despite being an unwilling participant in this little exercise, it doesn't take all that long before your stroking, caressing and pinching of the anthro mouse starts to show an effect, with his manhood filling out more and more, until it eventually stands proudly erect over the lying rodent. Almost surprising for his relatively slim build, the young man is sporting a respectably long cock, at least compared to his four foot tall body size. Six inches looks huge on such a small frame, even if it is a little more slender than average. Underneath it are two modestly-sized balls in a snug furry sack. Looks like the mouse is somewhat of a sniper in the genital-department - long barrel, small magazine. But in the end, a guy doesn't need massive amounts of cum if he delivers his shot right on target, and pretty deep. The young rodent draws in a breath as you inspect his crotch, really afraid what you're planning to do since he can't see anything. No doubt, he's afraid that you'll laugh out loud and mock him, slap his manhood, take unflattering pictures of it, or the like. Instead, you just snicker about him being so high strung and keep stroking it with no further explanation, spreading what pre-cum is leaking from the slit along the shaft.";
	WaitLineBreak;
	say "     After a little while, you let go of his cock and stand up again, then proceed to free yourself from your gear[if Player is not naked] and clothes[end if], piling it all up nearby. With the t-shirt still covering his face, your captive mouse is left to guess what's going on, and his anxiety builds more and more. 'Are you - still there? What are you doing?' he says in almost a whisper, not wanting to draw attention to himself if you actually just walked off. He tenses up immediately as you chuckle from where you're standing close by, then step over his body and crouch down to straddle his crotch. With a little help to straighten his cock as you sink down, he slides right into your already wet and ready pussy, accompanied by a shocked gasp from beneath the t-shirt hood. 'OH! You're -' he starts to say, only to have his words devolve into little more than a moan as you flex your muscles around his shaft and start to rock up and down on it.";
	say "     Then, after just a moment or two, you suddenly feel his dick starting to throb against your nether lips - looks like he's already shooting inside you! The whole body of the slender mouse trembles and twitches beneath you as his cock erupts a meager load, with him babbling, 'Nnnghhh! Yeah! That was incredible!' Seems like he's thinking this is already over - what a clueless wimp! He's got a lot more work to do, serving as your boy-toy! At least he's staying hard with no trouble, being a young man and all. 'Getting a little sensitive, could you stop now?' comes a somewhat breathless complaint soon after. Laughing out loud, you tell him to shut up - which he does, barring some moans and grunts he can't quite suppress as you keep making use of his cock. Good - after all, you're just interested in getting your rocks off on this hung little twink, not become his friend or have any sort of conversation. He's just a convenient dick to ride.";
	WaitLineBreak;
	say "     And ride him you do, bouncing up and down on the hard length of his manhood, having almost complete control of how this coupling is going and being able to go just as slow, fast and deep as you want. There are a few moments in which he surprises you, suddenly bucking up his hips to sheathe himself back in your depth as you withdraw, after the rapidly increasing state of arousal inside him overrides thoughts of caution - but that's more of a pleasant bonus stimulation then anything you don't want... Indeed, you're pushed over the edge to your first orgasm by his first 'rebellious uprising'. Pleasure washes over you as your pussy goes wet and dripping around his thrusting shaft[if Player is male] and your cock erupts with cum to splatter all over his chest[end if], giving you just what you wanted - not that you're anywhere close to done though. With your inner muscles flexing around his slick shaft, you realize that he's enjoying himself just a little too much in turn, so you brace a hand on the lower part of his flat tummy to keep him from thrusting, barking out an order to have him stay still.";
	say "     'Please, can I cum now?' he pleads from under the hood, which you deny, instead twisting his nipples to get his mind off that thought for now. Then after a minute or two, you get back to fucking yourself on his shaft. All in all, you ride him through three very enjoyable climaxes, with the young rodent getting more than a little blue-balled before you finally relent from edging him. With your crotch a little raised from his own, you pat his flat chest and sweetly tell him that he's allowed to come now, at which point he starts to almost desperately buck up inside you. The horned-up college student brings a fresh new vibe into this additional fuck, with you for once not knowing what's going to happen and when, which makes the experience a fun encore to just using him. There sure is something to be said about the energy he puts into his thrusts, and your own arousal rockets up sharply once again, carried along by his need to come.";
	WaitLineBreak;
	say "     By the time he breathlessly shouts, 'I'm gonna... gonna cuuuUUUUMMMMM!' and the muscles in his legs strain to keep his crotch firmly pressed against yours so he can flood your pussy with his seed, you're quite close yourself. Just a little moment of franticly [if Player is male]jerking your cock [else]frigging your clit [end if]is enough to push you past the point of no return, and you climax a fourth and last time while being bred with the young rodent's cum. Still straddling the young man, you lean forward and tease him mockingly, saying that with two orgasms and a whole lot of edging, he might have given you a full load - maybe. [if Player is fpreg_able]And who knows, even his weak showing might have been enough to knock you up with a litter of mouse cubs. Laughing cruelly, you explain that you'll be sure to explain to them that their daddy wasn't worth much more than using as a sex toy. You can just imagine a horrified expression on his hidden face, as you hear the mouse say, 'Wait, what?! No, that's not fair!' [end if][line break]";
	say "     Finally un-mounting the young man, you stand up and stretch yourself, exhausted but satisfied. Feeling some wetness, you look down and realize that his cum and your own fluids are trickling down the inside of your legs, so you pick up the shreds of his undies and wipe yourself dry. Then you dab the ball of bunched-up white fabric against your crotch until most of the leakage is soaked-up and not much more comes out, before casually dropping the cum-rag on your sex-toy mouse. With a smile on your face, you then gather up your gear [if Player is not naked]and clothes [end if]again, before getting back onto the campus pathways with a spring in your step.";
	NPCSexAftermath Player receives "PussyFuck" from Wesley;

to say Wesley_ForcedAssRide: [copy from above AFTER editing, then adapt for anal]
	say "...";
	NPCSexAftermath Player receives "AssFuck" from Wesley;

Section 2 - Creature Insertion

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Nerdy Mouse"	"[PrepCombat_Nerdy Mouse]"

to say PrepCombat_Nerdy Mouse:
	setmongender 3; [creature is male]
	project Figure of Nerdy Mouse_clothed_icon;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Mouse"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Nerdy Mouse" to infections of RodentList;
	add "Nerdy Mouse" to infections of FurryList;
	add "Nerdy Mouse" to infections of NatureList;
	add "Nerdy Mouse" to infections of MaleList;
	add "Nerdy Mouse" to infections of TaperedCockList;
	add "Nerdy Mouse" to infections of SheathedCockList;
	add "Nerdy Mouse" to infections of BipedalList;
	add "Nerdy Mouse" to infections of TailList;
	now Name entry is "Nerdy Mouse";
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is "Wesley"; [ Specific name of unique enemy. ]
	now enemy type entry is 1; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]The mouse blocks another attack from you, while shouting 'Barrier!' by using his messenger bag as a shield. OUCH! What does he have in there anyway?[or]Seemingly recalling a self-defense class, the mouse shouts 'I don't know you! This is my purse!' as he manages to deliver a swift, and very painful, kick right to your groin.[or]'Look behind you! A three-headed monkey!' The mouse shouts, pointing behind you. You turn to look and find nothing, your pride is wounded for falling for the oldest trick in the book, further punctuated by a heady thump of his satchel bag onto your head![or]The mouse flails his balled up fists in your general direction. It would be almost comical if he wasn't actually hitting you.[or]The mouse flails his heavy bag wildly while blocking his face. '[mnfacequote]!' he squeaks with fear. The bag ends up clocking you in the side of the head with a heavy thud.[or]The nerdy mouse swings his little fists wildly with his eyes squeezed tightly shut, some of his frantic blows hitting you.[at random]";
	now defeated entry is "[beatthenerdymouse]";
	now victory entry is "[losetonerdymouse]";
	now desc entry is "[NerdyMouseDesc]";
	now face entry is "that of an anthropomorphic mouse, complete with large ears and slightly buck teeth"; [ Face description, format as "Your face is [Face of Player]." ]
	now body entry is "that of a lithe mouse with very little definition"; [ Body description, format as "Your body is [Body of Player]." ]
	now skin entry is "light tan fur covers your"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "Your tail is roughly the same length as your body, thin and naked like that of a typical mouse."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "rodent"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "your gums start to hurt around your two front teeth, almost like you're teething all over again, your tongue feels over them finding your front teeth have grown larger giving you slightly bucked teeth. Before you're able to fully comprehend this, you feel the very shape of your skull starting to change, growing out into a short muzzle, your ears shift and grow much larger giving your head the appearance of a mouse"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "your stomach churns and tightens, as you reach to it you can feel your muscles shrinking along with the rest of you. The focus on your shrinking body moves to the changing shape of your hands and feet as they turn into furless, mouse-like paws"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "you give an idle scratch to your belly to get at a sudden itch. As the itch subsides, you feel thin fur covering the area. A moment later you feel two more spots itching, soon your entire body is just one big itch that you can't scratch. After what feels like hours of scratching your body finally relaxes enough to notice your whole body is now covered in soft, light tan fur"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "An itch forms at your backside, reaching back to scratch at it reveals a change occurring. A tail is growing from the base of your spine. After several minutes you become the proud owner of a naked whip of a tail, like that of a mouse"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "a sudden wave of euphoria shoots through your groin. The feeling leaves you gasping for what feels like hours before you finally compose yourself enough to actually look at your crotch. You find your cock has grown slender and is now covered in a protective sheath when not aroused"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 8;
	now dex entry is 12; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 11;
	now per entry is 9;
	now int entry is 17;
	now cha entry is 11;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 32;
	now lev entry is 3; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 4; [ Monster's average damage when attacking. ]
	now area entry is "Campus"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 6; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 0; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity] [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping] [ Width in inches of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 80; [ Target libido the infection will rise towards. ]
	now loot entry is "nerdy mouse fur"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 40; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "nerdy mouse milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is "nerdy mouse cum";
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]lanky[or]skinny[or]lithe[or]short[at random]";
	now type entry is "[one of]rodent[or]murine[or]mousey[as decreasingly likely outcomes]";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [Torso Adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [Legs Description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [Cock Adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock Description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [Ball Description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]


to say mnfacequote:
	say "[one of]Don't break my glasses[or]Not in the face! Not in the face[or]Larp rules! Larp Rules! Aiming for the head is cheating[at random]";


Table of Game Objects (continued)
name	desc	weight	object
"nerdy mouse fur"	"A tuft of grey and white fur that looks like it has been pulled out of the coat of a mouse. It's nicely soft."	0	nerdy mouse fur

nerdy mouse fur is a grab object. It is temporary.
Usedesc of nerdy mouse fur is "[NerdyMouseFurUse]".

to say NerdyMouseFurUse:
	say "Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Nerdy Mouse";

instead of sniffing nerdy mouse fur:
	say "The fur has a pleasing, not too strong, animal-like scent.";

Table of Game Objects (continued)
name	desc	weight	object
"nerdy mouse cum"	"A plastic water bottle containing a moderate amount of milky white fluid. Almost could be mistaken for some sort of buttermilk, if someone hadn't written 'Nerdy Mouse Cum' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	nerdy mouse cum

nerdy mouse cum is a grab object. nerdy mouse cum is cum.
nerdy mouse cum is infectious. Strain of nerdy mouse cum is "Nerdy Mouse".
Usedesc of nerdy mouse cum is "[nerdy mouse cum use]";

to say nerdy mouse cum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy cum run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;

instead of sniffing nerdy mouse cum:
	say "You open the lid for a moment and take a sniff. Doesn't smell too bad actually, just kinda nutty.";

Section 3 - NPC

Table of GameCharacterIDs (continued)
object	name
Wesley	"Wesley"

Wesley is a man.
ScaleValue of Wesley is 3. [human sized]
Body Weight of Wesley is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Wesley is 3. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Wesley is 3. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Wesley is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Wesley is 2. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Wesley is 5. [length in inches]
Breast Size of Wesley is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Wesley is 2. [count of nipples]
Asshole Depth of Wesley is 9. [inches deep for anal fucking]
Asshole Tightness of Wesley is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Wesley is 1. [number of cocks]
Cock Girth of Wesley is 2. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Wesley is 9. [length in inches]
Ball Count of Wesley is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Wesley is 2. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Wesley is 0. [number of cunts]
Cunt Depth of Wesley is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Wesley is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Wesley is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Wesley is false.
PlayerRomanced of Wesley is false.
PlayerFriended of Wesley is false.
PlayerControlled of Wesley is false.
PlayerFucked of Wesley is false.
OralVirgin of Wesley is false.
Virgin of Wesley is true.
AnalVirgin of Wesley is false.
PenileVirgin of Wesley is false.
SexuallyExperienced of Wesley is true.
TwistedCapacity of Wesley is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Wesley is false. [steriles can't knock people up]
MainInfection of Wesley is "Nerdy Mouse".
Description of Wesley is "[WesleyDesc]".
Conversation of Wesley is { "<This is nothing but a Nerdy Mouse!>" }.
The scent of Wesley is "[WesleyScent]";

to say WesleyScent:
	say "...";

to say WesleyDesc:
	project the Figure of Nerdy Mouse_clothed_icon;
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Wesley] <- DEBUG[line break]";
	say "...";


Section 4 - Endings

[
Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Nerdy Mouse Infection"	"Infection"	""	Nerdy Mouse Infection rule	1000	false

This is the Nerdy Mouse Infection rule:
	if Player has a body of "Nerdy Mouse":
		trigger ending "Nerdy Mouse Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     You give in to the vast nerdiness inside your head. After pouring over all of the books you can find in the library you grow bored and desire a more structured path of learning. Wandering around, you eventually find yourself at the College Campus and are overjoyed at the thought of getting a higher education. Almost immediately you find yourself on the receiving end of a wedgie to shouts of 'NERD!'. Ah, sweet academia.";
		else:
			say "     You survived, by some miracle, with your humanity still intact. It takes some time but you finally find a place you fit in, surrounded by those like you, by fellow nerds.";
			if Player is male: [MALE]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player: [F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else: [F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Nerdy Mouse ends here.
