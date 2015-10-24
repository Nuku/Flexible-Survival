Version 1 of Chris by Wahn begins here.

[ hp of Chris - location                           ]
[   0: not born yet                                ]
[   1: in the library                              ]
[ 100: lost in the orc lair                        ]

[ libido of Chris - infection status               ]
[   0: half-orc                                    ]
[   1: orc breeder                                 ]
[   2: orc warrior                                 ]

[ Dexterity of Chris - interaction with his Zebra  ]
[   0: nothing yet                                 ]
[   1: fucked the guy                              ]

Chris is a man.  The hp of Chris is normally 0.
The description of Chris is "[ChrisDesc]".
The conversation of Chris is { "Mew!" }.

instead of sniffing Chris:
	say "     Chris has got an attractive male scent.";

to say ChrisDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Chris] <- DEBUG[line break]";
	if libido of Chris is 0:
		say "     Chris is a young orc, with a lithe and muscled physique that lacks the sheer bulk and mass of an orc warrior. As he's wearing nothing but a rather tight pair of shorts, you can clearly see the outline of a very respectable cock in them. His features are almost pretty but still masculine, with somewhat pronounced brow, a square jaw and yellow eyes. Two sharp tusks protrude from his lower mandible, giving him a dashing, somewhat wild look. Long, silky black hair hanging down over his shoulders completes the picture of a very handsome man.";
		say "     As Chris notices your intense gaze upon him, he smiles back at you, giving a little wave with his hand.";
	otherwise if libido of Chris is 1:
		say "     Chris is a young orc, with a lithe and muscled physique that lacks the sheer bulk and mass of an orc warrior. As he's wearing nothing but a rather tight pair of shorts, you can clearly see the outline of an average sized cock in them. His features are almost pretty but still masculine, with somewhat pronounced brow, a square jaw and yellow eyes. Two small tusks protrude from his lower mandible, looking rather cute, compared to a real orc's. Long, silky black hair hanging down over his shoulders completes the picture of a very handsome man.";
		say "     As Chris notices your intense gaze upon him, he presents himself for your viewing pleasure, turning to show off his well-rounded ass. He really takes after his father, now that he's become an orc breeder.";	
	otherwise if libido of Chris is 2:
		say "     Chris is a young orc, but he already has the tall and powerful stature of an orc warrior, with rippling muscles on his big arms, strong pecs and washboard abs. As he's wearing nothing but a rather tight pair of shorts, you can clearly see the outline of a very respectable cock in them. His features are almost a bit brutish, in a 'handsome caveman' kind of way, with a strongly pronounced brow, a square jaw and yellow eyes. Two sharp tusks protrude from his lower mandible, giving him a dashing, somewhat wild look. Short, bristly black hair on his head completes the picture of an untamed orcish warrior.";
		say "     As Chris notices your intense gaze upon him, he gives you a leering smile, as if to say 'I can take you when I want to'.";

instead of conversing the Chris:
	say "[ChrisTalkMenu]";

instead of trading the orc brew when the current action involves the Chris:
	if libido of Chris is 0:
		say "     You hand Chris the mug of orc brew, which the young man accepts and looks at with interest. Opening the lid, he sniffs at it, and watches the liquid slosh around in the mug as he shakes it slightly. The look in his face tells you that he's tempted to try it, partly because of the thrill of doing something forbidden, but his father's command to stay away from the drink holds him back. Biting his lip as he looks at you, Chris says 'Thanks. I - a nip at it wouldn't be so bad, would it? Just a little...'";
		say "     Do you convince Chris to drink the orc brew, knowing that it'll most likely transform him into a brutish orc warrior?";
		if player consents:
			say "     [line break]";
			say "     It doesn't take all that much effort to lay his concerns to rest, talking the young orc into taking 'just a sip' - and then another, and another. Before long, he's chugging away the alcoholic beverage like a true orc warrior - which is just what he's becoming right before your eyes. A bit tipsy from his first contact with alcohol, the young man grunts the words, 'Hmm... I want more!', while at the same time his body changes, getting bigger, wider and more muscular. The previously pretty, if masculine, features of his face take on a harder, gruff look, with a square jaw, protruding tusks and thickly pronounced brow. Meanwhile, the flowing black hair that gave Chris much of his handsome aura just disintegrates into a small shower of dust, leaving behind bristly short hair on his head. As all those bodily changes stabilize and set into place, you can almost see the shift of his thought processes in the depth of his eyes, the need and desire to dominate others and turn them into breeders he can pound hard and knock up.";
			now libido of Chris is 2;
			decrease carried of orc brew by 1;
		otherwise:
			say "     [line break]";
			say "     Acknowledging that his father didn't want this for Chris, you let him give the mug back to you and pack it away.";
	otherwise if libido of Chris is 1:
		say "     You hand Chris the mug of orc brew, which the young man accepts and looks at with interest. Opening the lid, he sniffs at it, and watches the liquid slosh around in the mug as he shakes it slightly. 'No thanks, I don't think I'd like to drink that. Do you have any delicious orc cum instead?'";
	otherwise if libido of Chris is 2:
		say "     Accepting the mug of orc brew from you, Chris hefts the heavy container and carelessly rips the lid off, then quaffs its contents greedily. Spilling at least a third of it, the orc warrior drains the whole tankard, then gives a resounding belch and throws the mug aside. 'Just what I needed. A drink for real men!'";
		decrease carried of orc brew by 1;

instead of trading the orc cum when the current action involves the Chris:
	if libido of Chris is 0:
		say "     You hand Chris the bottle of orc cum, which the young man accepts and looks at with interest. Taking off the cap of the plastic water bottle he sniffs at it, then licks his lips, obviously tempted to drink the light green, thick and creamy liquid. His hand starts to rise a bit with the bottle, then he stops himself. Biting his lip as he looks at you, Chris says 'Thanks, but.. Dad warned me about doing this. I shouldn't - or should I? It smells really nice...'";
		say "     Do you convince Chris to drink the orc cum, knowing that it'll most likely transform him into a submissive orc breeder?";
		if player consents:
			say "     [line break]";
			say "     It doesn't take all that much effort to lay his concerns to rest, talking the young orc into setting the bottle to his lips. A moment later, he's busy drinking down the flavourful orc cum, hungrily swallowing it all. His first taste of orc cum does make him rather tipsy, causing him to slur the words 'Hmm... tasty. I wanna more.' At the same time, a subtle but noticeable change goes through his body - features becoming a bit more rounded and slightly feminine, his body still lithe and muscled, but with wider hips fitting to the child-bearing role of orc breeders. The bulge at the front of his pants gets a bit smaller too, as he won't need that massive a cock in his new fate as a submissive bottom. Further up, the sharp tusks in Chris's mouth shrink in size, becoming rather cute little ones instead. As all those bodily changes stabilize and set into place, you can almost see the shift of his thought processes in the depth of his eyes, the need and desire to get mounted and bred rising to the forefront.";
			now libido of Chris is 1;
			decrease carried of Orc Cum by 1;
		otherwise:
			say "     [line break]";
			say "     Acknowledging that his father didn't want this for Chris, you let him give the bottle back to you and pack it away.";
	otherwise if libido of Chris is 1:
		say "     You hand Chris the bottle of orc cum, which the young man accepts and with eager hands, already licking his lips. Immediately taking the cap off, he puts the bottle to his lips and chugs down the light green, thick and creamy liquid, only stopping when it's all gone. 'Hmmm... tasty!' he hums, lightly shaking the bottle to get the last drops out of it. Chris then asks, in the typical manner of an insatiable orc breeder, 'Do you have more?'";
		decrease carried of Orc Cum by 1;
	otherwise if libido of Chris is 2:
		say "     Accepting the plastic bottle of orc cum from you, Chris weighs it in his big hand, looking at the light green, thick and creamy liquid within. He screws the cap off and sniffs it, then hands it back to you. 'No thanks, I'd rather have something with some booze in it. A drink for real men!'";

