Version 1 of Chris by Wahn begins here.

[ hp of Chris - location                           ]
[   0: not born yet                                ]
[   1: in the library                              ]
[ 100: lost in the orc lair                        ]

[ libido of Chris - infection status               ]
[   0: half-orc                                    ]
[   1: orc breeder                                 ]
[   2: orc warrior                                 ]

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
				now lastfuck of Aelias is turns;
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
					wait for any key;
					now lastfuck of Aelias is turns;
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

Chris ends here.
