Version 1 of Diana by Wahn begins here.

[ HP of Diana                                                ]
[   0: not met                                               ]
[   1: player gave her a pep talk                            ]
[  10: player took her virginity                             ]
[  11: player took her virginity + public cunnilingus        ]
[ 100: freaked out                                           ]
[ 101: player ignored her                                    ]

[ Libido of Diana [Transformation Progress]                  ]
[   0: gryphon legs, human middle, cat head                  ]
[   1: gryphon to the navel, human belly, cat to the breasts ]
[   2: gryphon/cat transformations met, starting to overlap  ]
[   3: complete overlap of gryphon/cat -> anthro sphinx look ]

a postimport rule:
	if HP of Diana is 0: ["new" variables untouched - resetting her]
		now Dressing Room Crisis is not resolved;
		now Mall Optician is not resolved;

Section 1 - Events

Table of GameEventIDs (continued)
Object	Name
Dressing Room Crisis	"Dressing Room Crisis"

Dressing Room Crisis is a situation.
ResolveFunction of Dressing Room Crisis is "[ResolveEvent Dressing Room Crisis]".
Sarea of Dressing Room Crisis is "Smith Haven".
The PrereqTime of Dressing Room Crisis is "Day".

when play begins:
	add Dressing Room Crisis to BadSpots of FurryList;

to say ResolveEvent Dressing Room Crisis:
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
		say "     Announcing yourself with a gentle knock on the wooden divider, you hear the sobs stop after a second or two, followed by a frightened little voice asking, 'W-who's there?' Introducing yourself in a supportive tone, you ask her for her name and why she's so distraught, sobbing to herself alone in a little booth. 'I'm Diana,' she says, still sounding timid. You can hear some rustling of cloth before the curtain is drawn back. Now in view, the young woman straightens her tight black t-shirt and smoothens out her blue, not quite knee-length skirt. She is a hybrid of three species: the body is human overall, Caucasian and with pale skin, but she has the clawed feet of a gryphon, with light blue fur having spread up her legs and vanishing under her skirt. Above, her body is crowned by a feline head that shows the typical coloration of a Siamese cat, with black fur on her face and ears that lightens to white on the rest of her head and neck, anything further down hidden by her shirt.";
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
			now HP of Diana is 1; [player gave her a pep talk]
			now Resolution of Dressing Room Crisis is 1; [talked]
		else if calcnumber is 2: [make a move on her]
			LineBreak;
			say "     Stepping up into the dressing booth and reaching out to gently stroke her cheek, you tell Diana that she's got it all wrong - everyone would love to be with a cute girl like her, if she just gave them a chance. 'I - um, do you really mean that?' the shy young woman replies, wiping her eyes and looking at you in surprise. You smile back at her and tell her you do, putting your arms around Diana and holding her. [if Player is not male]'B-but you're a girl! Does that mean... oh! So you're a... Um, I have been curious about being with women, to be honest.' [end if]When she relaxes a little into your embrace, you slide a finger under her chin to tilt her head up, then kiss the young woman, making her almost melt into your touch. Spellbound by the sensual contact, Diana attempts to return the favor, her feline tongue parting your lips to entwine with your own. What she lacks in experience, she more than makes up for in lustful enthusiasm, the hybrid's curvy form pressing against you as she purrs with need in her throat.";
			say "     Reaching behind your back, you quietly draw the curtain closed, then continue to make out with your new friend. Diana readily allows you to follow up by sliding your hands under her top, caressing her breasts and then inching the article of clothing up, soon pulling it off over her head. Her fur extends down to the start of her shoulders, where it meshes with flawless pale skin. Her firm, A cup breasts make it easy to cover one with each of your hands, caressing the young woman. While petite, Diana's breasts prove very sensitive, her nipples growing hard after just a little pinch. When you lower your head and give them an eager lick, the hybrid girl gasps out. 'That feels really good,' she admits in a breathless voice, moaning loudly when you start to alternate your attention between each of her breasts in turn, your tongue lashing over the sensitive flesh of her mounds.";
			WaitLineBreak;
			say "     In her unfamiliar state of sizzling arousal, Diana is more than eager to do anything to keep going, so when your hands start searching for the zipper of her skirt, she guides them to it, allowing you to pull it down. Leaning back a little to have a good look at the hybrid as the fabric around her hips falls away, you see that the slender young woman has blue fur on the insides of her thighs, reaching almost halfway up to where her feminine sex lies hidden by a pair of thin pink panties. You give Diana an encouraging smile and tell her how beautiful she is, then kiss her again before sinking to your knees before her. Looking up at her wide-eyed face, you hook two fingers over the elastic of her underwear and pull it down in one smooth motion, finally stripping her completely bare. Diana bites her lower lip, ashamed at letting herself be exposed like this, then gives a cute little squeak as you bring your face against her sex and give it a lick.";
			say "     'Nnnghh. Please - Please just keep going,' she pants out, her hands moving cautiously to rest on your shoulders, lusting for your contact. Lapping along the edges of her sensitive nether lips a few times, you soon direct your attention to her clit, encircling it with the tip of your tongue a few times before sweeping the flat of that warm, slick muscle against it repeatedly, your merciless assault on her senses making Diana tremble and moan with desire. She sucks a sharp breath through her teeth when your lips clamp down over her button, overwhelming her with a sudden wave of arousal. 'F-Fuck, yes!' Diana gasps out, grinding against your face as her lusts soar. Before long, the young woman's legs start to grow a little wobbly from your relentless oral stimulation, and she sighs, 'I - I think I need to sit down.' Smiling in understanding, you let go of her hips and watch her take a step or two back, then sit down on the little bench in the booth. Once she's settled, you take your place between her legs again and return to pleasuring her mound.";
			WaitLineBreak;
			if Player is male:
				say "     After a little more time of playing around with your new friend, you look up and see her leaning back against the dressing booth wall, eyes closed and just giving in to all of the feelings you have awakened in her. Which makes it just the perfect time to stand up and release the hard length of your [Cock of Player] shaft from the tight confines of your clothes. Hard cock in hand, you bend your knees a little and brush it over Diana's sex, drawing a moan from her, then slip the head in between her nether lips before she knows what is going on. You grunt in satisfaction as the warm and wet cave of her sex enfolds your shaft, the desire to ram deep into her burning on your soul. Then suddenly, you encounter a little bit of resistance - not from Diana, but rather a flexible membrane in her otherwise so eager pussy. The girl is a virgin!";
				say "     As you bump her hymen and pause, Diana's eyes shoot open, her blue, cat-like irises catching your gaze in an intense look. Swallowing, you start to ask if she wants you to go ahead, but before the question has even left your lips, she lets out a deep mrowl, filled with animalistic need. The next thing that happens is that Diana humps her hips towards your crotch, spearing herself on your shaft and wrapping both legs around your body. A little yowl escapes her lips at the momentary pain of losing her cherry, to be replaced by an eager moan as you do the natural thing and push into her the rest of the way. Diana's arms wrap around your shoulders and she meets your lips in a hungry kiss, purring pleasantly from the depths of her throat. The two of you need no words to understand each other after that, your bodies doing the talking for you - from the way her legs push against your ass, to your own exploration of her mouth with your tongue and the young woman's fingernails raking your back to urge you to fuck her harder.";
				WaitLineBreak;
				say "     Fucking Diana is wild, to give it a name, even though the word barely covers just how enthusiastic the little sex-kitten takes to having a dick inside her. She wraps herself around you tightly, both with her sweet little pussy as well as arms and legs, clinging to your body in relentless desire. You can't even pause and get a breather, as Diana will just grind herself against you from beneath, riding your dick for her own pleasure. With such non-stop stimulation, it is little wonder that your hybrid partner reaches the place she is rushing to reach before much longer, fingernails digging into your back and pussy twitching around your shaft as she climaxes. The trembling of her sex around your member and her continuing grinding push you over the edge just moments later, and you start to pump your potent load deep into her receptive body, spurt after spurt flooding Diana's pussy and womb.";
				NPCSexAftermath Diana receives "PussyFuck" from Player;
				say "     With the tight grip of the young woman's arms slackening as she rides out the high of her orgasm, Diana comes to lean against the wall of the dressing booth. Yet even as her arousal winds down after a little while, her breathing stays at the same quick pace and you can see a flush pass over the naked skin of her human body, with the furred parts having their hair stand on end. 'I - I feel really hot,' the young woman says in a breathless tone and fans her chest with both hands. Curious and still a little adventurous, even after having already filled her with your load, you reach out and lay a hand on her chest, feeling the curve of her petite breasts and giving them a little squeeze. She really does feel abnormally warm to the touch - and almost as if the nanites had been waiting for a signal, a wave of change runs over the young woman's body before your very eyes.";
				WaitLineBreak;
				say "     Diana's breasts fill out a little right under your fingers; still just a handful, but reaching a solid claim to B-cups, at the same time as silky smooth white fur sprouts from her skin. The edge of her feline characteristics wanders down from her shoulders, passing over those beautiful breasts to come to a halt above her ribs. Against your hips, you can feel something similar happen to her legs, with more fluffy blue fur spreading to cover all of her legs, followed by the change washing over her crotch. With your slowly softening shaft still embedded inside her sex, you can literally feel it adjust around you, subtly changing in shape and size to almost mold itself to you. The transformation stops right beneath her navel, meaning that of the original human woman, just her midriff remains as it once was. Blinking in shock, Diana pushes herself back to sit on the bench, her pussy slipping off your member in a little gush of cum.";
				say "     The young woman stares down at herself and says in a frightened tone, 'Oh no, I keep changing! I'm gonna become some sort of hideous mon-ompphh!' Your lips meeting hers stop the flood of words after you decide to yourself that you want to reassure the young woman (or maybe just wanted to shut her up?). After a pleasant little while during which she forgets everything but the sensations of making out with you, you pull back from the attractive hybrid girl and tell her that [italic type]she[roman type] is what counts, not her body or the specifics of her looks. Besides which, she has a quite nice and exotic body now, which is a good thing too. Diana just eats up your words, putting a lot of faith in a person she just met and let claim her virginity. Arms wrapping around you, the naked young woman gives you a tight hug and says, 'Thank you so much. I'll take those words to heart. And... I had a lot of fun with you!'";
				WaitLineBreak;
				say "     The smiling Siamese-gryphon hybrid looks at you with adoration and delight clearly written on her face, as if trying to engrave your features into her memory, then suddenly blinks and glances at the drawn curtain, thinking of the rest of the mall for the first time since you stepped into her life. 'Oh! I should get back to the others, they might worry where I am for so long. The group of refugees I'm staying with, I mean. We're housed in the optician in the west wing, in case you want to... come visit me sometime. I hope you do.' She gives you a dreamy smile, then slides herself out from between you and the dressing booth wall, quickly collecting her clothes and pulling them on. Moments later, Diana plants a peck on your cheek, then ducks behind the curtain and is gone.";
			else: [oral for everyone else]
				say "     After a little more time of playing around with your new friend, you look up and see her leaning back against the dressing booth wall, eyes closed and just giving in to all of the feelings you have awakened in her. Which makes it just the perfect to raise your hand and lay it on her sex, stroking your fingers over the sensitive folds of your new friend. Diana lets out a little sigh as you nudge apart her nether lips, then slip two fingers in between them, pushing your fingers deeper - until you suddenly encounter a little bit of resistance - not from Diana, but rather a flexible membrane in her otherwise so eager pussy. The girl is a virgin! As you bump her hymen and pause, Diana's eyes shoot open, her blue, cat-like irises catching your gaze in an intense look. Swallowing, you start to ask if she wants you to go ahead, but before the question has even left your lips, she lets out a deep mrowl, filled with animalistic need.";
				say "     Overtaken by lust, Diana thrusts her hips forth in an impulsive, needy gesture, spearing herself on your probing fingers and wrapping both legs around your upper body. A little yowl escapes her lips at the momentary pain of breaking her own cherry like that, to be replaced by an eager moan as you wiggle your fingers inside of her. Clearly, the young woman is more pent up than you had expected, so you do your best to give her what she needs, frigging her pussy with your fingers while using your other hand to caress the clit above. Having someone to rub and fondle her, with total focus on getting her off, Diana bucks under your touch and gasps out the sweetest sighs and meows as you experiment a little and find just the right ways to wind her up. Having been a virgin until just a few minutes ago, the stimulation is enough to rapidly drive her over the edge, shouting out loud as she comes, her inner muscles twitching around your fingers and a trickle of femcum leaking out of her.";
				NPCSexAftermath Player receives "OralPussy" from Diana;
				now Virgin of Diana is false;
				say "     [Bold Type]You have taken Diana's virginity with your fingers![roman type][line break]";
				add "Diana" to VirginitiesTaken of Player;
				WaitLineBreak;
				say "     With the strength of her legs wrapped around you slackening as she rides out the high of her orgasm, Diana comes to lean against the wall of the dressing booth. Yet even as her arousal winds down after a little while, her breathing stays at the same quick pace and you can see a flush pass over the naked skin of her human body, with the furred parts having their hair stand on end. 'I - I feel really hot,' the young woman says in a breathless tone and fans her chest with both hands. Curious and still a little adventurous, even after having already fingered her to orgasm, you reach out and lay a hand on her chest, feeling the curve of her petite breasts and giving them a little squeeze. She really does feel abnormally warm to the touch - and almost as if the nanites had been waiting for a signal, a wave of change runs over the young woman's body before your very eyes.";
				say "     Diana's breasts fill out a little right under your fingers; still just a handful, but reaching a solid claim to B-cups, at the same time as silky smooth white fur sprouts from her skin. The edge of her feline characteristics wanders down from her shoulders, passing over those beautiful breasts to come to a halt above her ribs. Against your sides, you can feel something similar happen to her legs, with more fluffy blue fur spreading to cover all of her legs, followed by the change washing over her crotch. With your hand still resting on her sex, you can literally feel it adjust under your touch, subtly changing in shape and size. The transformation stops right beneath her navel, meaning that of the original human woman, just her midriff remains as it once was. Blinking in shock, Diana pushes herself back to sit on the bench, her pussy slipping off your member in a little gush of cum.";
				WaitLineBreak;
				say "     The young woman stares down at herself and says in a frightened tone, 'Oh no, I keep changing! I'm gonna become some sort of hideous mon-ompphh!' Your lips meeting hers stop the flood of words after you decide to yourself that you want to reassure the young woman (or maybe just wanted to shut her up?). After a pleasant little while during which she forgets everything but the sensations of making out with you, you pull back from the attractive hybrid girl and tell her that [italic type]she[roman type] is what counts, not her body or the specifics of her looks. Besides which, she has a quite nice and exotic body now, which is a good thing too. Diana just eats up your words, putting a lot of faith in a person she just met and let claim her virginity. Arms wrapping around you, the naked young woman gives you a tight hug and says, 'Thank you so much. I'll take those words to heart. And... I had a lot of fun with you!'";
				say "     The smiling Siamese-gryphon hybrid looks at you with adoration and delight clearly written on her face, as if trying to engrave your features into her memory, then suddenly blinks and glances at the drawn curtain, thinking of the rest of the mall for the first time since you stepped into her life. 'Oh! I should get back to the others, they might worry where I am for so long. The group of refugees I'm staying with, I mean. We're housed in the optician in the west wing, in case you want to... come visit me sometime. I hope you do.' She gives you a dreamy smile, then slides herself out from between you and the dressing booth wall, quickly collecting her clothes and pulling them on. Moments later, Diana plants a peck on your cheek, then ducks behind the curtain and is gone.";
			now Libido of Diana is 1;
			now HP of Diana is 10; [player took her virginity]
			now Resolution of Dressing Room Crisis is 2; [fucked]
		else if calcnumber is 3: [suggest putting on a paper bag - you monster!]
			LineBreak;
			say "     Stepping up into the dressing booth and reaching out to stroke her cheek, you tell Diana that she's actually got things quite wrong - a lot of people would love to get to know a cute girl like her quite closely. 'I - um, do you really mean that?' the shy young woman replies, wiping her eyes and looking at you in surprise. You smile lustily at her and tell her that you do, then let your gaze wander down to the small-ish bumps of her breasts and the slender physique of her body. Adding that guys would surely love to take her for a spin, you casually mention that a paper bag would always be an option if she feels so bad about her head - as long as her pussy is still accessible. This creates a completely gob-smacked expression on Diana's face, followed by a deep red flush and her shouting, 'You - you pig!' And with that, she gives your face a full-force slap that leaves your cheek red and stinging, then slips past you, running out of the store and sobbing all the way.";
			now HP of Diana is 100; [freaked out]
			now Resolution of Dressing Room Crisis is 99; [freaked]
		now PlayerMet of Diana is true;
	else if calcnumber is 2:
		LineBreak;
		say "     Grabbing a handful of the dark blue curtain, you wrench it aside to reveal a young woman who is a hybrid of three species. Her body is human overall, Caucasian and with pale skin, but she has the clawed feet of a gryphon, with light blue fur having spread halfway up her thighs. On the other end, her body is crowned by a feline head that shows the typical coloring of a Siamese cat, with black fur on her face and ears that lightens to white on the rest of her head and shoulders, where the fur thins out and stops. The hybrid female is naked, apparently having been in the middle of checking out her mixed-together form. Your sudden intrusion makes her whirl around in shock, scream and then snatch up her clothes, dashing past you without a second's pause. She runs from the store, naked as she is, with one arm covering her petite breasts, the other clutching an armful of fabric. As she runs down the corridor outside, you hear her sob and shout, 'Don't look at me!'";
		say "     Well, seems like that wasn't the best approach for a distressed young woman. You did get a nice view of all of her assets, but was that really worth putting the poor girl through even more of a shock?";
		now HP of Diana is 100; [freaked out]
		now Resolution of Dressing Room Crisis is 99; [freaked]
	else if calcnumber is 3:
		LineBreak;
		say "     With a shrug, you turn around and walk away, leaving whoever is in that dressing room to deal with their own problems.";
		now HP of Diana is 101; [player ignored her]
		now Resolution of Dressing Room Crisis is 100; [ignored]
	now Dressing Room Crisis is resolved;

