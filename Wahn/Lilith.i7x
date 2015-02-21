Version 1 of Lilith by Wahn begins here.
[Version 1.2: Lilith + Retriever Threesome]

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

[ Dexterity of Lilith (sex with evil Elijah)                         ]
[  0: Player hasn't seen them together yet                           ]
[  1: has walked in on them                                          ]

[ LilithKidCounter - number of children with the player              ]
[ LilithPregCounter - timer for the next birth (48h from start)      ]

Section 1 - Lilith, the succubus

Lilith is a woman. Lilith is in Sacristy. The hp of Lilith is normally 0.
The description of Lilith is "[LilithDesc]".
The conversation of Lilith is { "Mew!" }.
lastLilithTalk is a number that varies.  lastLilithTalk is usually 555.		[turn-counter for talking delays (humanity restoration)]
LilithPregnancy is a number that varies.
LilithKidCounter is a number that varies.
LilithPregCounter is a number that varies.
AtticusCounter is a number that varies.

An everyturn rule:
	if LilithPregCounter is 1:
		increase LilithKidCounter by 1;
		increase score by a random number between 5 and 10;
		if player is in Sacristy:
			say "     Lilith suddenly says 'It's time', her water breaking a second later. She gets into a comfortable position on the bed, legs spread and then... puts her hand between her legs and starts masturbating. Seems like everything is about sex with these demons. The birth of your child is a surprisingly easy and arousing affair, accompanied by Lilith's lustful moans and pants, with the baby demon rapidly crowning, then slipping out of his mother as she orgasms. He looks like a perfect and beautiful human baby, squeaky clean like a newborn on television. Looking closer, you can see the tiny wings on his back and the tail with its spaded tip.";
			say "     [WaitLineBreak]";
			say "     A satisfied grin on her face, Lilith takes the child and sets him against her breast, feeding him. Before your eyes, the little incubus grows in leaps and bounds, rapidly passing the stages of toddler and little child, soon sitting on Lilith's lap instead of being held by her. Getting to his early teens moments later, your son starts putting both hands on his demon mother's breasts, caressing them as he switches off between them, licking over her nipples and drinking more milk.";
			say "     The boy goes through puberty rapidly, his body continuing to grow until he becomes a stunningly handsome eighteen year old, which is where the progress stabilizes and ebbs out. Now no longer drinking from her, he just nuzzles and strokes Lilith's breasts, his cock rock-hard. Then the succubus reaches down and puts a hand on his manhood, taking hold of it and starts jerking him off. Your son gives you a broad grin as his mother continues to stroke him, and soon blows an impressive load all over himself, her and the bed. Scooping up a bit of cum with her fingers, Lilith licks it off them and tells him 'Leave us, for now.' Your handsome and bare-ass naked offspring saunters out of the room, not without giving you a suggestive wink.";
			now LilithPregnancy is 0;
		otherwise:
			say "You have a strange feeling in your body, as if you somehow just know that one of your offspring has entered this world. Maybe you should back to the Burned-Out Chapel and check with Lilith.";
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
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Lilith], LILITHPREGNANCY: [LilithPregnancy], KIDCOUNTER: [LilithKidCounter], PREGCOUNTER: [LilithPregCounter] <- DEBUG[line break]";
	if (hp of Lilith is 0):   [starting state]
		say "ERROR-Lilith-001A: She should not be around yet anywhere where players can see her.";
	otherwise:
		say "     Lilith is a woman with breathtaking looks and a curvy body, which she shamelessly displays for you in all its naked glory. Looking her over you would almost think she was still human, if it weren't for the large bat-like wings coming out of her back, and of course, the small horns on her head and the rather feral look in her green, slit pupil eyes.";
		if LilithPregnancy is 2:
			say "     Her belly is currently bulging outwards in a small curve, showing the result of your recent coupling growing inside her.";
		otherwise if LilithPregnancy is 3:
			say "     Her belly is currently bulging outwards quite a bit, showing the result of your recent coupling growing inside her. The impressive breasts on her chest have filled out even more, with their nipples sometimes leaking small amounts of succubi milk.";

instead of conversing the Lilith:
	if (hp of Lilith is 0):      					[not yet met]
		say "ERROR-Lilith-001B: She should not be around yet anywhere where players can see her.";
	otherwise:
		say "[LilithTalkMenu]";

to say LilithTalkMenu:
	say "[line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Just chat a bit";
	now sortorder entry is 1;
	now description entry is "Talk a bit about this and that";
	if Elijah is in the Burned-Out Chapel or hp of Elijah > 0:
		choose a blank row in table of fucking options;
		now title entry is "Ask about Elijah";
		now sortorder entry is 2;
		now description entry is "Inquire about the captured angel";
	if companion of player is demon brute:
		choose a blank row in table of fucking options;
		now title entry is "Let her change your demon brute pet";
		now sortorder entry is 3;
		now description entry is "Make him herm if male, or fully female if herm.";
	if LilithKidCounter > 0:
		choose a blank row in table of fucking options;
		now title entry is "Offspring";
		now sortorder entry is 9;
		now description entry is "Discuss your offspring with Lilith";
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
			say "Is this what you want?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Just chat a bit"):
					say "[LilithTalk1]";
				if (nam is "Ask about Elijah"):
					say "[LilithTalk2]";
				if (nam is "Let her change your demon brute pet"):
					say "[LilithTalk3]";
				if (nam is "Offspring"):
					say "[LilithTalk4]";
		otherwise if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the succubus, shaking your head slightly as she gives a questioning look.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option.  Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say LilithTalk1:
	say "     With a smile on her lips, Lilith recounts several of her sexual encounters, in very graphic detail. You get drawn into the story, touching and stroking her as she puts your hands on her body to demonstrate this or that. When you finally shake out of it and remember that you only wanted to talk to her, not have sex, you're still a bit more horny and aroused than before.";
	increase libido of player by 10;
	wait for any key;

to say LilithTalk2:
	if hp of Elijah is 0:
		say "     'Oh, him? Nice catch by the others, but I didn't bother to reserve a place in line.' She shrugs and runs a finger down over her breasts and to her pussy, drawing your looks with it. 'Been there, done that, you know. Other than all these new converts, I was there at the beginning and had lots of fun with the winged boys after I broke up with my ex. They're cute and all, but how good in bed can a man be if he's only had his cock for a few hours or days?'";
	otherwise if hp of Elijah > 0 and hp of Elijah < 99:
		say "     'Everyone is still whining about losing the angel. I don't really care - it's their own fault, if they couldn't even fight you off. All of them against one of you - they came at you one after another, didn't they? Amateurs.' She shrugs, then starts running her finger around one of her nipples. 'If they had done it right and properly seduced him, he wouldn't even have wanted to go. Who needs chains if you can control lust.' With a seductive wink, she saunters over to the bed and fingers her pussy, sitting in a position in which you can see everything.";
	otherwise if hp of Elijah is 99:
		say "     'Good work in making something out of the kid... he's come visiting a few times now. Not bad at all between the sheets, and black really is his colour.'";
	otherwise if hp of Elijah is 100:
		say "     'That little winged cutie? He's down below now... and I hear he's made quite a splash with Lucifer. His angel ass is out infernal master's new favorite toy. He won't even stop fucking him when meeting the demon princes - just has their meetings in his quarters as he rams his ass, or carries his angel pet around impaled on his shaft.'";
	wait for any key;

to say LilithTalk3:
	if DBCaptureQuestVar is 5:
		if DemonBruteStatus is 0:
			say "     She smiles at you, then gives the demon brute a cruel grin. 'You hear that, big boy? Let's get you a pussy so you're ready to get fucked!' Your companion snarls, his muscles tensing, but the magic holds and he can't do anything.";
			say "     [LilithPregCheck]";
		otherwise if DemonBruteStatus is 1:
			say "     She smiles at you, then gives the demon brute a cruel grin. 'Let's make your pet fully female then. You hear that, big boy? No more cock for you...' Your companion snarls, his muscles tensing, but the magic holds and he can't do anything.";
			say "     [LilithPregCheck]";
		otherwise if DemonBruteStatus is 2:
			say "     She looks a bit surprised and says 'Your pet's already fully female. What do you want to do? Make him grow another vagina? That's not a good idea, believe me...'";
	otherwise if DBCaptureQuestVar > 5 and DBCaptureQuestVar < 99:
		if DemonBruteStatus is 0:
			say "     She smiles at you, then gives the demon brute a cruel grin. 'You hear that, big boy? Let's get you a pussy so you're ready to get fucked!' Brutus ignores her, just giving you a small bow of his head.";
			say "     [LilithPregCheck]";
		otherwise if DemonBruteStatus is 1:
			say "     She smiles at you, then gives the demon brute a cruel grin. 'Let's make your pet fully female then. You hear that, big boy? No more cock for you...' Brutus ignores her, just giving you a small bow of his head.";
			say "     [LilithPregCheck]";
		otherwise if DemonBruteStatus is 2:
			say "     She looks a bit surprised and says 'Your pet's already fully female. What do you want to do? Make him grow another vagina? That's not a good idea, believe me...'";
	wait for any key;

to say LilithTalk4:
	say "You discuss your demon offspring with Lilith, and she smiles at you. 'Our [LilithKidCounter] demon spawn are busy corrupting the world!'";
	wait for any key;

