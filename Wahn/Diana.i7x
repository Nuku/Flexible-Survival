Version 1 of Diana by Wahn begins here.
[Version 1 - New Character]

[ DianaRelationship                                          ]
[   0: not met                                               ]
[   1: player gave her a pep talk                            ]
[  10: player took her virginity                             ]
[  11: player took her virginity + public cunnilingus        ]
[ 100: freaked out                                           ]
[ 101: player ignored her                                    ]

[ DianaTransformationProgress                                ]
[   0: gryphon legs, human middle, cat head                  ]
[   1: gryphon to the navel, human belly, cat to the breasts ]
[   2: gryphon/cat transformations met, starting to overlap  ]
[   3: complete overlap of gryphon/cat -> anthro sphinx look ]

DianaTransformationProgress is a number that varies.
DianaRelationship is a number that varies.

Section 1 - Events

Table of GameEventIDs (continued)
Object	Name
Dressing Room Crisis	"Dressing Room Crisis"

Dressing Room Crisis is a situation.
The sarea of Dressing Room Crisis is "Smith Haven".

when play begins:
	add Dressing Room Crisis to badspots of furry;

Instead of resolving a Dressing Room Crisis:
	say "     Wandering the hallways of the Smith Haven Mall, you pass through crowds of all sorts of people: lots of mall rats, demi-human hybrids, and countless other species, as well as the rare pure human. You stroll in and out of various stores, some occupied by the refugees of the outbreak, others laying abandoned. But just as you pass through an empty clothing boutique, you hear something - sniffles and quiet sobs. Curiosity guides your steps deeper into the store, walking along the aisles full of skimpy garments that are less than useless in the current crisis, until you spot a series of dressing rooms against the back wall. You notice that the second little room has its curtain drawn closed, and you can see a pair of clawed feet in the little bit of empty space between it and the ground. The sobbing is clearly coming from within the cabin, and from the tone of their voice, it is a woman in some sort of distress.";
	LineBreak;
	say "     [bold type]How do you want to deal with this?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Gently knock on the divider between the cabins and lend a supporting ear.";
	say "     [link](2)[as]2[end link] - Just draw the curtain aside and have a look.";
	say "     [link](3)[as]3[end link] - Not your problem. Just leave.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to knock and talk, [link]2[end link] to pull the curtain, or [link]3[end link] to leave.";
	if calcnumber is 1:
		LineBreak;
		say "     Announcing yourself with a gentle knock on the wooden divider, you hear the sobs stop after a second or two, followed by a frightened little voice asking, 'W-who's there?' Introducing yourself in a supportive tone, you ask her for her name and why she's so distraught, sobbing to herself alone in a little booth. 'I'm Diana,' she says, still sounding timid. You can hear some rustling of cloth before the curtain is drawn back. Now in view, the young woman straightens her tight black t-shirt and smoothes out her blue, not quite knee-length skirt. She is a hybrid of three species: the body is human overall, Caucasian and with pale skin, but she has the clawed feet of a gryphon, with light blue fur having spread up her legs and vanishing under her skirt. Above, her body is crowned by a feline head that shows the typical coloration of a Siamese cat, with black fur on her face and ears that lightens to white on the rest of her head and neck, anything further down hidden by her shirt.";
		say "     Sniffing silently, she gestures to herself and looks expectantly at you before saying, 'Just look at me. I'm a total freak! No one will ever want to be my boyfriend!' Clearly, the girl has a severely skewed self-image after her partial transformation. Seen without preconceptions, Diana is actually fairly cute.";
		LineBreak;
		say "     [bold type]How do you want to reply to her?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Talk to her and strengthen her confidence in herself.";
		say "     [link](2)[as]2[end link] - Tell her that she looks great (and tease her).";
		say "     [link](3)[as]3[end link] - Suggest a paper bag over her head and bare breasts to distract people.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to counsel her, [link]2[end link] to make a move on her, or [link]3[end link] to freak her out.";
		if calcnumber is 1: [counsel her]
			LineBreak;
			say "     Shaking your head, you tell Diana that she's got it all wrong - everyone would love to be with a cute girl like her, if she just gave them a chance. 'I - um, do you really mean that?' the shy young woman replies, wiping her eyes and looking at you in surprise. You smile back at her and tell her that she'll just have to meet the right person. In the end, [italic type]she[roman type] is what counts, not her body or the specifics of her looks. You go on to assure her that new body is both exotic and attractive, so she shouldn't be worrying about her appearance, either. Diana just eats up your words, putting a lot of faith in a person she just met. Before long, the young woman wraps her arms around you and gives you a tight hug. 'Thank you so much. I'll take that to heart!'";
			say "     The smiling Siamese-gryphon hybrid looks at you with a new level of confidence clearly written on her face, as if trying to engrave your features into her memory, then suddenly blinks and glances at the drawn curtain, thinking of the rest of the mall for the first time since you stepped into her life. 'Oh! I should get back to the others. The group of refugees I'm staying with, I mean. We're housed in the optician in the west wing, in case you want to... come visit me sometime. I hope you do.' She gives you a friendly smile, then leans forward to plant a peck on your cheek and leaves the store with a skip in her step.";
			now DianaRelationship is 1; [player gave her a pep talk]
			now Resolution of Dressing Room Crisis is 1; [talked]
		else if calcnumber is 2: [make a move on her]
			LineBreak;
			say "     Stepping up into the dressing booth and reaching out to gently stroke her cheek, you tell Diana that she's got it all wrong - everyone would love to be with a cute girl like her, if she just gave them a chance. 'I - um, do you really mean that?' the shy young woman replies, wiping her eyes and looking at you in surprise. You smile back at her and tell her you do, putting your arms around Diana and holding her. [if player is not male]'B-but you're a girl! Does that mean... oh! So you're a... Um, I have been curious about being with women, to be honest.' [end if]When she relaxes a little into your embrace, you slide a finger under her chin to tilt her head up, then kiss the young woman, making her almost melt into your touch. Spellbound by the sensual contact, Diana attempts to return the favor, her feline tongue parting your lips to entwine with your own. What she lacks in experience, she more than makes up for in lustful enthusiasm, the hybrid's curvy form pressing against you as she purrs with need in her throat.";
			say "     Reaching behind your back, you quietly draw the curtain closed, then continue to make out with your new friend. Diana readily allows you to follow up by sliding your hands under her top, caressing her breasts and then inching the article of clothing up, soon pulling it off over her head. Her fur extends down to the start of her shoulders, where it meshes with flawless pale skin. Her firm, A cup breasts make it easy to cover one with each of your hands, caressing the young woman. While petite, Diana's breasts prove very sensitive, her nipples growing hard after just a little pinch. When you lower your head and give them an eager lick, the hybrid girl gasps out. 'That feels really good,' she admits in a breathless voice, moaning loudly when you start to alternate your attention between each of her breasts in turn, your tongue lashing over the sensitive flesh of her mounds.";
			WaitLineBreak;
			say "     In her unfamiliar state of sizzling arousal, Diana is more than eager to do anything to keep going, so when your hands start searching for the zipper of her skirt, she guides them to it, allowing you to pull it down. Leaning back a little to have a good look at the hybrid as the fabric around her hips falls away, you see that the slender young woman has blue fur on the insides of her thighs, reaching almost halfway up to where her feminine sex lies hidden by a pair of thin pink panties. You give Diana an encouraging smile and tell her how beautiful she is, then kiss her again before sinking to your knees before her. Looking up at her wide-eyed face, you hook two fingers over the elastic of her underwear and pull it down in one smooth motion, finally stripping her completely bare. Diana bites her lower lip, ashamed at letting herself be exposed like this, then gives a cute little squeak as you bring your face against her sex and give it a lick.";
			say "     'Nnnghh. Please - Please just keep going,' she pants out, her hands moving cautiously to rest on your shoulders, lusting for your contact. Lapping along the edges of her sensitive nether lips a few times, you soon direct your attention to her clit, encircling it with the tip of your tongue a few times before sweeping the flat of that warm, slick muscle against it repeatedly, your merciless assault on her senses making Diana tremble and moan with desire. She sucks a sharp breath through her teeth when your lips clamp down over her button, overwhelming her with a sudden wave of arousal. 'F-Fuck, yes!' Diana gasps out, grinding against your face as her lusts soar. Before long, the young woman's legs start to grow a little wobbly from your relentless oral stimulation, and she sighs, 'I - I think I need to sit down.' Smiling in understanding, you let go of her hips and watch her take a step or two back, then sit down on the little bench in the booth. Once she's settled, you take your place between her legs again and return to pleasuring her mound.";
			WaitLineBreak;
			if player is male:
				say "     After a little more time of playing around with your new friend, you look up and see her leaning back against the dressing booth wall, eyes closed and just giving in to all of the feelings you have awakened in her. Which makes it just the perfect time to stand up and release the hard length of your [cock of player] shaft from the tight confines of your clothes. Hard cock in hand, you bend your knees a little and brush it over Diana's sex, drawing a moan from her, then slip the head in between her nether lips before she knows what is going on. You grunt in satisfaction as the warm and wet cave of her sex enfolds your shaft, the desire to ram deep into her burning on your soul. Then suddenly, you encounter a little bit of resistance - not from Diana, but rather a flexible membrane in her otherwise so eager pussy. The girl is a virgin!";
				say "     As you bump her hymen and pause, Diana's eyes shoot open, her blue, cat-like irises catching your gaze in an intense look. Swallowing, you start to ask if she wants you to go ahead, but before the question has even left your lips, she lets out a deep mrowl, filled with animalistic need. The next thing that happens is that Diana humps her hips towards your crotch, spearing herself on your shaft and wrapping both legs around your body. A little yowl escapes her lips at the momentary pain of losing her cherry, to be replaced by an eager moan as you do the natural thing and push into her the rest of the way. Diana's arms wrap around your shoulders and she meets your lips in a hungry kiss, purring pleasantly from the depths of her throat. The two of you need no words to understand each other after that, your bodies doing the talking for you - from the way her legs push against your ass, to your own exploration of her mouth with your tongue and the young woman's fingernails raking your back to urge you to fuck her harder.";
				WaitLineBreak;
				say "     Fucking Diana is wild, to give it a name, even though the word barely covers just how enthusiastic the little sex-kitten takes to having a dick inside her. She wraps herself around you tightly, both with her sweet little pussy as well as arms and legs, clinging to your body in relentless desire. You can't even pause and get a breather, as Diana will just grind herself against you from beneath, riding your dick for her own pleasure. With such non-stop stimulation, it is little wonder that your hybrid partner reaches the place she is rushing to reach before much longer, fingernails digging into your back and pussy twitching around your shaft as she climaxes. The trembling of her sex around your member and her continuing grinding push you over the edge just moments later, and you start to pump your potent load deep into her receptive body, spurt after spurt flooding Diana's pussy and womb.";
				say "     With the tight grip of the young woman's arms slackening as she rides out the high of her orgasm, Diana comes to lean against the wall of the dressing booth. Yet even as her arousal winds down after a little while, her breathing stays at the same quick pace and you can see a flush pass over the naked skin of her human body, with the furred parts having their hair stand on end. 'I - I feel really hot,' the young woman says in a breathless tone and fans her chest with both hands. Curious and still a little adventurous, even after having already filled her with your load, you reach out and lay a hand on her chest, feeling the curve of her petite breasts and giving them a little squeeze. She really does feel abnormally warm to the touch - and almost as if the nanites had been waiting for a signal, a wave of change runs over the young woman's body before your very eyes.";
				WaitLineBreak;
				say "     Diana's breasts fill out a little right under your fingers; still just a handful, but reaching a solid claim to B-cups, at the same time as silky smooth white fur sprouts from her skin. The edge of her feline characteristics wanders down from her shoulders, passing over those beautiful breasts to come to a halt above her ribs. Against your hips, you can feel something similar happen to her legs, with more fluffy blue fur spreading to cover all of her legs, followed by the change washing over her crotch. With your slowly softening shaft still embedded inside her sex, you can literally feel it adjust around you, subtly changing in shape and size to almost mold itself to you. The transformation stops right beneath her navel, meaning that of the original human woman, just her midriff remains as it once was. Blinking in shock, Diana pushes herself back to sit on the bench, her pussy slipping off your member in a little gush of cum.";
				say "     The young woman stares down at herself and says in a frightened tone, 'Oh no, I keep changing! I'm gonna become some sort of hideous mon-ompphh!' Your lips meeting hers stop the flood of words after you decide to yourself that you want to reassure the young woman (or maybe just wanted to shut her up?). After a pleasant little while during which she forgets everything but the sensations of making out with you, you pull back from the attractive hybrid girl and tell her that [italic type]she[roman type] is what counts, not her body or the specifics of her looks. Besides which, she has a quite nice and exotic body now, which is a good thing too. Diana just eats up your words, putting a lot of faith in a person she just met and let claim her virginity. Arms wrapping around you, the naked young woman gives you a tight hug and says, 'Thank you so much. I'll take those words to heart. And... I had a lot of fun with you!'";
				WaitLineBreak;
				say "     The smiling Siamese-gryphon hybrid looks at you with adoration and delight clearly written on her face, as if trying to engrave your features into her memory, then suddenly blinks and glances at the drawn curtain, thinking of the rest of the mall for the first time since you stepped into her life. 'Oh! I should get back to the others, they might worry where I am for so long. The group of refugees I'm staying with, I mean. We're housed in the optician in the west wing, in case you want to... come visit me sometime. I hope you do.' She gives you a dreamy smile, then slides herself out from between you and the dressing booth wall, quickly collecting her clothes and pulling them on. Moments later, Diana plants a peck on your cheek, then ducks behind the curtain and is gone.";
			else: [oral for everyone else]
				say "     After a little more time of playing around with your new friend, you look up and see her leaning back against the dressing booth wall, eyes closed and just giving in to all of the feelings you have awakened in her. Which makes it just the perfect to raise your hand and lay it on her sex, stroking your fingers over the sensitive folds of your new friend. Diana lets out a little sigh as you nudge apart her nether lips, then slip two fingers in between them, pushing your fingers deeper - until you suddenly encounter a little bit of resistance - not from Diana, but rather a flexible membrane in her otherwise so eager pussy. The girl is a virgin! As you bump her hymen and pause, Diana's eyes shoot open, her blue, cat-like irises catching your gaze in an intense look. Swallowing, you start to ask if she wants you to go ahead, but before the question has even left your lips, she lets out a deep mrowl, filled with animalistic need.";
				say "     Overtaken by lust, Diana thrusts her hips forth in an impulsive, needy gesture, spearing herself on your probing fingers and wrapping both legs around your upper body. A little yowl escapes her lips at the momentary pain of breaking her own cherry like that, to be replaced by an eager moan as you wiggle your fingers inside of her. Clearly, the young woman is more pent up than you had expected, so you do your best to give her what she needs, frigging her pussy with your fingers while using your other hand to caress the clit above. Having someone to rub and fondle her, with total focus on getting her off, Diana bucks under your touch and gasps out the sweetest sighs and meows as you experiment a little and find just the right ways to wind her up. Having been a virgin until just a few minutes ago, the stimulation is enough to rapidly drive her over the edge, shouting out loud as she comes, her inner muscles twitching around your fingers and a trickle of femcum leaking out of her.";
				WaitLineBreak;
				say "     With the strength of her legs wrapped around you slackening as she rides out the high of her orgasm, Diana comes to lean against the wall of the dressing booth. Yet even as her arousal winds down after a little while, her breathing stays at the same quick pace and you can see a flush pass over the naked skin of her human body, with the furred parts having their hair stand on end. 'I - I feel really hot,' the young woman says in a breathless tone and fans her chest with both hands. Curious and still a little adventurous, even after having already fingered her to orgasm, you reach out and lay a hand on her chest, feeling the curve of her petite breasts and giving them a little squeeze. She really does feel abnormally warm to the touch - and almost as if the nanites had been waiting for a signal, a wave of change runs over the young woman's body before your very eyes.";
				say "     Diana's breasts fill out a little right under your fingers; still just a handful, but reaching a solid claim to B-cups, at the same time as silky smooth white fur sprouts from her skin. The edge of her feline characteristics wanders down from her shoulders, passing over those beautiful breasts to come to a halt above her ribs. Against your sides, you can feel something similar happen to her legs, with more fluffy blue fur spreading to cover all of her legs, followed by the change washing over her crotch. With your hand still resting on her sex, you can literally feel it adjust under your touch, subtly changing in shape and size. The transformation stops right beneath her navel, meaning that of the original human woman, just her midriff remains as it once was. Blinking in shock, Diana pushes herself back to sit on the bench, her pussy slipping off your member in a little gush of cum.";
				WaitLineBreak;
				say "     The young woman stares down at herself and says in a frightened tone, 'Oh no, I keep changing! I'm gonna become some sort of hideous mon-ompphh!' Your lips meeting hers stop the flood of words after you decide to yourself that you want to reassure the young woman (or maybe just wanted to shut her up?). After a pleasant little while during which she forgets everything but the sensations of making out with you, you pull back from the attractive hybrid girl and tell her that [italic type]she[roman type] is what counts, not her body or the specifics of her looks. Besides which, she has a quite nice and exotic body now, which is a good thing too. Diana just eats up your words, putting a lot of faith in a person she just met and let claim her virginity. Arms wrapping around you, the naked young woman gives you a tight hug and says, 'Thank you so much. I'll take those words to heart. And... I had a lot of fun with you!'";
				say "     The smiling Siamese-gryphon hybrid looks at you with adoration and delight clearly written on her face, as if trying to engrave your features into her memory, then suddenly blinks and glances at the drawn curtain, thinking of the rest of the mall for the first time since you stepped into her life. 'Oh! I should get back to the others, they might worry where I am for so long. The group of refugees I'm staying with, I mean. We're housed in the optician in the west wing, in case you want to... come visit me sometime. I hope you do.' She gives you a dreamy smile, then slides herself out from between you and the dressing booth wall, quickly collecting her clothes and pulling them on. Moments later, Diana plants a peck on your cheek, then ducks behind the curtain and is gone.";
			now DianaTransformationProgress is 1;
			now DianaRelationship is 10; [player took her virginity]
			now Resolution of Dressing Room Crisis is 2; [fucked]
		else if calcnumber is 3: [suggest putting on a paper bag - you monster!]
			LineBreak;
			say "     Stepping up into the dressing booth and reaching out to stroke her cheek, you tell Diana that she's actually got things quite wrong - a lot of people would love to get to know a cute girl like her quite closely. 'I - um, do you really mean that?' the shy young woman replies, wiping her eyes and looking at you in surprise. You smile lustily at her and tell her that you do, then let your gaze wander down to the small-ish bumps of her breasts and the slender physique of her body. Adding that guys would surely love to take her for a spin, you casually mention that a paper bag would always be an option if she feels so bad about her head - as long as her pussy is still accessible. This creates a completely gob-smacked expression on Diana's face, followed by a deep red flush and her shouting, 'You - you pig!' And with that, she gives your face a full-force slap that leaves your cheek red and stinging, then slips past you, running out of the store and sobbing all the way.";
			now DianaRelationship is 100; [freaked out]
			now Resolution of Dressing Room Crisis is 99; [freaked]
	else if calcnumber is 2:
		LineBreak;
		say "     Grabbing a handful of the dark blue curtain, you wrench it aside to reveal a young woman who is a hybrid of three species. Her body is human overall, Caucasian and with pale skin, but she has the clawed feet of a gryphon, with light blue fur having spread halfway up her thighs. On the other end, her body is crowned by a feline head that shows the typical coloring of a Siamese cat, with black fur on her face and ears that lightens to white on the rest of her head and shoulders, where the fur thins out and stops. The hybrid female is naked, apparently having been in the middle of checking out her mixed-together form. Your sudden intrusion makes her whirl around in shock, scream and then snatch up her clothes, dashing past you without a second's pause. She runs from the store, naked as she is, with one arm covering her petite breasts, the other clutching an armful of fabric. As she runs down the corridor outside, you hear her sob and shout, 'Don't look at me!'";
		say "     Well, seems like that wasn't the best approach for a distressed young woman. You did get a nice view of all of her assets, but was that really worth putting the poor girl through even more of a shock?";
		now DianaRelationship is 100; [freaked out]
		now Resolution of Dressing Room Crisis is 99; [freaked]
	else if calcnumber is 3:
		LineBreak;
		say "     With a shrug, you turn around and walk away, leaving whoever is in that dressing room to deal with their own problems.";
		now DianaRelationship is 101; [player ignored her]
		now Resolution of Dressing Room Crisis is 100; [ignored]
	now Dressing Room Crisis is resolved;