to say ChrisTalkMenu:
	say "What do you want to talk with Chris about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Himself";
		now sortorder entry is 1;
		now description entry is "Ask the orc about himself";
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Sex";
		now sortorder entry is 2;
		now description entry is "Ask the orc about sex";
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
				if nam is "Himself":
					say "[ChrisTalk1]";
				if nam is "Sex":
					say "[ChrisTalk2]";
				wait for any key;
		otherwise if calcnumber is 100:
			say "Break off?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the orc, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option.  Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say ChrisTalk1:
	if libido of Chris is 0: [basic Chris]
		say "     Chris gives a little shrug, then says 'Not much to tell when you haven't been around that long. I mean - you were there when I was born, then brought me here.' Nodding towards the row of large windows, he continues 'Been scavenging out in the nearer buildings a bit - carefully, you know, so nothing jumps me or follows back here. There's quite a bit of useful stuff to find.' After letting his eyes wander over his little camp, with its mattress, sleeping bag and numerous items piled up besides them, he the looks at the bookshelves. 'As for the future - I remember from dad that people used to have jobs, doing something instead of just scrambling to survive. I guess this whole chaos won't last forever and at some point a new society will establish itself, so I've been reading up a bit. Planning and building houses seems to be a good skill to have... what with whole city blocks burning down because no one even tries to stop a fire that breaks out.'";
	otherwise if libido of Chris is 1: [orc breeder]
		say "     With an adoring look on his face, Chris gushes at you 'I'm so happy to be your slave, master. Please make use of me, I need someone to fuck me, make me feel good and feed me their cum. You, your friends, your pets - I live to serve!'";
	otherwise if libido of Chris is 2: [orc warrior]
		say "     Chris rubs the bulge at the front of his pants and says 'I feel great! Strong and powerful - and pretty much horny all the time... but that isn't a problem. There's lots of ass th be had, you can just grab em off the street.' Giving you a lusty grin and a 'light' (for an orc) bump with his elbow, he continues, [one of]'Did you know there's a German Shepherd living just a block over to the west? Thought he was a tough guy and barked at me, hah - one little swat on the nose and that little bitch was out of the fight. It felt really good to have his hole wrapped around my shaft and to pump him full of cum. Now he begs me for more when I come his way, like a proper little slut...'[or]'A gryphon tried to jump me when I went out not too long ago - her feathers tickled quite a bit when I fucked her hard...'[or]'Isn't it funny how those little latex foxes bulge and expand when one blasts em full of cum? Almost thought the last one was gonna burst - haha!'[or]'I ran into this husky out on the streets with his flock of sluts. Said he was their alpha and offered me one of them to fuck since he didn't want to fight. Pfft - as if I wanted to take those weakling bitches... so I had some fun with the guy himself. Even struggled a bit, but he was no match for a real orc. You should have heard him whimper and howl when I pounded his hole...'[at random]";

to say ChrisTalk2:
	if libido of Chris is 0: [basic Chris]
		say "     A smile shows on Chris mouth as you chat him up and he says 'What about it? Sex is fun - you offering?' Giving you a playful wink that brazenly promises a good time, the orc then continues with, 'Or do you want to talk about sex in the old world? Those strange customs I remember from dad... why would anyone refuse to share comfort and pleasure with others if they're interested in each other? Or even two people just deciding to only fuck among themselves until they're all bored and annoyed with each other...'";
	otherwise if libido of Chris is 1: [orc breeder]
		say "     With an adoring look on his face, Chris gushes at you 'Does my master wish me to do something right now? I'm always ready to please you. Or do you want me to learn some new way to please you? I think I saw some instructive books in the shelves...'";
	otherwise if libido of Chris is 2: [orc warrior]
		say "     Chris gives a deep chuckle and rubs the bulge in his pants. 'Ha! Of course you're gonna ask me about it. I'm just a sex machine! Okay then... first you got to grab yourself a nice little bitch to have fun with, maybe give him a few light pats till he stops struggling.' To illustrate his point, Chris lets his balled up fist meet his other hand in a meaty slap. 'After that, you let him suck your cock, get it nice and wet - that's important for later! You can also use lube, but it's more fun with someone licking your balls and shaft, you know. And then it's go-time, bend over your bottom boy and start pushing it in...' In a pretty lewd demonstration Chris mimes holding on to someone by the hips and pulling them against his crotch, then thrusting against them. 'At that point you'll have to show some self control... you'll want to just pound the little bitch immediately, but you can't - wouldn't want to break your pet. So you take it slow, get him used to your thick shaft - and THEN you fuck him as wild as you want. And be sure to fill him up good and maybe feed him some more cum later - then you'll have a much more willing slave the next time you wanna fuck...'";

to say ChrisTalk3:
	say "     C";

