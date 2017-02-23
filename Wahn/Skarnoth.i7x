Version 1 of Skarnoth by Wahn begins here.
[Version 1 - New Creature]

"Adds a demon npc to Flexible Survival, entering the game as an aftermath of freeing Elijah and a quest line"

[ Skarnoth, the demon                                                                      ]
[                                                                                          ]
[ HP of Skarnoth                                                                           ]
[   0: starting state, not met yet                                                         ]
[   1: brought to the library, nothing done with him yet                                   ]

[ libido of Skarnoth - player interactions with imps                                       ]
[   0: never met an Imp Scout                                                              ]
[   1: fought, won and tied up an Imp Scout                                                ]
[   2: fought, won and tried to kill an Imp Scout                                          ]
[   3: player fought more than one imp and got a hint to talk to Elijah                    ]
[   4: player talked to Eli, didn't go through with the attack                             ]
[  10: fought, lost and was marked by an Imp Scout                                         ]
[  11: marked player talked to Eli, didn't go through with the attack                      ]
[  20: player took him as a slave and moved him into the library                           ]


Half-Renovated Room is a room.
Northwest of Grey Abbey Library is Half-Renovated Room.
Half-Renovated Room is sleepsafe.
The description of Half-Renovated Room is "[LibrarySideRoomDesc]";

to say LibrarySideRoomDesc: 
	say "     This large room of the Grey Abbey Library seems to be where most of the furniture of the old abbey ended up when the building was converted to its new purpose. With its high ceiling, ample floor-space and even a big fireplace, it could have been a dining hall or something in the past. Now it is mostly filled with numerous pieces of furniture, some stacked quite high and partially covered in white sheets. The two still accessible walls are covered in scaffolding and show signs of recent work on them - looks like workers were in the progress of refurbishing the room for library use when the nanite outbreak began.";
	if Skarnoth is in Half-Renovated Room:
		say "     Since you brought the demon prince Skarnoth here and securely attached the long chain on his collar to the scaffolding, the imprisoned predator has done his best to improve his comfort of his prison. A soft (if somewhat threadbare and stained) couch has been dragged to stand against the back wall and shows signs of being used as a bed. He even found a high-backed armchair somewhere, which is now set up next to the fireplace. Sitting in it, the demon awaits you, wearing an arrogant expression as if he was a king awaiting supplicants.";

Section 1 - Description

Skarnoth is a man. The hp of Skarnoth is usually 0.
The description of Skarnoth is "[SkarnothDesc]".
The conversation of Skarnoth is { "Woof." }.
SkarnothLibraryEntry is a number that varies. [when he was brought in]

to say SkarnothDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Skarnoth], LEVEL: [level of Skarnoth], LIBIDO: [libido of Skarnoth], LIBRARY ENTRY TURN: [SkarnothLibraryEntry] <- DEBUG[line break]";	
	say "     Skarnoth the demon prince is a magnificent specimen of masculinity, with a strikingly handsome face framed by blood-red hair. His firm pecs and six-pack abs would fit an underwear model - which he kind of is, as you stripped him of his regalia, taking off anything but a skin-tight black thong. The strip of fabric does more to show off the bulge of his package than to conceal anything.";
	say "     Letting your gaze stray from the flawless, reddish skin of the demon's torso, his similarity to the perfection a Greek statue does diminish a bit - as Skarnoth's otherworldly nature shows clearly on the rest of his body. Starting with a few small scales on the sides of his upper body, then larger and more solid ones on his hips and down the legs, the infernal being has overlapping, flexible scales. His feet bear sharp claws, as do the hands (if a bit smaller ones), and further scale-plates make it appear like he is wearing elaborate bracers as well as pauldrons to cover his shoulders. Also, he has a long tail with a ridge of scales running down the backside, ending in a spaded tip. A pair of large horns curving up from his head completes the image of a handsome and dangerous predator.";

The scent of Skarnoth is "     Skarnoth has an almost entrancing, sexy scent. A pleasant tingle runs down your spine as you take a deep sniff, breathing in the masculine aroma and pheromones, underlain with a little bit of brimstone".

Section 2 - Talking

instead of conversing the Skarnoth:
	if (hp of Skarnoth > 0):
		say "     <This is a placeholder text for this WIP npc. Please have some patience until there is time to write more content for Skarnoth>";
	otherwise:
		say "ERROR-Skarnoth-[hp of Skarnoth]C: He isn't in one of the states she should be in! Please report how you got to this message.";

Section 3 - Sex

Instead of fucking the Skarnoth:
	say "     As you approach the handsome demon, he [one of]leans back in his high-backed chair and hooks a leg over one of its armrests, pushing up his crotch for you to look at[or]gives you a lewd grin and runs a finger along his rippling chest muscles, all the way down to his navel[or]smiles at you lewdly and pushes his tongue out, demonstrating quite a range of flexibility with it[or]beckons you closer with slow, sensual motions of his tail[or]raises both arms and hooks his fingers together behind his head, stretching his muscles in an enticing show of masculinity[at random]. 'What brings you here master,' Skarnoth greets you with a teasing tone, 'Do you want to teach this evil-doer to be a productive member of society, happy to be introduced to a better way? No... I don't think so - not with that lusty gleam in your eyes. So - punishment it is then, eh? Show me what a bad, bad boy I've been!'";
	say "     Laughing in amusement, he proceeds to lightly slap a hand against one of his rock-hard pecs, then abs, followed by sliding it down to the black thong barely concealing his sizable manhood. Stretching the flexible fabric to hook it under his balls, the demon prince reveals his thick and throbbing cock and strokes it slowly up and down. With a wink to you, he adds, 'And if you feel like getting a little taste of the forbidden fruit, I'm definitively your man. Come on - you won, so live a little. No one's gonna hold it against you if you crave a nice thick demon cock. I won't tell anyone, I promise.' Skarnoth's sharp canines almost seem to gleam as he smiles broadly after saying that, wiggling his eyebrows at you.";
	wait for any key;
	say "[SkarnothSexMenu]";

to say SkarnothSexMenu:
	setmonster "Demon Prince";
	choose row monster from the table of random critters;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Skarnoth's cock";
	now sortorder entry is 1;
	now description entry is "Give him a blow-job";
	[]
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Face-fuck him";
		now sortorder entry is 2;
		now description entry is "Use the demon's mouth";
	[
	if (cocks of player > 0 or cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "69 with Skarnoth";
		now sortorder entry is 3;
		now description entry is "Share oral pleasures with your male demon";
	[]
	if (cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Ride Skarnoth's dick (vaginal)";
		now sortorder entry is 4;
		now description entry is "Let the demon breed you";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ride Skarnoth's dick (anal)";
	now sortorder entry is 5;
	now description entry is "Let the demon fill your ass with his seed";
	]
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Skarnoth's ass";
		now sortorder entry is 6;
		now description entry is "Fill the demon's ass with your cock";
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
				now sextablerun is 1;
				if nam is "Suck Skarnoth's cock":
					say "[SkarnothSex1]";
				otherwise if (nam is "Face-fuck him"):
					say "[SkarnothSex2]";
				otherwise if (nam is "69 with Skarnoth"):
					say "[SkarnothSex3]";
				otherwise if (nam is "Ride Skarnoth's dick (vaginal)"):
					say "[SkarnothSex4]";
				otherwise if (nam is "Ride Skarnoth's dick (anal)"):
					say "[SkarnothSex5]";
				otherwise if (nam is "Take Skarnoth's ass"):
					say "[SkarnothSex6]";				
				wait for any key;
		otherwise if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the chained demon, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say SkarnothSex1: [player sucks him]
	say "     Licking your lips at the sight of Skarnoth's large prick, standing straight up and with prominent veins throbbing along its length, you take a step forward towards the widely grinning demon. 'I knew you couldn't resist,' he says in a charming voice while his long tail snakes towards you, brushing your lower leg with the spaded tip and then wandering upwards as the appendage wraps around to draw you in. The orange glow in his eyes gets a little brighter as he dabs a clawed finger to the tip of his cock, wiping up the almost glowing droplet of pre-cum there. As you bump against the demonic male's muscular thighs and feel the heat radiating off his body, Skarnoth raises his hand to offer his pre. Almost without thinking, you find yourself hungrily licking it off his finger. He tastes spicy and hot, tingling a little on your tongue, and you find yourself craving more - so you take his finger into your mouth to suck even the last little bit off.";
	say "     'Very good,' Skarnoth says and lets you suckle on his clawed digit for a short while, carefully stroking your tongue with its sharp point to give an enticing sensation of danger without actually hurting you. 'Why don't you go for more straight from the tap,' he adds after pulling out and stroking along the edge of your jaw, then nods down to his long, thick and throbbing manhood. There is more tasty pre welling up from his cum-slit right in that very moment, with a thin line of it already trickling down the shaft in an irresistible spectacle. Falling to your knees, you lean forward and run your tongue up the side of Skarnoth's erection, exploring its comfortably hot firmness with the tip. Soon, you reach the cockhead and slide your lips over it, sucking down hard to get another tasty treat.";
	say "     [WaitLineBreak]";
	say "     'Eager, aren't you? I like that in my p- err, master.' Skarnoth says with a grin, then pushes on the back of your head to make you go lower. Not forcefully, but with a firm yet gentle touch, making your stretched lips sink further down on his pole. Soon, the mushroom head of his cock bumps the back of your throat, making you swallow reflexively, snorting and choking on his penis - but the demonic male doesn't even think about letting you pull off. His hands remain wrapped around your head, firmly holding you just where you are while he says, 'Come on, you can do better. Relax your throat a bit and allow me in. You know you want to.' With no way to go but forwards, you submit to the demon's intention of face-fucking you.";
	say "     Soon, the hot and throbbing spear of Skarnoth's erection pushes further into you, stretching your throat around its girth. 'Yeah, you're doing really nice,' he gives a throaty grunt as his balls slap against your chin - you've taken all of Skarnoth's cock! 'This is what mortals were made for, you know. Some religions have that all mixed up,' comes the next comment, followed by him grinding your nose deep into the bush of his bright red pubic hair. You can't help but huff his masculine aroma, which makes you go weak-kneed and tingly - oh no, wait... that's the lack of oxygen from having his cock blocking your airway. The demon pulls you off his erection a moment later, chuckling at the way you gasp for breath, then starts to face-fuck you in earnest, hilting himself in your throat in a fast-paced rhythm.";
	say "     [WaitLineBreak]";
	say "     Skarnoth makes use of you for his own enjoyment, humping your mouth hard and almost without pause, which keeps you just a bit delirious but also somehow wanting for him to do it more. You don't know how long your breathtaking session takes, but at some point, the throbs of more pre come faster and faster while Skarnoth's grunts raise in urgency. Preparing yourself for his orgasm, you gulp down as he pulls out most of the way to cover your tongue with his load. The demon's cum is thick and creamy, even spicier than his pre and really quite hot, filling you with an inner warmth as you swallow it. More and more blasts of cum are blasted into your mouth and you do your best to eat it all, but after a little while, its hotness becomes a little bit of an issue - both in taste and temperature, as you start sweating and getting a red head, your eyes tearing up just a little.";
	say "     At that point, Skarnoth pulls his manhood out and blasts your face with the next spurt of cum, leaving a hot line of sticky whiteness across one cheek. 'Hope you like jalapeno peppers,' he says with a chuckle, 'And if not... you'll surely get used to it soon. Trust me, they all do.' He keeps a hand on your head to hold you close while aiming his cock with the other one, doing his very best to cover as much as possible of your face and upper body with his load. Only when his orgasm finally ebbs off does the demon let go, loosening his tail from around your hips too as he leans back in satisfaction. 'That was fun,' he says loudly, smiling as you get to your feet and start wiping up his cum to lick it off your fingers. 'Be sure to come back for more... master,' the demon adds after that, with the last word being an almost amused afterthought.";

to say SkarnothSex2: [facefuck Skarnoth]
	say "     Hooking a hand behind Skarnoth's head, you pull the sexy demon up from his seat, right into a demanding kiss. Chuckling under his breath, he proceeds to tongue-wrestle with you and slides those strong arms of his around your body, clawed hands kneading the cheeks of your butt. As you pull back from the bout of making out a moment later, the demon says in a teasing tone, 'You need it bad, don't you. How about you - umphH!' That's how far he gets before you push two fingers into his mouth and grunt commandingly for him to suck on your invading digits. The inner glow of the demon prince's eyes flares up a little as he realizes that you're planning to dominate him in this sexual encounter, and you can feel his muscles start to tense - right until you run a finger along his neck, reminding him of the collar you put on him.";
	say "     With a huff of hot air from his nostrils, Skarnoth starts sucking on your fingers and playing his tongue over them. It feels great to have this powerful being at your beck and call, holding him by the chin with your thumb while you pump two fingers in and out of his increasingly sloppy mouth. After enjoying the moment for a little bit, you command Skarnoth to undo your pants, which he does without hesitation. The hard shaft of your erection springs out as it is freed from the tight confines it was in, brushing against the hot pillar of Skarnoth's demonic prick in a quite pleasurable sensation. Shoving your pants down to drop to the floor, the muscular male gives a lusty grunt and closes a hand around both of your cocks - stroking them together.";
	say "     [WaitLineBreak]";
	say "     Your captive demon is quite good at teasing a guy to higher and higher arousal, jerking you off in a comfortable grind of his warm skin on your dick. For a second, you're almost ready to just let him stroke you till you blow your load all over that muscle-ribbed chest of his, paint those abs in your cum - but then you remember that you had something else in mind. Pulling back a little from the sexy demon, you tap his shoulders and command for him to kneel. [one of]'Oooh, wanna smack the evil demon in the face with your dick? Do you think that'll be a punishment?'[or]'About time you get to it!'[or]'So you wanna punish the evil demon by giving him your rod? Did you know that many exorcisms end this way?'[or]'Gonna let me eat out your ass to fuck you after all? You know you want to!'[at random] he calls out in a teasing tone, then gives a little lusty growl as you grab his curved horns to use as convenient handholds.";
	say "     Finding his head pulled forward to grind your crotch against Skarnoth's face, the demon chuckles at your demanding treatment. He even jerks his own hard cock while doing so and keeps up making taunting remarks - most of them incomprehensible by being mumbled while he's pressed to your crotch or balls. Eventually you have enough of just rubbing up against Skarnoth and pull the demon's head back harshly, which allows him to look up at you, sticking out his tongue in a grin and chuckling before you plug his open mouth with your hard cock. The demon prince's lips and tongue feel pleasantly warm against your erection, more so than a human would... but then, that's kinda the point about fucking around with a visitor from hell.";
	say "     Making use of the oh so convenient handholds Skarnoth's horns provide, you face-fuck your captive harshly, not holding back at all as your balls smack against his chin in thrust after thrust. He seems to take this in stride, playing his tongue over your shaft and with his cheeks bending inward as he sucks hard on your thrusting pick. Hell, he even accepts a deep-throat fuck without the slightest hint of gagging and all the while masturbates his own cock in a steady rhythm. Calling this demon sexually skilled is definitively an understatement. While you are busy pounding Skarnoth's face, his tail moves against you, snaking up against the back of your leg in a hot line of contact. The spaded tip of it almost seems to be searching for something, feeling its way up and up.";
	say "     [WaitLineBreak]";
	say "     Eventually Skarnoth's tail slides into the valley between your buttocks, brushing back and forth a little before the tip catches on the edge of your pucker. Before you really can react to what you know this means, the demon goes wild in sucking on your cock and fondles your balls in a quite pleasurable manner, trying to distract you while he gets his appendage in to tail-fuck you. From the somewhat slick feeling of his tail-tip, he must have lubed it up with his own pre too!";
	say "     [line break]";
	say "     [bold type]Do you let him fuck you with his tail?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Just enjoy it.";
	say "     ([link]N[as]n[end link]) - Pull his tail away from your rear end and stuff it up his ass.";
	if player consents:
		say "     [line break]";
		say "     As turned on as you are by the demon hunk, you are more than alright with letting him enjoy the fruits of his little game of distraction - so you even push back a little as his tail-tip presses in against your pucker. Slick with Skarnoth's own pre, the fleshy spade enters you with relative ease and gives you the interesting sensation of face-fucking and being fucked by the same guy all at once. The demon's grunts of lust around the hard shaft in his mouth take on a quite satisfied tone and he replies to every hard yank on his horns by pushing his tail deep and twisting it a little. Your hot chain-fuck quickly pushes the demon closer and closer to his limits, and before much longer he groans loudly. With that, the kneeling shape of the demon prince starts trembling and twitching, as do his throat muscles around your prick, tensing up with every new spurt of cum he is blasting all over the ground between your feet.";
		say "     Feeling Skarnoth suck hard on your dick, you're not too far behind joining your partner in orgasm and bury your erection all the way down his throat. Almost as soon as your swinging balls hit his chin in one last satisfying slap, you start blasting away with spurt after spurt of thick and creamy cum, filling Skarnoth's stomach with your load. You keep his face tightly pressed against your crotch for a while as your orgasm goes on with more and more semen being pumped into Skarnoth - so much so that he eventually has to push against your hips to show he's running out of air. With an amused huff through your nose, you pull back and allow him to gasp for air, splashing the demon's red-skinned face with several blasts of cum before the climax eventually tapers off. Only after you've finished cumming and made the demon lick off the last drops from your softening prick do you take hold of his tail and slowly pull it out of your ass.";
		say "     [WaitLineBreak]";
		say "     As you start picking up your gear and pants to get dressed, Skarnoth stands up straight and enjoys the sight of your naked body, even going so far as lightly slapping your ass as you bend over. 'That was fun,' he says with a chuckle, then wipes his face with a slow swipe of his clawed hand. Looking at the white cum sticking to his fingers, he gives you a wink and then sucks it off finger by finger before sauntering over to throw himself on his red leather chair.";
	otherwise:
		say "     [line break]";
		say "     As turned on as you are by the demon hunk, you still decide to stop him before things get out of hand. After all, you're the boss here and he should better remember that! Catching the long tail in an iron grip, you pull it away from your ass and tell Skarnoth that he's been a bad boy, underlining it by yanking his horns back, forcing him to look up at you. Grinning, he licks his sloppy lips and replies in a challenging tone, 'And what are you gonna do about it?' In reaction to that, you crouch down with his tail in hand, ignoring Skarnoth's tries to free the long appendage with sharp tugs. Looking at the glistening fleshy spade at the end, lubed with his own pre to allow for easier fucking, the choice is clear. Slapping Skarnoth's buttocks with your other hand and pulling one cheek to the side a little, you shove his tail-tip at the demon prince's own pucker, burying it all the way to where your fist is closed around the tail.";
		say "     'Nnngh!' he groans out loud at the sudden and deep penetration, but Skarnoth's smile never wavers. Chuckling, he adds, 'Someone likes to play rough, eh? What? Did you think this is the first time that has been up there?! I could - ummmphH!' Having had enough of his teasing, you stuff the demon's mouth with your shaft once more, hammering into him in a relentless throat-fuck. Between enjoying your partner's talented mouth and the thrill of dominating such a powerful being, you soon get closer and closer to your impending climax. Burying your erection all the way down his throat, you start blasting away with spurt after spurt of creamy cum almost as soon as your swinging balls hit his chin. It feels amazing to have your prick buried in the hot, right tunnel of his throat and to fill Skarnoth's stomach with your load.";
		say "     [WaitLineBreak]";
		say "     Keeping his face tightly pressed against your crotch for a while as your orgasm goes on - with more and more semen being pumped into Skarnoth - he eventually has to push against your hips to show he's running out of air. With an amused huff through your nose, you pull back and allow him to gasp for air, splashing the demon's red-skinned face with several blasts of cum before the climax eventually tapers off. Meanwhile, the demon pushes himself to orgasm by tail-fucking his own ass, blasting long streaks of demon cum all over the floor between your legs";
		say "     As you start picking up your gear and pants to get dressed, Skarnoth stands up straight and enjoys the sight of your naked body, even going so far as lightly slapping your ass as you bend over. 'That was fun,' he says with a chuckle, then wipes his face with a slow swipe of his clawed hand. Looking at the white cum sticking to his fingers, he gives you a wink and then sucks it off finger by finger before sauntering over to throw himself on his red leather chair.";
	
to say SkarnothSex3: [69 with Skarnoth]
	say "     A";

to say SkarnothSex4: [player pussy fucked]
	say "     A";

to say SkarnothSex5: [player ass fucked]
	say "     A";
	
to say SkarnothSex6: [Skarnoth's ass fucked]
	say "     Hooking a hand behind Skarnoth's head, you pull the sexy demon up from his seat, right into a demanding kiss. Chuckling under his breath, he proceeds to tongue-wrestle with you and slides those strong arms of his around your body, clawed hands kneading the cheeks of your butt. As you pull back from the bout of making out a moment later, the demon says in a teasing tone, 'You need it bad, don't you. How about you - umphH!' That's how far he gets before you push two fingers into his mouth and grunt commandingly for him to suck on your invading digits. The inner glow of the demon prince's eyes flares up a little as he realizes that you're planning to dominate him in this sexual encounter, and you can feel his muscles start to tense - right until you run a finger along his neck, reminding him of the collar you put on him.";
	say "     With a huff of hot air from his nostrils, Skarnoth starts sucking on your fingers and playing his tongue over them. It feels great to have this powerful being at your beck and call, holding him by the chin with your thumb while you pump two fingers in and out of his increasingly sloppy mouth. After enjoying the moment for a little bit, you command Skarnoth to undo your pants, which he does without hesitation. The hard shaft of your erection springs out as it is freed from the tight confines it was in, brushing against the hot pillar of Skarnoth's demonic prick in a quite pleasurable sensation. Shoving your pants down to drop to the floor, the muscular male gives a lusty grunt and closes a hand around both of your cocks - stroking them together.";
	say "     [WaitLineBreak]";
	say "     Your captive demon is quite good at teasing a guy to higher and higher arousal, jerking you off in a comfortable grind of his warm skin on your dick. For a second, you're almost ready to just let him stroke you till you blow your load all over that muscle-ribbed chest of his, paint those abs in your cum - but then you remember that you had something else in mind. Pulling back a little from the sexy demon, you grip Skarnoth's bulging bicep and wrench him around, then push on his broad back to bend him over. [one of]'Oooh, so you wanna eat my ass? Go on, get in there!'[or]'About time you get to it!'[or]'So you wanna punish the evil demon by giving him your rod? Did you know that many exorcisms end this way?'[or]'Come on, kneel and eat me out! You know you want to!'[at random] he calls out in a teasing tone, then grunts deeply as you shove the wet fingers of your hand against the winking pucker under his long tail.";
	say "     Finding himself with two fingers thrust knuckle-deep into his hot and tightly gripping chute, the demon's own cock throbs with a spurt of pre-cum that connects his swinging dick to the edge of his chair for a second, stretching out in a sticky string before snapping. Looks like he enjoys having the magic button of his prostate being pushed quite a bit, despite his obvious desire to be the one on top. You pump your fingers in and out a few more times, then pull them away and watch his pucker wink open and shut in eager anticipation. Taking hold of the base of your shaft, you smack it against Skarnoth's crack and buttocks, creating satisfying meaty thuds. Next you press the cockhead in against his ring muscle, increasing the pressure until it starts to give, then letting up on it again, chuckling as the demon holds his breath each time, then lets out more and more frustrated panting.";
	say "     [WaitLineBreak]";
	say "     Soon, the powerful demon is almost trembling with the build-up of lust and glances over his shoulder at you. 'Fuck me already you bastard!' he growls out between clenched teeth, his tail snaking its way around your hips to pull you closer against him. After one more last-minute tease that has Skarnoth almost gnawing on the armrest he is holding on to, you finally relent and slide yourself into his ass, stretching his insides out with your [cock of player] shaft. He feels amazing around your dick, incredibly warm and tight, and you eagerly start thrusting, pounding into the captive demon with increasing force. 'Ngh. Ngh! Yeah that's it! Harder! You'll fuck the evil right out of me if you keep going,' the powerful being grunts out in a mixture of mocking and genuine lust - enticing you to really take out all the stops.";
	say "     While you are busy shafting Skarnoth deep and hard, his tail moves against you, with the tip brushing down your back to search out your own bare buttocks. Then suddenly the demon tenses his inner muscles around your shaft, squeezing it like a vise before going on to almost jerk you off with a surprising amount of muscle control. The amazing sensations his gripping chute gives you totally dominates your thoughts for a moment - so much so that you almost miss the moment in which some gentle rubbing by his appendage turns into a push of its spaded head against your own hole. Skarnoth wants to tail-fuck you! From the somewhat slick feeling of his tail-tip, he must have lubed it up with his own pre too!";
	say "     [line break]";
	say "     [bold type]Do you let him fuck you with his tail?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Just enjoy it.";
	say "     ([link]N[as]n[end link]) - Pull his tail away from your rear end and stuff his mouth with it.";
	if player consents:
		say "     [line break]";
		say "     As turned on as you are by the demon hunk, you are more than alright with letting him enjoy the fruits of his little game of distraction - so you even push back a little as his tail-tip wedges itself against your pucker. Slick with Skarnoth's own pre, the fleshy spade enters you with relative ease and gives you the interesting sensation of fucking and being fucked by one guy at the same time. The demon's grunts of lust take on a quite satisfied tone and he replies to every hard thrust from you by pushing his tail deep and twisting it a little. Your hot chain-fuck quickly pushes the demon closer and closer to his limits, and before much longer he groans, 'Yeah! Just like... nnnnghhHHHH! FUCK!' With that, the bent-over shape of the demon prince starts trembling and twitching, as do his inner muscles around your prick, tensing up with every new spurt of cum he is blasting all over the leather upholstery of his high-backed chair.";
		say "     Feeling Skarnoth's insides almost milk your dick, you're not too far behind joining your partner in orgasm and slam hard against his ass. Almost as soon as your swinging balls hit his warm skin in one last satisfying slap, you start blasting away with spurt after spurt of thick and creamy cum, filling Skarnoth's asshole with your load. The two of you stay tightly pressed together for a while, bent over and with him bracing against the chair, you against his strong back. Only after your respective orgasms have tapered off and you've caught your breaths do you take hold of his tail and slowly pull it out of your ass, then withdraw your dick from between his cheeks.";
		say "     [WaitLineBreak]";
		say "     As you start picking up your gear and pants to get dressed, Skarnoth stands up straight and enjoys the sight of your naked body, even going so far as lightly slapping your ass as you bend over. 'That was fun,' he says with a chuckle, then glances over at his high-backed chair. 'Made quite a mess though,' the demon adds and nods to the white, slightly glowing splashes of his cum on the red leather. With a wink, he then swipes off the creamy goop and brings the hand used for that to his face, slurping his cum off finger by finger.";
	otherwise:
		say "     [line break]";
		say "     As turned on as you are by the demon hunk, you still decide to stop him before things get out of hand. After all, you're the boss here and he should better remember that! Catching the long tail in an iron grip, you pull it away from your ass and tell Skarnoth that he's been a bad boy, underlining it with a harsh thrust into his ass. Pulling the flexible tail forward, you smile as you see the spade at the end, glistening in his pre-cum. You know just what to do with it. Slapping Skarnoth's buttocks with your other hand, you command the demon to suck on his tail and swallow the pre on it - which he does without complaint. Having stopped the demon from getting one over on you, fucking him almost seems to feel even better than before, and you hump him hard and deep with great pleasure.";
		say "     Being taken like that quickly pushes the demon closer and closer to his limits, and before much longer he groans, 'Yeah! Just like... nnnnghhHHHH! FUCK!' With that, the bent-over shape of the demon prince starts trembling and twitching, as do his inner muscles around your prick, tensing up with every new spurt of cum he is blasting all over the leather upholstery of his high-backed chair. Feeling Skarnoth's insides almost milking your dick, you're not too far behind joining your partner in orgasm and slam hard against his ass. Almost as soon as your swinging balls hit his warm skin in one last satisfying slap, you start blasting away with spurt after spurt of thick and creamy cum, filling Skarnoth's asshole with your load. The two of you stay tightly pressed together for a while, bent over and with him bracing against the chair, you against his strong back. Only after your respective orgasms have tapered off and you've caught your breaths do you slowly withdraw your dick from between his cheeks.";
		say "     [WaitLineBreak]";
		say "     As you start picking up your gear and pants to get dressed, Skarnoth stands up straight and enjoys the sight of your naked body, even going so far as lightly slapping your ass as you bend over. 'That was fun,' he says with a chuckle, then glances over at his high-backed chair. 'Made quite a mess though,' the demon adds and nods to the white, slightly glowing splashes of his cum on the red leather. With a wink, he then swipes off the creamy goop and brings the hand used for that to his face, slurping his cum off finger by finger.";
		
Section 4 - Events

instead of going northwest from Grey Abbey Library while (hp of Skarnoth > 1):
	move player to Half-Renovated Room;
	if debugactive is 1:
		say "     DEBUG: SKARNOTH WALK-IN - HP OF SKARNOTH: [hp of Skarnoth], THIRST OF Skarnoth: [thirst of Skarnoth][line break]";
	say "     .";
	
Section 5 - Infection for combat purposes

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Demon Prince";
	now attack entry is "[one of]Skarnoth[or]The demon prince[or]The powerful demon[or]The handsome demon[at random] [one of]flashes past you in a flurry of claw-slashes with his hands, leaving behind bleeding gashes in your side.[or]jumps forward and gives you a bear hug, forcing both arms against your sides in impotent immobility. As air is being driven out of your lungs, you feel his breath hotly against your cheek, followed by his tongue licking possessively along your jawline. An eye-blink later, he lets go of you, laughing as you collapse to the ground and gasp for air.[or]throws himself on you and grabs your arm, then humps his hips forward. He is playing with you, only leaving a few scratches after making sure you feel his erect cock rub against your side.[or]gets a grip on your shoulder and throws you to the ground wish a harsh shove, which puts you on all fours with your ass raised. 'That's the proper way to await your master. Maybe you'll be an amusing pet after all.'[or]gives you a head-ringing slap that dazes you for a second, then lets his clawed hands roam over your body, feeling and groping you.[or]grabs you by the neck and aggressively kisses you, with his tongue exploring your mouth.[at random]";
	now defeated entry is "[line break]";
	now victory entry is "[line break]";
	now desc entry is "Stepping forward, the demon prince sneers at you. 'Usually people beg and whimper as they're dragged here. You see - they know what awaits them. It will be fun to make you realize the error of your ways! Oh, how you'll scream,' he chuckles darkly. Wiping a drop of blood from his last victim off his leather jacket and sucking his finger clean, the demon attacks without mercy";
	now face entry is "<noninfective>";
	now body entry is "<noninfective>";
	now skin entry is "<noninfective>";
	now tail entry is "";
	now cock entry is "<noninfective>";
	now face change entry is "<noninfective>";
	now body change entry is "<noninfective>";
	now skin change entry is "<noninfective>";
	now ass change entry is "<noninfective>";
	now cock change entry is "<noninfective>";
	now str entry is 20;
	now dex entry is 18;
	now sta entry is 18;
	now per entry is 14;
	now int entry is 12;
	now cha entry is 22;
	now sex entry is "Male";           [ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 275;               [ The monster's starting hit points. ]
	now lev entry is 20;               [ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 35;              [ Monster's average damage when attacking. ]
	now area entry is "nowhere";       [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;              [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 16;       [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 9;         [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;            [ Number of breasts the infection will give a player. ]
	now breast size entry is 0;        [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;              [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;        [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;         [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 70;            [ Target libido the infection will rise towards. ]
	now loot entry is "";              [ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;         [ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 4;              [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]demonic[or]infernal[or]powerful[at random]";
	now type entry is "[one of]demon[at random]";
	now magic entry is false;          [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;      [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;     [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";  [ Row used to designate any special combat features, "default" for standard combat. ]
	
when play ends:
	if bodyname of player is "Demon Slave":
		say "     Your new reality in hell focuses on satisfying Skarnoth's every desire - of which there are many, mostly carnal ones. As the overlord of his own little demonic realm, your master has the power to play with your body shape too, transforming you as he wishes to better enjoy breaking you to his will...";
		stop the action;	
	
Skarnoth ends here.