Table of GameEventIDs (continued)
Object	Name
Mall Optician	"Mall Optician"

Mall Optician is a situation.
ResolveFunction of Mall Optician is "[ResolveEvent Mall Optician]".
Prereq1 of Mall Optician is Dressing Room Crisis.
The Prereq1Resolution of Mall Optician is { 1, 2 }.
The PrereqTime of Mall Optician is "Day".
Sarea of Mall Optician is "Smith Haven".

to say ResolveEvent Mall Optician:
	say "     Strolling through the hallways of the expansive Smith Haven Mall, your way brings you to the west wing and you remember what Diana said about living in an optician store somewhere hereabouts. Checking out one of the large floor-plans of the mall standing a certain places, you figure out just where you need to go and swing by to check the place out. Soon, you see the glass front of the store a little distance ahead, its doors open and a number of people visible inside. For a second, you think you're in the wrong place after all, as the men and women inside all seem to be senior citizens in the beginning states of transformation: mostly showing some characteristics of dog- and cat-morphs, but you can also see one woman with rainbow-colored feathers lining the sides of her arms. Then suddenly, Diana comes into sight, stepping out behind a large display of sunglasses, together with an old woman who has white fur like a Siamese cat, pointy feline ears and a long tail.";
	say "     Walking closer, you overhear the old woman say, '...hope you'll have fun at the bookstore sweetie. Maybe you'll meet some new friends too.' Leaning forward, the pats Diana's head and kisses her forehead, smiling as the young woman replies, 'Maybe I will Nana. See you later.' The happy young woman walks out of the store after that, quickly spotting you and coming up to you with a smile on her face. An eye-blink later, you find yourself embraced by the feline/human/gryphon hybrid girl, and she says, 'Hello[if Player is not defaultnamed] [name of Player][end if], what a nice surprise to see you again! Come on, let's go to the bookstore together!' Before you really know what's going on, Diana has already dragged you along with her, leaving the optician (and especially its various inhabitants that were giving you curious glances) behind.";
	WaitLineBreak;
	say "     As soon as you are securely out of sight from her home, Diana's urgency ebbs a little and she guides you a few steps into a seemingly unused side passage that is out of the way of the bustling crowd filling the main hallways. [if HP of Diana is 10]She gives you an eager kiss, [else]She smiles at you, [end if]then says, 'Sorry for the sudden rush, but I had to talk to you before you meet my friends. Could you... maybe not tell them just how we met? Me freaking out about the transformations and all that? I - I think I caught the cat thing from Nana Simpson and don't want to make her feel bad about it. She is so incredibly nice and was the best friend of my own grandma before she died. It's not her fault if she is a bit... touchy feely. That's why I couldn't talk to her or any of the others and ended up alone in that dressing room - until you came along.' She blushes a little as she says this, then gives you a hopeful smile that leads up to a full-on hug when you agree to edit the story of your first meeting a bit.";
	say "     'Thanks! You're a lifesaver. How about... err, we met in the Brookstone Books store and liked the same books? That should be innocent enough and easy to remember.' The young woman nods to herself and then glances at her wristwatch, 'So. Now that that's out of the way, wanna hang out? The bookstore really is a nice place, even in our current situation. Or we can talk about anything you want.'";
	say "[Diana_MallOptician_TalkMenu]";

to say Diana_MallOptician_TalkMenu:
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Ask her about herself"):
					say "[DianaTalk1]";
				else if (nam is "Ask what she is doing at the mall"):
					say "[DianaTalk2]";
				else if (nam is "Ask about her friends"):
					say "[DianaTalk3]";
				else if (nam is "Hang out at the bookstore together"):
					say "[DianaTalk4]";
				else if (nam is "Ask when you can see her again"):
					say "[Diana_RegularTalk4]";
				else if (nam is "Crouch down in front of her and eat her out"):
					say "[DianaOral1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You tell the young woman that you don't have time to hang out with her right now and say your goodbyes.";
			now Mall Optician is resolved;
			if Resolution of Mall Optician is 0:
				now Resolution of Mall Optician is 1; [just talk]
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;


to say DianaTalk1: [Ask her about herself]
	say "     'Okay sure, I can tell you a bit about myself,' Diana says with a smile and thinks for a second on how to begin, then shrugs and adds, 'My name is Diana Hunter, I'm eighteen and I live in the Brentwood neighborhood. Well, 'lived' is more accurate these days I guess. Last I saw, there is a forest growing there now.' She grimaces a bit at the thought of her home being gone for good, then pushes on to explain, 'Thank god my parents and brother weren't actually there when all of this started - they're on holiday in Greece right now. A trip I didn't want to go on. Perfect decision, eh?' Looking down at herself, the young woman draws in a breath, then lets it out slowly and nods to you. 'No worries, I'm not gonna go into a funk again about having been transformed. You were right about that. It really is a nice and interesting look, if one looks at it from the right perspective. Somewhat funny too, if I tell you what mom and dad named my brother - it's Apollo.'";
	say "     Smiling at you expectantly, Diana says after a moment, 'You know, the Roman name for the god of art and beauty? Just like I am named for Diana, the huntress. Hah, Diana Hunter. I guess they were a bit too cute in their choice of names. One might count it as tempting fate, really. In the stories about the Olympians, people constantly got transformed left and right for pissing off the gods in even the slightest ways.' Her eyes get a far-away look for a moment as she imagines her parents seeing her like this, then she shrugs, 'If we make it through all of this, I guess I'll learn if they can deal with a daughter that might be straight from one of the myths.'";
	say "[Diana_MallOptician_TalkMenu]"; [looping back into the menu to talk to her at the player's heart's content]

to say DianaTalk2: [Ask what she is doing at the mall]
	say "     'Oh, like so many others, I fled here to the mall when things started to get weird. By that time, the police wasn't even answering calls anymore and I'd seen a wyvern fly over the neighborhood. The Internet was still up back then and I read in a chat with classmates that the mall was supposed to be well-guarded, so me and the others decided to come here.' Diana draws a grimace, and the next words are said in a glum tone, 'I don't think any of them made it. Or maybe I just haven't found or even recognized any of them in the masses of refugees here.' You see in her eyes that she doesn't really believe it, even though she is trying to tell herself otherwise.";
	say "[Diana_MallOptician_TalkMenu]"; [looping back into the menu to talk to her at the player's heart's content]

to say DianaTalk3: [Ask about her friends]
	say "     'Nana Simpson and the others, you mean? They are from the Brentwood Assisted Living Center. I've been volunteering there regularly since getting to know them during visits with my grandma. She... isn't with us anymore, but that didn't mean I was gonna stop going,' Diana says, full of civic spirit. Her expression darkens slightly as she goes on to say, 'When things became really bad in the city and my classmates and me chatted about fleeing to the mall, I couldn't just abandon them either. The center was on the way anyways.' You can tell from the overly quick way in which she said this that it really wasn't - she must have gone out of her way to gather these old people and shepherd them to the mall, which must have been a harrowing experience, given everything going on out on the streets. Diana is just trying to downplay and justify her selfless acts.";
	say "     'When I got to the center, they were all alone. The caregivers had fled already, but thankfully nothing bad had happened yet. So I told everyone to give their pets as much food as possible because we couldn't take them along, then gathered them up and we started a trek to the mall. Quite a dicey trip - we got jumped twice. The first time was a whole pack of strange rubbery creatures,' Diana mimes her group moving down a street, with numerous creatures swarming all around them and finally pouncing from all sides. 'Strangely, they weren't even interested in us, but rather the motorized mobility aids some of the folks were using. They started eating the wheels! From then on, it was a trip on foot the rest of the way.'";
	WaitLineBreak;
	say "     'We almost got here without further incidents, but I guess I must have let down my guard when I saw the mall in the distance. Didn't look up often enough, and a gryphon swooped down on the group as we were crossing a street. He threw me down and grabbed me by the ankle, no doubt to spread my legs and rape me, but I got him in the face with this.' With that said, Diana pulls a red and yellow spray-can out of her pocket, just large enough to fit in her palm. She shakes it and listens to the sound, then adds, 'Not much left in this pepper-spray sadly, so I hope I won't have to use it again. Anyways, once the gryphon fled, we made it into the mall alright. As for the optician as our new place to stay - well, it's a spot that everyone knew, so the folks are unlikely to get lost.'";
	say "[Diana_MallOptician_TalkMenu]"; [looping back into the menu to talk to her at the player's heart's content]

to say DianaTalk4: [hang out at the bookstore]
	say "     You accompany Diana to the East Wing of the Smith Haven Mall and go into Brookstone Books together The bookstore is a nice little oasis of peace in the midst of the bustling mall and the chaos-ridden city, allowing the two of you to browse and talk about books, your lives and the world in general. Overall, you have a fun and relaxing time together, making you feel more in touch with your humanity than before. When you come out of the bookstore again hours later, smiling and laughing, Diana gives you a tight hug, then waves goodbye and leaves for her current home.";
	SanBoost 15;
	follow the turnpass rule; [time advanced]
	now Mall Optician is resolved;
	now Resolution of Mall Optician is 2; [hung out at the book store]