Instead of fucking the Chris:
	if(lastfuck of Chris - turns < 5):
		say "     Chris puts a hand on your chest to hold you back and says 'Please, I need a break for a moment, okay?";
	otherwise:
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		if cocks of player > 0:
			choose a blank row in table of fucking options;
			now title entry is "Get a blowjob from Chris";
			now sortorder entry is 1;
			now description entry is "Let the orc suck you off";
		[]
		if cocks of player > 0:
			choose a blank row in table of fucking options;
			now title entry is "Fuck the orc's ass";
			now sortorder entry is 2;
			now description entry is "Pound your dick into Chris";
		[]
		if libido of Chris is 2:
			choose a blank row in table of fucking options;
			now title entry is "Let the orc take your ass";
			now sortorder entry is 3;
			now description entry is "Bend over for Chris";
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
					if nam is "Get a blowjob from Chris":
						say "[ChrisSex1]";
					if nam is "Fuck the orc's ass":
						say "[ChrisSex2]";
					if nam is "Let the orc take your ass":
						say "[ChrisSex3]";
					wait for any key;
					now lastfuck of Chris is turns;
			otherwise if calcnumber is 100:
				say "Break off?";
				if the player consents:
					now sextablerun is 1;
					say "     You step back from the orc, shaking your head slightly as he gives a questioning look.";
					wait for any key;
				otherwise:
					say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
			otherwise:
				say "Invalid Option.  Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say ChrisSex1: [Chris sucks the player]
	if libido of Chris is 0: [base state]
		say "     Walking up to Chris, you tell him that you'd love to have some fun with him, giving a little nod to your crotch as you do. The young orc grins as he looks down and sees the bulge in your pants, saying 'Sure, I'm down for anything,' then gets on his knees and starts to undo your pants. His eager fingers quickly have you naked below the belly-button, then they move to cup your balls and give your quickly hardening cock a few slow jerks. Lifting your manhood, he proceeds to lick up its underside, from your balls to the tip, then slides his soft lips over the cockhead.";
		if cockname of player is "Orc Warrior" or cockname of player is "Orc Breeder": [transformation danger]
			say "     Throwing your head back and moaning loudly, you enjoy the amazing blowjob Chris is giving you. He really is a natural at pleasing men, licking and teasing with your balls and cock a talented tongue in between having those sexy lips wrapped around your shaft. You feel yourself getting closer and closer to your building orgasm and gasp that you're about to cum - making Chris quickly pull off your cock. He pants 'Sorry, but I shouldn't swallow your cum...' and starts to raise his hand to jerk you off instead. A sudden urge to just grab him and face-fuck the young man until you cum wells up inside you. That must be your orc instincts, wishing to push him into the transformation to be your private orc breeder, to fill and knock up as you wish.";
			say "     [line break]";
			say "     Do you do the 'right' thing and suppress those urges, or would you like to feed Chris his first of many load of orc cum?";
			if player consents:
				say "     [line break]";
				say "     Squashing your inner orc's wishes with an iron will, you keep your arms at your side and take a deep breath - which leads over to a lusty groan as Chris gets to work jerking you off. As horny and close as you already are, it doesn't take more than a few moments before you start blasting away with spurts of orc cum, which Chris aims to hit him in the chest. He keeps slowly milking your cock until you're well and truly done coming and it starts to go down, then stands up and puts his arms around you for a long kiss.";
			otherwise:
				say "     [line break]";
				say "     Grunting in lust and aggression as your inner orc asserts its will, you grab Chris['] head with both hands and just thrust into his still open mouth. Not stopping until you can feel his nose push against your crotch, pull back and pound into him again, roughly face-fucking the young man and quickly reaching your climax. Your shaft is pulses as a big load of thick and creamy orc cum blasts into his mouth and down his throat, leaving Chris the options of drowning or swallowing it all. At first, he still presses weakly against your hips to pull off, though that resistance soon abates and you can feel him suckle on your shaft with growing eagerness.";
				say "     His first taste of orc cum does make Chris rather tipsy, making him slur the words 'Hmm... tasty. I wanna more.' when you finally let him pull off and take a breath. At the same time, a subtle but noticeable change goes through his body - features becoming a bit more rounded and slightly feminine, his body still lithe and muscled, but with wider hips fitting to the child-bearing role of orc breeders. The bulge at the front of his pants gets a bit smaller too, as he won't need that massive a cock in his new fate as a submissive bottom. Further up, the sharp tusks in Chris's mouth shrink in size, becoming rather cute little ones instead. As all those bodily changes stabilize and set into place, you can almost see the shift of his thought processes in the depth of his eyes, the need and desire to get mounted and bred rising to the forefront.";
				now libido of Chris is 1;
		otherwise: [regular BJ]
			say "     Throwing your head back and moaning loudly, you enjoy the amazing blowjob Chris is giving you. He really is a natural at pleasing men, licking and teasing with your balls and cock a talented tongue in between having those sexy lips wrapped around your shaft. You feel yourself getting closer and closer to your building orgasm and gasp that you're about to cum - making Chris increase his efforts, going down on you with a vengeance. Unsurprisingly, this pushes you over the edge within moments, making you pant loudly as you start blasting away into his mouth and down his throat. The handsome orc hungrily swallows everything you can give him and doesn't stop until he's milked you for even the last little drop. Finally pulling off your shaft, he smacks his lips contently, then stands up and puts his arms around you for a long kiss.";
	otherwise if libido of Chris is 1:
		say "     Walking up to Chris, you tell him that you'd love to have some fun with him, giving a little nod to your crotch as you do. The young orc grins as he looks down and sees the bulge in your pants, saying 'Of course, master. I love serving you,' then gets on his knees and starts to undo your pants. His eager fingers quickly have you naked below the belly-button, then they move to cup your balls and give your quickly hardening cock a few slow jerks. Lifting your manhood, he proceeds to lick up its underside, from your balls to the tip, then slides his soft lips over the cockhead.";
		say "     Throwing your head back and moaning loudly, you enjoy the amazing blowjob Chris is giving you. He really is a natural at pleasing men, licking and teasing with your balls and cock a talented tongue in between having those sexy lips wrapped around your shaft. You feel yourself getting closer and closer to your building orgasm and gasp that you're about to cum - making Chris increase his efforts, going down on you with a vengeance. Unsurprisingly, this pushes you over the edge within moments, making you pant loudly as you start blasting away into his mouth and down his throat. The handsome orc hungrily swallows everything you can give him and doesn't stop until he's milked you for even the last little drop. Finally pulling off your shaft, he smacks his lips contently, then stands up and puts his arms around you for a long kiss.";
	otherwise if libido of Chris is 2:
		say "     Walking up to Chris, you tell him that you'd love to have some fun with him, giving a little nod to your crotch as you do. The young orc grins as he looks down and sees the bulge in your pants, saying 'So? If you wanna have fun, why don't YOU suck MY cock. You can jerk off while you deep-throat me.' Changing your approach, you playfully insinuate that it's okay and you won't hold it against him that he's not man enough to take your whole shaft. 'Hah - there's nothing a real orc can't do,' he grunts, then falls to his knees before you. 'Bring it on - I'll show you what's what!' Hooking two fingers under your waistband, he pulls your pants down with a powerful wrench, then leans forward to lick your soon hardening shaft, sliding his soft lips over the cockhead in short notice.";
		say "     Throwing your head back and moaning loudly, you enjoy the amazing blowjob Chris is giving you. He really is a natural at pleasing men, licking and teasing with your balls and cock a talented tongue in between having those sexy lips wrapped around your shaft. You feel yourself getting closer and closer to your building orgasm and gasp that you're about to cum - making Chris increase his efforts, going down on you with a vengeance. Unsurprisingly, this pushes you over the edge within moments, making you pant loudly as you start blasting away into his mouth and down his throat. The handsome orc hungrily swallows everything you can give him and doesn't stop until he's milked you for even the last little drop. Finally pulling off your shaft, he smacks his lips contently, then stands up and wipes a bit of cum off the corner of his mouth. 'See - told ya. Orc warriors are the best at everything!'";