Table of GameEventIDs (continued)
Object	Name
Mall Optitian	"Mall Optitian"

Mall Optitian is a situation.
The Prereq1 of Mall Optitian is Dressing Room Crisis.
The Prereq1Resolution of Mall Optitian is { 1, 2 }.
The sarea of Mall Optitian is "Smith Haven".

Instead of resolving a Mall Optitian:
	say "     Strolling through the hallways of the expansive Smith Haven Mall, your way brings you to the west wing and you remember what Diana said about living in an optician store somewhere hereabouts. Checking out one of the large floor-plans of the mall standing a certain places, you figure out just where you need to go and swing by to check the place out. Soon, you see the glass front of the store a little distance ahead, its doors open and a number of people visible inside. For a second, you think you're in the wrong place after all, as the men and women inside all seem to be senior citizens in the beginning states of transformation: mostly showing some characteristics of dog- and cat-morphs, but you can also see one woman with rainbow-colored feathers lining the sides of her arms. Then suddenly, Diana comes into sight, stepping out behind a large display of sunglasses, together with an old woman who has white fur like a Siamese cat, pointy feline ears and a long tail.";
	say "     Walking closer, you overhear the old woman say, '...hope you'll have fun at the bookstore sweetie. Maybe you'll meet some new friends too.' Leaning forward, the pats Diana's head and kisses her forehead, smiling as the young woman replies, 'Maybe I will Nana. See you later.' The happy young woman walks out of the store after that, quickly spotting you and coming up to you with a smile on her face. An eye-blink later, you find yourself embraced by the feline/human/gryphon hybrid girl, and she says, 'Hello[if player is not defaultnamed] [name of player][end if], what a nice surprise to see you again! Come on, let's go to the bookstore together!' Before you really know what's going on, Diana has already dragged you along with her, leaving the optician (and especially its various inhabitants that were giving you curious glances) behind.";
	WaitLineBreak;
	say "     As soon as you are securely out of sight from her home, Diana's urgency ebbs a little and she guides you a few steps into a seemingly unused side passage that is out of the way of the bustling crowd filling the main hallways. [if DianaRelationship is 10]She gives you an eager kiss, [else]She smiles at you, [end if]then says, 'Sorry for the sudden rush, but I had to talk to you before you meet my friends. Could you... maybe not tell them just how we met? Me freaking out about the transformations and all that? I - I think I caught the cat thing from Nana Simpson and don't want to make her feel bad about it. She is so incredibly nice and was the best friend of my own grandma before she died. It's not her fault if she is a bit... touchy feely. That's why I couldn't talk to her or any of the others and ended up alone in that dressing room - until you came along.' She blushes a little as she says this, then gives you a hopeful smile that leads up to a full-on hug when you agree to edit the story of your first meeting a bit.";
	say "     'Thanks! You're a lifesaver. How about... err, we met in the Brookstone Books store and liked the same books? That should be innocent enough and easy to remember.' The young woman nods to herself and then glances at her wristwatch, 'So. Now that that's out of the way, wanna hang out? The bookstore really is a nice place, even in our current situation. Or we can talk about anything you want.'";
	say "[DianaTalkMenu]";