to say DianaOral1: [Eat her out in public]
	say "     Stepping up close to Diana, you gently push her back against the wall and tell her in a teasing tone that you got another idea what you could do together. The young woman looks surprised, but at the same time intrigued by the sudden implication of a more racy way to pass the time. 'Oh, what's that?' the young woman asks with a smile on her face and one eyebrow raised. In reply, you just grin and sink to your knees, hooking your fingers over the elastic of her skirt, pulling it down and exposing her panties. 'What?! You can't do that here! Someone might -' Diana's shocked outburst is interrupted by a high-pitched gasp as you pull her panties down too and move to lap your tongue over her nether lips. 'Oh god, yes!' she pants loudly as the tip of your tongue plays with her clit a few seconds, then draws back from her exposed sex.";
	say "     With a grin on your face, you ask the young woman if you should continue, and she bites her lip, glancing towards the people constantly walking past your little side corridor, then gives a giggle and a nod, agreeing to the scandalous act. Smiling gleefully, you slide your lips over the small bump of her sensitive clit and give it a gentle suck, drawing a whimper from the young woman that she can only barely suppress. ";
	if HP of Diana is 1: [only gave her a pep talk before]
		say "Sliding your fingers in between the dripping wet folds of her sex, you start to finger your female friend, soon feeling the fleshy membrane of her hymen against the tips of the two fingers you have pushed inside her. The enticing knowledge that you're the first to take her in this way drives you to go all out in your stimulation of Diana's body, demonstrating the many things you can do with her and making the girl squeal and pant breathlessly. One thing is for sure - she'll have a truly memorable first time: in public, with you doing your utmost to drive her out of her mind with lust.";
	else:
		say "Sliding your fingers in between the dripping wet folds of her sex, you start to finger your female friend, feeling the remnants of her hymen that you so recently broke through. The enticing memory of being the first to take her drives you to go all out in your stimulation of Diana's body, demonstrating the many things you can do with her and making the girl squeal and pant breathlessly. One thing is for sure - she'll definitely remember this session of sex: in public, with you doing your utmost to drive her out of her mind with lust.";
	WaitLineBreak;
	say "     Sucking on the young hybrid's clit and fingering her mercilessly, her moans are music to your ears. Diana has by now closed her eyes and is completely focused on the feelings you are giving her, forgetting where she is and letting the sounds of her arousal out more freely. This of course doesn't fail to draw some of the passersby's attention, and as you glance to the side of the main mall hallway from time to time, you see a few persons stand there and watch with interest. Willing to give them a show as long as they stand back and don't try to join in, you give an impish grin and then go back to suckling on Diana's clit, raising the pitch of her squeals even further. ";
	if HP of Diana is 1: [only gave her a pep talk before]
		say "Being completely new to the sensations you are giving her, Diana can't hold on to her composure much longer. All of a sudden, she opens her eyes wide and looks down at you with boundless lust, and reaches down to push your fingers even deeper into her pussy. Of course, the sudden wrench forces your digits against her hymen, first stretching, then snapping right through it.";
		say "     With a squeal that encompasses both the boiling lust as well as the surprise of a little pain in losing her virginity, Diana finally climaxes, squirting femcum over your thrusting hand and the lower half of your face. As she pants loudly and clutches on to your shoulders, you hear a few laughs and quiet cheers from the main hallway too - seems like your spectators enjoyed the show. Becoming aware of the fact that the two of you were watched, your female friend glances over to them with a shocked expression, yet before she can say anything you lick her clit once again and only a moan comes out of her mouth. This draws the feline's gaze back to you and arouses the feline yet again, so instead of freaking out over giving a public show, she just bites her lip and only throws a sidelong glance or two to the watching people while you suckle on clit and lick up Diana's femcum.";
		WaitLineBreak;
		say "     You spend some more time servicing Diana with your mouth and fingers, drawing out her arousal and giving the young woman a truly memorable experience. Her squeals and moans continue to fill the little side corridor for a little while, until she finally reaches down and gently tugs on you to rise. 'That was amazing!' Diana says in a breathless tone, and as you come to stand before her, you notice that she isn't actually winding down, but rather pants quicker moment by moment. 'I - I feel really hot,' the young woman says with a somewhat worried expression, fanning herself with both hands and pulling off her t-shirt in a try to gain relief from the heat. Curious and still a little adventurous, even after having already made Diana cum in public, you reach out and lay a hand on her chest, feeling the curve of her petite breasts and giving them a little squeeze. She really does feel abnormally warm to the touch - and almost as if the nanites had been waiting for a signal, a wave of change runs over the young woman's body before your very eyes.";
		say "     Diana's breasts fill out a little right under your fingers; still just a handful, but reaching a solid claim to B-cups, at the same time as silky smooth white fur sprouts from her skin. The edge of her feline characteristics wanders down from her shoulders, passing over those beautiful breasts to come to a halt above her ribs. Further down, you can see something similar happen to her legs, with more fluffy blue fur spreading to cover all of her legs, followed by the change washing over her crotch. With one hand still resting on her sex, you can literally feel it adjust under your touch, subtly changing in shape and size. The transformation stops right beneath her navel, meaning that of the original human woman, just her midriff remains as it once was. Blinking in shock, Diana trembles as she wraps her arms around you to hold on to.";
		WaitLineBreak;
		say "     The young woman stares down at herself and says in a frightened tone, 'Oh no, I keep changing! I'm gonna become some sort of hideous mon-ompphh!' Your lips meeting hers stop the flood of words after you decide to yourself that you want to reassure the young woman (or maybe just wanted to shut her up?). After a pleasant little while during which she forgets everything but the sensations of making out with you, you pull back from the attractive hybrid girl and tell her that [italic type]she[roman type] is what counts, not her body or the specifics of her looks. Besides which, she has a quite nice and exotic body now, which is a good thing too. Diana just eats up your words, putting a lot of faith in a person she met only a little while ago and let claim her virginity. Arms wrapping around you, the naked young woman gives you a tight hug and says, 'Thank you so much. I'll take those words to heart. And... this was fun. A bit scandalous, but I kinda like that, if I think about it now.'";
		say "     Turning her head to look over to the spectators still watching the two of you, Diana hesitates for a second, then finds her voice and calls out, 'Okay, show's over folks. Go about your business.' With that said, she quickly collects her clothes from the ground and gets dressed again, with the little group of voyeurs melting away before much longer. 'You're amazing, you know that?' Diana says with a happy smile, then leans in to kiss you on the lips before stroking your cheek. 'I think I'll need some alone-time in the bookstore now to calm down from all of this. And to freshen up. Can't come back to Nana and the others too soon, and smelling like this. See you soon.' With that said, Diana gives you a little wave of goodbye and walks out of the side passage.";
		now Virgin of Diana is false;
		say "     [Bold Type]You have taken Diana's virginity with your fingers![roman type][line break]";
		add "Diana" to VirginitiesTaken of Player;
		now Libido of Diana is 1; [gryphon to the navel, human belly, cat to the breasts]
	else:
		say "Being fairly new to the sensations you are giving her, Diana can't hold on to her composure much longer. All of a sudden, she opens her eyes wide and looks down at you with boundless lust, and reaches down to push your fingers even deeper into her pussy.";
		say "     With a squeal that speaks of lust boiling over, Diana finally climaxes, squirting femcum over your thrusting hand and the lower half of your face. As she pants loudly and clutches on to your shoulders, you hear a few laughs and quiet cheers from the main hallway too - seems like your spectators enjoyed the show. Becoming aware of the fact that the two of you were watched, your female friend glances over to them with a shocked expression, yet before she can say anything you lick her clit once again and only a moan comes out of her mouth. This draws the feline's gaze back to you and arouses Diana yet again, so instead of freaking out over giving a public show, she just bites her lip and only throws a sidelong glance or two to the watching people while you suckle on clit and lick up Diana's femcum.";
		WaitLineBreak;
		say "     You spend some more time servicing Diana with your mouth and fingers, drawing out her arousal and giving the young woman a truly memorable experience. Her squeals and moans continue to fill the little side corridor for a little while, until she finally reaches down and gently tugs on you to rise. 'That was amazing!' Diana says in a breathless tone, and as you come to stand before her, you notice that she isn't actually winding down, but rather pants quicker moment by moment. 'I - I feel really hot,' the young woman says with a somewhat worried expression, fanning herself with both hands and pulling off her t-shirt in a try to gain relief from the heat. Curious and still a little adventurous, even after having already made Diana cum in public, you reach out and lay a hand on her chest, feeling the softly furred curve of her B-cup breasts and giving them a little squeeze. She really does feel abnormally warm to the touch - and almost as if the nanites had been waiting for a signal, a wave of change runs over the young woman's body before your very eyes.";
		say "     Diana's breasts fill out further right under your fingers; now curving enough to be reach the C-cup status, at the same time as more silky smooth white fur sprouts from her skin. The edge of Diana's feline characteristics wanders down over her ribs and her flat tummy, to meet a wave of blue fur going the other way. As her last vestiges of human physiology are transformed, the two nanite infections do not seem to actually compete, but rather overlap. An inch or two of the blue gryphon fur turns white to match the color of Diana's feline half, while the white fur above the intersection line becomes a little longer, like on her legs. Blinking in shock as she stops being at least a little human, Diana trembles as she wraps her arms around you to hold on to.";
		WaitLineBreak;
		say "     The young woman stares down at herself and says, 'I - I guess I knew it was coming sometime, but... now I'm really no longer human in any way. And is this normal? Mixing one and another type of infection? I thought only the stronger one won out.' You can hear from the tone of her voice that she is trying to be brave, but even so the continuing transformations have Diana rather on the edge. Therefore, you do the next best thing that comes to mind to calm her nerves - planting a kiss on her lips and starting to make out with her. Sharing a pleasant little time of mutual kissing and being held, she forgets her worries for now. When you eventually pull back and catch your breath, you put as much conviction as you can in a reminder that [italic type]she[roman type] is what counts, not her body or the specifics of her looks. Also, it may be quite nice if the nanites aren't just doing 'the usual' with her - she'll be beautiful and exotic, even in the multitude of species now living in the mall.";
		say "     Diana happily accepts your words and viewpoint, still eager to put a lot of faith in the person she met only a little while ago and let claim her virginity. Arms wrapping around you, the naked young woman gives you a tight hug and says, 'Thank you so much. I'll take those words to heart. And... this was fun. A bit scandalous, but I kinda like that, if I think about it now.' Turning her head to look over to the spectators still watching the two of you, Diana hesitates for a second, then finds her voice and calls out, 'Okay, show's over folks. Go about your business.' With that said, she quickly collects her clothes from the ground and gets dressed again, with the little group of voyeurs melting away before much longer. 'You're amazing, you know that?' Diana says with a happy smile, then leans in to kiss you on the lips before stroking your cheek. 'I think I'll need some alone-time in the bookstore now to calm down from all of this. And to freshen up. Can't come back to Nana and the others too soon, and smelling like this. See you soon.' With that said, Diana gives you a little wave of goodbye and walks out of the side passage.";
		now Libido of Diana is 2; [gryphon/cat transformations met, starting to overlap]
	now HP of Diana is 11; [public cunnilingus done]
	now Resolution of Mall Optician is 3; [public oral]
	NPCSexAftermath Player receives "OralPussy" from Diana;
	now Mall Optician is resolved;

Section 2 - NPC


Table of GameCharacterIDs (continued)
object	name
Diana	"Diana"