to say LilithPregCheck:
	if LilithPregnancy is 0 or LilithPregnancy is 4:
		if cocks of player > 0:
			say "     She turns back to you and runs her tongue sensuously along her lips. 'There's a small hitch yet... in order to do what you want with your pet, there's one irreplaceable thing we still need. Succubus breast milk.' She strokes along the side of your chest, then rubs your crotch. 'But having a willing succubus and yourself here, that shouldn't be a problem for long...' She gives you a seductive smile, nodding towards her bed.";
		otherwise:
			say "     She turns back to you and runs her tongue sensuously along her lips. 'There's a small hitch yet... in order to do what you want with your pet, there's one irreplaceable thing we still need. Succubus breast milk.' She strokes along the side of your chest, then rubs her stomach. 'You've got a succubus here willing to help you out with that. Why don't you go find a way to grow a cock, and after that, the milk shouldn't be a problem for long...' She gives you a seductive smile, nodding towards her bed.";
	otherwise if LilithPregnancy is 1:
		if cocks of player > 0:
			say "     She turns back to you and runs her tongue sensuously along her lips. 'There's a small hitch yet... in order to do what you want with your pet, there's one irreplaceable thing we still need. Succubus breast milk.' She strokes along the side of your chest, then rubs her stomach. 'I think you've knocked me up last time, but... why don't we just make sure.' She gives you a seductive smile, nodding towards her bed.";
		otherwise:
			say "     She turns back to you and runs her tongue sensuously along her lips. 'There's a small hitch yet... in order to do what you want with your pet, there's one irreplaceable thing we still need. Succubus breast milk.' She strokes along the side of your chest, then rubs her stomach. 'I think you've knocked me up last time, but... how about you go get your cock back and we make sure.' She gives you a seductive smile, nodding towards her bed.";
	otherwise if LilithPregnancy is 2:
		say "     She strokes the bulge in her stomach, saying 'Your child is growing fast, and I feel my breasts getting ready for it. Not much longer now...'";
	otherwise if LilithPregnancy is 3:
		say "     After stroking over her strongly bulging stomach, the succubus moves a hand up to her breast, slightly squeezing it, which results in a small trickle of milk from her nipple. 'Yes, now we're ready.' she says with a grin. 'Could you give me that?' Following her pointing finger, you pick up a, somewhat dented and sticky with cum, golden chalice from the ground and hand it over. She proceeds to milk her own breasts into it, filling the thoroughly desecrated vessel with her milk. Holding it out to you, she continues 'Now just add a drop of blood and dip the amulet in it.'";
		say "     Your blood in another ritual - do you really want to go through with this? ";
		if player consents:
			if DBCaptureQuestVar is 5:
				say "     Taking the demontooth amulet from around your neck, you prick your finger with its sharp point and squeeze out a drop of blood into the chalice. Then you dip the amulet itself into the while liquid with its swirl of red and listen to Lilith chant something in a long forgotten language. 'There.' she finally says after a while, then nods towards your captive demon brute. You pull the amulet back out and put it around your neck, then take the chalice from her. Walking to the demon, careful not to spill anything, you command the creature to open up and pour the liquid down his throat.";
				if DemonBruteStatus is 0:
					say "     A growl rumbles in your demon companion's throat as he fights the change, his whole body trembling. To no avail - falling to his knees, then sinking down to the ground, you see and hear a pussy wetly form between his legs, right under his somewhat reduced cock and balls.";
				otherwise if DemonBruteStatus is 1:
					say "     A growl rumbles in your demon companion's throat as he fights the change, his whole body trembling. To no avail - falling to his knees, then sinking down to the ground, you see his cock and balls shrink further and further and his pussy move up a bit until he finally only has female parts, any trace of his manhood gone from his crotch.";
				increase DemonBruteStatus by 1;
			otherwise if DBCaptureQuestVar > 5 and DBCaptureQuestVar < 99:
				say "     Taking the demontooth amulet from around your neck, you prick your finger with its sharp point and squeeze out a drop of blood into the chalice. Then you dip the amulet itself into the while liquid with its swirl of red and listen to Lilith chant something in a long forgotten language. 'There.' she finally says after a while, then nods towards your demon brute. You pull the amulet back out and put it around your neck, then take the chalice from her. Walking to the demon, careful not to spill anything, you ask Brutus to open up and pour the liquid down his throat.";
				if DemonBruteStatus is 0:
					say "     A curious grunt comes from your demon companion's throat as he feels himself start to change, then his whole body starts to tremble. The large demon falling to his knees, then sinking down to the ground, you see and hear a pussy wetly form between his legs, right under his somewhat reduced cock and balls.";
				otherwise if DemonBruteStatus is 1:
					say "     A curious grunt comes from your demon companion's throat as he feels himself start to change, then his whole body starts to tremble. The large demon falling to his knees, then sinking down to the ground, you see his cock and balls shrink further and further and his pussy move up a bit until he finally only has female parts, any trace of his manhood gone from his crotch.";
				increase DemonBruteStatus by 1;
				say "     [line break]";
				say "     Putting a hand on Brutus shoulder, you ask if he's alright. He stands up, gingerly touching his changed crotch, then nods to you 'Yes, master.'";
		otherwise:
			say "     'Getting cold feet? Now, of all times?' Lilith sighs, then drains the chalice, licking the last of the milk off her lips. 'Not very reliable, my mortal lover. Well, at least you came through for me - or rather into me - when it did count.' She rubs her stomach, bulging with your child, and lies on the bed to stroke her pussy a bit.";

instead of going northeast from Burned-Out Chapel while hp of Lilith is 0:	[first meeting]
	move player to Sacristy;
	say "     As you enter the sacristy, you find a breathtakingly beautiful succubus there, lounging on a large bed. She stretches and flexes her naked body to give you quite a show as she stands up from the bed and comes to stand before you. 'Hello there, brave traveller. You walk right into a building inhabited by demons to visit me - that has to be rewarded. Come on, why don't you share this bed with me...' As she talks, she gives you little touches and caresses, inevitably heightening your arousal a bit.";
	increase libido of player by 5;
	now hp of Lilith is 1;   [has met the player, not the demon brute yet]
								