to say DianaTalkMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask her about herself";
	now sortorder entry is 1;
	now description entry is "Learn more about Diana";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask what she is doing at the mall";
	now sortorder entry is 2;
	now description entry is "Find out what she is doing here";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about her friends";
	now sortorder entry is 3;
	now description entry is "Find out how she ended up living with a bunch of senior citizens";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Hang out at the bookstore together";
	now sortorder entry is 4;
	now description entry is "Accompany Diana to the bookstore";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Crouch down in front of her and eat her out";
	now sortorder entry is 5;
	now description entry is "Show the innocent young woman something else you can do together";
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Ask her about herself"):
					say "[DianaTalk1]";
				if (nam is "Ask what she is doing at the mall"):
					say "[DianaTalk2]";
				if (nam is "Ask about her friends"):
					say "[DianaTalk3]";
				if (nam is "Hang out at the bookstore together"):
					say "[DianaTalk4]";
				if (nam is "Crouch down in front of her and eat her out"):
					say "[DianaOral1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You tell the young woman that you don't have time to hang out with her right now and say your goodbyes.";
			now Mall Optitian is resolved;
			if Resolution of Mall Optitian is 0:
				now Resolution of Mall Optitian is 1; [just talk]
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;


to say DianaTalk1: [Ask her about herself]
	say "     'Okay sure, I can tell you a bit about myself,' Diana says with a smile and thinks for a second on how to begin, then shrugs and adds, 'My name is Diana Hunter, I'm eighteen and I live in the Brentwood neighborhood. Well, 'lived' is more accurate these days I guess. Last I saw, there is a forest growing there now.' She grimaces a bit at the thought of her home being gone for good, then pushes on to explain, 'Thank god my parents and brother weren't actually there when all of this started - they're on holiday in Greece right now. A trip I didn't want to go on. Perfect decision, eh?' Looking down at herself, the young woman draws in a breath, then lets it out slowly and nods to you. 'No worries, I'm not gonna go into a funk again about having been transformed. You were right about that. It really is a nice and interesting look, if one looks at it from the right perspective. Somewhat funny too, if I tell you what mom and dad named my brother - it's Apollo.'";
	say "     Smiling at you expectantly, Diana says after a moment, 'You know, the Roman name for the god of art and beauty? Just like I am named for Diana, the huntress. Hah, Diana Hunter. I guess they were a bit too cute in their choice of names. One might count it as tempting fate, really. In the stories about the Olympians, people constantly got transformed left and right for pissing off the gods in even the slightest ways.' Her eyes get a far-away look for a moment as she imagines her parents seeing her like this, then she shrugs, 'If we make it through all of this, I guess I'll learn if they can deal with a daughter that might be straight from one of the myths.'";
	say "[DianaTalkMenu]"; [looping back into the menu to talk to him at the player's heart's content]

