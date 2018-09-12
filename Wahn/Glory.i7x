Version 1 of Glory by Wahn begins here.
[Version 1 - New Character]

[ GloryFate                                                ]
[   0: not met yet                                         ]
[   1: player tried to talk, she ran off                   ]
[   2: player found her in the storeroom, didn't get in    ]
[   3: player consoled Glory                               ]
[  10: brought to the Christmas Village                    ]
[  20: brought to Moreau                                   ]
[  30: brought to Tobias                                   ]
[  95: consolation fail                                    ]
[  99: abandoned by the player                             ]
[ 100: ignored by the player                               ]

GloryFate is a number that varies.

Section 1 - Events

Refugee Mare is a situation. Refugee Mare is inactive.
The sarea of Refugee Mare is "Smith Haven".

when play begins:
	add Refugee Mare to badspots of furry;

Instead of resolving a Refugee Mare:
	if GloryFate is 0:
		say "     As you make your way through the hallways of the mall, checking out what goes on in the expansive building, you eventually do a circuit through the food court. The typical thick crowd of people is milling around inside, with countless species and hybrids in appearance, busy eating or just hanging out together. Letting your gaze sweep over the crowd, your attention is soon drawn to a somewhat bedraggled-looking human-horsewoman hybrid just outside the glass entry doors to the mall. From what you can see at a distance, she has fully equine legs, hooves and a tail, while her upper body is still overwhelmingly human. She is talking to [if LoganCommand > 0]Logan, the bad apple of a wolverine guard banished outside to guard the exterior approaches[else]a wolverine guard[end if]. He quickly waves her through, but as she pulls the door open for herself, the guy steps up and slaps her ass with a lecherous grin on his face.";
		say "     The slap has quite an effect on the young woman, as she yelps in shock and bolts away from him, running forwards into the building. She dashes through the gaps between people, brushing right past you in her haste, until her path makes her collide headlong with the back of a tall man, bringing her to a full stop. The towering guy she ran into (a Clydesdale stud horseman, dressed in nothing more than a pair of somewhat threadbare jeans) turns around and grumbles in annoyance, which provokes an extreme reaction from the frightened woman. She screams and backs away from him, stumbling as she does so and falling to the ground. The horseman gives a puzzled look to the distraught hybrid woman, then shrugs and continues on his way. This leaves the young woman behind all alone, huddled up on the floor and sobbing.";
		say "     [bold type]Do you want to do something about this?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Sure, go and talk to her.";
		say "     ([link]N[as]n[end link]) - Not your problem.";
		if player consents:
			LineBreak;
			say "     You approach the young woman and try to talk to her, but she clearly isn't in the right headspace to register even the most gently stated words. Instead, the part-equine woman immediately shies away, standing up and running off. Within moments, she is lost in the crowd and out of sight. You can't help but wonder what will become of her. Maybe you should search for her to have a chance to talk once she's calmed down at least a little.";
			now GloryFate is 1;
			now Resolution of Refugee Mare is 1; [talked to Glory]
		else:
			LineBreak;
			say "     You stand back and do not get involved, instead watching as someone else approaches the woman before much longer. The guy crouches down next to her and tries to talk to her, but she immediately shies away, standing up to run off. Within moments, she is lost in the crowd and out of sight.";
			now GloryFate is 100; [ignored by the player]
			now Resolution of Refugee Mare is 99; [disinterest]
			now Refugee Mare is resolved;
	else if GloryFate is 1:
		say "     Wandering through the mall and checking out some stores here and there, you are just in an abandoned place that is fairly close to the food court when you catch a glimpse of movement further back inside. Seems like it isn't as empty as you thought. Looking closer, you see that a door reading 'Employees Only' (most likely a storeroom of some sort) is a crack open, with someone watching you through the gap. You manage to recognize the part-equine refugee that you saw arrive at the mall a little while ago in the few seconds before she quickly closes the door to hide herself away.";
		say "     [bold type]What do you want to do now?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Walk up to the door and knock.";
		say "     ([link]N[as]n[end link]) - Leave her alone.";
		if player consents:
			say "[GloryDoorApproach]";
		else:
			say "     With a shrug, you walk out of the store, leaving the frightened refugee behind.";
			now GloryFate is 2; [player didn't get in]
	else if GloryFate is 2:
		say "     On your stroll through the mall, you wander back into the store where you saw the part-equine refugee hiding earlier. As before, she is still in there, watching you through a cracked-open door reading 'Employees Only' (most likely a storeroom of some sort). Realizing that she has been seen, the door is quickly pulled shut from the inside, with the woman trying to hide herself away.";
		say "     [bold type]What do you want to do now?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Walk up to the door and knock.";
		say "     ([link]N[as]n[end link]) - Leave her alone.";
		if player consents:
			say "[GloryDoorApproach]";
		else:
			say "     With a shrug, you walk out of the store, leaving the frightened refugee behind.";

to say GloryDoorApproach:
	if bodyname of player is listed in infections of Equinelist or facename of player is listed in infections of Equinelist:
		say "     Remembering the woman's reaction to just bumping into a horseman before, you look at yourself and decide that you shouldn't try to approach her looking like you currently are. Maybe you should come back when you have a form that is less threatening to her...";
	else:
		LineBreak;
		let bonus be (( charisma of player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Charisma Check):[line break]";
		if diceroll + bonus >= 15:
			say "     Moving closer and gently knocking on the door, you explain that you don't want to hurt her and just talk, putting conviction and honesty into your words. And it works - after just a little wait, the door is pulled open a crack and she looks at you, then replies, 'I recognize you I think. Didn't you try to talk to me before? I - I guess you really meant it.' Slowly, as if forcing herself to do it, the young woman then pulls the door open and steps back, allowing you to join her in the small storeroom beyond. It contains an improvised camp made from clothing items piled on top of each other and a number of empty junk food wrappers. The young woman having found a refuge in the dark little room looks quite stressed out, with the tracks of dried tears visible on her somewhat grimy face.";
			say "     Stepping up and introducing yourself, you ask if she is alright. A sob escapes the young woman's lips and tears start welling up in her eyes again, accompanying the words, 'No, I'm not! This all is such a nightmare! I just want it to end!' With carefully chosen words, you manage to pull her back from starting a full-on crying spell, then finally ask in a gentle tone for her to tell you what happened. Taking a minute to collect her thoughts, the part-equine woman eventually starts to explain, 'Sorry. It's just... running into that horseman when I came here brought it all back to the forefront of my mind. What happened. With... with my brother. His name is - or maybe was, I really don't know anymore - Isaac. And I'm Glory. He had given me a weekend of riding at the 'Stables Hotel' for my birthday, with a really nice room and all. Drove me there himself when we both had the time and he wanted to stay to keep me company, so he got the room next to mine, with a connecting door.'";
			WaitLineBreak;
			say "     Having arrived at that part of the story, Glory wraps her arms around herself and rocks back and forth a little, then eventually says in a halting voice, 'On the morning of the second day, I was woken up by someone pushing into me! A second later, he was thrusting away inside me, and yet somehow I didn't mind! I just felt my body react to him, and even... enjoyed it in that moment! Even though he wasn't even human, but something half horse - and worse, I recognized Isaac in that stallion humping away at me and I still didn't care! The sex continued till we both had come a bunch of times and were really exhausted, then dozed off. But when I came back to, everything that had happened came into focus and I realized what he - what we - had done!' Stomping the floor with one hoof, she looks down at herself, frowning at the hybrid body she now has.";
			say "     'I'm sure we'll both go to hell for it. And my shame is obvious for everyone to see too! While that beast was still asleep, I fled out into the city. I didn't want to talk to him, because what fucked me that day wasn't my brother anymore. It can't have been!' Glory's despair audibly built back up during the last few sentences, and she is sobbing openly as she continues, 'Everything since has just been further horror! The things that go on out there! I eventually heard that the mall was supposed to be safe, but with that guy at the entrance there and horsemen on the inside, I've got my doubts about that too!' Tears start running down Glory's cheeks as she sobs out, 'I don't think I can deal with this much longer - the constant danger and running from monsters in the streets, then even my own body betraying me to become a constant reminder of my sin! I just want it to end! Can't the police or someone - anyone - just protect us?'";
			say "[GloryChoices]";
		else:
			say "     Moving closer and gently knocking on the door, you try to explain that you don't want to hurt her and just talk. It doesn't work, with the door staying shut and no reply coming from the other side. You eventually try the doorknob, but something seems to be blocking the door from the other side. Nothing more to do here right now, you eventually shrug and walk out of the store, leaving the frightened refugee behind.";
			now GloryFate is 2; [player didn't get in]


to say GloryChoices:
	LineBreak;
	say "     What do you want to do now?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Console her yourself";
	now sortorder entry is 1;
	now description entry is "Try to strengthen her resolve and say that the military will save all of you eventually";
	[]
	if HP of Santa Claws > 0:
		choose a blank row in table of fucking options;
		now title entry is "Bring her to Santa Claws";
		now sortorder entry is 2;
		now description entry is "The Christmas Village should be safe and allow her to forget";
	[]
	if HP of Moreau > 0:
		choose a blank row in table of fucking options;
		now title entry is "Take her to Moreau";
		now sortorder entry is 3;
		now description entry is "Some naga hypnotherapy might work wonders";
	[]
	if HP of Tobias > 0:
		choose a blank row in table of fucking options;
		now title entry is "Bring her to Tobias";
		now sortorder entry is 4;
		now description entry is "He'll surely protect her, in his own way";
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
				if (nam is "Console her yourself"):
					say "[GloryChoice1]";
				if (nam is "Bring her to Santa Claws"):
					say "[GloryChoice2]";
				if (nam is "Take her to Moreau"):
					say "[GloryChoice3]";
				if (nam is "Bring her to Tobias"):
					say "[GloryChoice4]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     As you just stand up and leave, you can hear her sobbing behind you, followed by the door of the little room being slammed shut. Just giving her the cold shoulder after hearing that story really wasn't the most diplomatic thing to do.";
			now GloryFate is 99; [abandoned by the player]
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say GloryChoice1: [player charm]
	let bonus be (( charisma of player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Charisma Check):[line break]";
	if diceroll + bonus >= 15:
		say "     Going into a pep talk full of conviction and understanding, you manage to stop Glory from crying and even earn a weak smile from her. At the end of your talk, she feels at least a little better about herself and the fact that she survived everything that happened to her. Your guess is that she has taken a step or two back from the ledge and now isn't in the immediate danger of cracking under the pressure that living in this fallen city brings with it. She still does have a severe aversion to the equine parts of her body and is horrified by what happened between herself and her brother though. Only time will tell if she'll be able to cope with all that in the long term. For now, the young woman thanks you for your kindness and then goes to approach one of the nearby mall rats, asking for a place where she can stay in the mall.";
		now GloryFate is 3; [consoled]
		now Resolution of Refugee Mare is 2; [Glory consoled]
	else:
		say "     You try your best to cheer Glory up, but she just keeps crying, only stopping when she almost physically can't continue to shed another tear. In the end, even your offer of hope in that the military might yet come and rescue all of you sounds like a weak excuse, and you can see that she doesn't really believe in it. The young woman thanks you for the attempt at cheering her up and then shoos you out of her dark little room, closing the door quickly after you have left. Most likely, she'll now just wallow in her aversion of her partially equine body some more and might very well crack completely before much longer.";
		now GloryFate is 95; [consolation fail]
		now Resolution of Refugee Mare is 3; [Glory consolation fail]

to say GloryChoice2: [Christmas Village]
	say "     As you tell Glory that you know just the place for her, the young woman is rather suspicious at first, but after a little talking to, she lets you lead her deeper into the mall. Soon arriving in the east wing, the hybrid mare looks up in wonder as you near the wall of falling snowflakes that marks the entrance of the Christmas Village and she literally squeals in joy as she sees what lies beyond. Santa Claws awaits the two of you on his large throne and he gives a friendly 'Ho ho ho' as he waves the two of you closer. Introducing Glory to him and explaining that she needs a place to stay where she can feel safe and protected once more, you earn a knowing nod from Santa, who smiles and then stands up to give his visitor a welcoming hug, saying that she can stay as long as she wants.";
	say "     With some quickly summoned elves guiding Glory away to her new home in one of the block-houses, the bear clears his throat and watches her go, then turns back to you. 'Thank you for taking care of her and guiding Glory here. She will be safe, that I can promise you. At the same time, those who have been hit as hard as her rarely want to leave the Christmas Village again, instead preferring to stay as new elves in my domain. We will see how things turn out with her, but I wanted to tell you what you can expect.'";
	now GloryFate is 10; [brought to Christmas Village]
	now Resolution of Refugee Mare is 4; [Glory brought to Christmas Village]

to say GloryChoice3:
	say "     As you tell Glory that you know someone who should be able to help her, the young woman is rather suspicious at first, but after a little talking to, she lets you lead her deeper into the mall. It doesn't take all that long to reach the Body Shop, where Glory stares with wide open eyes at the many shapes of the motionless mannequins in the store. Moreau is quick to greet the two of you in his store, with the naga coiling his tail around himself and watching Glory with interested eyes. You introduce the two of them to one another and explain that Moreau might just help the equine hybrid to bear what happened to her a little easier, by using his hypnotic powers. Glory hesitates as you mention hypnosis, but then looks down at herself and soon says, 'Anything that will make this living nightmare more bearable. Please.' Taking the naga shopkeeper aside, you quietly tell him everything that you learned from Glory, and he gives you a nod in understanding.";
	say "     Snaking his way over to Glory, Moreau holds his hand out to her and gives a friendly little bow with his hooded head, then meets her eyes with an intense gaze and says in a very charming voice, 'I will do my very best to help you, miss.' Waiting for the next step, you take a long moment to notice that the naga has already drawn Glory into his spell in that moment, with her standing perfectly still now and just holding his gaze. Listening closely, you catch some snippets of things the naga tells her in low whispers: '...Your brother was called away for something important at work and had to leave. The man in the hotel that woke you was the bellhop...', '...The streets were mostly empty after you fled the Stables Hotel. Still, you know there are dangers out there, so you thought it would be best to seek shelter in the mall...'";
	WaitLineBreak;
	say "     Noticing your interest from the corner of his eye, Moreau gives a little wave to a nearby mannequin and says casually, 'This will take a little while. Why don't you sit down.' And with that, he gives his full attention to Glory again, while a mannequin showing off a minotaur's stature guides you over to a bench some distance away, eerily silent in its insistence that you sit and wait there. Some time later, Moreau clears his throat and guides Glory's hand to his lips to kiss it. 'Such a pleasure to meet you, miss. Has anyone ever told you that you have quite beautiful eyes?' The equine hybrid's eyes flutter as if she is just awaking from a deep sleep, with Glory then smiling and rubbing the back of her neck. 'Oh, thank you, mister Moreau. That is very nice of you to say. And what an interesting store you have. Er, why was I here again?'";
	say "     The naga smiles and waves over to you as he says, 'Your friend over there brought you, remember? As a newcomer to the mall, you do still need a place to stay after all. I can offer you that, as well as a job. You see, my assistants are obedient, but just a bit empty-headed.' Slithering to the side, Moreau lightly taps the head of the nearest mannequin, creating a hollow sound. 'I could use someone to count the profits. If you work well, I'm sure you'll be able to afford a... different body than that part-equine one soon. My dear, you'd look lovely as a nymph.' You join the two of them and talk a bit with Glory, who seems enormously more stable than just a little while ago, and quite eager for her new job in the Body Shop. Smiling and thanking you for bringing her there, the young woman gives you a quick hug, then moves into the back of the store, where she starts to take stock of Moreau's goods.";
	WaitlineBreak;
	say "     Glancing over to Glory, Moreau follows her eager activity for a few seconds, then half-turns his head to you. 'I didn't change too much, if you're worried about that. Just softened the raw and jagged bits to make her whole again. It was good of you to bring the lovely girl to me, you have no idea what she was ready to do if this hadn't worked out. You won't have to worry about that anymore now.' With that said, the naga shopkeeper changes topics and directs your attention to his newer mannequins instead, happily offering you to buy what parts interest you.";
	now GloryFate is 20; [brought to Moreau]
	now Resolution of Refugee Mare is 5; [Glory brought to Moreau]

to say GloryChoice4:
	say "     As you tell Glory that you know someone who should be able to help her, the young woman is rather suspicious at first, but as you point out that he's quite nearby in the food court, she lets you lead her out of the storeroom and to where Tobias is sitting at a table. As you introduce the two of them to one another, the doberman looks Glory up and down, then nods to you and says, 'So, what brings you to me?' Quietly detailing the things that Glory went through and her desire for protection as well as a way to forget about the living nightmare that her life has become.' Tobias nods and gestures for Glory to come a bit closer, then looks her straight in the eye and says in an earnest tone, 'I can give you what you want. You'll be safe with me, no one's gonna lay a hand on you, including myself. I don't force myself on people. But don't misunderstand - it's not gonna be lazing about either. You've got to obey me, completely, and I'll train you to be a proper companion and pet.'";
	say "     Glory looks wide-eyed at Tobias and opens her mouth to reply, but he goes on before she can do so, 'I noticed that you seem uncomfortable in that part-equine skin of yours, which is understandable. So this should be a little bonus: If you come with me, you're gonna be a dobie fairly soon. And I'll give you other things to think about than being raped by big bro.' That last sentence makes Glory gasp and close her mouth with a plop. 'The choice is yours. It's a good offer, honest. Security, peace of mind, food, and a new body. Definitively better than the alternative, with the danger of falling prey to some creature out there - or in here.' He gives a nod to the entrance, where the wolverine guard that slapped Glory's ass is leaning against the wall, munching on some fast food. Glory looks to you in indecision, desperation written on her features, and you give a tiny nod. It was your idea to bring her to Tobias after all. Letting out a sigh, she agrees to the doberman's terms, readily accepting a leather collar that he pulls from one of his pockets, then fastens it around her neck.";
	now GloryFate is 30; [brought to Tobias]
	now Resolution of Refugee Mare is 6; [Glory brought to Tobias]

Glory ends here.
