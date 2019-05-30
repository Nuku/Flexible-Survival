Version 1 of Skarnoth by Wahn begins here.
[Version 1 - New Creature]

"Adds a demon NPC to Flexible Survival, entering the game as an aftermath of freeing Elijah and a quest line"

[ Skarnoth, the demon                                                                      ]
[                                                                                          ]
[ HP of Skarnoth                                                                           ]
[   0: starting state, not met yet                                                         ]
[   1: brought to the library, nothing done with him yet                                   ]

[ Libido of Skarnoth - player interactions with imps                                       ]
[   0: never met an Imp Scout                                                              ]
[   1: fought, won and tied up an Imp Scout                                                ]
[   2: fought, won and tried to kill an Imp Scout                                          ]
[   3: player fought more than one imp and got a hint to talk to Elijah                    ]
[   4: player talked to Eli, didn't go through with the attack                             ]
[  10: fought, lost and was marked by an Imp Scout                                         ]
[  11: marked player talked to Eli, didn't go through with the attack                      ]
[  20: player took him as a slave and moved him into the library                           ]



Section 1 - Description

Table of GameCharacterIDs (continued)
object	name
Skarnoth	"Skarnoth"

Skarnoth is a man. The HP of Skarnoth is usually 0.
The description of Skarnoth is "[SkarnothDesc]".
The conversation of Skarnoth is { "Woof." }.
SkarnothLibraryEntry is a number that varies. [when he was brought in]

to say SkarnothDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Skarnoth], LEVEL: [level of Skarnoth], LIBIDO: [Libido of Skarnoth], LIBRARY ENTRY TURN: [SkarnothLibraryEntry] <- DEBUG[line break]";
	if SkarnothThongStatus is 1:
		project the figure of Skarnoth_naked_icon;
	else:
		project the figure of Skarnoth_undies_icon;
	say "     Skarnoth the demon prince is a magnificent specimen of masculinity, with a strikingly handsome face framed by blood-red hair. His firm pecs and six-pack abs would fit an underwear model - which he kind of is, as you stripped him of his regalia, [if SkarnothThongStatus is 1]as well as destroying his trademark black thong. The sight of the demon's thick uncut cock swaying back and forth, with his full balls hanging underneath, is a definite improvement in your book[else]taking off anything but a skin-tight black thong. The strip of fabric does more to show off the bulge of his package than to conceal anything[end if].";
	say "     Letting your gaze stray from the flawless, reddish skin of the demon's torso, his similarity to the perfection a Greek statue does diminish a bit - as Skarnoth's otherworldly nature shows clearly on the rest of his body. Starting with a few small scales on the sides of his upper body, then larger and more solid ones on his hips and down the legs, the infernal being has overlapping, flexible scales. His feet bear sharp claws, as do the hands (if a bit smaller ones), and further scale-plates make it appear like he is wearing elaborate bracers as well as pauldrons to cover his shoulders. Also, he has a long tail with a ridge of scales running down the backside, ending in a spaded tip. A pair of large horns curving up from his head completes the image of a handsome and dangerous predator.";

The scent of Skarnoth is "     Skarnoth has an almost entrancing, sexy scent. A pleasant tingle runs down your spine as you take a deep sniff, breathing in the masculine aroma and pheromones, underlain with a little bit of brimstone".

Section 2 - Talking

instead of conversing the Skarnoth:
	if (HP of Skarnoth > 0):
		say "[SkarnothTalkMenu]";
	else:
		say "ERROR-Skarnoth-[HP of Skarnoth]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say SkarnothTalkMenu:
	say "     What do you want to talk to Skarnoth about?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Chat a bit";
	now sortorder entry is 1;
	now description entry is "Just talk with the demon prince";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Offer Skarnoth an item";
	now sortorder entry is 1;
	now description entry is "Give a gift to the demon prince";
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
				if (nam is "Chat a bit"):
					say "[SkarnothTalk1]";
				if (nam is "Offer Skarnoth an item"):
					say "[SkarnothTalk20]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the demonic prince, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SkarnothTalk1:
	say "     <Placeholder Scene, to be filled in soon>";

Section 3 - Sex

Instead of fucking the Skarnoth:
	say "     As you approach the handsome demon, he [one of]leans back in his high-backed chair and hooks a leg over one of its armrests, pushing up his crotch for you to look at[or]gives you a lewd grin and runs a finger along his rippling chest muscles, all the way down to his navel[or]smiles at you lewdly and pushes his tongue out, demonstrating quite a range of flexibility with it[or]beckons you closer with slow, sensual motions of his tail[or]raises both arms and hooks his fingers together behind his head, stretching his muscles in an enticing show of masculinity[at random]. 'What brings you here master,' Skarnoth greets you with a teasing tone, 'Do you want to teach this evil-doer to be a productive member of society, happy to be introduced to a better way? No... I don't think so - not with that lusty gleam in your eyes. So - punishment it is then, eh? Show me what a bad, bad boy I've been!'";
	say "     Laughing in amusement, he proceeds to lightly slap a hand against one of his rock-hard pecs, then abs, followed by sliding it down [if SkarnothThongStatus is 1]and eventually rubbing his bare cock and balls, making an enticing show of it for your viewing. The demon begins to get hard and plays with[else]to the black thong barely concealing his sizable manhood. Stretching the flexible fabric to hook it under his balls, the demon prince reveals[end if] his thick and throbbing cock and strokes it slowly up and down. With a wink to you, he adds, 'And if you feel like getting a little taste of the forbidden fruit, I'm definitively your man. Come on - you won, so live a little. No one's gonna hold it against you if you crave a nice thick demon cock. I won't tell anyone, I promise.' Skarnoth's sharp canines almost seem to gleam as he smiles broadly after saying that, wiggling his eyebrows at you.";
	wait for any key;
	say "[SkarnothSexMenu]";

to say SkarnothSexMenu:
	project the figure of Skarnoth_naked_icon;
	setmonster "Demon Prince";
	choose row MonsterID from the Table of Random Critters;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Skarnoth's cock";
	now sortorder entry is 1;
	now description entry is "Give him a blow-job";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Face-fuck him";
		now sortorder entry is 2;
		now description entry is "Use the demon's mouth";
	[
	if Player is not neuter:
		choose a blank row in table of fucking options;
		now title entry is "69 with Skarnoth";
		now sortorder entry is 3;
		now description entry is "Share oral pleasures with your male demon";
	[]
	if Player is female:
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
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Take Skarnoth's ass";
		now sortorder entry is 6;
		now description entry is "Fill the demon's ass with your cock";
	[]
	if SkarnothMasterSlave is 2:
		choose a blank row in table of fucking options;
		now title entry is "Spank Skarnoth's ass";
		now sortorder entry is 7;
		now description entry is "Spank your demonic slut";
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
				if nam is "Suck Skarnoth's cock":
					say "[SkarnothSex1]";
				else if (nam is "Face-fuck him"):
					say "[SkarnothSex2]";
				else if (nam is "69 with Skarnoth"):
					say "[SkarnothSex3]";
				else if (nam is "Ride Skarnoth's dick (vaginal)"):
					say "[SkarnothSex4]";
				else if (nam is "Ride Skarnoth's dick (anal)"):
					say "[SkarnothSex5]";
				else if (nam is "Take Skarnoth's ass"):
					say "[SkarnothSex6]";
				else if (nam is "Spank Skarnoth's ass"):
					say "[SkarnothSex7]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the chained demon, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say SkarnothSex1: [player sucks him]
	say "     Licking your lips at the sight of Skarnoth's large prick, standing straight up and with prominent veins throbbing along its length, you take a step forward towards the widely grinning demon. 'I knew you couldn't resist,' he says in a charming voice while his long tail snakes towards you, brushing your lower leg with the spaded tip and then wandering upwards as the appendage wraps around to draw you in. The orange glow in his eyes gets a little brighter as he dabs a clawed finger to the tip of his cock, wiping up the almost glowing droplet of pre-cum there. As you bump against the demonic male's muscular thighs and feel the heat radiating off his body, Skarnoth raises his hand to offer his pre. Almost without thinking, you find yourself hungrily licking it off his finger. He tastes spicy and hot, tingling a little on your tongue, and you find yourself craving more - so you take his finger into your mouth to suck even the last little bit off.";
	say "     'Very good,' Skarnoth says and lets you suckle on his clawed digit for a short while, carefully stroking your tongue with its sharp point to give an enticing sensation of danger without actually hurting you. 'Why don't you go for more straight from the tap,' he adds after pulling out and stroking along the edge of your jaw, then nods down to his long, thick and throbbing manhood. There is more tasty pre welling up from his cum-slit right in that very moment, with a thin line of it already trickling down the shaft in an irresistible spectacle. Falling to your knees, you lean forward and run your tongue up the side of Skarnoth's erection, exploring its comfortably hot firmness with the tip. Soon, you reach the cockhead and slide your lips over it, sucking down hard to get another tasty treat.";
	WaitLineBreak;
	say "     'Eager, aren't you? I like that in my p- err, master,' Skarnoth says with a grin, then pushes on the back of your head to make you go lower. Not forcefully, but with a firm yet gentle touch, making your stretched lips sink further down on his pole. Soon, the mushroom head of his cock bumps the back of your throat, making you swallow reflexively, snorting and choking on his penis - but the demonic male doesn't even think about letting you pull off. His hands remain wrapped around your head, firmly holding you just where you are while he says, 'Come on, you can do better. Relax your throat a bit and allow me in. You know you want to.' With no way to go but forwards, you submit to the demon's intention of face-fucking you.";
	say "     Soon, the hot and throbbing spear of Skarnoth's erection pushes further into you, stretching your throat around its girth. 'Yeah, you're doing really nice,' he gives a throaty grunt as his balls slap against your chin - you've taken all of Skarnoth's cock! 'This is what mortals were made for, you know. Some religions have that all mixed up,' comes the next comment, followed by him grinding your nose deep into the bush of his bright red pubic hair. You can't help but huff his masculine aroma, which makes you go weak-kneed and tingly - oh no, wait... that's the lack of oxygen from having his cock blocking your airway. The demon pulls you off his erection a moment later, chuckling at the way you gasp for breath, then starts to face-fuck you in earnest, hilting himself in your throat in a fast-paced rhythm.";
	WaitLineBreak;
	say "     Skarnoth makes use of you for his own enjoyment, humping your mouth hard and almost without pause, which keeps you just a bit delirious but also somehow wanting for him to do it more. You don't know how long your breathtaking session takes, but at some point, the throbs of more pre come faster and faster while Skarnoth's grunts raise in urgency. Preparing yourself for his orgasm, you gulp down as he pulls out most of the way to cover your tongue with his load. The demon's cum is thick and creamy, even spicier than his pre and really quite hot, filling you with an inner warmth as you swallow it. More and more blasts of cum are blasted into your mouth and you do your best to eat it all, but after a little while, its hotness becomes a little bit of an issue - both in taste and temperature, as you start sweating and getting a red head, your eyes tearing up just a little.";
	say "     At that point, Skarnoth pulls his manhood out and blasts your face with the next spurt of cum, leaving a hot line of sticky whiteness across one cheek. 'Hope you like jalapeno peppers,' he says with a chuckle, 'And if not... you'll surely get used to it soon. Trust me, they all do.' He keeps a hand on your head to hold you close while aiming his cock with the other one, doing his very best to cover as much as possible of your face and upper body with his load. Only when his orgasm finally ebbs off does the demon let go, loosening his tail from around your hips too as he leans back in satisfaction. 'That was fun,' he says loudly, smiling as you get to your feet and start wiping up his cum to lick it off your fingers. 'Be sure to come back for more... master,' the demon adds after that, with the last word being an almost amused afterthought.";
	if Loyalty of Skarnoth < 10:
		increase Loyalty of Skarnoth by 1;

to say SkarnothSex2: [facefuck Skarnoth]
	say "     Hooking a hand behind Skarnoth's head, you pull the sexy demon up from his seat, right into a demanding kiss. Chuckling under his breath, he proceeds to tongue-wrestle with you and slides those strong arms of his around your body, clawed hands kneading the cheeks of your butt. As you pull back from the bout of making out a moment later, the demon says in a teasing tone, 'You need it bad, don't you. How about you - umphH!' That's how far he gets before you push two fingers into his mouth and grunt commandingly for him to suck on your invading digits. The inner glow of the demon prince's eyes flares up a little as he realizes that you're planning to dominate him in this sexual encounter, and you can feel his muscles start to tense - right until you run a finger along his neck, reminding him of the collar you put on him.";
	say "     With a huff of hot air from his nostrils, Skarnoth starts sucking on your fingers and playing his tongue over them. It feels great to have this powerful being at your beck and call, holding him by the chin with your thumb while you pump two fingers in and out of his increasingly sloppy mouth. After enjoying the moment for a little bit, you command Skarnoth to undo your pants, which he does without hesitation. The hard shaft of your erection springs out as it is freed from the tight confines it was in, brushing against the hot pillar of Skarnoth's demonic prick in a quite pleasurable sensation. Shoving your pants down to drop to the floor, the muscular male gives a lusty grunt and closes a hand around both of your cocks - stroking them together.";
	WaitLineBreak;
	say "     Your captive demon is quite good at teasing a guy to higher and higher arousal, jerking you off in a comfortable grind of his warm skin on your dick. For a second, you're almost ready to just let him stroke you till you blow your load all over that muscle-ribbed chest of his, paint those abs in your cum - but then you remember that you had something else in mind. Pulling back a little from the sexy demon, you tap his shoulders and command for him to kneel. [one of]'Oooh, wanna smack the evil demon in the face with your dick? Do you think that'll be a punishment?'[or]'About time you get to it!'[or]'So you wanna punish the evil demon by giving him your rod? Did you know that many exorcisms end this way?'[or]'Gonna let me eat out your ass to fuck you after all? You know you want to!'[at random] he calls out in a teasing tone, then gives a little lusty growl as you grab his curved horns to use as convenient handholds.";
	say "     Finding his head pulled forward to grind your crotch against Skarnoth's face, the demon chuckles at your demanding treatment. He even jerks his own hard cock while doing so and keeps up making taunting remarks - most of them incomprehensible by being mumbled while he's pressed to your crotch or balls. Eventually you have enough of just rubbing up against Skarnoth and pull the demon's head back harshly, which allows him to look up at you, sticking out his tongue in a grin and chuckling before you plug his open mouth with your hard cock. The demon prince's lips and tongue feel pleasantly warm against your erection, more so than a human would... but then, that's kinda the point about fucking around with a visitor from hell.";
	say "     Making use of the oh so convenient handholds Skarnoth's horns provide, you face-fuck your captive harshly, not holding back at all as your balls smack against his chin in thrust after thrust. He seems to take this in stride, playing his tongue over your shaft and with his cheeks bending inward as he sucks hard on your thrusting pick. Hell, he even accepts a deep-throat fuck without the slightest hint of gagging and all the while masturbates his own cock in a steady rhythm. Calling this demon sexually skilled is definitively an understatement. While you are busy pounding Skarnoth's face, his tail moves against you, snaking up against the back of your leg in a hot line of contact. The spaded tip of it almost seems to be searching for something, feeling its way up and up.";
	WaitLineBreak;
	say "     Eventually Skarnoth's tail slides into the valley between your buttocks, brushing back and forth a little before the tip catches on the edge of your pucker. Before you really can react to what you know this means, the demon goes wild in sucking on your cock and fondles your balls in a quite pleasurable manner, trying to distract you while he gets his appendage in to tail-fuck you. From the somewhat slick feeling of his tail-tip, he must have lubed it up with his own pre too!";
	LineBreak;
	say "     [bold type]Do you let him fuck you with his tail?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Just enjoy it.";
	say "     ([link]N[as]n[end link]) - Pull his tail away from your rear end and stuff it up his ass.";
	if Player consents:
		LineBreak;
		say "     As turned on as you are by the demon hunk, you are more than alright with letting him enjoy the fruits of his little game of distraction - so you even push back a little as his tail-tip presses in against your pucker. Slick with Skarnoth's own pre, the fleshy spade enters you with relative ease and gives you the interesting sensation of face-fucking and being fucked by the same guy all at once. The demon's grunts of lust around the hard shaft in his mouth take on a quite satisfied tone and he replies to every hard yank on his horns by pushing his tail deep and twisting it a little. Your hot chain-fuck quickly pushes the demon closer and closer to his limits, and before much longer he groans loudly. With that, the kneeling shape of the demon prince starts trembling and twitching, as do his throat muscles around your prick, tensing up with every new spurt of cum he is blasting all over the ground between your feet.";
		say "     Feeling Skarnoth suck hard on your dick, you're not too far behind joining your partner in orgasm and bury your erection all the way down his throat. Almost as soon as your swinging balls hit his chin in one last satisfying slap, you start blasting away with spurt after spurt of thick and creamy cum, filling Skarnoth's stomach with your load. You keep his face tightly pressed against your crotch for a while as your orgasm goes on with more and more semen being pumped into Skarnoth - so much so that he eventually has to push against your hips to show he's running out of air. With an amused huff through your nose, you pull back and allow him to gasp for air, splashing the demon's red-skinned face with several blasts of cum before the climax eventually tapers off. Only after you've finished cumming and made the demon lick off the last drops from your softening prick do you take hold of his tail and slowly pull it out of your ass.";
		WaitLineBreak;
		say "     As you start picking up your gear and pants to get dressed, Skarnoth stands up straight and enjoys the sight of your naked body, even going so far as lightly slapping your ass as you bend over. 'That was fun,' he says with a chuckle, then wipes his face with a slow swipe of his clawed hand. Looking at the white cum sticking to his fingers, he gives you a wink and then sucks it off finger by finger before sauntering over to throw himself on his red leather chair.";
		if Loyalty of Skarnoth < 10:
			increase Loyalty of Skarnoth by 1;
	else:
		LineBreak;
		say "     As turned on as you are by the demon hunk, you still decide to stop him before things get out of hand. After all, you're the boss here and he should better remember that! Catching the long tail in an iron grip, you pull it away from your ass and tell Skarnoth that he's been a bad boy, underlining it by yanking his horns back, forcing him to look up at you. Grinning, he licks his sloppy lips and replies in a challenging tone, 'And what are you gonna do about it?' In reaction to that, you crouch down with his tail in hand, ignoring Skarnoth's tries to free the long appendage with sharp tugs. Looking at the glistening fleshy spade at the end, lubed with his own pre to allow for easier fucking, the choice is clear. Slapping Skarnoth's buttocks with your other hand and pulling one cheek to the side a little, you shove his tail-tip at the demon prince's own pucker, burying it all the way to where your fist is closed around the tail.";
		say "     'Nnngh!' he groans out loud at the sudden and deep penetration, but Skarnoth's smile never wavers. Chuckling, he adds, 'Someone likes to play rough, eh? What? Did you think this is the first time that has been up there?! I could - ummmphH!' Having had enough of his teasing, you stuff the demon's mouth with your shaft once more, hammering into him in a relentless throat-fuck. Between enjoying your partner's talented mouth and the thrill of dominating such a powerful being, you soon get closer and closer to your impending climax. Burying your erection all the way down his throat, you start blasting away with spurt after spurt of creamy cum almost as soon as your swinging balls hit his chin. It feels amazing to have your prick buried in the hot, right tunnel of his throat and to fill Skarnoth's stomach with your load.";
		WaitLineBreak;
		say "     Keeping his face tightly pressed against your crotch for a while as your orgasm goes on - with more and more semen being pumped into Skarnoth - he eventually has to push against your hips to show he's running out of air. With an amused huff through your nose, you pull back and allow him to gasp for air, splashing the demon's red-skinned face with several blasts of cum before the climax eventually tapers off. Meanwhile, the demon pushes himself to orgasm by tail-fucking his own ass, blasting long streaks of demon cum all over the floor between your legs";
		say "     As you start picking up your gear and pants to get dressed, Skarnoth stands up straight and enjoys the sight of your naked body, even going so far as lightly slapping your ass as you bend over. 'That was fun,' he says with a chuckle, then wipes his face with a slow swipe of his clawed hand. Looking at the white cum sticking to his fingers, he gives you a wink and then sucks it off finger by finger before sauntering over to throw himself on his red leather chair.";
		if Loyalty of Skarnoth > 1 and Loyalty of Skarnoth < 10:
			decrease Loyalty of Skarnoth by 1;

to say SkarnothSex3: [69 with Skarnoth]
	say "     A";

to say SkarnothSex4: [player pussy fucked]
	say "     A";

to say SkarnothSex5: [player ass fucked]
	say "     A";

to say SkarnothSex6: [Skarnoth's ass fucked]
	say "     Hooking a hand behind Skarnoth's head, you pull the sexy demon up from his seat, right into a demanding kiss. Chuckling under his breath, he proceeds to tongue-wrestle with you and slides those strong arms of his around your body, clawed hands kneading the cheeks of your butt. As you pull back from the bout of making out a moment later, the demon says in a teasing tone, 'You need it bad, don't you. How about you - umphH!' That's how far he gets before you push two fingers into his mouth and grunt commandingly for him to suck on your invading digits. The inner glow of the demon prince's eyes flares up a little as he realizes that you're planning to dominate him in this sexual encounter, and you can feel his muscles start to tense - right until you run a finger along his neck, reminding him of the collar you put on him.";
	say "     With a huff of hot air from his nostrils, Skarnoth starts sucking on your fingers and playing his tongue over them. It feels great to have this powerful being at your beck and call, holding him by the chin with your thumb while you pump two fingers in and out of his increasingly sloppy mouth. After enjoying the moment for a little bit, you command Skarnoth to undo your pants, which he does without hesitation. The hard shaft of your erection springs out as it is freed from the tight confines it was in, brushing against the hot pillar of Skarnoth's demonic prick in a quite pleasurable sensation. Shoving your pants down to drop to the floor, the muscular male gives a lusty grunt and closes a hand around both of your cocks - stroking them together.";
	WaitLineBreak;
	say "     Your captive demon is quite good at teasing a guy to higher and higher arousal, jerking you off in a comfortable grind of his warm skin on your dick. For a second, you're almost ready to just let him stroke you till you blow your load all over that muscle-ribbed chest of his, paint those abs in your cum - but then you remember that you had something else in mind. Pulling back a little from the sexy demon, you grip Skarnoth's bulging bicep and wrench him around, then push on his broad back to bend him over. [one of]'Oooh, so you wanna eat my ass? Go on, get in there!'[or]'About time you get to it!'[or]'So you wanna punish the evil demon by giving him your rod? Did you know that many exorcisms end this way?'[or]'Come on, kneel and eat me out! You know you want to!'[at random] he calls out in a teasing tone, then grunts deeply as you shove the wet fingers of your hand against the winking pucker under his long tail.";
	say "     Finding himself with two fingers thrust knuckle-deep into his hot and tightly gripping chute, the demon's own cock throbs with a spurt of pre-cum that connects his swinging dick to the edge of his chair for a second, stretching out in a sticky string before snapping. Looks like he enjoys having the magic button of his prostate being pushed quite a bit, despite his obvious desire to be the one on top. You pump your fingers in and out a few more times, then pull them away and watch his pucker wink open and shut in eager anticipation. Taking hold of the base of your shaft, you smack it against Skarnoth's crack and buttocks, creating satisfying meaty thuds. Next you press the cockhead in against his ring muscle, increasing the pressure until it starts to give, then letting up on it again, chuckling as the demon holds his breath each time, then lets out more and more frustrated panting.";
	WaitLineBreak;
	say "     Soon, the powerful demon is almost trembling with the build-up of lust and glances over his shoulder at you. 'Fuck me already you bastard!' he growls out between clenched teeth, his tail snaking its way around your hips to pull you closer against him. After one more last-minute tease that has Skarnoth almost gnawing on the armrest he is holding on to, you finally relent and slide yourself into his ass, stretching his insides out with your [Cock of Player] shaft. He feels amazing around your dick, incredibly warm and tight, and you eagerly start thrusting, pounding into the captive demon with increasing force. 'Ngh. Ngh! Yeah that's it! Harder! You'll fuck the evil right out of me if you keep going,' the powerful being grunts out in a mixture of mocking and genuine lust - enticing you to really take out all the stops.";
	say "     While you are busy shafting Skarnoth deep and hard, his tail moves against you, with the tip brushing down your back to search out your own bare buttocks. Then suddenly the demon tenses his inner muscles around your shaft, squeezing it like a vise before going on to almost jerk you off with a surprising amount of muscle control. The amazing sensations his gripping chute gives you totally dominates your thoughts for a moment - so much so that you almost miss the moment in which some gentle rubbing by his appendage turns into a push of its spaded head against your own hole. Skarnoth wants to tail-fuck you! From the somewhat slick feeling of his tail-tip, he must have lubed it up with his own pre too!";
	LineBreak;
	say "     [bold type]Do you let him fuck you with his tail?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Just enjoy it.";
	say "     ([link]N[as]n[end link]) - Pull his tail away from your rear end and stuff his mouth with it.";
	if Player consents:
		LineBreak;
		say "     As turned on as you are by the demon hunk, you are more than alright with letting him enjoy the fruits of his little game of distraction - so you even push back a little as his tail-tip wedges itself against your pucker. Slick with Skarnoth's own pre, the fleshy spade enters you with relative ease and gives you the interesting sensation of fucking and being fucked by one guy at the same time. The demon's grunts of lust take on a quite satisfied tone and he replies to every hard thrust from you by pushing his tail deep and twisting it a little. Your hot chain-fuck quickly pushes the demon closer and closer to his limits, and before much longer he groans, 'Yeah! Just like... nnnnghhHHHH! FUCK!' With that, the bent-over shape of the demon prince starts trembling and twitching, as do his inner muscles around your prick, tensing up with every new spurt of cum he is blasting all over the leather upholstery of his high-backed chair.";
		say "     Feeling Skarnoth's insides almost milk your dick, you're not too far behind joining your partner in orgasm and slam hard against his ass. Almost as soon as your swinging balls hit his warm skin in one last satisfying slap, you start blasting away with spurt after spurt of thick and creamy cum, filling Skarnoth's asshole with your load. The two of you stay tightly pressed together for a while, bent over and with him bracing against the chair, you against his strong back. Only after your respective orgasms have tapered off and you've caught your breaths do you take hold of his tail and slowly pull it out of your ass, then withdraw your dick from between his cheeks.";
		WaitLineBreak;
		say "     As you start picking up your gear and pants to get dressed, Skarnoth stands up straight and enjoys the sight of your naked body, even going so far as lightly slapping your ass as you bend over. 'That was fun,' he says with a chuckle, then glances over at his high-backed chair. 'Made quite a mess though,' the demon adds and nods to the white, slightly glowing splashes of his cum on the red leather. With a wink, he then swipes off the creamy goop and brings the hand used for that to his face, slurping his cum off finger by finger.";
		if Loyalty of Skarnoth < 10:
			increase Loyalty of Skarnoth by 1;
	else:
		LineBreak;
		say "     As turned on as you are by the demon hunk, you still decide to stop him before things get out of hand. After all, you're the boss here and he should better remember that! Catching the long tail in an iron grip, you pull it away from your ass and tell Skarnoth that he's been a bad boy, underlining it with a harsh thrust into his ass. Pulling the flexible tail forward, you smile as you see the spade at the end, glistening in his pre-cum. You know just what to do with it. Slapping Skarnoth's buttocks with your other hand, you command the demon to suck on his tail and swallow the pre on it - which he does without complaint. Having stopped the demon from getting one over on you, fucking him almost seems to feel even better than before, and you hump him hard and deep with great pleasure.";
		say "     Being taken like that quickly pushes the demon closer and closer to his limits, and before much longer he groans, 'Yeah! Just like... nnnnghhHHHH! FUCK!' With that, the bent-over shape of the demon prince starts trembling and twitching, as do his inner muscles around your prick, tensing up with every new spurt of cum he is blasting all over the leather upholstery of his high-backed chair. Feeling Skarnoth's insides almost milking your dick, you're not too far behind joining your partner in orgasm and slam hard against his ass. Almost as soon as your swinging balls hit his warm skin in one last satisfying slap, you start blasting away with spurt after spurt of thick and creamy cum, filling Skarnoth's asshole with your load. The two of you stay tightly pressed together for a while, bent over and with him bracing against the chair, you against his strong back. Only after your respective orgasms have tapered off and you've caught your breaths do you slowly withdraw your dick from between his cheeks.";
		WaitLineBreak;
		say "     As you start picking up your gear and pants to get dressed, Skarnoth stands up straight and enjoys the sight of your naked body, even going so far as lightly slapping your ass as you bend over. 'That was fun,' he says with a chuckle, then glances over at his high-backed chair. 'Made quite a mess though,' the demon adds and nods to the white, slightly glowing splashes of his cum on the red leather. With a wink, he then swipes off the creamy goop and brings the hand used for that to his face, slurping his cum off finger by finger.";
		if Loyalty of Skarnoth > 1 and Loyalty of Skarnoth < 10:
			decrease Loyalty of Skarnoth by 1;

to say SkarnothSex7: [Spank Skarnoth's ass]
	say "     Note: Once Skarnoth's Master/Slave chain is completed this sex option will be added to sub slave Skarnoth's sex menu instead of default slave Skarnoth.";
	say "     Walking up to the demon prince's chair, you grab ahold of one of Skarnoth's massive horns, using it to pull him out of his seat and toss him to the ground. Looking down at the once proud hell lord that has since been reduced to a [if SkarnothDrugStatus is 2]lust-drugged[else]meek, submissive[end if] slut, you can't help the [if SkarnothDrugStatus is 2]cruel[else]proud[end if] smile that stretches across your face at the thought that you not only enslaved, but also [if SkarnothDrugStatus is 2]shattered the mind of[else]broke[end if] such a powerful being. You take in the demon's form laying across the floor, his [if SkarnothDrugStatus is 2]sweaty chest and crazed eyes[else]chest heaving and pleading eyes[end if] looking up into your own, not exactly sure of what you have planned for him. You take a seat on his [']throne['] and make yourself comfortable. Beckoning your slave closer, you are pleased to see him start to crawl over to you seductively, his tan bubbly ass high in the air and his head low, all while his body sways side to side.";
	say "     Once Skarnoth is directly in front of you, you glance down between your spread legs to see the demon's brimstone-colored eyes looking up at you in [if SkarnothDrugStatus is 2]heat[else]need[end if], his long lashes and crimson mane accentuating his dark features. A soft pat on your leg is all it takes to get the large man to [if SkarnothDrugStatus is 2]scurry with haste[else]gently climb[end if] across your lap. Finally in place, you allow your hands to caress the soft skin of his back and rump, feeling his powerful muscles flex under your fingertips. [if SkarnothThongStatus is 1]Kneading his large ass makes you thankful that you had decided to destroy that worthless bit of cloth that he had covered himself with. A proper slave should always be at the whims of his [master] after all[else]Kneading his large ass, you hike his thong up even higher between his cheeks, allowing you even more access to the flesh of his meaty behind[end if]. Skarnoth's whole body is [if SkarnothDrugStatus is 2]shaking with desire, whether from just being this close to you or purely his need to fuck you're not sure which[else]practically vibrating with energy, whether from not knowing what you will do next or from the simple fact that you're paying attention to him you're not sure which[end if].";
	WaitLineBreak;
	if SkarnothDrugStatus is 2:
		say "     While petting your horny fucktoy, you take hold of one of his horns and ask him if he was a good slut today. 'I'm always a good slut, [master]! I just wish that I could fuck everything that I could get my hands on, but I know better than to touch anyone without your permission, [master].' Reaching up, you take hold of his fiery mane, pulling it back towards you, not enough to hurt the greedy little slut, but definitely enough to let him know that you're in charge. You explain to the lust-addicted demon that it's good for him to know his place, but also comment on the fact that he makes it sound like you aren't enough to satisfy his urges. Skarnoth's whole body goes rigid with what you can only assume is fear at displeasing his [master].";
		say "     'No, [master], you take care of my slutty needs perfectly. I'm not worthy of the attention that you place on me!' With a cruel smile forming on your lips, you tell your slave that he's right, he isn't worthy of you. Your hand comes down quickly, spanking the demonic slut's [if SkarnothThongStatus is 1]bare ass[else]thong-covered ass[end if] full force. Where most would be howling in pain, your pet instead simply moans and shakes with each hit. Even from the angle you are at, you can see that his eyes have rolled up inside of his head, and a thin line of drool is leaking from his mouth. Deciding to take a short break, you check your handiwork only to find that the demon's bubbly tan ass is completely red with marks in the shape of your hand.";
		WaitLineBreak;
		say "     While your pet pants like a bitch in heat, his whole body spasms in an attempt to deal with the overload of pleasure that he is experiencing. An idea enters your mind while looking down at the sweaty back of the man across your lap. Reaching up, you caress his huge horns, which sort of remind you of a bull's. Feeling a bit playful, you squeeze your hand in-between his pecs, feeling the firm yet soft flesh under your fingers as you begin to massage his chest with earnest. This brings further groans from Skarnoth's mouth, '[master], that feels so good and relaxing. Please, don't stop!' In all honesty, you hadn't planned on stopping, but you can't have your fucktoy thinking that he is calling the shots around here.";
		say "     Rather than the gentle manhandling from before, you instead begin to pinch his nipples, causing them to harden, and making squeals erupt from your slave. You can't tell if that means that he is enjoying it or not, but you certainly are. Leaning closer to the lust-drugged slut's ear, you whisper to him, asking him if he's sure that he was a [']demonic prince['] because his actions make him seem more like he is just a big [']demonic bull[']. His face turns red either from shame or excitement. '[master], I will be whatever you want me to! I could be a good cow for you. I can't make milk for you, but I can act like livestock if you want me to.' You can already feel the dampness from his cock on your lap, and you mention to him that it seems he can be milked after all.";
		WaitLineBreak;
		say "     Pushing the demon off of you, he limply rolls onto the ground, leaving you sitting in his chair with your lap completely soaked in his own special version of [']milk[']. Standing up, you attempt to clean yourself up as best you can and make your way to leave, however before you get more than a few steps, you look back towards the moaning demon. While you do enjoy milking the slut through his cock, it could be fun to also milk his muscled man-tits. You would just have to figure out a way to get that to work. On the plus side, if you could do it, then your little cumdump could also be a source of sustenance for yourself and possibly your allies. A surge of desire shoots through your body as you continue to make your way out of the room and back out into the city.";
	else:
		say "     While petting him, you ask whether he's been a good boy or a bad one lately. 'I always try to be good for you, [master], I really do, but sometimes I can't help but break the rules.' Your hand slows its ministrations, and you tell him to explain himself. 'Well, I know that I belong to you, and I'm thankful that you're the one that owns me, but sometimes, my darkest desires get the better of me. Now that I can leave my room, I see the others that you have recruited, and I can't help but want to push them to the edge, making them fantasize about me. Sometimes, I will purposely show off my [if SkarnothThongStatus is 1]naked body[else]body[end if] just to make them look, to see that heat in their eyes. [master], I think that your other slaves like what they see and wanna consume my sin, does that please you?'";
		say "     You squeeze his muscled ass and explain to him that it's only natural for a slut to wanna show off. He just has to remember that [']you're['] the one that decides who or what he fucks and when. You finish your thought with a quick but playful smack to his behind. 'Oh, [master]! More! I need more!' You can't help but snicker at your slave's enthusiasm and deliver a few more well-placed swats to his ass. You demand that he explains exactly what he would do if he could. 'I would turn this entire building into a place of lustful worship for you. [master], you wouldn't believe it, but some of your other fuck slaves don't even realize that you own them! I would change that. I would get inside of their heads and corrupt them, shatter their minds until they understand what their true purpose is!'";
		WaitLineBreak;
		say "     You can feel yourself becoming excited by the prospect of using your slave to corrupt and dominate the other residents of the library, and judging by the erection that you can feel digging into your thigh, so does your pet. You begin to spank Skarnoth with more intensity, pushing him closer to the edge as a reward for being such a good toy. '[master], please, just give the order, and I will break them all. Screw their feelings and emotions! I will make them all into your own living fuck dolls!' Bending the demon over further causes his ass to spread open a bit, allowing your hits to nail him right on his [if SkarnothThongStatus is 1]hole[else]cloth-covered hole[end if], tearing a shriek of ecstasy from his throat.";
		say "     The demon's whole body goes rigid, and you can feel the wet spot from his release spreading over your lap. Moving to get up, the demon at this point is acting very similar to a large puppy and gets off of you lazily before reclaiming his seat to rest and recharge his energy. As you get ready to head out, you hear a mumbled, 'I will conquer this world for you, [master].' A smile makes its way to your mouth as you take your leave, allowing your slave to get some rest.";

Section 4 - Events

[
instead of going northwest from Grey Abbey Library while (HP of Skarnoth > 1):
	move player to Half-Renovated Room;
	if debugactive is 1:
		say "     DEBUG: SKARNOTH WALK-IN - HP OF SKARNOTH: [HP of Skarnoth], THIRST OF Skarnoth: [thirst of Skarnoth][line break]";
	say "     .";
]

Section 5 - Infection for combat purposes

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Demon";
	add "Demon Prince" to infections of DemonList;
	add "Demon Prince" to infections of OtherworldlyList;
	add "Demon Prince" to infections of MaleList;
	add "Demon Prince" to infections of BipedalList;
	add "Demon Prince" to infections of TailList;
	now Name entry is "Demon Prince";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is "Skarnoth";
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
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
	now sex entry is "Male";           [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 275;
	now lev entry is 20;               [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 35;              [ Monster's average damage when attacking. ]
	now area entry is "Nowhere";       [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1;              [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 16;       [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 3;         [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2;            [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0;        [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;              [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0;        [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]         [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 70;
	now loot entry is "";              [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;         [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4;              [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]demonic[or]infernal[or]powerful[at random]";
	now type entry is "[one of]demon[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;     [ 0 = Up at all times; 1 = Nocturnal (night encounters only); 2 = Diurnal (day encounters only) ]
	now altcombat entry is "default";
	now BannedStatus entry is false;

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


when play ends:
	if BodyName of Player is "Demon Slave":
		say "     Your new reality in hell focuses on satisfying Skarnoth's every desire - of which there are many, mostly carnal ones. As the overlord of his own little demonic realm, your master has the power to play with your body shape too, transforming you as he wishes to better enjoy breaking you to his will...";
		stop the action;

Skarnoth ends here.