to say DianaTalk2: [Ask what she is doing at the mall]
	say "     'Oh, like so many others, I fled here to the mall when things started to get weird. By that time, the police wasn't even answering calls anymore and I'd seen a wyvern fly over the neighborhood. The Internet was still up back then and I read in a chat with classmates that the mall was supposed to be well-guarded, so me and the others decided to come here.' Diana draws a grimace, and the next words are said in a glum tone, 'I don't think any of them made it. Or maybe I just haven't found or even recognized any of them in the masses of refugees here.' You see in her eyes that she doesn't really believe it, even though she is trying to tell herself otherwise.";
	say "[DianaTalkMenu]"; [looping back into the menu to talk to him at the player's heart's content]

to say DianaTalk3: [Ask about her friends]
	say "     'Nana Simpson and the others, you mean? They are from the Brentwood Assisted Living Center. I've been volunteering there regularly since getting to know them during visits with my grandma. She...isn't with us anymore, but that didn't mean I was gonna stop going,' Diana says, full of civic spirit. Her expression darkens slightly as she goes on to say, 'When things became really bad in the city and my classmates and me chatted about fleeing to the mall, I couldn't just abandon them either. The center was on the way anyways.' You can tell from the overly quick way in which she said this that it really wasn't - she must have gone out of her way to gather these old people and bring them to the mall and it seems like she is justifying herself for that.";
	say "     'When I got to the center, they were all alone. The caregivers had fled already, but thankfully nothing bad had happened yet. So I told everyone to give their pets as much food as possible because we couldn't take them along, then gathered them up and we started a trek to the mall. Quite a dicey trip - we got jumped twice. The first time was a whole pack of strange rubbery creatures,' Diana mimes her group moving down a street, with numerous creatures swarming all around them and finally pouncing from all sides. 'Strangely, they weren't even interested in us, but rather the motorized mobility aids some of the folks were using. They started eating the wheels! From then on, it was a trip on foot the rest of the way.'";
	WaitLineBreak;
	say "     'We almost got here without further incidents, but I guess I must have let down my guard when I saw the mall in the distance. Didn't look up often enough, and a gryphon swooped down on the group as we were crossing a street. He threw me down and grabbed me by the ankle, no doubt to spread my legs and rape me, but I got him in the face with this.' With that said, Diana pulls a red and yellow spray-can out of her pocket, just large enough to fit in her palm. She shakes it and listens to the sound, then adds, 'Not much left in this pepper-spray sadly, so I hope I won't have to use it again. Anyways, once the gryphon fled, we made it into the mall alright. As for the optician as our new place to stay - well, it's a spot that everyone knew, so the folks are unlikely to get lost.'";
	say "[DianaTalkMenu]"; [looping back into the menu to talk to him at the player's heart's content]

