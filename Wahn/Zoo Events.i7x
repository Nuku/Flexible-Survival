Version 2 of Zoo Events by Wahn begins here.
[ Version 1.0 - First Event                   ]
[ Version 2.0 - Some New Events by CrimsonAsh ]

[ MalakhiRelationship                                           ]
[   0: starting state                                           ]
[   1: saw Sheera hunt Malakhi and him squeeze into his hideout ]
[   2: talked to Malakhi                                        ]
[   3: saw Malakhi play a trick on Sheera                       ]
[   4: saw Malakhi play a trick on Sheera + friendly talk       ]
[   5: saw Malakhi play a trick on Sheera + capture try         ]
[  98: didn't watch Malakhi play his trick on Sheera            ]
[  99: heard from afar how Sheera hunted Malakhi                ]

[ BarnabasRelationship                                          ]
[   0: starting state                                           ]
[   1: player talked to him                                     ]
[   2: player asked for sex with him                            ]
[   3: player asked for sex with Malakhi                        ]
[  99: player ignored him                                       ]

MalakhiRelationship is a number that varies.
BarnabasRelationship is a number that varies.

Table of GameEventIDs (continued)
Object	Name
Circle of Life	"Circle of Life"

Circle of Life is a situation.
ResolveFunction of Circle of Life is "[ResolveEvent Circle of Life]".
Sarea of Circle of Life is "Zoo".

when play begins:
	add Circle of Life to BadSpots of FurryList;

to say ResolveEvent Circle of Life:
	say "     While exploring the large expanse of the zoo, wandering along the walkways and even through the (usually breached) enclosures where the main way is blocked, you suddenly hear a not too distant roar, followed by frightened cries from a number of female voices. In the subsequent moments, the sound of hooves on asphalt comes closer rapidly as you decide to duck out of sight until you know more about what is going on. Hidden behind a bush, you see a whole group of anthro gazelles sprint past in full flight - Panicked, one of the group members actually runs the wrong way at a fork just a short distance ahead. She is about two dozen feet down when she notices that something is up as she takes in the lack of her kin around her. Stopping in a scrape of hooves upon stone, the separated gazelle heavily pants as she looks back the way she came.";
	say "     The anthro girl looks around frantically as her muscles tighten, she is about to backtrack and try to get back to the herd - but then her eyes fall upon yourself and widen, causing her to freeze mid-step. Gaze jumping from left to right, she takes in all the possibilities of escape from every angle. Unfortunately for her, before she is able to make a clear decision, her time is up. A satisfied roar sounds from the site of the now long-gone herd, prompting the gazelle to take action as she runs straight ahead. A moment later, the powerful form of a male lion flashes past you. Although being part anthro, the large feline chooses to bound after her on all fours with neck breaking speed.";
	LineBreak;
	say "     [bold type]Just having explored that fork of the way a short while ago, you remember that it soon ends in a tunnel blocked by some sort of hardened goop. There is no escape for the fleeing gazelle that way![roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Run after the two of them. You want to see how this turns out - or maybe do something...";
	say "     ([link]N[as]n[end link]) - Get out of here while the lion still busy. You don't want to be his next prey after her.";
	if Player consents: [go after them]
		LineBreak;
		say "     Hurrying after the gazelle and lion, you're just in time to see him corner her at the blocked tunnel end, pouncing on the helpless anthro. The muscular lion is on top of her in a second, pinning the lithe woman to the ground and giving her a very wide smile with his tooth-filled muzzle. 'P-please don't eat me!' she whimpers in fright, futilely struggling against his strong paw-hands that hold her. The lion chuckles in a deep voice, then brings his head down to her neck, opening his muzzle wider and wider... only to follow that up with just a playful lick before pushing himself up again. 'Never said I was gonna - but I might eat you out if you're a good girl,' the feline predator tells his captive.";
		say "     Pulling the gazelle's arms above her head, he holds her wrists with one hand, freeing the other to cup her petite breasts. 'Oh. Ooooohhhh!' comes the reply of the young woman, surprise audible in her voice as she realizes that her captor isn't the bloodthirsty type after all. As he licks her breasts and gives the lightest of nips to one nipple, then the other, her panic melts away, the herbivore no longer trembling in fear under the bulk of the lion. Soon, the gazelle loses her will to escape as her body clearly can't help but respond with arousal to the licks and caresses he gives her. The lion, seeing this, soon lets go of her wrists, shifting his focus from holding his prize and more towards passionately pleasing her.";
		LineBreak;
		say "     [bold type]Well, this situation doesn't seem as dire as you first thought. Given what else is going on all over the city, the thought rises in your mind that you shouldn't try to interfere in this 'chase with a happy ending'. Playing sex police is a fool's errand anyways. After a moment, you decide to:[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Watch what happens next. A large, muscular lion mating a pretty female gazelle, that's something you don't see every day...";
		say "     ([link]N[as]n[end link]) - Get out of here.";
		if Player consents: [watch]
			LineBreak;
			say "     With the urgency taken out of the situation, you take your time to study the two entwined anthros in detail. On top is the lion, a proud specimen with golden fur shining in the light. His coat, short enough to allow you to clearly see the rippling muscles of his body, makes it undeniable that this is one strong kitty. Between his legs lies a thick erection, which bears numerous soft spines along its length, promising quite an experience for anyone mating with the feline. A handsome face with a confident expression and a large mane of brown fur completes the image of this king of the savanna. Below the lion, trembling in lust now that he is caressing and teasing her body, the beautiful gazelle is stretched out on the ground.";
			say "     Her body fits the typical image of a flight animal, lithe and thin, built for impressive bursts of speed to get away from any attacker - which she would have, in an open area without dead ends like this. The young woman's coat of short fur is brown on most of her shapely body, with a black streak running down the sides of her chest to divide her breasts and flat stomach from the rest, having a creamy white color instead. This draws attention to her small but perky breasts and the slit of her pussy further down, the fur around that already looking a bit matted from how wet the situation makes her.";
			WaitLineBreak;
			say "     Eyes closed, with her head raised at the end of her long gazelle neck, she lets out loud moans, readily accepting what the male on top of her does to wind her up. Then suddenly, he kisses her on the muzzle, making the horned woman open her eyes in surprise... and reply in kind, making out with her captor. As she moans into his mouth and slides her arms around his maned neck to hold on, the lion aligns his erection with the white landing strip of her belly fur, placing the head of his cock right at the start - directly above the herbivore's pussy.";
			say "     With a growl of arousal reverberating in the depths of his broad chest, the lion slides himself into his much smaller partner, overwhelming her with the sheer girth of his manhood. The young woman holds on for dear life as he sinks himself into her depths, stretching that pussy wide and soon making her belly bulge a little with the visible outline of his prick. 'Nnnnghh! Nice and tight,' the lion roars loudly as he bottoms out, while his partner is still simply panting and making animalistic sounds of lust. He keeps his body still for a moment to give her time to adjust, meanwhile licking the gazelle's neck again and kissing her.";
			WaitLineBreak;
			say "     The period of grace for the gazelle doesn't last all that long - not with a horny lion having his dick squeezed by her stretched pussy and soon reaching the end of his restraint. As he proceeds to pull his cock out of her most of the way, the slender herbivore gasps loudly - no doubt from the sensations of his nubby spines rubbing her inner passage. 'Do you like that?' he asks with a grin, giving a shallow thrust and withdrawing once more. 'Yeeeesssss, oh GOD! Fuck me!' she replies, her fingers digging into his mane as she trembles in lust.";
			say "     Laughing at the very enthusiastic exclamation of consent, the lion starts pounding his smaller partner relentlessly, one arm wrapped around her chest, the other cupping her ass to pull her up against his deep thrusts. There is something animalistic about their mating - as one would expect from an anthro gazelle and lion - and the two of them fill the area with loud moans, growls, roars and lust-filled shouts as they buck against each other. It is a wild ride for the gazelle to be fucked by the powerful feline on top of her, culminating with him driving himself deeply into her and letting lose a deluge of cum right into her womb. You can literally see each throb of seed arriving in her belly, as it swells up a little bit more each time.";
			WaitLineBreak;
			say "     Soon the outline of the lion's cock isn't even visible anymore, as she swells up far enough to have what looks like a baby bump. The two of them keep panting and holding on to each other for a long time while he keeps shooting more and more cum into her. Then eventually, the gazelle starts to loosen her death-grip on his mane, slowly at first until she is sure he'll keep holding her against his chest. She slides her hand down over her body to bring it to rest against the curve of her stomach, stroking over it gingerly. 'I - it's... my fertile time,' she says hesitantly and looks the lion right in the eye.";
			say "     'I know,' he replies, giving her a grin and licks the young woman's muzzle. 'What did you think drew me to your herd? So many of you, in season together - when the wind turned, how could I NOT go after that? Especially such a sexy little beast like yourself.' Kissing her deeply, he then lowers the young woman to the floor, gently pulling his prick from her depths. Kneeling over her, the lion puts his large paw-hand on her belly and just lets it rest there for a moment. Then he adds, 'Someone has been a VERY good girl indeed. I think you deserve a reward.' With that, the large male pulls her hips up and hooks the gazelle's legs over his shoulders, bringing his muzzle right between her thighs.";
			WaitLineBreak;
			say "     The first long lick pushes the slender herbivore to let out an aroused gasp, followed by many, many more as her captor starts to eat out her pussy. But not only that, he also puts a finger on her clit and rubs it in circling movements, driving her closer and closer to her own climax. Then she can't hold it in anymore and with a loud gasp, the gazelle trembles in his grasp, leaking cum and femcum that he happily licks off her crotch. The lion gives her time to ride out her orgasm, then gently lowers her to the ground. After a little while of catching their breaths, the two of them stand up again. He helps her to her feet as she seems a bit out of balance with the currently quite large belly.";
			say "     Making sure she's standing securely, he releases his light grip on her upper arm, then steps back a little and clears his throat. 'By the way - I'm Gavin,' he tells her, giving a charming smile. Swallowing visibly, the gazelle looks at him, then down to her belly, then back at him again. Learning the name of the guy who fucked her somehow seems to make things all the more real - more than just a typical bump and grind... so she hesitates for a long moment before replying, 'Hannah. It's... nice to meet you?'";
			WaitLineBreak;
			say "     Silence stretches out between them for a few seconds more after that, then he offers her his paw-hand and says, 'Sorry about driving away your herd. They're long gone now, so it'd be dangerous to go out and search for them alone. How about you stay with me instead?' She looks at his large paw and the claws on it with big eyes, then hesitantly takes it, sliding her own hand into his. The two of them start walking out of the dead end after that, immediately noticing you as you kinda drifted closer and closer when you watched them have sex. Hannah is rather shameful at having been observed, while Gavin just grins and says, 'Hope you liked the show.'";
			say "     With that they stroll past you, hand in hand, and soon are out of sight. Despite the rather unconventional start of their relationship, and the fact that they're totally different species, it seems the two of them are actually a good fit. What will come out of their mating is anyone's guess though - a litter of lion cubs, or gazelles, or something in between. No matter what, you have a feeling their mother will care for them lovingly, and be more than ready to spread her folds again for the proud lion that fathered her children.";
			now Resolution of Circle of Life is 1; [watched them fuck]
		else: [leave]
			LineBreak;
			say "     Trying to tune out the moans and aroused whimpers from the gazelle, as well as her lion captor's growls, you turn around and walk away. Even so, the nose you hear behind you makes it quite clear that the two of them are having quite a good time. You can't help but wonder what might result from their mating - a litter of lion cubs, or gazelles, or something in between. No matter what, you have a feeling their mother will care for them lovingly, and be more than ready to spread her folds again for the proud lion that is fathering her children right as you think those very thoughts.";
			now Resolution of Circle of Life is 2; [didn't watch them fuck]
	else: [make a getaway]
		LineBreak;
		say "     Trying not to listen to the frightened shouts, roars and growls coming from the direction both of the beast-people ran off in, you quickly walk the other way. One redeeming fact (maybe?) is that the noise goes on and on, so you don't think the predator went after the gazelles for food. Flashes of what might be going on between them instead dominate your imagination until you finally are out of earshot.";
	now Circle of Life is resolved;

Table of GameEventIDs (continued)
Object	Name
Jungle Chase	"Jungle Chase"

Jungle Chase is a situation.
ResolveFunction of Jungle Chase is "[ResolveEvent Jungle Chase]".
Sarea of Jungle Chase is "Zoo".

to say ResolveEvent Jungle Chase:
	say "     Walking along the pathways of the zoo, you find yourself in an area overgrown by a lot of tropical plants. Between the towering trees, broad-leafed bushes and plants, colorful flowers, countless ferns and even vines hanging down from above, you get the feeling that you're walking through a jungle and not simply a footpath in the middle of a large city. The zoo really is quite expansive, and if there weren't some glimpses of buildings between the greenery here or there, you could almost believe you were somewhere in the Indian rain-forest right now. Admiring the diverse environment around you, a loud and angry roar suddenly shakes you out of your reverie - it sounds fairly close too, and is quickly getting louder! Your eyes frantically search the area before you see that the path you're on forks about a dozen feet ahead, one way soon ending at the thoroughly barricaded door of a zoo building, the other being where the noise is coming from.";
	LineBreak;
	say "     [bold type]What do you do now?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Get ready for a fight!";
	say "     [link](2)[as]2[end link] - Hide in the bushes!";
	say "     [link](3)[as]3[end link] - Run away!";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to fight, [link]2[end link] to hide or [link]3[end link] to flee.";
	if calcnumber is 1:
		project the Figure of Malakhi_icon;
		LineBreak;
		say "     You prepare yourself for whatever angry beast is on its way, but before the noisy creature arrives, you hear the rapid patter of naked feet on the cobblestones of the pathway. Moments later, an interesting sight appears: a completely naked young human dashes past, angling his steps towards the barricaded building. At first glance he almost seems a boy, being of a quite slender and lean physique, but one look at the clearly adult manhood dangling between his legs dispels that impression quickly. Eyes glued to the scene, you realize that he isn't fully human, either. While having a human body, cute features and long black hair, as well as sun-bronzed skin, the young man's fingers and toes end in somewhat elongated claw-like nails, and a fuzzy black tail stretches out from the small of his back. In close pursuit of the boy, a large tigertaur comes into view, spitting in obvious anger as she bares her fangs.";
		WaitLineBreak;
		say "     After glancing your way in a fleeting moment of casual interest, she turns her attention upon her intended prey and advances menacingly upon him. You have barely had a chance to begin wondering if you should do something about the situation when the hybrid youngster snatches up a liana hanging from above and starts to climb. Shimmying his way up the rope-like plant, he reaches one of the wide-spreading branches of a large tree within seconds. The tail on his body obviously is a great help as he then dashes along the branch, with it waving back and forth over his tight ass, assisting in his balance. Several quick steps later, he takes a forward leap from the tree, catching the edge of a high-up opening in the wall of the building. Looks like it was once covered by a ventilation grate and is fairly small in size. Yet before your unbelieving eyes, the young man contorts his body to actually fit through an opening not much more than a foot square.";
		say "     The chasing tigertaur roars in anger as her prey escapes, her hand-paws showing a dozen sharp claws as he then pokes his head out of the hole a second later and sticks his tongue out at her. Seething in fury, she shouts up at him, 'I'll get you eventually, little bastard! And then you'll wish you hadn't angered me like this!' Laughter echoes back from above, and with the words, 'If you say so, Sheera...' the hybrid male vanishes from sight. While they were talking, you yourself have slowly backed away and hid behind a nearby tree - meaning that when she turns around to find an alternate target for her frustrations, you're thankfully out of sight. The angry feline instead has a go at the barricaded entrance, tugging at boards held together by a multitude of nails and scratching over them with her claws, then eventually loses interest and stalks off.";
		now MalakhiRelationship is 1; [saw him and Sheera]
		now Resolution of Jungle Chase is 1; [got ready to fight]
	else if calcnumber is 2:
		project the Figure of Malakhi_icon;
		LineBreak;
		say "     Throwing yourself into the bushes and hiding behind their large leaves, but even before the noisy creature does arrive, you hear the rapid patter of naked feet on the cobblestones of the pathway. Moments later, an interesting sight appears: a completely naked young human dashes past, angling his steps towards the barricaded building. At first glance he almost seems a boy, being of a quite slender and lean physique, but one glimpse of the clearly adult manhood dangling between his legs dispels that impression quickly. Upon taking an even closer look, but you realize that he isn't [italic type]completely[roman type] human either - while having a human body, cute features and long black hair as well as sun-bronzed skin, the young man's fingers and toes end in somewhat elongated claw-like nails, and he has a black tail growing out of the small of his back. In close pursuit of the boy, a large tigertaur comes into view, spitting in obvious anger as she bares her fangs.";
		WaitLineBreak;
		say "     You have barely had a chance to begin wondering if you should do something about the situation when the hybrid youngster snatches up a liana hanging from above and starts to climb. Shimmying his way up the rope-like plant, he reaches one of the wide-spreading branches of a large tree within seconds. The tail on his body obviously is a great help as he then dashes along the branch, with it waving back and forth over his tight ass, as it assists in his balance. Several quick steps later, he takes a forward leap from the tree, catching the edge of a high-up opening in the wall of the building. Looks like it was once covered by a ventilation grate and is fairly small in size. Yet before your unbelieving eyes, the young man contorts his body to actually fit through an opening not much more than a foot square.";
		say "     The chasing tigertaur roars in anger as her prey escapes, her hand-paws showing a dozen sharp claws as he then pokes his head out of the hole a second later and sticks his tongue out at her. Seething in fury, she shouts up at him, 'I'll get you eventually, little bastard! And then you'll wish you hadn't angered me like this!' Laughter echoes back from above, and with the words, 'If you say so, Sheera...' the hybrid male vanishes from sight. The angry feline left behind glances at the barricaded entrance, tugging at boards held together by a multitude of nails and scratching over them with her claws, then eventually loses interest and stalks off.";
		now MalakhiRelationship is 1; [saw him and Sheera]
		now Resolution of Jungle Chase is 2; [hid away]
	else:
		LineBreak;
		say "     Whirling around, you start to run the way you came from, fleeing and not stopping for one second to glance back as you hear the rapid patter of naked feet on the cobblestones of the pathway, followed by more angry roars. Then the voice actually shouts some understandable words: 'I'll get you eventually, little bastard! And then you'll wish you hadn't angered me like this!' If there are any more words exchanged after that, you don't know, having gone too far along the winding pathways to hear any more.";
		now MalakhiRelationship is 99; [only heard of from afar]
		now Resolution of Jungle Chase is 3; [fled]
	now Jungle Chase is resolved;

Table of GameEventIDs (continued)
Object	Name
Meeting Malakhi	"Meeting Malakhi"

Meeting Malakhi is a situation.
ResolveFunction of Meeting Malakhi is "[ResolveEvent Meeting Malakhi]".
Prereq1 of Meeting Malakhi is Jungle Chase.
The Prereq1Resolution of Meeting Malakhi is { 1, 2, 3 }.
Sarea of Meeting Malakhi is "Zoo".

to say ResolveEvent Meeting Malakhi:
	project the Figure of Malakhi_icon;
	say "     As you walk along one of the many cobblestone paths through the expansive zoo, your way once again leads you into the section that seems almost like a primeval jungle. Tropical plants, up to and including colossal trees with widely branching tops are all around you, creating a beautiful image of greens and bright splashes of color added by large flowers. Everything feels very [italic type]alive[roman type] here and you actually just stand still for a moment to take in the beauty of your surroundings. Then a rustling sound breaks you out of the peaceful moment, making you remember that jungles may be pretty, but also are home to countless predators... like tigers, for example. Preparing yourself for a fight as soon as that thought shoots through your head, you focus on the bushes which are emitting the rustling noise and... laugh out loud as a small pot-bellied pig comes rushing out between them, looks at you and runs off with a squeal.";
	say "     But you are not the only one laughing - a young man's amused chuckle joins yours, followed by the words, 'Hey there. You're new!' Startled, you glance up and see a boyish human face with a mane of black hair surrounding it look at you. The owner of the attractive, sun-browned visage is a naked human-panther hybrid, his legs hooked over a branch as he hangs upside down and smiles at you. Your eyes wander a bit all of their own, taking in his mostly human body, lithe and flexible as it is, plus the fact that he has a long black tail and claws on his hands and feet. 'Welcome! I'm Malakhi,' he adds with a friendly and enthusiastic wave of his hands, then goes on to say, 'So, we don't get many visitors to the zoo these days. What brings you here? Let me guess! You're... on a sex safari and wanna fuck animals from every continent?!'";
	LineBreak;
	say "     [bold type]What is your reply?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Ask if he's offering some fun.";
	say "     [link](2)[as]2[end link] - Say you're actually just out scavenging.";
	say "     [link](3)[as]3[end link] - Explain that you want to rescue survivors.";
	say "     [link](4)[as]4[end link] - Slave-hunting, that's your business here!";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to offer him sex, [link]2[end link] to say you are scavenging, [link]3[end link] to offer rescue or [link]4[end link] to say you're out for slaves.";
	if calcnumber is 1:
		LineBreak;
		say "     'Possibly,' comes the teasing answer, with Malakhi sliding a hand up over his slender body and flat stomach, to grab his dangling manhood and stroke it, then wiggle the well-sized shaft at you. 'But only with people I like. I'm no randy feral letting anyone hump him,' the young man tells you in an amused but earnest tone, swinging himself back and forth a little, then seems to fall off the branch - only to catch himself with one hand on its bark, whirling around the wood and landing easily on top in the blink of an eye. Now crouched on top of the tree branch, resting on nothing more than the toe-tips of his slender feet, he goes on to say, 'Also, I'm kinda late for my training with mister Kano, so I gotta run. See ya another time, maybe.' And with that, the naked youngster jumps up and dashes off, every rapid step secure and sure on the tree bark. He's off and away before you know what to say.";
		now Resolution of Meeting Malakhi is 1; [asked if he wants to fuck]
	else if calcnumber is 2:
		LineBreak;
		say "     'Ah, yeah - hunger is not good. I feel with you there,' comes the answer, with Malakhi getting a thoughtful expression on his face. Then the young man swings himself back and forth a little, before seemingly falling off the branch - only to catch himself with one hand on its bark, whirling around the wood and landing easily on top in the blink of an eye. Now crouched on top of the tree branch, resting on nothing more than the toe-tips of his slender feet, he goes on to say, 'Just a second, I know just what you need.' With that, the naked youngster jumps up and dashes off, every rapid step secure and sure on the tree bar. He's off and away before you know what to say, then rushes back a moment later and throws something with the word 'Catch'. He smiles as you successfully snatch the ripe mango he brought you out of the air. 'Enjoy, there's lots more to be had up here. But now, I'm kinda late for my training with mister Kano, so I gotta run. See ya another time maybe.' And within moments, he's gone again.";
		now Resolution of Meeting Malakhi is 2; [said you're scavenging]
	else if calcnumber is 3:
		LineBreak;
		say "     'Decent of you, but... a bit unnecessary hereabouts. The fuck-beasts like Sheera's ilk would just pounce on a rescuer and fuck him, and as for the rest of us - well, this actually is a nice place to live. So freeing, not having to wear clothes at all. I'm happier here than I ever was in my life before.' It looks a bit funny as he shrugs his shoulders, upside down. Then the young man swings himself back and forth a little, before seemingly falling off the branch - only to catch himself with one hand on its bark, whirling around the wood and landing easily on top in the blink of an eye. Now crouched on top of the tree branch, resting on nothing more than the toe-tips of his slender feet, he goes on to say, 'So - no rescue needed. But it's nice to meet you anyways. But now, I'm kinda late for my training with mister Kano, so I gotta run. See ya another time maybe.' And with that, the naked youngster jumps up and dashes off, every rapid step secure and sure on the tree bark. He's off and away before you know what to say.";
		now Resolution of Meeting Malakhi is 3; [said you're out to rescue survivors]
	else:
		LineBreak;
		say "     'Is that so?! I bet you couldn't catch me, even if you tried! Keep it to fuck-beasts like Sheera's ilk and we'll have no problems. Though if you wanna play at going for me, I [italic type]might[roman type] just allow you some fun if you can lay a hand on me,' comes the answer, with Malakhi sticking out his tongue. Then the young man swings himself back and forth a little, before seemingly falling off the branch - only to catch himself with one hand on its bark, whirling around the wood and landing easily on top in the blink of an eye. Now crouched on top of the tree branch, resting on nothing more than the toe-tips of his slender feet, he goes on to say, 'Okay then, happy hunting. But now, I'm kinda late for my training with mister Kano, so I gotta run. See ya another time maybe.' And with that, the naked youngster jumps up and dashes off, every rapid step secure and sure on the tree bark. He's off and away before you know what to say.";
		now Resolution of Meeting Malakhi is 4; [said you're out to enslave people]
	now Meeting Malakhi is resolved;
	now MalakhiRelationship	is 2; [talked to Malakhi]

Table of GameEventIDs (continued)
Object	Name
Tiger Trick	"Tiger Trick"

Tiger Trick is a situation.
ResolveFunction of Tiger Trick is "[ResolveEvent Tiger Trick]".
Prereq1 of Tiger Trick is Meeting Malakhi.
The Prereq1Resolution of Tiger Trick is { 1, 2, 3, 4 }.
Sarea of Tiger Trick is "Zoo".

when play begins:
	add Tiger Trick to BadSpots of FurryList;

to say ResolveEvent Tiger Trick:
	project the Figure of Malakhi_icon;
	say "     Walking through the zoo along one of the many cobblestone pathways winding their way through its expansive acreage, you hear the sounds of many wild beasts all around you. The loudest at the moment are the roars and rhythmic growls of some sort of large creature, fairly close to your current position. Somehow, you can't help but feel curious about what exactly it might actually be. Eager to find out, you quickly follow one path leading in the right direction, soon reaching a bend that brings you into sight of the source of all this noise. There is a female tigertaur not too far ahead, pinning a hunky male zebra to the grass on a small meadow between tropical trees. She is holding him down while at the same time pumping her rear end up and down on his equine member. Even a fleeting glance to the striped guy's face tells you that he is far from sorry about being captured by her.";
	say "     Interestingly, you are not the only one watching the two of them in their lewd and public copulation. On a low-bending branch of a nearby tree, Malakhi is sitting, his slender legs and tail dangling down to just about head height for you. As usual, the panther-hybrid is completely naked, presenting himself in nothing but sun-bronzed skin. He is watching the striped predator make use of her captive with eager eyes, though the look on his face is one of amusement rather than arousal.";
	LineBreak;
	say "     [bold type]What do you want to do now?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Just watch the couple fucking.";
	say "     [link](2)[as]2[end link] - Stroll over to Malakhi and say hello.";
	say "     [link](3)[as]3[end link] - Sneak over to Malakhi and pull him off the branch.";
	say "     [link](4)[as]4[end link] - Just turn around and leave.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to watch the action, [link]2[end link] to say you hello, [link]3[end link] to snatch Malakhi or [link]4[end link] to leave.";
	if calcnumber is 1: [watch]
		LineBreak;
		say "     With interest, you watch the inter-species coupling between the tigress and her not at all reluctant zebra partner. They both are clearly into it, making the action heat up fairly quickly, soon culminating in the zebra guy bucking up against his captor with urgent grunts, flooding her pussy with splurt after splurt of his equine seed. The tigress throws her head back and lets out a satisfied roar as she feels him breeding her, hind-legs trembling from an intense orgasm just a few heartbeats later. Yet she can't really savor the moment, as Malakhi calls out, 'Nice new look Sheera. Pink suits you! It really brings out the black of those stripes!' The feline's head whips around and she growls in annoyance, searching for the source of the distraction from her mating. While doing so, her gaze falls upon a pink bow that Malakhi must have tied to her tail unnoticed, to which the tigress reacts with a furious roar.";
		say "     While she immediately grabs for it to rip the fabric to pieces, Malakhi is already on his slender feet, dashing away along the branches above your head while laughing out loud. Unceremoniously wrenching her pussy off the zebra's cock, the tigress sets out in hot pursuit a second later, swearing at the slender young man and promising to rip him limb from limb when she catches him. You can only shake your head as chase between the little trickster and his furious target moves out of sight within a few moments. The zebra hunk gets back up too in the meantime, milks the last spurts of his orgasm out of a long and weighty shaft, then gallops off in the opposite direction of where the tigress went.";
		now MalakhiRelationship is 3; [saw Malakhi play a trick on Sheera]
		now Resolution of Tiger Trick is 1;
	else if calcnumber is 2: [talk]
		LineBreak;
		say "     Walking closer to the young man, you call out Malakhi's name - quietly, as not to draw the tigertaur's attention too. 'Hello,' he replies while letting his legs swing back and forth, then raises one clawed hand to give a friendly little wave. With a chuckle, the almost-human youngster goes on to point over to the tiger and her zebra next, an impish grin on his face as he adds, 'I'm just waiting for her to notice. Then the [italic type]real[roman type] action is gonna start.' Following his indication, you look at the fucking pair again, focusing on the tiger's striped fur, the spread folds of her sex being pumped up and down on the zebra's cock, then finally spotting something that makes you giggle. A pink bow has been affixed near the end of the powerful tigertaur's tail! It isn't hard to guess by whom...";
		say "     Meanwhile, the inter-species coupling is heating up fairly quickly, culminating in the zebra guy bucking up against his captor with urgent grunts, flooding her pussy with splurt after splurt of his equine seed. The tigress throws her head back and lets out a satisfied roar as she feels him breeding her, hind-legs trembling from an intense orgasm just a few heartbeats later. Yet she can't really savor the moment, as Malakhi calls out, 'Nice new look Sheera. Pink suits you! It really brings out the black of those stripes!' The feline's head whips around and she growls in annoyance, searching for the source of the distraction from her mating. While doing so, her gaze falls upon the pink bow on her tail, to which the tigress reacts with a furious roar. While she immediately grabs for it to rip the fabric to pieces, Malakhi is already on his slender feet, dashing away along the branches above your head while laughing out loud.";
		WaitLineBreak;
		say "     Unceremoniously wrenching her pussy off the zebra's cock, the tigress sets out in hot pursuit a second later, swearing at the slender young man and promising to rip him limb from limb when she catches him. You can only shake your head as chase between the little trickster and his furious target moves out of sight within a few moments. The zebra hunk gets back up too in the meantime, milks the last spurts of his orgasm out of a long and weighty shaft, then gallops off in the opposite direction of where the tigress went.";
		now MalakhiRelationship is 4; [saw Malakhi play a trick on Sheera + friendly talk]
		now Resolution of Tiger Trick is 2;
	else if calcnumber is 3: [snatch]
		LineBreak;
		say "     Carefully, you sneak closer and closer, then reach out, ready to snatch the slender hybrid and pull him down from his spot. Yet just as you are about to grab for him, the almost-human gymnast jumps up from his sitting position, coming to stand on top of the branch in the blink of an eye. Quite a feat of flexibility and speed, so you can't help but be at least a little impressed. 'I'm not that easy to catch,' Malakhi tells you in a teasing tone and sticks out his tongue. 'Good effort though,' he adds after a second or two, 'But sadly, I don't have time to play-hunt with you right now. Got something prepared and am just waiting for her to notice.' The panther hybrid points to the tigress and grins broadly. Following his indication, you look at the fucking pair again, focusing on the tiger's striped fur, the spread folds of her sex being pumped up and down on the zebra's cock, then finally spotting something that makes you giggle. A pink bow has been affixed near the end of the powerful tigertaur's tail! It isn't hard to guess by whom...";
		say "     Meanwhile, the inter-species coupling is heating up fairly quickly, culminating in the zebra guy bucking up against his captor with urgent grunts, flooding her pussy with splurt after splurt of his equine seed. The tigress throws her head back and lets out a satisfied roar as she feels him breeding her, hind-legs trembling from an intense orgasm just a few heartbeats later. Yet she can't really savor the moment, as Malakhi calls out, 'Nice new look Sheera. Pink suits you! It really brings out the black of those stripes!' The feline's head whips around and she growls in annoyance, searching for the source of the distraction from her mating. While doing so, her gaze falls upon the pink bow on her tail, to which the tigress reacts with a furious roar. While she immediately grabs for it to rip the fabric to pieces, Malakhi is already on his slender feet, dashing away along the branches above your head while laughing out loud.";
		WaitLineBreak;
		say "     Unceremoniously wrenching her pussy off the zebra's cock, the tigress sets out in hot pursuit a second later, swearing at the slender young man and promising to rip him limb from limb when she catches him. You can only shake your head as chase between the little trickster and his furious target moves out of sight within a few moments. The zebra hunk gets back up too in the meantime, milks the last spurts of his orgasm out of a long and weighty shaft, then gallops off in the opposite direction of where the tigress went.";
		now MalakhiRelationship is 4; [saw Malakhi play a trick on Sheera + capture try]
		now Resolution of Tiger Trick is 3;
	else: [leave]
		LineBreak;
		say "     With a shrug, you simply turn around and leave. For a little while, you hear the sounds of tiger sex still going on, then a lusty roar, followed by a lot of angry ones right after. You wonder what went on back there...";
		now MalakhiRelationship is 98; [didn't watch Malakhi play his trick on Sheera]
		now Resolution of Tiger Trick is 4;
	now Tiger Trick is resolved;

Table of GameEventIDs (continued)
Object	Name
Zookeepers at Work	"Zookeepers at Work"

Zookeepers at Work is a situation.
ResolveFunction of Zookeepers at Work is "[ResolveEvent Zookeepers at Work]".
Prereq1 of Zookeepers at Work is Tiger Trick.
The Prereq1Resolution of Zookeepers at Work is { 1, 2, 3, 4 }.
Sarea of Zookeepers at Work is "Zoo".

when play begins:
	add Zookeepers at Work to BadSpots of FurryList;

to say ResolveEvent Zookeepers at Work:
	if BarnabasRelationship is 0: [first time]
		say "     Strolling along the pathways of the zoo, you come upon a fairly large enclosure that actually seems fully intact and even well-cared for. The nearby information sign about it tells you that this is a simulated piece of Savannah, with a number of peaceful animals living together in it. Stepping up to the iron bars of the fence separating the enclosure from the walkway, you see a feral ostrich parading around with raised head. It looks like a completely 'normal' animal, most likely one of the original inhabitants of the zoo. Then suddenly, a metallic banging noise makes you listen up, with the huge bird whirling around to focus on the source, then fluffing up her wings and dashing towards the opposite end of the enclosure, together with a few antelopes of various types and a small family of wildebeest.";
		say "     Walking after the mix of animals along the outside of the metal border fence, you see what attracted them: A piece of the artificial rock backing of the enclosure has been opened up like a door, providing access for the black panther anthro who is walking towards the animals with two well-filled metal buckets in his hands. The muscular male wears nothing but a blue baseball cap that reads 'City Zoo' on its front. Pulling the feed-bucket away as one wildebeest tries to just stick its muzzle in it, the man says in an amused tone, 'Hey, no queue-jumping. You can have your food together with everyone else Deke!' Behind the panther, someone else comes out of the hidden door - and it is a person you know: Malakhi, the partially panther-morphed young man that you encountered before. He is (as usual) bare-ass naked and quite comfortable in just his sun-bronzed skin, pushing a wheelbarrow and pitchfork along.";
		WaitLineBreak;
		say "     The panther proceeds to pour the animal feed into a little ditch that is made to look like natural rock too, likely so that it doesn't look quite as much as the through it is. At the same time, his companion stops for a moment, lowering the grips of the wheelbarrow to have his hands free. The young man then ";
		if MalakhiRelationship is 4:
			say "glances your way and sticks his tongue out, followed by him turning around to mooning you. ";
		else:
			say "gives you a short and friendly wave. ";
		say "After that, he grabs his wheelbarrow again and wheels it off, only stopping when he's next to a big pile of wildebeest droppings and starting to clean them up. Looking at the slender guy working, you completely miss the fact that the anthro panther has finished feeding the animals. Only when he comes up to the other side of the fence and calls out to greet you do you register his approach.";
		say "     'Hello there and welcome to the City Zoo. My name is Barnabas. Can I help you with anything? I fear the guided tours are on hold indefinitely, but if you have any questions, feel free to ask,' the muscular male says to you, giving you a friendly smile and tapping the side of the visor on his zookeeper's cap. For a second, you blink at such a 'normal' greeting in the midst of the nanite apocalypse, then gather your thoughts again.";
		LineBreak;
		say "     [bold type]What is your reply?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Ask what he is doing in there.";
		say "     [link](2)[as]2[end link] - Ask for some sexy fun time with him.";
		say "     [link](3)[as]3[end link] - Ask if you can fuck Malakhi.";
		say "     [link](4)[as]4[end link] - Just turn around and leave.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to ask about him and the animals, [link]2[end link] to request sex with him, [link]3[end link] to ask for fun times with Malakhi or [link]4[end link] to leave.";
		if calcnumber is 1: [talk]
			LineBreak;
			say "     Barnabas chuckles at your question, then replies in an amused tone, 'Why - I [italic type]work[roman type] here. You know, being a zookeeper and all that. Just because the world is going haywire that doesn't mean that everyone's obligations just vanish. One gets attached to all the animals in your care - hell, I've spent more than one Christmas or 4th of July here over the years, looking after all of them. It was a real shock to see so many becoming... something between human and beast and taking off, but the ones that remain are still mine to care for.' The anthro feline glances down over himself, muscles rippling under his short black fur as he moves and shrugs. 'As for the rest of it: I don't actually mind having this new body, kinda makes me feel like I'm twenty again, hah! Could have gone worse, I'm sure.'";
			say "     You exchange some more words with the panther zookeeper, finding him to be quite exceptionally dutiful to his task and domain. Seems like he never even thought about leaving and caring for himself first. Eventually the short discussion turns to his companion, and Barnabas glances towards the young man still busy mucking out the enclosure and smiles. 'He's a real delight, I gotta say. Started as my new intern just days before all of this chaos started. We got some duds from the Work Training Program over the years, but Malakhi is a shining example on the other end of the spectrum. Never seen anyone take to the animals so easily straight away. He doesn't complain, even about the parts of the job that are a bit dirty. Bright kid and determined too!'";
			WaitLineBreak;
			say "     You notice how long Barnabas's gaze lingers on the naked young man and see him shift his stance a bit as if to hide the fact that his manhood starts pushing out of his sheath just a little bit. The man tears his attention away a moment later, looking back at you and clearly is a bit embarrassed. 'Um, yeah. I guess it's obvious anyways thanks to that tail on him now. Malakhi took shelter together with me when things started to happen. I hadn't thought of him - or any man - [italic type]that[roman type] way before, least of all one half my age. But... you know how it is, these days. Turns out he had to teach me some things too. God, I love being with this young man, the little tease, hah. As soon as we're alone and civilization is on the way to join the dodo, he tells me that he's a nudist and hasn't worn a scrap of clothing since.'";
			say "     Eventually, the zookeeper wraps up talking with you, wishing you well and saying, 'I hope you'll have a nice time in the zoo, even in its... diminished state. Watch out for yourself though, many of the animals aren't what they were and roam the area on the hunt for sex. I'm gonna get back to work now, maybe we'll see each other again.'";
			now BarnabasRelationship is 1; [player just chatted Barnabas]
			now Resolution of Zookeepers at Work is 1; [talked with them]
		else if calcnumber is 2: [ask for sex with B]
			LineBreak;
			say "     Barnabas chuckles at your question, then replies in an amused tone, 'Sorry - I'm actually busy [italic type]working[roman type] here right now. You know, zookeeper and all that. I have no time to fuck around all day. Just because the world is going haywire that doesn't mean that everyone's obligations just vanish. One gets attached to all the animals in your care - hell, I've spent more than one Christmas or 4th of July here over the years, looking after all of them. It was a real shock to see so many becoming... something between human and beast and taking off, but the ones that remain are still mine to care for.' The anthro feline glances down over himself, muscles rippling under his short black fur as he moves and shrugs. 'As for the rest of it: I don't actually mind having this new body, kinda makes me feel like I'm twenty again, hah! And sex is just something else in this shape, I freely admit it!'";
			say "     You exchange some more words with the panther zookeeper, finding him to be quite exceptionally dutiful to his task and domain. Seems like he never even thought about leaving and caring for himself first. Eventually the short discussion turns to his companion, and Barnabas glances towards the young man still busy mucking out the enclosure and smiles. 'He's a real delight, I gotta say. Started as my new intern just days before all of this chaos started. We got some duds from the Work Training Program over the years, but Malakhi is a shining example on the other end of the spectrum. Never seen anyone take to the animals so easily straight away. He doesn't complain, even about the parts of the job that are a bit dirty. Bright kid and determined too!'";
			WaitLineBreak;
			say "     You notice how long Barnabas's gaze lingers on the naked young man and see him shift his stance a bit as if to hide the fact that his manhood starts pushing out of his sheath just a little bit. The man tears his attention away a moment later, looking back at you and clearly is a bit embarrassed. 'Um, yeah. I guess it's obvious anyways thanks to that tail on him now. Malakhi took shelter together with me when things started to happen. I hadn't thought of him - or any man - [italic type]that[roman type] way before, least of all one half my age. But... you know how it is, these days. Turns out he had to teach me some things too. God, I love being with this young man, the little tease, hah. As soon as we're alone and civilization is on the way to join the dodo, he reveals he's a nudist and hasn't worn a scrap of clothing since.'";
			say "     Eventually, the zookeeper wraps up talking with you, wishing you well and saying, 'I hope you'll have a nice time in the zoo, even in its... diminished state. Watch out for yourself though, many of the animals aren't what they were and roam the area on the hunt for sex. I'm gonna get back to work now, maybe we'll see each other again.'";
			now BarnabasRelationship is 2; [player asked for sex with Barnabas]
			now Resolution of Zookeepers at Work is 2; [asked for sex with Barnabas]
		else if calcnumber is 3: [ask for sex with M]
			LineBreak;
			say "     Barnabas snorts as he hears your question, shaking his head as he replies in a firm tone, 'Sorry - no can do. I'm not in the habit of pimping out my interns to other people. You'd have to ask him yourself if you have any such ambitions. See, both of us [italic type]work[roman type] here, zookeeper and apprentice zookeeper. Just because the world is going haywire that doesn't mean that everyone's obligations just vanish. One gets attached to all the animals in your care - hell, I've spent more than one Christmas or 4th of July here over the years, looking after all of them. It was a real shock to see so many becoming... something between human and beast and taking off, but the ones that remain are still mine to care for.' The anthro feline glances down over himself, muscles rippling under his short black fur as he moves and shrugs. 'As for the rest of it: I don't actually mind having this new body, kinda makes me feel like I'm twenty again, hah! Could have gone worse, I'm sure.'";
			say "     You exchange some more words with the panther zookeeper, finding him to be quite exceptionally dutiful to his task and domain. Seems like he never even thought about leaving and caring for himself first. Soon, the short discussion turns to his companion, and Barnabas glances towards the young man still busy mucking out the enclosure and smiles. 'That boy is more than just nice on the eyes, I can tell you. Started as my new intern just days before all of this chaos started. We got some duds from the Work Training Program over the years, but Malakhi is a shining example on the other end of the spectrum. Never seen anyone take to the animals so easily straight away. He doesn't complain, even about the parts of the job that are a bit dirty. Bright kid and determined too!'";
			WaitLineBreak;
			say "     You notice how long Barnabas's gaze lingers on the naked young man and see him shift his stance a bit as if to hide the fact that his manhood starts pushing out of his sheath just a little bit. The man tears his attention away a moment later, looking back at you and clearly is a bit embarrassed. 'Um, yeah. I guess it's obvious anyways thanks to that tail on him now. Malakhi took shelter together with me when things started to happen. I hadn't thought of him - or any man - [italic type]that[roman type] way before, least of all one half my age. But... you know how it is, these days. Turns out he had to teach me some things too. God, I love being with this young man, the little tease, hah. As soon as we're alone and civilization is on the way to join the dodo, he reveals he's a nudist and hasn't worn a scrap of clothing since.'";
			say "     Eventually, the zookeeper wraps up talking with you, wishing you well and saying, 'I hope you'll have a nice time in the zoo, even in its... diminished state. Watch out for yourself though, many of the animals aren't what they were and roam the area on the hunt for sex. I'm gonna get back to work now, maybe we'll see each other again.' He is about to go join Malakhi in his work when he pauses for a second and turns back again, 'As for your earlier request... I think he really might take you up on it. Malakhi is his own man, I don't hold any sway over whom he fucks around with. Just... treat him well, or we're gonna have some words.' And with that, the panther walks away.";
			now BarnabasRelationship is 3; [player asked for sex with Malakhi]
			now Resolution of Zookeepers at Work is 3; [asked for sex with Malakhi]
		else: [leave]
			LineBreak;
			say "     You murmur something about not having time to talk and turn away from him to wander off. The anthro panther looks after you and shrugs, then goes to help Malakhi.";
			now BarnabasRelationship is 99; [player ignored him]
			now Resolution of Zookeepers at Work is 99; [ignored them]
		now Zookeepers at Work is resolved; [for now]

Table of GameEventIDs (continued)
Object	Name
Zookeepers at Play	"Zookeepers at Play"

Zookeepers at Play is a situation.
ResolveFunction of Zookeepers at Play is "[ResolveEvent Zookeepers at Play]".
Prereq1 of Zookeepers at Play is Zookeepers at Work.
The Prereq1Resolution of Zookeepers at Play is { 1, 2, 3 }.
Sarea of Zookeepers at Play is "Zoo".

when play begins:
	add Zookeepers at Play to BadSpots of FurryList;

to say ResolveEvent Zookeepers at Play:
	say "     Strolling along the pathways of the zoo, you come upon a mid-sized enclosure that actually seems fully intact and even well-cared for. The nearby information sign about it tells you that it is the home of a jaguarundi, a south American wildcat. You can see it resting in the branches of a small tropical tree sticking up just on the other side of the water-filled ditch separating the animal from any zoo visitors like yourself. The real show right now though isn't the small-ish feline but rather who else is in there. You recognize Barnabas and Malakhi, the anthro panther zookeeper and his panther-hybrid intern, taking turns washing themselves under a tiny waterfall that feeds the water barrier after a dozen feet of an artificial brook. It is just wide enough for one of them to stand under - which Barnabas is doing right now, quickly rubbing himself with a piece of soap and rinsing it off before stepping to the side, his short fur plastered to his body, showing off all its muscles.";
	say "     Malakhi is next, the mostly human young man moving into the spray of obviously cold water, judging from the sounds he makes as it splashes his sun-bronzed skin and runs down over his slender form. Soaping himself up with frantic haste, he emerges soon after, dripping wet and shivering. 'Let's get you dry, my boy,' Barnabas tells him in a caring tone, shaking out a large towel and wrapping it (and his arms) around the younger male, rubbing Malakhi dry from head to toe. The panther-hybrid very clearly enjoys the zookeeper's hands on his body, leaning into his touch and putting a hand on Barnabas shoulder as the man crouches down to dry his legs. 'Ooh, that feels really nice,' he sighs in pleasure, fingers stroking the back of his anthro panther's neck. You can see that the young man's cock has hardened and is now sticking straight out.";
	WaitLineBreak;
	say "     Finishing up with patting the underside of Malakhi's slender feet dry, lifting them one by one with his black-furred hands, Barnabas starts to look up to his charge. Of course, his gaze passes over the human erection sticking out so very prominently towards him, putting a grin on the panther's face as he meets Malakhi's eyes. The panther-boy pulls his partner up lightly and Barnabas rises to his full height in response, finding himself embraced by the naked young man, with Malakhi nuzzling his chest-fur. 'I still can't quite believe we're doing this,' the anthro zookeeper says in a loud voice, 'What did I do to deserve you, teaching this old panther such breathtaking new tricks?' Malakhi rises on tiptoe with an impish grin on his face, kissing the larger man's muzzle and replying, 'You're a very good man, mister. Of course you deserve a lot of love. Also, I thought you were hot right from the day we met. I like hairy men, like you were even before the change...' With that said, he takes Barnabas hand-paw and moves it down, to rest on his buttocks.";
	LineBreak;
	say "     [bold type]Things are quickly heating up. Do you wanna watch them go at it?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Hell yeah!";
	say "     ([link]N[as]n[end link]) - Turn around and move on.";
	if Player consents:
		project the Figure of Malakhi_Barnabas_icon;
		LineBreak;
		say "     A lusty growl escapes the broad chest of the male panther and he bends down to kiss Malakhi fully on the lips, making out with the naked youngster while at the same time squeezing his butt. Entwined with each other, they make out and share caresses, providing a sweet show to you and the jaguarundi, who watches from up in his tree. Soon, just stroking his feline partner isn't enough for Malakhi, and the slender young man wraps his arms around Barnabas's shoulders and pulls himself up on him in a move worthy of a gymnastics show. Lithe legs wrap around the black-furred male, hooking over each other as Malakhi positions himself to cling to his trainer - or maybe trainee, in this case. He kisses the top of the older man's muzzle and says in a playfully exaggerated voice, 'Okay then, students. Today's lesson is... the 'Hanging Garden' sex position!'";
		say "     Barnabas chuckles loudly and bends his head to lick the panther-boy's neck and earlobe, nibbling on him while Malakhi goes on to say, 'First of all, one needs a very eager and willing partner, the lighter and flexible the better.' As if to underline this, he grinds himself against the black panther's abs, rubbing his cock on the furred man. 'Then you take a good, strong hold of your boy-toy's ass,' Malakhi goes on to explain, and his trainee happily follows the instructions, squeezing his firm buns and spreading them. 'Now let me just show you the rest,' the young man then adds, bending backwards a little to reach for the panther's erection and lining it up to slide his pucker down on it. Sharing a loud moan and a satisfied grunt, the two of them just stand like that for a moment, savoring Barnabas being inside his partner and stretching his tight chute around his hard shaft.";
		WaitLineBreak;
		say "     'I think you'll find the rest coming to you quite naturally,' Malakhi says with an amused giggle, then calls out, 'Fuck me daddy!' That request is all it takes for Barnabas to start moving, humping his hips against the lithe young man and at the same time controlling his body by lifting and lowering Malakhi's tight little ass. The panther growls eagerly as he slides in and out of his partner's back passage, taking to the new position with a vengeance. Malakhi also clearly enjoys riding the larger male's long prick, the expression on his boyish face showing the ecstasy of their pairing to the world, as do the loud moans of, 'Yes! Deeper! Fuck me hard!' The two of them soon start making out again, sharing each other's breaths as they mate and hold on to each other. Your own arousal flares hotly as you watch the two lovers go at it, so you quickly push your clothes out of the way and [if Player is male]start jerking your cock[else if Player is female]start rubbing your sensitive clit[else]start rubbing the sensitive area of your crotch[end if] in unison with them.";
		say "     Inside the jaguarundi enclosure, the zookeeper and his intern fuck like there is no tomorrow, Malakhi grinding his butt with circling movements against Barnabas's crotch and the panther really jamming his long cock into the young man's deepest reaches. Their lips are locked to each other (or as much as possible with a mouth and a muzzle) and they tongue-wrestle hard, exploring each other's mouths and suckling on the probing appendages. With such frantic action going on between them, it isn't surprising that Malakhi throws his head back before much longer, letting out a loud groan as his human cock starts to spray cum all over the panther's muscular chest. Anal muscles clenching tight around his prick with every throb of the young man's balls, Barnabas joins his lover in climax literally seconds later. The zookeeper lets out a roar that is more an animal's than a man's, his clawed hands very tightly holding on to the young man in his grasp as he starts to breed his ass with everything that his balls can bear.";
		WaitLineBreak;
		say "     Seeing the unequal lovers reach their shared orgasms, you do your best to finish yourself up quickly too, moving your hand with frantic haste now. The stimulation allows you to reach where you're going very quickly, and with a suppressed moan, [if Player is male]your cock starts shooting long strings of cum to splatter the railing separating you from the enclosure[else if Player is female]your pussy gushes femcum over your hand, enough to trickle over your finger and drip down to the ground[else]you feel pleasant little trembles and twitches all over your body[end if]. Meanwhile, the panther and his boy start coming down from the high of their urgent mating bit by bit as the further spurts of cum slowly ebb off. Even so, they go on to share more affectionate kisses and caresses, showing that this is more than just a quick fling to get off.";
		say "     As the intense action is over now and the two of them start talking in lover's whispers now, you decide to move on after a few more moments. Quickly setting your clothes in order again, you leave just as Barnabas starts licking his boy's sweaty chest, about to introduce him to a wholly different - and much more intimate - way of getting washed.";
		now Resolution of Zookeepers at Play is 1; [watched them fuck]
	else:
		LineBreak;
		say "     With a shrug, you turn from the pair as they start making out and touching further, then walk along the zoo pathways until you eventually reach the rest area again.";
		now Resolution of Zookeepers at Play is 99; [ignored them]
	now Zookeepers at Play is resolved;

Table of GameEventIDs (continued)
Object	Name
Escaped Wolf Pack	"Escaped Wolf Pack"

Escaped Wolf Pack is a situation.
ResolveFunction of Escaped Wolf Pack is "[ResolveEvent Escaped Wolf Pack]".
Sarea of Escaped Wolf Pack is "Zoo".

to say ResolveEvent Escaped Wolf Pack:
	EscapedWolfPackEvent;

to EscapedWolfPackEvent: [Bent bars in zoo]
	say "     As you walk along the path between the exhibits, you reflect on how the Zoo sort of lacks a purpose now that so many of the animals have escaped into the city, mutating and fusing with the residents. Beside you, the bars on some of the fencing are bent and broken, and viewing windows are shattered, leaving debris lying on the concrete below. Reaching the barrier around a pit, you read the information panel about its previous occupants. 'The Gray Wolf ([italic type]Canis lupus[roman type]) is a canine native to the wilderness and remote areas of Eurasia and North America. They are the largest living member of the wolf family. Its winter fur is long and bushy and predominantly a mottled gray in color, although nearly pure white, red, or brown to black can also occur.' A large tree has collapsed against one side, crushing the surrounding fence and explaining the complete absence of wolves in there.";
	say "     You debate whether or not to clamber down, but decide that there is little point for such an action with so much risk of injury. You might heal, but why risk the pain? As you circle around the wolf pit, you reach another information board giving more facts about wolves. 'Gray wolves are social animals, traveling in family groups consisting of a mated pair, accompanied by the pair's adult offspring. The leader of this pack is called the Alpha. The gray wolf is typically an apex predator, with only humans and tigers posing a serious threat to it.' You hadn't really thought about wolves and tigers being in the same place, but thinking about some stories, you suppose that it shouldn't be that much of a surprise. You lose interest in the enclosure and continue on your way through the Zoo.";
	now Escaped Wolf Pack is resolved;

Table of GameEventIDs (continued)
Object	Name
Meerkat Patrol	"Meerkat Patrol"

Meerkat Patrol is a situation.
ResolveFunction of Meerkat Patrol is "[ResolveEvent Meerkat Patrol]".
Sarea of Meerkat Patrol is "Zoo".

to say ResolveEvent Meerkat Patrol:
	MeerkatPatrolEvent;

to MeerkatPatrolEvent: [Meerkats returning from an excursion to the city]
	say "     As you walk along the path, you notice an upright meerkat, alert for threats. It hasn't noticed you yet, which is surprising, but this gives you time to observe. It is a lot larger than a normal meerkat, about four feet tall, suggesting that it used to be a human but has now transformed. Casting your gaze around, you notice a procession of other meerkats approaching, bearing food, water, and basic medical items such as medkits and several syringes. With a loud cry, the sentry notices you. 'You there. Yes, I see you. Identify yourself and state your intent.' At the sound of his shout, the group falls into a defensive formation, guarding their spoils and the weaker members. 'If you do not answer, you will be treated as a threat,' the stern meerkat barks.";
	LineBreak;
	say "     [bold type]Are your intentions towards the meerkats benevolent or hostile?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - You do not intend the meerkats any harm.";
	say "     ([link]N[as]n[end link]) - They look like that they have enough spoils to share. Try and make the meerkats hand some over.";
	if Player consents: [Benevolent]
		say "     'I'll take your word as truth for now, but know that we are watching you,' the sentry says with relief, though still cautiously. You back off a bit, allowing the convoy of successful herpestidae to return to their burrows with their spoils. Several give you curious glances, but they're mostly focused on storing their supplies before anyone or anything hostile tries to take them. They disappear into a large mound, and you realize that you are standing beside the meerkat enclosure, which explains the presence of the sentry nearby. No doubt that there are others watching too, but you haven't run across them. Now that his clan is safe, the vigilant watcher comes over to you, trusting any other guards to alert them all if a threat approaches.";
		say "     'Thank you for not interfering with the returning party. We could have dealt with you, but who knows how many of us would have been hurt if that had been necessary. Some of the other zoo residents need constant reminders to keep away from our scavenging parties, and we really have to be careful with outsiders who may try to capture us for their pleasure or transform us. I'll try and remember your scent should you cross our path again, but the other sentries don't know you, so be prepared to be stopped in a similar fashion.' He gives you a wave before disappearing down the hole after the rest of the clan, probably so as to get his share of the loot. Smiling at how well that went, you continue on your way through the Zoo.";
		now Resolution of Meerkat Patrol is 1; [friendly]
	else: [Malevolent]
		say "     You shout 'hostile' as you run at them, which in hindsight was a particularly stupid idea. You make it about six steps before a stone is thrown with great accuracy, connecting with your knee, causing you to stumble and trip over a fence at the side into some mud. 'MOVE, MOVE, MOVE!' the sentry shouts, the scavenging party sprinting for the mound near the guard. You haul yourself from the mud, chastened, and hold your hands up in surrender. Who knew that the meerkats could defend themselves so effectively with the use of a single rock. 'Stay away, or we'll really hurt you,' growls the livid guard, a paw over a satchel of stones at his side. You back away quickly, not wanting to face his pebbly wrath any further, and retreat back along the path for some distance.";
		now Resolution of Meerkat Patrol is 2; [not so friendly]
	now Meerkat Patrol is resolved;

Table of GameEventIDs (continued)
Object	Name
Lemur Jerks	"Lemur Jerks"

Lemur Jerks is a situation.
ResolveFunction of Lemur Jerks is "[ResolveEvent Lemur Jerks]".
Sarea of Lemur Jerks is "Zoo".

when play begins:
	add Lemur Jerks to BadSpots of FurryList;
	add Lemur Jerks to BadSpots of MaleList;

to say ResolveEvent Lemur Jerks:
	say "     As you're walking the stone-lined walkways of the zoo you hear a weird noise from behind you, followed by muffled laughter. Turning around, the source of it isn't immediately obvious - until another spurt of cum sprays right past your nose, just barely missing you. Glancing up you spot a group of what appear to be lemur-men in a large tree, making a sport of trying to hit you as they jerk off. It looks like there are about four of them up there, looking fairly close to what you know of regular lemurs: they're covered in brownish-red to gray hair and sport long furry tails with a black and white stripe pattern. What isn't so typical are the intelligent green eyes with which they observe you, or the fact that they're joking with one another like a group of horny frat boys. 'You always were shit at aiming, with a basketball or a dick!' one of them riles up the last one who came and missed you, while a third one is panting eagerly as he jerks himself with furious speed.";
	say "     'Gnnngh! Watch and weep guys as I cream [ObjectPro of Player]!' the lemur boasts, and despite the danger you can't help but catch your gaze on the massive ten-inch monster of a cock he is stroking between his legs. For a little guy, that's one freaking huge member! Of course, this means that you are barely in time to remember that you really should get some cover, jumping out of the way of your second close call at lemur bukkake today. The groaning and grunting monkey's friends holler and laugh as his seed splashes nothing but the ground, ribbing him mercilessly. Snickering and only throwing quick glances at you, they're mostly busy with each other. When the topic of 'You just wait, I'll be ready for another shot in a second' comes up, you decide it might be best to move on from the tree that houses these rascals. As you hurry off, the monkeys blow a raspberry after you and laugh among themselves.";
	now Lemur Jerks is resolved;

Table of GameEventIDs (continued)
Object	Name
Gazelle Breeding Bitch	"Gazelle Breeding Bitch"

Gazelle Breeding Bitch is a situation.
ResolveFunction of Gazelle Breeding Bitch is "[ResolveEvent Gazelle Breeding Bitch]".
Sarea of Gazelle Breeding Bitch is "Zoo".

when play begins:
	add Gazelle Breeding Bitch to BadSpots of FurryList;
	add Gazelle Breeding Bitch to BadSpots of FemaleList;
	add Gazelle Breeding Bitch to badspots of HermList;

to say ResolveEvent Gazelle Breeding Bitch:
	say "     While walking the zoo grounds you overhear what sounds to be a series of dog yips and yelps. Curiosity over the sounds wins out over caution, and you're soon peering around a corner, your gaze falling onto the familiar sight of a sexual encounter just about to start. About thirty feet distant, a little group of herm gazelle girls crowded around anthro retriever. The canine bitch appears to be in heat, lying on the ground amidst a scattering of clothes that she seems to have clawed off her body. She is panting heavily, the dripping cunt between her legs matting the fur of her crotch and inner legs. This spectacle seems to have awakened strong urges in the usually fairly shy gazelles, their hard cocks explaining why fleeing herd animals went on the offensive here. There are four of the tawny-furred antelopes, and a second later, they start stroking over their own cocks and pussies as they stare at the naked canine.";
	say "     A gazelle makes the first step, her rock-hard shaft leading the way towards the retriever's squirming body. Smiling broadly as she kneels between the young woman's legs, she simply places the head of her shaft over the burning hot entrance of the bitch and thrusts in deep. The dog girl yelps loudly and lolls her tongue out of her canine muzzle, smiling blissfully as her deep need is finally fulfilled. Soon she's being fucked with reckless abandon by the gazelle, by which time the other herms follow their leader's example. One of them straddles the retriever's chest, presenting her with a hard cock to lap, while the other two kneel left and right of the dog and find their shafts grabbed by the canine bitch's furry paws.";
	WaitLineBreak;
	say "     Soon all four gazelles are humping the retriever in one way or another, with two thrusting wildly into either her pussy or mouth, and the others grinding against the soft paws of their playmate. You can't help but watch with fascinated interest as the bitch is gang-banged by the group of herms. It doesn't take long for things to build up to an explosive climax, as the gazelle with her cock balls deep soon moans out loud, flooding the retriever girl's pussy and painting her heated walls white. The canine woman moans around the cock in her muzzle, yet never stops lapping at it is pounded in and out, driving the second gazelle right over the edge with her friend. Ecstatic whining escapes the dog's muzzle as she is flooded with gazelle seed, her eyes rolling back as she orgasms from the sensation. As the retriever girl's grip slackens a bit on their cocks when she comes, the other two gazelles take up jerking themselves, furiously working their long pieces of meat. Moments after, they join the general rush of orgasms, shooting rich spurts of gazelle seed to splatter the retriever's soft white fur.";
	say "     Liberally coated in gazelle cum, inside and out, the sated bitch slumps back on the ground, eyes closed but with a very content smile on her muzzle. Yet sadly, the calm and comfort of their shared moment doesn't last long, as loud rustling noises can be heard from somewhere close to them. Whatever it is, something big is moving through the underbrush, spooking the gazelles. The exhaustion of sex seemingly forgotten in an instant, the slender herms jump to their feet and get ready to flee. 'Help me carry her!' their leader calls out after a second or two, and before you can blink, they've lifted their canine bitch from the ground and start running off with her held between them. Left behind, you are the only one who can see that all the noise seems to have been a false alarm, as no horrible beast or anything ends up appearing on the path where the scene played out. With a shrug, you simply chuckle at the antics of the little herd and wonder what will become of them and their new bitch.";
	now Gazelle Breeding Bitch is resolved;

Table of GameEventIDs (continued)
Object	Name
Egged Tigress	"Egged Tigress"

Egged Tigress is a situation.
ResolveFunction of Egged Tigress is "[ResolveEvent Egged Tigress]".
Sarea of Egged Tigress is "Zoo".

when play begins:
	add Egged Tigress to BadSpots of FurryList;
	add Egged Tigress to BadSpots of FemaleList;

to say ResolveEvent Egged Tigress:
	say "     As you wander past a little shop deeper in the zoo that seems to have offered snacks and souvenirs to the visitors, you hear squeaking noises coming from within. Curiosity aroused, you creep closer and peer through one of the open sales windows. There is a fairly large and brightly colored tigress in there, writhing on the floor. You can immediately tell that this isn't an animal but rather a rubber creature since its skin shines with reflections in the light and the creature's limbs twist and bend with far greater flexibility than anything with bones ever could. Worry starts to rise in you as thoughts of some new and terrible affliction hurting the infected spring up in your mind, but then you notice that she isn't thrashing around in pain or anything; it's rather the opposite in fact. The tigress is smiling ecstatically, with even a little drool trickling out of the corners of her muzzle.";
	say "     The source of her strange behavior becomes apparent as the tigress rolls over onto her back and twitches a little, drawing your gaze to her bulging belly. It looks absolutely stuffed, with several quite large bulges inside, shifting against one another as she caresses her belly. At least four of whatever that is are inside her, and her rubber skin is notably wet in places, like between her legs and at those splatters over her upper chest. Something tells you that the large yellow feathers scattered about have something to do with that too. Must have been a fight here that the tigress lost. Not that she seems to be concerned about that. A loud moan comes from the rubber creature and she thrashes around for a second, then groans as a large purple egg is slowly pushed out through her thankfully quite stretchy pussy. With a high-pitched squeak, it gets squeezed out of the tigress, rolling a few feet over the floor before being joined by another.";
	WaitLineBreak;
	say "     Telling yourself to watch out for any avians with horny expressions and yellow feathers that you might encounter, you leave the tigress to give birth in peace. As you go on your way, you can't help but wonder what the offspring will look like once they hatch. Sadly, staying to observe wouldn't likely be a good idea, as you might very well be jumped by all six of them if they noticed you.";
	now Egged Tigress is resolved;

Table of GameEventIDs (continued)
Object	Name
Panda Shepherd	"Panda Shepherd"

Panda Shepherd is a situation.
ResolveFunction of Panda Shepherd is "[ResolveEvent Panda Shepherd]".
Sarea of Panda Shepherd is "Zoo".

when play begins:
	add Panda Shepherd to BadSpots of FurryList;
	add Panda Shepherd to BadSpots of FemaleList;
	add Panda Shepherd to BadSpots of MaleList;

to say ResolveEvent Panda Shepherd:
	say "     Passing by the panda habitat you hear a thumping noise. Sounds like a rhythm of low beats, followed shortly by a low cry. Sneaking closer to the habitat, you creep up behind a little thicket of bamboo and peer through cracks between the poles. The first thing you notice is the black and white furry back of a panda girl. She is busy bouncing up and down on a thick knotted canine shaft, belonging to a German shepherd that has his muzzle buried in the panda's hefty cleavage. Muffled as well as unmuffled moans of pleasure can be heard as the panda rides the male shepherd, filling the area with loud slapping sounds. Then suddenly, the panda falls forward and her tongue lolls slightly from her mouth. 'Ahh! Yes! I'm so close, k-keep going doggie!' she squeals at the height of her voice. Unable to really answer since his muzzle is buried under her breasts and upper body, the shepherd simply lets out a low, barely audible whine as he jackhammers his hips upward as much as possible.";
	say "     Moments later, the panda girl lets out a low groan and then a loud scream of pleasure as she orgasms around the shepherd's cock. Her anthro canine partner isn't far behind, popping his knot inside her pussy with a frantic thrust, then emptying his seed into her. You can literally see the twitch and pulse of his furry balls as they send forth a deluge of cum to thoroughly soak her womb and claim it. Before long, a thin trail of cum starts leaking out of the panda's cunt, seemingly from his deposit being too much to be contained inside her even by a hard knot plugging the hole. The panda collapses to the side a few seconds later, pulling her partner along with her as they are still connected at the hips by his dick. Being freed from the large woman's weight on top of him, the German shepherd pants in relief, looking slightly flattened, dazed, yet also quite satisfied at having bred her.";
	LineBreak;
	say "     Some rustling in the bushes close to your hiding spot makes you decide that it might be a good time to move on, so you leave the mixed couple to their post-coital bliss... or possibly round two.";
	now Panda Shepherd is resolved;


Table of GameEventIDs (continued)
Object	Name
Elven Mount	"Elven Mount"

Elven Mount is a situation.
ResolveFunction of Elven Mount is "[ResolveEvent Elven Mount]".
Sarea of Elven Mount is "Zoo".

when play begins:
	add Elven Mount to BadSpots of FurryList;
	add Elven Mount to BadSpots of FemaleList;
	add Elven Mount to BadSpots of MaleList;
	add Elven Mount to badspots of FeralList;

to say ResolveEvent Elven Mount:
	say "     Wandering through the zoo and stepping onto one of the bigger thoroughfares through the zoo from a side passage, you suddenly you hear the dominant growl of a big cat somewhere from the side. Yet as you spin around to face your foe, things aren't quite what you expected. About thirty feet to your left, a seemingly intact enclosure for large predators harbors a feral cheetah perched in a dominant position over a woman. She's an elf from what you can see, with pointy ears and surrounded by seemingly hastily stripped off clothes that would fit a fantasy setting. Maybe she wandered into the zoo from somewhere else? Wherever she might have come from, she's currently under a clearly horny dominant cheetah. Though the position apparently wasn't forced upon her, as the woman's face is clearly showing pleasure... and embarrassment at being caught, as she stares back you through the chain fence surrounding the enclosure.";
	say "     Biting down on her lip and now quite being able to suppress a whorish moan, the elf's face blushes heavily, followed by her shrugging to herself and giving up on trying to appear as anything other than a feral lover. With a squeal in pleasure, the next thing she does is push back against the cheetah's humping, taking his feline cock with obvious pleasure. Craning her neck to look at her mate, the woman calls out, 'We have company. Why don't you show [ObjectPro of Player] again how you claimed me earlier, my love?' Seeming to understand her words, the male cheetah wastes little time after giving you a quick glance and a toothy grin. Rearing back, he demonstratively thrusts his long and barbed cock into the elf's waiting entrance, burying it to the hilt. The elf lets out a needy whimper as he clamps his teeth on the back of her neck, holding her firm without breaking the delicate-looking skin on the woman.";
	WaitLineBreak;
	say "     Focusing on you, the male cat growls between his teeth, clearly stating his claim on the woman he sheathed himself in. Then he gets back to fucking her again, using short, rapid thrusts to hump into her like the wild beast he is. His furious assault of her pussy pushes the elf forward, losing hold with her hands and landing face-first in the grass below. She doesn't seem to mind much, moaning and mumbling in ecstasy as she is fucked roughly by the feral male. After a few more moments of frantic mating, you notice that the cheetah's breathing getting heavier and his hip thrusts getting deeper, right before he hilts himself in his elven partner and cums. A huge load of feline cum starts to gush into her, pushing the elf to her own climax from the sensation of being bred by her beastly mate.";
	say "     As the young woman lets out an ecstatic howl and claws up some of the grass she is slumped upon, a mixture of cum and femcum starts to ooze out around the feline's shaft, trickling down the insides of her legs. The elf stays still for a little while, just riding out the height of her orgasm, then eventually pushes herself back up onto all fours and glances your way. Seeing that you're still there and watching, she reaches between her legs and scoops some of the mixed fluids up, licking them off her own fingers with sensual pleasure before locking eyes with you again and winking. Her mate dismounts from the woman not long after, and the two of them curl up together in the back corner of the enclosure, happy to while away their time in there and seemingly with little interest to go out exploring again, now that they have found each other.";
	now Elven Mount is resolved;

Table of GameEventIDs (continued)
Object	Name
Cheetah Trade	"Cheetah Trade"

Cheetah Trade is a scavevent.
ResolveFunction of Cheetah Trade is "[ResolveEvent Cheetah Trade]".
Sarea of Cheetah Trade is "Zoo".

to say ResolveEvent Cheetah Trade:
	say "     While searching for useful gear in the area you enter one of the cheetah habitats. The enclosure seems abandoned at first glance and sadly there doesn't seem to be anything useful here either, but just as you are about to leave again, you notice a dotted tail hanging down out of the crown of a tree not too far from you. Glancing up, you see a feral cheetah stretched out on a larger branch! She appears to be gnawing on the corner of a medkit wedged into a split in the branches. As you start considering whether it's worth the trouble or not to challenge the big cat for her prize, she turns her head towards you and focuses slitted eyes in a wary glance. Opening her feline maw to speak, she calls out 'Want toy? Earn it!' Glancing back towards her hindquarters, the big cat twitches her tail and you realize that she's requesting a sexual favor from you.";
	say "     By sheer coincidence, a little gust of wind flaring up in that very moment sends the musky scent of her feline heat wafting into your nose. You can tell the female feral is wet with lust and desperate need. Her striped tail waves beckoningly at you, calling up thoughts of mating with the feral in your mind.";
	LineBreak;
	say "     [bold type]What do you do now?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Satisfy her needs. The medkit will make for a nice reward.";
	say "     ([link]N[as]n[end link]) - Pass on the offer and leave before she decides to take her pleasure by force.";
	if Player consents:
		LineBreak;
		if Player is male:
			say "     As you call out that she has a deal and step up to the cheetah's tree, she drops down from her perch with casual ease and turns around, raising her ass with a pleased huff. You run your hands over feline's backside, enjoying the warmth of her soft fur, then run a thumb up under her tail, stroking over the cat's pussy and winking asshole. She mewls, 'Mate now!' Happy to oblige her, you [SelfStripCrotch], then wrap your hand around your [Cock of Player] shaft and line it up with her opening. Wasting no time you thrust into the needy feline and push into her sweltering depths, sliding in easily thanks to the dripping wetness of her pussy. Eager to finally be filled, she clenches and unclenches her inner muscles around your member, almost as if she was jerking you off inside her body. You can hear soft mewls and growls below you while you push as deep in to her as you can go.";
			say "     Lowering her feline head to the grass at the same time as she raises her ass a little bit further, the feline pushes back against you, taking your shaft just a little deeper. You enjoy the sensation of being balls deep in this feral creature for a short while, just resting inside her, then soon pull back and slam into her once more. With that, you start a steady rhythm of fucking her, hammering into the cheetah while your hands grope her tight furry ass and she digs her claws into the ground to push back against you. With her being so very wound up already, it doesn't actually take all that long before the large feline climaxes from your efforts, her slit squeezing you like a vice as she squirts cheetah femcum all over your dick. The sensations of being inside her as she climaxes are more than enough to push you over the edge right along with her. Spurt after spurt of your hot cum is blasted into her feline womb, covering the needy cheetah's walls in your seed and soaking the fires of her heat.";
			WaitLineBreak;
			say "     Your feral partner squeezes her inner muscles around your dick, milking you for every last drop of cum before she eventually releases it from her sex and stands up with a mrowl. Stretching herself pleasantly, she turns her head to look at you and comments, 'Good sex toy.' With that judgement of your service given, she lithely climbs back on her tree with only a few steps of run-up, soon arriving at her branch hangout again. A moment later, you're almost hit by the medkit dropping from above and thumping on the ground. Bending down to collect your payment, you leave the feline to her bliss and wander out of the enclosure.";
			CreatureSexAftermath "Cheetah Woman" receives "PussyFuck" from "Player";
		else: [not edited yet]
			say "     Shuffling up to the cat whose ass is raised for fucking, you get on your knees, level with her muscular feline ass. Not having equipment for fucking the cat, you nevertheless step up to the challenge to earn her 'toy'. You run your hands over her soft, furry ass and she lets out a slightly impatient growl, pushing her ass toward you. Her winking cat cunt mushes against your lips, and as you taste the heat of a feline predator, you can't help but simply dive in. You plunge your hungry tongue in as deep as it will go into her soaked sex. She responds lustfully, meowing heavily and gushing fem cum on your face. Seemed like a mini orgasm for her.";
			say "     Licking your lips of her salty, addicting flavor, you dive back in, running your hands over her ass and caressing it gently as you eat out her dripping, heated sex. You thumb into her asshole and nibble on her outer lips while she mewls at your efforts. When you push your face forward and thumb deeper into her tight ass again, she breaks down. Her limbs go limp and she collapses, spraying feline fem cum all over your face and growling loudly before it comes to a stop. Soon she's just breathing heavily beneath your hands and seemingly dazed from her orgasm. Licking off your lips again and smiling, you give her ass a smack and collect what you had rightfully earned, then head out of the habitat.";
		ItemGain medkit by 1;
		now Resolution of Cheetah Trade is 1; [sexually satisfied the cheetah and got a medkit]
	else:
		LineBreak;
		say "     Shaking off the strange thoughts that came up in your head, you quickly retreat to the spot where you entered the enclosure, never taking your eyes off the large cat. Stepping through the broken fence, you hurry off and leave the mewling cheetah to herself.";
		now Resolution of Cheetah Trade is 2; [didn't go for the trade]
	now Cheetah Trade is resolved;


Table of GameEventIDs (continued)
Object	Name
Bird Masturbation	"Bird Masturbation"

Bird Masturbation is a situation.
ResolveFunction of Bird Masturbation is "[ResolveEvent Bird Masturbation]".
Sarea of Bird Masturbation is "Zoo".

when play begins:
	add Bird Masturbation to BadSpots of FurryList;
	add Bird Masturbation to BadSpots of FemaleList;

to say ResolveEvent Bird Masturbation:
	say "     Deciding to rest against the side of a gift shop for a few moments, you lean against it and tilt your head up to rest against the wall. At first you think it's just some decoration on the roof of the building across from you, but as your eyes set upon it, you realize that it's a woman - a bird of paradise, to be exact. She's covered in a rainbow of lovely colored feathers, with a pair of just as lovely wings that sprout from her back, which would explain her being on a roof. Additionally, one of her long, talon-tipped fingers is slowly moving in and out between her legs. She moves a finger slowly into her cloaca-like pussy, her head tilted down, focused on her work.";
	say "     [bold type]Do you want to continue watching her go at it?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure thing.";
	say "     ([link]N[as]n[end link]) - Nah.";
	if Player consents:
		LineBreak;
		say "     You stand, a little transfixed by the sight of a gorgeous, masturbating bird woman. She starts to move in and out of herself, dipping in a second long finger in her wet sex. Her other hand reaches up to grasp a feather-coated breast, tweaking a nipple that just barely pokes out of the feathers. She lets out a sweet, melodic chirp that echoes down to you. She then pulls her head up from her work and locks eyes with you immediately. It's hard to say if she just now caught you looking or if she knew you were there all along. Her two large, translucent eyes stare back at you, seeming to bore into you and transfix you slightly. Her beak curls very into what can only be described as a telling grin. She keeps her eyes focused solely on you, but her fingers keeps moving in and out of her now soaking wet womanhood. Her other hand massages her large breast as she winks at you.";
		say "     After every other thrust, she lets out another sweet chirp that seems to echo through you like a song. Her fingers encircle her clit as they squeeze the little pleasure button between them. Her other hand drops from her feathery breast and moves down to join the other. While one hand works at her clit, the other moves swiftly and dexterously out of her womanly cloaca, her eyes on you the entire time. She continues to pleasure herself until she lets out a wail of pleasure, her head thrown back, letting her melodic voice echo through the sky as she climaxes. Her strong avian legs tremble slightly as juices drip onto the roof below her. She chirps beautifully and pulls her head back to look at you yet again, bringing her damp digits to her beak and sensually licking them off for your viewing pleasure. She then stretches, flaunting her large, feathered tail at you, giving you a good look at her round ass and damp sex. Satisfied, she leaps off the other side of the building and disappears from your view, leaving you standing there, a little speechless...";
		now Resolution of Bird Masturbation is 1; [didn't watch the bird]
	else:
		LineBreak;
		say "     With a shrug, you push yourself off the wall and wander off, leaving the horny bird behind.";
		now Resolution of Bird Masturbation is 2; [didn't watch the bird]
	now Bird Masturbation is resolved;

Table of GameEventIDs (continued)
Object	Name
Lemur Conga Gangbang	"Lemur Conga Gangbang"

Lemur Conga Gangbang is a situation.
ResolveFunction of Lemur Conga Gangbang is "[ResolveEvent Lemur Conga Gangbang]".
Sarea of Lemur Conga Gangbang is "Zoo".

when play begins:
	add Lemur Conga Gangbang to BadSpots of FurryList;
	add Lemur Conga Gangbang to BadSpots of MaleList;

to say ResolveEvent Lemur Conga Gangbang:
	say "     As you are walking through a more tree'd-in area of the zoo, you hear the excited gibbering of... something? You look around but can't seem to locate the sound, until you hear more, they sound a mix between monkey grunts and human words. It sounds like at least four of them gibbering and mumbling, spinning around again and again readying yourself for a fight you still see nothing. Until a squeal of laughter finally draws you to look up above you, there, about thirty feet into the trees are what look to be lemur men. Each of them behind the other in a conga line, sitting on a thick branch... butt fucking each other...";
	say "     You're almost not surprised but you can't help but stare up at the five lemur men. All humping at different paces into the others ass, some going slow, others drooling and humping away like mad as they go. A few stare down at you and laugh, others make rude gestures to you and the forefront lemur with nowhere to stick his dick just looks down to you. Tongue lolled out as he strokes himself off at the sight of you. The show only goes on for about a minute, and as your getting ready to leave, the foremost lemur finishes. He spurts his seed down to the ground below, luckily missing you by a few feet, the dick buried within him only furthering his spurting seed as it dribbles into the dirt.";
	say "     The rest of them follow shortly after, grunting, hooting and giggling as they hump away at each other. The one in the back finishes next, then the one in the middle, then the entire line erupts into moans as they fill their partners ass with thick lemur seed. They continue gyrating and moving for a while, a few of them reaching over to embrace the kin they just seeded. The one in the back of the line simply falls back on the branch, tongue lolled out and seemingly asleep now. You look up, a little perplexed but shake your head and quickly move on.";
	now Lemur Conga Gangbang is resolved;

Zoo Events ends here.
