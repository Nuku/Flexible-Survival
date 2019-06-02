Version 1 of Imp by Wahn begins here.
[Version 1 - New Creature]

"Adds a Male Imp to Flexible Survival's Wandering Monsters table, with impreg chance"

[ ImpType - which variant of imp is being fought       ]
[   0: Skarnoth's scout imps                           ]
[   1: trash-dumping imp                               ]

LastImpMeeting is a number that varies.	LastImpMeeting is usually 999.
ImpPlayerMarkingTurn is a number that varies.
ImpType is a number that varies. [@Tag:NotSaved]

Section 1 - Creature Responses

to say Imp wins:
	if ImpType is 0: [Skarnoth's scouts]
		if HP of Player > 0:[player submits]
			say "     As you submit to the little demon, the imp puffs up his chest and gives an imperious nod, then starts to smile. His too-broad mouth pulls into a wide grin showing off a whole row of sharp teeth and he calls out, 'Not as stupid as you look, I see. At least some mortals realize they are no match for demonic powers, hah! Strip naked slave!' After those words, the foot-tall being flutters around you as you obey and take off your gear and clothes, dropping them to the ground one by one. The imp demands that you take some lewd poses to show off - like shaking and spreading your ass or air-humping with your crotch - then commands you to lie down on your back. With a flutter of wings, he lands on your chest a moment later, placing tiny hooves to stand on your breastbone.";
		else:[player loses]
			say "     You are left swaying badly after the last hit of the little demon and the imp gives an evil chuckle as he flies right up to your face in a flutter of wings. With his too-broad mouth pulling into a wide grin showing off a whole row of sharp teeth, he reaches out to poke your forehead with one finger, then gives a small shove - enough to make you keel over backwards. 'You really should have realized that you're no match for me! I'm a demon, dumb-fuck!' With those words, the foot-tall being lands on your chest, placing tiny hooves to stand on your breastbone.";
		say "     'Oh yeah, that's definitively the proper place for a mortal,' the red-skinned humanoid gleefully says as he taps his right hoof on your chest and rubs his crotch. Wearing nothing but a threadbare loincloth, it is painfully obvious that the demon is hard as a rock - his well-sized cock (for the small body-size) standing straight out under the fabric and tenting it. He clearly gets off on ordering others around. With the flick of a clawed hand, your little captor pulls aside the loincloth a moment later, revealing his bright red shaft and starting to jerk it off with gleeful intensity.";
		WaitLineBreak;
		project the figure of Imp_naked_icon;
		WaitLineBreak;
		say "     'You're nothing but a weak little mortal brought down by my might and power, are you? Go on - say it!' he demands from you while beating off, and given your current position you've got little choice but to obey. This arouses the imp even more, prompting him to play with his balls - squeezing them while stroking his shaft faster and faster. Soon, the groans and grunts of his surprisingly deep voice build to a half-shouted roar, and he bucks his hips against the hand gripping his cock, spraying long blasts of cum all over your face. The sheer volume of demonic seed he puts out is almost admirable - but what isn't is the face that he purposely aims to hit you in inconvenient places like up your nose or in an eye. Thankfully, the little fucker doesn't have good aim, but eventually you're forced to close your eyes tightly as a splashed line of cum covers your cheek up to your forehead.";
		say "     With closed eyes, you feel the warmth and wetness of further spurts even more clearly as the imp creams your face, then chin and neck as his orgasm slowly ebbs off. The next thing you feel is his hooves stepping forward a bit and little hands bracing against your jaw as the imp half climbs your face, then demands that you stick out your tongue. 'That's a good fucktoy!' he giggles as you obey, then taste his spicy cum as he wipes off his prick on your tongue. His tiny hands rub over your face, seemingly smearing the cum splashes all over it - but then you realize that he's actually scooping it up to do some finger-painting on your forehead. You feel him draw the letters B, I, T, C and H on your skin in his still warm cum, giggling as he does so.";
		WaitLineBreak;
		say "     'Well well - it's been fun playing with you, slut. Wish I could just keep ya, but it'd be a pain to drive you to the hell-gate through this fucked-up monster nest of a city,' the imp says to you and smiles as you carefully open the eye that hasn't got demon cum splashed on its eyelid. Then he grimaces a little and admits, 'And I was only supposed to find you anyways. The big boss - Skarnoth - called dibs on ripping you a new one after your stunt of stealing that angel dick-bait. So... you're fucked, haha! Gonna be dragged to hell and get an introduction to his demon dong. Well - eventually, you will. The pack of hellhounds that was supposed to come along with me and the others is busy enjoying the sights of this place for the moment - chasing down people to chew on and hump - but they'll get around to collecting you soon when the boss gets impatient and breaks out the choking collars. Should take two days or three, tops. And you can forget about hiding - getting a facial with infernal cum leaves a mark they can sniff out from miles away!' Pulling his loincloth aside again and lewdly wagging a half-hard cock at you, the imp gives a cruel laugh and then takes off, flying out of sight in a few moments.";
		LineBreak;
		say "     If the imp is to be believed, you're kinda fucked right now. [bold type]You have two - or three - days before a ravening pack of hellhounds will sniff you out.[roman type] Thinking back to the fight between Elijah and the demons in the red light district, even one of those beasts was a dire threat... a whole pack of them would surely be too much to handle alone. [bold type]You really should talk to your angelic friend about an option to prevent becoming a demon fucktoy.[roman type]";
		now Libido of Skarnoth is 10; [player got found and marked]
		now ImpPlayerMarkingTurn is turns;
	else if ImpType is 1: [trash-dumping imp]
		if HP of Player > 0:[player submits]
			say "     As you submit to the little demon, the imp lowers his guard, perplexed with your change of attitude. 'What?! You interrupt my work and nearly hit me with a rock... for this?! While he clearly sounds like he's annoyed with your intrusion, the slowly building protrusion beneath his loincloth gives him away. 'At least you know your place as the pathetic mortal you are! Yeah, that's right! I'm the superior race, here! His too-broad mouth pulls into a wide grin showing off a whole row of sharp teeth as he flies over to you. 'Now you'll have to make up for my wasted time! Strip naked, slave!' The hell minion puffs up his chest as he caresses his throbbing shaft, observing you taking off your gear and clothes, dropping them to the ground one by one. Fluttering around your exposed body, he demands that you take some lewd poses to show off - like shaking and spreading your ass or air-humping with your crotch - until he commands you to lie down on your back. he lands on your chest a moment later, placing tiny hooves to stand on your breastbone.";
		else:[player loses]
			say "     You are left swaying badly after the last hit of the little demon and the imp gives an evil chuckle as he flies right up to your face in a flutter of wings. With his too-broad mouth pulling into a wide grin showing off a whole row of sharp teeth, he reaches out to poke your forehead with one finger, then gives a small shove - enough to make you keel over backwards. 'What were you thinking?! You should have realized that you're no match for me! I'm a demon, dumb-fuck! And I am working! Now you'll have to make up for my wasted time!' With those words, the foot-tall being lands on your chest, placing tiny hooves to stand on your breastbone.";
		say "     'I won't go easy on you, bitch! You'll be my fucktoy until I'm done screwing the hell out of you! Hah!' the red-skinned humanoid gleefully says as he taps his right hoof on your chest and rubs his crotch. Wearing nothing but a threadbare loincloth, it is painfully obvious that the demon is hard as a rock - his well-sized cock (for the small body-size) standing straight out under the fabric and tenting it. He clearly gets off on ordering others around. With the flick of a clawed hand, your little captor pulls aside the loincloth a moment later, revealing his bright red shaft and starting to jerk it off with gleeful intensity.";
		WaitLineBreak;
		project the figure of Imp_naked_icon;
		WaitLineBreak;
		say "     'You're nothing but a weak little mortal brought down by my might and power, are you? Go on - say it!' he demands from you while beating off, and given your current position you've got little choice but to obey. This arouses the imp even more, prompting him to play with his balls - squeezing them while giving his shaft a few pulls and swings. 'Let's put that mouth to good use! Yeah, you heard me! I want you to suck my dick like the good fucktoy you are!' His erection throbs even more as he leans over to your face, placing his little hands on both sides of your face and pulling your head with surprising strength. Your lips soon meet the gleaming head of his demon cock, already soaked in precum as it continuously oozes from the slit. With a quick push, your mouth is forced open to take the yet generously sized shaft inside, barely managing to hit your throat as the small imp eagerly thrusts his hips forward.";
		say "     By holding himself half above your face, given how little he weighs, the short demon manages to effectively facefuck you, his erection pulsing with growing lust as he increases the pace. 'That's it, slave! Who's a good fucktoy?' he giggles as he pulls his cock from you with a loud 'pop' sound, stroking it faster and faster as he puts your tongue to work on his red ballsac. You do your best to lick them thoroughly, running your tongue all over his nuts. Soon, the groans and grunts of his weirdly high pitched voice build to a half-shouted roar, and he bucks his hips against the hand gripping his cock. You feel his balls retracting slightly and pulsing in your mouth as he sprays long blasts of cum all over your hair and forehead. The sheer volume of demonic seed he puts out is almost admirable, and you feel every spurt of it being forced out of his sac. Eventually you're forced to close your eyes tightly as a splashed line of cum runs down your eyebrow.";
		WaitLineBreak;
		say "     'Well well - it's been fun playing with you, slut. Wish I could just keep ya, but unfortunately you don't fit the only shitty hell-gate wormhole I can invoke,' the imp says to you and smiles as you carefully open the eye that hasn't got demon cum splashed on its eyelid. 'And eventually, my masters would claim you, stealing all the fun from me! So, how about you keep coming here and submit to me like the filthy weak mortal you are?' The demon flutters away, finishing up his trash dumping on the floor. As you try to stand on your feet, you fail to see a box of some sort being thrown at your face, hitting you right on your nose with surprising force. The imp throws a laughter as you fall back to the ground. 'You look like trash! Hah! See ya some other time, fuckface!' he shouts as he disappears into the portal, the whole thing vanishing together with him.";
		say "     In one way or another, the imp is gone, and you're now free to search the trash he made once you recover your senses. The task is a little more difficult than you anticipated, but eventually, you manage to stand up and focus on your previous objective.";

to say Imp loses:
	if graphics is true:
		project the figure of Imp_face_icon;
	say "     With a screech and an aborted flutter of wings, the imp crashes down, face-planting onto the ground. A groan comes from his throat as the little demon lets his wings slacken, then pushes himself up enough to focus on you with his big, expressive eyes. 'Look, er... fighting you wasn't such a great idea, and... how about we call a do-over, hm? I'll just... be on my way, and you can do whatever you were doing before. No hard feelings, right?' he says and gives a somewhat desperate smile, showing a surprisingly wide mouthful of sharp, little teeth. Snorting at the new tone coming from the formerly so boisterous creature, you pluck him off the floor with one hand and start thinking about what to do with him.";
	LineBreak;
	say "[Imp Sex Menu]";

to say Imp Sex Menu:
	setmonster "Imp Male";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if ImpType is 0: [Skarnoth's scouts]
		choose a blank row in table of fucking options;
		now title entry is "Tie him up and leave him";
		now sortorder entry is 0;
		now description entry is "Hog-tie the little demon and hang him up for someone else to find";
	[]
	if ImpType is 0: [Skarnoth's scouts]
		choose a blank row in table of fucking options;
		now title entry is "Kill him";
		now sortorder entry is 1;
		now description entry is "Snap the little demon's neck";
	[]
	if ImpType is 1 and player is male:
		choose a blank row in table of fucking options;
		now title entry is "Wrap him around your dick and jerk off";
		now sortorder entry is 2;
		now description entry is "Use the little demon as a cock-sleeve";
	[]
	if ImpType is 1 and player is female:
		choose a blank row in table of fucking options;
		now title entry is "Stick him in your pussy";
		now sortorder entry is 3;
		now description entry is "Use the little demon as a living dildo";
	[]
	if ImpType is 1:
		choose a blank row in table of fucking options;
		now title entry is "Stick him in your ass";
		now sortorder entry is 4;
		now description entry is "Use the little demon as a living dildo";
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
				if (nam is "Tie him up and leave him"):
					say "[ImpNoSex1]";
				if (nam is "Kill him"):
					say "[ImpNoSex2]";
				if (nam is "Wrap him around your dick and jerk off"):
					say "[ImpSex1]";
				else if (nam is "Stick him in your pussy"):
					say "[ImpSex2]";
				else if (nam is "Stick him in your ass"):
					say "[ImpSex3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Deciding you should focus on more important stuff right now, you turn away and walk off, leaving the bruised imp behind.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say ImpNoSex1:
	say "     Snatching up some shreds of fabric from the ground - finding ripped and usually cum-stained clothing isn't hard, with everything that has been going on - you quickly tie the imp up into a compact little bundle. He grumbles something about Skarnoth sending out countless of his brothers and that one of them is gonna get you, then just mumbles as you gag him for good measure. You leave the annoying creature behind like that, weakly kicking and trying to wiggle out of his bindings as he dangles in a prominent place from a street-sign. No doubt, some other creature will soon find the little fucker and take care of him for you.";
	if Libido of Skarnoth is 0:
		now Libido of Skarnoth is 1; [player fought off an imp before, left him to the mercy of some unknown creature]
	else if Libido of Skarnoth < 3: [player has not yet been told to talk to Eli]
		say "     Even though you've fought off yet another imp, something tells you that this 'Skarnoth' will just keep sending more to harass you. Seems he's quite determined to get his claws on you for some reason. One possible explanation is that you did rescue [bold type]Elijah[roman type] from demonic clutches and made an enemy that way. [bold type]Maybe you should ask the angel about dealing with this sort of problem.[roman type]";
		now Libido of Skarnoth is 3;
	else if Libido of Skarnoth is 4: [player talked to Eli, didn't go through with the attack]
		say "     Even though you've fought off yet another imp, something tells you that this 'Skarnoth' will just keep sending more to harass you. Seems he's quite determined to get his claws on you for some reason. One possible explanation is that you did rescue [bold type]Elijah[roman type] from demonic clutches and made an enemy that way. [bold type]Maybe you should give the angel's idea of a counterattack some thought after all.[roman type]";
	else if Libido of Skarnoth > 9: [player is already demon marked or completed the quest and should meet no more imps]
		say "     <ERROR [Libido of Skarnoth]: You should not have encountered an imp at this point of the quest. Please notify Wahn on the FS forum and give him the error code and details about your play-through.>";

to say ImpNoSex2:
	say "     Taking hold of the slender little demon, you grab his head and give it a sharp twist, breaking his neck. He scowls at the pain, but then surprisingly gives a toothy smile. 'Can't kill a demon, you idiot. Skarnoth will just send me back...' he croaks out as the life fades from him. Then as the body goes still, it seems to melt between your fingers, becoming a puff of red smoke that is scattered by the wind.";
	if Libido of Skarnoth is 0:
		now Libido of Skarnoth is 2; [player fought off an imp before, killed him and send him to hell]
	else if Libido of Skarnoth < 3: [player has not yet been told to talk to Eli]
		say "     Even though you've fought off yet another imp, something tells you that this 'Skarnoth' will just keep sending more to harass you. Seems he's quite determined to get his claws on you for some reason. One possible explanation is that you did rescue [bold type]Elijah[roman type] from demonic clutches and made an enemy that way. [bold type]Maybe you should ask the angel about dealing with this sort of problem.[roman type]";
		now Libido of Skarnoth is 3;
	else if Libido of Skarnoth is 4: [player talked to Eli, didn't go through with the attack]
		say "     Even though you've fought off yet another imp, something tells you that this 'Skarnoth' will just keep sending more to harass you. Seems he's quite determined to get his claws on you for some reason. One possible explanation is that you did rescue [bold type]Elijah[roman type] from demonic clutches and made an enemy that way. [bold type]Maybe you should give the angel's idea of a counterattack some thought after all.[roman type]";
	else if Libido of Skarnoth > 9: [player is already demon marked or completed the quest and should meet no more imps]
		say "     <ERROR [Libido of Skarnoth]: You should not have encountered an imp at this point of the quest. Please notify Wahn on the FS forum and give him the error code and details about your play-through.>";

to say ImpSex1:
	say "     With the vulnerable imp at your mercy, you think of the many ways you could put his little body at use. A thought strikes your mind as you immediately begin to feel a slight pressure down below, your erection slowly building up as you make your decision. In a reflex, your hand slides [if Player is naked]down to your crotch and wraps around your shaft[else]under your lower gear[end if] as you picture in your mind how exactly you're planning to use the short fucker for your pleasure. 'Wait, no no no! I've had enough of that! I refuse to be used by a stupid filthy-...' his words are cut as you silence him by covering his mouth - and nearly his entire face - with the same hand that has been down your crotch, while berating him for talking too much. The foot long demon squirms around in your tight grasp, but his struggling is in vain as his strength and magic were depleted after losing the fight against you. However, the little fucker doesn't know when to give up, so you're forced to bring him down to the ground, kneeling above him with your legs on both of his sides.";
	say "     Now you're able to begin undoing your gear, freeing out your pulsing length and stroking it in front of the little demon. You can still hear him grunting, so you quickly grab him and pull him over to your shaft, dragging his face over your glistening tip and urging him to start licking it. A petite defeated imp is no match for someone of your size, so he has little choice but to oblige your desires, reluctantly putting his small but surprisingly long tongue to use. Using your hands, you place his meager arms and legs around your dick, which throbs in response to his nimble efforts at pleasing you. You feel an incredible urge to slide the imp down and up your rock hard manhood, just like you'd use a fleshlight, feeling the imp's entire body rub against your entire length. Both your hands are wrapped around the short red demon, pushing and pulling him across your rigid, pulsing shaft. Precum is already dribbling out from your slit onto the imp's face as you stroke faster and faster.";
	say "     You begin feeling your climax starting to build up within your gonads as you rub the little demon up and down your cock. You could [bold type]finish up by pinning him down and put your hips to use, hoping to cover the imp with your load, or just keep stroking until you cum all over yourself.[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Pin him down and give him a cum bath.";
	say "     ([link]N[as]n[end link]) - Keep stroking and blast all over yourself.";
	if Player consents:
		LineBreak;
		say "     As you approach the edge, you push the imp to the ground once again, moving your legs back a bit and readjusting your position. You can barely see the little demon pinned down underneath your shaft as you thrust it back and forth between one palm and his petite frame, your eyes meeting his as you're about to earn your sweet release. Your thrusts become more powerful and faster, nearly lifting the short hell minion off the cracked asphalt, and you don't stop until you're shooting your load all over him. Spurt after spurt, you cover the whimpering demon with your seed, giving him a cum bath he won't soon forget. Your momentum slows down as you reach the end of your orgasm, with the last weaker drops of your load falling right on the imp's face.";
		say "     'You... you will pay for this, you... Despicable mortal!' he says as he tries to clean your cum off his mouth in a desperation that's not convincing at all. You can't help but admire and giggle the image of such a wimpy little demon between your legs, being held down by you, covered in your load, still trying to threaten you. Now that you're done with him, you pluck him off the ground and lick some of your seed off his face, to which he loudly protests. In the middle of his aimless grunting, you decide you're finished with him, as you send the imp straight into the wormhole he made. The demon disappears, and with him, the crimson portal just afterwards, allowing you to resume your search in peace.";
	else:
		LineBreak;
		say "     As you approach the edge, you lean back to further enjoy the sensations brought by the short demon's body wrapped around your cock. The feeling of the imp's tongue wiggling around your manhood's head adds even more to your arousal, and soon, you feel that you're about to earn your sweet release. Your stroking becomes faster and faster, the intense and pleasing friction urging you to keep going and don't stop. Eventually, you're shooting your load all over yourself. Spurt after spurt, you cover your own body with your seed, some even landing on your face, drenching your neck and drawing a line between your chest and over to your waist. Your momentum slows down as you reach the end of your orgasm, taking a deep breath as you appreciate the mess you've done on yourself.";
		say "     'You... you will pay for this, you... Despicable mortal!' he says as he tries to clean his face off any fluid residues in a desperation that's not convincing at all. You can't help but admire and chuckle at the image of such a wimpy little demon still holding onto your dick trying to threaten you. Now that you're done with him, you pluck him off your softening shaft and give him a kiss on his face, to which he loudly protests. In the middle of his aimless grunting, you decide you're finished with him, as you send the imp flying straight into the wormhole he made. The demon disappears, and with him, the crimson portal just afterwards, allowing you to resume your search in peace.";

to say ImpSex2:
	say "     With the vulnerable imp at your mercy, you think of the many ways you could put his little body at use. A thought strikes your mind as you immediately begin to feel a slight pressure down below. In a reflex, your hand slides [if Player is naked]down to your crotch and wraps around your shaft[else]under your lower gear[end if] as you picture in your mind how exactly you're planning to use the short fucker for your pleasure. 'Wait, no no no! I've had enough of that! I refuse to be used by a stupid filthy-...' his words are cut as you silence him by covering his mouth - and nearly his entire face - with the same hand that has been down your crotch, while berating him for talking too much. The foot long demon squirms around in your tight grasp, but his struggling is in vain as his strength and magic were depleted after losing the fight against you. However, the little fucker doesn't know when to give up, so you're forced to bring him down to the ground, kneeling above him with your legs on both of his sides.";
	say "     Now you're able to begin undoing your gear, freeing out your already dripping wet pussy and stroking it in front of the little demon. You can still hear him grunting, so you quickly grab him and pull him over between your legs, shoving his little face flat against your labia. Feeling his muffled groans against your sex only arouses you further, as you rub him across your vulva in increasingly vigorous motions. You lean back as you have the wicked urge to further press his face against your inner lips, and as you feel him squirming and wiggling around in protest, you know it'll feel just about amazing. Doing so, the little demon's head disappears inside your moist cunt, and you then resolve to do the same with the rest of his petite body. Just like that, you're effectively using the imp as a foot long living dildo, grabbing his legs with a firm grasp while pushing and pulling the red hell minion inside and out of your pussy.";
	WaitLineBreak;
	say "     All his rioting wiggling inside you just makes it all more pleasurable for you, sometimes feeling more like a vibrator than a dildo alone. You bring him out for a few seconds and shove him all the way inside your womanhood before he even has a chance to whine about it. Fucking yourself with the imp and hitting all the right spots, you speed up your motions as you bring yourself closer to climax. Eventually, as your movements get more intense, you feel a pulsing orgasmic sensation taking over your senses, further increased by the feeling of your little captive squirming in your pussy. Your momentum slows down as you reach the end of your orgasm, taking a deep breath as you pull the imp out of you.";
	say "     'You... you will pay for this, you... Despicable mortal!' he says as he tries to clean his face off any fluid residues in a desperation that's not convincing at all. You can't help but admire and chuckle at the image of such a wimpy little demon soaked in your vaginal juices, panting from being deprived of air while he was being used as a fucktoy, trying to threaten you. Now that you're done with him, you bring him over to your face and give him a lick across his own, tasting your own fluids he was still covered in, to which he loudly protests. In the middle of his aimless grunting, you decide you're finished with him, as you send the imp flying straight into the wormhole he made. The demon disappears, and with him, the crimson portal just afterwards, allowing you to resume your search in peace.";

to say ImpSex3:
	say "     With the vulnerable imp at your mercy, you think of the many ways you could put his little body at use. A thought strikes your mind as you immediately begin to feel a slight pressure down below. In a reflex, your hand slides [if Player is naked]down to your crotch and wraps around your shaft[else]under your lower gear[end if] as you picture in your mind how exactly you're planning to use the short fucker for your pleasure. 'Wait, no no no! I've had enough of that! I refuse to be used by a stupid filthy-...' his words are cut as you silence him by covering his mouth - and nearly his entire face - with the same hand that has been down your crotch, while berating him for talking too much. The foot long demon squirms around in your tight grasp, but his struggling is in vain as his strength and magic were depleted after losing the fight against you. However, the little fucker doesn't know when to give up, so you're forced to bring him down to the ground, kneeling above him with your legs on both of his sides.";
	say "     Now you're able to begin undoing your gear, freeing your parts and stroking yourself in front of the demon. You can still hear him grunting, so you quickly grab him and pull him over between your legs, shoving his little face flat against your anus. Feeling his muffled groans against your asshole only arouses you further, as you rub him across your hole in increasingly vigorous motions. You lean back as you have the wicked urge to further press his face against your butthole, and as you feel him squirming and wiggling around in protest, you know it'll feel just about amazing. Doing so, the little demon's head disappears right between your ass cheeks, slowly pushing the rest of his body in as the foot long of a demon struggles in near panic. Just like that, you're effectively using the imp as a living dildo, grabbing his legs with a firm grasp while pushing and pulling the red hell minion inside and out of your sleek ass.";
	WaitLineBreak;
	say "     All his rioting wiggling inside you just makes it all more pleasurable for you, sometimes feeling more like a vibrator than a dildo alone. You bring him out for a few seconds and shove him all the way inside your butthole before he even has a chance to whine about it. Fucking yourself with the imp and hitting all the right spots, you speed up your motions as you bring yourself closer to climax. [if Player is male]Stroking your throbbing erection along, faster and faster, you eventually cum all over yourself, spurt after spurt, as you keep hitting your prostate with the powerful fucking you're giving yourself[else if Player is female]rubbing your clit along, you feel a pulsing orgasmic sensation taking over your senses, along with the powerful fucking you're giving yourself[end if], the pleasure further increased by the feeling of your little captive squirming in your ass. Your momentum slows down as you reach the end of your orgasm, taking a deep breath as you pull the imp out of you.";
	say "     'You... you will pay for this, you... Despicable mortal!' he says as he tries to clean his face off any fluid residues in a desperation that's not convincing at all. You can't help but admire and chuckle at the image of such a wimpy little demon, panting from being deprived of air while he was being used as a fucktoy, trying to threaten you. Now that you're done with him, you bring him over to your face and give him a lick across his own, having a slight taste of your own ass, to which he loudly protests. In the middle of his aimless grunting, you decide you're finished with him, as you send the imp flying straight into the wormhole he made. The demon disappears, and with him, the crimson portal just afterwards, allowing you to resume your search in peace.";

to say ImpDesc:
	setmongender 3;
	if ImpType is 0: [Skarnoth's scouts]
		say "     A rapid flutter of wings draws your attention to an incoming threat in the shape of a small, red-skinned creature about a foot in height! The slender being has a pair of bat-like wings on his back, a spade-tipped tail, and its relatively handsome face is crowned by an unruly mop of black hair out of which two curved horns poke out of. Wearing nothing but a thin, skimpy loincloth that sways from side to side with every motion, there is little doubt that this tiny demon is male.";
		say "     Swooping down on you, the imp gives you a lewd grin before clearing his throat and booms out in a demonic tone. 'Kneel! You're now mine, mortal!' The voice does have a proper horror film ring to it, but the effect is pretty underwhelming considering how small he is. You can't quite suppress a snort at how poorly his larger than life bravado goes with his tiny body, drawing you a hateful glare from the imp. 'We'll see who's laughing after I give you a well-deserved thrashing, whelp!' he shouts and raises a hand, forming a ball of fire above his palm about an inch in diameter.";
	else if ImpType is 1: [trash-dumping imp]
		say "     A rapid flutter of wings draws your attention to an incoming threat in the shape of a small, red-skinned creature about a foot in height! The slender being has a pair of bat-like wings on his back, a spade-tipped tail, and its relatively handsome face is crowned by an unruly mop of black hair out of which two curved horns poke out of. Wearing nothing but a thin, skimpy loincloth that sways from side to side with every motion, there is little doubt that this tiny demon, who goes by the name of Krokleet, is male.";
		say "     Swooping down on you, the imp gives you an angry frown before clearing his throat and booms out in his strangely high pitched tone. 'How dare you intrude during my duties! Isn't it enough hassle as it is, I'll have to deal with unpleasantries like yourself?!' His voice just makes it look all a bit funny, [if Libido of Skarnoth > 0]nothing like the imps you've encountered before,[end if] and you can't quite suppress a snort at how almost comical he sounds, drawing you a hateful glare from the imp. 'We'll see who's laughing after I give you a well-deserved thrashing, whelp!' he shouts and raises a hand, forming a ball of fire above his palm about an inch in diameter.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Imp";
	add "Imp Male" to infections of DemonList;
	add "Imp Male" to infections of OtherworldlyList;
	add "Imp Male" to infections of MaleList;
	add "Imp Male" to infections of BipedalList;
	add "Imp Male" to infections of TailList;
	add "Imp Male" to infections of FlightList;
	now Name entry is "Imp Male";
	now enemy title entry is "Flying Imp";
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]Swinging his arm like a baseball pitcher, the imp sends a fire-ball flying your way. Thankfully it is pretty small, so you're just a little singed.[or]In a lightning-quick flying maneuver, the little demon swoops past your face and gives your nose a kick. Ouch, that smarts![or]Swooping down between your legs, the imp leaves thin bloody scratches near your ankles.[or]As he flutters straight towards your face, you deflect the imp with your hands, earning some bloody scratches in the process.[at random]";
	now defeated entry is "[Imp loses]";
	now victory entry is "[Imp wins]";
	now desc entry is "[ImpDesc]";
	now face entry is "that a fairly handsome male demon, with large expressive eyes and a broad mouth filled with small but sharp teeth. A pair of curved horns stick out of the unruly tangle of black hair on your head";
	now body entry is "that of a slender and skinny humanoid. Attached to your back are a pair of bat-like wings. These are red and almost as large as your body";
	now skin entry is "red";
	now tail entry is "You have a tight and compact butt with a long, slender tail attached. It is a classic devil tail: thin, red and ending in a spaded tip.";
	now cock entry is "human-like";
	now face change entry is "your facial muscles seem to ripple under the skin, rearranging themselves into a demonic, if rather cute appearance, with large eyes and a mouth with sharp teeth. Small horns push out of the mop of black hair forming on your head";
	now body change entry is "it is reshaped into a pretty compact and small, but still slender form. You are soon distracted from this change by the strange feeling of your skin stretching and pressing out from your back. Looking over your shoulder, you stare in wonder as two bulges of flesh push out of your back, then popping open in an almost orgasmic release. You now have a pair of blood-red bat wings on your back";
	now skin change entry is "your skin seems to smooth out and pull tight on your body, leaving you with a smooth and blemish less red skin";
	now ass change entry is "it tightens up into a tight ass, above which a demonic tail with spaded tip sprouts from your lower back";
	now cock change entry is "it seems to grow partially erect and twitches eagerly, hardening in its human-like shape";
	now str entry is 8;
	now dex entry is 20;
	now sta entry is 14;
	now per entry is 20;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Male";
	now HP entry is 50;
	now lev entry is 5;
	now wdam entry is 5;
	now area entry is "Nowhere";        [ Case sensitive]
	now Cock Count entry is 1;               [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 6;
	now Ball Size entry is 1;          [ Size of balls ]
	now Nipple Count entry is 2;             [ Number of nipples. ]
	now Breast Size entry is 0;         [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;               [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now libido entry is 10;             [ Amount player Libido will go up if defeated ]
	now loot entry is "";               [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 00;         [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 1;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "slender";      [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "demonic";        [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
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
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
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
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
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
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]


Section 3 - Events

instead of navigating Red Light District while (level of Player > 10 and HP of Elijah > 2 and HP of Elijah < 99 and Libido of Skarnoth < 10 and LastImpMeeting - turns > 8 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Red Light District]";
	if NavCheckReturn is false, stop the action;
	if debugactive is 1:
		say "     DEBUG: IMP SCOUT [line break]";
	say "[ImpEncounter]";
	challenge "Imp Male";
	now LastImpMeeting is turns;
	move player to Red Light District;

instead of navigating Grey Abbey Library while (level of Player > 10 and HP of Elijah > 2 and HP of Elijah < 99 and Libido of Skarnoth < 10 and LastImpMeeting - turns > 8 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	if debugactive is 1:
		say "     DEBUG: IMP SCOUT [line break]";
	say "[ImpEncounter]";
	challenge "Imp Male";
	now LastImpMeeting is turns;
	move player to Grey Abbey Library;

instead of navigating Smith Haven Mall Lot South while (level of Player > 10 and HP of Elijah > 2 and HP of Elijah < 99 and Libido of Skarnoth < 10 and LastImpMeeting - turns > 8 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Smith Haven Mall Lot South]";
	if NavCheckReturn is false, stop the action;
	if debugactive is 1:
		say "     DEBUG: IMP SCOUT [line break]";
	say "[ImpEncounter]";
	challenge "Imp Male";
	now LastImpMeeting is turns;
	move player to Smith Haven Mall Lot South;

to say ImpEncounter:
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1:
			say "     As you make your way through the mostly lifeless streets, filled with abandoned cars and trash, you hear a harrowing howl start in the distance, followed by another, and another. You freeze in your steps and a cold shiver runs down your spine as you hear them - that surely came from no normal dog, and neither a wolf. From your experience, you'd rather guess... hellhound. Thankfully the beasts seem to be a fair distance off, as you wouldn't want to be what they're running down right about now.";
			say "     Then suddenly, you hear voices call to each other far closer to your position - just around the next corner you'd say. They are rather deep, so your guess would be that it's males of some kind talking to one another. A first one says, 'Those fucking mutts! They were supposed to come wi-' Another interrupts him, 'Oh, shut up already! Neither of us is stupid enough to try dragging them away from humping their fresh mortal prey.' A third voice speaks up, 'Yeah, right - and the boss will punish us if we waste time instead of searching. So get going! You go left, you right and I'll just fly down this road.'";
		-- 2:
			say "     As you make your way through the mostly lifeless streets, filled with abandoned cars and trash, you come upon a rather disconcerting sight. There are paw-prints on the asphalt, or rather... indented into it, as if the black material partially melted at the point of contact. Add to that the visible areas in which something caustic seems to have dripped onto the road, creating foul-smelling discolored spots, and you have to guess that it's hellhound tracks you've found. Even worse, it isn't just one, but rather a whole pack of them from the number of imprints. Thankfully, the trail is cold as you crouch down and touch it. They seem to have been chasing something or someone, a guess that becomes a certainty as you spot a bunch of clothing shreds and cum-stains behind a car along the route they took. With a cold shiver running down your spine at the thought of what happened over there, you hold your breath for a moment and silently listen for any sign that the pack might be coming back this way.";
			say "     Silence stretches out around you, only interrupted by a very far-off screech of something - a bird or dinosaur-creature maybe. But just as you're starting to let out a relieved breath, you suddenly hear voices call to each other far closer to your position - just around the next corner you'd say. They are rather deep, so your guess would be that it's males of some kind talking to one another. A first one says, 'Those fucking mutts! They were supposed to come wi-' Another interrupts him, 'Oh, shut up already! Neither of us is stupid enough to try dragging them away from humping their fresh mortal prey.' A third voice speaks up, 'Yeah, right - and the boss will punish us if we waste time instead of searching. So get going! You go left, you right and I'll just fly down this road.'";
		-- 3:
			say "     As you make your way through the mostly lifeless streets, filled with abandoned cars and trash, you come upon a rather disconcerting sight. The street is splashed with dried, brown splotches of blood and splinters of bone crunch under your steps. Looks like something was torn to pieces, right here in the open. A few steps further, you see what - or rather who - it was... the ripped off head of a minotaur lies behind a car wreck, eyes still opened wide in horror and staring blankly at you. All around the grisly scene, there are paw-prints on the asphalt, or rather... indented into it, as if the black material partially melted at the point of contact. This does lead you to the conclusion that in all likelihood, a pack of hellhounds is responsible. Thankfully, the trails are cold as you crouch down and touch them, and the blood is dried all the way, so it didn't happen recently. With a cold shiver running down your spine, you hold your breath for a moment and silently listen for any sign that the pack might be coming back this way.";
			say "     Silence stretches out around you, except for the wind blowing past the buildings. But just as you're starting to let out a relieved breath, you suddenly hear voices call to each other close to your position - just around the next corner you'd say. They are rather deep, so your guess would be that it's males of some kind talking to one another. A first one says, 'Those fucking mutts! They were supposed to come wi-' Another interrupts him, 'Oh, shut up already! Be happy that they get fresh mortal prey and don't try to chew on us instead.' A third voice speaks up, 'Yeah, right - and the boss will punish us if we waste time instead of searching. So get going! You go left, you right and I'll just fly down this road.'";
	wait for any key;

An everyturn rule: [hellhound bad end progress every turn]
	if Libido of Skarnoth is 10: [player got found and marked]
		if ImpPlayerMarkingTurn - turns is 8:
			say "     A shiver runs down your spine suddenly and out of nowhere you hear... something. It is a padding sound, accompanied by scraping noise - like paws on asphalt, with their claws scratching over the stone as their owner sprints after prey. Then another and another beast joins the hunt, the rising sound soon accompanied by hungry growls and eager barks. Cold sweat breaks out over you as you become more and more convinced that they will suddenly appear and rip you to shreds - but then the strange effect reaches a terrifying climax as an unknown creature screeches in pain. The noises cuts off with shocking abruptness after that, the last thing in the air being satisfied growls out of many bestial throats.";
			say "     Gulping after the strange occurrence stops, you wonder what it meant... and realize that there is one part of you that doesn't feel cold. Raising a hand to your face, you feel a warm wetness on your forehead and as you wipe it off and pull the fingers away, see that it is cum. Seems like that fucking imp left a lasting stain that connects you to the pack of hellhounds hunting in the city. If it can just... flare up again and his load re-appears on your face, you don't doubt that the beasts will sniff you out soon!";
			LineBreak;
			say "     [bold type]The hellhounds are on your trail and are getting closer! Some other prey might have distracted them for now, but you don't doubt that they'll get back to going after you before long. You really should talk to Elijah about a chance at getting out of this impending doom![roman type]";
		else if ImpPlayerMarkingTurn - turns is 16:
			say "     A shiver runs down your spine suddenly and out of nowhere you hear... something. It is a padding sound, accompanied by scraping noise - like paws on asphalt, with their claws scratching over the stone as their owner sprints after prey. Then another and another beast joins the hunt, the rising sound soon accompanied by hungry growls and eager barks. Cold sweat breaks out over you as you become more and more convinced that they will suddenly appear and rip you to shreds - especially since the noise gets louder and louder. For a second you can even feel a warm breath against your neck, but then an aggressive bark, almost like a laugh, can be heard a little bit off to the side. The sounds fade away after that...";
			say "     Gulping after the strange occurrence stops, you wonder what it meant... and realize that there is one part of you that doesn't feel cold. Raising a hand to your face, you feel a warm wetness on your forehead and as you wipe it off and pull the fingers away, see that it is cum. Seems like that fucking imp left a lasting stain that connects you to the pack of hellhounds hunting in the city. If it can just... flare up again and his load re-appears on your face, you don't doubt that the beasts will sniff you out soon! They might have gotten distracted again this time, but who knows how long that will last...";
			LineBreak;
			say "     [bold type]The hellhounds are on your trail and are getting closer! You really should talk to Elijah about a chance at getting out of this impending doom![roman type]";
		else if ImpPlayerMarkingTurn - turns is 24:
			say "     Suddenly, you hear the scrape of clawed paws on the ground - from behind you. Then a low growl reaches your ears. Thinking for a second it is just another vision of the hunting pack, it takes several valuable seconds before you realize that this time, the hellhound is actually there with you. As you whirl around, you see the large beast in all its terrible glory - about as large as a small pony, the demon hound has jet-black fur and a powerful build, muscles rippling under his skin as he makes another step towards you. Eyes burning with an inner green glow play their gaze over you and his lips draw back, revealing countless sharp teeth. And that's not the only thing that is shown to you - the hound's blood-red shaft pushes out of its sheath in anticipation of running you down.";
			say "     Fleeing is clearly not the way to go here, so you steel yourself and get ready for the fight of your life... then suddenly, you see something from the corner of your eye - another hellhound, even closer than the first! Whirling around to face him, a throaty chuckle makes you glimpse to the side for a second and spot the next one. There are three hellhounds, surrounding you on all sides! Number two suddenly lunges forward, biting with slavering jaws - but that is only a feint, and the real attack comes from behind as two plate-sized paws hit you in the back and you stumble and fall.";
			WaitLineBreak;
			say "     The three of them pounce upon you like wild beasts, leaving you not a chance to recover or even fight back. Pushing you down and growling in savage amusement, they rip your clothes and gear to shreds... mostly without giving you more than just a few nips with their teeth. Finally, the lead hellhound steps over your body and grabs your neck between his powerful jaws to hold you tight and lines himself up with your body. With a savage thrust, the beast fills you with its knotted cock, then fucks you mercilessly until breeding your hole with a heavy load of demon cum. One after another, they all take turns using you, going again and again until you're nothing but a cummy mess. Only after that are you dragged over the back of the lead hound by one of his pack-mates, then carried to the portal they entered your world through.";
			say "     A succubus and incubus pair of demons welcome you to your new home - their demon prince's lair, which is decorated in a lewd medieval style. After a thorough scrubbing you're brought before Skarnoth, a handsome horned demon around whom a noticeable aura of power ripples in the air. The demon lord makes sure to show you his... displeasure, at being cheated out of an angelic slave, and after a hard fucking you're added to the pool of his mortal pets - to be played with, abused and used.";
			now TailName of Player is "Demon Slave";
			now FaceName of Player is "Demon Slave";
			now SkinName of Player is "Demon Slave";
			now BodyName of Player is "Demon Slave";
			now CockName of Player is "Demon Slave";
			end the story saying "You're stuck in hell - there's no coming back from that!";


Section 4 - Endings

when play ends:
	if BodyName of Player is "Imp Male":
		if humanity of Player < 10: [succumbed]
			say "     Finally giving in to your base desires, you take off and fly over the city on the search for someone to fuck. Small as you may be, from high up everyone looks tiny and weak - which makes you feel powerful and strong. They're just insects to you, mortal mayflies to be played with. Before long, your search bears fruit - there is a small group of people holed up on top of a building, uninfected humans that have the stairwell barricaded and cower from the monsters below in a shack on the roof. Of course, this doesn't protect them from you as you, with your wings and demonic powers. With little more than a few fireballs thrown around, you frighten them into obedience and gain a flock of fucktoys to serve your every whim. This even goes so far that they never even dare to try calling out to the soldiers as they sweep the city, instead hiding according to your commands and being left behind - all yours, forever.";
		else:[sane]
			say "     Rescued by the military, you are released after a short while of quarantine. With your small stature and demonic looks, it isn't easy to find a new place in the post-nanite world, but the fact that you do have functional wings does pay off in the end and you're hired as a courier by the 'Skymail' express delivery service. Supplanting the bike couriers of the big cities, the mixed crew of gryphons, harpies and even demons just like yourself does quite well, and before long the bigger companies usually have a little balcony added to their high rises for speedy drop-offs. As you and those like you become part of the typical day to day of many people - regularly swooshing past over their heads with important documents - the distrust about looking like a demon lessons bit by bit too. Sure, you get splashed with holy water by bigots once in a while, but that becomes the exception as society integrates all the new species of new people...";

Imp ends here.