to say DianaTalk4: [hang out at the bookstore]
	say "     You accompany Diana to the East Wing of the Smith Haven Mall and go into Brookstone Books together The bookstore is a nice little oasis of peace in the midst of the bustling mall and the chaos-ridden city, allowing the two of you to browse and talk about books, your lives and the world in general. Overall, you have a fun and relaxing time together, making you feel more in touch with your humanity than before. When you come out of the bookstore again hours later, smiling and laughing, Diana gives you a tight hug, then waves goodbye and leaves for her current home.";
	SanBoost 15;
	follow the turnpass rule; [time advanced]
	now Mall Optitian is resolved;
	now Resolution of Mall Optitian is 2; [hung out at the book store]

to say DianaOral1: [Eat her out in public]
	say "     Stepping up close to Diana, you gently push her back against the wall and tell her in a teasing tone that you got another idea what you could do together. The young woman looks surprised, but at the same time intrigued by the sudden implication of a more racy way to pass the time. 'Oh, what's that?' the young woman asks with a smile on her face and one eyebrow raised. In reply, you just grin and sink to your knees, hooking your fingers over the elastic of her skirt and pulling it down and exposing her panties. 'What?! You can't do that here! Someone might -' Diana's shocked outburst is interrupted by a high-pitched gasp as you pull her panties down too and move to lap your tongue over her nether lips. 'Oh god, yes!' she pants loudly as the tip of your tongue plays with her clit a few seconds, then draws back from her exposed sex.";
	say "     With a grin on your face, you ask the young woman if you should continue, and she bites her lip, glancing towards the people constantly walking past your little side corridor, then gives a giggle and a nod, agreeing to the scandalous act. Smiling gleefully, you slide your lips over the small bump of her sensitive clit and give it a gentle suck, drawing a whimper from the young woman that she can only barely suppress. ";
	if DianaRelationship is 1: [only gave her a pep talk before]
		say "Sliding your fingers in between the dripping wet folds of her sex, you start to finger your female friend, soon feeling the fleshy membrane of her hymen against the tips of the two fingers you have pushed inside her. The enticing knowledge that you're the first to take her in this way drives you to go all out in your stimulation of Diana's body, demonstrating the many things you can do with her and making the girl squeal and pant breathlessly. One thing is for sure - she'll have a truly memorable first time: in public, with you doing your utmost to drive her out of her mind with lust.";
	else:
		say "Sliding your fingers in between the dripping wet folds of her sex, you start to finger your female friend, feeling the remnants of her hymen that you so recently broke through. The enticing memory of being the first to take her drives you to go all out in your stimulation of Diana's body, demonstrating the many things you can do with her and making the girl squeal and pant breathlessly. One thing is for sure - she'll definitively remember this session of sex: in public, with you doing your utmost to drive her out of her mind with lust.";
	WaitLineBreak;
	say "     Sucking on the young hybrid's clit and fingering her mercilessly, her moans are music to your ears. Diana has by now closed her eyes and is completely focused on the feelings you are giving her, forgetting where she is and letting the sounds of her arousal out more freely. This of course doesn't fail to draw some of the passersby's attention, and as you glance to the side of the main mall hallway from time to time, you see a few persons stand there and watch with interest. Willing to give them a show as long as they stand back and don't try to join in, you give an impish grin and then go back to suckling on Diana's clit, raising the pitch of her squeals even further. ";
	if DianaRelationship is 1: [only gave her a pep talk before]
		say "Being completely new to the sensations you are giving her, Diana can't hold on to her composure much longer. All of a sudden, she opens her eyes wide and looks down at you with boundless lust, and reaches down to push your fingers even deeper into her pussy. Of course, the sudden wrench forces your digits against her hymen, first stretching, then snapping right through it.";
		say "     With a squeal that encompasses both the boiling lust as well as the surprise of a little pain in losing her virginity, Diana finally climaxes, squirting femcum over your thrusting hand and the lower half of your face. As she pants loudly and clutches on to your shoulders, you hear a few laughs and quiet cheers from the main hallway too - seems like your spectators enjoyed the show. Becoming aware of the fact that the two of you were watched, your female friend glances over to them with a shocked expression, yet before she can say anything you lick her clit once again and only a moan comes out of her mouth. This draws the feline's gaze back to you and arouses the feline yet again, so instead of freaking out over giving a public show, she just bites her lip and only throws a sidelong glance or two to the watching people while you suckle on clit and lick up Diana's femcum.";
		WaitLineBreak;
		say "     You spend some more time servicing Diana with your mouth and fingers, drawing out her arousal and giving the young woman a truly memorable experience. Her squeals and moans continue to fill the little side corridor for a little while, until she finally reaches down and gently tugs on you to rise. 'That was amazing!' Diana says in a breathless tone, and as you come to stand before her, you notice that she isn't actually winding down, but rather pants quicker moment by moment. 'I - I feel really hot,' the young woman says with a somewhat worried expression, fanning herself with both hands and pulling off her t-shirt in a try to gain relief from the heat. Curious and still a little adventurous, even after having already made Diana cum in public, you reach out and lay a hand on her chest, feeling the curve of her petite breasts and giving them a little squeeze. She really does feel abnormally warm to the touch - and almost as if the nanites had been waiting for a signal, a wave of change runs over the young woman's body before your very eyes.";
		say "     Diana's breasts fill out a little right under your fingers; still just a handful, but reaching a solid claim to B-cups, at the same time as silky smooth white fur sprouts from her skin. The edge of her feline characteristics wanders down from her shoulders, passing over those beautiful breasts to come to a halt above her ribs. Further down, you can see something similar happen to her legs, with more fluffy blue fur spreading to cover all of her legs, followed by the change washing over her crotch. With one hand still resting on her sex, you can literally feel it adjust under your touch, subtly changing in shape and size. The transformation stops right beneath her navel, meaning that of the original human woman, just her midriff remains as it once was. Blinking in shock, Diana trembles as she wraps her arms around you to hold on to.";
		WaitLineBreak;
		say "     The young woman stares down at herself and says in a frightened tone, 'Oh no, I keep changing! I'm gonna become some sort of hideous mon-ompphh!' Your lips meeting hers stop the flood of words after you decide to yourself that you want to reassure the young woman (or maybe just wanted to shut her up?). After a pleasant little while during which she forgets everything but the sensations of making out with you, you pull back from the attractive hybrid girl and tell her that [italic type]she[roman type] is what counts, not her body or the specifics of her looks. Besides which, she has a quite nice and exotic body now, which is a good thing too. Diana just eats up your words, putting a lot of faith in a person she met only a little while ago and let claim her virginity. Arms wrapping around you, the naked young woman gives you a tight hug and says, 'Thank you so much. I'll take those words to heart. And... this was fun. A bit scandalous, but I kinda like that, if I think about it now.'";
		say "     Turning her head to look over to the spectators still watching the two of you, Diana hesitates for a second, then finds her voice and calls out, 'Okay, show's over folks. Go about your business.' With that said, she quickly collects her clothes from the ground and gets dressed again, with the little group of voyeurs melting away before much longer. 'You're amazing, you know that?' Diana says with a happy smile, then leans in to kiss you on the lips before stroking your cheek. 'I think I'll need some alone-time in the bookstore now to calm down from all of this. Can't come back to Nana and the others too soon, and smelling all aroused. See you soon.' With that said, Diana gives you a little wave of goodbye and walks out of the side passage.";
		now DianaTransformationProgress is 1; [gryphon to the navel, human belly, cat to the breasts]
	else:
		say "Being fairly new to the sensations you are giving her, Diana can't hold on to her composure much longer. All of a sudden, she opens her eyes wide and looks down at you with boundless lust, and reaches down to push your fingers even deeper into her pussy.";
		say "     With a squeal that speaks of lust boiling over, Diana finally climaxes, squirting femcum over your thrusting hand and the lower half of your face. As she pants loudly and clutches on to your shoulders, you hear a few laughs and quiet cheers from the main hallway too - seems like your spectators enjoyed the show. Becoming aware of the fact that the two of you were watched, your female friend glances over to them with a shocked expression, yet before she can say anything you lick her clit once again and only a moan comes out of her mouth. This draws the feline's gaze back to you and arouses the feline yet again, so instead of freaking out over giving a public show, she just bites her lip and only throws a sidelong glance or two to the watching people while you suckle on clit and lick up Diana's femcum.";
		WaitLineBreak;
		say "     You spend some more time servicing Diana with your mouth and fingers, drawing out her arousal and giving the young woman a truly memorable experience. Her squeals and moans continue to fill the little side corridor for a little while, until she finally reaches down and gently tugs on you to rise. 'That was amazing!' Diana says in a breathless tone, and as you come to stand before her, you notice that she isn't actually winding down, but rather pants quicker moment by moment. 'I - I feel really hot,' the young woman says with a somewhat worried expression, fanning herself with both hands and pulling off her t-shirt in a try to gain relief from the heat. Curious and still a little adventurous, even after having already made Diana cum in public, you reach out and lay a hand on her chest, feeling the softly furred curve of her B-cup breasts and giving them a little squeeze. She really does feel abnormally warm to the touch - and almost as if the nanites had been waiting for a signal, a wave of change runs over the young woman's body before your very eyes.";
		say "     Diana's breasts fill out further right under your fingers; now curving enough to be reach the C-cup status, at the same time as more silky smooth white fur sprouts from her skin. The edge of Diana's feline characteristics wanders down over her ribs and her flat tummy, to meet a wave of blue fur going the other way. As her last vestiges of human physiology are transformed, the two nanite infections do not seem to actually compete, but rather overlap. An inch or two of the blue gryphon fur turns white to match the color of Diana's feline half, while the white fur above the intersection line becomes a little longer, like on her legs. Blinking in shock as she stops being at least a little human, Diana trembles as she wraps her arms around you to hold on to.";
		WaitLineBreak;
		say "     The young woman stares down at herself and says, 'I - I guess I knew it was coming sometime, but... now I'm really no longer human in any way. And is this normal? Mixing one and another type of infection? I thought only the stronger one won out.' You can hear from the tone of her voice that she is trying to be brave, but even so the continuing transformations have Diana rather on the edge. Therefore, you do the next best thing that comes to mind to calm her nerves - planting a kiss on her lips and starting to make out with her. Sharing a pleasant little of mutual kissing and being held, she forgets her worries for now. When you eventually pull back and catch your breath, you put as much conviction as you can in a reminder that [italic type]she[roman type] is what counts, not her body or the specifics of her looks. Also, it may be quite nice if the nanites aren't just doing 'the usual' with her - she'll be beautiful and exotic, even in the multitude of species now living in the mall.";
		say "     Diana happily accepts your words and viewpoint, still eager to put a lot of faith in the person she met only a little while ago and let claim her virginity. Arms wrapping around you, the naked young woman gives you a tight hug and says, 'Thank you so much. I'll take those words to heart. And... this was fun. A bit scandalous, but I kinda like that, if I think about it now.' Turning her head to look over to the spectators still watching the two of you, Diana hesitates for a second, then finds her voice and calls out, 'Okay, show's over folks. Go about your business.' With that said, she quickly collects her clothes from the ground and gets dressed again, with the little group of voyeurs melting away before much longer. 'You're amazing, you know that?' Diana says with a happy smile, then leans in to kiss you on the lips before stroking your cheek. 'I think I'll need some alone-time in the bookstore now to calm down from all of this. Can't come back to Nana and the others too soon, and smelling all aroused. See you soon.' With that said, Diana gives you a little wave of goodbye and walks out of the side passage.";
		now DianaTransformationProgress is 2; [gryphon/cat transformations met, starting to overlap]
	now DianaRelationship is 11; [public cunnilingus done]
	now Resolution of Mall Optitian is 3; [public oral]
	now Mall Optitian is resolved;

Diana ends here.