to say ChrisSex2: [the player fucks Chris]
	if libido of Chris is 0: [base state]
		say "     Walking up to Chris, you tell him that you'd love to have some fun with him, giving a little nod to your crotch as you do. The young orc grins as he looks down and sees the bulge in your pants, saying 'Sure, I'm down for anything,' then reaches for your pants. His eager fingers quickly have you naked below the belly-button, then they move to cup your balls and give your quickly hardening cock a few slow jerks. Drawing your head towards his to meet your lips for a kiss, the young man pants 'Can't wait to feel you inside me.' After that, he sashays over towards his mattress, casually undoing his shorts and letting them drop on the way, then lies down. The handsome and shapely orc gives you a very inviting smile as he proceeds to pull up his legs, holding them spread open for you to present his asshole.";
		say "     Eager to join Chris between (or rather on top of) the sheets, you hurriedly throw off your gear and clothing and get down on the mattress yourself. Leaning forward, you grab the young man's already fully hard cock, licking the hot and hard pole slowly before moving lower as you jerk him with your hands. The orc gives an aroused gasp as you lap over his balls, then encircle one of them with your lips and suck on it, before finally arriving at his invitingly quivering hole. You bury your nose between his firm cheeks, breathing in Chris's own masculine scent, and lap along his crack, then seek out the pucker with the tip of your tongue and stick it in. There is something very gratifying about the way you can make this strong man quiver and pant by just wiggling your tongue a little bit as you eat out his ass.";
		say "     [WaitLineBreak]";
		say "     After spending some time going down on Chris, you hear him moan 'You're amazing - but I need more. Please, stick it in and fuck me hard!' Who could resist such an enticing request? You don't even try, instead moving closer to him on your knees, until your own hard cock is just in the right position to take the green hunk's ass. Reaching down to take hold of your manhood, you gently brush it over Chris's hole, making him pant in arousal. Then you press in and sink your hard shaft into the orc's rear end, stretching his inner muscles around you. With you taking the time to prepare and relax him with oral sex, as well as some inherited traits from his orc breeder parent, you find Chris to be able to take your erection easily, while at the same time still being nice and snugly tight.";
		say "     The young man really is a natural at bottoming, squeezing and flexing his inner muscles around your invading member to add to your pleasure. Leaning over Chris, you give him a hungry kiss on the mouth, then pull back your hips and thrust into him again. Guided by rising moans in lust, you speed up bit by bit and before too much longer, the two of you are enthusiastically coupling with each other on the bunk. In between satisfied gasps and hot kisses, Chris calls out for you to go ever harder and faster, growling 'I'm an orc, we like it rough!' in the throes of passion. You're only too eager to comply, and soon you're really pounding into him, your hips meeting with a loud slap every time you thrust.";
		say "     [WaitLineBreak]";
		if cockname of player is "Orc Warrior" or cockname of player is "Orc Breeder": [transformation danger]
			say "     A.";
			say "     [line break]";
			say "     Given the wild ride you're giving Chris, it's no big wonder that he soon moans 'Getting kind of close... you too?' Then there's a short pause and a groan 'Oh, wait - damn. Can't have your cum in me. You're an orc. Pull out, okay? Please.' Every orcish urge in your body tells you to just keep going, fill this slut up and make a breeder out of him...";
			say "     Do you do the 'right' thing and suppress that feeling, or would you like to fill Chris with his first of many loads of orc cum?";
			if player consents:
				say "     [line break]";
				say "     Slightly disappointed, but willing to respect his wishes, you pull your cock out of Chris, then bring it up to rub right against his own shaft. Taking both of them in your hands together, you start jerking them off. It feels nice to have your manhood rubbing against his, and just a short while later, you feel the urge to cum rise inside you. With a grin on your face, you aim right at the orc's head and moments later start to blast away, sending many an arc of cum to splat down on him. Chris himself is just a moment after you, gasping loudly as he comes - and creams his face even more.";
				say "     After your shaft shoots its last sting of cum onto Chris, you lean forward to start making out with him, playfully lapping up both your mixed contributions to the cum-facial and sharing them with him. Then you flop down to lie besides him for a moment, moving close to cuddle up against is muscled back and putting an arm around him. 'That was fun! We should to it more often...' the orc moans, content to just lie with you like that for a while.";
			otherwise:
				say "     [line break]";
				say "     Grunting in lust and aggression as your inner orc asserts its will, you grab Chris['] hips with both hands and just keep pounding him hard and deep. It takes a moment till he realizes you're not pulling out and tries to wiggle out from under you - unsuccessfully, as you're holding on to tight and your cock bumping against is prostate makes him shudder in lust and think other things. And then... it's too late. With a roar, you bury your cock in his ass all the way, grunting with each shot of your seed pumping into his ass. Feeling the life-giving, fertile seed splash against his insides drives the young orc over the edge right with you, gasping and moaning as he blows a load all over his chest.";
				say "     As more and more cum fills up his ass, a subtle but noticeable change goes through Chris['] body - with features becoming a bit more rounded and slightly feminine, and hips widening to slightly to fit the child-bearing role of orc breeders. Even as his cock sprays its load all over the young man's chest, it gets somewhat smaller too. Further up, the sharp tusks in Chris's mouth shrink in size, becoming rather cute little ones instead. As all those bodily changes stabilize and set into place, you can almost see the shift of his thought processes in the depth of his eyes, the need and desire to get mounted and bred rising to the forefront.";
				now libido of Chris is 1;
		otherwise: [regular finish with cum]
			say "     Given the wild ride you're giving Chris, it's no big wonder that he soon moans 'Almost ready *pant* to cum'. Reaching between his legs to grab his hard cock, you stroke it a few times, aiming it at Chris's head with a grin. Just a second later, the orc gives a satisfied grunt and starts to tremble and twitch with each shot of his cum that blasts from his cock... to splatter his face. The orc's anal muscles flex around your cock at the same time, which gives you the rest too in short order. As you feel the orgasm rapidly approaching, you drive into your partner's deliciously tight asshole one last time, grinding your hips against his as you fill him with your seed.";
			say "     After your shaft shoots its last sting of cum into Chris, you slowly pull out of him and flop down to lie besides him for a moment. Turning on your side, you move closer to the orc, cuddling up against his muscled back and put an arm around him. 'That was fun! We should to it more often...' the orc moans, content to just lie with you like that for a while.";
	otherwise if libido of Chris is 1:
		say "     Walking up to Chris, you tell him that you'd love to have some fun with him, giving a little nod to your crotch as you do. The young orc grins as he looks down and sees the bulge in your pants, saying 'Of course, master,' then reaches for your pants. His eager fingers quickly have you naked below the belly-button, then they move to cup your balls and give your quickly hardening cock a few slow jerks. Drawing your head towards his to meet your lips for a kiss, the young man pants 'Can't wait to feel you inside me.' After that, he sashays over towards his mattress, casually undoing his shorts and letting them drop on the way, then lies down. The handsome and shapely orc gives you a very inviting smile as he proceeds to pull up his legs, holding them spread open for you to present his asshole.";
		say "     Eager to join Chris between (or rather on top of) the sheets, you hurriedly throw off your gear and clothing and get down on the mattress yourself. Leaning forward, you grab the young man's already fully hard cock, licking the hot and hard pole slowly before moving lower as you jerk him with your hands. The orc gives an aroused gasp as you lap over his balls, then encircle one of them with your lips and suck on it, before finally arriving at his invitingly quivering hole. You bury your nose between his firm cheeks, breathing in Chris's own masculine scent, and lap along his crack, then seek out the pucker with the tip of your tongue and stick it in. There is something very gratifying about the way you can make this strong man quiver and pant by just wiggling your tongue a little bit as you eat out his ass.";
		say "     [WaitLineBreak]";
		say "     After spending some time going down on Chris, you hear him moan 'You're amazing - but I need more. Please, stick it in and fuck me hard!' Who could resist such an enticing request? You don't even try, instead moving closer to him on your knees, until your own hard cock is just in the right position to take the green hunk's ass. Reaching down to take hold of your manhood, you gently brush it over Chris's hole, making him pant in arousal. Then you press in and sink your hard shaft into the orc's rear end, stretching his inner muscles around you. With you taking the time to prepare and relax him with oral sex, as well as some inherited traits from his orc breeder parent, you find Chris to be able to take your erection easily, while at the same time still being nice and snugly tight.";
		say "     The young man really is a natural at bottoming, squeezing and flexing his inner muscles around your invading member to add to your pleasure. Leaning over Chris, you give him a hungry kiss on the mouth, then pull back your hips and thrust into him again. Guided by rising moans in lust, you speed up bit by bit and before too much longer, the two of you are enthusiastically coupling with each other on the bunk. In between satisfied gasps and hot kisses, Chris calls out for you to go ever harder and faster, growling 'I'm an orc, we like it rough!' in the throes of passion. You're only too eager to comply, and soon you're really pounding into him, your hips meeting with a loud slap every time you thrust.";
		say "     [WaitLineBreak]";
		say "     Given the wild ride you're giving Chris, it's no big wonder that he soon moans 'Almost ready *pant* to cum'. Reaching between his legs to grab his hard cock, you stroke it a few times, aiming it at Chris's head with a grin. Just a second later, the orc gives a satisfied grunt and starts to tremble and twitch with each shot of his cum that blasts from his cock... to splatter his face. The orc's anal muscles flex around your cock at the same time, which gives you the rest too in short order. As you feel the orgasm rapidly approaching, you drive into your partner's deliciously tight asshole one last time, grinding your hips against his as you fill him with your seed.";
		say "     After your shaft shoots its last sting of cum into Chris, you slowly pull out of him and flop down to lie besides him for a moment. Turning on your side, you move closer to the orc, cuddling up against his muscled back and put an arm around him. 'Thank you! And please fuck me more often like this, master...' the orc moans, content to just lie with you like that for a while.";
	otherwise if libido of Chris is 2:
		say "     Walking up to Chris, you tell him that you'd love to have some fun with him, giving a little nod to your crotch and staring at his ass as you do. The young orc grins as he looks down and sees the bulge in your pants, saying 'So? If you wanna have fun, just let ME fuck YOU. I'll show you a good time alright!' Changing your approach, you playfully insinuate that it's okay and you won't hold it against him that he's afraid of taking your whole shaft. 'What? No! I'm not afraid of anything. I'll show you!' he grunts, then undoes his shorts and lets them drop before stomping over towards his mattress. The muscular orc gives you a determined look, then lies down and proceeds to pull up his legs, holding them spread open for you to present his asshole. 'Well then - get going! I'm waiting!' he growls.";
		say "     Eager to join Chris between (or rather on top of) the sheets, you hurriedly throw off your gear and clothing and get down on the mattress yourself. Leaning forward, you grab the young man's already fully hard cock, licking the hot and hard pole slowly before moving lower as you jerk him with your hands. The orc gives an aroused gasp as you lap over his balls, then encircle one of them with your lips and suck on it, before finally arriving at his invitingly quivering hole. You bury your nose between his firm cheeks, breathing in Chris's own masculine scent, and lap along his crack, then seek out the pucker with the tip of your tongue and stick it in. There is something very gratifying about the way you can make this gruff man quiver and pant by just wiggling your tongue a little bit as you eat out his ass.";
		say "     [WaitLineBreak]";
		say "     After spending some time going down on Chris, you hear him grunt 'Still not feeling any dick. Changed your mind and gonna pussy out?' It's clear that he liked his ass getting eaten quite a bit, but now he's back to his tough-guy attitude, as if to prove to himself that he's no breeder. Well, orc warrior or orc breeder - you don't care and just wanna fuck him. Moving closer to him on your knees, you bring your hard cock to just the right position to take the green hunk's ass. Reaching down to take hold of your manhood, you gently brush it over Chris's hole, making him pant in arousal. Then you press in and sink your hard shaft into the orc's rear end, stretching his inner muscles around you. With you taking the time to prepare and relax him with oral sex, as well as some inherited traits from his orc breeder parent, you find Chris to be able to take your erection easily, while at the same time still being nice and snugly tight.";
		say "     The young man really is a natural at bottoming, almost reflexively squeezing and flexing his inner muscles around your invading member to add to your pleasure. Leaning over Chris, you give him a hungry kiss on the mouth, then pull back your hips and thrust into him again. Guided by rising moans in lust, you speed up bit by bit and before too much longer, the two of you are enthusiastically coupling with each other on the bunk. In between satisfied gasps and hot kisses, Chris calls out for you to go ever harder and faster, growling 'I'm an orc, we like it rough!' in the throes of passion. You're only too eager to comply, and soon you're really pounding into him, your hips meeting with a loud slap every time you thrust.";
		say "     [WaitLineBreak]";
		say "     Given the wild ride you're giving Chris, it's no big wonder that he soon moans 'Almost ready *pant* to cum'. Reaching between his legs to grab his hard cock, you stroke it a few times, aiming it at Chris's head with a grin. Just a second later, the orc gives a satisfied grunt and starts to tremble and twitch with each shot of his cum that blasts from his cock... to splatter his face. The orc's anal muscles flex around your cock at the same time, which gives you the rest too in short order. As you feel the orgasm rapidly approaching, you drive into your partner's deliciously tight asshole one last time, grinding your hips against his as you fill him with your seed.";
		say "     After your shaft shoots its last sting of cum into Chris, you slowly pull out of him and flop down to lie besides him for a moment. He raises himself up on his elbows in the meantime, then gives you a 'light' bump on the shoulder with his hand. 'See - I totally had no problem with taking you on. It'll take larger dicks to make this orc afraid!'";