instead of going northeast from Burned-Out Chapel while hp of Lilith > 0:   [not the first meeting]
	if LilithPregnancy is 4:
		move player to Sacristy;
		say "     As you enter the sacristy, you find Lilith there, with a young incubus nuzzling her breasts and her hand on his hard cock. The male demon, looking about eighteen years old in human terms, looks up to you and with a small shock you recognize his features as very similar to your own. Your son gives you a broad grin as his mother continues to stroke him, and soon blows an impressive load all over himself, her and the bed. Scooping up a bit of cum with her fingers, Lilith licks it off them and tells him 'Leave us, for now.' Your handsome and bare-ass naked offspring saunters out of the room, not without giving you a suggestive wink.";
		now LilithPregnancy is 0;
	otherwise if hp of Lilith is 1 and companion of player is demon brute:   [first time the player takes the demon brute pet where she can see him]
		move player to Sacristy;
		if DBCaptureQuestVar is 5:
			say "     Lilith looks very interested as the captured demon brute follows you into the sacristy. 'A very nice pet... how did you get him so - tame?'";
			say "     She saunters over to your demon brute, stroking her hand over his muscled form and grabbing his balls. He snarls, clearly aching to rape her, you, anyone - then starts to whimper as the succubus squeezes tightly. She gives a somewhat cruel chuckle as she turns to you, her eyes searching out the amulet around your neck. 'Magic, hm? That opens some possibilities... I could change your pet a bit, if you're interested. Just think about how much fun you could have with this big boy if he had a pussy too...'";
		otherwise if DBCaptureQuestVar > 5 and DBCaptureQuestVar < 99:
			say "     Lilith looks very interested as the captured demon brute follows you into the sacristy. 'A very nice pet... how did you get him so - tame?'";
			say "     She saunters over to your demon brute, stroking her hand over his muscled form and grabbing his balls. Brutus stands there, calmly accepting her touching him, only giving a small whimper as the succubus squeezes him a bit too tightly. She gives a somewhat cruel chuckle as she turns to you, her eyes searching out the amulet around your neck. 'Magic, hm? That opens some possibilities... I could change your pet a bit, if you're interested. Just think about how much fun you could have with this big boy if he had a pussy too...'";
			say "     [line break]";
			say "     Telling the succubus you'll have to think about it, you go back to the main chapel itself, followed by your demon companion. When you're far enough away from Lilith's room to be out of earshot, you ask Brutus what he thinks about her offer. The demon hesitates just a second, then bows his horned head to you. 'Anything for you, master. If you want to change me for your pleasure, do so.' Keeping that in mind, you walk back into the sacristy.";
		now hp of Lilith is 2;   [met the demon brute pet]
	otherwise if hp of Elijah is 99 and lastElijahfucked - turns > 12 and lastfuck of Lilith - turns > 6 and a random chance of 1 in 3 succeeds:	[Evil Elijah is horny (hasn't had sex that day) and visits her for a fuck]
		move player to Sacristy;
		if Dexterity of Lilith is 0:
			say "     As you walk over to the door of the sacristy, you hear the moaning of at least two persons from inside, one of them clearly Lilith, the other one a man's voice that seems... familiar. Your curiosity leads you forward and into the room without delay, putting a hot little scene into view. On top of the large bed in the middle of the room is Lilith, her sexy curves shimmering in the candlelight with a slight sheen of sweat as she rides Elijah's shaft. Lying on his back with black wings spread wide, the dark angel's hands meanwhile roam his demonic partner's body, often cupping and squeezing her shapely breasts. 'I was wondering when you'd come by' Lilith purrs to you without even stopping her gyrations on Elijah's hard cock. She chuckles and says 'Very nice work with angel-boy here by the way. No more stuffy and boring Seraphim, is he?', underlining her last words by slamming herself down on the angel's cock and grinding her crotch against his. Then Lilith gives you a seductive smile and purrs 'Come on, join us - there's always room for three in my bed.'";
			now Dexterity of Lilith is 1;
		otherwise if Dexterity of Lilith is 1:
			say "     As you walk over to the door of the sacristy, you hear the moaning of at least two persons from inside, one of them clearly Lilith, the other one a man's voice that seems... familiar. Having a good idea what's going on in thee, you quicken your steps and walk into the room without delay, putting a hot little scene into view. On top of the large bed in the middle of the room is Lilith, her sexy curves shimmering in the candlelight with a slight sheen of sweat as she rides Elijah's shaft. Lying on his back with black wings spread wide, the dark angel's hands meanwhile roam his demonic partner's body, often cupping and squeezing her shapely breasts. 'I was wondering when you'd come by' Lilith purrs to you without even stopping her gyrations on Elijah's hard cock. She chuckles and says 'Our sweet little angel here decided to visit me too. Quite a randy boy, isn't he?', underlining her last words by slamming herself down on the angel's cock and grinding her crotch against his. Then Lilith gives you a seductive smile and purrs 'Come on, join us - there's always room for three in my bed.'";
		say "     [line break]";
		say "     Do you step up and make this a threesome?";
		if player consents:
			say "     [line break]";
			say "     Eager to join in for the sexy fun, you drop your gear right where you stand, then leave a trail of hurriedly stripped-off clothing all the way to the bed. Stepping up on the soft, silky expanse of the succubus's large bed, you're greeted by the two aroused beings already on it, with Elijah stroking a hand up the inside of your leg and Lilith giving your buttcheeks a welcoming squeeze.";
			if cocks of player > 0:
				say "     [line break]";
				say "     Licking her lips, Lilith moves a hand to take hold of your by now fully erect manhood, giving it a soft pull to make you move closer. Sticking out her tongue, she runs it up the underside of your shaft, then teasingly brushes it over just the edge of your cockhead before finally taking it between her soft lips and gently sucking on it. 'Mmmh', she hums in obvious satisfaction as she tastes the precum leaking out of your slit and gives your balls an appreciative squeeze. Pulling off your cock with a pop a moment later, the demoness looks up at you and says 'You're gonna be tasty', then adds with a little nod over her shoulder '...or did you want to take the back door instead?'";
				say "     [line break]";
				say "     Which shall it be? Get a blow-job from Lilith (Y), or butt-fuck her (N)?";
				if player consents:   [bj from Lilith]
					say "     [line break]";
					say "     Perfectly happy to have this hot seductress go down on your cock, you just put a hand on her head as an answer and pull her back against your crotch. Lilith's incredibly soft succubus lips immediately slide back down your shaft, then sink down its length deeper and deeper until she finally has all of it in her mouth. Her hands stroke up and down your sides for a moment, then she grabs your hips to hold on to something and starts sliding up and down on Elijah's shaft again while she gives you your blowjob.";
					if cunts of player > 0:    [herms]
						say "     Lilith really knows all the tricks in pleasing a herm with her mouth and fingers, driving you to ever new heights as she bobs up and down on your shaft, teasing it with her tongue while fingering your pussy. Her expert ministrations keep you at the edge of orgasm for you don't know - or care - how long, your mind lost in a lust-filled haze. Then finally, she goes for the finish line, taking out all the stops. Within moments, you feel the urge to cum rise past the point of no return, long blasts of your seed starting to fill the succubus's mouth. Her lips stay tight around the head of your cock so she doesn't lose a drop, then after the last spurt, she demonstratively swallows it all and croons 'Nice and tasty, lover-boy.'";
						say "     [WaitLineBreak]";
						say "     After a little kiss on your dickhead, the demoness then softly pushes you aside and turns her attention back to the fallen angel under her. Looking down on Elijah, you clearly see the urgent need to cum written in his face - no wonder, with him being balls-deep in Lilith's hot cave all this time and her keeping him just at the edge of sweet release. Lazily circling her hips on his pole, she asks 'Do you want to cum, my sweet little angel?' - and when Elijah immediately groans out 'Yes!' ...she just stops. 'Beg for it' Lilith demands, relishing in the power she has over yet another male, getting him to whimper and call her mistress before she finally starts rocking back and forth again and allows him to climax. Elijah shakes and twitches as his load blasts up into the female demon's womb, and he moans loudly while his hands tightly grip the sheets of the bed.";
						say "     When the exhausted dark angel finishes coming, Lilith pulls off his shaft and flops down on the bed herself. Lying on her back, she smiles up at you while her hand moves down to her crotch, a finger running through the slow trickle of angelic cum leaking out of her pussy. Bringing it to her mouth and tasting Elijah's seed, Lilith gives a content sigh and says 'Wasn't that fun, boys? We'll have to do it again... often.'";
					otherwise:                 [males]
						say "     Lilith really knows all the tricks in pleasing a man with her mouth and fingers, driving you to ever new heights as she bobs up and down on your shaft, teasing it with her tongue while fondling your balls. Her expert ministrations keep you at the edge of orgasm for you don't know - or care - how long, your mind lost in a lust-filled haze. Then finally, she goes for the finish line, taking out all the stops. Within moments, you feel the urge to cum rise past the point of no return, long blasts of your seed starting to fill the succubus mouth. Her lips stay tight around the head of your cock so she doesn't lose a drop, then after the last spurt, she demonstratively swallows it all and croons 'Nice and tasty, lover-boy.'";
						say "     [WaitLineBreak]";
						say "     After a little kiss on your dickhead, the demoness then softly pushes you aside and turns her attention back to the fallen angel under her. Looking down on Elijah, you clearly see the urgent need to cum written in his face - no wonder, with him being balls-deep in Lilith's hot cave all this time and her keeping him just at the edge of sweet release. Lazily circling her hips on his pole, she asks 'Do you want to cum, my sweet little angel?' - and when Elijah immediately groans out 'Yes!' ...she just stops. 'Beg for it' Lilith demands, relishing in the power she has over yet another male, getting him to whimper and call her mistress before she finally starts rocking back and forth again and allows him to climax. Elijah shakes and twitches as his load blasts up into the female demon's womb, and he moans loudly while his hands tightly grip the sheets of the bed.";
						say "     When the exhausted dark angel finishes coming, Lilith pulls off his shaft and flops down on the bed herself. Lying on her back, she smiles up at you while her hand moves down to her crotch, a finger running through the slow trickle of angelic cum leaking out of her pussy. Bringing it to her mouth and tasting Elijah's seed, Lilith gives a content sigh and says 'Wasn't that fun, boys? We'll have to do it again... often.'";
				otherwise:   [fuck her ass]
					say "     [line break]";
					say "     Taking her up on the invitation, you move to kneel behind Lilith, right between Elijah's legs. Reaching around her, you cup her well-rounded breasts for a moment, then slide your hands down the sides of her body until they finally find their way to the well-rounded curves of her butt, stroking and squeezing her cheeks. Looking over her shoulder, the succubus grins and says 'Yeah, fill me with your hard shaft', then bends forward and starts making out with Elijah. In between kisses, she wiggles her ass at you and says 'I'm waiting, lover-boy.' You're barely able to take your eye off the enticing display and your hips almost move forward on their own, causing your erect manhood to bump against the demoness's soft skin. Moving a tiny bit to let your cock find its mark, you then push in, easily penetrating the succubus's well-trained rear entrance. It's amazing how tight she feels, even as her passage readily stretches around you. Soon you're all the way in, your crotch coming in contact with her ass. A moan comes from Lilith 'Yes, yes! Stuff my holes! Fuck me - hard!'";
					say "     [WaitLineBreak]";
					say "     Eager to follow her wishes, you pull back until you're almost all the way out, then slam forward again, making your bodies meet with an audible slap and a pleased gasp from her. But she's not the only one - there's a moan from Elijah too, as your forceful entry makes Lilith's pussy slide up on his own shaft, then sink back down its length as you withdraw. Thrusting deep, you can even feel your cock rub against Elijah's member through Lilith's inner walls, providing a nice little bit of extra stimulation. Continuing to fuck the beautiful demoness and through her the fallen angel, the three of you fill this formerly consecrated room with the sounds of enthusiastically performed, amazing sex. Your coupling goes on quite a while, and you think you acquired some spectators in between, watching from the door until they decided to have sex in the main church chamber. Not that you really care, totally concentrated on the hot demoness under you and tight around your cock.";
					say "     An amazingly hot time later, you can hear a note of urgency rise in Elijah's moans, making it clear that he's pretty close. That awakens a little bit of a competitive impulse in you, making you speed up even more to beat him to it, and soon you pass the point of no return. Driving all the way into Lilith's ass one last time, you gasp loudly as your balls pulse, sending burst after burst of cum deep into the succubus's insides. Just seconds later, your own exclamations are joined by Elijah's moans and you can literally feel him cum, the impulse of his spurts into her vagina transmitted through Lilith's inner walls.";
					say "     [WaitLineBreak]";
					say "     You stay like that for a moment, revelling in the warm, wet feeling of being inside the succubus and holding on to her until you catch your breath. Some moments later you lean over a bit, grinning past her to the exhausted angel lying on the bed and high five your partner in fucking Lilith. Then you pull out slowly, allowing her to pucker to pull tight again and not even lose a drop of cum. The satisfied demoness pulls off Elijah's shaft in turn and flops down on the bed herself. Lying on her back, she smiles up at you while her hand moves down to her crotch, a finger running through the slow trickle of angelic cum leaking out of her pussy. Bringing it to her mouth and tasting Elijah's seed, Lilith gives a content sigh and says 'Wasn't that fun, boys? We'll have to do it again... often.'";
			otherwise if cunts of player > 0:
				say "     [line break]";
				say "     Licking her lips, Lilith snakes a hand around your hips and gives you a soft pull to make you move closer. Sticking out her tongue, she runs it up the inside of your thighs, then teasingly brushes it very lightly over your sensitive pussy lips before spreading them with her fingers going for a deeper lick. 'Mmmh', she hums in obvious satisfaction as she tastes the female juices already starting to moisten your pussy and gives your clit a little nibble. Pulling back a moment later, the demoness looks up at you and says 'Want me to go on?' Perfectly happy to have this hot seductress give you some oral attention, you just put a hand on her head as an answer and pull her back against your crotch. Lilith's fingers immediately start softly brushing over your sensitive pussy lips and you feel her spread them a bit, then she puts her mouth to your pussy, licking and teasing with her tongue.";
				say "     [WaitLineBreak]";
				say "     Lilith really knows all the tricks in pleasing a woman with her mouth and fingers, driving you to ever new heights as she licks you and fondles with her fingers. Her expert ministrations keep you at the edge of orgasm for you don't know - or care - how long, your mind lost in a lust-filled haze. Then finally, she goes for the finish line, taking out all the stops. Within moments, you feel your climax approaching, a pleasant tingly feeling spreading through your whole body and femcum starting to drip from your pussy. Lilith keeps her head between your legs, eagerly licking it all up, then demonstratively swallows it all and croons 'Nice and tasty, lover-girl.'";
				say "     After a little kiss on your wet and swollen folds, the demoness then softly pushes you aside and turns her attention back to the fallen angel under her. Looking down on Elijah, you clearly see the urgent need to cum written in his face - no wonder, with him being balls-deep in Lilith's hot cave all this time and her keeping him just at the edge of sweet release. Lazily circling her hips on his pole, she asks 'Do you want to cum, my sweet little angel?' - and when Elijah immediately groans out 'Yes!' ...she just stops. 'Beg for it' Lilith demands, relishing in the power she has over yet another male, getting him to whimper and call her mistress before she finally starts rocking back and forth again and allows him to climax. Elijah shakes and twitches as his load blasts up into the female demon's womb, and he moans loudly while his hands tightly grip the sheets of the bed.";
				say "     [WaitLineBreak]";
				say "     After the exhausted dark angel finishes coming, Lilith pulls off his shaft and flops down on the bed herself. Lying on her back, she smiles up at you while her hand moves down to her crotch, a finger running through the slow trickle of angelic cum leaking out of her pussy. Bringing it to her mouth and tasting Elijah's seed, Lilith gives a content sigh and says 'Wasn't that fun, boys? We'll have to do it again... often.'";
			move player to Sacristy;
		otherwise:
			say "     [line break]";
			say "     Do you want to just watch them instead?";
			if player consents:
				say "     As you stand back in a position to get a good view, Lilith just shrugs and turns her attention back to Elijah. Still rocking her hips back and forth on his hard pole, she licks over his bare chest, then moves on to suck and lightly bite his nipples. 'Let's give our spectator something good to watch' the demoness croons to Elijah and starts to make out with him hungrily. And it really is quite a show - Lilith rides the dark angel hard and fast, switching up straightforward fucking with enticing stretches of her naked body for both you and him and also making Elijah worship her breasts, caressing and sucking on them.";
				say "     Over time, the fallen angel's moans and pants get louder and more urgent, mirroring his arousal as it builds up more and more. Looking down on Elijah, you clearly see the need to cum written in his face - no wonder, with him being balls-deep in Lilith's hot cave all this time and her keeping him just at the edge of sweet release. Lazily circling her hips on his pole, she asks 'Do you want to cum, my sweet little angel?' - and when Elijah immediately groans out 'Yes!' ...she just stops. 'Beg for it' Lilith demands, relishing in the power she has over yet another male, getting him to whimper and call her mistress before she finally starts rocking back and forth again and allows him to climax. Elijah shakes and twitches as his load blasts up into the female demon's womb, and he moans loudly while his hands tightly grip the sheets of the bed.";
				say "     When the exhausted dark angel finishes coming, Lilith pulls off his shaft and flops down on the bed herself. Lying on her back, she smiles up at you while her hand moves down to her crotch, a finger running through the slow trickle of angelic cum leaking out of her pussy. Bringing it to her mouth and tasting Elijah's seed, Lilith gives a content sigh and says 'Ah, what fun' then adds with a wink to you 'You really should join in next time.'";
				move player to Sacristy;
			otherwise:
				say "     [line break]";
				say "     Seeing you shaking your head, Lilith just shrugs and focuses her attention back to Elijah. After you turn around to leave, the dark angel gives a deep and very pleased moan that makes you wonder what she did to him, though you resist the impulse to look around and keep walking.";
		now lastElijahfucked is turns;
		now lastfuck of Lilith is turns;
	otherwise if lastfuck of Lilith - turns > 6 and a random chance of 1 in 3 succeeds:
		move player to Sacristy;
		if Level of Lilith is 0:
			say "     As you walk over to the door of the sacristy, you hear pants and yips from inside, in a clearly female voice that doesn't belong to Lilith. Your curiosity leads you forward and into the room without delay, putting a hot little scene into view. On top of the large bed in the middle of the room is Lilith, bent over on all fours, with her head right over the crotch of a beautiful golden retriever girl and lapping away at her pussy. Neither of them has noticed you yet, as the young canine woman's head is lying back with closed eyes while she shudders in pleasure and Lilith is completely focused on giving her oral attention. The clear view of the demoness's own moist pussy between her slightly spread legs awakens your libido and makes you think about just joining them on the bed for some fun. Lilith would almost definitively be down for it - she is a succubus after all.";
			now Level of Lilith is 1;
		otherwise if Level of Lilith is 1:
			say "     As you walk over to the door of the sacristy, you hear pants and yips from inside, in a clearly female voice that doesn't belong to Lilith. Seems like Renee is back for some more fun. Quickening your steps a bit, you walk into the room without delay, putting a hot little scene into view. On top of the large bed in the middle of the room is Lilith, bent over on all fours, with her head right over the crotch of the beautiful golden retriever girl and lapping away at her pussy. Neither of them has noticed you yet, as the young canine woman's head is lying back with closed eyes while she shudders in pleasure and Lilith is completely focused on giving her oral attention. The clear view of the demoness's own moist pussy between her slightly spread legs awakens your libido and makes you think about just joining them on the bed for some fun. Lilith would almost definitively be down for it - she is a succubus after all.";
		say "     [line break]";
		say "     Do you climb on the bed and make this a threesome?";
		if player consents:
			if cocks of player > 0:
				say "     [line break]";
				say "     Quietly setting your pack down on the floor, you quickly slide off your clothes bit by bit, then pad over to the bed on silent feet. A moment later, you're standing right next to the soft expanse of Lilith's large bed, much closer to the enticing sight of the succubus['] upturned rear end. Guided by the urgent desire to sink your manhood into her pussy, you kind of automatically climb on the bed and move into position to kneel behind her, grabbing the hard shaft between your legs and rubbing it against Lilith's soft folds. Taking the sudden feeling of a hard cock against her crotch in stride, the succubus doesn't even hesitate a second before spreading her legs some more and tilting her hips to allow you to fuck her more easily. Almost breathless from lust, you nudge her pussy lips apart with your cockhead and slide into her wet and warm passage with a satisfied grunt. It feels amazing to have her pussy tightly gripping your manhood, and you immediately start to fuck her with rapid and hard thrusts.";
				say "     Having sex with this succubus is almost incomparable with other females, as she does and feels exactly how you like it, how you need it, her demonic powers making her the perfect woman to fuck. Gripping your shaft with her pussy, rubbing her hips back against you, even stroking your body with the sides of her wings, she's got you totally in her power. It's no surprise that, with your libido reaching new heights rapidly, you're driven to an explosive climax, cock pulsing with blast after blast of your load you shoot into Lilith's womb.";
				say "     [WaitLineBreak]";
				say "     [if LilithPregnancy is 0 or LilithPregnancy is 4]'Yes, yes!' she moans, lifting her head from the golden retriever's crotch to look back at you. 'I can feel your load inside me, filling me.' [otherwise]'Yes, yes!' she moans, pulling your lips to hers for a deep kiss. 'I can feel your load inside me, filling me. Bathing our son in his father's seed.' [end if]She lets you rest inside for a moment, her inner muscles milking the last drops of cum from your cock, then slowly pulls off your shaft and crawls towards the panting young canine in front of her. In a charming voice, she tells the retriever girl 'I think he's good for at least another load, Renee. How about we give him a little show to get him ready for some more action.' With a happy reply of 'Yes, mistress', the golden-coated canine eagerly starts to make out with Lilith, rubbing her breasts against the succubus['] own impressive rack while stroking her body with her hands.";
				if cocks of player is 1:
					say "     The sight of two curvy woman making out and touching each other in front of yourself on the bed does indeed have the desired effect on your libido, soon getting you all hard and ready for some action again. Though as you move up between their legs with your cock in hand, you soon find yourself presented with two pussies, as you're in the perfect position to thrust into either, with Lilith still lying chest to chest on top of Renee and making out with her. Decisions, decisions, ... infernally hot demon or sweet innocent canine. In the end, you choose... both. Putting your hard shaft between Renee's swollen pussy lips first, you thrust deep into the eager retriever, pounding into her and making her pant and yip in lust - then you pull out after a while and sink yourself into Lilith's pussy with a deep thrust that has the succubus gasp and moan at the sudden invasion.";
					say "     It's quite a bit of fun to switch up between the two horny women, going balls deep in one, then the other and back again. They never quite know when you'll start pounding the other, often filling the room with surprised gasps and squeals in this very hot threesome. Eventually, after a pretty exhausting but totally amazing time, you reach a second orgasm, this time filling Renee's womb with your fertile seed. As you fall back on the bed afterwards, breathing heavily, both women quickly join you, with Renee snuggling up against your side while Lilith sensuously strokes her hand up and down your side and down to your crotch. You rest like that for a while, then you get back up with a sigh, collecting your gear and clothes again while Lilith sends Renee out to 'Take herself for a walk and bring back someone cute as dessert.'";
				otherwise if cocks of player is 2:
					say "     The sight of two curvy woman making out and touching each other in front of yourself on the bed does indeed have the desired effect on your libido, soon getting you all hard and ready for some action again. Though as you move up between their legs, you soon find yourself presented with two pussies to fuck, as you're in the perfect position to thrust into either, with Lilith still lying chest to chest on top of Renee and making out with her. If you had only one shaft, it'd be a hard decision - but - thanks to being hung with two cocks, you can take the infernally hot demon and the sweet innocent canine at the same time. With a lusty grin on your face, you line up your lower cock with Renee's swollen pussy lips first, then aim your upper cock at Lilith's still cum-dripping hole and thrust in. There's a gasp in two voices at your sudden invasion, followed by loud and rapid moans as you start fucking them with deep thrusts.";
					say "     It's quite a bit of fun to take two horny women at the same time, going balls deep and feeling them both around you, then pulling out quickly and letting your cocks slap against each other. You even put both of your cocks into Lilith a few times stretching her as only a sex demon can, though go back to pounding them both quickly as not to neglect either of them. All in all, it's a pretty fun threesome that fills the despoiled sacristy with moans, gasps and yips. Eventually, after a pretty exhausting but totally amazing time, you reach a second orgasm, giving Lilith's womb a second filling while at the same time blasting Renee's insides with your fertile seed. As you fall back on the bed afterwards, breathing heavily, both women quickly join you, with Renee snuggling up against your side while Lilith sensuously strokes her hand up and down your side and down to your crotch. You rest like that for a while, then you get back up with a sigh, collecting your gear and clothes again while Lilith sends Renee out to 'Take herself for a walk - and bring back someone cute as dessert.'";
				otherwise if cocks of player > 2:
					say "     The sight of two curvy woman making out and touching each other in front of yourself on the bed does indeed have the desired effect on your libido, soon getting you all hard and ready for some action again. Though as you move up between their legs, you soon find yourself presented with two pussies to fuck, as you're in the perfect position to thrust into either, with Lilith still lying chest to chest on top of Renee and making out with her. If you had only one shaft, it'd be a hard decision - but - thanks to being hung with more than just one cock, you can take the infernally hot demon and the sweet innocent canine at the same time. With a lusty grin on your face, you line up one of your [cock of player] shafts with Renee's swollen pussy lips first, then aim another at Lilith's still cum-dripping hole and thrust in. There's a gasp in two voices at your sudden invasion, followed by loud and rapid moans as you start fucking them with deep thrusts.";
					say "     It's quite a bit of fun to take two horny women at the same time, going balls deep and feeling them both around you, then pulling out quickly and letting your cocks slap against each other. You even put both of your cocks into Lilith a few times stretching her as only a sex demon can, though go back to pounding them both quickly as not to neglect either of them. All in all, it's a pretty fun threesome that fills the despoiled sacristy with moans, gasps and yips. Eventually, after a pretty exhausting but totally amazing time, you reach a second orgasm, giving Lilith's womb a second filling while at the same time blasting Renee's insides with your fertile seed. As you fall back on the bed afterwards, breathing heavily, both women quickly join you, with Renee snuggling up against your side while Lilith sensuously strokes her hand up and down your side and down to your crotch. You rest like that for a while, then you get back up with a sigh, collecting your gear and clothes again while Lilith sends Renee out to 'Take herself for a walk - and bring back someone cute as dessert.'";
				if LilithPregnancy is 0:              [not already preggers]
					let LilithPregChance be a random number from 1 to 20;
					if LilithPregChance > 5:            [75% chance]
						now LilithPregCounter is 48;      [48 turns till birth]
						now LilithPregnancy is 1;					[invisibly pregnant]
			otherwise if cunts of player > 0:
				say "     [line break]";
				say "     Quietly setting your pack down on the floor, you quickly slide off your clothes bit by bit, then pad over to the bed on silent feet. A moment later, you're standing right next to the soft expanse of Lilith's large bed, much closer to the enticing sight of the succubus['] upturned rear end. Guided by your rising lust, you climb onto the bed and move into position behind her, then lean forward and lick over the succubus['] sensitive pussy lips.  Taking the sudden feeling of someone licking her privates in stride, the demoness doesn't even hesitate a second before spreading her legs some more and tilting her hips to allow you to reach her crotch more easily.";
				say "     After a while of enjoying your oral attention while she licks the golden retriever girl, Lilith raises her head from the young canine's crotch and says 'Renee, why don't you take care of our friend here a bit too? Can't have her be left out while we have all the fun.' The young canine gives a very obedient 'Yes, mistress' and after a bit of moving around on the bed, the three of you find yourselves lying in a kind of triangle position, with your head at Lilith's crotch, hers right in front of Renee's and the anthro canine ready to lap at your pussy. Just like that, you start fondling and caressing each other, licking and teasing with your tongues.";
				say "     [WaitLineBreak]";
				say "     As the arousal of everyone involved rises, each one of you gets more active in pleasing their immediate partner, causing the sexual tension in your little group to get higher and higher. Renee is the first one to be pushed to a pretty noisy climax when Lilith gives her clit another little nibble, and with a high-pitched howl, she writhes on the bed, squirting femcum from her pussy. 'Mmmh, tasty' Lilith hums to herself as she licks the young canine's female juices up. With the golden retriever girl lost in her own orgasm and just lolling on the bed as she pants, Lilith quickly gets on top of you so you can please each other in the 69 position. As a sex-demon, she really knows how to handle a woman, doing exactly what you like and how you like it - so it's no surprise that she manages to time your two orgasms in just the right way so you come together, holding on to each other's body as the exhilaration of climax makes you shudder and moan.";
				say "     Some time later, when her high of coming slowly winds down, Lilith pulls Renee's head to her own, sharing a deep kiss with the retriever, then strokes her hair affectionately. 'That's a good dog. Now be a good little bitch and take yourself for a walk.' Lilith says while running a finger along the red leather collar around the canine woman's neck. She starts to continue saying 'And if you meet anyone...', which Renee immediately finishes for her '...I'll let them mount me and bring them here afterwards. As you commanded, mistress.' With a smile and nod, Lilith gives the retriever a playful little slap on the butt and watches as she leaves the room with a happy spring in her step. 'Ah, so much more obedient and useful than hellhounds. I'll have to collar a few more of these bitches before I return home.' Lilith says to herself, then leans back to lounge on the bed.";
			otherwise:
				say "     [line break]";
				say "     Quietly setting your pack down on the floor, you quickly slide off your clothes bit by bit, then pad over to the bed on silent feet. A moment later, you're standing right next to the soft expanse of Lilith's large bed, much closer to the enticing sight of the succubus['] upturned rear end. Guided by your rising lust, you climb onto the bed and move into position behind her, then lean forward and lick over the succubus['] sensitive pussy lips.  Taking the sudden feeling of someone licking her privates in stride, the demoness doesn't even hesitate a second before spreading her legs some more and tilting her hips to allow you to reach her crotch more easily.";
				say "     After a while of enjoying your oral attention while she licks the golden retriever girl, Lilith raises her head from the young canine's crotch and says 'Renee, why don't you take care of our friend here a bit too? Can't have it be left out while we have all the fun.' The young canine gives a very obedient 'Yes, mistress' and after a bit of moving around on the bed, the three of you find yourselves lying in a kind of triangle position, with your head at Lilith's crotch, hers right in front of Renee's and the anthro canine ready to lap at genderless, but still sensitive, crotch. Just like that, you start fondling and caressing each other, licking and teasing with your tongues.";
				say "     [WaitLineBreak]";
				say "     As the arousal of everyone involved rises, each one of you gets more active in pleasing their immediate partner, causing the sexual tension in your little group to get higher and higher. Renee is the first one to be pushed to a pretty noisy climax when Lilith gives her clit another little nibble, and with a high-pitched howl, she writhes on the bed, squirting femcum from her pussy. 'Mmmh, tasty' Lilith hums to herself as she licks the young canine's female juices up. With the golden retriever girl lost in her own orgasm and just lolling on the bed as she pants, Lilith quickly gets on top of you so you can please each other in the 69 position. As a sex-demon, she really knows how to handle your body, doing exactly what you like and how you like it - so it's no surprise that she manages to time your two orgasms in just the right way so you come together, holding on to each other's body as the exhilaration of climax makes you shudder and moan.";
				say "     Some time later, when her high of coming slowly winds down, Lilith pulls Renee's head to her own, sharing a deep kiss with the retriever, then strokes her hair affectionately. 'That's a good dog. Now be a good little bitch and take yourself for a walk.' Lilith says while running a finger along the red leather collar around the canine woman's neck. She starts to continue saying 'And if you meet anyone...', which Renee immediately finishes for her '...I'll let them mount me and bring them here afterwards. As you commanded, mistress.' With a smile and nod, Lilith gives the retriever a playful little slap on the butt and watches as she leaves the room with a happy spring in her step. 'Ah, so much more obedient and useful than hellhounds. I'll have to collar a few more of these bitches before I return home.' Lilith says to herself, then leans back to lounge on the bed.";
		otherwise:
			say "     [line break]";
			say "     Do you want to just watch them instead?";
			if player consents:
				say "     Quietly moving over to where you can get the best view, you watch Lilith's eager attack on the retriever girl's pussy, with her wiggling tongue drawing lustful yips and squeals from [if Level of Lilith is 0]the canine woman[otherwise]Renee[end if]. As a sex demon, the succubus really knows how to handle a woman, pleasing her with her mouth and fingers. Fondling, caressing and licking her partner, Lilith slowly pushes the retriever's arousal higher and higher, while always knowing when to back off a bit to keep her going just at the edge of orgasm without crossing the line. After holding the young canine in an almost mind-blowing state of lust for quite a while, all the time relishing in the needful pants and the way her paw-hands grip the sheets of the bed, Lilith finally relents and gives the anthro dog's clit a little nibble that pushes her over the edge. With a high-pitched howl, the retriever girl orgasms, writhing on the bed and squirting femcum from her pussy where it is quickly licked up by the demoness. 'Mmmmh, tasty' Lilith hums to herself, licking the last drops of the young canine's female juices off her lips as she sits up. She focuses on you with her slitted, red eyes for a moment, giving little wink that shows she knew you were there all the time, then turns back to the retriever lying before her.";
				say "     'Time to return the favor, my dear Renee.' she says in a very charming voice, then moves to kneel over the canine woman and pulls her head against her crotch. Almost reverently looking up at the demon who just gave her such an intense orgasm not long ago, Renee the retriever girl obediently starts lapping away at Lilith's sex, her long tongue obviously doing a very good job of reaching sensitive spots inside the succubus. Even though she's clearly far less experienced in oral sex than Lilith, Renee's boundless enthusiasm makes up for quite a bit of that, soon driving her mistress moans to get louder and louder. With the eager retriever between her legs and the added arousal of being watched by you, it doesn't take all that long until Lilith is driven to her own pretty vocal climax, gasping and holding Renee's head to her crotch. The young canine just continues to lick at her, lapping up every last bit of Lilith's female juices and swallowing it all hungrily.";
				say "     [WaitLineBreak]";
				say "     When her orgasm slowly winds down, Lilith pulls Renee's head to her own, sharing a deep kiss with the retriever, then strokes her hair affectionately. 'That's a good dog. Now be a good little bitch and take yourself for a walk.' Lilith says while running a finger along the red leather collar around the canine woman's neck. She starts to continue saying 'And if you meet anyone...', which Renee immediately finishes for her '...I'll let them mount me and bring them here afterwards. As you commanded, mistress.' With a smile and nod, Lilith gives the retriever a playful little slap on the butt and watches as she leaves the room with a happy spring in her step. 'Ah, so much more obedient and useful than hellhounds. I'll have to collar a few more of these bitches before I return home.' Lilith says to herself, then leans back to lounge on the bed.";
				move player to Sacristy;
			otherwise:
				say "     [line break]";
				say "     Seeing that Lilith is... busy, you just turn around and silently walk out of the room. As you're at the doorstep, the retriever girl gives a deep and very pleased moan that makes you wonder what Lilith just did to her, though you resist the impulse to look around and just keep going.";
		now lastElijahfucked is turns;
		now lastfuck of Lilith is turns;
	[
	otherwise if LilithKidCounter > 0 and lastfuck of Lilith - turns > 12 and a random chance of 1 in 10 succeeds:	[she's horny (hasn't had sex that day) and her firstborn Incubus son comes for a visit]
		move player to Sacristy;
		say "     As you walk in the sacristy...";
		say "     <find Lilith and an incubus in bed>";
		if player consents:
			say "     <join in>";
			move player to Sacristy;
		otherwise:
			if player consents:
				say "     <watch>";
				move player to Sacristy;
			otherwise:
				say "     <leave>";
	]
	otherwise if LilithKidCounter > 0 and a random chance of 1 in 3 succeeds:	[Lilith is out when the player comes, though her firstborn Incubus son is there...]
		say "     As you walk into the sacristy, you're treated with the sight of a young and handsome incubus waiting for you on the bed. He's lying half on his side, propping up his upper body with an elbow on the bed, grinning as he gives you a suggestive wink. Posing like that, he's showing off all of his naked glory, and you can't stop your eyes from wandering over bis slender but beautifully muscled body. Bathed in the light of the many candles, his tan skin shines, dark and perfect. Your gaze catches on his shapely and erect manhood, only moving on after a moment of reluctance, then comes to rest on his face - his very familiar looking face, with a close resemblance to your own.";
		say "     'Welcome' he says, in a honeyed voice that makes you all tingly inside. '[if AtticusCounter is 0]I'm Atticus. [end if]Mother isn't here right now, as you can see.' His free arm moves to sensuously stroke his chest. 'It'll be a while till she's back. How about we... have some fun in the meantime?'";
		say "     [line break]";
		say "     Do you take him up on that offer? ";
		if player consents:
			increase AtticusCounter by 1;
			say "     The urge to be with this young, adonis-like demon has you walking almost in a trance towards the bed. He moves to the edge of the bed on his knees, pulling your head to his for a deep kiss, then his hands start exploring your body, sliding under your clothes to touch and stroke. Pulling off your gear and clothes one by one, the incubus drops them to the floor and pulls you on the bed with him to make out with you.";
			if cocks of player > 0:
				let diceroll be a random number from 1 to 2;
				if anallevel is 1:
					now diceroll is 2;
				if diceroll is 2:   [BJ]
					say "     While your lips are pressed together and his tongue explores your mouth, one of Atticus hands strays downward, stroking over your [bodytype of player] body until it reaches your crotch. He fondles your balls and takes hold of your by now rock hard [cock of player] shaft. Pulling back from you, he grins at you and says 'So this is the cock that made me. Let's see how it tastes', then moves into position, his soft and shapely lips sliding over the tip of your manhood only moments later. Your demonic offspring eagerly goes down on you, making you moan and grip the sheets under you tightly as the bobbing if his head drives your arousal to new heights.";
					say "     [WaitLineBreak]";
					say "     Atticus gives you an amazing blowjob, instantly reacting to your desires and needs, touching and teasing you in exactly the right spots as only a sex demon can. He holds off on making you reach orgasm, prolonging the intense experience until your balls are almost aching to send forth their stored-up load. Then finally, as he's just got your manhood deep in his throat, he pushes a finger into your asshole, tickling your prostate to push you over the edge. With a loud, lust-filled groan you climax, pumping blast after blast of cum directly into his stomach, then mouth as he pulls back to get a taste of it.";
					say "     After sucking the last little bit of cum out of your soon softening cock, the incubus sticks out his tongue to show you your load, then demonstratively swallows it. Smacking his lips, he says 'Delicious, daddy. I can see why mother let you knock her up. Let's do this again - soon.'";
				otherwise:   [fucking]
					say "     While your lips are pressed together and his tongue explores your mouth, one of Atticus hands strays downward, moving over your [bodytype of player] body until it reaches your crotch. He fondles your balls and jerks your by now rock hard [cock of player] shaft a few times, then slides his hand down between your legs and rubs over your pucker. Pulling back from your mouth, he grins at you and says 'Ah daddy... I want to fuck you so badly.', then pushes you over on your belly and kneads your buttcheeks with his fingers. Your demon son moves into position behind you and a moment later, you can feel the hot and hard shape of his manhood resting against your crack. Atticus eagerly nudges your pucker with his cock, then pushes against it until the muscle relents and he can sink his shaft into you.";
					say "     [WaitLineBreak]";
					say "     The incubus vigorously fucks you with an amazingly good technique, instantly reacting to your desires and needs, bumping you in exactly the right spots as only a sex demon can. He holds off on making you reach orgasm, prolonging the intense experience until your hands are tightly gripping the sheets under you and you're literally panting with the need to come. Then finally, he himself can't take it anymore and switches to rapid thrusts, hammering into you hard and deep. Though even in his rush to get off, he still manages to make you reach your goal at the same time as he is, and the two of you start blasting your loads just seconds apart. While his cock pluses with spurt after spurt of cum shooting deep into your ass, you splatter your own cum all over Lilith's bedsheets. Leaning forward to nibble on your earlobe while his cock still twitches in you with more and more cum, Atticus says 'Let's do this often...'[mimpregchance]";
			otherwise if cunts of player > 0:
				say "     While your lips are pressed together and his tongue explores your mouth, one of Atticus hands strays downward, stroking over your [bodytype of player] body until it reaches your crotch. He fondles your sensitive pussy lips, dipping a finger in between them to feel your increasingly wet snatch. Pulling back from your mouth, he grins at you and says 'Did daddy want to try out how it felt when he knocked up my mother? No problem at all, I'll show you how it's done', then moves into position between your legs, the hot and hard shape of his manhood resting against your crotch. Your demonic offspring eagerly nudges the lips of your pussy apart, then thrusts forward, sinking his shaft into you.";
				say "     [WaitLineBreak]";
				say "     Atticus vigorously fucks you with an amazingly good technique, instantly reacting to your desires and needs, bumping you in exactly the right spots as only a sex demon can. He holds off on making you reach orgasm, prolonging the intense experience until your hands are tightly gripping the sheets under you and you're literally panting with the need to come. Then finally, he himself can't take it anymore and switches to rapid thrusts, hammering into you hard and deep, and orgasms not long after. The unbelievably handsome demon gives a satisfied grunt as he unloads directly into your womb, filling you with his fertile seed. Leaning forward to make out with you while his cock still twitches in you with more and more cum, Atticus says 'Let's do this often... I want to make lots and lots of little demons with you.' Then, after he finishes cumming, he grabs a cushion and slides it under your hips to make sure his seed pools deep inside you and has more of a chance to find an egg.[fimpregchance]";
			otherwise:
				say "     While your lips are pressed together and his tongue explores your mouth, one of Atticus hands strays downward, moving over your [bodytype of player] body until it reaches your crotch. He strokes over your flat front, then slides his hand down between your legs and rubs over your pucker. Pulling back from your mouth, he grins at you and says 'You're genderless? Poor daddy... but at least you've still got another hole to have fun with.', then pushes you over on your belly and kneads your buttcheeks with his fingers. Your demon son moves into position behind you and a moment later, you can feel the hot and hard shape of his manhood resting against your crack. Atticus eagerly nudges your pucker with his cock, then pushes against it until the muscle relents and he can sink his shaft into you.";
				say "     [WaitLineBreak]";
				say "     The incubus vigorously fucks you with an amazingly good technique, instantly reacting to your desires and needs, bumping you in exactly the right spots as only a sex demon can. He holds off on making you reach orgasm, prolonging the intense experience until your hands are tightly gripping the sheets under you and you're literally panting with the need to come. Then finally, he himself can't take it anymore and switches to rapid thrusts, hammering into you hard and deep, and orgasms not long after. The unbelievably handsome demon gives a satisfied grunt as he unloads deep into your asshole, filling you with his fertile seed. Leaning forward to nibble on your earlobe while his cock still twitches in you with more and more cum, Atticus says 'Let's do this often...'[mimpregchance]";
		otherwise:
			say "     Telling your demonic offspring no only has him redouble his efforts, shamelessly lounging on the bed and doing his best to draw your looks to him. Fruitlessly, as you've made up your mind. A while later, he recognizes that and gives up, though not without rubbing his naked body against yours on the way out of Lilith's chamber. Standing at the door, he gives you a lascivious look, gripping his hard cock as he says [if LilithKidCounter > 1 and a random chance of 1 in 2 succeeds]'Guess I'll just have to make do with my little bro. Your son has the most amazingly tight hole.'[otherwise]'Guess I'll have to go out hunting after all. Mother told me an awesome spot to catch humans, you know.' [end if]With a grin and a wink, he's out and away, leaving you alone until Lilith comes back a while later.";
		move player to Sacristy;
	otherwise if lastfuck of Lilith - turns > 6 and a random chance of 1 in 3 succeeds:
		move player to Sacristy;
		say "     You enter the sacristy and are presented with the sight of a great feral gryphon, struggling against bonds of jet-black leather. Its bright red cock is fully erect and dripping precum - and has been for a while, judging the by the puddle forming underneath it. His captor steps out from behind him, tracing lines in the gryphon's leonine fur with a slender finger. The creature writhes and bucks, trying to get to the sultry seductress, but his bonds stop him short. 'You want me, don't you?' she coos, her finger tracing down the gryphon's flank. 'I like it when males know what they want and won't stop at anything to get it...' Her hand strokes the swollen knot of the gryphon's cock, causing a strangled cry from the overstimulated beast. '...Especially when they have something impressive to give.' She steps away from the bound gryphon, moving around to its front. Turning to give the gryphon a good view of her shapely rear, she gets on her hands and knees, gives the gryphon one last sultry look over her shoulder, and snaps her fingers.";
		say "     [WaitLineBreak]";
		say "     The black leather straps holding the gryphon dissolve, leaving a large and very aroused creature standing the middle of the sacristy. His beady, avian eyes fix on the prostrated succubus before him and he pounces, pinning Lilith underneath him. Humping wildly, he presses her torso to the ground with one firm paw while the other holds her hips steady. She puts on a good show of writhing and moaning under the powerful male, but they both know what they want.";
		say "     Reaching back, Lilith guides the barbed tip of the gryphon's cock to her hungry snatch; feeling the wet heat, the gryphon thrusts forward violently, impaling the succubus on his swollen shaft in one motion. The beast begins to piston his sizable maleness in and out of her cunt, taking her as fiercely as he would a feral gryphoness. From your position you have a clear view of the succubus's netherlips stretching and straining around the gryphon's girth each time he pushes it back in. Judging by the moaning that accompanies each thrust, Lilith seems to be enjoying this rough treatment.";
		say "     The feral gryphon begins to speed up the pace, slamming its overly swollen knot against Lilith's labia with its powerful thrusts. She begins to scream with pleasure as the knot begins to spread her wide; with jackhammer thrusts the gryphon hammers the knot in to its widest point. With a wet popping sound, it slips inside. The thrusts become erratic and finally the wild beast gives a triumphant screech as it pushes itself deep inside the succubus and then stills. The beast's copious ejaculate quickly fills her vagina and squirts out around the thick knot plugging it, dripping lewd milky-white drops down her legs and pooling on the floor.";
		say "     [WaitLineBreak]";
		say "     Panting, Lilith pulls herself off the gryphon's knot with surprising ease, freeing with it a backwash of thick gryphon cum.  Turning towards the wild creature, she leans in close and whispers something in its ear, then gives it a peck on the beak. As if programmed, the gryphon launches itself directly into the air and out a broken stained glass window. Her 'business' done, she turns and notices you - or perhaps she always knew you were there? 'Ah, pardon me. I was just...' - she moans as she starts to finger her well-bred pussy, giving you a good view of the oozing load the gryphon just left - '...Entertaining a guest. What brings you around?'";
		now lastfuck of Lilith is turns;
	otherwise:
		move player to Sacristy;

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
	say "[line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have her blow your cock";
		now sortorder entry is 1;
		now description entry is "Let the succubus blow you";
	if (cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have her lick your pussy";
		now sortorder entry is 2;
		now description entry is "Put the succubus mouth to good use";
	choose a blank row in table of fucking options;
	now title entry is "Eat Lilith out";
	now sortorder entry is 3;
	now description entry is "Give the succubus some oral attention";
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Fuck her pussy";
		now sortorder entry is 4;
		now description entry is "Fill the succubus pussy with your cock";
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Lilith's ass";
		now sortorder entry is 5;
		now description entry is "Fill the succubus ass with your cock";
	if (cocks of player > 0 and DBCaptureQuestVar > 4 and DBCaptureQuestVar < 99 and DemonBruteStatus < 2):
		choose a blank row in table of fucking options;
		now title entry is "Threesome with Lilith & Brutus - A";
		now sortorder entry is 6;
		now description entry is "Have the succubus suck Brutus while you fuck her from behind";
	if (cocks of player > 0 and DBCaptureQuestVar > 4 and DBCaptureQuestVar < 99 and DemonBruteStatus < 2):
		choose a blank row in table of fucking options;
		now title entry is "Threesome with Lilith & Brutus - B";
		now sortorder entry is 7;
		now description entry is "Lie on the bed with Lilith riding your cock while she sucks off Brutus";
	if (cocks of player > 0 and DBCaptureQuestVar > 4 and DBCaptureQuestVar < 99 and DemonBruteStatus < 2):
		choose a blank row in table of fucking options;
		now title entry is "Use Brutus to dominate Lilith - A";
		now sortorder entry is 8;
		now description entry is "Face-Fuck Lilith while Brutus pounds her pussy";
	if (cocks of player > 0 and DBCaptureQuestVar > 4 and DBCaptureQuestVar < 99 and DemonBruteStatus < 2):
		choose a blank row in table of fucking options;
		now title entry is "Use Brutus to dominate Lilith - B";
		now sortorder entry is 9;
		now description entry is "Sandwich her - Brutus impales her on his cock and holds her against his chest while you fuck her pussy";
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
			say "Is this what you want?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
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
				otherwise if (nam is "Threesome with Lilith & Brutus - A"):
					say "[LilithSex6]";
				otherwise if (nam is "Threesome with Lilith & Brutus - B"):
					say "[LilithSex7]";
				otherwise if (nam is "Use Brutus to dominate Lilith - A"):
					say "[LilithSex8]";
				otherwise if (nam is "Use Brutus to dominate Lilith - B"):
					say "[LilithSex9]";
		otherwise if calcnumber is 100:
			say "Break off?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the succubus, shaking your head slightly as she gives a questioning look.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option.  Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;


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
		otherwise if (nam is "Threesome with Lilith & Brutus - A"):
			say "[LilithSex6]";
		otherwise if (nam is "Threesome with Lilith & Brutus - B"):
			say "[LilithSex7]";
		otherwise if (nam is "Use Brutus to dominate Lilith - A"):
			say "[LilithSex8]";
		otherwise if (nam is "Use Brutus to dominate Lilith - B"):
			say "[LilithSex9]";
		wait for any key;
	now lastfuck of Lilith is turns;

to say LilithSex1:    [Have her blow your cock]
	say "     As you open your mouth to say what you want from her, the succubus moves in close against you and shuts you up good with a hungry kiss planted on your lips. She moans 'I know what you need, just let me take care of you' while her hands slide down to your crotch and she takes hold of your rapidly hardening erection. Stroking it, her other hand gently fondling your balls, Lilith guides you to the bed, then gives a soft push against your chest to make you fall back on it. She quickly pulls off any clothing you might be wearing, then kneels between your legs as they hang over the edge of the bed. After another moment of stroking your manhood, you feel her incredibly soft succubus lips slide over it, then sink deeper as she takes it all into her mouth.";
	if cunts of player > 0:    [herms]
		say "     She really knows all the tricks in pleasing a herm with her mouth and fingers, driving you to ever new heights as she bobs up and down on your shaft, teasing it with her tongue while fingering your pussy. Her expert ministrations keep you at the edge of orgasm for you don't know - or care - how long, your mind in a lust-filled haze. Then finally, she goes for the finish line, taking out all the stops. Within moments, you feel the urge to cum rise past the point of no return, long blasts of your seed starting to fill the succubus mouth. Her lips stay tight around the head of your cock so she doesn't lose a drop, then after the last spurt, she demonstratively swallows it all. Lying down next to you, she croons 'Nice and tasty, lover-boy.' and softly strokes your body until you catch your breath and stand up.";
	otherwise:                 [males]
		say "     She really knows all the tricks in pleasing a man with her mouth and fingers, driving you to ever new heights as she bobs up and down on your shaft, teasing it with her tongue while fondling your balls. Her expert ministrations keep you at the edge of orgasm for you don't know - or care - how long, your mind in a lust-filled haze. Then finally, she goes for the finish line, taking out all the stops. Within moments, you feel the urge to cum rise past the point of no return, long blasts of your seed starting to fill the succubus mouth. Her lips stay tight around the head of your cock so she doesn't lose a drop, then after the last spurt, she demonstratively swallows it all. Lying down next to you, she croons 'Nice and tasty, lover-boy.' and softly strokes your body until you catch your breath and stand up.";
	wait for any key;

to say LilithSex2:    [Have her lick your pussy]
	say "     As you open your mouth to say what you want from her, the succubus moves in close against you and shuts you up good with a hungry kiss planted on your lips. She moans 'I know what you need, just let me take care of you' while her hands slide down to your crotch. Stroking your pussy lips, Lilith guides you to the bed, then gives a soft push against your chest to make you fall back on it. She quickly pulls off any clothing you might be wearing, then kneels between your legs as they hang over the edge of the bed. After another moment of her fingers brushing your sensitive pussy lips, you feel her spread them a bit, then she puts her mouth to your pussy, licking and teasing with her tongue.";
	if cocks of player > 0:    [herms]
		say "     She really knows all the tricks in pleasing a herm with her mouth and fingers, driving you to ever new heights as she licks you, her hands meanwhile busy on your cock. Her expert ministrations keep you at the edge of orgasm for you don't know - or care - how long, your mind in a lust-filled haze. Then finally, she goes for the finish line, taking out all the stops. Within moments, you feel the urge to cum rise past the point of no return, long blasts of your seed arching from your cock to splat on your chest. Lilith stays between your legs, eagerly licking up your femcum, then moves up to taste some cum from your chest too and demonstratively swallows it all. Lying down next to you, she croons 'Nice and tasty, lover-boy.' and softly strokes your body until you catch your breath and stand up.";
	otherwise:                 [females]
		say "     She really knows all the tricks in pleasing a woman with her mouth and fingers, driving you to ever new heights as she licks you and fondles with her fingers. Her expert ministrations keep you at the edge of orgasm for you don't know - or care - how long, your mind in a lust-filled haze. Then finally, she goes for the finish line, taking out all the stops. Within moments, you feel your climax approaching, a pleasant tingly feeling spreading through your whole body and femcum starting to drip from your pussy. Lilith stays between your legs, eagerly licking it all up, then stands up so you can see her and demonstratively swallows it all. Lying down next to you, she croons 'Nice and tasty, lover-girl.' and softly strokes your body until you catch your breath and stand up.";
	wait for any key;

to say LilithSex3:    [Eat Lilith out]
	say "     Stepping up close to Lilith, you lower your hand to her crotch, stroking over her pussy lips and dipping a finger in between them. The beautiful demoness moans in lust as you fondle her and readily lets herself be led to the bed to sit on it. Kneeling between her legs, you run your hands along the soft skin of her thighs, pushing them apart to allow yourself access to her waiting pussy. The succubus's nether lips already swollen and moist in anticipation, you dive right in, getting to work licking her and fondling her inner passage with probing fingers.";
	say "     Doing your best to keep the female demon at maximum arousal, you're rewarded with getting her to moan, pant and even scream in lust. Her hands on your head, she shows you what she especially likes, pulling you tight against her crotch so you keep going. As Lilith's moans get louder and louder, she finally reaches the peak of her lust in a messy orgasm, squirting femcum over your hand and face. You lick some of it off yourself, then hold out your hand to the infernal seductress, which leads to her making a show of sucking your fingers one by one.";
	wait for any key;

to say LilithSex4:    [Fuck her pussy]
	say "     As you open your mouth to say what you want from her, the succubus moves in close against you and shuts you up good with a hungry kiss planted on your lips. She moans 'I know what you desire. You want to fuck me with this bad boy' while her hands slide down to your crotch and she takes hold of your rapidly hardening erection. Stroking it, her other hand gently fondling your balls, Lilith guides you to the bed, getting on it and spreading her legs for you, the moist and ready pussy between them just waiting to be filled. Not being able to think of anything else, you almost rip your clothes off your own body, then climb on the bed and mount the irresistible demoness, driving your hard cock into her in one deep stroke. A loud moan escapes your lips as you feel her pussy tightly gripping your manhood, then start to fuck her with rapid and hard thrusts.";
	say "     Having sex with this succubus is almost incomparable with other females, as she does and feels exactly how you like it, how you need it, her demonic powers making her the perfect woman to fuck. Gripping your shaft with her pussy, rubbing her curvy body against yours, stroking you and enfolding you with her wings, she's got you totally in her power. It's no surprise that, with your libido reaching new heights rapidly, you're driven to (your first) climax, cock pulsing with blast after blast of your load you shoot into Lilith's womb.";
	say "     [WaitLineBreak]";
	if LilithPregnancy is 0 or LilithPregnancy is 4:
		say "     'Yes, yes!' she moans, pulling your lips to hers for a deep kiss. 'I can feel your load inside me, filling me. Invading my womb.' She lets you rest for a moment, then starts stroking your body, the muscles in her pussy gripping your cock and almost masturbating it, giving it no chance to go soft. Animated by the insatiable demoness, you start fucking her again, thrusting in and out rapidly, feeling your own cum lubricate your movements and squirt out around your shaft as you pound into her. On your second go, you last longer than the first, mostly due to just having come already, but even then her expert skills quickly move you to another mind-blasting climax. With two loads inside her, the succubus relents, satisfied for now. Holding and stroking you, she moans 'You were amazing, lover. Let's hope it takes. Together we can populate this earth with demons.'";
	otherwise:
		say "     'Yes, yes!' she moans, pulling your lips to hers for a deep kiss. 'I can feel your load inside me, filling me. Invading my womb, bathing our son in his father's seed.' She lets you rest for a moment, then starts stroking your body, the muscles in her pussy gripping your cock and almost masturbating it, giving it no chance to go soft. Animated by the insatiable demoness, you start fucking her again, thrusting in and out rapidly, feeling your own cum lubricate your movements and squirt out around your shaft as you pound into her. On your second go, you last longer than the first, mostly due to just having come already, but even then her expert skills quickly move you to another mind-blasting climax. With two loads inside her, the succubus relents, satisfied for now. Holding and stroking you, she moans 'You were amazing, lover. Teaching your demon son the taste of cum before he's even born. He'll be an amazing incubus.'";
	if LilithPregnancy is 0:              [not already preggers]
		let LilithPregChance be a random number from 1 to 20;
		if LilithPregChance > 5:            [75% chance]
			now LilithPregCounter is 48;      [48 turns till birth]
			now LilithPregnancy is 1;					[invisibly pregnant]
	wait for any key;

to say LilithSex5:    [Take Lilith's ass]
	say "     Coming up behind Lilith, your hands find the well-rounded curves of her butt, stroking and squeezing her cheeks. She moves back a slight bit, bringing her ass in contact with your crotch and rubbing against your bulge. Looking over her shoulder, the succubus grins and says 'Ah, so you want to fuck my ass. Wonderful idea.' Lilith saunters over to the edge of the bed, then bends over and wiggles her ass at you. 'I'm waiting, lover-boy.' You're barely able to take your eye off the enticing display as you quickly slide off your clothes, then move into position behind the succubus. Kneading her asscheeks with your fingers, you pull them apart a bit, revealing her pucker. Your hips almost move forward on their own, causing your hard manhood to bump against her soft skin. Moving a tiny bit to let your cock find its mark, you then push in, easily penetrating the succubus's well-trained rear entrance. It's amazing how tight she feels, even as her passage readily stretches around you. Soon you're all the way in, your crotch coming in contact with her ass. A moan comes from Lilith 'Yes, yes! You feel great inside me. Now fuck me - hard!'";
	say "     Eager to follow her wishes, you pull back until you're almost all the way out, then slam forward again, making your bodies meet with an audible slap and a pleased gasp from her. Continuing to fuck this beautiful demoness's ass in likewise fashion, the two of you fill this formerly consecrated room with the sounds of enthusiastically performed, amazing sex. Your coupling goes on quite a while, and you think you acquired some spectators in between, watching from the door until they decided to have sex in the main church chamber. Not that you really care, totally concentrated on the hot demoness under you and around your cock.";
	say "     Some time later, you feel the urgent urge to cum rise inside you, making you speed up even more, and soon you pass the point of no return. Driving all the way into Lilith's ass one last time, you gasp loudly as your balls pulse, sending burst after burst of cum deep into the succubus's ass. You stay like that for a moment, just standing behind her and holding on to her until you catch your breath. Then you pull out slowly, allowing her to pucker to pull tight again and not even lose a drop of cum. The satisfied demoness turns around, gives you a hot kiss on the lips, then goes to lie on the bed, lounging in an erotic pose.";
	wait for any key;

to say LilithSex6:    [Spit-Roast her with Brutus]
	say "     Lilith watches with interest as you strip down and then step up to the bed with your demonic [if DBCaptureQuestVar is 5]slave[otherwise]companion[end if] by your side, her eyes wandering over your naked bodies with unrestrained lust. 'So the master is going to allow his pet a little treat? Perfect, I'm just in the mood for a threesome' the succubus says and crawls to the edge of the mattress on all fours, her full breasts swinging attractively as she does so. Then she gives her hindquarters a little wiggle and tells you 'Mount up and fuck me - I'll take care of your boy here', reaching up to take hold of Brutus massive manhood with one hand as she does so. While she starts to lick the demon brute's hard shaft, you quickly step up on the bed and get into position, kneeling behind her on the silken sheets.";
	say "     [WaitLineBreak]";
	say "     Leaning forward, you reach around her to cup the demoness's full and firm breasts, giving them a good grope before letting your hands wander down her curvy body. Soon arriving at her very shapely behind, you knead her shapely buttcheeks for a moment, then move on and softly brush your hand over her nether lips. Lilith gives a lust-filled moan as you touch her sensitive folds, then spread them apart a bit and slip a finger into her warm and very wet pussy. She looks over her shoulder, a hungry look underlying her seductive demeanour, and says 'I need a cock inside me - now! Fuck me, lover-boy.' At that command, your hips almost move forward on their own, causing your hard manhood to bump against her crotch. Moving a tiny bit to let your cock find its mark, you then mount the irresistible demoness, driving your shaft into her in one deep stroke. A gasp escapes your lips as you feel her pussy tightly gripping your manhood and you start to fuck her with rapid thrusts.";
	say "     Having sex with this succubus is almost incomparable with other females, as she does and feels exactly how you like it, how you need it, her demonic powers making her the perfect woman to fuck. Gripping your shaft with her pussy, rubbing her hips back against you, even stroking your body with the sides of her wings, she's got you totally in her power. And all the while she's also taking care of Brutus too, sucking on his massive cock and even managing to deep-throat him, making your demon companion pant and grunt in lust and arousal. It's no big surprise that, with her masterful skill as a sex demon, she manages to push the both of you over the edge to explosive orgasms at the same time, your cock pulsing with blast after blast of cum you shoot into Lilith's womb while Brutus grunts and pumps his massive load directly into Lilith's stomach.";
	say "     [WaitLineBreak]";
	say "     Filled from both ends and with the two exhausted males who just fucked her panting and trying to catch their breaths, Lilith pulls off Brutus shaft with a slurp, then puts her soft lips back to his cockhead to suck the last little bit of cum from it. 'MMmm... tasty!' she sighs after a moment, dropping the demon's softening but still quite large cock to slap against his leg with a meaty thud. Turning her attention to you, she reaches down between her legs and cups you balls, gently fondling them while her inner muscles almost milking every last drop of your load from your manhood. 'I can feel your sperm inside me, filling my womb. Nice work, stud' she sighs contently, then slowly pulls off your shaft, sinking down on the bed. Spread out on her back in all of a succubus['] naked glory, Lilith smiles up at you, stroking the inside of your leg as she moans 'You were amazing, lover. Let's hope it takes. Together we can populate this earth with demons.'";
	if LilithPregnancy is 0:              [not already preggers]
		let LilithPregChance be a random number from 1 to 20;
		if LilithPregChance > 5:            [75% chance]
			now LilithPregCounter is 48;      [48 turns till birth]
			now LilithPregnancy is 1;					[invisibly pregnant]
	wait for any key;

to say LilithSex7:    [Threesome with Brutus]
	say "     Lilith watches with interest as you strip down and then step up to the bed with your demonic [if DBCaptureQuestVar is 5]slave[otherwise]companion[end if] by your side, her eyes wandering over your naked bodies with unrestrained lust. 'So the master is going to allow his pet a little treat? Perfect, I'm just in the mood for a threesome' the succubus says and crawls to the edge of the mattress on all fours, her full breasts swinging attractively as she does so. Then she stands up and brushes against you with her whole body, wrapping her arms around you and giving you a breathtakingly hot kiss. After coming back up for air, she then turns the two of you around a bit, softly pushing against your chest to make you fall onto the bed. Saying 'Just lie back and enjoy, I'll take care of you and your boy here' the succubus looks down on you while stroking Brutus shaft with one hand.";
	say "     [WaitLineBreak]";
	say "     Pulling Brutus with her to stand just between your legs dangling over the side of the bed, Lilith climbs on top of you and gently lowers herself on your stiffly standing erection. The warm and tight wetness of her pussy feels amazing around your shaft, making you throw back your head and moan loudly in lust. After getting into a nice little rhythm of fucking herself on your cock, she leans forward and starts jerking off the waiting demon brute at the same time, then soon moves on to blowing his massive manhood.";
	say "     Having sex with a succubus is almost incomparable with other females, as she does and feels exactly how you like it, how you need it, her demonic powers making her the perfect woman to fuck. Gripping your shaft with her pussy, sliding up and down on your hard pole, even gently wrapping her tail around your arm as you feel up her shapely ass, she's got you totally in her power. And all the while she's also taking care of Brutus too, sucking on his massive cock and even managing to deep-throat him, making your demon companion pant and grunt in lust and arousal. It's no big surprise that, with her masterful skill as a sex demon, she manages to push the both of you over the edge to explosive orgasms at the same time, your cock pulsing with blast after blast of cum you shoot into Lilith's womb while Brutus grunts and pumps his massive load directly into Lilith's stomach.";
	if LilithPregnancy is 0:              [not already preggers]
		let LilithPregChance be a random number from 1 to 20;
		if LilithPregChance > 5:            [75% chance]
			now LilithPregCounter is 48;      [48 turns till birth]
			now LilithPregnancy is 1;					[invisibly pregnant]
	wait for any key;

to say LilithSex8:    [Brutus pounds her pussy, you fuck her mouth]
	say "     Lilith watches with interest as you strip down and then step up to the bed with your demonic [if DBCaptureQuestVar is 5]slave[otherwise]companion[end if] by your side, her eyes wandering over your naked bodies with unrestrained lust. 'So the master is going to allow his pet a little treat? Perfect, I'm just in the mood for a threesome' the succubus says and crawls to the edge of the mattress on all fours, her full breasts swinging attractively as she does so. Then she gives her hindquarters a little wiggle and tells you 'Mount up and fuck me - I'll take care of your boy here', reaching up to take hold of Brutus massive manhood with one hand as she does so.";
	say "     [WaitLineBreak]";
	say "     But you have some other plans for her right now... it only takes a quick command to have the demon brute pick Lilith up and flip her around, landing on her back with spread legs. Her eyes flare up in anger about being manhandled though the start of a complaint about it is drowned out by her own pants and moans as Brutus thrusts his hard shaft into her pussy, stretching it tight around his massive girth. While your demon [if DBCaptureQuestVar is 5]slave[otherwise]companion[end if] starts fucking the succubus with unrestrained lust, you quickly climb on top of the bed - and her. Kneeling over Lilith with your legs left and right of her chest, you hold out your erect manhood and pull her mouth onto it mid-moan. Even though you thoroughly derailed her plans for this threesome, she nevertheless instantly starts sucking on your cock, proving that sating her lusts trumps any feelings of annoyance in this succubus.";
	say "     Fucking Lilith's face, you revel in her soft lips around your shaft and the long tongue teasing your manhood. The grunts and growls of Brutus from behind you as he pounds her pussy make this all the more sweet in a constant reminder that you're in control this time, with her being shafted by his massive cock on your orders. Making the succubus deep-throat you, lick your balls and suckle on your cockhead is quite a bit of fun, and you can feel the urge to cum rise inside you before much longer. As you do so, you decide to switch things up a bit, pulling out of her mouth and scooching a bit down over her body to rub your shaft against her breasts. Putting it just between them, you take hold of Lilith's ample globes and push them against your prick, then thrust in and out between them. Close as you already were, it's just a matter of time before you reach the point of no return and come, moaning loudly as your cum shoots out to splatter Lilith's neck, face and hair.";
	say "     [WaitLineBreak]";
	say "     Satisfied, you get off the succubus, smiling as you sit back and watch Brutus fuck her hard and deep, with her hands gripping the sheets tightly each time his massive manhood plunges in. After some more pretty intense pounding, he too reaches his goal, orgasming with a roar and pumping an insane amount of cum into Lilith. You're almost spell-bound to watching his cock and balls pulse again and again, wondering when it might end as Lilith's belly starts to bulge more and more. Finally, [if LilithPregnancy is 3 or LilithPregnancy is 2]when her already large pregnant belly looks as if she was carrying twins, [otherwise]when she's got about the 'baby-bump' of a three months pregnant woman, [end if]the demon pulls out of her, accompanied by a gush of cum from her stretched passage. With a last look at the cum-splattered form of the succubus on the bed, you get up and collect your clothes.";
	wait for any key;
		
to say LilithSex9:    [sandwich fuck with Brutus]
	say "     Lilith watches with interest as you strip down and then step up to the bed with your demonic [if DBCaptureQuestVar is 5]slave[otherwise]companion[end if] by your side, her eyes wandering over your naked bodies with unrestrained lust. 'So the master is going to allow his pet a little treat? Perfect, I'm just in the mood for a threesome' the succubus says and crawls to the edge of the mattress on all fours, her full breasts swinging attractively as she does so. Then she stands up and brushes against you with her whole body, wrapping her arms around you and giving you a breathtakingly hot kiss. After coming back up for air, she then turns the two of you around a bit, softly pushing against your chest to make you fall onto the bed. Saying 'Just lie back and enjoy, I'll take care of you and your boy here' the succubus looks down on you while stroking Brutus shaft with one hand.";
	say "     [WaitLineBreak]";
	say "     But you have some other plans for her right now... it only takes a quick command to have the demon brute pick Lilith up, lifting her off her feet and holding her against his chest with one muscular arm. Her eyes flare up in anger about being manhandled this way, though the start of a complaint about it is quickly drowned out by a shocked gasp as Brutus rubs her shapely behind against his massive cock. Taking hold of his manhood with one clawed hand, he sets its tip against her pucker, [if DBCaptureQuestVar is 5]then slams the succubus down without mercy, howling in savage glee at her pained shout when he impales her on his thick shaft. Without any delay, he then immediately starts to fuck her ass hard and deep, grunting and growling loudly as he thrusts into her[otherwise]then slowly pushes the succubus down, impaling Lilith as gently as he can on his thick shaft. He gives her a moment to get used to his invading member, then starts to fuck her with deep thrusts, grunting loudly as he does so[end if].";
	say "     Watching from your position on the bed, you could see the changes of Lilith's expression - from the initial outrage and pain of penetration soon on to her more typical aroused and lusty look as she got into getting fucked after a short while and started to actively participate. Which shows that despite you so suddenly springing this situation on her, the need sating her lusts trumps any feelings of annoyance or betrayal for Lilith. After letting Brutus use the succubus like his own sex doll for a bit and jerking off to the show, you decide it's time to get involved yourself. Standing up, you command your demon [if DBCaptureQuestVar is 5]slave[otherwise]companion[end if] to back off a bit and kneel. With Lilith still impaled on his long shaft and held against his chest, she's now the perfect height for you to just step up and slide your erection into her drippingly wet pussy - which you do with a satisfied grunt.";
	say "     [WaitLineBreak]";
	say "     The succubus hot pussy feels amazing around your shaft, tight and gripping - especially as she starts to flex her inner muscles to give the two of you more pleasure. Having sex with a succubus really is almost incomparable with other females, as she does and feels exactly how you like it, how you need it, her demonic powers making her the perfect woman to fuck. And besides that, you can also feel Brutus massive member move inside Lilith as he fucks her, rubbing against your own through her inner falls, a pleasing reminder that you're the dominant partner over the demoness in this. The three of you fill the defiled sacristy with moans, pants and grunts as you grind against each other, arousal building up higher and higher. It's no big surprise that, with her masterful skill as a sex demon, Lilith manages to push both Brutus and yourself over the edge to explosive orgasms at the same time, your cock pulsing with blast after blast of cum you shoot into Lilith's womb while Brutus grunts and pumps his massive load deep into her asshole.";
	say "     Out of breath from all the sex, you lean against Lilith for a moment, resting your head against her ample breasts. After a few moments like that, you raise your head and give the demoness a grin, then quickly pull out of her and step back to take in the whole image before you. The large purple form of your [if DBCaptureQuestVar is 5]demonic servant, full of impotent rage at his enslavement, [otherwise]demonic companion, looking very pleased and thankful that you let him fuck, [end if]and against his chest Lilith, still impaled on the demon's pole, thoroughly fucked and worn out, with your load trickling out of her pussy. And with all the cum in her, [if LilithPregnancy is 3 or LilithPregnancy is 2]her pregnant belly looks even larger than before. [otherwise]her belly even looks like she's three months pregnant! [end if]Too bad that this is in the middle of a nanite apocalypse and you can't take a photo of it all. With a sigh, you order Brutus to just put Lilith down on the bed and start to gather up your clothes.";
	if LilithPregnancy is 0:              [not already preggers]
		let LilithPregChance be a random number from 1 to 20;
		if LilithPregChance > 5:            [75% chance]
			now LilithPregCounter is 48;      [48 turns till birth]
			now LilithPregnancy is 1;					[invisibly pregnant]
	wait for any key;

Section 3 - Endings

[
when play ends:
	if (hp of Lilith > 0:  [player met her and is sane]
		say "     A";
]
Lilith ends here.