Diana is a woman.
ScaleValue of Diana is 3. [human sized]
Body Weight of Diana is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Diana is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Diana is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Diana is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Diana is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Diana is 4. [length in inches]
Breast Size of Diana is 2. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Diana is 2. [count of nipples]
Asshole Depth of Diana is 8. [inches deep for anal fucking]
Asshole Tightness of Diana is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Diana is 0. [number of cocks]
Cock Girth of Diana is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Diana is 0. [length in inches]
Ball Count of Diana is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Diana is 2. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Diana is 1. [number of cunts]
Cunt Depth of Diana is 8. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Diana is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Diana is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Diana is false.
PlayerRomanced of Diana is false.
PlayerFriended of Diana is false.
PlayerControlled of Diana is false.
PlayerFucked of Diana is false.
OralVirgin of Diana is false.
Virgin of Diana is true.
AnalVirgin of Diana is true.
PenileVirgin of Diana is true.
SexuallyExperienced of Diana is true.
TwistedCapacity of Diana is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Diana is false. [steriles can't knock people up]
MainInfection of Diana is "Sphinx".
Description of Diana is "[Dianadesc]".
Conversation of Diana is { "Meep!" }.

to say Dianadesc:
	if Libido of Diana is 0: [gryphon legs, human middle, cat head]
		say "     Diana is a young woman who seems to have caught both a Siamese cat infection, which has made her head into that of a white-furred anthro cat, as well as the blue gryphon infection, judging by the blue lion's fur covering two digitigrade legs down to her clawed paws. She has gotten more confident about herself recently, coming quite far from the girl you found crying in a dressing room in your first encounter. Apparently [if Resolution of Dressing Room Crisis is 1]your friendly advice[else]the physical affection you have shared[end if] was just what she needed to find a new balance in her life. She is dressed in a black t-shirt and a blue, not quite knee-length skirt. As Diana notices you looking at her, she gives you a friendly smile.";
	else if Libido of Diana is 1: [gryphon to the navel, human belly, cat to the breasts]
		say "     Diana is a young woman who seems to have caught both a Siamese cat infection, which has made her head, arms and upper chest feline with white fur, as well as the blue gryphon infection, judging by the blue lion's fur covering two digitigrade legs down to her clawed paws. She has gotten more confident about herself recently, coming quite far from the girl you found crying in a dressing room in your first encounter. Apparently the physical affection you have shared was just what she needed to find a new balance in her life. She is dressed in a black t-shirt and a blue, not quite knee-length skirt. As Diana notices you looking at her, she gives you a beaming smile and a small wave.";
	else if Libido of Diana is 2: [gryphon/cat transformations met, starting to overlap]
		say "     Diana is a young woman who seems to have caught both a Siamese cat infection, which has made her head, arms and chest feline with white fur, as well as the blue gryphon infection, judging by the blue lion's fur covering her from her tummy down over two digitigrade legs and all the way to her clawed paws. The two infections seem to overlap in the middle, apparently not competing but rather working together to create a unique look. Meanwhile, Diana has gotten more confident about herself, coming quite far from the girl you found crying in a dressing room in your first encounter. Apparently the physical affection you have shared was just what she needed to find a new balance in her life. She is dressed in a black t-shirt and a blue, not quite knee-length skirt. As Diana notices you looking at her, she gives you a beaming smile, followed by a not at all tame wink.";
	else if Libido of Diana is 3: [complete overlap of gryphon/cat -> anthro sphinx look]
		say "     Diana's transformation has progressed so far that she seems to have only a single strain on her now, which apparently came into being by combining her Siamese cat side with some details of the blue gryphon. Her whole body is that of a white-furred feline now, with the legs being that of a toned lioness with fairly impressive claws, while her upper body remains somewhat more human in a cat-like way. For example, she still has hands instead of hand-paws, though they do have slightly claw-like fingernails. The head is anthro feline too and quite attractive, having gained a bit of a mane from the gryphon infection. As Diana notices you looking at her, she gives you a beaming smile, followed by a not at all tame wink.";
	else if Libido of Diana is 4: [complete overlap of gryphon/cat -> anthro sphinx look - with wings]
		say "     Diana's transformation has progressed so far that she seems to have only a single strain on her now, which apparently came into being by combining her Siamese cat side with some details of the blue gryphon. Her whole body is that of a white-furred feline now, with the legs being that of a toned lioness with fairly impressive claws, while her upper body remains somewhat more human in a cat-like way. For example, she still has hands instead of hand-paws, though they do have slightly claw-like fingernails. The head is anthro feline too and quite attractive, having gained a bit of a mane from the gryphon infection. Behind her back is a beautiful pair of white-feathered wings, completing the image of a proud Greek sphinx. As Diana notices you looking at her, she gives you a beaming smile, followed by a not at all tame wink.";

an everyturn rule:
	if PlayerMet of Diana is true and HP of Diana < 100 and Mall Optician is resolved: [player talked to her and didn't freak her out, 2nd event done too]
		[if TimekeepingVar is 1 or TimekeepingVar is -7:] [midnight - she's sleeping]
		[else if TimekeepingVar is 0 or TimekeepingVar is -8:] [pre dawn - she's sleeping]
		if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning - she goes to pick up food for her family]
			now Sleeping of Diana is false;
			if Player is in Mall Foodcourt:
				say "     Among the bustling crowd of people coming into the area of the food court, you spot someone you've met before - it's Diana. The young woman moves with a light step on her blue-furred paws and seems happy, exchanging some smiles and friendly words with a number of mall rats and other inhabitants of the Smith Haven Mall. Her way to one of the food handouts brings her close to where you're standing, prompting Diana to make a little detour. 'Hello[if Player is not defaultnamed], [name of Player]! [else]! [end if]Nice to see you today!' The two of you exchange some words, but before long, she starts to glance at the big wall clock hanging nearby. 'Wish I had more time to talk, but Nana and the others are waiting for breakfast. So - maybe later then, I'm usually around here for lunch.' With that said, the hybrid woman gives you a little wave with her hand and then gets into line to collect meals for everyone living in the mall optician store.";
			else if Player is in Mall Atrium:
				say "     Among the bustling crowd of people entering and leaving the food court, you spot someone you've met before - it's Diana. The young woman moves with a light step on her blue-furred paws, making speedy headway through the masses while carrying two large bags that seem to be filled with food containers. As she passes nearby and glances your way by chance, Diana smiles and makes a little detour. 'Hello[if Player is not defaultnamed], [name of Player]! [else]! [end if]Nice to see you today!' The two of you exchange some quick words, but before long, nods to the bags she's holding. 'Wish I had more time to talk, but Nana and the others are waiting for breakfast. So - maybe later then, I'm usually hanging around in the Food Court a while for lunch.' With that said, the hybrid woman gives you a little wave with her hand and gets moving again.";
		[else if TimekeepingVar is 6 or TimekeepingVar is -2:] [mid-morning - unused, Diana spends time with her elderly family]
		else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
			if Player is in Mall Foodcourt:
				say "     You spot Diana sauntering into the expansive food court, making a circuit to chat with a few mall rats and other inhabitants that she knows before collecting some food for herself. Then she goes to sit down at a fairly out of the way booth behind some planters, sitting down to eat and read a book she pulls out of her bag.";
			else if Player is in Mall Atrium:
				say "     You spot a glimpse of vibrant blue fur in the crowd and see that it belongs to Diana, who's just making her way to the mall food court.";
			move Diana to Mall Foodcourt;
		else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon - she goes to the bookstore]
			if Player is in Mall Foodcourt:
				say "     Diana gets up from her table and walks through the crowd towards the Mall Atrium.";
			else if Player is in Mall Atrium:
				say "     You spot a glimpse of vibrant blue fur in the crowd and see that it belongs to Diana, who's just making her way from the Food Court towards the East Wing.";
			else if Player is in Mall East Wing:
				say "     You spot a glimpse of vibrant blue fur in the crowd and see that it belongs to Diana, weaving a path through the mass of people in here. She swiftly makes her way to the Brookstone Books store, not spotting you as she walks along.";
			else if Player is in Brookstone Books:
				say "     Diana enters the bookstore on silent paws, saying hello to Beverly and then starts to browse in the shelves.";
			move Diana to Brookstone Books;
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			if Player is in Brookstone Books:
				say "     After a quick goodbye to everyone she knows in here, Diana leaves the bookstore.";
			now Diana is nowhere; [stashed in another dimension]
		[else if TimekeepingVar is 2 or TimekeepingVar is -6:] [early night - unused, she goes to bed]

instead of conversing Diana:
	say "[Diana_TalkMenu]";

to say Diana_TalkMenu:
	LineBreak;
	say "     Walking up to where Diana is [if Diana is in Foodcourt]sitting in her booth, you say hello and slide onto the bench beside her. [else]browsing the shelves, you say hello to her. [end if]The young woman greets you with a happy smile[if Libido of Diana > 0] and a coy look, biting her lip for a second[end if], then says 'Hi[if Player is not defaultnamed], [name of Player][else][end if]! What did you want to talk about?'";
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
	now title entry is "Ask about her friends";
	now sortorder entry is 3;
	now description entry is "Find out how she ended up living with a bunch of senior citizens";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask when you can see her again";
	now sortorder entry is 4;
	now description entry is "Find out when you can meet up";
	[]
	if Libido of Diana > 2: [she's a sphinx]
		choose a blank row in table of fucking options;
		now title entry is "Ask about her being a sphinx now";
		now sortorder entry is 5;
		now description entry is "Find out how she feels about being a mythical creature";
	[]
	if Diana is in Mall Foodcourt and Playerfucked of Diana is false:
		choose a blank row in table of fucking options;
		now title entry is "Charm her and stealthily finger Diana's pussy";
		now sortorder entry is 10;
		now description entry is "Stimulate the innocent young woman right here, with only the table and planter beside it hiding what's going on";
	[]
	if Diana is in Brookstone Books and Playerfucked of Diana is false:
		choose a blank row in table of fucking options;
		now title entry is "Charm her and stealthily finger Diana's pussy";
		now sortorder entry is 10;
		now description entry is "Stimulate the innocent young woman right here, only slightly hidden in the back row of the store";
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
				if (nam is "Ask her about herself"):
					say "[Diana_RegularTalk1]";
				else if (nam is "Ask what she is doing at the mall"):
					say "[Diana_RegularTalk2]";
				else if (nam is "Ask about her friends"):
					say "[Diana_RegularTalk3]";
				else if (nam is "Ask when you can see her again"):
					say "[Diana_RegularTalk4]";
				else if (nam is "Ask about her being a sphinx now"):
					say "[Diana_RegularTalk5]";
				else if (nam is "Charm her and stealthily finger Diana's pussy"):
					if Diana is in Foodcourt:
						say "[DianaFingering_FoodCourt]";
					else:
						say "[DianaFingering_Brookstone]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You make a little small talk, then tell the young woman that you sadly don't have more time to hang out and say your goodbyes.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say Diana_RegularTalk1: [Ask her about herself]
	say "     'Okay sure, I can tell you a bit about myself,' Diana says with a smile and thinks for a second on how to begin, then shrugs and adds, 'My name is Diana Hunter, I'm eighteen and I live in the Brentwood neighborhood. Well, 'lived' is more accurate these days I guess. Last I saw, there is a forest growing there now.' She grimaces a bit at the thought of her home being gone for good, then pushes on to explain, 'Thank god my parents and brother weren't actually there when all of this started - they're on holiday in Greece right now. A trip I didn't want to go on. Perfect decision, eh?' Looking down at herself, the young woman draws in a breath, then lets it out slowly and nods to you. 'No worries, I'm not gonna go into a funk again about having been transformed. You were right about that. It really is a nice and interesting look, if one looks at it from the right perspective. Somewhat funny too, if I tell you what mom and dad named my brother - it's Apollo.'";
	say "     Smiling at you expectantly, Diana says after a moment, 'You know, the Roman name for the god of art and beauty? Just like I am named for Diana, the huntress. Hah, Diana Hunter. I guess they were a bit too cute in their choice of names. One might count it as tempting fate, really. In the stories about the Olympians, people constantly got transformed left and right for pissing off the gods in even the slightest ways.' Her eyes get a far-away look for a moment as she imagines her parents seeing her like this, then she shrugs, 'If we make it through all of this, I guess I'll learn if they can deal with a daughter that might be straight from one of the myths.'";
	TraitGain "Family Background" for Diana;
	say "[Diana_TalkMenu]"; [looping back into the menu to talk to him at the player's heart's content]

to say Diana_RegularTalk2: [Ask what she is doing at the mall]
	say "     'Oh, like so many others, I fled here to the mall when things started to get weird. By that time, the police wasn't even answering calls anymore and I'd seen a wyvern fly over the neighborhood. The Internet was still up back then and I read in a chat with classmates that the mall was supposed to be well-guarded, so me and the others decided to come here.' Diana draws a grimace, and the next words are said in a glum tone, 'I don't think any of them made it. Or maybe I just haven't found or even recognized any of them in the masses of refugees here.' You see in her eyes that she doesn't really believe it, even though she is trying to tell herself otherwise.";
	say "[Diana_TalkMenu]"; [looping back into the menu to talk to him at the player's heart's content]

to say Diana_RegularTalk3: [Ask about her friends]
	say "     'Nana Simpson and the others, you mean? They are from the Brentwood Assisted Living Center. I've been volunteering there regularly since getting to know them during visits with my grandma. She...isn't with us anymore, but that didn't mean I was gonna stop going,' Diana says, full of civic spirit. Her expression darkens slightly as she goes on to say, 'When things became really bad in the city and my classmates and me chatted about fleeing to the mall, I couldn't just abandon them either. The center was on the way anyways.' You can tell from the overly quick way in which she said this that it really wasn't - she must have gone out of her way to gather these old people and shepherd them to the mall, which must have been a harrowing experience, given everything going on out on the streets. Diana is just trying to downplay and justify her selfless acts.";
	say "     'When I got to the center, they were all alone. The caregivers had fled already, but thankfully nothing bad had happened yet. So I told everyone to give their pets as much food as possible because we couldn't take them along, then gathered them up and we started a trek to the mall. Quite a dicey trip - we got jumped twice. The first time was a whole pack of strange rubbery creatures,' Diana mimes her group moving down a street, with numerous creatures swarming all around them and finally pouncing from all sides. 'Strangely, they weren't even interested in us, but rather the motorized mobility aids some of the folks were using. They started eating the wheels! From then on, it was a trip on foot the rest of the way.'";
	WaitLineBreak;
	say "     'We almost got here without further incidents, but I guess I must have let down my guard when I saw the mall in the distance. Didn't look up often enough, and a gryphon swooped down on the group as we were crossing a street. He threw me down and grabbed me by the ankle, no doubt to spread my legs and rape me, but I got him in the face with this.' With that said, Diana pulls a red and yellow spray-can out of her pocket, just large enough to fit in her palm. She shakes it and listens to the sound, then adds, 'Not much left in this pepper-spray sadly, so I hope I won't have to use it again. Anyways, once the gryphon fled, we made it into the mall alright. As for the optician as our new place to stay - well, it's a spot that everyone knew, so the folks are unlikely to get lost.'";
	TraitGain "Mall Trek Tale" for Diana;
	say "[Diana_TalkMenu]"; [looping back into the menu to talk to him at the player's heart's content]

to say Diana_RegularTalk4: [day rhythm talk]
	say "     A smile crosses Diana's face as you ask your question, with her being happy that you're wanting to hang out with her more than just right now. 'In the mornings I'm usually busy in the Optician's place, helping Nana and the others, getting them breakfast and so on - but after that, around noon, I hang out in the food court area. We could meet up then, have lunch together or just talk.' Eager for your company, she goes into detail for which food lines she usually goes to, and says that she's usually in the far corner of the food court to actually eat, and maybe read a book as that section is quieter than the active bustle closer to where the food is handed out. 'Oh, and after that, I usually go to the Brookstone Books store. More of a library these days, with Beverly just letting you pick up what you want and you bringing it back when you're done reading...'";
	say "[Diana_TalkMenu]"; [looping back into the menu to talk to him at the player's heart's content]

to say Diana_RegularTalk5: [sphinx talk]
	say "     As you mention that she looks like a sphinx now, Diana gives a shrug and a smile, looking down over herself. 'It is an exotic look, isn't it? I really wonder what my parents will say when they see me again. Can't tell if they'll be horrified that I'm no longer human, or weirdly proud because I fit into their obsession with ancient myths. Funny how they're off looking at ruined temples and the remnants of ancient Greek art, and I stayed home but became the real thing anyways.' Letting out a snort, she adds, 'Can't say I feel too much different either. You know, having a mysterious air and glowering at people with my tits out, haha! Maybe I should get one of those snazzy headdresses and start asking people riddles. Though what would I do when they can't answer them? Eating people is a bit frowned upon, these days, haha,' She giggles, clearly just kidding, although with the sharp claws her new body is sporting, Diana would likely be a menace in a fight, if she commited to it.";
	say "     Remembering the sexy fun that led to her transformation progressing further and further, a grin inevitably settles in across your face, and you mention that there is another way she could eat people... and reach out to stroke a finger along her jawline, while brushing your thumb lightly over Diana's lips. 'Oh? Ooooh, yeah!' she replies, quickly catching up to your implication of oral sex as she sees the lusty gleam in your eyes. 'That's a fun idea! Though I'll have to pick my riddle well, eh? Let me think...' Making a playful show of deeply 'thinking' about what to say, the young woman then smiles at you and shows her sharp teeth, followed by announcing, [bold type]'Now then, mortal! Tell me: Why did the chicken cross the road?!'[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Reply that it wanted to get to the other side. (And win a free pass.)";
	say "     ([link]N[as]n[end link]) - Reply that you don't know, with a flirty wink. (And let her go down on you.)";
	if Player consents:
		LineBreak;
		say "     With playful dismay, Diana throws her hands up and rolls her eyes at the unjustness of reality. 'Oh woe me, the mortal is too cunning to be caught by my best riddle! Guess I'll have to let them pass freely, this time!' She laughs amusedly, while at the same time unbostrusively sliding a hand down over her skirt. With a wink, she strokes the soft fur on the inside of her thighs, slightly parting her legs in an invitation. Throwing a quick glance at your surroundings, to make sure she's not being too obvious or in danger of being overheard, Diana then quietly adds, 'Not, uhm - right here and now, but... someone owned themselves a free pass between my legs of the Smith Haven Sphinx. Looking forward when you'll want to claim that...'";
		TraitGain "Free Pass" for Diana;
		say "[Diana_TalkMenu]"; [looping back into the menu to talk to him at the player's heart's content]
	else:
		LineBreak;
		say "     A grin spreads widely over her face, and Diana lets out a playfully predatory laugh. 'AHA! No match for her riddling prowress, the mortal is at the mercy of the Smith Haven Sphinx!' she announces proudly, gigling as people nearby give the two of you curious looks. Beaming, Diana takes your hand in hers, then leads you away, first down one of the main hallways, then soon taking a turn into a narrow service corridor going off to the side. Soon reaching a red-painted door with the words 'Roof Access' stenciled on it, she pushes it open and leads you inside a stairwell, then up the first flight and halfway onto the second. There's no one in sight anywhere, with the roof apparently not being a spot that people like to visit. Happy enough with the amount of privacy you now have, Diana moves to a step one down from your own and crouches down, licking her lips enticingly.";
		say "[Diana_OralOnPlayer]";
		TraitGain "Eaten by the Sphinx" for Diana;

instead of fucking Diana:
	if PlayerFucked of Diana is false: [first time]
		if Diana is in Foodcourt:
			say "[DianaFingering_FoodCourt]";
		else:
			say "[DianaFingering_Brookstone]";
	else:
		say "[Diana_SexMenu]";

to say Diana_SexMenu:
	LineBreak;
	say "     Walking up to where Diana is [if Diana is in Foodcourt]sitting in her booth, you say hello and slide onto the bench beside her. [else]browsing the shelves, you say hello to her. [end if]The young woman greets you with a happy smile[if Libido of Diana > 0] and a coy look, biting her lip for a second[end if], then says 'Hi[if Player is not defaultnamed], [name of Player][else][end if]!'";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Diana is in Mall Foodcourt:
		choose a blank row in table of fucking options;
		now title entry is "Charm her and stealthily finger Diana's pussy";
		now sortorder entry is 1;
		now description entry is "Stimulate the innocent young woman right here, with only the table and planter beside it hiding what's going on";
	[]
	if Diana is in Brookstone Books:
		choose a blank row in table of fucking options;
		now title entry is "Charm her and stealthily finger Diana's pussy";
		now sortorder entry is 2;
		now description entry is "Stimulate the innocent young woman right here, only slightly hidden in the back row of the store";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Lean in and whisper in her ear that you want to go down on her pussy";
	now sortorder entry is 3;
	now description entry is "Find a place in which you (almost publicly) eat out Diana";
	[]
	if "Eaten by the Sphinx" is listed in Traits of Diana:
		choose a blank row in table of fucking options;
		now title entry is "Lean in and whisper in her ear that you want to have oral sex again";
		now sortorder entry is 4;
		now description entry is "Go back to the roof access to let her go down on you";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Tell her you want to fuck her pussy";
		now sortorder entry is 5;
		now description entry is "Take her pussy, back in the dressing room where you met that first time";
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
				if (nam is "Charm her and stealthily finger Diana's pussy"):
					if Diana is in Foodcourt:
						say "[DianaFingering_FoodCourt]";
					else:
						say "[DianaFingering_Brookstone]";
				else if (nam is "Lean in and whisper in her ear that you want to go down on her pussy"):
					say "[DianaOral2]";
				else if (nam is "Lean in and whisper in her ear that you want to have oral sex again"):
					say "[Diana_OralOnPlayer_Intro]";
				else if (nam is "Tell her you want to fuck her pussy"):
					say "[DianaFuck_DressingRoom_Intro]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You make a little small talk, then tell the young woman that you sadly don't have more time to hang out and say your goodbyes.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;


to say DianaFingering_FoodCourt:
	say "     Sliding a little bit closer to Diana, you tell her in a teasing tone that you got another idea what you could do together. The young woman [if HP of Diana is 1]looks surprised, but quickly warms up to some further words and compliments as you go on to say that you meant what you said back in the dressing room about her being cute, exotic and attractive. [else]smiles knowingly, remembering the intimacy you shared before. [end if] Shifting your hand to rest on her thigh, Diana's eyes widen. 'You mean - right here? But, but we can't! Someone might -' the Siamese-gryphon hybrid says in an urgent whisper, glancing around and trying not to be too obvious about it. You don't let yourself be distracted and simply continue to move your hand over her leg, dipping under the edge of her knee-length skirt and then sliding up the inside of her leg. The short, blue fur of her leonine lower half is soft and warm under your fingers. Before long, you reach her crotch and give it a stroke through the silky fabric of her panties.";
	say "     As you caress and pet her, Diana's alarm is replaced by excitement. 'I - mmmhh! Fine, but you have to promise to stop if anyone walks too close, alright? I don't want to get a reputation.' With a grin spreading over your face, you nod, then draw aside the material of her panties to feel for her pussy. 'Oh, that's nice,' she pants, doing her very best to stay quiet about it. The folds of her sex are soft and just a little moist to the touch, becoming more so by the second as you caress, then spread and push a finger inside them. Diana lets out a sighed mew, her fingers digging into the edge of the table as she controls herself. ";
	if HP of Diana is 1: [only gave her a pep talk before]
		say "Pushing deeper, you start to finger your female friend, soon feeling the fleshy membrane of her hymen inside her. The enticing knowledge that you're the first to reach it makes you redouble your stimulation of Diana's body, demonstrating the many things you can do with her to drive her wild and making it hard for her to keep silent. One thing is for sure - she'll have a truly memorable first time: in public, with you relentlessly fingering her.";
	else:
		say "Pushing deeper, you start to finger your female friend, soon feeling the remnants of her hymen that you so recently broke through. The enticing memory of being the first to take her makes you redouble your stimulation of Diana's body, demonstrating the many things you can do with her to drive her wild and making it hard for her to keep silent. One thing is for sure - she'll definitely remember this session: in public, with you relentlessly fingering her.";
	WaitLineBreak;
	say "     All of a sudden, you feel Diana's elbow bump into your side, and she hisses 'Wait!' under her breath. Pausing with your digits curled inside her, you look up and follow the young woman's gaze, seeing that there's [one of]a mall-rat waitress clearing a nearby table[or]a big moose guy with a tablet walking past[or]a whole group of partially infected friends passing by[or]a rare pure human moving past[at random]. Once they're out of immediate earshot, Diana says, 'Phew, that was close! I don't think they saw anything, but maybe we -' You interrupt her train of thought at that moment by starting to move your fingers again, stroking a very sensitive spot inside the young woman's pussy. Overwhelmed by the sudden burst of arousal, she lets out a low moan, and as you continue, Diana closes her eyes and seems to focus on feelings you are giving her. You can feel her being dripping wet by now, and sounds of arousal escape her lips more freely now.";
	say "     This does draw the attention of at least one nearby diner - [one of]a lioness in barefur[or]a snazzily dressed anthro frog[or]a clockwork fox[or]a dogtaur Dalmatian[or]a hip mall rat[or]a deer-guy with a proud rack of antlers[at random], but you raise a finger of your free hand to lay over your lips and they give a knowing smile, adjusting their position to get a better view. Willing to give a little show, you calm your face from the impish grin that crosses it for a second, then set all your attention back to touching Diana's. As you move your thumb to stroke over her clit, she barely can strangle a needy squeal before it passes her lips. ";
	if HP of Diana is 1: [only gave her a pep talk before]
		say "Being completely new to the sensations you are giving her, Diana can't hold on to her composure much longer. All of a sudden, she opens her eyes wide and looks at you with boundless lust, her hand scrambling to clasp around yours and pushing your fingers even deeper into her pussy. Of course, the sudden wrench forces your digits against her hymen, first stretching, then snapping right through it.";
		WaitLineBreak;
		say "     Dipping her head into the crook of your neck and giving you a light bite to muffle a squeal that encompasses both the boiling lust as well as the surprise of a little pain in losing her virginity, Diana finally climaxes, squirting femcum over your thrusting hand. As she pants loudly and clutches on to your shoulders, you hear chuckles from the watcher that you knew about, and a few in addition to that - seems like your spectators enjoyed the show. Becoming aware of the fact that the two of you were watched, your female friend glances over to them with a shocked expression, yet before she can say anything you pull her in for a kiss. This takes up all of the feline's attention for now, so instead of freaking out over giving a public show, she makes out for you, then throws sidelong glances at the people that watched. 'At least no one I know,' you hear her whisper under her breath.";
		say "     The next words out of Diana's mouth are, 'I - I feel really hot,' saying this with a somewhat worried expression, she is fanning herself with both hands and pulling on the front of her t-shirt in a try to gain relief from the heat. Curious and still a little adventurous, even after having already made Diana cum in public, you reach out and lay a hand on her chest, feeling the curve of her petite breasts and giving them a little squeeze. She really does feel abnormally warm to the touch - and almost as if the nanites had been waiting for a signal, a wave of change runs over the young woman's body before your very eyes. Diana's breasts fill out a little right under your fingers; still just a handful, but reaching a solid claim to B-cups, at the same time as silky smooth white fur sprouts from her skin. The edge of her feline characteristics wanders down from her shoulders, passing over those beautiful breasts to come to a halt above her ribs. Further down, you can feel something at her crotch, with the sensation of fur against your skin reaching her crotch.";
		WaitLineBreak;
		say "     With one hand still resting on her sex, you can literally feel it adjust under your touch, subtly changing in shape and size. The transformation stops right beneath her navel, exposed as it is from her pulling on her shirt. This means that of the original human woman, just her midriff remains as it once was. Blinking in shock, Diana trembles as she wraps her arms around you to hold on to. The young woman stares down at herself and says in a frightened tone, 'Oh no, I keep changing! I'm gonna become some sort of hideous mon-ompphh!' Your lips meeting hers stop the flood of words after you decide to yourself that you want to reassure the young woman (or maybe just wanted to shut her up?). After a pleasant little while during which she forgets everything but the sensations of making out with you, you pull back from the attractive hybrid girl and tell her that [italic type]she[roman type] is what counts, not her body or the specifics of her looks.";
		say "     Besides which, she has a quite nice and exotic body now, which is a good thing too. Diana just eats up your words, putting a lot of faith in a person she met only a little while ago and let claim her virginity. Arms wrapping around you, the young woman gives you a tight hug and says, 'Thank you so much. I'll take those words to heart. And... this was fun. A bit scandalous, but I kinda like that, if I think about it now.'";
		now Virgin of Diana is false;
		say "     [Bold Type]You have taken Diana's virginity with your fingers![roman type][line break]";
		add "Diana" to VirginitiesTaken of Player;
		now Libido of Diana is 1; [gryphon to the navel, human belly, cat to the breasts]
	else:
		say "Being fairly new to the sensations you are giving her, Diana can't hold on to her composure much longer. All of a sudden, she opens her eyes wide and looks at you with boundless lust, her hand scrambling to clasp around yours and pushing your fingers even deeper into her pussy.";
		say "     Dipping her head into the crook of your neck and giving you a light bite to muffle a squeal, Diana finally climaxes, squirting femcum over your thrusting hand. As she pants loudly and clutches on to your shoulders, you hear chuckles from the watcher that you knew about, and a few in addition to that - seems like your spectators enjoyed the show. Becoming aware of the fact that the two of you were watched, your female friend glances over to them with a shocked expression, yet before she can say anything you pull her in for a kiss. This takes up all of the feline's attention for now, so instead of freaking out over giving a public show, she makes out for you, then throws sidelong glances at the people that watched. 'At least no one I know,' you hear her whisper under her breath.";
		WaitLineBreak;
		if Libido of Diana < 4: [not yet fully transformed]
			say "[Diana_TransformationProgress]";
		else:
			say "     With a contented sigh, Diana stretches herself and lays an arm around you for a hug. 'This was fun. A bit scandalous, but I kinda like that, if I think about it now.'";
	if HP of Diana < 11:
		now HP of Diana is 11; [public cunnilingus/fingering done]

to say DianaFingering_Brookstone:
	say "     Leaning in to Diana and stroking the side of her arm with a hand, you tell her in a teasing tone that you got another idea what you could do together. The young woman [if HP of Diana is 1]looks surprised, but quickly warms up to some further words and compliments as you go on to say that you meant what you said back in the dressing room about her being cute, exotic and attractive. [else]smiles knowingly, remembering the intimacy you shared before. [end if]Shifting your hand to rest on her thigh, Diana's eyes widen. 'You mean - right here? But, but we can't! Someone might -' the Siamese-gryphon hybrid says in an urgent whisper, glancing around and trying not to be too obvious about it. With a smirk on your face, you suggest taking things to the back row of the large bookstore, which has her fasping at the audacious idea. She opens her mouth, then closes it again, looking very cute as she bites her lip while thinking about what you suggested.";
	say "     Her adventurous side wins out and the young hybrid woman gives you a quick nod, then slides her hand into yours and starts to walk towards the back section of the bookstore. Passing by various people you notice that the number of browsing visitors is petering off sharply row by row, not unexpected as the store owner would have put the most interesting and new stuff at the front. By the time you reach the very last row, which is dedicated to arts & crafts books, you and Diana are the only people in sight. Not that one can't hear the bustle at the front of the store, but you're at least unobserved visually. Turning to the right, around a stand with an author's cardboard cutout marking the entrance to a dead-end in the back corner of the store, Diana then turns around, her slitted eyes looking at you in anticipation. Not wanting to disappoint, you dip your hand under her knee-length skirt and then slide your fingers up the inside of her leg. The short, blue fur of her leonine lower half is soft and warm under your fingers. Before long, you reach her crotch and give it a stroke through the silky fabric of her panties.";
	WaitLineBreak;
	say "     As you caress and pet her, Diana's is gripped by rising excitement, only slightly tempered by her wary gaze glancing towards the end of the row, where someone might step into view to catch you at any moment. 'I - mmmhh! You have to promise to stop if anyone walks too close, alright? I don't want to get a reputation.' With a grin spreading over your face, you nod, then draw aside the material of her panties to feel for her pussy. 'Oh, that's nice,' she pants, doing her very best to stay quiet about it. The folds of her sex are soft and just a little moist to the touch, becoming more so by the second as you caress, then spread and push a finger inside them. Diana lets out a sighed mew, her fingers digging into the edge of the table as she controls herself. ";
	if HP of Diana is 1: [only gave her a pep talk before]
		say "Pushing deeper, you start to finger your female friend, soon feeling the fleshy membrane of her hymen inside her. The enticing knowledge that you're the first to reach it makes you redouble your stimulation of Diana's body, demonstrating the many things you can do with her to drive her wild and making it hard for her to keep silent. One thing is for sure - she'll have a truly memorable first time: in public, with you relentlessly fingering her.";
	else:
		say "Pushing deeper, you start to finger your female friend, soon feeling the remnants of her hymen that you so recently broke through. The enticing memory of being the first to take her makes you redouble your stimulation of Diana's body, demonstrating the many things you can do with her to drive her wild and making it hard for her to keep silent. One thing is for sure - she'll definitely remember this session: in public, with you relentlessly fingering her.";
	say "     All of a sudden, you feel Diana's elbow bump into your side, and she hisses 'Wait!' under her breath. Pausing with your digits curled inside her, you glance to the entrance of the row, but don't see anyone there, only to [one of]hear someone asking on where to find a specific book, just on the other side of the shelf next to you. Another person replies that they know where it is, and the two of them leave to the front of the store a second after. [or]hear someone saying with a sigh that someone else must have their intended book loaned out, with them standing just on the other side of the shelf next to you. Then they leave, which you vaguely glimpse through the gap between the books and the shelf. [or]notice someone on the other side of the shelf you're standing next to. You can't see much of them through just the short gap between the tops of the books and the shelf, only that they seem to find what they were looking for and then leave. [at random]Once you're again mostly alone, Diana says, 'Phew, that was close! I don't think they heard me, but if you had kept going, I don't know if I'd been able to hold back. Maybe we should-' You interrupt her train of thought at that moment by starting to move your fingers again, stroking a very sensitive spot inside the young woman's pussy. Overwhelmed by the sudden burst of arousal, she lets out a low moan, and as you continue, Diana closes her eyes and seems to focus on feelings you are giving her. You can feel her being dripping wet by now, and sounds of arousal escape her lips more freely now.";
	WaitLineBreak;
	say "     You're 'caught' by someone not long after - [one of]a lioness in her bare fur[or]a snazzily dressed anthro frog[or]a clockwork fox[or]a dogtaur Dalmatian[or]a hip mall rat[or]a deer-guy with a proud rack of antlers[at random] who steps into view at the entrance of the row, their eyes widening at seeing what's clearly going on between you and diana. When you raise a finger of your free hand to lay over your lips and they give a knowing smile, the bookstore visitor gives you a smirk and then makes a turn into the continuiation of your row on the other side of the central walkway. They turn to look at the books, all the while throwing glances your way from the corner of their eyes. Willing to give a little show, you calm your face from the impish grin that crosses it for a second, then set all your attention back to touching Diana's. As you move your thumb to stroke over her clit, she barely can strangle a needy squeal before it passes her lips. ";
	if HP of Diana is 1: [only gave her a pep talk before]
		say "Being completely new to the sensations you are giving her, Diana can't hold on to her composure much longer. All of a sudden, she opens her eyes wide and looks at you with boundless lust, her hand scrambling to clasp around yours and pushing your fingers even deeper into her pussy. Of course, the sudden wrench forces your digits against her hymen, first stretching, then snapping right through it.";
		say "     Dipping her head into the crook of your neck and giving you a light bite to muffle a squeal that encompasses both the boiling lust as well as the surprise of a little pain in losing her virginity, Diana finally climaxes, squirting femcum over your thrusting hand. As she pants loudly and clutches on to your shoulders, you hear a faint chuckle from the watcher - seems like your spectator enjoyed the show. Becoming aware of the fact that the two of you were watched, your female friend glances over to them with a shocked expression, yet before she can say anything you pull her in for a kiss. This takes up all of the feline's attention for now, so instead of freaking out over giving a public show, she makes out for you, then throws sidelong glances at the person that watched. 'At least no one I know,' you hear her whisper under her breath.";
		WaitLineBreak;
		say "     The next words out of Diana's mouth are, 'I - I feel really hot,' saying this with a somewhat worried expression, she is fanning herself with both hands and pulling on the front of her t-shirt in a try to gain relief from the heat. Curious and still a little adventurous, even after having already made Diana cum in public, you reach out and lay a hand on her chest, feeling the curve of her petite breasts and giving them a little squeeze. She really does feel abnormally warm to the touch - and almost as if the nanites had been waiting for a signal, a wave of change runs over the young woman's body before your very eyes. Diana's breasts fill out a little right under your fingers; still just a handful, but reaching a solid claim to B-cups, at the same time as silky smooth white fur sprouts from her skin. The edge of her feline characteristics wanders down from her shoulders, passing over those beautiful breasts to come to a halt above her ribs. Further down, you can feel something at her crotch, with the sensation of fur against your skin reaching her crotch.";
		say "     With one hand still resting on her sex, you can literally feel it adjust under your touch, subtly changing in shape and size. The transformation stops right beneath her navel, exposed as it is from her pulling on her shirt. This means that of the original human woman, just her midriff remains as it once was. Blinking in shock, Diana trembles as she wraps her arms around you to hold on to. The young woman stares down at herself and says in a frightened tone, 'Oh no, I keep changing! I'm gonna become some sort of hideous mon-ompphh!' Your lips meeting hers stop the flood of words after you decide to yourself that you want to reassure the young woman (or maybe just wanted to shut her up?). After a pleasant little while during which she forgets everything but the sensations of making out with you, you pull back from the attractive hybrid girl and tell her that [italic type]she[roman type] is what counts, not her body or the specifics of her looks.";
		WaitLineBreak;
		say "     Besides which, she has a quite nice and exotic body now, which is a good thing too. Diana just eats up your words, putting a lot of faith in a person she met only a little while ago and let claim her virginity. Arms wrapping around you, the young woman gives you a tight hug and says, 'Thank you so much. I'll take those words to heart. And... this was fun. A bit scandalous, but I kinda like that, if I think about it now.'";
		now Virgin of Diana is false;
		say "     [Bold Type]You have taken Diana's virginity with your fingers![roman type][line break]";
		add "Diana" to VirginitiesTaken of Player;
		now Libido of Diana is 1; [gryphon to the navel, human belly, cat to the breasts]
	else:
		say "Being fairly new to the sensations you are giving her, Diana can't hold on to her composure much longer. All of a sudden, she opens her eyes wide and looks at you with boundless lust, her hand scrambling to clasp around yours and pushing your fingers even deeper into her pussy.";
		say "     Dipping her head into the crook of your neck and giving you a light bite to muffle a squeal, Diana finally climaxes, squirting femcum over your thrusting hand. As she pants loudly and clutches on to your shoulders, you hear a faint chuckle from the watcher - seems like your spectator enjoyed the show. Becoming aware of the fact that the two of you were watched, your female friend glances over to them with a shocked expression, yet before she can say anything you pull her in for a kiss. This takes up all of the feline's attention for now, so instead of freaking out over giving a public show, she makes out for you, then throws sidelong glances at the person that watched. 'At least no one I know,' you hear her whisper under her breath.";
		WaitLineBreak;
		if Libido of Diana < 4: [not yet fully transformed]
			say "[Diana_TransformationProgress]";
		else:
			say "     With a contented sigh, Diana stretches herself and lays an arm around you for a hug. 'This was fun. A bit scandalous, but I kinda like that, if I think about it now.'";
	if HP of Diana < 11:
		now HP of Diana is 11; [public cunnilingus/fingering done]

to say DianaOral2: [Eat her out in public, not virgin]
	say "     [if Diana is in Foodcourt]Stepping up close to where Diana is sitting, [else]Stepping up close to where Diana is standing, [end if]you lean in and bring your mouth close to one of her pointy, feline ears. As you whisper into it what you want to do, eagerness vibrating in your voice, the young woman's eyes widen, and she glances left and right, afraid someone overheard your lewd offer. At the same time, she clearly isn't averse to what you suggested, for her face shows an miscivious smile when she looks back to you. Licking her lips, she reaches out to you, touching your side and replying in a quietly excited tone, 'Let's do it!' [if Diana is in Foodcourt]Quickly finishing up and grabbing her stuff, Diana stands up from the booth and [else]Quickly putting a book she was holding back on the shelf, Diana [end if]follows you into the wide, people-packed hallways of the mall, holding your hand as you lead the way. It doesn't take long to spot an opportune spot for your intentions, and the two of you take a turn into one of the service passages forking off from the main hallway, this one just at the edge of the Christmas Village, where there's somewhat less traffic going back and forth.";
	say "     Eager as you are, you only make it down the passage for about 15 feet before you decide to gently push Diana against the wall. She looks down the narrow, concrete-sided path ending in a closed door that reads 'Staff Only', then back to the main hallway and the people passing by, usually without giving one glance in the direction where you are. This place isn't in open view, but still fairly public, but that seems more to intrigue than frighten your hybrid companion. 'So... here we are,' she says a little breathily, meeting your gaze with one eyebrow raised. In reply, you just grin and sink to your knees, hooking your fingers over the elastic of her skirt, pulling it down and exposing her panties. She lets out a musical little giggle at the audacity of doing this, here and now, looking down at you with a smile as you go on to pull her panties down as well. As you begin to lap your tongue over her nether lips, she lets out a loud pant of, 'Oh god, yes!' which you take as a prompt to intensify playing with her clit.";
	WaitLineBreak;
	say "     With a grin on your face, you ask the young woman if she can control herself from making too much noise and exposing the two of you. She bites her lip and gives your shoulders a squeeze, then nods. It'll be fun to see if she's right! Smiling gleefully, you slide your lips over the small bump of her sensitive clit and give it a gentle suck, drawing a whimper from the young woman that she can only barely suppress. Sliding your fingers in between the dripping wet folds of her sex, you start to finger your female friend, feeling the remnants of her hymen. The enticing memory of being the first to take her drives you to go all out in your stimulation of Diana's body, demonstrating the many things you can do with her and making the girl squeal and pant breathlessly. One thing is for sure - she'll definitely remember this session of sex: in public, with you doing your utmost to drive her out of her mind with lust.";
	say "     Sucking on the young hybrid's clit and fingering her mercilessly, her moans are music to your ears. Diana has by now closed her eyes and is completely focused on the feelings you are giving her, forgetting where she is and letting the sounds of her arousal out more freely. This of course doesn't fail to draw some of the passersby's attention, and as you glance to the side of the main mall hallway from time to time, you see a few persons stand there and watch with interest. Willing to give them a show as long as they stand back and don't try to join in, you give an impish grin and then go back to suckling on Diana's clit, raising the pitch of her squeals even further. Despite trying her best, Diana can't hold on to her composure much longer. All of a sudden, she opens her eyes wide and looks down at you with boundless lust, and reaches down to push your fingers even deeper into her pussy.";
	WaitLineBreak;
	say "     With a squeal that speaks of lust boiling over, Diana finally climaxes, squirting femcum over your thrusting hand and the lower half of your face. As she pants loudly and clutches on to your shoulders, you hear a few laughs and quiet cheers from the main hallway too - seems like your spectators enjoyed the show. Becoming aware of the fact that the two of you were watched, your female friend glances over to them, her expression more challenging than embarrassed, especially as you lick her clit once again and she moans out loud, bracing herself against the wall while unashamedly enjoying the oral pleasure you're giving her. With her lust-filled gaze returning to you, Diana happily lets you continue to suckle on clit and lick up her femcum. You spend some more time servicing Diana with your mouth and fingers, drawing out her arousal and giving the young woman a truly memorable experience. Her squeals and moans continue to fill the little side corridor for a little while, until she finally reaches down and gently tugs on you to rise.";
	if Libido of Diana < 4: [not yet fully transformed]
		say "[Diana_TransformationProgress]";
	else:
		say "     With a contented sigh, Diana stretches herself and lays an arm around you for a hug. 'This was fun. A bit scandalous, but I kinda like that, if I think about it now.'";
	now HP of Diana is 11; [public cunnilingus done]
	NPCSexAftermath Player receives "OralPussy" from Diana;

to say Diana_OralOnPlayer_Intro:
	say "     [if Diana is in Foodcourt]Stepping up close to where Diana is sitting, [else]Stepping up close to where Diana is standing, [end if]you lean in and bring your mouth close to one of her pointy, feline ears. As you whisper into it what you want to do, eagerness vibrating in your voice, the young woman's eyes widen, and she glances left and right, afraid someone overheard your lewd offer. At the same time, she clearly isn't averse to what you suggested, for her face shows an miscivious smile when she looks back to you. Licking her lips, she reaches out to you, touching your side and replying in a quietly excited tone, 'Let's do it!' [if Diana is in Foodcourt]Quickly finishing up and grabbing her stuff, Diana stands up from the booth and [else]Quickly putting a book she was holding back on the shelf, Diana [end if]follows you into the wide, people-packed hallways of the mall, holding your hand as you lead the way. It doesn't take long to find the roof access stairway again, then go up the first flight and halfway onto the second. There's no one in sight anywhere, with the roof apparently not being a spot that people like to visit. Happy enough with the amount of privacy you now have, Diana moves to a step one down from your own and crouches down, licking her lips enticingly.";
	say "[Diana_OralOnPlayer]";

to say Diana_OralOnPlayer:
	say "     Eager hands [if Player is not barecrotch]work quicky to bare your crotch[else]quickly move to your crotch[end if] and stroke over it ";
	if Player is male: [BJ]
		say ", taking hold of your quickly hardening [Cock of Player] manhood. Her fingers wrap around your shaft, jerking it a few times, then hold it steady as she sticks out her tongue to lick over the head. Diana's tongue is slick and feels a little bit coarse against your senstive skin, the latter being brought into the mix by the anthro's feline side. Thankfully, she's aware of this and takes good care to not lap at you too roughly, instead using plenty of spit and slow swipes, intermixed with the tip of her tongue tracing around the rim of your dickhead in teasing movements that draw aroused moans from your lips. In a husky voice, you tell her that she's being a very good kitty and sexy sphinx right now, then rub the base of her large ears, which makes her purr audibly while still worshiping your cock.";
		WaitLineBreak;
		say "     As Diana takes you into her mouth a moment later, the purring proves not only to be a pleasant sound underlying the sounds of oral sex echoing in the stairwell, but also quite enticing in its own right, as her mouth and lips vibrate around your hard rod. Enjoying this new sensation and the warm wetness closing around your shaft as she sucks on it with eager attention. You stroke your hands over her head, sinking your fingers into the mane of hair on the sexy hybrid and cradling her head in your grasp before pulling it tightly towards your crotch, taking over control of your shared bout of oral fun. The sphinx obediently follows the pressure of your hands, opening her mouth a little wide and relaxing her tongue to allow you to slide in further, [if Cock Length of Player > 6]up to the back end of her mouth. She squeezes the side of your hips as you try to go further at first, but soon relents, with you slowly working inch after inch to push down her throat. [else]until you're all the way in her welcoming mouth.";
		say "     Looking down at the sexy feline and meeting her beautiful, slitted eyes in a shared gaze, you compliment Diana and say that you're very happy that the two of you met. With your cock in her mouth, she can do little to reply besides bobbing her head a little and intensifying the purring to show that she feels the same way you do. With a broad grin on your face, you then slowly withdraw, again feeling the stimulation of her slightly rough tongue against your skin. When your dickhead soon passes Diana's lips, you allow her a quick moment to take some gasped breaths before thrusting right back in, starting to face-fuck your sexy kitty in earnest. It feels great to use her mouth for your own pleasure, with the sphinx freely surrendering all control to you and just focusing on giving you the best time she can. Lusty grunts and the wet slurping noises of your shaft sliding home again and again fill the isolated stairwell, sure to betray what is going on to anyone who'd simply stepped up to the doors at either end.";
		WaitLineBreak;
		say "     Even while letting you face-fuck her, Diana is far from a passive partner, with her hands stroking the inside of your legs and the uninterrupted vibrations of her purr stimulating your thrusting cock. Eventually, she reaches up to cup your balls too, rolling them between her fingers in an enticing caresses. That little extra push is just what you need to finally reach the point of no return. With a horny growl, you grind her face down against your crotch as the tightness in your balls boils over into erupting down Diana's throat, with thick spurt after spurt of your cum jetting up your throbbing shaft. Momentarily overwhelmed by the pleasure of coming in your kitty's mouth, you keep holding her down for a little too long, and Diana futilely tries to pull against your grip. If she didn't have fur covering her face, she'd likely be red in the face from lack of air, so she falls back to another way to get your attention - five pin-pricks of pain as she flexes the fingers gripping one of your thighs, pressing their clawed tips against your skin.";
		say "     Hastily letting go of the spinx, she pulls off your dick to gasp for air, all the while your climax is still chugging on, with the only slowly ebbing spurts of cum now shooting out to hit Diana's face and open mouth too. She allows this happily enough, only having been forced to act earlier so she could breathe, and now calmly serves as a target for you to cum on. After getting some needed oxygen, she even catches your dickhead between her lips again, suckling on it to milk the last drops of cum out of you. When you wind down and have to gently push her off an increasingly sensitive dick, the young woman smiles at you, then wipes some of the cum painting her face off with one hand, sucking your seed off her fingers. 'Maybe the sphinxes of old had it right. Eating - well, sucking - a guy is fun, and tasty!' she quips, rising to give you a kiss on the lips before adding, 'I could get used to this!' After that, you clean yourselves up a bit and then return to where you were before this little sexy interlude.";
		NPCSexAftermath Diana receives "OralCock" from Player;
	else if Player is female: [cunni]
		say "seeking out your already moist pussy and the sensitive nub of your clit. As any young woman who ever masturbated, she knows very well how to take care of you, rubbing her thumb back and forth over your magic button to get you going, while two fingers of her other hand gently slide into your pussy, spreading it and feeling around for your sensitive spots. Diana fingers and caresses you for a little while, then soon bends forward and brings her muzzle into play, sticking out her tongue to lick over your clit. It is slick and feels a little bit coarse against your senstive skin, the latter being brought into the mix by the anthro's feline side. Thankfully, she's well aware of this and takes good care to not lap at you too roughly, instead using plenty of spit and slow swipes, intermixed with the tip of her tongue tracing around the hood of your clit in teasing movements that draw aroused moans from your lips.";
		say "     In a husky voice, you tell her that she's being a very good kitty and sexy sphinx right now, then rub the base of her large ears, which makes her purr audibly while still worshiping your pussy. Looking down at the sexy feline and meeting her beautiful, slitted eyes in a shared gaze, you compliment Diana and say that you're very happy that the two of you met. With your clit between her lips, she can do little to reply besides bobbing her head a little and intensifying the purring to show that she feels the same way you do. With a broad grin on your face, you then stroke over her head, fingers digging into her mane of hair to get a grip, then pulling her just a little tighter against your crotch. It feels great to use her mouth for your own pleasure, with the sphinx freely surrendering a lot of control to you and just focusing on giving you the best time she can. Lusty grunts and the wet slurping noises of her tongue working its magic fill the isolated stairwell, sure to betray what is going on to anyone who'd simply stepped up to the doors at either end.";
		WaitLineBreak;
		say "     Even while letting you grind against her face, Diana is far from a passive partner, with her hands stroking the inside of your legs and the uninterrupted vibrations of her purr stimulating your sex even further. The steady buildup of pleasure reaches its climax with another amazing swipe of her tongue over your clit, and you begin to wide the swelling wave of an intense orgasm. With a breathless moan, you grind her face down against your crotch, rubbing up and down against the young woman. When you eventually wind down and let go of her, Diana quips, 'Maybe the sphinxes of old had it right. Eating a girl is fun, and tasty!' Then she rises to give you a kiss on the lips before adding, 'I could get used to this!' After that, you clean yourselves up a bit and then return to where you were before this little sexy interlude.";
		NPCSexAftermath Diana receives "OralPussy" from Player;
	else: [stroking]
		say "futilely searching for any sign of sexual organs. She's slightly nonplussed for a second, then shrugs to herself and simply starts to lick your crotch with her tongue. It is slick and feels a little bit coarse against your senstive skin, the latter being brought into the mix by the anthro's feline side. Thankfully, she's well aware of this and takes good care to not lap at you too roughly, instead using plenty of spit and slow swipes, intermixed with the tip of her tongue feeling around for any especially sensitive spot that makes you moan. In a husky voice, you tell her that she's being a very good kitty and sexy sphinx right now, then rub the base of her large ears, which makes her purr audibly while still worshiping your crotch. Looking down at the sexy feline and meeting her beautiful, slitted eyes in a shared gaze, you compliment Diana and say that you're very happy that the two of you met. 'As am I,' she replies, intensifying the purring.";
		say "     With a broad grin on your face, you then stroke over her head, fingers digging into her mane of hair to get a grip, then pulling her just a little tighter against your crotch. It feels great to use her mouth for your own pleasure, with the sphinx freely surrendering a lot of control to you and just focusing on giving you the best time she can. Lusty grunts and the wet slurping noises of her tongue working its magic fill the isolated stairwell, sure to betray what is going on to anyone who'd simply stepped up to the doors at either end. Even while letting you grind against her face, Diana is far from a passive partner, with her hands stroking the inside of your legs and the uninterrupted vibrations of her purr stimulating you even further.";
		WaitLineBreak;
		say "     The slow but steady buildup of pleasure reaches its climax with another amazing swipe of her tongue, and you tremble as waves of pleasure run up and down your spine. With a breathless moan, you grind her face down against your crotch, rubbing up and down against the young woman. When you eventually wind down and let go of her, Diana quips, 'Maybe the sphinxes of old had it right. Eating - well, licking - someone can be fun!' Then she rises to give you a kiss on the lips before adding, 'I could get used to this!' After that, you clean yourselves up a bit and then return to where you were before this little sexy interlude.";
		NPCSexAftermath Player receives "Stroking" from Diana;

to say Diana_TransformationProgress:
	if Libido of Diana is 1: [gryphon to the navel, human belly, cat to the breasts]
		say "     The next words out of Diana's mouth are, 'I - I feel really hot,' saying this with a somewhat worried expression, she is fanning herself with both hands and pulling on the front of her t-shirt in a try to gain relief from the heat. Curious and still a little adventurous, even after having already made Diana cum, you reach out and pull the shirt off her, then lay a hand on her chest, feeling the softly furred curve of her B-cup breasts and giving them a little squeeze. She really does feel abnormally warm to the touch - and almost as if the nanites had been waiting for a signal, a wave of change runs over the young woman's body before your very eyes. Diana's breasts fill out further right under your fingers; now curving enough to be reach the C-cup status, at the same time as more silky smooth white fur sprouts from her skin.";
		say "     The edge of Diana's feline characteristics wanders down over her ribs and her flat tummy, exposed as it is by her pulling on her shirt, to meet a wave of blue fur going the other way. As her last vestiges of human physiology are transformed, the two nanite infections do not seem to actually compete, but rather overlap. An inch or two of the blue gryphon fur turns white to match the color of Diana's feline half, while the white fur above the intersection line becomes a little longer, like on her legs. Blinking in shock as she stops being at least a little human, Diana trembles as she wraps her arms around you to hold on to. The young woman stares down at herself and says, 'I - I guess I knew it was coming sometime, but... now I'm really no longer human in any way. And is this normal? Mixing one and another type of infection? I thought only the stronger one won out.' You can hear from the tone of her voice that she is trying to be brave, but even so the continuing transformations have Diana rather on the edge.";
		WaitLineBreak;
		say "     Therefore, you do the next best thing that comes to mind to calm her nerves - planting a kiss on her lips and starting to make out with her. Sharing a pleasant little time of mutual kissing and being held, she forgets her worries for now. When you eventually pull back and catch your breath, you put as much conviction as you can in a reminder that [italic type]she[roman type] is what counts, not her body or the specifics of her looks. Also, it may be quite nice if the nanites aren't just doing 'the usual' with her - she'll be beautiful and exotic, even in the multitude of species now living in the mall. Diana happily accepts your words and viewpoint, still eager to put a lot of faith in the person she met only a little while ago and let claim her virginity. Arms wrapping around you, the naked young woman gives you a tight hug and says, 'Thank you so much. I'll take those words to heart. And... this was fun. A bit scandalous, but I kinda like that, if I think about it now.'";
		now Libido of Diana is 2; [gryphon/cat transformations met, starting to overlap]
	else if Libido of Diana is 2: [gryphon/cat transformations met, starting to overlap]
		say "     The next words out of Diana's mouth are, 'I - I feel really hot,' saying this with a somewhat worried expression, she is fanning herself with both hands and pulling on the front of her t-shirt in a try to gain relief from the heat. Curious and still a little adventurous, even after having already made Diana cum, you reach out and pull the shirt off her, then lay a hand on her chest, feeling the softly furred curve of her C-cup breasts and giving them a little squeeze. She really does feel abnormally warm to the touch - and almost as if the nanites had been waiting for a signal, a wave of change runs over the young woman's body before your very eyes. While her breasts do not grow any further, there is a visible change in her fur as a wave seems to run upwards over her chest, with the fur becoming a little longer, like on her legs. At the same time, the white of her Siamese cat coat spreads down, displacing the blue color her lower fur had up till now. Before long, the overlap is just about complete, with the last thing to change being her head hair that becomes a little longer and wilder, kinda like a mane.";
		say "     The young woman stares down at herself and says, 'Hm, I'm tingly all over. Feels good though. I wonder if that's the end of me transforming. Doesn't seem to be much more that could happen, eh?' You can hear from the tone of her voice that she has accepted the continuing transformations and seems to be alright with them now. Trying to be supportive, or possibly just horny, you plant another kiss on her lips and start to make out a little more. Sharing a pleasant little time of mutual kissing and being held, you eventually pull back and catch your breath, then mention that it may be quite nice if the nanites aren't just doing 'the usual' with her - she's got the look of a sphinx now, beautiful and exotic, even in the multitude of species now living in the mall. Diana smiles at your words and gives you a tight hug. 'Thank you so much. I'll take those words to heart. And... this was fun. A bit scandalous, but I kinda like that, if I think about it now.'";
		now Libido of Diana is 3; [complete anthro sphinx now]
	else if Libido of Diana is 3: [complete anthro sphinx now]
		say "     The next words out of Diana's mouth are, 'Oh no, I can feel another of those heat flashes! But... what will this be now?! I'm already fully transformed!' she exclaims with a somewhat worried expression, as she fans herself with both hands. It's not enough, and the young woman quickly proceeds to peel the shirt off her chest, despite it clearly making all that much difference. She pants loudly, her chest with its C-cup breasts heaving as she bends forward to brace herself with both hands on her lets, fingers digging into the fur there. Without even touching her, you can feel the heat radiating off Diana's body. Something big must be ramping up right now! Then suddenly, you see it - the young woman's back starts to bulge out in two spots, just beneath the shoulderblades! Then, before your very eyes, two wings almost seem to burst out of her body, growing with such explosive suddenness that one of the flailing appendages smacks right into your face, sending you stumbling back and falling onto your ass.";
		say "     Needing a second to shake off your own surprise at the sudden extra step for Diana's transformations, you look up and see her standing over you, looking concerned. 'Are you alright?' she asks. True to form as the very caring person she is, Diana's crisis of identity instantly got pushed aside to worry about you instead, and she quickly adds, 'I didn't mean to hit you! You're not hurt, are you?' That said, the young sphinx offers a hand to help you get up, and soon you're standing face to face again. As she fusses over you, gently touching your face to check if anything hurts, you gently catch her hand and tell her you're tough and will be alright. You mainly fell down because of the surprise and stumbling over your own feet. This gives her comfort and she calms down visibly, now finally taking account of her own bodily changes, turning her head to look over one shoulder. 'Wings, huh? So much for being a sphinx, eh?' With a chuckle, you tell her she's still a sphinx - just a Greek one, instead of an Egyptian one, as is fitting for her name.";
		WaitLineBreak;
		say "     'Oh? I always thought... you know, the famous sphinx in Giza, that that was the main one. But now that you say it... yeah, dad had a bookend like that in his office. A sitting sphinx, with wings. I... might have accidentally dropped it, when I was playing in there one day as a kid.' Slightly embarrassed, Diana looks to the side, then adds, 'Won't he be surprised when they come back from vacation and see the new me? I never was too much into the stories about all those myths, not like my parents and brother. Guess now I'll have to catch up on what being a sphinx means, and all that. Hm, wait - how do I even wear clothes like this? With two extra limbs sticking out of my back!?' Helping her retrieve the t-shirt she took off, you assist Diana in making fairly large holes in the back side, large enough for her to thread her folded wings through, one after the other. 'Odd, that I can just move them as if I always had them. But hey, guess it's best not to think about such things and get a headache from it. Thanks for being here with me, by the way.' Diana smiles and gives you a tight hug. 'You know, I think this might be it. I can't help but feel that I've reached the end of changes in my body. About time too!'";
		now Libido of Diana is 4; [anthro, winged sphinx]

to say DianaFuck_DressingRoom_Intro:
	say "     [if Diana is in Foodcourt]Stepping up close to where Diana is sitting, [else]Stepping up close to where Diana is standing, [end if] you lean in and bring your mouth close to one of her pointy, feline ears. As you whisper into it what you want to do, eagerness vibrating in your voice, the young woman's eyes widen, and she glances left and right, afraid someone overheard your lewd offer. At the same time, she clearly isn't averse to what you suggested, for her face shows an miscivious smile when she looks back to you. Licking her lips, she reaches out to you, touching your side and replying in a quietly excited tone, 'Let's do it!' [if Diana is in Foodcourt]Quickly finishing up and grabbing her stuff, Diana stands up from the booth and [else]Quickly putting a book she was holding back on the shelf, Diana [end if]follows you into the wide, people-packed hallways of the mall, holding your hand as you lead the way. It doesn't take long to make your way to a certain abandoned store, in which you first met [if Resolution of Dressing Room Crisis is 2]and fucked [end if]Diana. The clothes boutique is still empty of inhabitants as well as goods, with the whole inventory long looted and no one apparently interested in moving into it, as the place is fairly far away from the food court or other points of interest.";
	say "[DianaFuck_DressingRoom_Main]";

to say DianaFuck_DressingRoom_Main:
	say "     Looking over to the hybrid woman by your side, you and Diana smile eagerly at each other. Remembering how you met her, sobbing to herself in one of the dressing booths, right over there, you can't help but feel lucky that you met this amazing young woman. All she needed was some kind words and friendly attention, confirming that she wasn't turning into a hideous creature, and now... she's become a friend, and an eager sex kitten too. Giving her hand a squeeze and wiggling your eyebrows, you lead Diana over to the very booth from last time, pulling aside the curtain like a gentleman. With a giggle, she kisses your cheek and steps into the booth, now looking at the floor-length mirror with confidence, and throwing you a lusty look in it too. Following close behind, you pull the curtain shut after yourself, dividing your private little love-nest from the rest of the world.";
	WaitLineBreak;
	say "     There's no need for words, as you both know why you came here, and you pull Diana close to yourself, kissing her eagerly receptive lips in a stormy embrace. Letting your tongue dart into her mouth, you make out with her in breathless intensity, while she [if Player is not barecrotch]works on relieving you of your clothing[else]strokes your body and then down to your crotch[end if]. With her fingers stroking and wrapping around your length, your [Cock of Player] shaft is hard and erect in no time at all, sticking out and rubbing against the insides of Diana's legs. At the same time as she's feeling you up, you're touching her in turn, hands pushing up the sides of her shirt. As you reach her armpits with the handful of fabric, you draw back for a second from kissing her, then pull the front side of the shirt up and over her head, hooking it behind her neck to expose Diana's whole front, and the well-rounded breasts she calls her own.";
	say "     Bringing your hands up to cup her breasts, you breathlessly compliment the young woman's beauty, meeting her gaze for a second to make sure she knows you mean it. Then you bending your neck to lick her nipples, tongue lapping over one, then the other, going back and forth. Pleased sights escape Diana's mouth as you worship her breasts, then capture one of them between your lips and start to suck on it. 'Oooohhh! That feels amazing!' she squeals in arousal, her fingers wrapping tighter around your erect manhood and continuing to stroke it. Flicking the tip of your tongue over the sensitive nipples of your eager partner, you switch back and forth between breasts a few times to wind her up, then decide it is time to move forward to the main event, as you're not planning to just cum all over the floor from her jerking you off. Raising your head, you walk Diana backwards until she's right up against the little bench at one end of the dressing booth, and sits down on its edge.";
	WaitLineBreak;
	say "     Hastily pushing her skirt up, you stroke over Diana's pussy lips through the thin fabric of her panties, feeling that they're soaked with the signes of her arousal. Yeah, she's ripe for a good, hard fuck! You then hook your fingers under the sides of that flimsy piece of cloth, pulling it off in one quick move. Almost before the panties hit the carpeted floor, you're in between your sexy anthro's spread legs, hard shaft leading the way. Grabbing it by the base, you line yourself up with her slick nether lips, nudging them with your dickhead and drawing a high-pitched, needy moan from her. You grunt in intense satisfaction as your dickhead slips inside the young woman, pushing deep into her moist passage. Her inner muscles ripple wildly around your invading member, squeezing it from all sides before relaxing again and your partner lets out a deep mrowl, filled with animalistic need.";
	say "     As if replying to her, your own instincts kick in hard as well, and you immediatly begin to pound your hips forward, rabbit-fucking the sexy feline as she wraps her legs around you, pulling you in closer. Diana's hands pull on your shoulders and she meets your lips in a hungry kiss, purring pleasantly from the depths of her throat. The two of you need no words to understand each other after that, your bodies doing the talking for you - from the way her legs push against your ass, to your own exploration of her mouth with your tongue and the young woman's fingernails raking your back to urge you to fuck her harder. Fucking Diana is wild, to give it a name, even though the word barely covers just how enthusiastic the little sex-kitten takes to having a dick inside her. She wraps herself around you tightly, both with her sweet little pussy as well as arms and legs, clinging to your body in relentless desire. You can't even pause and get a breather, as Diana will just grind herself against you from beneath, riding your dick for her own pleasure.";
	WaitLineBreak;
	say "     With such non-stop stimulation, it is little wonder that your hybrid partner reaches the place she is rushing to reach before much longer, fingernails digging into your back and pussy twitching around your shaft as she climaxes. The trembling of her sex around your member and her continuing grinding push you over the edge just moments later, and you start to pump your potent load deep into her receptive body, spurt after spurt flooding Diana's pussy and womb.";
	NPCSexAftermath Diana receives "PussyFuck" from Player;
	say "     With the tight grip of the young woman's arms slackening as she rides out the high of her orgasm, Diana comes to lean against the wall of the dressing booth. 'That was just... wow.' She's breathless, still trembling and twitching a little as her body isn't done sending signals of pleasure. You're fine with not having to talk for right now, exhausted form your wild coupling yourself and trying to catch your breath, all the while you happily keep your cock sheathed inside her, still throbbing with the ebbing spurts of your own climax. A minute or two later, you eventually withdraw from her, gentle and slow, with her tight pussy snapping back to looking almost untouched as soon as your shaft isn't spreading it open anymore. Seems almost like her body is thirsty for keeping all of your seed inside, with not a drop leaking out. Smiling up at you, Diana puts her shirt back in order, so it is no longer uncomfortably pushing against the back of her neck when she leans against the wall.";
	WaitLineBreak;
	if Libido of Diana < 4: [not yet fully transformed]
		say "[Diana_TransformationProgress]";
		WaitLineBreak;
	say "     With a contented sigh, Diana retrieves her panties and gets fully dressed again, then the two of you step out of the dressing room, back into the empty store. 'I love being with you, and fucking our brains out, haha,' she says in a happy tone, leaning in to give you a kiss on the cheek. 'The only downside is having to stand in line for freshening up afterwards. You know, we're really lucky the mall has a top tier huge fitness studios too, because showers aren't exactly standard installations for a mall. I mean, there's two or three single ones, in staff lockerrooms, but without the large communal ones in the studio... you can imagine how thick the musk of everyone would be, with so many people packed into the place.' Scrunching her nose at the thought, Diana gives your arm another quick stroke, then gets going with the words, 'See you later, sexy!'";

Diana ends here.