to say ChrisSex3: [Chris fucks the player]
	if libido of Chris is 0: [base state]
		say "     <placeholder for normal Chris on player anal";
	otherwise if libido of Chris is 1:
		say "     <placeholder for sub Chris on player anal";
	otherwise if libido of Chris is 2:
		say "     Walking up to Chris, you tell him that you'd love to have some fun with him and give the young orc's crotch a pretty obvious stare. 'All right! Now we're talking,' the green-skinned hunk grunts and gives you a lewd grin around his sharp tusks, then undoes the button of his shorts and shoves them down, then pulling his shirt off. Now proudly standing before you in the buff, the young orc chuckles as you can't help but let your gaze wander over his broad-shouldered chest, firm muscles and the thick, green prick dangling between his legs. Chris['] manhood twitches and grows harder by the second, filling out as he postures for a short while, showing off his muscled bulk and reaching down to cup his full and heavy balls suggestively, his thumb resting on the rising pole of his erection.";
		say "     'Hah, you sure you can even take all this?!' he grunts in youthful bravado - supported by his powerful physique and the quite thick shaft he wags in your direction. As you nod, the orc draws you against his chest in a one-armed hug and brings his mouth against yours in a forceful kiss. The sides of his tusks press against your face tightly as Chris tongue explores your mouth and a large hand gropes your ass. With little patience to wait before plunging his prick into you, the green-skinned teen pulls your gear and clothes off with strong, urgent moves, then hefts you up over his shoulder and carries you to his mattress. You're lowered, then dropped on Chris['] bedding, doing a face-plant into crumpled sheets that smell enticingly of the young orc's manly musk, then your hips are pulled up by his strong hands and you can feel the hot shaft of his cock press against your asscrack.";
		say "     [WaitLineBreak]";
		say "     'I'm gonna fuck you till you can't sit straight,' the orc chuckles, giving your ass a stinging slap, then lines up his erection with your pucker. 'You want it bad, don't you?' Chris teases and nudges your pucker with his cockhead, then takes hold of the base of his cock, smacking it between your buttocks a few times. Your moan at feeling him - almost - penetrate, then pull back, is all the answer he needs. A heartbeat later, Chris plunges his thick shaft into you for real, driving more than half its length inside with a guttural grunt, then pushing further until his balls soon press against your ass. His rough entry technique makes you really glad that the green-skinned brute's cockhead leaked quite a bit of pre-cum when he toyed with you earlier - the natural lube allowing you to weather the relentless thrust, though you still can't help but shout and whimper at the sensations he puts you through, face pressed into the mattress.";
		say "     Grunting in satisfaction, the young orc grinds his cock into you some more, both his hands gripping your buttcheeks and groping them harshly. Then he pulls his hips back, leaving an... empty ...feeling inside you as the hot, soft but yet rock-hard piece of man-meat slides out of you more and more. Finally nothing more than the cockhead is inside of you and he lightly pulls against your pucker from the inside with its flared rim - followed by a hard yank that leaves your back door gaping with a wet slurp. Chris chuckles deeply as he looks down at the ring muscle stay stretched wide for a few seconds, then clench together and reflexively open again. You still haven't got yourself fully under control again when Chris's patience wanes and he hammers his cock back into you, starting to fuck your ass hard and with untamed intensity.";
		say "     [WaitLineBreak]";
		say "     As the big orc cock plunges in and out of you in a rapid tempo, your own own shaft gets fully erect in short notice, and just like Chris is leaking precum into your insides, stimulating you even more, you see a string of fluid oozing out of your own cockhead, creating a wet spot on the mattress. Man, being plowed by an orcish hunk sure got you going. Meanwhile, Chris winds himself up more and more, revelling in the sensations of a tight hole around his oversized shaft. His grunts and bellows get more and more intense, and before much longer he grips your hip with one hand, the other one pushing on your back to keep you down. 'I'm gonna breed you like a good little slut,' you can hear from him, and feel the warmth of Chris breath against your back as he leans forward and pushes his crotch against your ass.";
		say "     Then he goes wild - pounding your butt with his crotch going up and down, the slapping noises of flesh on flesh echoing through the library. It doesn't take much longer before your orcish partner reaches the point of no return and bellows in lust, grinding his hips down as gush after gush of potent orc cum splashes into your depths. You can feel a pleasant warm buzz filling you as the orc warrior's seed gets absorbed by your body, prompting you to loudly moan and push your rear against him hard. 'Yeah, that's it baby,' Chris groans to you, his hot breath against your neck as he shudders and grunts with each new blast into you. Feeling him pulsing inside and on top of you, his arms gripping your body in a very possessive way, it takes but a moment longer before your own orgasm hits hard [if player is male]and a heavy load sprays all over the mattress below, adding another cum-stain to Chris['] bedding[otherwise if player is female]and your pussy starts to squirt femcum all over the mattress below, adding another stain to Chris['] bedding[otherwise]and you shudder and tremble in pleasure, digging your hands into the blanket below[end if].";
		say "     [WaitLineBreak]";
		say "     Your mutual climaxes rock though the two of you, only slowly ebbing off as Chris still humps against you in a determined pace, but even though both of you wish to just keep going, eventually things run out of steam and you quiet down, only panting hanging in the air for a moment. 'Oh yeah,' Chris says with a chuckle in his voice, then adds, 'I knew you'd want to be my little breeder. So eager to take a real orc's dick. I'll keep fucking you until you're knocked up. You'd want that, isn't that right?' He gives a little thrust of his hips against your rear as you open your mouth to answer, then licks the side of your neck and nibbles on you, his tusks lightly nipping your skin.";
		say "     Between the orc's somewhat rough amorous advances, a big load of his potent cum inside your ass and his hands stroking and groping your body, you barley have time to really think - about the offer of being his breeder, giving yourself to the strong, young orc -or anything really. The only thing you manage to get out is a vaguely assenting groan, which Chris answers with a satisfied grunt, then proceeds to pinch your nipples and gives you a love-bite on the bend of your neck. The two of you spend some more time in intimate closeness on the mattress, then the orc warrior eventually pushes himself up, giving your ass a last grope before standing up and looking around for his clothes. 'All the fun made me hungry. I'll go out and grab a bite,' he says in the effortless confidence that nothing he could meet would be dangerous for an orc. Then Chris walks down the stairs after giving your still naked form a very satisfied once-over.";
		infect "Orc Breeder";
		if bodyname of player is "Orc Breeder" and player is pure and "MPreg" is not listed in feats of player:
			say "     [line break]";
			say "     You feel something change deep inside you, as all the cum Chris blasted into you with completes your transformation to a real orc breeder. You'll now be able to be impregnated through anal sex. The [']MPreg['] feat has been added to your list.";
			add "MPreg" to feats of player;			

instead of navigating Grey Abbey Library while (libido of Chris is 2 and Chris is in Grey Abbey 2F and Dexterity of Chris is 0):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: CHRIS ZEBRA BUTTFUCK WALKIN - DEXTERITY OF CHRIS: [Dexterity of Eric][line break]";
	say "     Coming back into the library, you hear a commotion somewhere upstairs, on the second floor of the library. Then a panicky sounding male voice shouts, 'No, please! Don't... I - I'll blow you again. Just not... that.' The only reply is a deep-voiced chuckle, followed by a noise that makes you think of a thick, hard cock being slapped against an open palm. Running footsteps are next, the stomp of hooves on the upstairs floor, then the person responsible comes into sight - a panting anthro zebra who half-falls against, half-catches himself on teh upper floor railing. He must have stumbled in his rush for the stairs, missing the curve after running out between the bookshelves up there.";
	say "     Bent forward over the railing, hands clutching it tightly as not to go over - and also in the reflexive intensity of his desperation, the zebra stares down right at you, panting hard. You can see that the fur on his face and his mane is matted in sweat - and another fluid, sticky and white, showing in long splashes. A second or two stretch and stretch as he blinks away the terror in his eyes, then really focuses, giving you a pleading look as he shouts, 'Help me! He's...' Right behind the zebra, as it turns out. The muscled green shape of Chris steps into view, and one strong arm of the young orc warrior wraps around the striped equine's chest from behind. Drawing the struggling male against his broad chest, Chris holds him firmly and says with a chuckle, 'Don't run from me, pony. We've got so much fun to have yet!'";
	say "     [line break]";
	say "     Do you want to go upstairs and... deal with the matter (in one way or another) (Y), or do you just turn your attention to other things, leaving Chris and his captive alone (N).";
	if player consents:
		say "     [line break]";
		say "     Taking the steps two at a time, you hurry upstairs and soon come to stand near Chris and his captive. They're both completely naked, with the orc teen looking very buff and big next to the still muscled but somewhat more lithe form of the equine in his arms. The zebra glances over to you and whimpers as Chris grinds his hard shaft between his butt-cheeks, grunting lustily at the feeling of soft fur against his member. The striped captive's shaft is hard too, firmly erect and leaving little smears of precum against the panels of the railing he stands against - no doubt a result of the aphrodisiac-laden orc cum he's obviously been fed before. 'Hey there,' Chris grunts in greeting and nods to you, then adds, 'Wanna watch me break in this pony? Caught him near the zoo and just had some fun with that sweet mouth of his. Long muzzles are soo good for blowjobs, hah.'";
		say "     With a grin on his face, the orc strokes a big hand over his captive's muzzle, wiping off some of the cum still sticking in the zebra's fur. Then he holds his hand in front of the equine's mouth and grunts, 'Lick it off, breeder.' The zebra frowns a little, but you can see his nostrils flare wide as he takes in the scent of the offered orc cum, then can't control himself and goes for it, hungrily lapping up Chris['] seed and the salt off his skin. 'Good pony,' Chris chuckles, then adds, 'Hm - what's your name anyway?' Swallowing orcish cum, the zebra whinnys a little, then shakes his head as if he can't believe he just did that. 'I - I'm called Kai,' comes a halting reply, followed by, 'Look, please - I did what you wanted, gave you a blowjob. Even though I'm not... gay. You can't fuck me! That thing is massive, it'll rip me apart!'";
		say "     [WaitLineBreak]";
		say "     Looking at their comparative sizes, with Chris about half a foot taller and much more muscled, you have to admit that you did see a lot bigger size difference turn out okay in your time since this all started. After all, there's a lot of sex going on out on the streets. Still, Kai will likely be sore if Chris isn't careful about wedging that prick into him. No matter what, the horny orc isn't deterred one bit by Kai's protests, and you can see him brush off another creamy glob of pre out of the zebra's mane, then bring his fingers down to the anthro equine's butt, rubbing them over his pucker.";
		say "     [line break]";
		say "     Do you watch Chris fuck Kai (Y), or will you pull the zebra out of Chris['] grip and set him free (N)?";
		if player consents:
			say "     [line break]";
			say "     As you lean against the railing in a comfortable position to watch the show, you try to calm Kai a bit saying that he shouldn't worry and Chris sill be gentle. The young orc gives you a cheeky grin and adds with a slight snort, 'Sure I will. Totally.' And with that, he leans over the zebra and licks the side of his neck, then tells him in a husky tone, 'You'll love it, no doubt about it. Remember how you didn't wanna blow me at first either. That didn't turn out as bad as you thought, eh?' Kai hesitates a moment, subconsciously licking his lips, and then the time to speak is over for good, as Chris pushes his cum-slick fingers against his pucker, slipping the tip of a thick digit in. A loud gasp echoes through the library as Kai's rear entrance is penetrated for the first time - the novel sensation made even more intense by Chris['] orc cum being used as lube and now being absorbed into the zebra's body.";
			say "     'Unnnggghh!' Kai shouted in surprised arousal as Chris soon found what he was looking for - the equine male's prostate, sending out waves of pleasure at being rubbed. The orc fingers his captive for a while, driving the anthro male to levels of arousal he'd never thought possible from having something up his butt. Soon, he's even sliding his ass backwards to meet Chris thrusting digits and take him deeper, which makes the orc's grin grow wider and wider. 'So then, ponyboy - what do you say now?' he says in a half-mocking tone, giving Kai's cheeks a light slap and pulling his fingers out with a single quick movement. 'Gah!' the zebra gasps and rocks his body backwards, his pucker clenching and unclenching as if wanting to grip Chris at any opportunity. 'I feel so... empty. Put em back in! Please, Oooohhh, I need it!'";
			say "     [WaitLineBreak]";
			say "     Chris gives you a cocky smile, one hand on his thick shaft and whacking it against the palm of his other. 'If you insist, breeder-boy...' And with that, he aims his erection right at Kai's rear entrance, then thrusts forward with a guttural grunt. The shout of two voices that fills the library as Chris penetrates combines satisfaction and a bit of pain - but above all lust, as Kai's hole was prepared for the orc's cock, even though he himself wasn't, and grips this new intruder with an eager energy. It is good that Chris did spend the time to finger Kai earlier and used some orc cum on him, as the natural lube now allows the zebra to weather such a rough entrance - but he can't help but shout and whimper nontheless.";
			say "     Grunting in satisfaction, the young orc grinds his cock into his captive some more, both his hands gripping the zebra's furred buttcheeks and groping them harshly. Then he pulls his hips back further and further, leaving his playmate feeling empty again as the hot, soft but yet rock-hard piece of man-meat slides out of his ass. Finally nothing more than the cockhead is inside of Kai and Chris lightly pulls against his pucker from the inside with its flared rim - followed by a hard yank that leaves Kai's back door gaping with a wet slurp. Chris chuckles deeply as he looks down at the ring muscle stay stretched wide for a few seconds, then clench together and reflexively open again. Kai has barely started whimpering and moaning at the sudden retraction of the hard cock had had been giving him such pleasure, when Chris hammers his cock back into him, starting to fuck the striped ass hard and with untamed intensity.";			
			say "     [WaitLineBreak]";
			say "     As the big orc cock plunges in and out of Kai in a rapid tempo, the zebra's equine hard shaft flops around, bumping against the railing panels and sometimes wagging back and forth at it dangles between his legs - and all that while Kai's overstimulated body sends a steady stream of pre oozing out of his cockhead, meaning that his cock rubs a growing wet splotch on the panels, and splashes of the zebra's pre get flung left and right too. Man, being plowed by this orcish hunk sure got Kai going. Meanwhile, Chris winds himself up more and more, revelling in the sensations of a tight hole around his oversized shaft. His grunts and bellows get more and more intense, and before much longer he grips around Kai's hips with one arm, holding him tight, the other one pulling the zebra's head to the side so Chris can give him a hungry kiss. As their lips part again, you can hear him pant out, 'I'm gonna breed you like a good little slut!'";
			say "     Then he goes wild - pounding Kai's butt so hard the zebra is pushed against the railing and the slapping noises of flesh on flesh echo through the library. It doesn't take much longer before the young orc reaches the point of no return and bellows in lust, grinding his hips forward as gush after gush of potent orc cum splashes into Kai's depths. A blissfull look spreads on the zebra's face as an orc warrior's seed gets absorbed by his body, prompting him to loudly moan and push his rear against Chris. 'Yeah, that's it baby,' Chris groans to him, his hot breath against his captive's neck as he shudders and grunts with each new blast into him. Feeling his new master pulsing inside the innermost depths of his body and having the big orc's arms around him in a very possessive way, it takes but a moment longer before Kai's own orgasm hits hard, and a heavy load sprays out of his equine shaft, still pressed tight against the railing panel in front of him. The white deluge of cum the zebra's balls produce splatters down over the panel like a waterfall and ends up as a large white-puddle on the floor, where it starts to leak over the edge and drip into the library below.";			
			say "     [WaitLineBreak]";
			say "     Their mutual climaxes rock though the two of them, only slowly ebbing off as Chris still humps against Kai in a determined pace. But even though they're now both quite into having sex with each other, eventually things run out of steam and they quiet down, only panting hanging in the air for a moment. 'Oh yeah,' Chris says with a chuckle in his voice, then adds, 'I knew you'd want to be my little breeder pony. Now you're eager to take a real orc's dick, right Kai?' He gives a little thrust of his hips against Kai's rear as the zebra opens his mouth to answer, then licks the side of his play-mate's neck and nibbles on him, his tusks lightly nipping Kai's skin.";
			say "     Between the orc's somewhat rough amorous advances, a big load of his potent cum inside his ass and Chris['] hands stroking and groping Kai's body, the zebra is pretty blissed out and overwhelmed by it all. And then, things go even further and change his life forever, as the transformative effects of his creamy filling kick in. Throwing his head back, Kai gasps loudly as his muzzle shifts a little, and with his open mouth you see four tusks form, two long and two shorter fangs showing clearly that this zebra no longer is a herbivore. The rest of his long muzzle his transformed just a blink later, and quite a few more sharp teeth present themselves. As he snaps his mouth shut and starts running his tongue over the new teeth, Kai goes a little green in the face, then a lot, as a wave of emerald color starts to replace all the white parts of his striped pattern. With that, the external changes come to a halt.";			
			say "     [WaitLineBreak]";
			say "     'Hah, now you're a proper orc pony. To be ridden hard by my cock!' Chris grunts as he inspects Kai's new form, then pulls his cock out of the transformed zebra with a slurp. The young orc turns his new breeder with a pull on his arm, then pulls Kai into an eager kiss, during which they playfully rub tusks. 'Wow... that was... wow,' Kai gasps out as their lips part again, then he looks down over his black and green stripes and raises a hand to feel his sharp fangs. 'Er... what exactly am I now?' he asks and looks up into Chris eyes. The only answer he gets from Chris is 'Mine', then the young orc claps his zebra breeder on the shoulder and says, 'Come on, fucking you made me hungry - let's go grab a bite to eat.' With a sly grin to you, Chris guides his companion down the stairs and the two of them walk outside.";
		otherwise:
			say "     [line break]";
			say "     Telling Chris he had his fun, you step up and start prying on his muscle-packed arm off the zebra. There is a short moment of resistance, then the young orc gives an annoyed grunt and lets go. 'Fine, but only because it's your place I'm staying at right now. If I you again out in the city Kai, your ass is mine!' And with that, the green-skinned brute turns away, stalking down a path between two bookshelves, no doubt on the way to his bedding.";
			say "     With a relieved sigh, Kai babbles to you, 'THANKYOU! Thankyou! Thank you. I don't think I could have taken... you know, his thing. Could barely get my mouth around it and he wants to stick that monster up my ass?!' Sounds like he's rather buzzed by his orc cum drink earlier, but one thing is for sure - you got a very thankful and relieved zebra on your hands. He gladly lets himself be led downstairs, then out of the library, and after walking with him for a block or two, he thanks you again, then sprints off in the direction of the library.";
	otherwise:
		say "     [line break]";
		say "     Answering the zebra's pleading look with a shrug, you look away and walk over to the librarian's desk, from where there isn't a line of sight to that section of the upper floor railing. About time you sorted out your backpack a bit anyways, the better to find your stuff if you need it in a hurry. The gasps and sounds of rough fucking from above you just tune out, as you're used to by now from out on the streets.";





Chris ends here.
